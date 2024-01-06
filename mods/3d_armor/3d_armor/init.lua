local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)
local worldpath = minetest.get_worldpath()
local last_punch_time = {}
local pending_players = {}
local timer = 0

-- support for i18n
armor_i18n = { }
armor_i18n.gettext, armor_i18n.ngettext = dofile(modpath.."/intllib.lua")

-- local functions
local S = armor_i18n.gettext
local F = minetest.formspec_escape

dofile(modpath.."/api.lua")

-- Legacy Config Support

local input = io.open(modpath.."/armor.conf", "r")
if input then
	dofile(modpath.."/armor.conf")
	input:close()
	input = nil
end
input = io.open(worldpath.."/armor.conf", "r")
if input then
	dofile(worldpath.."/armor.conf")
	input:close()
	input = nil
end
for name, _ in pairs(armor.config) do
	local global = "ARMOR_"..name:upper()
	if minetest.global_exists(global) then
		armor.config[name] = _G[global]
	end
end
if minetest.global_exists("ARMOR_MATERIALS") then
	armor.materials = table.copy(ARMOR_MATERIALS)
end
if minetest.global_exists("ARMOR_FIRE_NODES") then
	armor.fire_nodes = table.copy(ARMOR_FIRE_NODES)
end

-- Load Configuration

for name, config in pairs(armor.config) do
	local setting = minetest.settings:get("armor_"..name)
	if type(config) == "number" then
		setting = tonumber(setting)
	elseif type(config) == "boolean" then
		setting = minetest.settings:get_bool("armor_"..name)
	end
	if setting ~= nil then
		armor.config[name] = setting
	end
end
for material, _ in pairs(armor.materials) do
	local key = "material_"..material
	if armor.config[key] == false then
		armor.materials[material] = nil
	end
end

-- Mod Compatibility

local skin_mods = {"skins", "u_skins", "simple_skins", "wardrobe"}
for _, mod in pairs(skin_mods) do
	local path = minetest.get_modpath(mod)
	if path then
		local dir_list = minetest.get_dir_list(path.."/textures")
		for _, fn in pairs(dir_list) do
			if fn:find("_preview.png$") then
				armor:add_preview(fn)
			end
		end
		armor.skin_mod = mod
	end
end
if not minetest.get_modpath("moreores") then
	armor.materials.mithril = nil
end
if not minetest.get_modpath("ethereal") then
	armor.materials.crystal = nil
end

dofile(modpath.."/armor.lua")
dofile(modpath.."/tutorial.lua")
dofile(modpath.."/tutorial_craft.lua")
-- Armor Initialization

armor.formspec = armor.formspec..
	"label[4.5,1.5;"..F(S("Level"))..": armor_level]"..
	"label[4.5,2;"..F(S("Heal"))..":  armor_attr_heal]"..
	"label[4.5,2.5;"..F("Fire")..":  armor_attr_fire]"..
	"label[4.5,3;"..F("Water")..":  armor_attr_water]"..
	"label[4.5,3.5;"..F("Speed")..":  armor_physics_speed]"..
	"label[4.5,4;"..F("Jump")..":  armor_physics_jump]"
armor:register_on_destroy(function(player, index, stack)
	local name = player:get_player_name()
	local def = stack:get_definition()
	if name and def and def.description then
		minetest.chat_send_player(name, S("Your @1 got destroyed!", def.description))
	end
end)

local function validate_armor_inventory(player)
	-- Workaround for detached inventory swap exploit
	local _, inv = armor:get_valid_player(player, "[validate_armor_inventory]")
	if not inv then
		return
	end
	local armor_prev = {}
	local armor_list_string = player:get_meta():get("3d_armor_inventory")
	if armor_list_string then
		local armor_list = armor:deserialize_inventory_list(armor_list_string)
		for i, stack in ipairs(armor_list) do
			if stack:get_count() > 0 then
				armor_prev[stack:get_name()] = i
			end
		end
	end
	local elements = {}
	local player_inv = player:get_inventory()
	for i = 1, 6 do
		local stack = inv:get_stack("armor", i)
		if stack:get_count() > 0 then
			local item = stack:get_name()
			local element = armor:get_element(item)
			if element and not elements[element] then
				if armor_prev[item] then
					armor_prev[item] = nil
				else
					-- Item was not in previous inventory
					armor:run_callbacks("on_equip", player, i, stack)
				end
				elements[element] = true;
			else
				inv:remove_item("armor", stack)
				-- The following code returns invalid items to the player's main
				-- inventory but could open up the possibity for a hacked client
				-- to receive items back they never really had. I am not certain
				-- so remove the is_singleplayer check at your own risk :]
				if minetest.is_singleplayer() and player_inv and
						player_inv:room_for_item("main", stack) then
					player_inv:add_item("main", stack)
				end
			end
		end
	end
	for item, i in pairs(armor_prev) do
		local stack = ItemStack(item)
		-- Previous item is not in current inventory
		armor:run_callbacks("on_unequip", player, i, stack)
	end
