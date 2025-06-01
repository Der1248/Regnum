minetest.register_on_joinplayer(function(player)
	local name = player:get_player_name()
	player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=10},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "For Minetest 	  :  5.7.0",
	})
	player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=30},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "Game Version	 :  4.0.2",
	})
end)

dofile(minetest.get_modpath("tutorial").."/craft.lua")
dofile(minetest.get_modpath("tutorial").."/node.lua")
dofile(minetest.get_modpath("tutorial").."/tool.lua")
dofile(minetest.get_modpath("tutorial").."/craftitem.lua")
dofile(minetest.get_modpath("tutorial").."/ore.lua")
dofile(minetest.get_modpath("tutorial").."/chatcommand.lua")
dofile(minetest.get_modpath("tutorial").."/other.lua")
dofile(minetest.get_modpath("tutorial").."/alias.lua")
dofile(minetest.get_modpath("tutorial").."/regnum_guide.lua")
dofile(minetest.get_modpath("tutorial").."/inventory_armor.lua")
dofile(minetest.get_modpath("tutorial").."/regnum_armor.lua")
dofile(minetest.get_modpath("tutorial").."/remove_crafts.lua")
dofile(minetest.get_modpath("tutorial").."/awards.lua")
dofile(minetest.get_modpath("tutorial").."/inventory_crafts.lua")
dofile(minetest.get_modpath("tutorial").."/inventory_achievements.lua")
dofile(minetest.get_modpath("tutorial").."/inventory_other.lua")
dofile(minetest.get_modpath("tutorial").."/mining_drill.lua")
dofile(minetest.get_modpath("tutorial").."/mining_lasers.lua")
dofile(minetest.get_modpath("tutorial").."/regnum_craft.lua")
dofile(minetest.get_modpath("tutorial").."/mobs.lua")

--v.2.0.0+
minetest.register_tool("tutorial:waterbattleaxe", {
	description = "Water Battleaxe",
	inventory_image = "tutorial_waterbattleaxe.png",
	groups = {battleaxe_level=15},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			cracky	=	{times={[14]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=1}
	},
	liquids_pointable = true,
})

