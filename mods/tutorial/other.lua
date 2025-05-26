minetest.register_abm({
	nodenames = {"tutorial:thunder"},
	interval = 3.0,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.remove_node(pos)
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:stampfi_ei"},
	interval = 2,
	chance = 4,
	action = function(pos)
		minetest.add_node(pos, {name="tutorial:stampfi"})
	end,
})

minetest.register_entity("tutorial:patrone", {
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
		local s = player:get_pos()
		local p = player:get_look_dir()
		local vec = {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z}
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=1000000},
		}, vec)
		local pos = player:get_pos()
		for dx=-1,1 do
			for dy=-1,1 do
				for dz=-1,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.get_node(pos).name
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
						minetest.set_node(p, {name="tutorial:legend_thunderadmin"})
					else
						minetest.remove_node(p)
					end
				end
			end
		end
	end,
	hit_node = function(self, pos, node)
		for dx=-1,1 do
			for dy=-1,1 do
				for dz=-1,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.get_node(pos).name
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
						minetest.set_node(p, {name="tutorial:legend_thunderadmin"})
					else
						minetest.remove_node(p)
					end
				end
			end
		end
	end
})

minetest.register_on_joinplayer(function(player)
    local player_inv = player:get_inventory()
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
    local gg1 = 0
    local gg2 = 0
    local gg3 = 0
    local gg4 = 0
    local gg5 = 0
    local gg21 = 0
    local gg22 = 0
    local gg23 = 0
    local gg24 = 0
    local gg25 = 0
    if g1 == "tutorial:magic_gem1" then
        gg1 = 1
    end
    if g2 == "tutorial:magic_gem2" then
        gg2 = 1
    end
    if g3 == "tutorial:magic_gem3" then
        gg3 = 1
    end
    if g4 == "tutorial:magic_gem4" then
        gg4 = 1
    end
    if g5 == "tutorial:magic_gem5" then
        gg5 = 1
    end
    if g21 == "tutorial:magic_gem1" then
        gg21 = 1
    end
    if g22 == "tutorial:magic_gem2" then
        gg22 = 1
    end
    if g23 == "tutorial:magic_gem3" then
        gg23 = 1
    end
    if g24 == "tutorial:magic_gem4" then
        gg24 = 1
    end
    if g25 == "tutorial:magic_gem5" then
        gg25 = 1
    end
    if gg1 == 1 and gg2 == 1 and gg3 == 1 and gg4 == 1 and gg5 == 1 then
		local punched_player_privs = minetest.get_player_privs(player:get_player_name())
		punched_player_privs["home"] = true
        punched_player_privs["zoom"] = true
		minetest.set_player_privs(player:get_player_name(), punched_player_privs)
    end
    if gg21 == 1 and gg22 == 1 and gg23 == 1 and gg24 == 1 and gg25 == 1 then
        local punched_player_privs = minetest.get_player_privs(player:get_player_name())
		punched_player_privs["fast"] = true
		minetest.set_player_privs(player:get_player_name(), punched_player_privs)
    end
end)

minetest.register_on_player_receive_fields(function(player, formname, fields)
    if fields.rg then
		player:set_inventory_formspec(rg.get_formspec(player))
	end
    if fields.rg1 then
		player:set_inventory_formspec(rg.get_formspec(player))
	end
    if fields.rg2 then
		player:set_inventory_formspec(rg2.get_formspec(player))
	end
    if fields.rg3 then
		player:set_inventory_formspec(rg3.get_formspec(player))
	end
    if fields.rg4 then
		player:set_inventory_formspec(rg4.get_formspec(player))
	end
    if fields.rg5 then
		player:set_inventory_formspec(rg5.get_formspec(player))
	end
    if fields.rg6 then
		player:set_inventory_formspec(rg6.get_formspec(player))
	end
    if fields.rg7 then
		player:set_inventory_formspec(rg7.get_formspec(player))
	end
    if fields.rg8 then
		player:set_inventory_formspec(rg8.get_formspec(player))
	end
    if fields.rg9 then
		player:set_inventory_formspec(rg9.get_formspec(player))
	end
    if fields.rg10 then
		player:set_inventory_formspec(rg10.get_formspec(player))
	end
    if fields.rg11 then
		player:set_inventory_formspec(rg11.get_formspec(player))
	end
    if fields.rg12 then
		player:set_inventory_formspec(rg12.get_formspec(player))
	end
    if fields.rg13 then
		player:set_inventory_formspec(rg13.get_formspec(player))
	end
    if fields.rg14 then
		player:set_inventory_formspec(rg14.get_formspec(player))
	end
    if fields.rg15 then
		player:set_inventory_formspec(rg15.get_formspec(player))
	end
	if fields.rg16 then
		player:set_inventory_formspec(rg16.get_formspec(player))
	end
	if fields.rg17 then
		player:set_inventory_formspec(rg17.get_formspec(player))
	end
end)