end

armor.init_player_armor = function(player)
	local name = player:get_player_name()
	local pos = player:get_pos()
	if not name or not pos then
		return false
	end
	local armor_inv = minetest.create_detached_inventory(name.."_armor", {
		on_put = function(inv, listname, index, stack, player)
			validate_armor_inventory(player)
			armor:save_armor_inventory(player)
			armor:set_player_armor(player)
			local player_inv = player:get_inventory()
			local stack = inv:get_stack("arm2", 1)
			player_inv:set_stack("arm2", 1, stack)
			for i=1, 6 do
				local stack = inv:get_stack("armor", i)
				player_inv:set_stack("armor", i, stack)
			end
		end,
		on_take = function(inv, listname, index, stack, player)
			validate_armor_inventory(player)
			armor:save_armor_inventory(player)
			armor:set_player_armor(player)
			local player_inv = player:get_inventory()
			local stack = inv:get_stack("arm2", 1)
			player_inv:set_stack("arm2", 1, stack)
			for i=1, 6 do
				local stack = inv:get_stack("armor", i)
				player_inv:set_stack("armor", i, stack)
			end
		end,
		on_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			validate_armor_inventory(player)
			armor:save_armor_inventory(player)
			armor:set_player_armor(player)
		end,
		allow_put = function(inv, listname, index, put_stack, player)
			if listname == "armor" then
                if index == 1 and put_stack:get_definition().groups.armor_head then
			      return 1
			    elseif index == 2 and put_stack:get_definition().groups.armor_torso then
			      return 1
			    elseif index == 3 and put_stack:get_definition().groups.armor_legs then
			      return 1
			    elseif index == 4 and put_stack:get_definition().groups.armor_feet then
			      return 1
		        elseif index == 5 and put_stack:get_definition().groups.armor_shield then
			      return 1
			    else
			      return 0
			    end
            else
                return 1
            end
		end,
		allow_take = function(inv, listname, index, stack, player)
			return stack:get_count()
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return count
		end,
	}, name)
	local player_inv = player:get_inventory()
	armor_inv:set_size("armor", 6)
    armor_inv:set_size("arm2", 1)
    player_inv:set_size("arm", 1)
    player_inv:set_size("arm2", 1)
	local stack = player_inv:get_stack("arm2", 1)
	armor_inv:set_stack("arm2", 1, stack)


	local player_inv = player:get_inventory()
	player_inv:set_size("armor", 6)
	for i=1, 6 do
		local stack = player_inv:get_stack("armor", i)
		armor_inv:set_stack("armor", i, stack)
	end
	for i=1, 6 do
		local stack = armor_inv:get_stack("armor", i)
		if stack:get_count() > 0 then
			armor:run_callbacks("on_equip", player, i, stack)
		end
	end
	armor.def[name] = {
		init_time = minetest.get_gametime(),
		level = 0,
		state = 0,
		count = 0,
		groups = {},
	}
	for _, phys in pairs(armor.physics) do
		armor.def[name][phys] = 1
	end
	for _, attr in pairs(armor.attributes) do
		armor.def[name][attr] = 0
	end
	for group, _ in pairs(armor.registered_groups) do
		armor.def[name].groups[group] = 0
	end
	local skin = armor:get_player_skin(name)
	armor.textures[name] = {
		skin = skin,
		armor = "3d_armor_trans.png",
		wielditem = "3d_armor_trans.png",
		preview = armor.default_skin.."_preview.png",
	}
	local texture_path = minetest.get_modpath("player_textures")
	if texture_path then
		local dir_list = minetest.get_dir_list(texture_path.."/textures")
		for _, fn in pairs(dir_list) do
			if fn == "player_"..name..".png" then
				armor.textures[name].skin = fn
				break
			end
		end
	end
	armor:set_player_armor(player)
	return true
end

-- Armor Player Model