minetest.register_tool("tutorial:lavabattleaxe", {
	description = "Lava Battleaxe",
	inventory_image = "tutorial_lavabattleaxe.png",
	groups = {battleaxe_level=15},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			cracky	=	{times={[17]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=1}
	},
	liquids_pointable = true,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
    for key, _ in pairs(fields) do
        local match = key:match("^craft_guide:(.+)")
        if match and (not key:match("^craft_guide:regnum(.+)") or key:match("_0$")) then
            if match == "regnum:battleaxe_0" then
                match = "tutorial:battleaxe"
            elseif match == "regnum:boots_0" then
                match = "3d_armor:boots"
            elseif match == "regnum:chestplate_0" then
                match = "3d_armor:chestplate"
            elseif match == "regnum:helmet_0" then
                match = "3d_armor:helmet"
            elseif match == "regnum:leggings_0" then
                match = "3d_armor:leggings"
            elseif match == "regnum:shield_0" then
                match = "shields:shield"
            elseif match == "regnum:gun_0" then
                match = "tutorial:gun"
            elseif match == "regnum:wings_0" then
                match = "tutorial:wings"
            elseif match == "regnum:heart_0" then
                match = "tutorial:heart"
            end
            sfinv.set_page(player, "mtg_craftguide:craftguide") -- Wechselt den Tab zu "craft_tab"
            minetest.after(0.1, function()
                for _, callback in ipairs(minetest.registered_on_player_receive_fields) do
                    callback(player, "", {[match] = true})
                end
            end)
        elseif key:match("^craft_guide:regnum(.+)") then
            local nummer = key:match("(%d+)$")
            local player_inv = player:get_inventory()
            player_inv:set_stack("recr", 1, "default:dirt "..nummer)
            sfinv.set_player_inventory_formspec(player)
        end
    end
end)


local dig_pos = {}
local dig_timer = {}

minetest.register_globalstep(function(dtime)
    for _, player in ipairs(minetest.get_connected_players()) do
        local player_name = player:get_player_name()
        local controls = player:get_player_control()
        local node_pos = {}
        local node_name = ""
        local pos = player:get_pos()
        pos.y = pos.y + 1.47
        local dir = player:get_look_dir()
        local ray = minetest.raycast(pos, vector.add(pos, vector.multiply(dir, 10)), false, false)
        for hit in ray do
            if hit.type == "node" then
                local node = minetest.get_node(hit.under)
                node_pos = hit.under
                node_name = node.name
                break
            end
        end
        if controls.LMB then
            if dig_pos[player_name] and dig_pos[player_name] ~= node_pos then
                local objects = minetest.get_objects_inside_radius(dig_pos[player_name], 0.5)
                for _, object in ipairs(objects) do
                    local e = object:get_luaentity()
                    if e and e.name == "tutorial:crack_overlay" then
                        object:remove()
                    end
                end
                dig_timer[player_name] = 0
            end
            local node_group = minetest.get_item_group(node_name, "cracky")
            local itemstack = player:get_wielded_item()
            local item_name = itemstack:get_name()
            local item_group = minetest.get_item_group(item_name, "battleaxe_level")
            if item_group and node_group then
                if item_group ~= 0 and node_group > item_group then
                    dig_pos[player_name] = node_pos
                    if not dig_timer[player_name] then
                        dig_timer[player_name] = 0
                    end
                    dig_timer[player_name] = dig_timer[player_name]+dtime
                    local objects = minetest.get_objects_inside_radius(dig_pos[player_name], 0.5)
                    local is_ent = false
                    for _, object in ipairs(objects) do
                        local e = object:get_luaentity()
                        if e and e.name == "tutorial:crack_overlay" then
                            is_ent = true
                            local time = 120
                            if node_group == 4 then
                                time = 25
                            elseif node_group == 5 then
                                time = 30
                            elseif node_group == 6 then
                                time = 50
                            elseif node_group == 7 then
                                time = 60
                            elseif node_group == 8 then
                                time = 70
                            elseif node_group == 9 then
                                time = 80
                            elseif node_group == 10 then
                                time = 120
                            elseif node_group == 12 then
                                time = 100
                            elseif node_group == 13 then
                                time = 80
                            elseif node_group == 16 then
                                time = 100
                            end
                            if dig_timer[player_name] > (time) then
                                minetest.set_node(node_pos, {name = "air"})
                                object:remove()
                            elseif dig_timer[player_name] > (time/5)*4 then
                                object:set_properties({
                                    textures = {
                                        "tutorial_crack5.png",
                                        "tutorial_crack5.png",
                                        "tutorial_crack5.png",
                                        "tutorial_crack5.png",
                                        "tutorial_crack5.png",
                                        "tutorial_crack5.png",
                                    },
                                })
                            elseif dig_timer[player_name] > (time/5)*3 then
                                object:set_properties({
                                    textures = {
                                        "tutorial_crack4.png",
                                        "tutorial_crack4.png",
                                        "tutorial_crack4.png",
                                        "tutorial_crack4.png",
                                        "tutorial_crack4.png",
                                        "tutorial_crack4.png",
                                    },
                                })
                            elseif dig_timer[player_name] > (time/5)*2 then
                                object:set_properties({
                                    textures = {
                                        "tutorial_crack3.png",
                                        "tutorial_crack3.png",
                                        "tutorial_crack3.png",
                                        "tutorial_crack3.png",
                                        "tutorial_crack3.png",
                                        "tutorial_crack3.png",
                                    },
                                })
                            elseif dig_timer[player_name] > (time/5)*1 then
                                object:set_properties({
                                    textures = {
                                        "tutorial_crack2.png",
                                        "tutorial_crack2.png",
                                        "tutorial_crack2.png",
                                        "tutorial_crack2.png",
                                        "tutorial_crack2.png",
                                        "tutorial_crack2.png",
                                    },
                                })
                            end
                        end
                    end
                    if not is_ent then
                        local entity = minetest.add_entity(node_pos, "tutorial:crack_overlay")
                        entity:set_properties({
                            textures = {
                                "tutorial_crack1.png",
                                "tutorial_crack1.png",
                                "tutorial_crack1.png",
                                "tutorial_crack1.png",
                                "tutorial_crack1.png",
                                "tutorial_crack1.png",
                            },
                        })
                    end
                end
            end
        else
            if dig_pos[player_name] then
                local objects = minetest.get_objects_inside_radius(dig_pos[player_name], 0.5)
                for _, object in ipairs(objects) do
                    local e = object:get_luaentity()
                    if e and e.name == "tutorial:crack_overlay" then
                        object:remove()
                    end
                end
                dig_timer[player_name] = 0
            end
        end
    end
end)

minetest.register_entity("tutorial:crack_overlay", {
    use_texture_alpha = true,
    physical = true,
    collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
    visual = "cube",
    visual_size = {x=1.01, y=1.01, z=1.01},
    textures = {""},
    spritediv={x=1, y=1},
})

function give_or_drop_ore(pos, node, digger, ore_item)
    if digger and digger:is_player() then
        local wielded = digger:get_wielded_item()
        local tool_def = wielded:get_definition()
        local itemstack = ItemStack(ore_item)
        local inv = digger:get_inventory()
        if tool_def.groups and tool_def.groups.battleaxe_level then
            local tool_level = tool_def.groups.battleaxe_level
            local ore_level = minetest.registered_nodes[node.name].groups.cracky
            if tool_level >= ore_level then
                if inv:room_for_item("main", itemstack) then
                    inv:add_item("main", itemstack)
                else
                    minetest.add_item(pos, itemstack)
                end
            end
        else
            if inv:room_for_item("main", itemstack) then
                inv:add_item("main", itemstack)
            else
                minetest.add_item(pos, itemstack)
            end
        end
    end
end

minetest.register_globalstep(function(dtime)
    local time = minetest.get_timeofday()
    if time > 0.75 or time < 0.25 then
        time = time + (dtime/1000)
        if time >= 1 then
            time = 0
        end
        minetest.set_timeofday(time)
    end
end)

minetest.register_allow_player_inventory_action(function(player, action, inventory, inventory_info)
    local stack
    local prev_stack
    local list_name
    local index
    local take_list
    local take_index
    if inventory_info.from_list then
        list_name = inventory_info.to_list
        stack = inventory:get_stack(inventory_info.from_list, inventory_info.from_index)
        prev_stack = inventory:get_stack(inventory_info.to_list, inventory_info.to_index)
        index = inventory_info.to_index
        take_list = inventory_info.from_list
        take_index = inventory_info.from_index
    elseif inventory_info.stack then
        list_name = inventory_info.listname
        stack = inventory_info.stack
        index = inventory_info.index
        prev_stack = stack
        take_list = list_name
        take_index = index
    end
    if list_name == "feld" and not string.find(stack:get_name(), "tutorial:craft_schluessel") then
        return 0
    elseif list_name == "feld" then
        return 1
    elseif list_name == "feld2" and stack:get_name() ~= "tutorial:level_schluessel" then
        return 0
    elseif list_name == "feld2" then
        return 1
    elseif list_name == "feld3" and stack:get_name() ~= "tutorial:legenden_schluessel" then
        return 0
    elseif list_name == "feld3" then
        return 1
    elseif list_name == "feld4" and stack:get_name() ~= "tutorial:regnum_key" then
        return 0
    elseif list_name == "feld4" then
        return 1
    elseif list_name == "feld5" and stack:get_name() ~= "tutorial:dragon_schluessel" then
        return 0
    elseif list_name == "feld5" then
        return 1
    elseif list_name == "feld6" and stack:get_name() ~= "tutorial:fox_schluessel" then
        return 0
    elseif list_name == "feld6" then
        return 1
    elseif list_name == "feld7" and stack:get_name() ~= "tutorial:tortoise_schluessel" then
        return 0
    elseif list_name == "feld7" then
        return 1
    elseif list_name == "feld8" and stack:get_name() ~= "tutorial:golden_schluessel" then
        return 0
    elseif list_name == "feld8" then
        return 1
    elseif list_name == "skinskey" and stack:get_name() ~= "tutorial:regnum_key_pixeled" then
        return 0
    elseif list_name == "skinskey" then
        return 1
    elseif list_name == "skinskey2" and stack:get_name() ~= "tutorial:knight_schluessel" then
        return 0
    elseif list_name == "skinskey2" then
        return 1
    elseif list_name == "bronze_key" and stack:get_name() ~= "tutorial:bronzekey" then
        return 0
    elseif list_name == "bronze_key" then
        return 1
    elseif list_name == "cookkey" and not string.find(stack:get_name(), "tutorial:cooking_schluessel") then
        return 0
    elseif list_name == "cookkey" then
        return 1
    elseif list_name == "uranin" and minetest.get_item_group(stack:get_name(), "uranium_item") == 0 then
        return 0
    elseif list_name == "uranin" then
        return inventory_info.count
    elseif list_name == "pixkey" and stack:get_name() ~= "tutorial:regnum_key_pixeled" then
        return 0
    elseif list_name == "pixkey" then
        return 1
    elseif list_name == "gem1" and not string.find(stack:get_name(), "tutorial:gem_fragment") then
        return 0
    elseif list_name == "gem1" then
        return inventory_info.count
    elseif list_name == "gem2" and stack:get_name() ~= "moreores:mithril_ingot" then
        return 0
    elseif list_name == "gem2" then
        return inventory_info.count
    elseif list_name == "mine1" and not (string.find(stack:get_name(), "technic:drill_mkS") or string.find(stack:get_name(), "technic:laser_mkS")) then
        return 0
    elseif list_name == "mine1" then
        return 1
    elseif list_name == "mine2" and stack:get_name() ~= "tutorial:coin" and stack:get_name() ~= "tutorial:coin2" then
        return 0
    elseif list_name == "mine2" then
        return inventory_info.count
    elseif string.find(stack:get_name(), "tutorial:legenden_kristall") then
        return 0
    elseif list_name == "krit" and stack:get_name() ~= "tutorial:crystal_schluessel" then
        return 0
    elseif list_name == "krit" then
        return 1
    elseif list_name == "arm" and stack:get_name() ~= "tutorial:armor_key" then
        return 0
    elseif list_name == "arm" then
        return 1
    elseif list_name == "b" and not string.find(stack:get_name(), "tutorial:bag_schluessel") then
        return 0
    elseif list_name == "b" then
        return 1
    elseif list_name == "stickdye" and not string.find(stack:get_name(), "tutorial:colorstick_empty") then
        return 0
    elseif list_name == "stickdye" then
        return 1
    elseif list_name == "bag" and stack:get_definition().groups.bagslots==nil then
        return 0
    elseif take_list == "bag" and player:get_inventory():is_empty("bag"..take_index.."contents") == false then
        return 0
    elseif list_name == "bag" then
        return 1
    elseif list_name == "medall" or take_list == "medall" then
        return 0
    elseif list_name == "kri" or take_list == "kri" then
        return 0
    elseif list_name == "xpi01" then
        return 0
    elseif list_name == "xpi1" then
        return 0
    elseif list_name == "xpi2" then
        return 0
    elseif list_name == "xpi3" then
        return 0
    elseif list_name == "xpi4" then
        return 0
    elseif list_name == "xpi5" then
        return 0
    elseif list_name == "xpi6" then
        return 0
    elseif list_name == "xpi7" then
        return 0
    elseif list_name == "xpi8" then
        return 0
    elseif list_name == "dog" and take_list ~= "dog" then
        return 0
    elseif list_name == "cat" and take_list ~= "cat" then
        return 0
    elseif list_name == "dragon" and (stack:get_name() ~= "tutorial:dragon_crystal" or prev_stack:get_count() ~= 0) then
        return 0
    elseif list_name == "dragon" then
        return 1  
    elseif list_name == "sheep" and (minetest.get_item_group(stack:get_name(), "dye") == 0 or (prev_stack:get_count() ~= 0 and prev_stack:get_name() == stack:get_name())) then
        return 0
    elseif list_name == "sheep" then
        return 1
    elseif list_name == "tortoise" and (stack:get_name() ~= "tutorial:dragon_crystal" or prev_stack:get_count() ~= 0) then
        return 0
    elseif list_name == "tortoise" then
        return 1  
    elseif list_name == "trophcr" and minetest.get_item_group(stack:get_name(), "regnum_tear") == 0 then
        return 0
    elseif list_name == "trophcr" then
        return inventory_info.count
    elseif list_name == "dna" and minetest.get_item_group(stack:get_name(), "regnum_dna") == 0 then
        return 0
    elseif list_name == "dna" then
        return inventory_info.count
    elseif list_name == "colordye" and minetest.get_item_group(stack:get_name(), "dye") == 0 then
        return 0
    elseif list_name == "colordye" then
        return inventory_info.count
    elseif list_name == "crvier4" and index == 1 and not string.find(stack:get_name(), "tutorial:regnum_pixel_gold") then
        return 0
    elseif list_name == "crvier4" and index == 2 and not string.find(stack:get_name(), "tutorial:regnum_pixel_green") then
        return 0
    elseif list_name == "crvier4" and index == 3 and not string.find(stack:get_name(), "tutorial:regnum_pixel_purple") then
        return 0
    elseif list_name == "crvier4" and index == 4 and not string.find(stack:get_name(), "tutorial:regnum_pixel_red") then
        return 0
    elseif list_name == "crvier4" and index == 5 and not string.find(stack:get_name(), "tutorial:regnum_pixel_blue") then
        return 0
    elseif list_name == "gem" and index == 1 and not string.find(stack:get_name(), "tutorial:magic_gem1") then
        return 0
    elseif list_name == "gem" and index == 2 and not string.find(stack:get_name(), "tutorial:magic_gem2") then
        return 0
    elseif list_name == "gem" and index == 3 and not string.find(stack:get_name(), "tutorial:magic_gem3") then
        return 0
    elseif list_name == "gem" and index == 4 and not string.find(stack:get_name(), "tutorial:magic_gem4") then
        return 0
    elseif list_name == "gem" and index == 5 and not string.find(stack:get_name(), "tutorial:magic_gem5") then
        return 0
    elseif list_name == "2gem" and index == 1 and not string.find(stack:get_name(), "tutorial:magic_gem1") then
        return 0
    elseif list_name == "2gem" and index == 2 and not string.find(stack:get_name(), "tutorial:magic_gem2") then
        return 0
    elseif list_name == "2gem" and index == 3 and not string.find(stack:get_name(), "tutorial:magic_gem3") then
        return 0
    elseif list_name == "2gem" and index == 4 and not string.find(stack:get_name(), "tutorial:magic_gem4") then
        return 0
    elseif list_name == "2gem" and index == 5 and not string.find(stack:get_name(), "tutorial:magic_gem5") then
        return 0
    end
    return inventory_info.count
end)

minetest.register_on_player_inventory_action(function(player, action, inventory, inventory_info)
    local list_name
    if inventory_info.from_list then
        list_name = inventory_info.to_list
    elseif inventory_info.stack then
        list_name = inventory_info.listname
    end
    if list_name == "feld3" or list_name == "feld" or list_name == "feld4" or list_name == "feld5" or list_name == "feld6" or list_name == "feld7" or list_name == "feld8" 
    or list_name == "cookkey" or list_name == "pixkey" or list_name == "skinskey" or list_name == "skinskey2" or list_name == "bronze_key" or list_name == "feld2" 
    or list_name == "arm" or list_name == "krit" or list_name == "b" or list_name == "bag" or list_name == "gem" or list_name == "2gem" then
        sfinv.set_player_inventory_formspec(player)
    end
end)

minetest.register_on_dignode(function(pos, oldnode, digger)
    if not digger then
        return
    end
    sfinv.set_player_inventory_formspec(digger)
end)




minetest.register_on_mods_loaded(function()
    local ore_list = {}
    for ore_name, ore_def in pairs(minetest.registered_ores) do
        ore_list[ore_name] = ore_def
    end
    minetest.clear_registered_ores()
    local count = 0
    for _, _ in pairs(ore_list) do
        count = count + 1
    end
    for ore_name, ore_name2 in pairs(ore_list) do
        for test1, test2 in pairs(ore_name2) do
            if test1 == "ore" then
                if test2 ~= "technic:mineral_uranium" and test2 ~= "technic:mineral_chromium" and test2 ~= "technic:mineral_zinc" and test2 ~= "technic:mineral_lead" and test2 ~= "technic:marble" and test2 ~= "technic:granite" then
                    minetest.register_ore(ore_name2)
                end
            end
        end
    end
end)

minetest.register_on_joinplayer(function(player)
	local name = player:get_player_name()
	local player_inv = player:get_inventory()
    player_inv:set_size("xray", 1)
    player_inv:set_size("wings", 1)
    player_inv:set_size("mole", 1)
    player_inv:set_size("xpi01", 24)
    player_inv:set_size("xpi1", 101)
    player_inv:set_size("xpi2", 21)
    player_inv:set_size("xpi3", 21)
    player_inv:set_size("xpi4", 101)
    player_inv:set_size("xpi5", 101)
    player_inv:set_size("xpi6", 26)
    player_inv:set_size("xpi7", 101)
    player_inv:set_size("xpi8", 101)
    player_inv:set_size("craft", 25)
    player_inv:set_size("feld", 1)
	player_inv:set_size("feld3", 1)
    player_inv:set_size("feld4", 1)
    player_inv:set_size("feld5", 1)
    player_inv:set_size("feld6", 1)
    player_inv:set_size("feld7", 1)
    player_inv:set_size("feld8", 1)
    player_inv:set_size("dna", 8)
	player_inv:set_size("dogdna", 1)
	player_inv:set_size("catdna", 1)
    player_inv:set_size("sheepdna", 1)
    player_inv:set_size("dragondna", 1)
    player_inv:set_size("foxdna", 1)
    player_inv:set_size("tortoisedna", 1)
    player_inv:set_size("trophcr", 1)
    player_inv:set_size("tearred", 1)
    player_inv:set_size("tearblue", 1)
    player_inv:set_size("teargreen", 1)
    player_inv:set_size("tearpurple", 1)
    player_inv:set_size("tearyellow", 1)
    player_inv:set_size("tearcyan", 1)
    player_inv:set_size("backward", 1)
    player_inv:set_size("mine1", 1)
    player_inv:set_size("mine2", 8)
    player_inv:set_size("armor", 6)
    player_inv:set_size("crvier4", 5)
    player_inv:set_size("gem1", 8)
    player_inv:set_size("gem2", 8)
    player_inv:set_size("gem0", 1)
	player_inv:set_size("2gem0", 1)
    player_inv:set_size("uranin", 1)
    player_inv:set_size("cookin", 1)
    player_inv:set_size("cookkey", 1)
    player_inv:set_size("fuel", 1)
    player_inv:set_size("medall", 1)
    player_inv:set_size("kri", 8)
    player_inv:set_size("pixkey", 1)
    player_inv:set_size("crtime", 1)
    player_inv:set_size("medallion", 1)
    player_inv:set_size("rew", 1)
    player_inv:set_size("rewb", 1)
    player_inv:set_size("artrew", 1)
    player_inv:set_size("trerew", 1)
    player_inv:set_size("medrew", 1)
    player_inv:set_size("trorew", 1)
    player_inv:set_size("colreward", 1)
    player_inv:set_size("dye", 15)
    player_inv:set_size("colordye", 1)
    player_inv:set_size("stickdye", 1)
    player_inv:set_size("bronze_key", 1)
    player_inv:set_size("medallionred", 9)
    player_inv:set_size("medallionblue", 9)
    player_inv:set_size("medalliongreen", 9)
    player_inv:set_size("medallionyellow", 9)
    player_inv:set_size("medallionpurple", 9)
    player_inv:set_size("medallioncyan", 9)
    player_inv:set_size("medalliongray", 9)
    player_inv:set_size("b", 1)
    player_inv:set_size("feld2", 1)
    player_inv:set_size("gem", 5)
    player_inv:set_size("2gem", 5)
    player_inv:set_size("skinskey", 1)
    player_inv:set_size("skinskey2", 1)
    player_inv:set_size("krit", 1)
    player_inv:set_size("dragon", 1)
    player_inv:set_size("tortoise", 1)
    player_inv:set_size("fox", 1)
    player_inv:set_size("trophcr", 1)
    player_inv:set_size("dgon", 1)
    player_inv:set_size("ttoise", 1)
    player_inv:set_size("bag", 8)
    player_inv:set_size("art1", 5)
    player_inv:set_size("art2", 5)
    player_inv:set_size("art3", 5)
    player_inv:set_size("art4", 5)
    player_inv:set_size("art5", 5)
    player_inv:set_size("art6", 5)
    player_inv:set_size("art7", 5)
    player_inv:set_size("art8", 5)
    player_inv:set_size("art9", 5)
    player_inv:set_size("art10", 5)
    player_inv:set_size("art11", 5)
    player_inv:set_size("art12", 5)
    player_inv:set_size("art13", 11)
    player_inv:set_size("r1248", 6)
    player_inv:set_size("recr", 1)
	player_inv:set_size("recr2", 1)
    player_inv:set_size("am", 1)
    player_inv:set_size("armor_speed", 1)
    player_inv:set_size("armor_jump", 1)
    player_inv:set_size("dog",8)
    player_inv:set_size("cat",8)
    player_inv:set_size("dragon", 1)
    player_inv:set_size("sheep",1)
    player_inv:set_size("sheep2",1)
    player_inv:set_size("sheep3",1)
    player_inv:set_size("tortoise", 1)
    for i=1, 54 do
        player_inv:set_size("a"..i, 1)
    end
    local af2
    af2 = function()
        minetest.after(1, function()
            local wings = player_inv:get_stack("wings", 1):get_count()
            if wings > 0 then
                player_inv:set_stack("wings", 1, "default:dirt "..(wings-1))
            end
            local mole = player_inv:get_stack("mole", 1):get_count()
            if mole > 0 then
                player_inv:set_stack("mole", 1, "default:dirt "..(mole-1))
            end
			local xray = player_inv:get_stack("xray", 1):get_count()
            if xray > 0 then
                player_inv:set_stack("xray", 1, "default:dirt "..(xray-1))
            end
            af2()
        end)
    end
    af2()
end)

formspec = "size[10,8.3]"
        .."background[10,8.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"




minetest.register_craftitem("tutorial:heart", {
	description = "Heart\nHeart-Lv.0",
	inventory_image = "tutorial_heart.png",
	groups = {not_in_creative_inventory=1},
	stack_max = 1,
})
for i=1,20 do
    minetest.register_craftitem("tutorial:heart_mega"..i, {
        description = "Megaheart Lv."..i.."\nHeart-Lv."..i,
	    inventory_image = "tutorial_heart_mega"..i..".png",
		groups = {not_in_creative_inventory=1, heart=1},
		stack_max = 1,
    })
end
for i=1,25 do
    minetest.register_craftitem("tutorial:cloudheart_mega"..i, {
        description = "Cloudheart Lv."..i.."\nHeart-Lv."..(i+20),
	    inventory_image = "tutorial_cloudheart_mega"..i..".png",
		groups = {not_in_creative_inventory=1, heart=1},
		stack_max = 1,
    })
end
for i=1,4 do
    minetest.register_craftitem("tutorial:superheart"..i, {
        description = "Superheart Lv."..i.."\nHeart-Lv."..(i+45),
	    inventory_image = "tutorial_superheart"..i..".png",
		groups = {not_in_creative_inventory=1, heart=1},
		stack_max = 1,
    })
end
minetest.register_craftitem("tutorial:uraniumheart1", {
    description = "Uraniumheart Lv.1\nHeart-Lv.50",
    inventory_image = "tutorial_uraniumheart1.png",
    groups = {not_in_creative_inventory=1, heart=1},
    stack_max = 1,
})
minetest.register_craftitem("tutorial:uraniumheart2", {
    description = "Uraniumheart Lv.2\nHeart-Lv.51",
    inventory_image = "tutorial_uraniumheart2.png",
    groups = {heart=1},
    stack_max = 1,
})
for i=1,29 do
    minetest.register_craftitem("tutorial:colorstick_empty"..i, {
        description = "Color Stick (".. math.floor(i*3.33).."% filled)",
	    inventory_image = "tutorial_colorstick_empty"..i..".png",
		groups = {not_in_creative_inventory=1},
    })
end

minetest.register_craftitem("tutorial:adminheart", {
	description = "Admin Heart",
	inventory_image = "tutorial_heart_admin.png",
    groups = {heart=1},
	stack_max = 1,
})

minetest.register_craftitem("tutorial:colorstick1", {
	description = "Color Stick Lv.1 (turns black in white ore and back)",
	inventory_image = "tutorial_colorstick1.png",
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.under then
			local node = minetest.get_node(pointed_thing.under)
			if node.name == "tutorial:stone_with_white" then
				minetest.set_node(pointed_thing.under,{name="tutorial:stone_with_black"})
			elseif node.name == "tutorial:stone_with_black" then
				minetest.set_node(pointed_thing.under,{name="tutorial:stone_with_white"})
			end
		end
	end,
})
minetest.register_craft({
    output = 'tutorial:xraystick1',
    recipe = {
        {'', 'tutorial:coin_silver', 'tutorial:cloudentverner21', 'tutorial:coin_silver', ''},
        {'', 'tutorial:coin_silver', 'tutorial:coin_silver', 'tutorial:coin_silver', ''},
        {'', '', 'tutorial:coin_silver', '', ''},
        {'', '', 'tutorial:coin_silver', '', ''},
        {'', '', 'tutorial:coin_silver', '', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:xraystick2',
    recipe = {
        {'tutorial:coin_silver', 'tutorial:coin_silver', 'tutorial:coin_silver', 'tutorial:coin_silver', 'tutorial:coin_silver'},
        {'tutorial:coin_silver', 'tutorial:coin_silver', 'tutorial:coin_silver', 'tutorial:coin_silver', 'tutorial:coin_silver'},
        {'tutorial:coin_silver', 'tutorial:coin_silver', 'tutorial:xraystick1', 'tutorial:coin_silver', 'tutorial:coin_silver'},
        {'tutorial:coin_silver', 'tutorial:coin_silver', 'tutorial:coin_silver', 'tutorial:coin_silver', 'tutorial:coin_silver'},
        {'tutorial:coin_silver', 'tutorial:coin_silver', 'tutorial:coin_silver', 'tutorial:coin_silver', 'tutorial:coin_silver'},
    }
})
minetest.register_craft({
    output = 'tutorial:molestick1',
    recipe = {
        {'', 'tutorial:coin_bronze', 'tutorial:cloudentverner21', 'tutorial:coin_bronze', ''},
        {'', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', ''},
        {'', '', 'tutorial:coin_bronze', '', ''},
        {'', '', 'tutorial:coin_bronze', '', ''},
        {'', '', 'tutorial:coin_bronze', '', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:molestick2',
    recipe = {
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:molestick1', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
    }
})
minetest.register_craft({
    output = 'tutorial:molestick3',
    recipe = {
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:molestick2', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
    }
})
minetest.register_craft({
    output = 'tutorial:molestick4',
    recipe = {
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:molestick3', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
    }
})
minetest.register_craft({
    output = 'tutorial:molestick5',
    recipe = {
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:molestick4', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
        {'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze', 'tutorial:coin_bronze'},
    }
})
	
minetest.register_craftitem("tutorial:xraystick1", {
    description = "Xray Stick Lv.1",
    inventory_image = "tutorial_xraystick1.png",
    stack_max = 1,
	groups = {not_in_creative_inventory=1},
    on_use = function(itemstack, user, pointed_thing)
        local playername = user:get_player_name()
        local player_inv = user:get_inventory()
        local privs = minetest.get_player_privs(playername)
        if player_inv:get_stack("xray", 1):get_count() == 0 then
            playereffects.apply_effect_type("xray", 10, user)
            player_inv:set_stack("xray", 1, "default:dirt 22")
        end
        return itemstack
    end,
})

minetest.register_craftitem("tutorial:xraystick2", {
    description = "Xray Stick Lv.2",
    inventory_image = "tutorial_xraystick2.png",
    stack_max = 1,
	groups = {},
    on_use = function(itemstack, user, pointed_thing)
        local playername = user:get_player_name()
        local player_inv = user:get_inventory()
        local privs = minetest.get_player_privs(playername)
        if player_inv:get_stack("xray", 1):get_count() == 0 then
            playereffects.apply_effect_type("xray", 20, user)
            player_inv:set_stack("xray", 1, "default:dirt 32")
        end
        return itemstack
    end,
})

minetest.register_craftitem("tutorial:molestick1", {
    description = "Mole Stick Lv.1",
    inventory_image = "tutorial_superzauberstab1.png",
    stack_max = 1,
	groups = {not_in_creative_inventory=1},
    on_use = function(itemstack, user, pointed_thing)
        local playername = user:get_player_name()
        local player_inv = user:get_inventory()
        local privs = minetest.get_player_privs(playername)
        if player_inv:get_stack("mole", 1):get_count() == 0 then
            playereffects.apply_effect_type("pepmole", 10, user)
            player_inv:set_stack("mole", 1, "default:dirt 22")
        end
        return itemstack
    end,
})
minetest.register_craftitem("tutorial:molestick2", {
    description = "Mole Stick Lv.2",
    inventory_image = "tutorial_superzauberstab2.png",
    stack_max = 1,
	groups = {not_in_creative_inventory=1},
    on_use = function(itemstack, user, pointed_thing)
        local playername = user:get_player_name()
        local player_inv = user:get_inventory()
        local privs = minetest.get_player_privs(playername)
        if player_inv:get_stack("mole", 1):get_count() == 0 then
            playereffects.apply_effect_type("pepmole", 20, user)
            player_inv:set_stack("mole", 1, "default:dirt 32")
        end
        return itemstack
    end,
})
minetest.register_craftitem("tutorial:molestick3", {
    description = "Mole Stick Lv.3",
    inventory_image = "tutorial_superzauberstab3.png",
    stack_max = 1,
	groups = {not_in_creative_inventory=1},
    on_use = function(itemstack, user, pointed_thing)
        local playername = user:get_player_name()
        local player_inv = user:get_inventory()
        local privs = minetest.get_player_privs(playername)
        if player_inv:get_stack("mole", 1):get_count() == 0 then
            playereffects.apply_effect_type("pepmole", 30, user)
            player_inv:set_stack("mole", 1, "default:dirt 42")
        end
        return itemstack
    end,
})
minetest.register_craftitem("tutorial:molestick4", {
    description = "Mole Stick Lv.4",
    inventory_image = "tutorial_superzauberstab4.png",
    stack_max = 1,
	groups = {not_in_creative_inventory=1},
    on_use = function(itemstack, user, pointed_thing)
        local playername = user:get_player_name()
        local player_inv = user:get_inventory()
        local privs = minetest.get_player_privs(playername)
        if player_inv:get_stack("mole", 1):get_count() == 0 then
            playereffects.apply_effect_type("pepmole", 40, user)
            player_inv:set_stack("mole", 1, "default:dirt 52")
        end
        return itemstack
    end,
})
minetest.register_craftitem("tutorial:molestick5", {
    description = "Mole Stick Lv.MAX",
    inventory_image = "tutorial_superzauberstab5.png",
    stack_max = 1,
    on_use = function(itemstack, user, pointed_thing)
        local playername = user:get_player_name()
        local player_inv = user:get_inventory()
        local privs = minetest.get_player_privs(playername)
        if player_inv:get_stack("mole", 1):get_count() == 0 then
            playereffects.apply_effect_type("pepmole", 50, user)
            player_inv:set_stack("mole", 1, "default:dirt 62")
        end
        return itemstack
    end,
})

minetest.register_craftitem("tutorial:molestick_admin", {
    description = "Admin Mole Stick",
    inventory_image = "tutorial_molestick_admin.png",
    stack_max = 1,
    on_use = function(itemstack, user, pointed_thing)
        if playereffects.has_effect_type(user:get_player_name(), "pepmole") then
            playereffects.cancel_effect_type("pepmole", false, user:get_player_name())
        else
            playereffects.apply_effect_type("pepmole", 100, user)
        end
        return itemstack
    end,
})

minetest.register_craftitem("tutorial:xraystick_admin", {
    description = "Admin Xray Stick",
    inventory_image = "tutorial_xraystick_admin.png",
    stack_max = 1,
    on_use = function(itemstack, user, pointed_thing)
        if playereffects.has_effect_type(user:get_player_name(), "xray") then
            playereffects.cancel_effect_type("xray", false, user:get_player_name())
        else
            playereffects.apply_effect_type("xray", 100, user)
        end
        return itemstack
    end,
})

minetest.register_node("tutorial:stone_with_precious_metal", {
	description = "Precious Metal Ore",
	tiles = {"default_stone.png^tutorial_precious_metal_ore.png"},
	is_ground_content = true,
	groups = {cracky=16,xpp=1},
	drop = 'tutorial:precious_metal',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craftitem("tutorial:precious_metal", {
	description = "Precious Metal",
	inventory_image = "tutorial_precious_metal_ore.png",
})

minetest.register_craftitem("tutorial:bronzekey", {
	description = "Bronze Key",
	inventory_image = "tutorial_bronze_schluessel.png",
})
minetest.register_craftitem("tutorial:coin_bronze", {
    description = "Bronze Coin",
	inventory_image = "tutorial_coin_bronze.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:coin_silver", {
    description = "Silver Coin",
	inventory_image = "tutorial_coin_silver.png",
	stack_max = 9999,
})
for i = 1, 100, 1 do
    minetest.register_node("tutorial:level"..i.."_bronze",{
	    tiles  = {"tutorial_level"..i..".png^tutorial_level_bronze.png"},
	    description = "Bronze Level Block Lv."..i,
	    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,not_in_creative_inventory=1},
    })
	minetest.register_node("tutorial:level"..i.."_silver",{
	    tiles  = {"tutorial_level"..i..".png^tutorial_level_silver.png"},
	    description = "Silver Level Block Lv."..i,
	    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,not_in_creative_inventory=1},
    })
end
minetest.register_node("tutorial:levelMAX_bronze",{
	tiles  = {"tutorial_levelMAX.png^tutorial_level_bronze.png"},
	description = "Bronze Level Block Lv.MAX",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:levelMAX_silver",{
	tiles  = {"tutorial_levelMAX.png^tutorial_level_silver.png"},
	description = "Silver Level Block Lv.MAX",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})



playereffects.register_effect_type("fly", "Fly mode available", "tutorial_wings_plain.png", {"fly"},
    function(player)
        local playername = player:get_player_name()
        local privs = minetest.get_player_privs(playername)
        privs.fly = true
        minetest.set_player_privs(playername, privs)
    end,
    function(effect, player)
        local privs = minetest.get_player_privs(effect.playername)
        privs.fly = nil
        minetest.set_player_privs(effect.playername, privs)
    end,
    false, false
)
minetest.register_craftitem("tutorial:wings", {
    description = "Wings\nWings-Lv.0",
    inventory_image = "tutorial_wings.png",
    stack_max = 1,
	groups = {not_in_creative_inventory=1},
    on_use = function(itemstack, user, pointed_thing)
        local playername = user:get_player_name()
        local player_inv = user:get_inventory()
        local privs = minetest.get_player_privs(playername)
        if privs.fly == true then
        else
            if player_inv:get_stack("wings", 1):get_count() == 0 then
                player_inv:set_stack("wings", 1, "default:dirt 13")
                playereffects.apply_effect_type("fly", 0.5, user)
            end
            return itemstack
        end
    end,
})
for i=1,20 do
    minetest.register_craftitem("tutorial:wings_mega"..i, {
        description = "Mega Wings Lv."..i.."\nWings-Lv."..i,
        inventory_image = "tutorial_wings_mega"..i..".png",
        stack_max = 1,
		groups = {not_in_creative_inventory=1},
        on_use = function(itemstack, user, pointed_thing)
            local playername = user:get_player_name()
            local player_inv = user:get_inventory()
            local privs = minetest.get_player_privs(playername)
            if privs.fly == true then
            else
                if player_inv:get_stack("wings", 1):get_count() == 0 then
                    local k = math.ceil((i*0.5))
                    playereffects.apply_effect_type("fly", i*0.5, user)
                    player_inv:set_stack("wings", 1, "default:dirt "..(k+12))
                end
                return itemstack
            end
        end,
    })
end
for i=1,25 do
    minetest.register_craftitem("tutorial:cloudwings_mega"..i, {
        description = "Cloud Wings Lv."..i.."\nWings-Lv."..(i+20),
        inventory_image = "tutorial_cloudwings_mega"..i..".png",
        stack_max = 1,
		groups = {not_in_creative_inventory=1},
        on_use = function(itemstack, user, pointed_thing)
            local playername = user:get_player_name()
            local player_inv = user:get_inventory()
            local privs = minetest.get_player_privs(playername)
            if privs.fly == true then
            else
                if player_inv:get_stack("wings", 1):get_count() == 0 then
                    local k = math.ceil(((i+20)*0.5))
                    playereffects.apply_effect_type("fly", (i+20)*0.5, user)
                    player_inv:set_stack("wings", 1, "default:dirt "..(k+12))
                end
                return itemstack
            end
        end,
    })
end
for i=1,4 do
    minetest.register_craftitem("tutorial:superwings"..i, {
        description = "Super Wings Lv."..i.."\nWings-Lv."..(i+45),
        inventory_image = "tutorial_superwings"..i..".png",
        stack_max = 1,
		groups = {not_in_creative_inventory=1},
        on_use = function(itemstack, user, pointed_thing)
            local playername = user:get_player_name()
            local player_inv = user:get_inventory()
            local privs = minetest.get_player_privs(playername)
            if privs.fly == true then
            else
                if player_inv:get_stack("wings", 1):get_count() == 0 then
                    local k = math.ceil(((i+45)*0.5))
                    playereffects.apply_effect_type("fly", (i+45)*0.5, user)
                    player_inv:set_stack("wings", 1, "default:dirt "..(k+12))
                end
                return itemstack
            end
        end,
    })
end
for i=1,2 do
    minetest.register_craftitem("tutorial:uraniumwings"..i, {
        description = "Uranium Wings Lv."..i.."\nWings-Lv."..(i+49),
        inventory_image = "tutorial_uraniumwings"..i..".png",
        stack_max = 1,
		groups = {not_in_creative_inventory=1},
        on_use = function(itemstack, user, pointed_thing)
            local playername = user:get_player_name()
            local player_inv = user:get_inventory()
            local privs = minetest.get_player_privs(playername)
            if privs.fly == true then
            else
                if player_inv:get_stack("wings", 1):get_count() == 0 then
                    local k = math.ceil(((i+49)*0.5))
                    playereffects.apply_effect_type("fly", (i+49)*0.5, user)
                    player_inv:set_stack("wings", 1, "default:dirt "..(k+12))
                end
                return itemstack
            end
        end,
    })
end
for i=1,12 do
    minetest.register_craftitem("tutorial:energywings"..i, {
        description = "Energy Wings Lv."..i.."\nWings-Lv."..(i+51),
        inventory_image = "tutorial_energywings"..i..".png",
        stack_max = 1,
		groups = {not_in_creative_inventory=1},
        on_use = function(itemstack, user, pointed_thing)
            local playername = user:get_player_name()
            local player_inv = user:get_inventory()
            local privs = minetest.get_player_privs(playername)
            if privs.fly == true then
            else
                if player_inv:get_stack("wings", 1):get_count() == 0 then
                    local k = math.ceil(((i+51)*0.5))
                    playereffects.apply_effect_type("fly", (i+51)*0.5, user)
                    player_inv:set_stack("wings", 1, "default:dirt "..(k+12))
                end
                return itemstack
            end
        end,
    })
end
for i=1,7 do
    minetest.register_craftitem("tutorial:superenergywings"..i, {
        description = "Super Energy Wings Lv."..i.."\nWings-Lv."..(i+63),
        inventory_image = "tutorial_superenergywings"..i..".png",
        stack_max = 1,
		groups = {not_in_creative_inventory=1},
        on_use = function(itemstack, user, pointed_thing)
            local playername = user:get_player_name()
            local player_inv = user:get_inventory()
            local privs = minetest.get_player_privs(playername)
            if privs.fly == true then
            else
                if player_inv:get_stack("wings", 1):get_count() == 0 then
                    local k = math.ceil(((i+63)*0.5))
                    playereffects.apply_effect_type("fly", (i+63)*0.5, user)
                    player_inv:set_stack("wings", 1, "default:dirt "..(k+12))
                end
                return itemstack
            end
        end,
    })
end
for i=1,5 do
    minetest.register_craftitem("tutorial:crystalwings"..i, {
        description = "Crystal Wings Lv."..i.."\nWings-Lv."..(i+70),
        inventory_image = "tutorial_kristallwings"..i..".png",
        stack_max = 1,
		groups = {not_in_creative_inventory=1},
        on_use = function(itemstack, user, pointed_thing)
            local playername = user:get_player_name()
            local player_inv = user:get_inventory()
            local privs = minetest.get_player_privs(playername)
            if privs.fly == true then
            else
                if player_inv:get_stack("wings", 1):get_count() == 0 then
                    local k = math.ceil(((i+70)*0.5))
                    playereffects.apply_effect_type("fly", (i+70)*0.5, user)
                    player_inv:set_stack("wings", 1, "default:dirt "..(k+12))
                end
                return itemstack
            end
        end,
    })
end
for i=1,25 do
    minetest.register_craftitem("tutorial:ultrawings"..i, {
        description = "Ultra Wings Lv."..i.."\nWings-Lv."..(i+75),
        inventory_image = "tutorial_ultrawings"..i..".png",
        stack_max = 1,
		groups = {not_in_creative_inventory=1},
        on_use = function(itemstack, user, pointed_thing)
            local playername = user:get_player_name()
            local player_inv = user:get_inventory()
            local privs = minetest.get_player_privs(playername)
            if privs.fly == true then
            else
                if player_inv:get_stack("wings", 1):get_count() == 0 then
                    local k = math.ceil(((i+75)*0.5))
                    playereffects.apply_effect_type("fly", (i+75)*0.5, user)
                    player_inv:set_stack("wings", 1, "default:dirt "..(k+12))
                end
                return itemstack
            end
        end,
    })
end
minetest.register_craftitem("tutorial:superultrawings", {
    description = "Super Ultra Wings\nWings-Lv.101",
    inventory_image = "tutorial_superultrawings.png",
    stack_max = 1,
	groups = {not_in_creative_inventory=1},
    on_use = function(itemstack, user, pointed_thing)
        local playername = user:get_player_name()
        local player_inv = user:get_inventory()
        local privs = minetest.get_player_privs(playername)
        if privs.fly == true then
        else
            if player_inv:get_stack("wings", 1):get_count() == 0 then
                local k = math.ceil((101*0.5))
                playereffects.apply_effect_type("fly", 101*0.5, user)
                player_inv:set_stack("wings", 1, "default:dirt "..(k+12))
            end
            return itemstack
        end
    end,
})
for i=1,4 do
    minetest.register_craftitem("tutorial:arenawings"..i, {
        description = "Arena Wings Lv."..i.."\nWings-Lv."..(i+101),
        inventory_image = "tutorial_arenawings"..i..".png",
        stack_max = 1,
		groups = {not_in_creative_inventory=1},
        on_use = function(itemstack, user, pointed_thing)
            local playername = user:get_player_name()
            local player_inv = user:get_inventory()
            local privs = minetest.get_player_privs(playername)
            if privs.fly == true then
            else
                if player_inv:get_stack("wings", 1):get_count() == 0 then
                    local k = math.ceil(((i+101)*0.5))
                    playereffects.apply_effect_type("fly", (i+101)*0.5, user)
                    player_inv:set_stack("wings", 1, "default:dirt "..(k+12))
                end
                return itemstack
            end
        end,
    })
end
for i=1,10 do
    minetest.register_craftitem("tutorial:titanwings"..i, {
        description = "Titan Wings Lv."..i.."\nWings-Lv."..(i+105),
        inventory_image = "tutorial_titanwings"..i..".png",
        stack_max = 1,
		groups = {not_in_creative_inventory=1},
        on_use = function(itemstack, user, pointed_thing)
            local playername = user:get_player_name()
            local player_inv = user:get_inventory()
            local privs = minetest.get_player_privs(playername)
            if privs.fly == true then
            else
                if player_inv:get_stack("wings", 1):get_count() == 0 then
                    local k = math.ceil(((i+105)*0.5))
                    playereffects.apply_effect_type("fly", (i+105)*0.5, user)
                    player_inv:set_stack("wings", 1, "default:dirt "..(k+12))
                end
                return itemstack
            end
        end,
    })
end
for i=1,6 do
    minetest.register_craftitem("tutorial:legendwings"..i, {
        description = "Legendary Wings Lv."..i.."\nWings-Lv."..(i+115),
        inventory_image = "tutorial_legendwings"..i..".png",
        stack_max = 1,
		groups = {not_in_creative_inventory=1},
        on_use = function(itemstack, user, pointed_thing)
            local playername = user:get_player_name()
            local player_inv = user:get_inventory()
            local privs = minetest.get_player_privs(playername)
            if privs.fly == true then
            else
                if player_inv:get_stack("wings", 1):get_count() == 0 then
                    local k = math.ceil(((i+115)*0.5))
                    playereffects.apply_effect_type("fly", (i+115)*0.5, user)
                    player_inv:set_stack("wings", 1, "default:dirt "..(k+12))
                end
                return itemstack
            end
        end,
    })
end



minetest.register_craftitem("tutorial:superlegendwings1", {
    description = "Super Legendary Wings\nWings-Lv.122",
    inventory_image = "tutorial_superlegendwings.png",
    wield_image = "tutorial_superlegendwings.png",
    stack_max = 1,
	groups = {not_in_creative_inventory=1},
    on_use = function(itemstack, user, pointed_thing)
		local playername = user:get_player_name()
		local player_inv = user:get_inventory()
		local privs = minetest.get_player_privs(playername)
		if privs.fly == true then
		else
			if player_inv:get_stack("wings", 1):get_count() == 0 then
				local k = math.ceil((122*0.5))
				playereffects.apply_effect_type("fly", 122*0.5, user)
				player_inv:set_stack("wings", 1, "default:dirt "..(k+12))
			end
		end
        return itemstack
    end,
})


minetest.register_craftitem("tutorial:regnumwings1", {
    description = "Regnum Wings\nWings-Lv.MAX",
    inventory_image = "tutorial_regnumwings.png",
    wield_image = "tutorial_regnumwings.png",
    stack_max = 1,
    on_use = function(itemstack, user, pointed_thing)
		local playername = user:get_player_name()
		local player_inv = user:get_inventory()
		local privs = minetest.get_player_privs(playername)
		if privs.fly == true then
		else
			if player_inv:get_stack("wings", 1):get_count() == 0 then
				local k = math.ceil((150*0.5))
				playereffects.apply_effect_type("fly", 150*0.5, user)
				player_inv:set_stack("wings", 1, "default:dirt "..(k+12))
			end
		end
        return itemstack
    end,
})

minetest.register_on_joinplayer(function(player)
	local stack = player:get_inventory():get_stack("armor", 6)
	local new_max_hp = 20
	for i=1,20 do
		if stack:get_name() == "tutorial:heart_mega"..i then
			new_max_hp = 20+i
		end
	end
	for i=1,25 do
		if stack:get_name() == "tutorial:cloudheart_mega"..i then
			new_max_hp = 40+i
		end
	end
	for i=1,4 do
		if stack:get_name() == "tutorial:superheart"..i then
			new_max_hp = 65+i
		end
	end
    for i=1,2 do
		if stack:get_name() == "tutorial:uraniumheart"..i then
			new_max_hp = 69+i
		end
	end
    if stack:get_name() == "tutorial:adminheart" then
        new_max_hp = 1000
        player:set_properties({hp_max = new_max_hp})
        player:set_hp(1000)
    end
	player:set_properties({hp_max = new_max_hp})
    local hpnum = tonumber(player:get_meta():get_string("hpnum"))
	if hpnum then
		player:set_hp(hpnum)
	end
end)

minetest.register_on_chatcommand(function(name, command, params)
	local player = minetest.get_player_by_name(name)
	if command == "killme" then
		player = minetest.get_player_by_name(name)
	end
	if command == "kill" then
		if params ~= "" then
			player = minetest.get_player_by_name(params)
		else
			player = minetest.get_player_by_name(name)
		end
	end
	local can_access = minetest.check_player_privs(name, {server=true})
	if (command == "killme" or (command == "kill" and can_access )) and minetest.settings:get_bool("enable_damage") then
		if player then
			local inv = player:get_inventory()
			if inv:get_stack("armor", 1):get_name() == "3d_armor:helmet_admin"
			and inv:get_stack("armor", 2):get_name() == "3d_armor:chestplate_admin"
			and inv:get_stack("armor", 3):get_name() == "3d_armor:leggings_admin"
			and inv:get_stack("armor", 4):get_name() == "3d_armor:boots_admin"
			and inv:get_stack("armor", 5):get_name() == "shields:shield_admin" then
			else
				while player:get_hp() ~= 0 do
					player:set_hp(0)
				end
			end
		end
	end
	if command == "kill" and player and can_access and minetest.settings:get_bool("enable_damage") then
		return true
	end
end)



minetest.register_craft({
        output = "tutorial:spawn_egg",
        recipe = {
                {'default:obsidian', 'default:obsidian', 'default:obsidian'},
                {'default:obsidian', 'default:ice', 'default:obsidian'},
                {'default:obsidian', 'default:obsidian', 'default:obsidian'},
        }
})
minetest.register_craftitem("tutorial:spawn_egg", {
	description = "Mummy",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:mummy")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craft({
    output = 'tutorial:colorstick_empty',
    recipe = {
        {'tutorial:colorstick_broken', 'tutorial:hammer'},
    }
})
minetest.register_craftitem("tutorial:colorstick_empty", {
    description = "Empty Colorstick",
	inventory_image = "tutorial_colorstick_empty.png",
    groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:hammer", {
    description = "Repairing Tool for Color Stick",
	inventory_image = "tutorial_hammer.png",
})
minetest.register_craftitem("tutorial:colorstick_broken", {
    description = "Broken Color Stick",
	inventory_image = "tutorial_colorstick_broken.png",
})
minetest.register_alias("homedecor:trophy_year1", "tutorial:trophy_year1")
minetest.register_node("tutorial:trophy_year1", {
    description = "One Year Trophy",
	tiles = {
		"tutorial_trophy_year1.png"
	},
    groups = { snappy=3 },
    drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.1875, -0.4375, 0.1875}, -- NodeBox1
			{-0.0625, -0.4375, -0.0625, 0.125, -0.375, 0.125}, -- NodeBox2
			{-0.02, -0.375, -0.02, 0.0825, -0.1875, 0.0825}, -- NodeBox3
			{-0.0625, -0.1875, -0.0625, 0.125, -0.125, 0.125}, -- NodeBox4
			{-0.125, -0.1875, -0.0625, -0.0625, 0.125, 0.125}, -- NodeBox5
			{0.125, -0.1875, -0.0625, 0.1875, 0.125, 0.125}, -- NodeBox6
			{-0.125, -0.1875, 0.125, 0.1875, 0.125, 0.1875}, -- NodeBox7
			{-0.125, -0.1875, -0.125, 0.1875, 0.125, -0.0625}, -- NodeBox8
			{-0.0625, -0.25, -0.0625, 0.125, -0.1875, 0.125}, -- NodeBox9
			{0.1875, 0.05, 0, 0.23, 0.0925, 0.0625}, -- NodeBox10
			{0.1875, -0.15, 0, 0.23, -0.11, 0.0625}, -- NodeBox11
			{0.23, -0.15, 0, 0.2725, 0.0925, 0.0625}, -- NodeBox12
			{-0.1675, -0.15, 0, -0.125, -0.11, 0.0625}, -- NodeBox13
			{-0.1675, 0.05, 0, -0.125, 0.0925, 0.0625}, -- NodeBox14
			{-0.21, -0.15, 0, -0.1675, 0.0925, 0.0625}, -- NodeBox15
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.21, -0.5, -0.125, 0.2725, 0.125, 0.1875 }
	}
})
minetest.register_node("tutorial:trophy_year2", {
    description = "Two Year Trophy",
	tiles = {
		"tutorial_trophy_year2.png"
	},
    groups = { snappy=3 },
    drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.1875, -0.4375, 0.1875}, -- NodeBox1
			{-0.0625, -0.4375, -0.0625, 0.125, -0.375, 0.125}, -- NodeBox2
			{-0.02, -0.375, -0.02, 0.0825, -0.1875, 0.0825}, -- NodeBox3
			{-0.0625, -0.1875, -0.0625, 0.125, -0.125, 0.125}, -- NodeBox4
			{-0.125, -0.1875, -0.0625, -0.0625, 0.125, 0.125}, -- NodeBox5
			{0.125, -0.1875, -0.0625, 0.1875, 0.125, 0.125}, -- NodeBox6
			{-0.125, -0.1875, 0.125, 0.1875, 0.125, 0.1875}, -- NodeBox7
			{-0.125, -0.1875, -0.125, 0.1875, 0.125, -0.0625}, -- NodeBox8
			{-0.0625, -0.25, -0.0625, 0.125, -0.1875, 0.125}, -- NodeBox9
			{0.1875, 0.05, 0, 0.23, 0.0925, 0.0625}, -- NodeBox10
			{0.1875, -0.15, 0, 0.23, -0.11, 0.0625}, -- NodeBox11
			{0.23, -0.15, 0, 0.2725, 0.0925, 0.0625}, -- NodeBox12
			{-0.1675, -0.15, 0, -0.125, -0.11, 0.0625}, -- NodeBox13
			{-0.1675, 0.05, 0, -0.125, 0.0925, 0.0625}, -- NodeBox14
			{-0.21, -0.15, 0, -0.1675, 0.0925, 0.0625}, -- NodeBox15
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.21, -0.5, -0.125, 0.2725, 0.125, 0.1875 }
	}
})
minetest.register_node("tutorial:trophy_year3", {
    description = "Three Year Trophy",
	tiles = {
		"tutorial_trophy_year3.png"
	},
    groups = { snappy=3 },
    drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.1875, -0.4375, 0.1875}, -- NodeBox1
			{-0.0625, -0.4375, -0.0625, 0.125, -0.375, 0.125}, -- NodeBox2
			{-0.02, -0.375, -0.02, 0.0825, -0.1875, 0.0825}, -- NodeBox3
			{-0.0625, -0.1875, -0.0625, 0.125, -0.125, 0.125}, -- NodeBox4
			{-0.125, -0.1875, -0.0625, -0.0625, 0.125, 0.125}, -- NodeBox5
			{0.125, -0.1875, -0.0625, 0.1875, 0.125, 0.125}, -- NodeBox6
			{-0.125, -0.1875, 0.125, 0.1875, 0.125, 0.1875}, -- NodeBox7
			{-0.125, -0.1875, -0.125, 0.1875, 0.125, -0.0625}, -- NodeBox8
			{-0.0625, -0.25, -0.0625, 0.125, -0.1875, 0.125}, -- NodeBox9
			{0.1875, 0.05, 0, 0.23, 0.0925, 0.0625}, -- NodeBox10
			{0.1875, -0.15, 0, 0.23, -0.11, 0.0625}, -- NodeBox11
			{0.23, -0.15, 0, 0.2725, 0.0925, 0.0625}, -- NodeBox12
			{-0.1675, -0.15, 0, -0.125, -0.11, 0.0625}, -- NodeBox13
			{-0.1675, 0.05, 0, -0.125, 0.0925, 0.0625}, -- NodeBox14
			{-0.21, -0.15, 0, -0.1675, 0.0925, 0.0625}, -- NodeBox15
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.21, -0.5, -0.125, 0.2725, 0.125, 0.1875 }
	}
})
minetest.register_node("tutorial:trophy_year4", {
    description = "Four Year Trophy",
	tiles = {
		"tutorial_trophy_year4.png"
	},
    groups = { snappy=3 },
    drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.1875, -0.4375, 0.1875}, -- NodeBox1
			{-0.0625, -0.4375, -0.0625, 0.125, -0.375, 0.125}, -- NodeBox2
			{-0.02, -0.375, -0.02, 0.0825, -0.1875, 0.0825}, -- NodeBox3
			{-0.0625, -0.1875, -0.0625, 0.125, -0.125, 0.125}, -- NodeBox4
			{-0.125, -0.1875, -0.0625, -0.0625, 0.125, 0.125}, -- NodeBox5
			{0.125, -0.1875, -0.0625, 0.1875, 0.125, 0.125}, -- NodeBox6
			{-0.125, -0.1875, 0.125, 0.1875, 0.125, 0.1875}, -- NodeBox7
			{-0.125, -0.1875, -0.125, 0.1875, 0.125, -0.0625}, -- NodeBox8
			{-0.0625, -0.25, -0.0625, 0.125, -0.1875, 0.125}, -- NodeBox9
			{0.1875, 0.05, 0, 0.23, 0.0925, 0.0625}, -- NodeBox10
			{0.1875, -0.15, 0, 0.23, -0.11, 0.0625}, -- NodeBox11
			{0.23, -0.15, 0, 0.2725, 0.0925, 0.0625}, -- NodeBox12
			{-0.1675, -0.15, 0, -0.125, -0.11, 0.0625}, -- NodeBox13
			{-0.1675, 0.05, 0, -0.125, 0.0925, 0.0625}, -- NodeBox14
			{-0.21, -0.15, 0, -0.1675, 0.0925, 0.0625}, -- NodeBox15
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.21, -0.5, -0.125, 0.2725, 0.125, 0.1875 }
	}
})
minetest.register_node("tutorial:trophy_year5", {
    description = "Five Year Trophy",
	tiles = {
		"tutorial_trophy_year5.png"
	},
    groups = { snappy=3 },
    drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.1875, -0.4375, 0.1875}, -- NodeBox1
			{-0.0625, -0.4375, -0.0625, 0.125, -0.375, 0.125}, -- NodeBox2
			{-0.02, -0.375, -0.02, 0.0825, -0.1875, 0.0825}, -- NodeBox3
			{-0.0625, -0.1875, -0.0625, 0.125, -0.125, 0.125}, -- NodeBox4
			{-0.125, -0.1875, -0.0625, -0.0625, 0.125, 0.125}, -- NodeBox5
			{0.125, -0.1875, -0.0625, 0.1875, 0.125, 0.125}, -- NodeBox6
			{-0.125, -0.1875, 0.125, 0.1875, 0.125, 0.1875}, -- NodeBox7
			{-0.125, -0.1875, -0.125, 0.1875, 0.125, -0.0625}, -- NodeBox8
			{-0.0625, -0.25, -0.0625, 0.125, -0.1875, 0.125}, -- NodeBox9
			{0.1875, 0.05, 0, 0.23, 0.0925, 0.0625}, -- NodeBox10
			{0.1875, -0.15, 0, 0.23, -0.11, 0.0625}, -- NodeBox11
			{0.23, -0.15, 0, 0.2725, 0.0925, 0.0625}, -- NodeBox12
			{-0.1675, -0.15, 0, -0.125, -0.11, 0.0625}, -- NodeBox13
			{-0.1675, 0.05, 0, -0.125, 0.0925, 0.0625}, -- NodeBox14
			{-0.21, -0.15, 0, -0.1675, 0.0925, 0.0625}, -- NodeBox15
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.21, -0.5, -0.125, 0.2725, 0.125, 0.1875 }
	}
})
minetest.register_node("tutorial:trophy_year6", {
    description = "Six Year Trophy",
	tiles = {
		"tutorial_trophy_year6.png"
	},
    groups = { snappy=3 },
    drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.1875, -0.4375, 0.1875}, -- NodeBox1
			{-0.0625, -0.4375, -0.0625, 0.125, -0.375, 0.125}, -- NodeBox2
			{-0.02, -0.375, -0.02, 0.0825, -0.1875, 0.0825}, -- NodeBox3
			{-0.0625, -0.1875, -0.0625, 0.125, -0.125, 0.125}, -- NodeBox4
			{-0.125, -0.1875, -0.0625, -0.0625, 0.125, 0.125}, -- NodeBox5
			{0.125, -0.1875, -0.0625, 0.1875, 0.125, 0.125}, -- NodeBox6
			{-0.125, -0.1875, 0.125, 0.1875, 0.125, 0.1875}, -- NodeBox7
			{-0.125, -0.1875, -0.125, 0.1875, 0.125, -0.0625}, -- NodeBox8
			{-0.0625, -0.25, -0.0625, 0.125, -0.1875, 0.125}, -- NodeBox9
			{0.1875, 0.05, 0, 0.23, 0.0925, 0.0625}, -- NodeBox10
			{0.1875, -0.15, 0, 0.23, -0.11, 0.0625}, -- NodeBox11
			{0.23, -0.15, 0, 0.2725, 0.0925, 0.0625}, -- NodeBox12
			{-0.1675, -0.15, 0, -0.125, -0.11, 0.0625}, -- NodeBox13
			{-0.1675, 0.05, 0, -0.125, 0.0925, 0.0625}, -- NodeBox14
			{-0.21, -0.15, 0, -0.1675, 0.0925, 0.0625}, -- NodeBox15
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.21, -0.5, -0.125, 0.2725, 0.125, 0.1875 }
	}
})
minetest.register_node("tutorial:trophy_year7", {
    description = "Seven Year Trophy",
	tiles = {
		"tutorial_trophy_year7.png"
	},
    groups = { snappy=3 },
    drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.1875, -0.4375, 0.1875}, -- NodeBox1
			{-0.0625, -0.4375, -0.0625, 0.125, -0.375, 0.125}, -- NodeBox2
			{-0.02, -0.375, -0.02, 0.0825, -0.1875, 0.0825}, -- NodeBox3
			{-0.0625, -0.1875, -0.0625, 0.125, -0.125, 0.125}, -- NodeBox4
			{-0.125, -0.1875, -0.0625, -0.0625, 0.125, 0.125}, -- NodeBox5
			{0.125, -0.1875, -0.0625, 0.1875, 0.125, 0.125}, -- NodeBox6
			{-0.125, -0.1875, 0.125, 0.1875, 0.125, 0.1875}, -- NodeBox7
			{-0.125, -0.1875, -0.125, 0.1875, 0.125, -0.0625}, -- NodeBox8
			{-0.0625, -0.25, -0.0625, 0.125, -0.1875, 0.125}, -- NodeBox9
			{0.1875, 0.05, 0, 0.23, 0.0925, 0.0625}, -- NodeBox10
			{0.1875, -0.15, 0, 0.23, -0.11, 0.0625}, -- NodeBox11
			{0.23, -0.15, 0, 0.2725, 0.0925, 0.0625}, -- NodeBox12
			{-0.1675, -0.15, 0, -0.125, -0.11, 0.0625}, -- NodeBox13
			{-0.1675, 0.05, 0, -0.125, 0.0925, 0.0625}, -- NodeBox14
			{-0.21, -0.15, 0, -0.1675, 0.0925, 0.0625}, -- NodeBox15
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.21, -0.5, -0.125, 0.2725, 0.125, 0.1875 }
	}
})
minetest.register_node("tutorial:trophy_year8", {
    description = "Eight Year Trophy",
	tiles = {
		"tutorial_trophy_year8.png"
	},
    groups = { snappy=3 },
    drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.1875, -0.4375, 0.1875}, -- NodeBox1
			{-0.0625, -0.4375, -0.0625, 0.125, -0.375, 0.125}, -- NodeBox2
			{-0.02, -0.375, -0.02, 0.0825, -0.1875, 0.0825}, -- NodeBox3
			{-0.0625, -0.1875, -0.0625, 0.125, -0.125, 0.125}, -- NodeBox4
			{-0.125, -0.1875, -0.0625, -0.0625, 0.125, 0.125}, -- NodeBox5
			{0.125, -0.1875, -0.0625, 0.1875, 0.125, 0.125}, -- NodeBox6
			{-0.125, -0.1875, 0.125, 0.1875, 0.125, 0.1875}, -- NodeBox7
			{-0.125, -0.1875, -0.125, 0.1875, 0.125, -0.0625}, -- NodeBox8
			{-0.0625, -0.25, -0.0625, 0.125, -0.1875, 0.125}, -- NodeBox9
			{0.1875, 0.05, 0, 0.23, 0.0925, 0.0625}, -- NodeBox10
			{0.1875, -0.15, 0, 0.23, -0.11, 0.0625}, -- NodeBox11
			{0.23, -0.15, 0, 0.2725, 0.0925, 0.0625}, -- NodeBox12
			{-0.1675, -0.15, 0, -0.125, -0.11, 0.0625}, -- NodeBox13
			{-0.1675, 0.05, 0, -0.125, 0.0925, 0.0625}, -- NodeBox14
			{-0.21, -0.15, 0, -0.1675, 0.0925, 0.0625}, -- NodeBox15
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.21, -0.5, -0.125, 0.2725, 0.125, 0.1875 }
	}
})
minetest.register_node("tutorial:trophy_year9", {
    description = "Nine Year Trophy",
	tiles = {
		"tutorial_trophy_year9.png"
	},
    groups = { snappy=3 },
    drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.1875, -0.4375, 0.1875}, -- NodeBox1
			{-0.0625, -0.4375, -0.0625, 0.125, -0.375, 0.125}, -- NodeBox2
			{-0.02, -0.375, -0.02, 0.0825, -0.1875, 0.0825}, -- NodeBox3
			{-0.0625, -0.1875, -0.0625, 0.125, -0.125, 0.125}, -- NodeBox4
			{-0.125, -0.1875, -0.0625, -0.0625, 0.125, 0.125}, -- NodeBox5
			{0.125, -0.1875, -0.0625, 0.1875, 0.125, 0.125}, -- NodeBox6
			{-0.125, -0.1875, 0.125, 0.1875, 0.125, 0.1875}, -- NodeBox7
			{-0.125, -0.1875, -0.125, 0.1875, 0.125, -0.0625}, -- NodeBox8
			{-0.0625, -0.25, -0.0625, 0.125, -0.1875, 0.125}, -- NodeBox9
			{0.1875, 0.05, 0, 0.23, 0.0925, 0.0625}, -- NodeBox10
			{0.1875, -0.15, 0, 0.23, -0.11, 0.0625}, -- NodeBox11
			{0.23, -0.15, 0, 0.2725, 0.0925, 0.0625}, -- NodeBox12
			{-0.1675, -0.15, 0, -0.125, -0.11, 0.0625}, -- NodeBox13
			{-0.1675, 0.05, 0, -0.125, 0.0925, 0.0625}, -- NodeBox14
			{-0.21, -0.15, 0, -0.1675, 0.0925, 0.0625}, -- NodeBox15
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.21, -0.5, -0.125, 0.2725, 0.125, 0.1875 }
	}
})
minetest.register_craft({
    output = 'tutorial:legendstick9',
    recipe = {
        {'tutorial:legendball_8_8_8', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_8_8_8'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendstick8', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:legendball_8_8_8', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_8_8_8'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendstick8',
    recipe = {
        {'tutorial:legendball_7_7_7', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_7_7_7'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendstick7', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:legendball_7_7_7', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_7_7_7'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendstick7',
    recipe = {
        {'tutorial:legendball_6_6_6', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_6_6_6'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendstick6', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:legendball_6_6_6', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_6_6_6'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendstick6',
    recipe = {
        {'tutorial:legendball_6_6_6', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_6_6_6'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendstick5', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:legendball_6_6_6', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_6_6_6'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendstick5',
    recipe = {
        {'tutorial:legendball_5_5_5', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_5_5_5'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendstick4', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:legendball_5_5_5', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_5_5_5'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendstick4',
    recipe = {
        {'tutorial:legendball_4_4_4', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_4_4_4'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendstick3', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:legendball_4_4_4', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_4_4_4'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendstick3',
    recipe = {
        {'tutorial:legendball_3_3_3', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_3_3_3'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendstick2', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:legendball_3_3_3', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_3_3_3'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendstick2',
    recipe = {
        {'tutorial:legendball_2_2_2', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_2_2_2'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendstick1', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:legendball_2_2_2', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_2_2_2'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendstick1',
    recipe = {
        {'tutorial:legendball_1_1_1', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_1_1_1'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendstick', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		{'tutorial:legendball_1_1_1', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder', 'tutorial:legendball_1_1_1'},
    }
})
minetest.register_entity("tutorial:legendballadmin", {
	visual = "mesh",
	visual_size = {x=5, y=5},
	mesh = "tutorial_fireball.x",
	textures = {"tutorial_adminball.png"},
	velocity = 5,
	light_source = 12,
	on_step = function(self, dtime)
			local pos = self.object:get_pos()
			if minetest.get_node(self.object:get_pos()).name ~= "air" then
                local node = minetest.get_node(self.object:get_pos())
				self.hit_node(self, pos, node)
				self.object:remove()
				return
			end
			pos.y = pos.y-1
			for _,player in pairs(minetest.get_objects_inside_radius(pos, 1)) do
				if player:is_player() then
					self.hit_player(self, player)
					self.object:remove()
					return
				end
			end
		end,
	hit_player = function(self, player)
		local hp = player:get_hp()
		player:set_hp(0)
		local s = player:get_pos()
		local p = player:get_look_dir()
		local vec = {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z}
		local pos = player:get_pos()
		for dx=0,1 do
			for dy=0,1 do
				for dz=0,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.get_node(p).name
					if (n == "air") then
						minetest.add_node(p, {name="tutorial:legend_thunderadmin"})
					end
				end
			end
		end
	end,
	hit_node = function(self, pos, node)
		for dx=-1,1 do
			for dy=-2,1 do
				for dz=-1,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.get_node(p).name
					if (n == "air") then
						minetest.add_node(p, {name="tutorial:legend_thunderadmin"})
					end
				end
			end
		end
	end
})
minetest.register_tool("tutorial:legendball_admin", {
	description = "Admin Legend Ball",
	inventory_image = "tutorial_legendball.png",
    groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local inv = placer:get_inventory()
			local playerpos = placer:get_pos();
			local obj = minetest.add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendballadmin")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			if not minetest.is_creative_enabled(placer:get_player_name()) then
                itemstack:take_item()
            end
			obj:set_velocity(vec)
		return itemstack
	end,
	light_source = 12,
})
minetest.register_node("tutorial:legend_thunderadmin", {
	description = "Admin Legend Thunder",
	drawtype = "plantlike",
	tiles = {{
		name="tutorial_legend_thunderadmin.png",
	}},
	light_source = 12,
	walkable = false,
	buildable_to = true,
	damage_per_second = 100,
	drop = {},
	groups = {dig_immediate=3},
})
minetest.register_abm({
	nodenames = {"tutorial:legend_thunderadmin"},
	interval = 30,
	chance = 1,
	action = function(pos)
		minetest.remove_node(pos)
	end,
})
minetest.register_tool("tutorial:legendstick_admin", {
	description = "Admin Legend Stick",
	inventory_image = "tutorial_legendzauberstabadmin.png",
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:get_pos();
		local obj = minetest.add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendballadmin")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:set_velocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick9", {
	description = "Legend Stick Lv.MAX",
	inventory_image = "tutorial_legendzauberstab9.png",
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:get_pos();
		local obj = minetest.add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_8_8_8")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:set_velocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick8", {
	description = "Legend Stick Lv.8",
	inventory_image = "tutorial_legendzauberstab8.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:get_pos();
		local obj = minetest.add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_7_7_7")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:set_velocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick7", {
	description = "Legend Stick Lv.7",
	inventory_image = "tutorial_legendzauberstab7.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:get_pos();
		local obj = minetest.add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_6_6_6")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:set_velocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick6", {
	description = "Legend Stick Lv.6",
	inventory_image = "tutorial_legendzauberstab6.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:get_pos();
		local obj = minetest.add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_5_5_6")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:set_velocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick5", {
	description = "Legend Stick Lv.5",
	inventory_image = "tutorial_legendzauberstab5.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:get_pos();
		local obj = minetest.add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_4_4_5")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:set_velocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick4", {
	description = "Legend Stick Lv.4",
	inventory_image = "tutorial_legendzauberstab4.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:get_pos();
		local obj = minetest.add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_3_4_4")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:set_velocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick3", {
	description = "Legend Stick Lv.3",
	inventory_image = "tutorial_legendzauberstab3.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:get_pos();
		local obj = minetest.add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_2_3_3")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:set_velocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick2", {
	description = "Legend Stick Lv.2",
	inventory_image = "tutorial_legendzauberstab2.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:get_pos();
		local obj = minetest.add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_2_2_2")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:set_velocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick1", {
	description = "Legend Stick Lv.1",
	inventory_image = "tutorial_legendzauberstab1.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:get_pos();
		local obj = minetest.add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_1_1_1")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:set_velocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick", {
	description = "Legend Stick",
	inventory_image = "tutorial_legendzauberstab.png",
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 12,
})
minetest.register_craftitem("tutorial:protection_schluessel1", {
	description = "Protection Key Lv.1",
	inventory_image = "tutorial_protection_schluessel1.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:protection_schluessel2", {
	description = "Protection Key Lv.2",
	inventory_image = "tutorial_protection_schluessel2.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:protection_schluessel3", {
	description = "Protection Key Lv.MAX",
	inventory_image = "tutorial_protection_schluessel3.png",
})
minetest.register_craft({
    output = 'tutorial:protection_schluessel2',
    recipe = {
        {'tutorial:lila_erz3', 'tutorial:lila_erz3', 'tutorial:lila_erz3'},
		{'tutorial:lila_erz3', 'tutorial:protection_schluessel1', 'tutorial:lila_erz3'},
		{'tutorial:lila_erz3', 'tutorial:lila_erz3', 'tutorial:lila_erz3'},
    }
})
minetest.register_craft({
    output = 'tutorial:protection_schluessel3',
    recipe = {
        {'tutorial:lila_erz3', 'tutorial:lila_erz3', 'tutorial:lila_erz3'},
		{'tutorial:lila_erz3', 'tutorial:protection_schluessel2', 'tutorial:lila_erz3'},
		{'tutorial:lila_erz3', 'tutorial:lila_erz3', 'tutorial:lila_erz3'},
    }
})


minetest.register_craftitem("tutorial:big_dna_string", {
	description = "Large DNA String",
	inventory_image = "tutorial_big_dna_string.png",
    groups = {regnum_dna=1},
})
minetest.register_craftitem("tutorial:red_tear", {
	description = "Red Tear",
	inventory_image = "tutorial_red_tear.png",
    groups = {regnum_tear=1},
})
minetest.register_craftitem("tutorial:blue_tear", {
	description = "Blue Tear",
	inventory_image = "tutorial_blue_tear.png",
    groups = {regnum_tear=1},
})
minetest.register_craftitem("tutorial:cyan_tear", {
	description = "Cyan Tear",
	inventory_image = "tutorial_cyan_tear.png",
    groups = {regnum_tear=1},
})
minetest.register_craftitem("tutorial:purple_tear", {
	description = "Purple Tear",
	inventory_image = "tutorial_purple_tear.png",
    groups = {regnum_tear=1},
})
minetest.register_craftitem("tutorial:green_tear", {
	description = "Green Tear",
	inventory_image = "tutorial_green_tear.png",
    groups = {regnum_tear=1},
})
minetest.register_craftitem("tutorial:yellow_tear", {
	description = "Yellow Tear",
	inventory_image = "tutorial_yellow_tear.png",
    groups = {regnum_tear=1},
})
minetest.register_craft({
    output = 'tutorial:big_dna_string',
    recipe = {
        {'', '', '', '', ''},
        {'', '', '', '', ''},
		{'tutorial:dna_string', 'tutorial:dna_string', 'tutorial:dna_string', 'tutorial:dna_string', 'tutorial:dna_string'},
        {'', '', '', '', ''},
        {'', '', '', '', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:lightstone',
    recipe = {
        {'', 'default:cobble', ''},
		{'default:cobble', 'default:coal_lump', 'default:cobble'},
		{'', 'default:cobble', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:cooking_schluessel1',
    recipe = {
        {'', '', 'tutorial:coin_cyan', '', ''},
		{'', 'tutorial:coin_cyan', '', 'tutorial:coin_cyan', ''},
		{'', '', 'tutorial:coin_cyan', '', ''},
		{'', '', 'tutorial:coin_cyan', '', ''},
		{'', '', 'tutorial:coin_cyan', '', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:cooking_schluessel1',
    recipe = {
        {'', '', 'tutorial:coin_cyan', '', ''},
		{'', 'tutorial:coin_cyan', '', 'tutorial:coin_cyan', ''},
		{'', '', 'tutorial:coin_cyan', '', ''},
		{'', '', 'tutorial:coin_cyan', '', ''},
		{'', '', 'tutorial:coin_cyan', '', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:cooking_schluessel2',
    recipe = {
        {'tutorial:coin_cyan', 'tutorial:coin_cyan', 'tutorial:coin_cyan'},
		{'tutorial:coin_cyan', 'tutorial:cooking_schluessel1', 'tutorial:coin_cyan'},
		{'tutorial:coin_cyan', 'tutorial:coin_cyan', 'tutorial:coin_cyan'},
    }
})
minetest.register_craft({
    output = 'tutorial:cooking_schluessel3',
    recipe = {
        {'tutorial:coin_cyan', 'tutorial:coin_cyan', 'tutorial:coin_cyan'},
		{'tutorial:coin_cyan', 'tutorial:cooking_schluessel2', 'tutorial:coin_cyan'},
		{'tutorial:coin_cyan', 'tutorial:coin_cyan', 'tutorial:coin_cyan'},
    }
})
minetest.register_craft({
    output = 'tutorial:cooking_schluessel4',
    recipe = {
        {'tutorial:coin_cyan', 'tutorial:coin_cyan', 'tutorial:coin_cyan'},
		{'tutorial:coin_cyan', 'tutorial:cooking_schluessel3', 'tutorial:coin_cyan'},
		{'tutorial:coin_cyan', 'tutorial:coin_cyan', 'tutorial:coin_cyan'},
    }
})

minetest.register_craftitem("tutorial:coin_cyan", {
    description = "Cyan Coin",
	inventory_image = "tutorial_coin_cyan.png",
    stack_max = 9999,
})
minetest.register_node("tutorial:bottle_crystal", {
	description = "Crystal Bottle",
	drawtype = "plantlike",
	tiles = {"tutorial_bottle_crystal.png"},
	wield_image = "tutorial_bottle_crystal.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
    on_place = function(itemstack, placer, pointed_thing)
        minetest.add_entity(pointed_thing.above, "experience:orb_cyan")
        if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
        return itemstack
    end,
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})
for i = 1, 25, 1 do
    minetest.register_node("tutorial:level"..i.."_cyan",{
	    tiles  = {"tutorial_level"..i..".png^tutorial_level_cyan.png"},
	    description = "Cyan Level Block Lv."..i,
	    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,not_in_creative_inventory=1},
    })
end
minetest.register_node("tutorial:levelMAX_cyan",{
	tiles  = {"tutorial_levelMAX.png^tutorial_level_cyan.png"},
	description = "Cyan Level Block Lv.MAX",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_on_joinplayer(function(player)
    local override_table = player:get_physics_override()
    override_table.new_move = false
    override_table.sneak_glitch = true
    player:set_physics_override(override_table)
    local player_inv = player:get_inventory()
    player_inv:set_stack("crtime", 1, nil)
end)
minetest.register_craftitem("tutorial:cooking_schluessel1", {
	description = "Cooking Key Lv.1",
	inventory_image = "tutorial_cooking_schluessel1.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:cooking_schluessel2", {
	description = "Cooking Key Lv.2",
	inventory_image = "tutorial_cooking_schluessel2.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:cooking_schluessel3", {
	description = "Cooking Key Lv.3",
	inventory_image = "tutorial_cooking_schluessel3.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:cooking_schluessel4", {
	description = "Cooking Key Lv.MAX",
	inventory_image = "tutorial_cooking_schluessel4.png",
})
minetest.register_craftitem("tutorial:golden_schluessel", {
	description = "Golden Key",
	inventory_image = "tutorial_golden_schluessel.png",
})
minetest.register_craftitem("tutorial:crystal_schluessel", {
	description = "Crystal Key",
	inventory_image = "tutorial_crystal_schluessel.png",
})
minetest.register_craftitem("tutorial:medallion", {
	description = "Medallion Piece",
	inventory_image = "tutorial_medallion.png",
    groups = {not_in_creative_inventory=1},
    stack_max = 999,
})
minetest.register_craftitem("tutorial:knight_schluessel", {
	description = "Knight Key",
	inventory_image = "tutorial_knight_schluessel.png",
})

minetest.register_craftitem("tutorial:tortoise_schluessel", {
	description = "Tortoise Key",
	inventory_image = "tutorial_tortoise_schluessel.png",
})

local timer = 0
local oldpos = {}
local newpos = {}


function set_new_hp(player)
    local stack = player:get_inventory():get_stack("armor", 6)
    player:get_meta():set_string("hpnum", player:get_hp())
    local new_max_hp = 20
    for i=1,20 do
        if stack:get_name() == "tutorial:heart_mega"..i then
            new_max_hp = 20+i
        end
    end
    for i=1,25 do
        if stack:get_name() == "tutorial:cloudheart_mega"..i then
            new_max_hp = 40+i
        end
    end
    for i=1,4 do
        if stack:get_name() == "tutorial:superheart"..i then
            new_max_hp = 65+i
        end
    end
    for i=1,2 do
        if stack:get_name() == "tutorial:uraniumheart"..i then
            new_max_hp = 69+i
        end
    end
    if stack:get_name() == "tutorial:adminheart" then
        new_max_hp = 1000
        player:set_properties({hp_max = new_max_hp})
        player:set_hp(1000)
    end
    if player:get_properties().hp_max > new_max_hp and player:get_hp() > new_max_hp then
        player:set_hp(new_max_hp)
    end
    player:set_properties({hp_max = new_max_hp})
    return new_max_hp
end

minetest.register_globalstep(function(dtime)
	timer = timer + dtime
	local k = 0
	local players = minetest.get_connected_players()
	if (timer >= 1) then
		local players = minetest.get_connected_players()
		for _,player in ipairs(players) do
			local player_inv = player:get_inventory()
			player_inv:set_size("year", 9)
			if player_inv:room_for_item("main", "tutorial:trophy_year9") and player_inv:get_stack("year", 9):get_count() == 0 then
				player_inv:add_item("main", "tutorial:trophy_year9")
				player_inv:set_stack("year", 9, "default:dirt")
			end
            set_new_hp(player)
            local g1 = player_inv:get_stack("gem", 1):get_name()
            local g2 = player_inv:get_stack("gem", 2):get_name()
            local g3 = player_inv:get_stack("gem", 3):get_name()
            local g4 = player_inv:get_stack("gem", 4):get_name()
            local g5 = player_inv:get_stack("gem", 5):get_name()
            local g21 = player_inv:get_stack("2gem", 1):get_name()
            local g22 = player_inv:get_stack("2gem", 2):get_name()
            local g23 = player_inv:get_stack("2gem", 3):get_name()
            local g24 = player_inv:get_stack("2gem", 4):get_name()
            local g25 = player_inv:get_stack("2gem", 5):get_name()
            local player_name = player:get_player_name()
            local punched_player_privs = minetest.get_player_privs(player_name)
            if g1 == "tutorial:magic_gem1" and g2 == "tutorial:magic_gem2" and g3 == "tutorial:magic_gem3" and g4 == "tutorial:magic_gem4" and g5 == "tutorial:magic_gem5" then
                if punched_player_privs["interact"] and punched_player_privs["shout"] then
                    punched_player_privs["home"] = true
                end
            end
            if g21 == "tutorial:magic_gem1" and g22 == "tutorial:magic_gem2" and g23 == "tutorial:magic_gem3" and g24 == "tutorial:magic_gem4" and g25 == "tutorial:magic_gem5" then
                if punched_player_privs["interact"] and punched_player_privs["shout"] then
                    punched_player_privs["fast"] = true
                end
            end
            minetest.set_player_privs(player_name, punched_player_privs)
            local rank_order = {"[Admin]", "[Moderator]", "[Member]", "[Outsider]"}
            local ranks = {
                ["[Admin]"] = {"privs"},
                ["[Moderator]"] = {"shout", "ban", "kick", "interact", "basic_privs", "settime"},
                ["[Member]"] = {"interact", "shout"},
                ["[Outsider]"] = {},
            }
            local num_ach = 0
            for i=1, 54 do
                local a = player_inv:get_stack("a"..i, 1):get_count()
                if a == 1 then
                    num_ach = num_ach+1
                end
            end
        
            local player_rank = "[Outsider]"
            for _, rank in ipairs(rank_order) do
                local privs = ranks[rank]
                local has_all_privs = true
                for _, priv in ipairs(privs) do
                    if not punched_player_privs[priv] then
                        has_all_privs = false
                        break
                    end
                end
                if has_all_privs then
                    player_rank = rank
                    break
                end
            end
            local suffix = ""
            local bcolor = {a = 0, r = 0, g = 0, b = 0}
            if num_ach > 49 then
                suffix = "[★★]"
            elseif num_ach > 24 then
                suffix = "[★]"
            end
            
            if player_rank == "[Admin]" then
                player:set_nametag_attributes({bgcolor = bcolor, color = {a = 255, r = 255, g = 0, b = 255}, text = "[Admin]"..player:get_player_name()..suffix})
            elseif player_rank == "[Moderator]" then
                player:set_nametag_attributes({bgcolor = bcolor, color = {a = 255, r = 0, g = 255, b = 0}, text = "[Moderator]"..player:get_player_name()..suffix})
            elseif player_rank == "[Member]" then
                player:set_nametag_attributes({bgcolor = bcolor, color = {a = 255, r = 255, g = 255, b = 255}, text = "[Member]"..player:get_player_name()..suffix})
            else
                player:set_nametag_attributes({bgcolor = bcolor, color = {a = 255, r = 255, g = 0, b = 0}, text = "[Outsider]"..player:get_player_name()..suffix})
            end
			if (oldpos[player:get_player_name()] ~= nil) then
				local playername = player:get_player_name()
				local pos = player:get_pos()
                local player_inv = player:get_inventory()
                player_inv:set_size("mov", 1)
                player_inv:set_size("mov2", 1)
                local count = player_inv:get_stack("mov", 1):get_count()
                player_inv:set_stack("mov", 1 , "default:dirt "..count+math.sqrt(math.pow(oldpos[playername].x - pos.x, 2) + math.pow(oldpos[playername].y - pos.y, 2) + math.pow(oldpos[playername].z - pos.z,2)))
                local count = player_inv:get_stack("mov", 1):get_count()
                local count2 = player_inv:get_stack("mov2", 1):get_count()
                player_inv:set_stack("mov2", 1 , "default:dirt "..count2+math.sqrt(math.pow(oldpos[playername].x - pos.x, 2) + math.pow(oldpos[playername].y - pos.y, 2) + math.pow(oldpos[playername].z - pos.z,2)))
                local count2 = player_inv:get_stack("mov2", 1):get_count()
				if count > 250 then
                    player_inv:set_stack("mov", 1 , "default:dirt")
                    local r = math.random(1, 14)
                    if r == 13 or r == 14 then
                        local r2 = math.random(1, 11)
                        player_inv:set_stack("art13", r2 , "default:dirt")
                    else
                        local r2 = math.random(1, 5)
                        player_inv:set_stack("art"..r, r2 , "default:dirt")
                    end
                    sfinv.set_player_inventory_formspec(player)
                end
                if count2 > 500 then
                    player_inv:set_stack("mov2", 1 , "default:dirt")
                    player_inv:add_item("medall", "tutorial:medallion")
                end
            end
            oldpos[player:get_player_name()] = player:get_pos()
		end
		timer = 0
	end
end)
minetest.register_craftitem("tutorial:gem_fragment2", {
    description = "Tortoise Gem Fragment",
	inventory_image = "tutorial_gem_fragment2.png",
})
minetest.register_node("tutorial:geschenk_tortoise",{
	description = "Tortoise Gift",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_tortoise.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    drop = "default:coal_lump 20",
})
minetest.register_node("tutorial:geschenk_gem2",{
	description = "Tortoise Gem Gift",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_gem2.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    drop = {
		max_items = 1,
		items = {
			{items = {"tutorial:gem_fragment2"},rarity = 2.5},
			{items = {"tutorial:geschenk_legend"},rarity = 5},
			{items = {""},rarity = 2.5},
		}
	}
})


minetest.register_craftitem("tutorial:fox_schluessel", {
	description = "Fox Key",
	inventory_image = "tutorial_fox_schluessel.png",
})
minetest.override_item("default:obsidian", {
	description = "Obsidian Lv.1",
})
minetest.override_item("default:diamondblock", {
	description = "Diamond Block Lv.1",
})
minetest.register_craft({
    output = 'tutorial:wallplacer1',
    recipe = {
        {'', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', ''},
		{'', 'tutorial:coin_gelb', '', 'tutorial:coin_gelb', ''},
		{'', '', 'tutorial:coin_gelb', '', ''},
		{'', '', 'tutorial:coin_gelb', '', ''},
		{'', '', 'tutorial:coin_gelb', '', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer2_1',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer1', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer3_1',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer2_1', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer3_2',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer2_2', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer4_1',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer3_1', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer4_2',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer3_2', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer4_3',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer3_3', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer5_1',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer4_1', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer5_2',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer4_2', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer5_3',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer4_3', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer5_4',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer4_4', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craftitem("tutorial:wallplacer1", {
	description = "Wall Placer Lv.1 (place 3x3 wall)",
	inventory_image = "tutorial_block_placer1.png",
	groups = {not_in_creative_inventory=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer2_2", {
	description = "Wall Placer Lv.2 Mode 2 (place 5x5 wall)",
	inventory_image = "tutorial_block_placer2.png^technic_tool_mode2.png",
    wield_image = "tutorial_block_placer2.png",
	groups = {not_in_creative_inventory=1, not_in_craft_guide=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer2_1", {
	description = "Wall Placer Lv.2 Mode 1 (place 3x3 wall)",
	inventory_image = "tutorial_block_placer2.png^technic_tool_mode1.png",
    wield_image = "tutorial_block_placer2.png",
	groups = {not_in_creative_inventory=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer3_1", {
	description = "Wall Placer Lv.3 Mode 1 (place 3x3 wall)",
	inventory_image = "tutorial_block_placer3.png^technic_tool_mode1.png",
    wield_image = "tutorial_block_placer3.png",
	groups = {not_in_creative_inventory=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer3_2", {
	description = "Wall Placer Lv.3 Mode 2 (place 5x5 wall)",
	inventory_image = "tutorial_block_placer3.png^technic_tool_mode2.png",
    wield_image = "tutorial_block_placer3.png",
	groups = {not_in_creative_inventory=1, not_in_craft_guide=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer3_3", {
	description = "Wall Placer Lv.3 Mode 3 (place 7x7 wall)",
	inventory_image = "tutorial_block_placer3.png^technic_tool_mode3.png",
    wield_image = "tutorial_block_placer3.png",
	groups = {not_in_creative_inventory=1, not_in_craft_guide=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-4), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-4), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-7), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-7), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-4), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-4), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-7), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-7), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer4_1", {
	description = "Wall Placer Lv.4 Mode 1 (place 3x3 wall)",
	inventory_image = "tutorial_block_placer4.png^technic_tool_mode1.png",
    wield_image = "tutorial_block_placer4.png",
	groups = {not_in_creative_inventory=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer4_2", {
	description = "Wall Placer Lv.4 Mode 2 (place 5x5 wall)",
	inventory_image = "tutorial_block_placer4.png^technic_tool_mode2.png",
    wield_image = "tutorial_block_placer4.png",
	groups = {not_in_creative_inventory=1, not_in_craft_guide=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer4_3", {
	description = "Wall Placer Lv.4 Mode 3 (place 7x7 wall)",
	inventory_image = "tutorial_block_placer4.png^technic_tool_mode3.png",
    wield_image = "tutorial_block_placer4.png",
	groups = {not_in_creative_inventory=1, not_in_craft_guide=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-4), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-4), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-7), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-7), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-4), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-4), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-7), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-7), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer4_4", {
	description = "Wall Placer Lv.4 Mode 4 (place 9x9 wall)",
	inventory_image = "tutorial_block_placer4.png^technic_tool_mode4.png",
    wield_image = "tutorial_block_placer4.png",
	groups = {not_in_creative_inventory=1, not_in_craft_guide=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-5)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-5)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-9), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-9), z=pos.z+(j-5)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-5), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-5), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-9), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-9), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer5_1", {
	description = "Wall Placer Lv.MAX Mode 1 (place 3x3 wall)",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode1.png",
    wield_image = "tutorial_block_placer5.png",
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer5_2", {
	description = "Wall Placer Lv.MAX Mode 2 (place 5x5 wall)",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode2.png",
    wield_image = "tutorial_block_placer5.png",
	groups = {not_in_creative_inventory=1, not_in_craft_guide=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer5_3", {
	description = "Wall Placer Lv.MAX Mode 3 (place 7x7 wall)",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode3.png",
    wield_image = "tutorial_block_placer5.png",
	groups = {not_in_creative_inventory=1, not_in_craft_guide=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-4), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-4), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-7), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-7), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-4), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-4), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-7), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-7), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer5_4", {
	description = "Wall Placer Lv.MAX Mode 4 (place 9x9 wall)",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode4.png",
    wield_image = "tutorial_block_placer5.png",
	groups = {not_in_creative_inventory=1, not_in_craft_guide=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-5)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-5)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-9), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-9), z=pos.z+(j-5)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-5), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-5), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-9), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-9), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer5_5", {
	description = "Wall Placer Lv.MAX Mode 5 (place 11x11 wall)",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode5.png",
    wield_image = "tutorial_block_placer5.png",
	groups = {not_in_creative_inventory=1, not_in_craft_guide=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-6), z=pos.z+(j-6)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-6), z=pos.z+(j-6)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-6)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-6)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-11), z=pos.z+(j-6)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-11), z=pos.z+(j-6)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x+(j-6), y=pos.y+(i-6), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-6), y=pos.y+(i-6), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x+(j-6), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-6), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x+(j-6), y=pos.y+(i-11), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-6), y=pos.y+(i-11), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:adminwallplacer_1", {
	description = "Admin Wall Placer Mode 1 (place 3x3 wall)",
	inventory_image = "tutorial_block_placerAdmin.png^technic_tool_mode1.png",
    wield_image = "tutorial_block_placerAdmin.png",
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}, {name=stack:get_name()})
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:adminwallplacer_2", {
	description = "Admin Wall Placer Mode 2 (place 5x5 wall)",
	inventory_image = "tutorial_block_placerAdmin.png^technic_tool_mode2.png",
    wield_image = "tutorial_block_placerAdmin.png",
	groups = {not_in_creative_inventory=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}, {name=stack:get_name()})
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:adminwallplacer_3", {
	description = "Admin Wall Placer Mode 3 (place 7x7 wall)",
	inventory_image = "tutorial_block_placerAdmin.png^technic_tool_mode3.png",
    wield_image = "tutorial_block_placerAdmin.png",
	groups = {not_in_creative_inventory=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-4), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x, y=pos.y+(i-4), z=pos.z+(j-4)}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-4)}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-7), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x, y=pos.y+(i-7), z=pos.z+(j-4)}, {name=stack:get_name()})
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-4), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-4), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-7), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-7), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:adminwallplacer_4", {
	description = "Admin Wall Placer Mode 4 (place 9x9 wall)",
	inventory_image = "tutorial_block_placerAdmin.png^technic_tool_mode4.png",
    wield_image = "tutorial_block_placerAdmin.png",
	groups = {not_in_creative_inventory=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-5)}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-5)}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-9), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x, y=pos.y+(i-9), z=pos.z+(j-5)}, {name=stack:get_name()})
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-5), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-5), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-9), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-9), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:adminwallplacer_5", {
	description = "Admin Wall Placer Mode 5 (place 11x11 wall)",
	inventory_image = "tutorial_block_placerAdmin.png^technic_tool_mode5.png",
    wield_image = "tutorial_block_placerAdmin.png",
	groups = {not_in_creative_inventory=1},
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then
		        if dir.x>0 then
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-6), z=pos.z+(j-6)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x, y=pos.y+(i-6), z=pos.z+(j-6)}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-6)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-6)}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-11), z=pos.z+(j-6)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x, y=pos.y+(i-11), z=pos.z+(j-6)}, {name=stack:get_name()})
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x+(j-6), y=pos.y+(i-6), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-6), y=pos.y+(i-6), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x+(j-6), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-6), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x+(j-6), y=pos.y+(i-11), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    minetest.set_node({x=pos.x+(j-6), y=pos.y+(i-11), z=pos.z}, {name=stack:get_name()})
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})