for j = 1, 8, 1 do
	for i = 1, 8, 1 do
		minetest.register_node("tutorial:legend_thunder_"..i.."_"..j, {
			description = "Legend thunder: damage lv."..i..",lengh lv."..j,
			drawtype = "plantlike",
			tiles = {{
				name="tutorial_legend_thunder.png",
			}},
			light_source = 12,
			walkable = false,
			buildable_to = true,
			damage_per_second = (i*8),
			drop = {},
			groups = {dig_immediate=3,not_in_creative_inventory=1},
		})
		minetest.register_abm({
			nodenames = {"tutorial:legend_thunder_"..i.."_"..j},
			interval = (j*3),
			chance = 1,
			action = function(pos)
				minetest.remove_node(pos)
			end,
		})
	end
end
for k = 1, 8, 1 do
	for j = 1, 8, 1 do
		for i = 1, 8, 1 do
			minetest.register_entity("tutorial:legendball_"..i.."_"..j.."_"..k, {
				visual = "mesh",
				visual_size = {x=5, y=5},
				mesh = "tutorial_fireball.x",
				textures = {"tutorial_legendball.png"},
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
					if hp > (k*2) then
						player:set_hp(hp-(k*2))
					else
						player:set_hp(0)
					end
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
									minetest.add_node(p, {name="tutorial:legend_thunder_"..i.."_"..j})
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
									minetest.add_node(p, {name="tutorial:legend_thunder_"..i.."_"..j})
								end
							end
						end
					end
				end
			})
			local groups = {}
			if k ~= j or j ~= i or k ~= i then
				groups = {not_in_creative_inventory=1}
			end
			minetest.register_tool("tutorial:legendball_"..i.."_"..j.."_"..k, {
				description = "Legend Ball (ball damage lv."..k..", thunder damage lv."..i..", thunder length lv."..j..")",
				inventory_image = "tutorial_legendball.png",
				groups = groups,
				on_use = function(itemstack, placer, pointed_thing)
						local dir = placer:get_look_dir();
						local inv = placer:get_inventory()
						local playerpos = placer:get_pos();
						local obj = minetest.add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_"..i.."_"..j.."_"..k)
						local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
						if not minetest.is_creative_enabled(placer:get_player_name()) then
                            itemstack:take_item()
                        end
						obj:setvelocity(vec)
					return itemstack
				end,
				light_source = 12,
			})
		end
	end
end
local mode_text = {
	{"give player Outsider rank. (revoke all privs)"},
	{"give player Member rank. (interact,shout)"},
	{"give player Moderator rank. (interact,shout,ban,kick,basic_privs,settime)"},
	{"give player Admin rank (all privs)"},
	{"ban punched player"},
	{"kick punched player"},
}
local function server_hammer_handler(itemstack, user, pointed_thing, mode)
	local keys = user:get_player_control()
	if pointed_thing.type ~= "object" then
		return
	end
	if not pointed_thing.ref:is_player() then
		return
	end
	local puncher = user:get_player_name()
	local puncher_privs = minetest.get_player_privs(puncher)
	if (puncher_privs["privs"] == false) then
		return
	end
	local punched_player = pointed_thing.ref:get_player_name()
	local punched_player_privs = minetest.get_player_privs(punched_player)
	if mode == 1 then
		minetest.chat_send_player(punched_player, puncher.." gives you Outsider rank. You have no privs")
		minetest.set_player_privs(punched_player, {})
	elseif mode == 2 then
		minetest.chat_send_player(punched_player, puncher.." gives you Member rank. You have interact and shout privs")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = {}
		punched_player_privs["shout"] = true
		punched_player_privs["interact"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)
	elseif mode == 3 then
		minetest.chat_send_player(punched_player, puncher.." gives you Moderator rank. You have interact and shout privs")
		local punched_player_privs = {}
		punched_player_privs["basic_privs"] = true
		punched_player_privs["settime"] = true
		punched_player_privs["ban"] = true
		punched_player_privs["kick"] = true
		punched_player_privs["shout"] = true
		punched_player_privs["interact"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)
	elseif mode == 4 then
		minetest.chat_send_player(punched_player, puncher.." gives you Admin rank. You have all privs")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		punched_player_privs["basic_privs"] = true
		punched_player_privs["privs"] = true
		punched_player_privs["teleport"] = true
		punched_player_privs["bring"] = true
		punched_player_privs["settime"] = true
		punched_player_privs["server"] = true
		punched_player_privs["protection_bypass"] = true
		punched_player_privs["ban"] = true
		punched_player_privs["debug"] = true
		punched_player_privs["creative"] = true
		punched_player_privs["kick"] = true
		punched_player_privs["give"] = true
		punched_player_privs["shout"] = true
		punched_player_privs["password"] = true
		punched_player_privs["travelnet_attach"] = true
		punched_player_privs["fly"] = true
		punched_player_privs["interact"] = true
		punched_player_privs["fast"] = true
		punched_player_privs["travelnet_remove"] = true
		punched_player_privs["noclip"] = true
		punched_player_privs["home"] = true
		punched_player_privs["rollback"] = true
		punched_player_privs["peaceful_player"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)
	elseif mode == 5 then
		minetest.ban_player(punched_player)
	elseif mode == 6 then
		minetest.kick_player(punched_player)
	end
	return itemstack