default.player_register_model("3d_armor_character.b3d", {
	animation_speed = 30,
	textures = {
		armor.default_skin..".png",
		"3d_armor_trans.png",
		"3d_armor_trans.png",
	},
	animations = {
		stand = {x=0, y=79},
		lay = {x=162, y=166},
		walk = {x=168, y=187},
		mine = {x=189, y=198},
		walk_mine = {x=200, y=219},
		sit = {x=81, y=160},
	},
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
	local name = armor:get_valid_player(player, "[on_player_receive_fields]")
	if not name then
		return
	end
	for field, _ in pairs(fields) do
		if string.find(field, "skins_set") then
			minetest.after(0, function(player)
				local skin = armor:get_player_skin(name)
				armor.textures[name].skin = skin
				armor:set_player_armor(player)
			end, player)
		end
	end
end)

minetest.register_on_joinplayer(function(player)
	default.player_set_model(player, "3d_armor_character.b3d")
	minetest.after(0, function(player)
		if armor.init_player_armor(player) == false then
			pending_players[player] = 0
		end
	end, player)
end)

minetest.register_on_leaveplayer(function(player)
	local name = player:get_player_name()
	if name then
		armor.def[name] = nil
		armor.textures[name] = nil
	end
	pending_players[player] = nil
end)

if armor.config.drop == true or armor.config.destroy == true then
	minetest.register_on_dieplayer(function(player)

	end)
end

if armor.config.punch_damage == true then
	minetest.register_on_punchplayer(function(player, hitter,
			time_from_last_punch, tool_capabilities)
		local name = player:get_player_name()
		if name then
			armor:punch(player, hitter, time_from_last_punch, tool_capabilities)
			last_punch_time[name] = minetest.get_gametime()
		end
	end)
end

minetest.register_on_player_hpchange(function(player, hp_change)
	if player and hp_change < 0 then
		local name = player:get_player_name()
		if name then
			local heal = armor.def[name].heal
			if heal >= math.random(100) then
				hp_change = 0
			end
			-- check if armor damage was handled by fire or on_punchplayer
			local time = last_punch_time[name] or 0
			if time == 0 or time + 1 < minetest.get_gametime() then
				armor:punch(player)
			end
		end
	end
	return hp_change
end, true)

minetest.register_globalstep(function(dtime)
	timer = timer + dtime
	if timer > armor.config.init_delay then
		for player, count in pairs(pending_players) do
			local remove = armor.init_player_armor(player) == true
			pending_players[player] = count + 1
			if remove == false and count > armor.config.init_times then
				minetest.log("warning", S("3d_armor: Failed to initialize player"))
				remove = true
			end
			if remove == true then
				pending_players[player] = nil
			end
		end
		timer = 0
	end
end)

-- Fire Protection and water breating, added by TenPlus1

if armor.config.fire_protect == true then
	-- override hot nodes so they do not hurt player anywhere but mod
	for _, row in pairs(armor.fire_nodes) do
		if minetest.registered_nodes[row[1]] then
			minetest.override_item(row[1], {damage_per_second = 0})
		end
	end
else
	print (S("[3d_armor] Fire Nodes disabled"))
end

if armor.config.water_protect == true or armor.config.fire_protect == true then
	minetest.register_globalstep(function(dtime)
		armor.timer = armor.timer + dtime
		if armor.timer < armor.config.update_time then
			return
		end
		for _,player in pairs(minetest.get_connected_players()) do
			local name = player:get_player_name()
			local pos = player:get_pos()
			local hp = player:get_hp()
			if not name or not pos or not hp then
				return
			end
			-- water breathing
			if armor.config.water_protect == true then
				if armor.def[name].water > 0 and
						player:get_breath() < 10 then
					player:set_breath(10)
				end
			end
			-- fire protection
			if armor.config.fire_protect == true then
				local fire_damage = true
				pos.y = pos.y + 1.4 -- head level
				local node_head = minetest.get_node(pos).name
				pos.y = pos.y - 1.2 -- feet level
				local node_feet = minetest.get_node(pos).name
				-- is player inside a hot node?
				for _, row in pairs(armor.fire_nodes) do
					-- check fire protection, if not enough then get hurt
					if row[1] == node_head or row[1] == node_feet then
						if fire_damage == true then
							armor:punch(player, "fire")
							last_punch_time[name] = minetest.get_gametime()
							fire_damage = false
						end
						if hp > 0 and armor.def[name].fire < row[2] then
							hp = hp - row[3] * armor.config.update_time
							player:set_hp(hp)
							break
						end
					end
				end
			end
		end
		armor.timer = 0
	end)
end