minetest.register_craft({
    output = 'tutorial:xp_block_yellow 16',
    recipe = {
        {'', '', '', '', ''},
        {'', '', '', '', ''},
		{'tutorial:titan','tutorial:admin','tutorial:regnum','tutorial:admin','tutorial:titan'},
        {'', '', '', '', ''},
        {'', '', '', '', ''},
    }
})
for i = 1, 100, 1 do
    minetest.register_node("tutorial:level"..i.."_gelb",{
	    tiles  = {"tutorial_level"..i..".png^tutorial_level_gelb.png"},
	    description = "Yellow Level Block Lv."..i,
	    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,not_in_creative_inventory=1},
    })
end
minetest.register_craftitem("tutorial:coin_gelb", {
    description = "Yellow Coin",
	inventory_image = "tutorial_coin_gelb.png",
    stack_max = 9999,
})
minetest.register_node("tutorial:levelMAX_gelb",{
	tiles  = {"tutorial_levelMAX.png^tutorial_level_gelb.png"},
	description = "Yellow Level Block Lv.MAX",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:xp_block_yellow",{
	description = "Yellow Xp Block",
	tiles  = {"tutorial_xp_block_yellow.png"},
    drop = '',
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,xpy=1},
})
for i = 0, 127 do
    local XTRAORES_TB = {
	    physical = false,
	    timer = 0,
	    visual = "sprite",
	    visual_size = {x=0.075, y=0.075,},
	    textures = {'tutorial_titanium_shot.png'},
	    lastpos= {},
	    collisionbox = {0, 0, 0, 0, 0, 0},
        metadata = "",
    }
    XTRAORES_TB.on_step = function(self, dtime)
	    self.timer = self.timer + dtime
        local ki = 0
        if i == 0 then
            ki = 1
        elseif i == 122 then
            ki = 122
        elseif i == 123 then
            ki = 150
        elseif i == 124 then
            ki = 122
        elseif i == 125 then
            ki = 150
        elseif i == 126 then
            ki = 500
        elseif i == 127 then
            ki = 500
        else
            ki = i
        end
        local l = 0
        if i == 0 then
            l = 1
        elseif i < 21 then
            l = 2
        elseif i < 46 then
            l = 3
        elseif i < 50 then
            l = 4
        elseif i < 52 then
            l = 5
        elseif i < 64 then
            l = 6
        elseif i < 71 then
            l = 7
        elseif i < 76 then
            l = 8
        elseif i < 101 then
            l = 9
        elseif i < 102 then
            l = 10
        elseif i < 106 then
            l = 11
        elseif i < 116 then
            l = 12
        elseif i < 122 then
            l = 13
        elseif i < 123 then
            l = 14
        elseif i < 124 then
            l = 15
        elseif i < 125 then
            l = 14
        elseif i < 126 then
            l = 15
        elseif i < 128 then
            l = 20
        end
	    local pos = self.object:get_pos()
	    local node = minetest.get_node(pos)
	    if self.timer > 0.08 then
		    local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, l)
		    for k, obj in pairs(objs) do
                local damage = ki
			    if obj:get_luaentity() ~= nil then
					if string.match(obj:get_luaentity().name, "monster") or string.match(obj:get_luaentity().name, "mobs_bat") or string.match(obj:get_luaentity().name, "mobs_birds") or string.match(obj:get_luaentity().name, "mobs_butterfly") or string.match(obj:get_luaentity().name, "mobs_crocs") or string.match(obj:get_luaentity().name, "mobs_fish") or string.match(obj:get_luaentity().name, "mobs_jellyfish") or string.match(obj:get_luaentity().name, "mobs_sharks") or string.match(obj:get_luaentity().name, "mobs_turtles") or string.match(obj:get_luaentity().name, "mummy") then
						if obj:get_luaentity().name ~= "tutorial:tb_"..i and obj:get_luaentity().name ~= "__builtin:item" then
							obj:punch(self.object, 1.0, {full_punch_interval = 1.0, damage_groups= {fleshy = damage}}, nil)
							minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
						end
					end
			    else
				    if obj:is_player() and self.player then
                        if obj:get_player_name() == self.player:get_player_name() then
                        else
                            obj:punch(self.object, 1.0, {full_punch_interval = 1.0, damage_groups= {fleshy = damage}}, nil)
					        minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
                        end
                    else
                        obj:punch(self.object, 1.0, {full_punch_interval = 1.0, damage_groups= {fleshy = damage}}, nil)
					    minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
                    end
			    end
		    end
	    end
	    if self.lastpos.x ~= nil then
		    if minetest.registered_nodes[node.name].walkable then
			    if not minetest.is_creative_enabled("") then
				    minetest.add_item(self.lastpos, "")
			    end
                if i > 126 then
                    if minetest.get_node({x = pos.x, y = pos.y+1, z = pos.z+1}).name == "air" then
                        minetest.set_node({x = pos.x, y = pos.y+1, z = pos.z+1}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x, y = pos.y+1, z = pos.z-1}).name == "air" then
                        minetest.set_node({x = pos.x, y = pos.y+1, z = pos.z-1}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x+1, y = pos.y+1, z = pos.z}).name == "air" then
                        minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x-1, y = pos.y+1, z = pos.z}).name == "air" then
                        minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x+1, y = pos.y+1, z = pos.z+1}).name == "air" then
                        minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z+1}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x+1, y = pos.y+1, z = pos.z-1}).name == "air" then
                        minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z-1}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x-1, y = pos.y+1, z = pos.z+1}).name == "air" then
                        minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z+1}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x-1, y = pos.y+1, z = pos.z-1}).name == "air" then
                        minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z-1}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x, y = pos.y+1, z = pos.z}).name == "air" then
                        minetest.set_node({x = pos.x, y = pos.y+1, z = pos.z}, {name="tutorial:legend_thunderadmin"})
                    end
			        minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
                elseif i > 124 and i ~= 126 then
                    if minetest.get_node({x = pos.x, y = pos.y+1, z = pos.z+1}).name == "air" then
                        minetest.set_node({x = pos.x, y = pos.y+1, z = pos.z+1}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x, y = pos.y+1, z = pos.z-1}).name == "air" then
                        minetest.set_node({x = pos.x, y = pos.y+1, z = pos.z-1}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x+1, y = pos.y+1, z = pos.z}).name == "air" then
                        minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x-1, y = pos.y+1, z = pos.z}).name == "air" then
                        minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x+1, y = pos.y+1, z = pos.z+1}).name == "air" then
                        minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z+1}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x+1, y = pos.y+1, z = pos.z-1}).name == "air" then
                        minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z-1}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x-1, y = pos.y+1, z = pos.z+1}).name == "air" then
                        minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z+1}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x-1, y = pos.y+1, z = pos.z-1}).name == "air" then
                        minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z-1}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x, y = pos.y+1, z = pos.z}).name == "air" then
                        minetest.set_node({x = pos.x, y = pos.y+1, z = pos.z}, {name="tutorial:legend_thunder_8_8"})
                    end
			        minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
                end
			    self.object:remove()
		    end
	    end
	    self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
    end
    minetest.register_entity("tutorial:tb_"..i, XTRAORES_TB)