end
minetest.register_craftitem("tutorial:server_hammer1", {
		description = "Server Hammer Mode 1 ("..mode_text[1][1]..")",
		inventory_image = "tutorial_server_hammer.png^technic_tool_mode1.png",
		wield_image = "tutorial_server_hammer.png",
		on_use = function(itemstack, user, pointed_thing)
			server_hammer_handler(itemstack, user, pointed_thing, 1)
			return itemstack
		end,
	})
for i = 2, 6 do
	minetest.register_craftitem("tutorial:server_hammer"..i, {
		description = "Server Hammer Mode "..i.." ("..mode_text[i][1]..")",
		inventory_image = "tutorial_server_hammer.png^technic_tool_mode"..i..".png",
		wield_image = "tutorial_server_hammer.png",
		groups = {not_in_creative_inventory=1},
		on_use = function(itemstack, user, pointed_thing)
			local mode = i
			server_hammer_handler(itemstack, user, pointed_thing, mode)
			return itemstack
		end,
	})
end
minetest.register_on_joinplayer(function(player)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
	player_inv:set_size("t", 1)
	player_inv:add_item("t", "default:dirt")
end)
minetest.register_on_dignode(function(pos, node, player)
	if player == nil then
        return
    end
	local name = player:get_player_name()
	local hp = player:get_hp()
	local drops = node.name
	local x = math.random(1,50)
	local inv = player:get_inventory()
	if node.name == "tutorial:geschenk_death" then
		if x < 6 then
			minetest.get_player_by_name(name):set_hp(0)
		elseif x < 21 then
			if hp > 3 then
				minetest.get_player_by_name(name):set_hp(hp-4)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 31 then
			if hp > 9 then
				minetest.get_player_by_name(name):set_hp(hp-10)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		end
	end
	if node.name == "tutorial:geschenk_death_silber" then
		if x < 5 then
			minetest.get_player_by_name(name):set_hp(0)
		elseif x < 18 then
			if hp > 3 then
				minetest.get_player_by_name(name):set_hp(hp-4)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 26 then
			if hp > 9 then
				minetest.get_player_by_name(name):set_hp(hp-10)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		end
	end
	if node.name == "tutorial:geschenk_death_gold" then
		if x < 4 then
			minetest.get_player_by_name(name):set_hp(0)
		elseif x < 15 then
			if hp > 3 then
				minetest.get_player_by_name(name):set_hp(hp-4)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 21 then
			if hp > 9 then
				minetest.get_player_by_name(name):set_hp(hp-10)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		end
	end
	if node.name == "tutorial:geschenk_death_platin" then
		if x < 4 then
			minetest.get_player_by_name(name):set_hp(0)
		elseif x < 15 then
			if hp > 3 then
				minetest.get_player_by_name(name):set_hp(hp-4)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 16 then
			if hp > 9 then
				minetest.get_player_by_name(name):set_hp(hp-10)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		end
	end
	if node.name == "tutorial:geschenk_dragon" then
        local x = math.random(1,25)
        if x == 8 then
            inv:set_size("dgon", 1)
            local dgon = inv:get_stack("dgon", 1):get_count()
            if dgon == 0 and inv:room_for_item("main", "tutorial:dragon_schluessel") then
                inv:add_item("main", "tutorial:dragon_schluessel")
                inv:add_item("dgon", "default:dirt")
            end
        end
	end
    if node.name == "tutorial:geschenk_tortoise" then
        local x = math.random(1,25)
        if x == 8 then
            inv:set_size("ttoise", 1)
            local ttoise = inv:get_stack("ttoise", 1):get_count()
            if ttoise == 0 and inv:room_for_item("main", "tutorial:tortoise_schluessel") then
                inv:add_item("main", "tutorial:tortoise_schluessel")
                inv:add_item("ttoise", "default:dirt")
            end
        end
	end
	if node.name == "tutorial:geschenk_legend" then
		local x = math.random(10)
		if x == 8 then
			local y = math.random(8)
			inv:set_stack("kri", y,"tutorial:legenden_kristall_"..y)
		end
	end
end)
minetest.override_item("default:water_source", {
	groups = {water=3, liquid=3, cools_lava=1, cracky = 14},
	drop = "default:water_source",
	diggable = true,
})
minetest.override_item("default:lava_source", {
	groups = {lava=3, liquid=2, igniter=1, cracky = 17},
	drop = "default:lava_source",
	diggable = true,
})
minetest.override_item("default:river_water_source", {
	groups = {water=3, liquid=3, cools_lava=1, cracky = 14},
	drop = "default:river_water_source",
	diggable = true,
})
minetest.register_on_dignode(function(pos, node, player)
	local dig1 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","default:clay"}
	local dig2 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium"}
	local dig3 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore"}
	local dig4 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","default:clay"}
	local dig5 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","tutorial:stone_with_titan"}
    local dig6 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","tutorial:stone_with_titan","tutorial:stone_with_rot","tutorial:stone_with_blau"}
    local dig7 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","tutorial:stone_with_titan","tutorial:stone_with_rot","tutorial:stone_with_blau","default:lava_source","default:water_source"}
	local dig8 = {"default:cobble","default:stone","default:dirt","default:sand","default:desert_sand","default:desert_stone","default:dirt_with_grass","default:gravel","default:clay","default:cobble","default:mossycobble","default:dirt_with_snow","default:dirt_with_rainforest_litter","default:grass_3","default:dry_grass_3","default:grass_4","default:dry_grass_4"}
    local name, tool, drops, i, drop, drop_name
	if player == nil then
        return
    end
	local inv = player:get_inventory()
    tool = player:get_wielded_item():get_name()
	if not creative.is_enabled_for(player:get_player_name()) then
		if tool == "tutorial:legendenbattleaxe1" then
			drops = node.name
			for _,node_name in ipairs(dig1) do
				if drops == node_name then
					droping = minetest.get_node_drops(node.name)
					for _, itemname in ipairs(droping) do
						inv:add_item("main", itemname)
					end
				end
			end
		end
		if tool == "tutorial:legendenbattleaxe2" then
			drops = node.name
			for _,node_name in ipairs(dig2) do
				if drops == node_name then
					droping = minetest.get_node_drops(node.name)
					for _, itemname in ipairs(droping) do
						inv:add_item("main", itemname)
					end
				end
			end
		end
		if tool == "tutorial:legendenbattleaxe3" then
			drops = node.name
			for _,node_name in ipairs(dig3) do
				if drops == node_name then
					droping = minetest.get_node_drops(node.name)
					for _, itemname in ipairs(droping) do
						inv:add_item("main", itemname)
					end
				end
			end
		end
		if tool == "tutorial:legendenbattleaxe4" then
			drops = node.name
			for _,node_name in ipairs(dig4) do
				if drops == node_name then
					droping = minetest.get_node_drops(node.name)
					for _, itemname in ipairs(droping) do
						inv:add_item("main", itemname)
					end
				end
			end
		end
		if tool == "tutorial:legendenbattleaxe5" then
			drops = node.name
			for _,node_name in ipairs(dig5) do
				if drops == node_name then
					droping = minetest.get_node_drops(node.name)
					for _, itemname in ipairs(droping) do
						inv:add_item("main", itemname)
					end
				end
			end
		end
		if tool == "tutorial:legendenbattleaxe6" then
			drops = node.name
			for _,node_name in ipairs(dig6) do
				if drops == node_name then
					droping = minetest.get_node_drops(node.name)
					for _, itemname in ipairs(droping) do
						inv:add_item("main", itemname)
					end
				end
			end
		end
		if tool == "tutorial:superlegendenbattleaxe1" or tool == "tutorial:superlegendenbattleaxe2" then
			drops = node.name
			for _,node_name in ipairs(dig7) do
				if drops == node_name then
					droping = minetest.get_node_drops(node.name)
					for _, itemname in ipairs(droping) do
						inv:add_item("main", itemname)
					end
				end
			end
		end
		if tool == "tutorial:regnumbattleaxe1" or tool == "tutorial:regnumbattleaxe2" or tool == "tutorial:regnumbattleaxe3" then
			drops = node.name
			for _,node_name in ipairs(dig7) do
				if drops == node_name then
					droping = minetest.get_node_drops(node.name)
					for _, itemname in ipairs(droping) do
						inv:add_item("main", itemname)
					end
				end
			end
			for _,node_name in ipairs(dig8) do
				if drops == node_name then
					droping = minetest.get_node_drops(node.name)
					for _, itemname in ipairs(droping) do
						inv:add_item("main", itemname)
					end
				end
			end
			if drops == "default:grass_5" or drops == "default:dry_grass_5" then
				droping = minetest.get_node_drops(node.name)
				for _, itemname in ipairs(droping) do
					inv:add_item("main", itemname)
					inv:add_item("main", itemname)
				end
			end
		end
	end
end)
local old_entities = {"mobs:green_monster", "mobs:zombie", "mobs:grass_monster", "mobs:geist", "mobs:tree_monster", "mobs:spider", "mobs:dungeon_master", "mobs:lava_flan", "mobs:mese_monster", "mobs:oerkki","mobs:rat","mobs_crocs:crocodile_swim","mobs:cow","mobs:chicken","mobs:pumba","mobs:sheep_white","mobs:kitten","","spidermob:spider"}
local old_nodes = {}
for _,node_name in ipairs(old_nodes) do
    minetest.register_node(":"..node_name, {
        groups = {old=1},
    })