end
for i = 0, 127 do
    local XTRAORES_TB2 = {
	    physical = false,
	    timer = 0,
	    visual = "sprite",
	    visual_size = {x=0.075, y=0.075,},
	    textures = {'tutorial_titanium_shot.png'},
	    lastpos= {},
	    collisionbox = {0, 0, 0, 0, 0, 0},
        metadata = "",
    }
    XTRAORES_TB2.on_step = function(self, dtime)
	    self.timer = self.timer + dtime
        local ki = 0
        if i == 0 then
            ki = 1
        elseif i == 122 then
            ki = 122
        elseif i == 123 then
            ki = 150
        elseif i == 124 then
            ki = 122
        elseif i == 125 then
            ki = 150
        elseif i == 126 then
            ki = 500
        elseif i == 127 then
            ki = 500
        else
            ki = i
        end
        local l = 0
        if i == 0 then
            l = 1
        elseif i < 21 then
            l = 2
        elseif i < 46 then
            l = 3
        elseif i < 50 then
            l = 4
        elseif i < 52 then
            l = 5
        elseif i < 64 then
            l = 6
        elseif i < 71 then
            l = 7
        elseif i < 76 then
            l = 8
        elseif i < 101 then
            l = 9
        elseif i < 102 then
            l = 10
        elseif i < 106 then
            l = 11
        elseif i < 116 then
            l = 12
        elseif i < 122 then
            l = 13
        elseif i < 123 then
            l = 14
        elseif i < 124 then
            l = 15
        elseif i < 125 then
            l = 14
        elseif i < 126 then
            l = 15
        elseif i < 128 then
            l = 20
        end
	    local pos = self.object:get_pos()
	    local node = minetest.get_node(pos)
	    if self.timer > 0.08 then
		    local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, l)
		    for k, obj in pairs(objs) do
                local damage = ki
			    if obj:get_luaentity() ~= nil then
					if string.match(obj:get_luaentity().name, "monster") or string.match(obj:get_luaentity().name, "mobs_bat") or string.match(obj:get_luaentity().name, "mobs_birds") or string.match(obj:get_luaentity().name, "mobs_butterfly") or string.match(obj:get_luaentity().name, "mobs_crocs") or string.match(obj:get_luaentity().name, "mobs_fish") or string.match(obj:get_luaentity().name, "mobs_jellyfish") or string.match(obj:get_luaentity().name, "mobs_sharks") or string.match(obj:get_luaentity().name, "mobs_turtles") or string.match(obj:get_luaentity().name, "mummy") then
						if obj:get_luaentity().name ~= "tutorial:tb_"..i and obj:get_luaentity().name ~= "__builtin:item" then
							obj:punch(self.object, 1.0, {full_punch_interval = 1.0, damage_groups= {fleshy = damage}}, nil)
							minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
						end
					end
			    end
		    end
	    end
	    if self.lastpos.x ~= nil then
		    if minetest.registered_nodes[node.name].walkable then
			    if not minetest.is_creative_enabled("") then
				    minetest.add_item(self.lastpos, "")
			    end
                if i > 126 then
                    if minetest.get_node({x = pos.x, y = pos.y+1, z = pos.z+1}).name == "air" then
                        minetest.set_node({x = pos.x, y = pos.y+1, z = pos.z+1}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x, y = pos.y+1, z = pos.z-1}).name == "air" then
                        minetest.set_node({x = pos.x, y = pos.y+1, z = pos.z-1}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x+1, y = pos.y+1, z = pos.z}).name == "air" then
                        minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x-1, y = pos.y+1, z = pos.z}).name == "air" then
                        minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x+1, y = pos.y+1, z = pos.z+1}).name == "air" then
                        minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z+1}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x+1, y = pos.y+1, z = pos.z-1}).name == "air" then
                        minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z-1}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x-1, y = pos.y+1, z = pos.z+1}).name == "air" then
                        minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z+1}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x-1, y = pos.y+1, z = pos.z-1}).name == "air" then
                        minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z-1}, {name="tutorial:legend_thunderadmin"})
                    end
                    if minetest.get_node({x = pos.x, y = pos.y+1, z = pos.z}).name == "air" then
                        minetest.set_node({x = pos.x, y = pos.y+1, z = pos.z}, {name="tutorial:legend_thunderadmin"})
                    end
			        minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
                elseif i >= 124 and i ~= 126 then
                    if minetest.get_node({x = pos.x, y = pos.y+1, z = pos.z+1}).name == "air" then
                        minetest.set_node({x = pos.x, y = pos.y+1, z = pos.z+1}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x, y = pos.y+1, z = pos.z-1}).name == "air" then
                        minetest.set_node({x = pos.x, y = pos.y+1, z = pos.z-1}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x+1, y = pos.y+1, z = pos.z}).name == "air" then
                        minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x-1, y = pos.y+1, z = pos.z}).name == "air" then
                        minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x+1, y = pos.y+1, z = pos.z+1}).name == "air" then
                        minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z+1}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x+1, y = pos.y+1, z = pos.z-1}).name == "air" then
                        minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z-1}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x-1, y = pos.y+1, z = pos.z+1}).name == "air" then
                        minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z+1}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x-1, y = pos.y+1, z = pos.z-1}).name == "air" then
                        minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z-1}, {name="tutorial:legend_thunder_8_8"})
                    end
                    if minetest.get_node({x = pos.x, y = pos.y+1, z = pos.z}).name == "air" then
                        minetest.set_node({x = pos.x, y = pos.y+1, z = pos.z}, {name="tutorial:legend_thunder_8_8"})
                    end
			        minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
                end
			    self.object:remove()
		    end
	    end
	    self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
    end
    minetest.register_entity("tutorial:tb2_"..i, XTRAORES_TB2)
end


local guns = {}
table.insert(guns, {0,"tutorial:gun","Gun","tutorial_gun.png"})
for i = 1, 20 do
	table.insert(guns, {i,"tutorial:gun_mega"..i,"Mega Gun Lv."..i,"tutorial_gun_mega"..i..".png"})
end
for i = 1, 25 do
	table.insert(guns, {i+20,"tutorial:cloudgun_mega"..i,"Cloud Gun Lv."..i,"tutorial_cloudgun_mega"..i..".png"})
end
for i = 1, 4 do
	table.insert(guns, {i+45,"tutorial:supergun"..i,"Super Gun Lv."..i,"tutorial_supergun"..i..".png"})
end
for i = 1, 2 do
	table.insert(guns, {i+49,"tutorial:uraniumgun"..i,"Uranium Gun Lv."..i,"tutorial_uraniumgun"..i..".png"})
end
for i = 1, 12 do
	table.insert(guns, {i+51,"tutorial:energygun"..i,"Energy Gun Lv."..i,"tutorial_energygun"..i..".png"})
end
for i = 1, 7 do
	table.insert(guns, {i+63,"tutorial:superenergygun"..i,"Super Energy Gun Lv."..i,"tutorial_superenergygun"..i..".png"})
end
for i = 1, 5 do
	table.insert(guns, {i+70,"tutorial:kristallgun"..i,"Crystal Gun Lv."..i,"tutorial_kristallgun"..i..".png"})