end
minetest.register_abm({
    nodenames = {"group:old"},
    interval = 1,
    chance = 1,
    action = function(pos, node)
        minetest.remove_node(pos)
    end,
})
for _,entity_name in ipairs(old_entities) do
    minetest.register_entity(":"..entity_name, {
        on_activate = function(self, staticdata)
            self.object:remove()
        end,
    })
end


minetest.register_on_player_receive_fields(function(player, formname, fields)
	if player == nil then
        return
    end
	if fields.craft10 then
		local item_name = ""
		for i=1,10 do
			local player_inv = player:get_inventory()
			local crafted = nil
			local table_dec = nil
			local player_inv = player:get_inventory()
			local tablelist = player_inv:get_list("craft")
			if tablelist then
				crafted,table_dec = minetest.get_craft_result({method = "normal", width = 3, items = tablelist})
			end
			if item_name == "" or item_name == crafted.item:get_name() then
				item_name = crafted.item:get_name()
				local k = 0
				if player_inv:room_for_item("main", crafted.item) == true then
					k = 1
				end
				if crafted.item:get_name() == "" then
					k = 0
				end
				if k == 1 then
					player_inv:add_item("main", crafted.item)
					player_inv:set_list("craft", table_dec.items)
				end
			end
		end
		player:set_inventory_formspec(sfinv.get_formspec(player, sfinv.get_or_create_context(player)))
	end
	if fields.craft99 then
		local item_name = ""
		for i=1,99 do
			local player_inv = player:get_inventory()
			local crafted = nil
			local table_dec = nil
			local player_inv = player:get_inventory()
			local tablelist = player_inv:get_list("craft")
			if tablelist then
				crafted,table_dec = minetest.get_craft_result({method = "normal", width = 3, items = tablelist})
			end
			if item_name == "" or item_name == crafted.item:get_name() then
				item_name = crafted.item:get_name()
				local k = 0
				if player_inv:room_for_item("main", crafted.item) == true then
					k = 1
				end
				if crafted.item:get_name() == "" then
					k = 0
				end
				if k == 1 then
					player_inv:add_item("main", crafted.item)
					player_inv:set_list("craft", table_dec.items)
				end
			end
		end
		player:set_inventory_formspec(sfinv.get_formspec(player, sfinv.get_or_create_context(player)))
	end
end)