end
for i = 1, 25 do
	table.insert(guns, {i+75,"tutorial:ultragun"..i,"Ultra Gun Lv."..i,"tutorial_ultragun"..i..".png"})
end
table.insert(guns, {101,"tutorial:ultragun","Super Ultra Gun","tutorial_superultragun.png"})
for i = 1, 4 do
	table.insert(guns, {i+101,"tutorial:arenagun"..i,"Arena Gun Lv."..i,"tutorial_arenagun"..i..".png"})
end
for i = 1, 10 do
	table.insert(guns, {i+105,"tutorial:titangun"..i,"Titan Gun Lv."..i,"tutorial_titangun"..i..".png"})
end
for i = 1, 6 do
	table.insert(guns, {i+115,"tutorial:legendengun"..i,"Legendary Gun Lv."..i,"tutorial_legendengun"..i..".png"})
end

for _, m in pairs(guns) do
    minetest.register_tool(m[2], {
	    description = m[3].." Mode 1 (damage to players and no thunder)\nGun-Lv."..m[1],
	    inventory_image = m[4].."^technic_tool_mode1.png",
		wield_image = m[4],
		groups = {not_in_creative_inventory=1},
	    on_use = function(itemstack, user, pointed_thing)
		    local inv = user:get_inventory()
		    local pos = user:get_pos()
		    local dir = user:get_look_dir()
		    local yaw = user:get_look_horizontal()
		    if pos and dir and yaw then
			    pos.y = pos.y + 1.6
			    local obj = minetest.add_entity(pos, "tutorial:tb_"..m[1])
			    if obj then
				    minetest.sound_play("shot", {object=obj})
				    obj:set_velocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				    obj:set_acceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				    obj:set_yaw(yaw + math.pi)
				    local ent = obj:get_luaentity()
				    if ent then
					    ent.player = user
				    end
			    end
		    end
		    return itemstack
	    end,
    })
	minetest.register_tool(m[2].."_2", {
	    description = m[3].." Mode 2 (no damage to players and no thunder)\nGun-Lv."..m[1],
	    inventory_image = m[4].."^technic_tool_mode2.png",
		wield_image = m[4],
		groups = {not_in_creative_inventory=1},
	    on_use = function(itemstack, user, pointed_thing)
		    local inv = user:get_inventory()
		    local pos = user:get_pos()
		    local dir = user:get_look_dir()
		    local yaw = user:get_look_horizontal()
		    if pos and dir and yaw then
			    pos.y = pos.y + 1.6
			    local obj = minetest.add_entity(pos, "tutorial:tb2_"..m[1])
			    if obj then
				    minetest.sound_play("shot", {object=obj})
				    obj:set_velocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				    obj:set_acceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				    obj:set_yaw(yaw + math.pi)
				    local ent = obj:get_luaentity()
				    if ent then
					    ent.player = user
				    end
			    end
		    end
		    return itemstack
	    end,
    })
end
minetest.register_tool("tutorial:superlegendengun1", {
	description = "Super Legendary Gun Mode 1 (damage to players and no thunder)\nGun-Lv.122",
	inventory_image = "tutorial_superlegendengun.png^technic_tool_mode1.png",
    wield_image = "tutorial_superlegendengun.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:get_pos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_horizontal()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb_122")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:set_velocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:set_acceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:set_yaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
})
minetest.register_tool("tutorial:superlegendengun2", {
	description = "Super Legendary Gun Mode 3 (damage to players and thunder)\nGun-Lv.122",
	inventory_image = "tutorial_superlegendengun.png^technic_tool_mode3.png",
    wield_image = "tutorial_superlegendengun.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:get_pos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_horizontal()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb_124")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:set_velocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:set_acceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:set_yaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
})
minetest.register_tool("tutorial:superlegendengun3", {
	description = "Super Legendary Gun Mode 2. (no damage to players and no thunder)\nGun-Lv.122",
	inventory_image = "tutorial_superlegendengun.png^technic_tool_mode2.png",
    wield_image = "tutorial_superlegendengun.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:get_pos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_horizontal()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb2_122")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:set_velocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:set_acceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:set_yaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
})

minetest.register_tool("tutorial:regnumgun1", {
	description = "Regnum Gun Mode 1 (damage to players and no thunder)\nGun-Lv.MAX",
	inventory_image = "tutorial_regnumgun.png^technic_tool_mode1.png",
    wield_image = "tutorial_regnumgun.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:get_pos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_horizontal()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb_123")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:set_velocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:set_acceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:set_yaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
})
minetest.register_tool("tutorial:regnumgun2", {
	description = "Regnum Gun Mode 3 (damage to players and thunder)\nGun-Lv.MAX",
	inventory_image = "tutorial_regnumgun.png^technic_tool_mode3.png",
    wield_image = "tutorial_regnumgun.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:get_pos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_horizontal()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb_125")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:set_velocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:set_acceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:set_yaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
})

minetest.register_tool("tutorial:regnumgun3", {
	description = "Regnum Gun Mode 2 (no damage to players and no thunder)\nGun-Lv.MAX",
	inventory_image = "tutorial_regnumgun.png^technic_tool_mode2.png",
    wield_image = "tutorial_regnumgun.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:get_pos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_horizontal()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb2_123")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:set_velocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:set_acceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:set_yaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
})


minetest.register_tool("tutorial:gun_admin1", {
	description = "Admin Gun Mode 1 (damage to players and no thunder)",
	inventory_image = "tutorial_admingun.png^technic_tool_mode1.png",
    wield_image = "tutorial_admingun.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:get_pos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_horizontal()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb_126")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:set_velocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:set_acceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:set_yaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
})
minetest.register_tool("tutorial:gun_admin2", {
	description = "Admin Gun Mode 3 (damage to players and thunder)",
	inventory_image = "tutorial_admingun.png^technic_tool_mode3.png",
    wield_image = "tutorial_admingun.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:get_pos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_horizontal()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb_127")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:set_velocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:set_acceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:set_yaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
})

minetest.register_tool("tutorial:gun_admin3", {
	description = "Admin Gun Mode 2 (no damage to players and no thunder)",
	inventory_image = "tutorial_admingun.png^technic_tool_mode2.png",
    wield_image = "tutorial_admingun.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:get_pos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_horizontal()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb2_126")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:set_velocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:set_acceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:set_yaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
})

minetest.register_tool("tutorial:adminbattleaxe3", {
	description = "Admin Battleaxe Mode 3 (for hunting mobs)",
	inventory_image = "tutorial_adminbattleaxe.png^technic_tool_mode3.png",
    wield_image = "tutorial_adminbattleaxe.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=15},
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=4000}
	},
	liquids_pointable = false,
})
minetest.register_tool("tutorial:superlegendenbattleaxe3", {
	description = "Super Legendary Battleaxe Mode 3 (for hunting mobs)\nBattleaxe-Lv.122",
	inventory_image = "tutorial_superlegendenbattleaxe.png^technic_tool_mode3.png",
    wield_image = "tutorial_superlegendenbattleaxe.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=15},
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=244}
	},
	liquids_pointable = false,
})
minetest.register_tool("tutorial:regnumbattleaxe3", {
	description = "Regnum Battleaxe Mode 3 (for hunting mobs)\nBattleaxe-Lv.MAX",
	inventory_image = "tutorial_regnumbattleaxe.png^technic_tool_mode3.png",
    wield_image = "tutorial_regnumbattleaxe.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=15},
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=150}
	},
	liquids_pointable = false,
})
minetest.register_craft({
    output = 'tutorial:bottleSS',
    recipe = {
        {'', 'tutorial:admin', ''},
        {'tutorial:admin', 'tutorial:bottleS3', 'tutorial:admin'},
        {'', 'tutorial:admin', ''},
    }
})
minetest.register_node("tutorial:bottleSS", {
	description = "Ultra Magic Bottle",
	drawtype = "plantlike",
	tiles = {"tutorial_bottleSS.png"},
	wield_image = "tutorial_bottleSS.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

local mode_tools = {
	{"tutorial:regnumbattleaxe1","tutorial:regnumbattleaxe2",""},
	{"tutorial:regnumbattleaxe2","tutorial:regnumbattleaxe3",""},
	{"tutorial:regnumbattleaxe3","tutorial:regnumbattleaxe1",""},
	{"tutorial:adminbattleaxe","tutorial:adminbattleaxe2",""},
	{"tutorial:adminbattleaxe2","tutorial:adminbattleaxe3",""},
	{"tutorial:adminbattleaxe3","tutorial:adminbattleaxe",""},
	{"tutorial:superlegendenbattleaxe1","tutorial:superlegendenbattleaxe2",""},
	{"tutorial:superlegendenbattleaxe2","tutorial:superlegendenbattleaxe3",""},
	{"tutorial:superlegendenbattleaxe3","tutorial:superlegendenbattleaxe1",""},
	{"3d_armor:helmet_admin","3d_armor:helmet_admin2",""},
	{"3d_armor:helmet_admin2","3d_armor:helmet_admin3",""},
	{"3d_armor:helmet_admin3","3d_armor:helmet_admin4",""},
	{"3d_armor:helmet_admin4","3d_armor:helmet_admin",""},
	{"3d_armor:chestplate_admin","3d_armor:chestplate_admin2",""},
	{"3d_armor:chestplate_admin2","3d_armor:chestplate_admin3",""},
	{"3d_armor:chestplate_admin3","3d_armor:chestplate_admin4",""},
	{"3d_armor:chestplate_admin4","3d_armor:chestplate_admin",""},
	{"3d_armor:leggings_admin","3d_armor:leggings_admin2",""},
	{"3d_armor:leggings_admin2","3d_armor:leggings_admin3",""},
	{"3d_armor:leggings_admin3","3d_armor:leggings_admin4",""},
	{"3d_armor:leggings_admin4","3d_armor:leggings_admin",""},
	{"3d_armor:boots_admin","3d_armor:boots_admin2",""},
	{"3d_armor:boots_admin2","3d_armor:boots_admin3",""},
	{"3d_armor:boots_admin3","3d_armor:boots_admin4",""},
	{"3d_armor:boots_admin4","3d_armor:boots_admin",""},
	{"shields:shield_admin","shields:shield_admin2",""},
	{"shields:shield_admin2","shields:shield_admin3",""},
	{"shields:shield_admin3","shields:shield_admin4",""},
	{"shields:shield_admin4","shields:shield_admin",""},
	{"tutorial:server_hammer1","tutorial:server_hammer2",""},
	{"tutorial:server_hammer2","tutorial:server_hammer3",""},
	{"tutorial:server_hammer3","tutorial:server_hammer4",""},
    {"tutorial:server_hammer4","tutorial:server_hammer5",""},
    {"tutorial:server_hammer5","tutorial:server_hammer6",""},
	{"tutorial:server_hammer6","tutorial:server_hammer1",""},
	{"tutorial:wallplacer2_1","tutorial:wallplacer2_2",""},
	{"tutorial:wallplacer2_2","tutorial:wallplacer2_1",""},
	{"tutorial:wallplacer3_1","tutorial:wallplacer3_2",""},
	{"tutorial:wallplacer3_2","tutorial:wallplacer3_3",""},
	{"tutorial:wallplacer3_3","tutorial:wallplacer3_1",""},
	{"tutorial:wallplacer4_1","tutorial:wallplacer4_2",""},
	{"tutorial:wallplacer4_2","tutorial:wallplacer4_3",""},
	{"tutorial:wallplacer4_3","tutorial:wallplacer4_4",""},
	{"tutorial:wallplacer4_4","tutorial:wallplacer4_1",""},
	{"tutorial:wallplacer5_1","tutorial:wallplacer5_2",""},
	{"tutorial:wallplacer5_2","tutorial:wallplacer5_3",""},
	{"tutorial:wallplacer5_3","tutorial:wallplacer5_4",""},
	{"tutorial:wallplacer5_4","tutorial:wallplacer5_5",""},
	{"tutorial:wallplacer5_5","tutorial:wallplacer5_1",""},
	{"tutorial:adminwallplacer_1","tutorial:adminwallplacer_2",""},
	{"tutorial:adminwallplacer_2","tutorial:adminwallplacer_3",""},
	{"tutorial:adminwallplacer_3","tutorial:adminwallplacer_4",""},
	{"tutorial:adminwallplacer_4","tutorial:adminwallplacer_5",""},
	{"tutorial:adminwallplacer_5","tutorial:adminwallplacer_1",""},
	{"tutorial:superlegendengun1","tutorial:superlegendengun3",""},
	{"tutorial:superlegendengun2","tutorial:superlegendengun1",""},
	{"tutorial:superlegendengun3","tutorial:superlegendengun2",""},
	{"tutorial:regnumgun1","tutorial:regnumgun3",""},
	{"tutorial:regnumgun2","tutorial:regnumgun1",""},
	{"tutorial:regnumgun3","tutorial:regnumgun2",""},
	{"tutorial:gun_admin1","tutorial:gun_admin3",""},
	{"tutorial:gun_admin2","tutorial:gun_admin1",""},
	{"tutorial:gun_admin3","tutorial:gun_admin2",""},

    
}
for i = 1, 150 do
    table.insert(mode_tools, {"technic:drill_mkS"..i.."_1","technic:drill_mkS"..i.."_2"})
    table.insert(mode_tools, {"technic:drill_mkS"..i.."_2","technic:drill_mkS"..i.."_3"})
    table.insert(mode_tools, {"technic:drill_mkS"..i.."_3","technic:drill_mkS"..i.."_4"})
    table.insert(mode_tools, {"technic:drill_mkS"..i.."_4","technic:drill_mkS"..i.."_5"})
    table.insert(mode_tools, {"technic:drill_mkS"..i.."_5","technic:drill_mkS"..i.."_1"})
end

table.insert(mode_tools, {"technic:mining_drill_mkA1_1","technic:mining_drill_mkA1_2"})
table.insert(mode_tools, {"technic:mining_drill_mkA1_2","technic:mining_drill_mkA1_3"})
table.insert(mode_tools, {"technic:mining_drill_mkA1_3","technic:mining_drill_mkA1_4"})
table.insert(mode_tools, {"technic:mining_drill_mkA1_4","technic:mining_drill_mkA1_5"})
table.insert(mode_tools, {"technic:mining_drill_mkA1_5","technic:mining_drill_mkA1_1"})

table.insert(mode_tools, {"tutorial:gun","tutorial:gun_2",""})
table.insert(mode_tools, {"tutorial:gun_2","tutorial:gun",""})
for i = 1, 20 do
	table.insert(mode_tools, {"tutorial:gun_mega"..i,"tutorial:gun_mega"..i.."_2"})
	table.insert(mode_tools, {"tutorial:gun_mega"..i.."_2","tutorial:gun_mega"..i})
end
for i = 1, 25 do
	table.insert(mode_tools, {"tutorial:cloudgun_mega"..i,"tutorial:cloudgun_mega"..i.."_2"})
	table.insert(mode_tools, {"tutorial:cloudgun_mega"..i.."_2","tutorial:cloudgun_mega"..i})
end
for i = 1, 4 do
	table.insert(mode_tools, {"tutorial:supergun"..i,"tutorial:supergun"..i.."_2"})
	table.insert(mode_tools, {"tutorial:supergun"..i.."_2","tutorial:supergun"..i})
end
for i = 1, 2 do
	table.insert(mode_tools, {"tutorial:uraniumgun"..i,"tutorial:uraniumgun"..i.."_2"})
	table.insert(mode_tools, {"tutorial:uraniumgun"..i.."_2","tutorial:uraniumgun"..i})
end
for i = 1, 12 do
	table.insert(mode_tools, {"tutorial:energygun"..i,"tutorial:energygun"..i.."_2"})
	table.insert(mode_tools, {"tutorial:energygun"..i.."_2","tutorial:energygun"..i})
end
for i = 1, 7 do
	table.insert(mode_tools, {"tutorial:superenergygun"..i,"tutorial:superenergygun"..i.."_2"})
	table.insert(mode_tools, {"tutorial:superenergygun"..i.."_2","tutorial:superenergygun"..i})
end
for i = 1, 5 do
	table.insert(mode_tools, {"tutorial:kristallgun"..i,"tutorial:kristallgun"..i.."_2"})
	table.insert(mode_tools, {"tutorial:kristallgun"..i.."_2","tutorial:kristallgun"..i})
end
for i = 1, 25 do
	table.insert(mode_tools, {"tutorial:ultragun"..i,"tutorial:ultragun"..i.."_2"})
	table.insert(mode_tools, {"tutorial:ultragun"..i.."_2","tutorial:ultragun"..i})
end
table.insert(mode_tools, {"tutorial:ultragun","tutorial:ultragun_2"})
table.insert(mode_tools, {"tutorial:ultragun_2","tutorial:ultragun"})
for i = 1, 4 do
	table.insert(mode_tools, {"tutorial:arenagun"..i,"tutorial:arenagun"..i.."_2"})
	table.insert(mode_tools, {"tutorial:arenagun"..i.."_2","tutorial:arenagun"..i})
end
for i = 1, 10 do
	table.insert(mode_tools, {"tutorial:titangun"..i,"tutorial:titangun"..i.."_2"})
	table.insert(mode_tools, {"tutorial:titangun"..i.."_2","tutorial:titangun"..i})
end
for i = 1, 6 do
	table.insert(mode_tools, {"tutorial:legendengun"..i,"tutorial:legendengun"..i.."_2"})
	table.insert(mode_tools, {"tutorial:legendengun"..i.."_2","tutorial:legendengun"..i})
end

local function get_transformed_item(itemname)
    for _, pair in ipairs(mode_tools) do
        if pair[1] == itemname then
            return pair[2]
        end
    end
    return nil
end
for _, pair in ipairs(mode_tools) do
    local original_item = pair[1]
    local new_item = pair[2]
    
    local old_def = minetest.registered_items[original_item]
    if old_def then
        
        local old_on_place = minetest.registered_items[original_item].on_place
        minetest.override_item(original_item, {
            on_place = function(itemstack, placer, pointed_thing)
                
                if pointed_thing.type == "node" then
                    local node = minetest.get_node(pointed_thing.under)
                    local nodedef = minetest.registered_nodes[node.name]
                    if nodedef and nodedef.on_rightclick then
                        nodedef.on_rightclick(pointed_thing.under, node, placer, itemstack, pointed_thing)
                        return itemstack
                    end
                end
                local transformed = get_transformed_item(itemstack:get_name())
                local ctrl = placer:get_player_control()
                local new_stack = itemstack
                if transformed and ctrl.sneak then
                    new_stack:set_name(transformed)
                    if string.find(itemstack:get_name(), "technic:drill_mkS") or string.find(itemstack:get_name(), "technic:mining_drill_mkA") then
                        local meta = technic.get_stack_meta(itemstack)
                        meta:set_int("mode", tonumber(string.sub(itemstack:get_name(), -1)))
                    end
                elseif old_on_place then
                    new_stack = old_on_place(itemstack, placer, pointed_thing) or itemstack
                end
                return new_stack

            end,
            on_secondary_use = function(itemstack, user)
                
                local transformed = get_transformed_item(itemstack:get_name())
                local ctrl = user:get_player_control()
                if transformed and ctrl.sneak then
                    itemstack:set_name(transformed)
                    if string.find(itemstack:get_name(), "technic:drill_mkS") or string.find(itemstack:get_name(), "technic:mining_drill_mkA") then
                        local meta = technic.get_stack_meta(itemstack)
                        meta:set_int("mode", tonumber(string.sub(itemstack:get_name(), -1)))
                    end
                end
                return itemstack
            end
        })
    end
end
