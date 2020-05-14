minetest.register_on_joinplayer(function(player)
	local name = player:get_player_name()
	player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=10},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "For Minetest 	  :  5.2.0",
	})
	player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=30},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "Game Version	 :  3.5.1",
	})
end)

dofile(minetest.get_modpath("tutorial").."/craft.lua")
dofile(minetest.get_modpath("tutorial").."/node.lua")
dofile(minetest.get_modpath("tutorial").."/tool.lua")
dofile(minetest.get_modpath("tutorial").."/craftitem.lua")
dofile(minetest.get_modpath("tutorial").."/ore.lua")
dofile(minetest.get_modpath("tutorial").."/abm.lua")
dofile(minetest.get_modpath("tutorial").."/entity.lua")
dofile(minetest.get_modpath("tutorial").."/chatcommand.lua")
dofile(minetest.get_modpath("tutorial").."/other.lua")
dofile(minetest.get_modpath("tutorial").."/alias.lua")

--v.2.0.0+
local backward = {}
backward.get_formspec = function(player, pos)
    if player == nil then
        return
    end
	local player_inv = player:get_inventory()
	player_inv:set_size("backward", 1)
	formspec = "size[8,7.5]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[8,7.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."button[3,2.6;2,0.5;backwardcra;Get items back]"
        .."list[current_player;main;0,3.75;8,4;]"
        .."list[current_player;backward;3.5,1;1,1;]"
        .."listring[current_player;main]"
		.."listring[current_player;backward]"
		.."label[5,0.7;You can get your items back from:]"
		.."label[5,1.0;superlegend & regnum armor/gun]"
		.."label[5,1.3;Spezial Mining Laser/Drill lv.1-149]"
		.."label[5,1.6;Craftkey lv.1-6]"
		.."label[5,1.9;Spezial grey coin lv.1-MAX]"
		.."label[5,2.2;Bagkey lv.1-3]"
		.."label[5,2.5;Wallplacer lv.1-4]"
		.."label[5,2.8;Cookingkey lv.1-3]"
	return formspec		
end

minetest.register_craft({
        output = "tutorial:spawn_egg",
        recipe = {
                {'default:obsidian', 'default:obsidian', 'default:obsidian'},
                {'default:obsidian', 'default:ice', 'default:obsidian'},
                {'default:obsidian', 'default:obsidian', 'default:obsidian'},
        }
})
minetest.register_craftitem("tutorial:spawn_egg", {
	description = "Mummy spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.env:add_entity(pointed_thing.above,"mobs:mummy")
			if not minetest.setting_getbool("creative_mode") then itemstack:take_item() end
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
    description = "Colorstick (empty)",
	inventory_image = "tutorial_colorstick_empty.png",
})
minetest.register_craftitem("tutorial:hammer", {
    description = "Repairing tool for color stick",
	inventory_image = "tutorial_hammer.png",
})
minetest.register_craftitem("tutorial:colorstick_broken", {
    description = "Colorstick (broken)",
	inventory_image = "tutorial_colorstick_broken.png",
})
minetest.register_alias("homedecor:trophy_year1", "tutorial:trophy_year1")
minetest.register_node("tutorial:trophy_year1", {
    description = "One year Regnum!!",
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
    description = "Two years Regnum!!",
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
    description = "Three years Regnum!!",
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
    description = "Four years Regnum!!",
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
			local pos = self.object:getpos()
			if minetest.env:get_node(self.object:getpos()).name ~= "air" then
				self.hit_node(self, pos, node)
				self.object:remove()
				return
			end
			pos.y = pos.y-1
			for _,player in pairs(minetest.env:get_objects_inside_radius(pos, 1)) do
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
		local s = player:getpos()
		local p = player:get_look_dir()
		local vec = {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z}
		local pos = player:getpos()
		for dx=0,1 do
			for dy=0,1 do
				for dz=0,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(p).name
					if (n == "air") then
						minetest.env:add_node(p, {name="tutorial:legend_thunderadmin"})
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
					local n = minetest.env:get_node(p).name
					if (n == "air") then
						minetest.env:add_node(p, {name="tutorial:legend_thunderadmin"})
					end
				end
			end
		end
	end
})
minetest.register_tool("tutorial:legendball_admin", {
	description = "Admin Legend Ball",
	inventory_image = "tutorial_legendball.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local inv = placer:get_inventory()
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_admin")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			if not minetest.setting_getbool("creative_mode") then 
                itemstack:take_item() 
            end
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 12,
})
minetest.register_node("tutorial:legend_thunderadmin", {
	description = "Admin Legend thunder",
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
		minetest.env:remove_node(pos)
	end,
})
minetest.register_tool("tutorial:legendstick_admin", {
	description = "Admin tool 10: Legendstick",
	inventory_image = "tutorial_legendzauberstabadmin.png",
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:getpos();
		local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendballadmin")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:setvelocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick9", {
	description = "Legendstick lv.MAX",
	inventory_image = "tutorial_legendzauberstab9.png",
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:getpos();
		local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_8_8_8")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:setvelocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick8", {
	description = "Legendstick lv.8",
	inventory_image = "tutorial_legendzauberstab8.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:getpos();
		local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_7_7_7")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:setvelocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick7", {
	description = "Legendstick lv.7",
	inventory_image = "tutorial_legendzauberstab7.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:getpos();
		local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_6_6_6")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:setvelocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick6", {
	description = "Legendstick lv.6",
	inventory_image = "tutorial_legendzauberstab6.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:getpos();
		local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_5_5_6")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:setvelocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick5", {
	description = "Legendstick lv.5",
	inventory_image = "tutorial_legendzauberstab5.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:getpos();
		local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_4_4_5")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:setvelocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick4", {
	description = "Legendstick lv.4",
	inventory_image = "tutorial_legendzauberstab4.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:getpos();
		local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_3_4_4")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:setvelocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick3", {
	description = "Legendstick lv.3",
	inventory_image = "tutorial_legendzauberstab3.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:getpos();
		local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_2_3_3")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:setvelocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick2", {
	description = "Legendstick lv.2",
	inventory_image = "tutorial_legendzauberstab2.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:getpos();
		local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_2_2_2")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:setvelocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick1", {
	description = "Legendstick lv.1",
	inventory_image = "tutorial_legendzauberstab1.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
        local dir = placer:get_look_dir();
		local inv = placer:get_inventory()
		local playerpos = placer:getpos();
		local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_1_1_1")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:setvelocity(vec)
	    return itemstack
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:legendstick", {
	description = "Legendstick",
	inventory_image = "tutorial_legendzauberstab.png",
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 12,
})
minetest.register_craftitem("tutorial:protection_schluessel1", {
	description = "Protectionkey lv.1",
	inventory_image = "tutorial_protection_schluessel1.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:protection_schluessel2", {
	description = "Protectionkey lv.2",
	inventory_image = "tutorial_protection_schluessel2.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:protection_schluessel3", {
	description = "Protectionkey lv.MAX",
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
local troph = {}
troph.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    player_inv:set_size("trophcr", 1)
	formspec = "size[8,7.5]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[8,7.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."button[3,2.6;2,0.5;trophcra;Use]"
        .."list[current_player;main;0,3.75;8,4;]"
        .."list[current_player;trophcr;3.5,1;1,1;]"
        .."listring[current_player;main]"
		.."listring[current_player;trophcr]"
        .."label[3.65,2;Tears]"
	return formspec		
end
local trophys = {}
trophys.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    local red = player_inv:get_stack("tearred", 1):get_count()
    local blue = player_inv:get_stack("tearblue", 1):get_count()
    local yellow = player_inv:get_stack("tearyellow", 1):get_count()
    local purple = player_inv:get_stack("tearpurple", 1):get_count()
    local cyan = player_inv:get_stack("tearcyan", 1):get_count()
    local green = player_inv:get_stack("teargreen", 1):get_count()
    player_inv:set_size("trtr", 1)
	formspec = "size[6.5,9.8]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[6.5,9.8;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        local d = 0
        if red > 9 then
            formspec = formspec .."image[1,1;1,1;trophy_red_bronze.png]"
            d = d+1
        else
            formspec = formspec .."image[1,1;1,1;tutorial_0.png]"
        end
        if red > 19 then
            formspec = formspec .."image[2.5,1;1,1;trophy_red_silver.png]"
            d = d+1
        else
            formspec = formspec .."image[2.5,1;1,1;tutorial_0.png]"
        end
        if red > 49 then
            formspec = formspec .."image[4,1;1,1;trophy_red_gold.png]"
            d = d+1
        else
            formspec = formspec .."image[4,1;1,1;tutorial_0.png]"
        end
        if red > 99 then
            formspec = formspec .."image[5.5,1;1,1;trophy_red_platin.png]"
            d = d+1
        else
            formspec = formspec .."image[5.5,1;1,1;tutorial_0.png]"
        end
        if blue > 9 then
            formspec = formspec .."image[1,2.5;1,1;trophy_blue_bronze.png]"
            d = d+1
        else
            formspec = formspec .."image[1,2.5;1,1;tutorial_0.png]"
        end
        if blue > 19 then
            formspec = formspec .."image[2.5,2.5;1,1;trophy_blue_silver.png]"
            d = d+1
        else
            formspec = formspec .."image[2.5,2.5;1,1;tutorial_0.png]"
        end
        if blue > 49 then
            formspec = formspec .."image[4,2.5;1,1;trophy_blue_gold.png]"
            d = d+1
        else
            formspec = formspec .."image[4,2.5;1,1;tutorial_0.png]"
        end
        if blue > 99 then
            formspec = formspec .."image[5.5,2.5;1,1;trophy_blue_platin.png]"
            d = d+1
        else
            formspec = formspec .."image[5.5,2.5;1,1;tutorial_0.png]"
        end
        if green > 9 then
            formspec = formspec .."image[1,4;1,1;trophy_green_bronze.png]"
            d = d+1
        else
            formspec = formspec .."image[1,4;1,1;tutorial_0.png]"
        end
        if green > 19 then
            formspec = formspec .."image[2.5,4;1,1;trophy_green_silver.png]"
            d = d+1
        else
            formspec = formspec .."image[2.5,4;1,1;tutorial_0.png]"
        end
        if green > 49 then
            formspec = formspec .."image[4,4;1,1;trophy_green_gold.png]"
            d = d+1
        else
            formspec = formspec .."image[4,4;1,1;tutorial_0.png]"
        end
        if green > 99 then
            formspec = formspec .."image[5.5,4;1,1;trophy_green_platin.png]"
            d = d+1
        else
            formspec = formspec .."image[5.5,4;1,1;tutorial_0.png]"
        end
        if yellow > 9 then
            formspec = formspec .."image[1,5.5;1,1;trophy_yellow_bronze.png]"
            d = d+1
        else
            formspec = formspec .."image[1,5.5;1,1;tutorial_0.png]"
        end
        if yellow > 19 then
            formspec = formspec .."image[2.5,5.5;1,1;trophy_yellow_silver.png]"
            d = d+1
        else
            formspec = formspec .."image[2.5,5.5;1,1;tutorial_0.png]"
        end
        if yellow > 49 then
            formspec = formspec .."image[4,5.5;1,1;trophy_yellow_gold.png]"
            d = d+1
        else
            formspec = formspec .."image[4,5.5;1,1;tutorial_0.png]"
        end
        if yellow > 99 then
            formspec = formspec .."image[5.5,5.5;1,1;trophy_yellow_platin.png]"
            d = d+1
        else
            formspec = formspec .."image[5.5,5.5;1,1;tutorial_0.png]"
        end
        if purple > 9 then
            formspec = formspec .."image[1,7;1,1;trophy_purple_bronze.png]"
            d = d+1
        else
            formspec = formspec .."image[1,7;1,1;tutorial_0.png]"
        end
        if purple > 19 then
            formspec = formspec .."image[2.5,7;1,1;trophy_purple_silver.png]"
            d = d+1
        else
            formspec = formspec .."image[2.5,7;1,1;tutorial_0.png]"
        end
        if purple > 49 then
            formspec = formspec .."image[4,7;1,1;trophy_purple_gold.png]"
            d = d+1
        else
            formspec = formspec .."image[4,7;1,1;tutorial_0.png]"
        end
        if purple > 99 then
            formspec = formspec .."image[5.5,7;1,1;trophy_purple_platin.png]"
            d = d+1
        else
            formspec = formspec .."image[5.5,7;1,1;tutorial_0.png]"
        end
        if cyan > 9 then
            formspec = formspec .."image[1,8.5;1,1;trophy_cyan_bronze.png]"
            d = d+1
        else
            formspec = formspec .."image[1,8.5;1,1;tutorial_0.png]"
        end
        if cyan > 19 then
            formspec = formspec .."image[2.5,8.5;1,1;trophy_cyan_silver.png]"
            d = d+1
        else
            formspec = formspec .."image[2.5,8.5;1,1;tutorial_0.png]"
        end
        if cyan > 49 then
            formspec = formspec .."image[4,8.5;1,1;trophy_cyan_gold.png]"
            d = d+1
        else
            formspec = formspec .."image[4,8.5;1,1;tutorial_0.png]"
        end
        if cyan > 99 then
            formspec = formspec .."image[5.5,8.5;1,1;trophy_cyan_platin.png]"
            d = d+1
        else
            formspec = formspec .."image[5.5,8.5;1,1;tutorial_0.png]"
        end
        if d == 24 then
            formspec = formspec .."button[4.5,0;2,0.5;trorew;Reward]"
        end
        formspec = formspec

        .."label[1.2,2;"..red.."/10]"
        .."label[2.7,2;"..red.."/20]"
        .."label[4.2,2;"..red.."/50]"
        .."label[5.7,2;"..red.."/100]"
        .."label[1.2,3.5;"..blue.."/10]"
        .."label[2.7,3.5;"..blue.."/20]"
        .."label[4.2,3.5;"..blue.."/50]"
        .."label[5.7,3.5;"..blue.."/100]"
        .."label[1.2,5;"..green.."/10]"
        .."label[2.7,5;"..green.."/20]"
        .."label[4.2,5;"..green.."/50]"
        .."label[5.7,5;"..green.."/100]"
        .."label[1.2,6.5;"..yellow.."/10]"
        .."label[2.7,6.5;"..yellow.."/20]"
        .."label[4.2,6.5;"..yellow.."/50]"
        .."label[5.7,6.5;"..yellow.."/100]"
        .."label[1.2,8;"..purple.."/10]"
        .."label[2.7,8;"..purple.."/20]"
        .."label[4.2,8;"..purple.."/50]"
        .."label[5.7,8;"..purple.."/100]"
        .."label[1.2,9.5;"..cyan.."/10]"
        .."label[2.7,9.5;"..cyan.."/20]"
        .."label[4.2,9.5;"..cyan.."/50]"
        .."label[5.7,9.5;"..cyan.."/100]"
        .."label[0,1.25;Red]"
        .."label[0,2.75;Blue]"
        .."label[0,4.25;Green]"
        .."label[0,5.75;Yellow]"
        .."label[0,7.25;Purple]"
        .."label[0,8.75;Cyan]"
        .."label[4,0;"..d.."/24]"
        player_inv:set_stack("trtr", 1 , "default:dirt "..d)
	return formspec		
end
minetest.register_craftitem("tutorial:big_dna_string", {
	description = "Big DNA string",
	inventory_image = "tutorial_big_dna_string.png",
})
minetest.register_craftitem("tutorial:red_tear", {
	description = "Red Tear",
	inventory_image = "tutorial_red_tear.png",
})
minetest.register_craftitem("tutorial:blue_tear", {
	description = "Blue Tear",
	inventory_image = "tutorial_blue_tear.png",
})
minetest.register_craftitem("tutorial:cyan_tear", {
	description = "Cyan Tear",
	inventory_image = "tutorial_cyan_tear.png",
})
minetest.register_craftitem("tutorial:purple_tear", {
	description = "Purple Tear",
	inventory_image = "tutorial_purple_tear.png",
})
minetest.register_craftitem("tutorial:green_tear", {
	description = "Green Tear",
	inventory_image = "tutorial_green_tear.png",
})
minetest.register_craftitem("tutorial:yellow_tear", {
	description = "Yellow Tear",
	inventory_image = "tutorial_yellow_tear.png",
})
minetest.register_craft({
    output = 'tutorial:big_dna_string',
    recipe = {
		{'tutorial:dna_string', 'tutorial:dna_string', 'tutorial:dna_string', 'tutorial:dna_string', 'tutorial:dna_string'},
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
local treasures = {}
treasures.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    player_inv:set_size("tata", 1)
    local a = player_inv:get_stack("r1248", 1):get_count()
    local b = player_inv:get_stack("r1248", 2):get_count()
    local c = player_inv:get_stack("r1248", 3):get_count()
    local e = player_inv:get_stack("r1248", 4):get_count()
    local f = player_inv:get_stack("r1248", 5):get_count()
    local g = player_inv:get_stack("r1248", 6):get_count()
    local d = 0
	formspec = "size[9,9.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,9.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        if a == 1 then
            formspec = formspec .."image[0,2;1.5,1.5;tutorial_1248_helmet_rot.png]"
            d = d+1
        else
            formspec = formspec .."image[0,2;1.5,1.5;tutorial_0.png]"
        end
        if b == 1 then
            formspec = formspec .."image[1.5,2;1.5,1.5;tutorial_1248_helmet_blue.png]"
            d = d+1
        else
            formspec = formspec .."image[1.5,2;1.5,1.5;tutorial_0.png]"
        end
        if c == 1 then
            formspec = formspec .."image[3,2;1.5,1.5;tutorial_1248_helmet_cyan.png]"
            d = d+1
        else
            formspec = formspec .."image[3,2;1.5,1.5;tutorial_0.png]"
        end
        if e == 1 then
            formspec = formspec .."image[4.5,2;1.5,1.5;tutorial_1248_helmet_green.png]"
            d = d+1
        else
            formspec = formspec .."image[4.5,2;1.5,1.5;tutorial_0.png]"
        end
        if f == 1 then
            formspec = formspec .."image[6,2;1.5,1.5;tutorial_1248_helmet_yellow.png]"
            d = d+1
        else
            formspec = formspec .."image[6,2;1.5,1.5;tutorial_0.png]"
        end
        if g == 1 then
            formspec = formspec .."image[7.5,2;1.5,1.5;tutorial_1248_helmet_purple.png]"
            d = d+1
        else
            formspec = formspec .."image[7.5,2;1.5,1.5;tutorial_0.png]"
        end
        formspec = formspec .."label[5,0;"..d.."/6]"
        if d == 6 then
            formspec = formspec .."button[6.5,0;2,0.5;trerew;Reward]"
        end
        player_inv:set_stack("tata", 1 , "default:dirt "..d)

	return formspec		
end
minetest.register_craftitem("tutorial:coin_cyan", {
    description = "Coin cyan (very rare)",
	inventory_image = "tutorial_coin_cyan.png",
    stack_max = 9999,
})
minetest.register_node("tutorial:bottle_crystal", {
	description = "Crystalbottle",
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
        minetest.env:add_entity(pointed_thing.above, "experience:orb_cyan")
        if not minetest.setting_getbool("creative_mode") then itemstack:take_item() end
        return itemstack
    end,
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})
for i = 1, 25, 1 do
    minetest.register_node("tutorial:level"..i.."_cyan",{
	    tiles  = {"tutorial_level"..i..".png^tutorial_level_cyan.png"},
	    description = "You are now in Level cyan "..i,
	    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,not_in_creative_inventory=1},
    })
end
minetest.register_node("tutorial:levelMAX_cyan",{
	tiles  = {"tutorial_levelMAX.png^tutorial_level_cyan.png"},
	description = "You are now in Level cyan MAX",
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
	description = "Cookingkey lv.1",
	inventory_image = "tutorial_cooking_schluessel1.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:cooking_schluessel2", {
	description = "Cookingkey lv.2",
	inventory_image = "tutorial_cooking_schluessel2.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:cooking_schluessel3", {
	description = "Cookingkey lv.3",
	inventory_image = "tutorial_cooking_schluessel3.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:cooking_schluessel4", {
	description = "Cookingkey lv.MAX",
	inventory_image = "tutorial_cooking_schluessel4.png",
})
minetest.register_craftitem("tutorial:golden_schluessel", {
	description = "Goldenkey",
	inventory_image = "tutorial_golden_schluessel.png",
})
minetest.register_craftitem("tutorial:crystal_schluessel", {
	description = "Crystalkey",
	inventory_image = "tutorial_crystal_schluessel.png",
})
minetest.register_craftitem("tutorial:medallion", {
	description = "Medallion piece",
	inventory_image = "tutorial_medallion.png",
    stack_max = 1000,
})
minetest.register_craftitem("tutorial:knight_schluessel", {
	description = "Knightkey",
	inventory_image = "tutorial_knight_schluessel.png",
})
local crafting7 = {}
crafting7.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()

	formspec = "size[8,8.3]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[8,8.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."button[1,2;2,0.5;meda1;Red]"
        .."button[3,2;2,0.5;meda2;Blue]"
        .."button[5,2;2,0.5;meda3;Green]"
        .."button[1,3;2,0.5;meda5;Purple]"
        .."button[3,3;2,0.5;meda4;Yellow]"
        .."button[5,3;2,0.5;meda6;Cyan]"
        .."button[3,4;2,0.5;meda7;Gray]"
	return formspec		
end
local crafting8 = {}
crafting8.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
	local kri_inv = minetest.create_detached_inventory(player:get_player_name().."_kri",{
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
	kri_inv:set_size("kri", 8)
	player_inv:set_size("kri", 8)
    player_inv:set_size("pixkey", 1)
    player_inv:set_size("crtime", 1)
    local time = player_inv:get_stack("crtime", 1):get_count()
	local k = 0
	for i=1, 8 do
		local stack = player_inv:get_stack("kri", i)
		kri_inv:set_stack("kri", i, stack)
		if not player_inv:get_stack("kri", i):is_empty() then
			k = k+1
		end
	end
	formspec = "size[8,7.5]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[8,7.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."list[current_player;main;0,3.75;8,4;]"
        .."list[current_player;pixkey;6.6,1;1,1;]"
        .."listring[current_player;main]"
		.."listring[current_player;pixkey]"
		.."label[5,0;You have "..k.."/8 crystals]"
        .."label[6.3,2;Pixeled Regnum Key]"
	if time == 0 then
		formspec = formspec .."button[1,2;2,0.5;cre2;crystalbottle]"
	end
	return formspec		
end
local meda = {}
meda.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    player_inv:set_size("medall", 1)
    local med = player_inv:get_stack("medallion", 1):get_count()
    local x = ""
    if med == 1 then
        x = "red"
    elseif med == 2 then
        x = "blue"
    elseif med == 3 then
        x = "green"
    elseif med == 4 then
        x = "yellow"
    elseif med == 5 then
        x = "purple"
    elseif med == 6 then
        x = "cyan"
    elseif med == 7 then
        x = "gray"
    end
    player_inv:set_size("medallion"..x, 9)
    local y1 = player_inv:get_stack("medallion"..x, 1):get_count()
    local y2 = player_inv:get_stack("medallion"..x, 2):get_count()
    local y3 = player_inv:get_stack("medallion"..x, 3):get_count()
    local y4 = player_inv:get_stack("medallion"..x, 4):get_count()
    local y5 = player_inv:get_stack("medallion"..x, 5):get_count()
    local y6 = player_inv:get_stack("medallion"..x, 6):get_count()
    local y7 = player_inv:get_stack("medallion"..x, 7):get_count()
    local y8 = player_inv:get_stack("medallion"..x, 8):get_count()
    local y9 = player_inv:get_stack("medallion"..x, 9):get_count()
	formspec = "size[8,9.3]"
		.."button[0,0;2,0.5;crafting7;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."button[5,3;2,0.5;mecraft;Craft]"
        .."background[8,9.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."list[current_player;main;0,5.25;8,1;]"
        .."list[current_player;main;0,6.5;8,3;8]"
        .."list[current_player;medall;5.5,2;1,1;]"
        .."listring[current_player;main]"
		.."listring[current_player;medall]"
        if y1 == 0 then
            formspec = formspec .."image[1,1;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[1,1;1,1;medallion_"..x.."_1.png]"
        end
        if y2 == 0 then
            formspec = formspec .."image[2,1;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[2,1;1,1;medallion_"..x.."_2.png]"
        end
        if y3 == 0 then
            formspec = formspec .."image[3,1;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[3,1;1,1;medallion_"..x.."_3.png]"
        end
        if y4 == 0 then
            formspec = formspec .."image[1,2;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[1,2;1,1;medallion_"..x.."_4.png]"
        end
        if y5 == 0 then
            formspec = formspec .."image[2,2;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[2,2;1,1;medallion_"..x.."_5.png]"
        end
        if y6 == 0 then
            formspec = formspec .."image[3,2;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[3,2;1,1;medallion_"..x.."_6.png]"
        end
        if y7 == 0 then
            formspec = formspec .."image[1,3;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[1,3;1,1;medallion_"..x.."_7.png]"
        end
        if y8 == 0 then
            formspec = formspec .."image[2,3;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[2,3;1,1;medallion_"..x.."_8.png]"
        end
        if y9 == 0 then
            formspec = formspec .."image[3,3;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[3,3;1,1;medallion_"..x.."_9.png]"
        end
	return formspec		
end
minetest.register_craftitem("tutorial:tortoise_schluessel", {
	description = "Tortoisekey",
	inventory_image = "tutorial_tortoise_schluessel.png",
})
local medallion = {}
medallion.get_formspec = function(player, pos)
    if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    player_inv:set_size("medallionred", 9)
    player_inv:set_size("meme", 1)
    local k = 0
    local p = 0
	formspec = "size[8.5,6.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[8.5,6.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0.4,2.2;red]"
        .."label[1.6,2.2;blue]"
        .."label[2.7,2.2;green]"
        .."label[3.9,2.2;purple]"
        .."label[5.0,2.2;yellow]"
        .."label[6.3,2.2;cyan]"
        .."label[7.5,2.2;gray]"
    for i=1,9,1 do
        if player_inv:get_stack("medallionred", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[0,1;1.2,1.2;medallion_red.png]"
    else
        formspec = formspec .."image[0,1;1.2,1.2;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medallionblue", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[1.2,1;1.2,1.2;medallion_blue.png]"
    else
        formspec = formspec .."image[1.2,1;1.2,1.2;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medalliongreen", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[2.4,1;1.2,1.2;medallion_green.png]"
    else
        formspec = formspec .."image[2.4,1;1.2,1.2;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medallionpurple", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[3.6,1;1.2,1.2;medallion_purple.png]"
    else
        formspec = formspec .."image[3.6,1;1.2,1.2;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medallionyellow", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[4.8,1;1.2,1.2;medallion_yellow.png]"
    else
        formspec = formspec .."image[4.8,1;1.2,1.2;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medallioncyan", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[6,1;1.2,1.2;medallion_cyan.png]"
    else
        formspec = formspec .."image[6,1;1.2,1.2;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medalliongray", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[7.2,1;1.2,1.2;medallion_gray.png]"
    else
        formspec = formspec .."image[7.2,1;1.2,1.2;tutorial_0.png]"
    end
    formspec = formspec .."label[5,0;"..p.."/7]"
    if p == 7 then
        formspec = formspec .."button[6.5,0;2,0.5;medrew;Reward]"
    end
    player_inv:set_stack("meme", 1 , "default:dirt "..p)
	return formspec		
end
local timer = 0
local oldpos = {}
local newpos = {}
minetest.register_globalstep(function(dtime)
	timer = timer + dtime
	if (timer >= 1) then
		local players = minetest.get_connected_players()
		for _,player in ipairs(players) do
			local pri = minetest.get_player_privs(player:get_player_name())
			local player_inv = player:get_inventory()
			
			--player_inv:set_size("year", 4)
			--if player_inv:room_for_item("main", "tutorial:trophy_year4") and player_inv:get_stack("year", 4):get_count() == 0 then
			--	player_inv:add_item("main", "tutorial:trophy_year4")
			--	player_inv:set_stack("year", 4, "default:dirt")
			--end
	
			player_inv:set_size("youtube", 1)
			local c = player_inv:get_stack("youtube",1):get_count()
			if c == 0 then
				if pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.debug and pri.settime and pri.bring and pri.server and pri.password and pri.delprotect and pri.kick and pri.ban and pri.rollback and pri.privs and pri.basic_privs and pri.give and pri.protection_bypass and pri.travelnet_remove and pri.travelnet_attach and pri.shop_admin and pri.creative then
					player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 255}, text = "[Admin]"..player:get_player_name()})
				elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.debug and pri.settime and pri.bring then
					player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 0}, text = "[Legend]"..player:get_player_name()})
				elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.debug then
					player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 255}, text = "[Hero]"..player:get_player_name()})
				elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport then
					player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 0}, text = "[VIP]"..player:get_player_name()})
				elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home then
					player:set_nametag_attributes({color = {a = 255, r = 0, g = 0, b = 255}, text = "[Premium]"..player:get_player_name()})
				elseif pri.interact and pri.shout then
					player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 255}, text = "[Member]"..player:get_player_name()})
				else
					player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 0}, text = "[Enemy]"..player:get_player_name()})
				end
			else
				if pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.debug and pri.settime and pri.bring and pri.server and pri.password and pri.delprotect and pri.kick and pri.ban and pri.rollback and pri.privs and pri.basic_privs and pri.give and pri.protection_bypass and pri.travelnet_remove and pri.travelnet_attach and pri.shop_admin and pri.creative then
					player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 255}, text = "[Youtuber][Admin]"..player:get_player_name()})
				elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.debug and pri.settime and pri.bring then
					player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 0}, text = "[Youtuber][Legend]"..player:get_player_name()})
				elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.debug then
					player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 255}, text = "[Youtuber][Hero]"..player:get_player_name()})
				elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport then
					player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 0}, text = "[Youtuber][VIP]"..player:get_player_name()})
				elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home then
					player:set_nametag_attributes({color = {a = 255, r = 0, g = 0, b = 255}, text = "[Youtuber][Premium]"..player:get_player_name()})
				elseif pri.interact and pri.shout then
					player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 255}, text = "[Youtuber][Member]"..player:get_player_name()})
				else
					player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 0}, text = "[Youtuber][Enemy]"..player:get_player_name()})
				end
			end
			if (oldpos[player:get_player_name()] ~= nil) then
				local playername = player:get_player_name()
				local pos = player:getpos()
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
                end
                if count2 > 500 then
                    player_inv:set_stack("mov2", 1 , "default:dirt")
                    player_inv:add_item("medall", "tutorial:medallion")
                end
            end
            oldpos[player:get_player_name()] = player:getpos()
		end
		timer = 0
	end
end)
minetest.register_craftitem("tutorial:gem_fragment2", {
    description = "Gem fragment (tortoise)",
	inventory_image = "tutorial_gem_fragment2.png",
})
minetest.register_node("tutorial:geschenk_tortoise",{
	description = "Gift (tortoise)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_tortoise.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    drop = "default:coal_lump 20",
})
minetest.register_node("tutorial:geschenk_gem2",{
	description = "Gift (gem tortoise)",
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
local artifacts = {}
artifacts.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    player_inv:set_size("afaf", 5)
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
    local af = 0
	formspec = "size[11.8,7.4]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."label[5.4,1;green artifacts]"
        .."label[5.4,2;blue artifacts]"
        .."label[5.4,3;yellow artifacts]"
        .."label[5.4,4;purple artifacts]"
        .."label[5.4,5;cyan artifacts]"
        .."label[5.4,6;red artifacts]"
        .."label[10.7,7;grey artifacts]"
        for j=1,12,1 do
            for i=1,5,1 do
                local ar = player_inv:get_stack("art"..j, i):get_count()
                if ar == 1 and j == 1 then
                    formspec = formspec .."image["..(-1+i)..",1;0.6,0.6;artifacts_gruen1.png]"
                    af = af+1
                elseif ar == 1 and j == 2 then
                    formspec = formspec .."image["..(6+i)..",1;0.6,0.6;artifacts_gruen2.png]"
                    af = af+1
                elseif ar == 1 and j == 3 then
                    formspec = formspec .."image["..(-1+i)..",2;0.6,0.6;artifacts_blau1.png]"
                    af = af+1
                elseif ar == 1 and j == 4 then
                    formspec = formspec .."image["..(6+i)..",2;0.6,0.6;artifacts_blau2.png]"
                    af = af+1
                elseif ar == 1 and j == 5 then
                    formspec = formspec .."image["..(-1+i)..",3;0.6,0.6;artifacts_gelb1.png]"
                    af = af+1
                elseif ar == 1 and j == 6 then
                    formspec = formspec .."image["..(6+i)..",3;0.6,0.6;artifacts_gelb2.png]"
                    af = af+1
                elseif ar == 1 and j == 7 then
                    formspec = formspec .."image["..(-1+i)..",4;0.6,0.6;artifacts_lila1.png]"
                    af = af+1
                elseif ar == 1 and j == 8 then
                    formspec = formspec .."image["..(6+i)..",4;0.6,0.6;artifacts_lila2.png]"
                    af = af+1
                elseif ar == 1 and j == 9 then
                    formspec = formspec .."image["..(-1+i)..",5;0.6,0.6;artifacts_cyan1.png]"
                    af = af+1
                elseif ar == 1 and j == 10 then
                    formspec = formspec .."image["..(6+i)..",5;0.6,0.6;artifacts_cyan2.png]"
                    af = af+1
                elseif ar == 1 and j == 11 then
                    formspec = formspec .."image["..(-1+i)..",6;0.6,0.6;artifacts_rot1.png]"
                    af = af+1
                elseif ar == 1 and j == 12 then
                    formspec = formspec .."image["..(6+i)..",6;0.6,0.6;artifacts_rot2.png]"
                    af = af+1
                else
                    if j == 1 or j == 3 or j == 5 or j == 7 or j == 9 or j == 11 then
                        formspec = formspec .."image["..(-1+i)..","..math.ceil((j/2))..";0.6,0.6;tutorial_0.png]"
                    else
                        formspec = formspec .."image["..(6+i)..","..math.ceil((j/2))..";0.6,0.6;tutorial_0.png]"
                    end
                end
            end
        end
        for i=1,11,1 do
            local ar = player_inv:get_stack("art13", i):get_count()
            if ar == 1 then
                formspec = formspec .."image["..(-1+i)..",7;0.6,0.6;artifacts_grau"..i..".png]"
                af = af+1
            else
                formspec = formspec .."image["..(-1+i)..",7;0.6,0.6;tutorial_0.png]"
            end
        end
        if af == 71 then
            formspec = formspec .."button[7,0;2,0.5;artrew;Reward]"
        end
        player_inv:set_stack("afaf", 1 , "default:dirt "..af)
        formspec = formspec
        .."label[4,0;"..af.."/71]"
        .."background[8,8.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		
	return formspec		
end
local crafting6 = {}
crafting6.get_formspec = function(player, pos)
    if player:is_player() then
    else
        return
    end
    local player_inv = player:get_inventory()
    player_inv:set_size("uranin", 1)
    player_inv:set_size("cookin", 1)
    player_inv:set_size("cookkey", 1)
    player_inv:set_size("fuel", 1)
    local fuel = player_inv:get_stack("fuel", 1):get_count()
	formspec = "size[8,8.3]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."label[0,1;Fuel:"..fuel.."]"
		.."list[current_player;main;0,4.25;8,1;]"
        .."list[current_player;uranin;1,2;1,1]"
        .."button[2.5,3.3;2,0.5;cook;Craft (MAX)]"
        .."list[current_player;cookin;3,2;1,1]"
        .."label[1.15,2.8;Uranium]"
        .."button[0.5,3.3;2,0.5;fuel;Get Fuel]"
        .."list[current_player;cookkey;6,2;1,1]"
        .."label[6,2.8;Cookingkey]"
        .."list[current_player;main;0,5.5;8,3;8]"
        .."background[10,11.3.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
	return formspec		
end
minetest.register_craftitem("tutorial:fox_schluessel", {
	description = "Foxkey",
	inventory_image = "tutorial_fox_schluessel.png",
})
minetest.override_item("default:obsidian", {
	description = "Obsidian Lv.1",
})
minetest.override_item("default:diamondblock", {
	description = "Diamond block lv.1",
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
	description = "Wallplacer lv.1 (place 3x3 wall)",
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
	description = "Wallplacer lv.2 Mode 2 (place 5x5 wall)",
	inventory_image = "tutorial_block_placer2.png^technic_tool_mode2.png",
    wield_image = "tutorial_block_placer2.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer2_1")
        end
        return itemstack
    end,
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
	description = "Wallplacer lv.2 Mode 1 (place 3x3 wall)",
	inventory_image = "tutorial_block_placer2.png^technic_tool_mode1.png",
    wield_image = "tutorial_block_placer2.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer2_2")
        end
        return itemstack
    end,
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
	description = "Wallplacer lv.3 Mode 1 (place 3x3 wall)",
	inventory_image = "tutorial_block_placer3.png^technic_tool_mode1.png",
    wield_image = "tutorial_block_placer3.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer3_2")
        end
        return itemstack
    end,
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
	description = "Wallplacer lv.3 Mode 2 (place 5x5 wall)",
	inventory_image = "tutorial_block_placer3.png^technic_tool_mode2.png",
    wield_image = "tutorial_block_placer3.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer3_3")
        end
        return itemstack
    end,
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
	description = "Wallplacer lv.3 Mode 3 (place 7x7 wall)",
	inventory_image = "tutorial_block_placer3.png^technic_tool_mode3.png",
    wield_image = "tutorial_block_placer3.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer3_1")
        end
        return itemstack
    end,
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
	description = "Wallplacer lv.4 Mode 1 (place 3x3 wall)",
	inventory_image = "tutorial_block_placer4.png^technic_tool_mode1.png",
    wield_image = "tutorial_block_placer4.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer4_2")
        end
        return itemstack
    end,
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
	description = "Wallplacer lv.4 Mode 2 (place 5x5 wall)",
	inventory_image = "tutorial_block_placer4.png^technic_tool_mode2.png",
    wield_image = "tutorial_block_placer4.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer4_3")
        end
        return itemstack
    end,
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
	description = "Wallplacer lv.4 Mode 3 (place 7x7 wall)",
	inventory_image = "tutorial_block_placer4.png^technic_tool_mode3.png",
    wield_image = "tutorial_block_placer4.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer4_4")
        end
        return itemstack
    end,
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
	description = "Wallplacer lv.4 Mode 4 (place 9x9 wall)",
	inventory_image = "tutorial_block_placer4.png^technic_tool_mode4.png",
    wield_image = "tutorial_block_placer4.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer4_1")
        end
        return itemstack
    end,
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
	description = "Wallplacer lv.MAX Mode 1 (place 3x3 wall)",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode1.png",
    wield_image = "tutorial_block_placer5.png",
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer5_2")
        end
        return itemstack
    end,
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
	description = "Wallplacer lv.MAX Mode 2 (place 5x5 wall)",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode2.png",
    wield_image = "tutorial_block_placer5.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer5_3")
        end
        return itemstack
    end,
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
	description = "Wallplacer lv.MAX Mode 3 (place 7x7 wall)",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode3.png",
    wield_image = "tutorial_block_placer5.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer5_4")
        end
        return itemstack
    end,
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
	description = "Wallplacer lv.MAX Mode 4 (place 9x9 wall)",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode4.png",
    wield_image = "tutorial_block_placer5.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer5_5")
        end
        return itemstack
    end,
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
	description = "Wallplacer lv.MAX Mode 5 (place 11x11 wall)",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode5.png",
    wield_image = "tutorial_block_placer5.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer5_1")
        end
        return itemstack
    end,
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
	description = "Admin tool 9: Wallplacer",
	inventory_image = "tutorial_block_placerAdmin.png^technic_tool_mode1.png",
    wield_image = "tutorial_block_placerAdmin.png",
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:adminwallplacer_2")
        end
        return itemstack
    end,
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
minetest.register_craftitem("tutorial:adminwallplacer_2", {
	description = "Admin tool 9: Wallplacer",
	inventory_image = "tutorial_block_placerAdmin.png^technic_tool_mode2.png",
    wield_image = "tutorial_block_placerAdmin.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:adminwallplacer_3")
        end
        return itemstack
    end,
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
minetest.register_craftitem("tutorial:adminwallplacer_3", {
	description = "Admin tool 9: Wallplacer",
	inventory_image = "tutorial_block_placerAdmin.png^technic_tool_mode3.png",
    wield_image = "tutorial_block_placerAdmin.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:adminwallplacer_4")
        end
        return itemstack
    end,
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
minetest.register_craftitem("tutorial:adminwallplacer_4", {
	description = "Admin tool 9: Wallplacer",
	inventory_image = "tutorial_block_placerAdmin.png^technic_tool_mode4.png",
    wield_image = "tutorial_block_placerAdmin.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:adminwallplacer_5")
        end
        return itemstack
    end,
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
minetest.register_craftitem("tutorial:adminwallplacer_5", {
	description = "Admin tool 9: Wallplacer",
	inventory_image = "tutorial_block_placerAdmin.png^technic_tool_mode5.png",
    wield_image = "tutorial_block_placerAdmin.png",
	groups = {not_in_creative_inventory=1},
    on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:adminwallplacer_1")
        end
        return itemstack
    end,
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
minetest.register_craft({
	output = 'tutorial:gun',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'', 'default:stick', 'group:wood'},
		{'', '', 'default:stick'},
	}
})
local guns = {}
for _, m in pairs({"","_2"}) do
	minetest.register_craft({
		output = 'tutorial:gun_mega1'..m,
		recipe = {
			{'tutorial:obsidian4', 'tutorial:obsidian4', 'tutorial:obsidian4'},
			{'tutorial:obsidian4', 'tutorial:gun'..m, 'tutorial:obsidian4'},
			{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega2'..m,
		recipe = {
			{'tutorial:obsidian4', 'tutorial:obsidian4', 'tutorial:obsidian4'},
			{'tutorial:obsidian4','tutorial:gun_mega1'..m,'tutorial:obsidian4'},
			{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega3'..m,
		recipe = {
			{'tutorial:obsidian5', 'tutorial:obsidian5', 'tutorial:obsidian5'},
			{'tutorial:obsidian5','tutorial:gun_mega2'..m,'tutorial:obsidian5'},
			{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega4'..m,
		recipe = {
			{'tutorial:obsidian6', 'tutorial:obsidian6', 'tutorial:obsidian6'},
			{'tutorial:obsidian6','tutorial:gun_mega3'..m,'tutorial:obsidian6'},
			{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega5'..m,
		recipe = {
			{'tutorial:dunklematerie4','tutorial:dunklematerie4', 'tutorial:dunklematerie4'},
			{'tutorial:dunklematerie4','tutorial:gun_mega4'..m,'tutorial:dunklematerie4'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega6'..m,
		recipe = {
			{'tutorial:dunklematerie4','tutorial:dunklematerie4', 'tutorial:dunklematerie4'},
			{'tutorial:dunklematerie4','tutorial:gun_mega5'..m,'tutorial:dunklematerie4'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega7'..m,
		recipe = {
			{'tutorial:dunklematerie5','tutorial:dunklematerie5', 'tutorial:dunklematerie5'},
			{'tutorial:dunklematerie5','tutorial:gun_mega6'..m,'tutorial:dunklematerie5'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega8'..m,
		recipe = {
			{'tutorial:dunklematerie6','tutorial:dunklematerie6', 'tutorial:dunklematerie6'},
			{'tutorial:dunklematerie6','tutorial:gun_mega7'..m,'tutorial:dunklematerie6'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega9'..m,
		recipe = {
			{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
			{'tutorial:diamondblock2','tutorial:gun_mega8'..m,'tutorial:diamondblock2'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega10'..m,
		recipe = {
			{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
			{'tutorial:diamondblock2','tutorial:gun_mega9'..m,'tutorial:diamondblock2'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega11'..m,
		recipe = {
			{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
			{'tutorial:diamondblock2','tutorial:gun_mega10'..m,'tutorial:diamondblock2'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega12'..m,
		recipe = {
			{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
			{'tutorial:diamondblock2','tutorial:gun_mega11'..m,'tutorial:diamondblock2'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega13'..m,
		recipe = {
			{'default:goldblock','default:goldblock', 'default:goldblock'},
			{'default:goldblock','tutorial:gun_mega12'..m,'default:goldblock'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega14'..m,
		recipe = {
			{'default:nyancat_rainbow','default:nyancat_rainbow', 'default:nyancat_rainbow'},
			{'default:nyancat_rainbow','tutorial:gun_mega13'..m,'default:nyancat_rainbow'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega15'..m,
		recipe = {
			{'default:nyancat_rainbow','default:nyancat_rainbow', 'default:nyancat_rainbow'},
			{'default:nyancat_rainbow','tutorial:gun_mega14'..m,'default:nyancat_rainbow'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega16'..m,
		recipe = {
			{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
			{'tutorial:megablock1','tutorial:gun_mega15'..m,'tutorial:megablock1'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega17'..m,
		recipe = {
			{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
			{'tutorial:megablock1','tutorial:gun_mega16'..m,'tutorial:megablock1'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega18'..m,
		recipe = {
			{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
			{'tutorial:megablock1','tutorial:gun_mega17'..m,'tutorial:megablock1'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega19'..m,
		recipe = {
			{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
			{'tutorial:megablock1','tutorial:gun_mega18'..m,'tutorial:megablock1'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:gun_mega20'..m,
		recipe = {
			{'tutorial:megablock2','tutorial:megablock2', 'tutorial:megablock2'},
			{'tutorial:megablock2','tutorial:gun_mega19'..m,'tutorial:megablock2'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega25'..m,
		recipe = {
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:cloudgun_mega24'..m, 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega24'..m,
		recipe = {
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:cloudgun_mega23'..m, 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega23'..m,
		recipe = {
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:cloudgun_mega22'..m, 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega22'..m,
		recipe = {
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:cloudgun_mega21'..m, 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega21'..m,
		recipe = {
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:cloudgun_mega20'..m, 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega20'..m,
		recipe = {
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:cloudgun_mega19'..m, 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega19'..m,
		recipe = {
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:cloudgun_mega18'..m, 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega18'..m,
		recipe = {
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:cloudgun_mega17'..m, 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega17'..m,
		recipe = {
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:cloudgun_mega16'..m, 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega16'..m,
		recipe = {
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:cloudgun_mega15'..m, 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega15'..m,
		recipe = {
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:cloudgun_mega14'..m, 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega14'..m,
		recipe = {
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:cloudgun_mega13'..m, 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega13'..m,
		recipe = {
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:cloudgun_mega12'..m, 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega12'..m,
		recipe = {
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:cloudgun_mega11'..m, 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega11'..m,
		recipe = {
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:cloudgun_mega10'..m, 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega10'..m,
		recipe = {
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:cloudgun_mega9'..m, 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega9'..m,
		recipe = {
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:cloudgun_mega8'..m, 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega8'..m,
		recipe = {
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:cloudgun_mega7'..m, 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega7'..m,
		recipe = {
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:cloudgun_mega6'..m, 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega6'..m,
		recipe = {
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:cloudgun_mega5'..m, 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega5'..m,
		recipe = {
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
			{'tutorial:superblock5', 'tutorial:cloudgun_mega4'..m, 'tutorial:superblock5'},
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega4'..m,
		recipe = {
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
			{'tutorial:superblock5', 'tutorial:cloudgun_mega3'..m, 'tutorial:superblock5'},
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega3'..m,
		recipe = {
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
			{'tutorial:superblock5', 'tutorial:cloudgun_mega2'..m, 'tutorial:superblock5'},
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega2'..m,
		recipe = {
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
			{'tutorial:superblock5', 'tutorial:cloudgun_mega1'..m, 'tutorial:superblock5'},
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:cloudgun_mega1'..m,
		recipe = {
			{'tutorial:cloudentverner21', 'tutorial:gun_mega20'..m},
		}
	})
	minetest.register_craft({
		output = 'tutorial:supergun4'..m,
		recipe = {
			{'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
			{'tutorial:whiteblock6', 'tutorial:supergun3'..m, 'tutorial:blackblock6'},
			{'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:supergun3'..m,
		recipe = {
			{'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
			{'tutorial:whiteblock6', 'tutorial:supergun2'..m, 'tutorial:blackblock6'},
			{'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:supergun2'..m,
		recipe = {
			{'tutorial:whiteblock5', 'tutorial:thunder', 'tutorial:blackblock5'},
			{'tutorial:whiteblock5', 'tutorial:supergun1'..m, 'tutorial:blackblock5'},
			{'tutorial:whiteblock5', 'tutorial:thunder', 'tutorial:blackblock5'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:supergun1'..m,
		recipe = {
			{'tutorial:zauberstab9', 'tutorial:cloudgun_mega25'..m, 'tutorial:swored_zauber9'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:uraniumgun2'..m,
		recipe = {
			{'tutorial:uranium9', 'tutorial:uranium9', 'tutorial:uranium9'},
			{'tutorial:uranium9', 'tutorial:uraniumgun1'..m, 'tutorial:uranium9'},
			{'tutorial:uranium9', 'tutorial:uranium9', 'tutorial:uranium9'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:uraniumgun1'..m,
		recipe = {
			{'tutorial:uranium8', 'tutorial:uranium8', 'tutorial:uranium8'},
			{'tutorial:uranium8', 'tutorial:supergun4'..m, 'tutorial:uranium8'},
			{'tutorial:uranium8', 'tutorial:uranium8', 'tutorial:uranium8'},
		}
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:energygun12'..m,
		cooktime = 1000,
		output = 'tutorial:superenergygun1'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:superenergygun1'..m,
		cooktime = 1200,
		output = 'tutorial:superenergygun2'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:superenergygun2'..m,
		cooktime = 1400,
		output = 'tutorial:superenergygun3'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:superenergygun3'..m,
		cooktime = 1600,
		output = 'tutorial:superenergygun4'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:superenergygun4'..m,
		cooktime = 1800,
		output = 'tutorial:superenergygun5'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:superenergygun5'..m,
		cooktime = 2000,
		output = 'tutorial:superenergygun6'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:superenergygun6'..m,
		cooktime = 2500,
		output = 'tutorial:superenergygun7'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:uraniumgun2'..m,
		cooktime = 100,
		output = 'tutorial:energygun1'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:energygun1'..m,
		cooktime = 100,
		output = 'tutorial:energygun2'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:energygun2'..m,
		cooktime = 200,
		output = 'tutorial:energygun3'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:energygun3'..m,
		cooktime = 300,
		output = 'tutorial:energygun4'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:energygun4'..m,
		cooktime = 400,
		output = 'tutorial:energygun5'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:energygun5'..m,
		cooktime = 500,
		output = 'tutorial:energygun6'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:energygun6'..m,
		cooktime = 600,
		output = 'tutorial:energygun7'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:energygun7'..m,
		cooktime = 700,
		output = 'tutorial:energygun8'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:energygun8'..m,
		cooktime = 800,
		output = 'tutorial:energygun9'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:energygun9'..m,
		cooktime = 900,
		output = 'tutorial:energygun10'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:energygun10'..m,
		cooktime = 1000,
		output = 'tutorial:energygun11'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:energygun11'..m,
		cooktime = 1500,
		output = 'tutorial:energygun12'..m,
	})
	minetest.register_craft({
		output = 'tutorial:kristallgun5'..m,
		recipe = {
			{'tutorial:admin', 'tutorial:thunder', 'tutorial:admin'},
			{'tutorial:admin', 'tutorial:kristallgun4'..m, 'tutorial:admin'},
			{'tutorial:admin', 'tutorial:thunder', 'tutorial:admin'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:kristallgun4'..m,
		recipe = {
			{'gems:emerald_block', 'tutorial:thunder', 'gems:emerald_block'},
			{'gems:emerald_block', 'tutorial:kristallgun3'..m, 'gems:emerald_block'},
			{'gems:emerald_block', 'tutorial:thunder', 'gems:emerald_block'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:kristallgun3'..m,
		recipe = {
			{'gems:pearl_block', 'tutorial:thunder', 'gems:shadow_block'},
			{'gems:pearl_block', 'tutorial:kristallgun2'..m, 'gems:shadow_block'},
			{'gems:pearl_block', 'tutorial:thunder', 'gems:shadow_block'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:kristallgun2'..m,
		recipe = {
			{'gems:amethyst_block', 'tutorial:thunder', 'gems:amethyst_block'},
			{'gems:amethyst_block', 'tutorial:kristallgun1'..m, 'gems:amethyst_block'},
			{'gems:amethyst_block', 'tutorial:thunder', 'gems:amethyst_block'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:kristallgun1'..m,
		recipe = {
			{'gems:ruby_block', 'tutorial:thunder', 'gems:sapphire_block'},
			{'gems:ruby_block', 'tutorial:superenergygun7'..m, 'gems:sapphire_block'},
			{'gems:ruby_block', 'tutorial:thunder', 'gems:sapphire_block'},
		}
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun24'..m,
		cooktime = 5000,
		output = 'tutorial:ultragun25'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun23'..m,
		cooktime = 4800,
		output = 'tutorial:ultragun24'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun22'..m,
		cooktime = 4600,
		output = 'tutorial:ultragun23'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun21'..m,
		cooktime = 4400,
		output = 'tutorial:ultragun22'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun20'..m,
		cooktime = 4200,
		output = 'tutorial:ultragun21'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun19'..m,
		cooktime = 4000,
		output = 'tutorial:ultragun20'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun18'..m,
		cooktime = 3800,
		output = 'tutorial:ultragun19'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun17'..m,
		cooktime = 3600,
		output = 'tutorial:ultragun18'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun16'..m,
		cooktime = 3400,
		output = 'tutorial:ultragun17'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun15'..m,
		cooktime = 3200,
		output = 'tutorial:ultragun16'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun14'..m,
		cooktime = 3000,
		output = 'tutorial:ultragun15'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun13'..m,
		cooktime = 2800,
		output = 'tutorial:ultragun14'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun12'..m,
		cooktime = 2600,
		output = 'tutorial:ultragun13'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun11'..m,
		cooktime = 2400,
		output = 'tutorial:ultragun12'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun10'..m,
		cooktime = 2200,
		output = 'tutorial:ultragun11'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun9'..m,
		cooktime = 2000,
		output = 'tutorial:ultragun10'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun8'..m,
		cooktime = 1800,
		output = 'tutorial:ultragun9'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun7'..m,
		cooktime = 1600,
		output = 'tutorial:ultragun8'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun6'..m,
		cooktime = 1400,
		output = 'tutorial:ultragun7'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun5'..m,
		cooktime = 1200,
		output = 'tutorial:ultragun6'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun4'..m,
		cooktime = 1000,
		output = 'tutorial:ultragun5'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun3'..m,
		cooktime = 800,
		output = 'tutorial:ultragun4'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun2'..m,
		cooktime = 600,
		output = 'tutorial:ultragun3'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun1'..m,
		cooktime = 400,
		output = 'tutorial:ultragun2'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:kristallgun5'..m,
		cooktime = 200,
		output = 'tutorial:ultragun1'..m,
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'tutorial:ultragun25'..m,
		cooktime = 10000,
		output = 'tutorial:ultragun'..m,
	})
	minetest.register_craft({
		output = 'tutorial:arenagun4'..m,
		recipe = {
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
			{'tutorial:arena_block', 'tutorial:arenagun3'..m, 'tutorial:arena_block'},
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:arenagun3'..m,
		recipe = {
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
			{'tutorial:arena_block', 'tutorial:arenagun2'..m, 'tutorial:arena_block'},
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:arenagun2'..m,
		recipe = {
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
			{'tutorial:arena_block', 'tutorial:arenagun1'..m, 'tutorial:arena_block'},
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:arenagun1'..m,
		recipe = {
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
			{'tutorial:arena_block', 'tutorial:ultragun'..m, 'tutorial:arena_block'},
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:titangun10'..m,
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'tutorial:titangun9'..m, 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'tutorial:titangun9'..m,
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'tutorial:titangun8'..m, 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'tutorial:titangun8'..m,
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'tutorial:titangun7'..m, 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'tutorial:titangun7'..m,
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'tutorial:titangun6'..m, 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'tutorial:titangun6'..m,
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'tutorial:titangun5'..m, 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'tutorial:titangun5'..m,
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'tutorial:titangun4'..m, 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'tutorial:titangun4'..m,
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'tutorial:titangun3'..m, 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'tutorial:titangun3'..m,
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'tutorial:titangun2'..m, 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'tutorial:titangun2'..m,
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'tutorial:titangun1'..m, 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'tutorial:titangun1'..m,
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'tutorial:arenagun4'..m, 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'tutorial:legendengun1'..m,
		recipe = {
			{'tutorial:titangun10'..m, 'default:grass_1', 'default:grass_1', 'tutorial:bottle5'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'tutorial:bottle5', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:legendengun2'..m,
		recipe = {
			{'tutorial:legendengun1'..m, 'default:grass_1', 'default:grass_1', 'tutorial:bottle7'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'tutorial:bottle7', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:legendengun3'..m,
		recipe = {
			{'tutorial:legendengun2'..m, 'default:grass_1', 'default:grass_1', 'tutorial:bottle9'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'tutorial:bottle9', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:legendengun4'..m,
		recipe = {
			{'tutorial:legendengun3'..m, 'default:grass_1', 'default:grass_1', 'tutorial:bottle11'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'tutorial:bottle11', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:legendengun5'..m,
		recipe = {
			{'tutorial:legendengun4'..m, 'default:grass_1', 'default:grass_1', 'tutorial:bottleS1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'tutorial:bottleS1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		}
	})
	minetest.register_craft({
		output = 'tutorial:legendengun6'..m,
		recipe = {
			{'tutorial:legendengun5'..m, 'default:grass_1', 'default:grass_1', 'tutorial:bottleS3'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'tutorial:bottleS3', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		}
	})
end
minetest.register_craft({
	output = 'tutorial:superlegendengun1',
	recipe = {
		{'tutorial:lilabattleaxe2', 'tutorial:legendengun6'},
	}
})
minetest.register_craft({
	output = 'tutorial:superlegendengun2',
	recipe = {
		{'tutorial:lilabattleaxe2', 'tutorial:legendengun6_2'},
	}
})
minetest.register_craft({
	output = 'tutorial:regnumgun1',
	recipe = {
		{'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'tutorial:superlegendengun1', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
	}
})
minetest.register_craft({
	output = 'tutorial:regnumgun2',
	recipe = {
		{'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'tutorial:superlegendengun2', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
	}
})
minetest.register_craft({
	output = 'tutorial:regnumgun3',
	recipe = {
		{'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'tutorial:superlegendengun3', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
	}
})
minetest.register_craft({
    output = 'tutorial:xp_block_yellow 16',
    recipe = {
		{'tutorial:titan','tutorial:admin','tutorial:regnum','tutorial:admin','tutorial:titan'},
    }
})
for i = 1, 100, 1 do
    minetest.register_node("tutorial:level"..i.."_gelb",{
	    tiles  = {"tutorial_level"..i..".png^tutorial_level_gelb.png"},
	    description = "You are now in Level yellow "..i,
	    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,not_in_creative_inventory=1},
    })
end
minetest.register_craftitem("tutorial:coin_gelb", {
    description = "Coin yellow (very rare)",
	inventory_image = "tutorial_coin_gelb.png",
    stack_max = 9999,
})
minetest.register_node("tutorial:levelMAX_gelb",{
	tiles  = {"tutorial_levelMAX.png^tutorial_level_gelb.png"},
	description = "You are now in Level yellow MAX",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
local xpi4 = {}
xpi4.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    local xpi5_inv = minetest.create_detached_inventory(player:get_player_name().."_xpi5",{
        on_take = function(inv, listname, index, stack, player)
			player:get_inventory():remove_item(listname,stack)
		end,
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return stack:get_count()
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
    xpi5_inv:set_size("xpi5", 100)
	player_inv:set_size("xp5", 100)
    for i=1, 100 do
		local stack = player_inv:get_stack("xpi5", i)
		xpi5_inv:set_stack("xpi5", i, stack)
    end
	xpi5_inv:set_size("xpi5", 100)
	player_inv:set_size("xpi5", 100)
	formspec = "size[18,12.3]"
	    .."button[0,0;2,0.5;inven;Back]"
	    .."button[2,0;2,0.5;main;Main]"
        .."list[current_player;main;5,7.5;8,1;]"
		.."list[current_player;main;5,8.75;8,3;8]"
        .."background[18,12.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."list[detached:"..player:get_player_name().."_xpi5;xpi5;0,1.3;18,6]"
        .."listring[current_player;main]" 
	    .."listring[detached:"..player:get_player_name().."_xpi5;xpi5]"
        .."label[0,0.7;Yellow Level Blocks]"
        .."button[7,12;2,0.5;xpi3;<]"
        .."button[9,12;2,0.5;xpi5;>]"
	return formspec		
end
local xpi5 = {}
xpi5.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    local xpi6_inv = minetest.create_detached_inventory(player:get_player_name().."_xpi6",{
        on_take = function(inv, listname, index, stack, player)
			player:get_inventory():remove_item(listname,stack)
		end,
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return stack:get_count()
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
    xpi6_inv:set_size("xpi6", 25)
	player_inv:set_size("xp6", 25)
    for i=1, 25 do
		local stack = player_inv:get_stack("xpi6", i)
		xpi6_inv:set_stack("xpi6", i, stack)
    end
	xpi6_inv:set_size("xpi6", 25)
	player_inv:set_size("xpi6", 25)
	formspec = "size[18,12.3]"
	    .."button[0,0;2,0.5;inven;Back]"
	    .."button[2,0;2,0.5;main;Main]"
        .."list[current_player;main;5,7.5;8,1;]"
		.."list[current_player;main;5,8.75;8,3;8]"
        .."background[18,12.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."list[detached:"..player:get_player_name().."_xpi6;xpi6;0,1.3;18,6]"
        .."listring[current_player;main]" 
	    .."listring[detached:"..player:get_player_name().."_xpi6;xpi6]"
        .."label[0,0.7;Cyan Level Blocks]"
        .."button[7,12;2,0.5;xpi4;<]"
	return formspec		
end
minetest.register_node("tutorial:xp_block_yellow",{
	description = "Xp Block (yellow)",
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
	    local pos = self.object:getpos()
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
			    if not minetest.setting_getbool("creative_mode") then
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
	    local pos = self.object:getpos()
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
			    if not minetest.setting_getbool("creative_mode") then
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
	table.insert(guns, {i,"tutorial:gun_mega"..i,"Mega Gun lv."..i,"tutorial_gun_mega"..i..".png"})
end
for i = 1, 25 do
	table.insert(guns, {i+20,"tutorial:cloudgun_mega"..i,"Cloudgun lv."..i,"tutorial_cloudgun_mega"..i..".png"})
end
for i = 1, 4 do
	table.insert(guns, {i+45,"tutorial:supergun"..i,"Supergun lv."..i,"tutorial_supergun"..i..".png"})
end
for i = 1, 2 do
	table.insert(guns, {i+49,"tutorial:uraniumgun"..i,"Uraniumgun lv."..i,"tutorial_uraniumgun"..i..".png"})
end
for i = 1, 2 do
	table.insert(guns, {i+49,"tutorial:uraniumgun"..i,"Uraniumgun lv."..i,"tutorial_uraniumgun"..i..".png"})
end
for i = 1, 12 do
	table.insert(guns, {i+51,"tutorial:energygun"..i,"Energygun lv."..i,"tutorial_energygun"..i..".png"})
end
for i = 1, 7 do
	table.insert(guns, {i+63,"tutorial:superenergygun"..i,"Superenergygun lv."..i,"tutorial_superenergygun"..i..".png"})
end
for i = 1, 5 do
	table.insert(guns, {i+70,"tutorial:kristallgun"..i,"Crystalgun lv."..i,"tutorial_kristallgun"..i..".png"})
end
for i = 1, 25 do
	table.insert(guns, {i+75,"tutorial:ultragun"..i,"Ultragun lv."..i,"tutorial_ultragun"..i..".png"})
end
table.insert(guns, {101,"tutorial:ultragun","Superultragun","tutorial_superultragun.png"})
for i = 1, 4 do
	table.insert(guns, {i+101,"tutorial:arenagun"..i,"Arenagun lv."..i,"tutorial_arenagun"..i..".png"})
end
for i = 1, 10 do
	table.insert(guns, {i+105,"tutorial:titangun"..i,"Titangun lv."..i,"tutorial_titangun"..i..".png"})
end
for i = 1, 6 do
	table.insert(guns, {i+115,"tutorial:legendengun"..i,"Legendgun lv."..i,"tutorial_legendengun"..i..".png"})
end

for _, m in pairs(guns) do
    minetest.register_tool(m[2], {
	    description = m[3].." Mode 1 (damage to players and no thunder)\nGun-lv."..m[1],
	    inventory_image = m[4].."^technic_tool_mode1.png",
		wield_image = m[4],
		groups = {not_in_creative_inventory=1},
	    on_use = function(itemstack, user, pointed_thing)
		    local inv = user:get_inventory()
		    local pos = user:getpos()
		    local dir = user:get_look_dir()
		    local yaw = user:get_look_yaw()
		    if pos and dir and yaw then
			    pos.y = pos.y + 1.6
			    local obj = minetest.add_entity(pos, "tutorial:tb_"..m[1])
			    if obj then
				    minetest.sound_play("shot", {object=obj})
				    obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				    obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				    obj:setyaw(yaw + math.pi)
				    local ent = obj:get_luaentity()
				    if ent then
					    ent.player = user
				    end
			    end
		    end
		    return itemstack
	    end,
		on_secondary_use = function(itemstack, user, pointed_thing)
			local keys = user:get_player_control()
			if keys["sneak"] == true then
				itemstack:set_name(m[2].."_2")
			end
			return itemstack
		end,
    })
	minetest.register_tool(m[2].."_2", {
	    description = m[3].." Mode 2 (no damage to players and no thunder)\nGun-lv."..m[1],
	    inventory_image = m[4].."^technic_tool_mode2.png",
		wield_image = m[4],
		groups = {not_in_creative_inventory=1},
	    on_use = function(itemstack, user, pointed_thing)
		    local inv = user:get_inventory()
		    local pos = user:getpos()
		    local dir = user:get_look_dir()
		    local yaw = user:get_look_yaw()
		    if pos and dir and yaw then
			    pos.y = pos.y + 1.6
			    local obj = minetest.add_entity(pos, "tutorial:tb2_"..m[1])
			    if obj then
				    minetest.sound_play("shot", {object=obj})
				    obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				    obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				    obj:setyaw(yaw + math.pi)
				    local ent = obj:get_luaentity()
				    if ent then
					    ent.player = user
				    end
			    end
		    end
		    return itemstack
	    end,
		on_secondary_use = function(itemstack, user, pointed_thing)
			local keys = user:get_player_control()
			if keys["sneak"] == true then
				itemstack:set_name(m[2])
			end
			return itemstack
		end,
    })
end
minetest.register_tool("tutorial:superlegendengun1", {
	description = "Superlegendgun Mode 1 (damage to players and no thunder)\nGun-lv.122",
	inventory_image = "tutorial_superlegendengun.png^technic_tool_mode1.png",
    wield_image = "tutorial_superlegendengun.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb_122")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
	on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:superlegendengun3")
        end
        return itemstack
    end,
})
minetest.register_tool("tutorial:superlegendengun2", {
	description = "Superlegendgun Mode 3 (damage to players and thunder)\nGun-lv.122",
	inventory_image = "tutorial_superlegendengun.png^technic_tool_mode3.png",
    wield_image = "tutorial_superlegendengun.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb_124")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
	on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:superlegendengun1")
        end
        return itemstack
    end,
})
minetest.register_tool("tutorial:superlegendengun3", {
	description = "Superlegendgun Mode 2. (no damage to players and no thunder)\nGun-lv.122",
	inventory_image = "tutorial_superlegendengun.png^technic_tool_mode2.png",
    wield_image = "tutorial_superlegendengun.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb2_122")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
	on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:superlegendengun2")
        end
        return itemstack
    end,
})

minetest.register_tool("tutorial:regnumgun1", {
	description = "Regnumgun Mode 1 (damage to players and no thunder)\nGun-lv.MAX",
	inventory_image = "tutorial_regnumgun.png^technic_tool_mode1.png",
    wield_image = "tutorial_regnumgun.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb_123")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
	on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:regnumgun3")
        end
        return itemstack
    end,
})
minetest.register_tool("tutorial:regnumgun2", {
	description = "Regnumgun Mode 3 (damage to players and thunder)\nGun-lv.MAX",
	inventory_image = "tutorial_regnumgun.png^technic_tool_mode3.png",
    wield_image = "tutorial_regnumgun.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb_125")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
	on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:regnumgun1")
        end
        return itemstack
    end,
})

minetest.register_tool("tutorial:regnumgun3", {
	description = "Regnumgun Mode 2 (no damage to players and no thunder)\nGun-lv.MAX",
	inventory_image = "tutorial_regnumgun.png^technic_tool_mode2.png",
    wield_image = "tutorial_regnumgun.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb2_123")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
	on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:regnumgun2")
        end
        return itemstack
    end,
})


minetest.register_tool("tutorial:gun_admin1", {
	description = "Admin tool 11: Gun Mode 1 (damage to players and no thunder)",
	inventory_image = "tutorial_admingun.png^technic_tool_mode1.png",
    wield_image = "tutorial_admingun.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb_126")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
	on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:gun_admin3")
        end
        return itemstack
    end,
})
minetest.register_tool("tutorial:gun_admin2", {
	description = "Admin tool 11: Gun Mode 3 (damage to players and thunder)",
	inventory_image = "tutorial_admingun.png^technic_tool_mode3.png",
    wield_image = "tutorial_admingun.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb_127")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
	on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:gun_admin1")
        end
        return itemstack
    end,
})

minetest.register_tool("tutorial:gun_admin3", {
	description = "Admin tool 11: Gun Mode 2 (no damage to players and no thunder)",
	inventory_image = "tutorial_admingun.png^technic_tool_mode2.png",
    wield_image = "tutorial_admingun.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "tutorial:tb2_126")
			if obj then
				minetest.sound_play("shot", {object=obj})
				obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = user
				end
			end
		end
		return itemstack
	end,
	on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:gun_admin2")
        end
        return itemstack
    end,
})

local mine = {}
mine.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    player_inv:set_size("mine1", 1)
    player_inv:set_size("mine2", 8)
	formspec = "size[10,8.3]"
        .."background[10,8.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
	    .."button[0,0;2,0.5;cr;Back]"
	    .."button[2,0;2,0.5;main;Main]"
        .."list[current_player;mine1;0,1.25;5,1;]"
        .."list[current_player;mine2;1.5,1.25;8,1;]"
        .."label[0,2.2;Mining laser/drill]"
        .."button[4,3;2,0.5;craftmine;Craft]"
        .."label[5,2.2;Green Coins]"
        .."list[current_player;main;1,4.25;8,1;]"
	    .."list[current_player;main;1,5.5;8,3;8]"
	return formspec		
end
local recraft = {}
recraft.get_formspec = function(player,pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    local lv = {
	    {1,     "normal",   5,  "tutorial:obsidian4",           "tutorial:obsidian4",           "tutorial:obsidian4",           "tutorial:obsidian4",           "",     "tutorial:obsidian4",               "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {2,     "normal",   5,  "tutorial:obsidian4",           "tutorial:obsidian4",           "tutorial:obsidian4",           "tutorial:obsidian4",           "",     "tutorial:obsidian4",               "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {3,     "normal",   5,  "tutorial:obsidian5",           "tutorial:obsidian5",           "tutorial:obsidian5",           "tutorial:obsidian5",           "",     "tutorial:obsidian5",               "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {4,     "normal",   5,  "tutorial:obsidian6",           "tutorial:obsidian6",           "tutorial:obsidian6",           "tutorial:obsidian6",           "",     "tutorial:obsidian6",               "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {5,     "normal",   5,  "tutorial:dunklematerie4",      "tutorial:dunklematerie4",      "tutorial:dunklematerie4",      "tutorial:dunklematerie4",      "",     "tutorial:dunklematerie4",          "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {6,     "normal",   5,  "tutorial:dunklematerie4",      "tutorial:dunklematerie4",      "tutorial:dunklematerie4",      "tutorial:dunklematerie4",      "",     "tutorial:dunklematerie4",          "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {7,     "normal",   5,  "tutorial:dunklematerie5",      "tutorial:dunklematerie5",      "tutorial:dunklematerie5",      "tutorial:dunklematerie5",      "",     "tutorial:dunklematerie5",          "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {8,     "normal",   5,  "tutorial:dunklematerie6",      "tutorial:dunklematerie6",      "tutorial:dunklematerie6",      "tutorial:dunklematerie6",      "",     "tutorial:dunklematerie6",          "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {9,     "normal",   5,  "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "",     "tutorial:diamondblock2",           "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {10,    "normal",   5,  "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "",     "tutorial:diamondblock2",           "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {11,    "normal",   5,  "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "",     "tutorial:diamondblock2",           "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {12,    "normal",   5,  "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "",     "tutorial:diamondblock2",           "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {13,    "normal",   5,  "default:goldblock",            "default:goldblock",            "default:goldblock",            "default:goldblock",            "",     "default:goldblock",                "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {14,    "normal",   5,  "nyancat:nyancat_rainbow",      "nyancat:nyancat_rainbow",      "nyancat:nyancat_rainbow",      "nyancat:nyancat_rainbow",      "",     "nyancat:nyancat_rainbow",          "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {15,    "normal",   5,  "nyancat:nyancat_rainbow",      "nyancat:nyancat_rainbow",      "nyancat:nyancat_rainbow",      "nyancat:nyancat_rainbow",      "",     "nyancat:nyancat_rainbow",          "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {16,    "normal",   5,  "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "",     "tutorial:megablock1",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {17,    "normal",   5,  "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "",     "tutorial:megablock1",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {18,    "normal",   5,  "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "",     "tutorial:megablock1",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {19,    "normal",   5,  "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "",     "tutorial:megablock1",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {20,    "normal",   5,  "tutorial:megablock2",          "tutorial:megablock2",          "tutorial:megablock2",          "tutorial:megablock2",          "",     "tutorial:megablock2",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {21,    "normal",   2,  "tutorial:cloudentverner21",    "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {22,    "normal",   5,  "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "",     "tutorial:superblock5",             "tutorial:superblock5", "tutorial:superblock5", "tutorial:superblock5", 0},
        {23,    "normal",   5,  "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "",     "tutorial:superblock5",             "tutorial:superblock5", "tutorial:superblock5", "tutorial:superblock5", 0},
        {24,    "normal",   5,  "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "",     "tutorial:superblock5",             "tutorial:superblock5", "tutorial:superblock5", "tutorial:superblock5", 0},
        {25,    "normal",   5,  "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "",     "tutorial:superblock5",             "tutorial:superblock5", "tutorial:superblock5", "tutorial:superblock5", 0},
        {26,    "normal",   5,  "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "",     "tutorial:superblock6",             "tutorial:superblock6", "tutorial:superblock6", "tutorial:superblock6", 0},
        {27,    "normal",   5,  "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "",     "tutorial:superblock6",             "tutorial:superblock6", "tutorial:superblock6", "tutorial:superblock6", 0},
        {28,    "normal",   5,  "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "",     "tutorial:superblock6",             "tutorial:superblock6", "tutorial:superblock6", "tutorial:superblock6", 0},
        {29,    "normal",   5,  "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "",     "tutorial:superblock6",             "tutorial:superblock6", "tutorial:superblock6", "tutorial:superblock6", 0},
        {30,    "normal",   5,  "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "",     "tutorial:superblock6",             "tutorial:superblock6", "tutorial:superblock6", "tutorial:superblock6", 0},
        {31,    "normal",   5,  "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "",     "tutorial:superblock7",             "tutorial:superblock7", "tutorial:superblock7", "tutorial:superblock7", 0},
        {32,    "normal",   5,  "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "",     "tutorial:superblock7",             "tutorial:superblock7", "tutorial:superblock7", "tutorial:superblock7", 0},
        {33,    "normal",   5,  "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "",     "tutorial:superblock7",             "tutorial:superblock7", "tutorial:superblock7", "tutorial:superblock7", 0},
        {34,    "normal",   5,  "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "",     "tutorial:superblock7",             "tutorial:superblock7", "tutorial:superblock7", "tutorial:superblock7", 0},
        {35,    "normal",   5,  "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "",     "tutorial:superblock7",             "tutorial:superblock7", "tutorial:superblock7", "tutorial:superblock7", 0},
        {36,    "normal",   5,  "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "",     "tutorial:superblock8",             "tutorial:superblock8", "tutorial:superblock8", "tutorial:superblock8", 0},
        {37,    "normal",   5,  "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "",     "tutorial:superblock8",             "tutorial:superblock8", "tutorial:superblock8", "tutorial:superblock8", 0},
        {38,    "normal",   5,  "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "",     "tutorial:superblock8",             "tutorial:superblock8", "tutorial:superblock8", "tutorial:superblock8", 0},
        {39,    "normal",   5,  "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "",     "tutorial:superblock8",             "tutorial:superblock8", "tutorial:superblock8", "tutorial:superblock8", 0},
        {40,    "normal",   5,  "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "",     "tutorial:superblock8",             "tutorial:superblock8", "tutorial:superblock8", "tutorial:superblock8", 0},
        {41,    "normal",   5,  "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "",     "tutorial:superblock9",             "tutorial:superblock9", "tutorial:superblock9", "tutorial:superblock9", 0},
        {42,    "normal",   5,  "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "",     "tutorial:superblock9",             "tutorial:superblock9", "tutorial:superblock9", "tutorial:superblock9", 0},
        {43,    "normal",   5,  "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "",     "tutorial:superblock9",             "tutorial:superblock9", "tutorial:superblock9", "tutorial:superblock9", 0},
        {44,    "normal",   5,  "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "",     "tutorial:superblock9",             "tutorial:superblock9", "tutorial:superblock9", "tutorial:superblock9", 0},
        {45,    "normal",   5,  "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "",     "tutorial:superblock9",             "tutorial:superblock9", "tutorial:superblock9", "tutorial:superblock9", 0},
        {46,    "normal",   2,  "tutorial:zauberstab9",         "",                             "tutorial:swored_zauber9",      "",                             "",     "",                                 "",                     "",                     "",                     0},
        {47,    "normal",   5,  "tutorial:whiteblock5",         "tutorial:thunder",             "tutorial:blackblock5",         "tutorial:whiteblock5",         "",     "tutorial:blackblock5",             "tutorial:whiteblock5", "tutorial:thunder",     "tutorial:blackblock5", 0},
        {48,    "normal",   5,  "tutorial:whiteblock6",         "tutorial:thunder",             "tutorial:blackblock6",         "tutorial:whiteblock6",         "",     "tutorial:blackblock6",             "tutorial:whiteblock6", "tutorial:thunder",     "tutorial:blackblock6", 0},
        {49,    "normal",   5,  "tutorial:whiteblock6",         "tutorial:thunder",             "tutorial:blackblock6",         "tutorial:whiteblock6",         "",     "tutorial:blackblock6",             "tutorial:whiteblock6", "tutorial:thunder",     "tutorial:blackblock6", 0},
        {50,    "normal",   5,  "tutorial:uranium8",            "tutorial:uranium8",            "tutorial:uranium8",            "tutorial:uranium8",            "",     "tutorial:uranium8",                "tutorial:uranium8",    "tutorial:uranium8",    "tutorial:uranium8",    0},
        {51,    "normal",   5,  "tutorial:uranium9",            "tutorial:uranium9",            "tutorial:uranium9",            "tutorial:uranium9",            "",     "tutorial:uranium9",                "tutorial:uranium9",    "tutorial:uranium9",    "tutorial:uranium9",    0},
        {52,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     100},
        {53,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     100},
        {54,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     200},
        {55,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     300},
        {56,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     400},
        {57,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     500},
        {58,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     600},
        {59,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     700},
        {60,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     800},
        {61,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     900},
        {62,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1000},
        {63,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1500},
        {64,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1000},
        {65,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1200},
        {66,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1400},
        {67,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1600},
        {68,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1800},
        {69,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2000},
        {70,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2500},
        {71,    "normal",   5,  "gems:ruby_block",              "tutorial:thunder",             "gems:sapphire_block",          "gems:ruby_block",              "",     "gems:sapphire_block",              "gems:ruby_block",      "tutorial:thunder",     "gems:sapphire_block",  0},
        {72,    "normal",   5,  "gems:amethyst_block",          "tutorial:thunder",             "gems:amethyst_block",          "gems:amethyst_block",          "",     "gems:amethyst_block",              "gems:amethyst_block",  "tutorial:thunder",     "gems:amethyst_block",  0},
        {73,    "normal",   5,  "gems:pearl_block",             "tutorial:thunder",             "gems:shadow_block",            "gems:pearl_block",             "",     "gems:shadow_block",                "gems:pearl_block",     "tutorial:thunder",     "gems:shadow_block",    0},
        {74,    "normal",   5,  "gems:emerald_block",           "tutorial:thunder",             "gems:emerald_block",           "gems:emerald_block",           "",     "gems:emerald_block",               "gems:emerald_block",   "tutorial:thunder",     "gems:emerald_block",   0},
        {75,    "normal",   5,  "tutorial:admin",               "tutorial:thunder",             "tutorial:admin",               "tutorial:admin",               "",     "tutorial:admin",                   "tutorial:admin",       "tutorial:thunder",     "tutorial:admin",       0},
        {76,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     200},
        {77,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     400},
        {78,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     600},
        {79,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     800},
        {80,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1000},
        {81,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1200},
        {82,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1400},
        {83,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1600},
        {84,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1800},
        {85,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2000},
        {86,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2200},
        {87,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2400},
        {88,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2600},
        {89,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2800},
        {90,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3000},
        {91,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3200},
        {92,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3400},
        {93,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3600},
        {94,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3800},
        {95,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4000},
        {96,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4200},
        {97,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4400},
        {98,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4600},
        {99,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4800},
        {100,   "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     5000},
        {101,   "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     10000},
        {102,   "normal",   5,  "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "",     "tutorial:arena_block",             "tutorial:arena_block", "tutorial:arena_block", "tutorial:arena_block", 0},
        {103,   "normal",   5,  "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "",     "tutorial:arena_block",             "tutorial:arena_block", "tutorial:arena_block", "tutorial:arena_block", 0},
        {104,   "normal",   5,  "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "",     "tutorial:arena_block",             "tutorial:arena_block", "tutorial:arena_block", "tutorial:arena_block", 0},
        {105,   "normal",   5,  "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "",     "tutorial:arena_block",             "tutorial:arena_block", "tutorial:arena_block", "tutorial:arena_block", 0},
        {106,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{107,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{108,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{109,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{110,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{111,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{112,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{113,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
        {114,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{115,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{116,   "normal",   1,  "tutorial:bottle5",             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {117,   "normal",   1,  "tutorial:bottle7",             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {118,   "normal",   1,  "tutorial:bottle9",             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {119,   "normal",   1,  "tutorial:bottle11",            "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {120,   "normal",   1,  "tutorial:bottleS1",            "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {121,   "normal",   1,  "tutorial:bottleS3",            "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {122,   "normal",   2,  "tutorial:lilabattleaxe2",      "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {123,   "normal",   0,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
    }
    player_inv:set_size("recr", 1)
    local re = player_inv:get_stack("recr", 1):get_count()
    player_inv:set_size("recr2", 1)
    local re2 = player_inv:get_stack("recr2", 1):get_count()
	formspec = "size[16,12.5]"
		.."button[0,0;2,0.5;zcg;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[16,12.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        if re ~= 0 then
            local pr = ""
            if re2 == 0 then
                pr = "regnum:battleaxe_"
            elseif re2 == 1 then
                pr = "regnum:helmet_"
            elseif re2 == 2 then
                pr = "regnum:chestplate_"
            elseif re2 == 3 then
                pr = "regnum:leggings_"
            elseif re2 == 4 then
                pr = "regnum:boots_"
            elseif re2 == 5 then
                pr = "regnum:shield_"
            elseif re2 == 6 then
                pr = "regnum:gun_"
            end
            if can ~= 1 then
                if lv[re][1] > 115 and lv[re][1] ~= 122 and lv[re][1] ~= 123 then
                    formspec = formspec 
                    .."item_image_button[5,0;1,1;"..pr..""..(lv[re][1]-1)..";;]"
                    .."item_image_button[6,0;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[7,0;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[8,0;1,1;"..lv[re][4]..";zcg:"..lv[re][4]..";]"
                    .."item_image_button[5,1;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[6,1;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[7,1;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[8,1;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[5,2;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[6,2;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[7,2;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[8,2;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[5,3;1,1;"..lv[re][4]..";zcg:"..lv[re][4]..";]"
                    .."item_image_button[6,3;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[7,3;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[8,3;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[11,1;1,1;"..pr..""..lv[re][1]..";;]"
                elseif lv[re][1] == 123 then
                    formspec = formspec 
                    .."item_image_button[7,0;1,1;tutorial:regnum;zcg:tutorial:regnum;]"
                    .."item_image_button[7,1;1,1;tutorial:bottleSS;zcg:tutorial:bottleSS;]"
                    .."item_image_button[5,2;1,1;tutorial:regnum;zcg:tutorial:regnum;]"
                    .."item_image_button[6,2;1,1;tutorial:bottleSS;zcg:tutorial:bottleSS;]"
                    .."item_image_button[7,2;1,1;"..pr..""..(lv[re][1]-1)..";;]"
                    .."item_image_button[8,2;1,1;tutorial:bottleSS;zcg:tutorial:bottleSS;]"
                    .."item_image_button[9,2;1,1;tutorial:regnum;zcg:tutorial:regnum;]"
                    .."item_image_button[7,3;1,1;tutorial:bottleSS;zcg:tutorial:bottleSS;]"
                    .."item_image_button[7,4;1,1;tutorial:regnum;zcg:tutorial:regnum;]"
                    .."item_image_button[11,1;1,1;"..pr..""..lv[re][1]..";;]"
                else
                    if lv[re][4] ~= "" or lv[re][3] == 1 then
                        if lv[re][3]  == 1 then
                            formspec = formspec .."item_image_button[5,0;1,1;"..pr..""..(lv[re][1]-1)..";fia;]"
                        else
                            formspec = formspec .."item_image_button[5,0;1,1;"..lv[re][4]..";zcg:"..lv[re][4]..";]"
                        end
                    end
                    if lv[re][5] ~= "" or lv[re][3] == 2 then
                        if lv[re][3]  == 2 then
                            formspec = formspec .."item_image_button[6,0;1,1;"..pr..""..(lv[re][1]-1)..";fib;]"
                        else
                            formspec = formspec .."item_image_button[6,0;1,1;"..lv[re][5]..";zcg:"..lv[re][5]..";]"
                        end
                    end
                    if lv[re][6] ~= "" or lv[re][3] == 3 then
                        if lv[re][3]  == 3 then
                            formspec = formspec .."item_image_button[7,0;1,1;"..pr..""..(lv[re][1]-1)..";fic;]"
                        else
                            formspec = formspec .."item_image_button[7,0;1,1;"..lv[re][6]..";zcg:"..lv[re][6]..";]"
                        end
                    end
                    if lv[re][7] ~= "" or lv[re][3] == 4 then
                        if lv[re][3]  == 4 then
                            formspec = formspec .."item_image_button[5,1;1,1;"..pr..""..(lv[re][1]-1)..";fid;]"
                        else
                            formspec = formspec .."item_image_button[5,1;1,1;"..lv[re][7]..";zcg:"..lv[re][7]..";]"
                        end
                    end
                    if lv[re][8] ~= "" or lv[re][3] == 5 then
                        if lv[re][3]  == 5 then
                            formspec = formspec .."item_image_button[6,1;1,1;"..pr..""..(lv[re][1]-1)..";fie;]"
                        else
                            formspec = formspec .."item_image_button[6,1;1,1;"..lv[re][8]..";zcg:"..lv[re][8]..";]"
                        end
                    end
                    if lv[re][9] ~= "" or lv[re][3] == 6 then
                        if lv[re][3]  == 6 then
                            formspec = formspec .."item_image_button[7,1;1,1;"..pr..""..(lv[re][1]-1)..";fif;]"
                        else
                            formspec = formspec .."item_image_button[7,1;1,1;"..lv[re][9]..";zcg:"..lv[re][9]..";]"
                        end
                    end
                    if lv[re][10] ~= "" or lv[re][3] == 7 then
                        if lv[re][3]  == 7 then
                            formspec = formspec .."item_image_button[5,2;1,1;"..pr..""..(lv[re][1]-1)..";fig;]"
                        else
                            formspec = formspec .."item_image_button[5,2;1,1;"..lv[re][10]..";zcg:"..lv[re][10]..";]"
                        end
                    end
                    if lv[re][11] ~= "" or lv[re][3] == 8 then
                        if lv[re][3]  == 8 then
                            formspec = formspec .."item_image_button[6,2;1,1;"..pr..""..(lv[re][1]-1)..";fih;]"
                        else
                            formspec = formspec .."item_image_button[6,2;1,1;"..lv[re][11]..";zcg:"..lv[re][11]..";]"
                        end
                    end
                    if lv[re][12] ~= "" or lv[re][3] == 9 then
                        if lv[re][3]  == 9 then
                            formspec = formspec .."item_image_button[7,2;1,1;"..pr..""..(lv[re][1]-1)..";fii;]"
                        else
                            formspec = formspec .."item_image_button[7,2;1,1;"..lv[re][12]..";zcg:"..lv[re][12]..";]"
                        end
                    end
                    formspec = formspec .."item_image_button[11,1;1,1;"..pr..""..lv[re][1]..";;]"
                end
                formspec = formspec .."image[10,2;1,1;zcg_method_"..lv[re][2]..".png]"
                .."image[10,1;1,1;zcg_craft_arrow.png]"
                if lv[re][13] ~= 0 then
                    formspec = formspec .."label[10.1.4,2.7i;"..lv[re][13].."s]"
                end
                
            end
        end
        formspec = formspec
        .."item_image_button[0,1;1,1;regnum:battleaxe_0;reg1;]"
        .."item_image_button[1,1;1,1;regnum:helmet_0;reg2;]"
        .."item_image_button[2,1;1,1;regnum:chestplate_0;reg3;]"
        .."item_image_button[0,2;1,1;regnum:leggings_0;reg4;]"
        .."item_image_button[1,2;1,1;regnum:boots_0;reg5;]"
        .."item_image_button[2,2;1,1;regnum:shield_0;reg6;]"
        .."item_image_button[0,3;1,1;regnum:gun_0;reg7;]"
        .."button[0,5;1,1;recrafta;1]"
        .."button[1,5;1,1;recraftb;2]"
        .."button[2,5;1,1;recraftc;3]"
        .."button[3,5;1,1;recraftd;4]"
        .."button[4,5;1,1;recrafte;5]"
        .."button[5,5;1,1;recraftf;6]"
        .."button[6,5;1,1;recraftg;7]"
        .."button[7,5;1,1;recrafth;8]"
        .."button[8,5;1,1;recrafti;9]"
        .."button[9,5;1,1;recraftj;10]"
        .."button[10,5;1,1;recraftk;11]"
        .."button[11,5;1,1;recraftl;12]"
        .."button[12,5;1,1;recraftm;13]"
        .."button[13,5;1,1;recraftn;14]"
        .."button[14,5;1,1;recrafto;15]"
        .."button[15,5;1,1;recraftp;16]"
        .."button[0,6;1,1;recraftq;17]"
        .."button[1,6;1,1;recraftr;18]"
        .."button[2,6;1,1;recrafts;19]"
        .."button[3,6;1,1;recraftt;20]"
        .."button[4,6;1,1;recraftaa;21]"
        .."button[5,6;1,1;recraftab;22]"
        .."button[6,6;1,1;recraftac;23]"
        .."button[7,6;1,1;recraftad;24]"
        .."button[8,6;1,1;recraftae;25]"
        .."button[9,6;1,1;recraftaf;26]"
        .."button[10,6;1,1;recraftag;27]"
        .."button[11,6;1,1;recraftah;28]"
        .."button[12,6;1,1;recraftai;29]"
        .."button[13,6;1,1;recraftaj;30]"
        .."button[14,6;1,1;recraftak;31]"
        .."button[15,6;1,1;recraftal;32]"
        .."button[0,7;1,1;recraftam;33]"
        .."button[1,7;1,1;recraftan;34]"
        .."button[2,7;1,1;recraftao;35]"
        .."button[3,7;1,1;recraftap;36]"
        .."button[4,7;1,1;recraftaq;37]"
        .."button[5,7;1,1;recraftar;38]"
        .."button[6,7;1,1;recraftas;39]"
        .."button[7,7;1,1;recraftat;40]"
        .."button[8,7;1,1;recraftau;41]"
        .."button[9,7;1,1;recraftav;42]"
        .."button[10,7;1,1;recraftaw;43]"
        .."button[11,7;1,1;recraftax;44]"
        .."button[12,7;1,1;recraftay;45]"
        .."button[13,7;1,1;recraftba;46]"
        .."button[14,7;1,1;recraftbb;47]"
        .."button[15,7;1,1;recraftbc;48]"
        .."button[0,8;1,1;recraftbd;49]"
        .."button[1,8;1,1;recraftca;50]"
        .."button[2,8;1,1;recraftcb;51]"
        .."button[3,8;1,1;recraftda;52]"
        .."button[4,8;1,1;recraftdb;53]"
        .."button[5,8;1,1;recraftdc;54]"
        .."button[6,8;1,1;recraftdd;55]"
        .."button[7,8;1,1;recraftde;56]"
        .."button[8,8;1,1;recraftdf;57]"
        .."button[9,8;1,1;recraftdg;58]"
        .."button[10,8;1,1;recraftdh;59]"
        .."button[11,8;1,1;recraftdi;60]"
        .."button[12,8;1,1;recraftdj;61]"
        .."button[13,8;1,1;recraftdk;62]"
        .."button[14,8;1,1;recraftdl;63]"
        .."button[15,8;1,1;recraftea;64]"
        .."button[0,9;1,1;recrafteb;65]"
        .."button[1,9;1,1;recraftec;66]"
        .."button[2,9;1,1;recrafted;67]"
        .."button[3,9;1,1;recraftee;68]"
        .."button[4,9;1,1;recraftef;69]"
        .."button[5,9;1,1;recrafteg;70]"
        .."button[6,9;1,1;recraftfa;71]"
        .."button[7,9;1,1;recraftfb;72]"
        .."button[8,9;1,1;recraftfc;73]"
        .."button[9,9;1,1;recraftfd;74]"
        .."button[10,9;1,1;recraftfe;75]"
        .."button[11,9;1,1;recraftga;76]"
        .."button[12,9;1,1;recraftgb;77]"
        .."button[13,9;1,1;recraftgc;78]"
        .."button[14,9;1,1;recraftgd;79]"
        .."button[15,9;1,1;recraftge;80]"
        .."button[0,10;1,1;recraftgf;81]"
        .."button[1,10;1,1;recraftgg;82]"
        .."button[2,10;1,1;recraftgh;83]"
        .."button[3,10;1,1;recraftgi;84]"
        .."button[4,10;1,1;recraftgj;85]"
        .."button[5,10;1,1;recraftgk;86]"
        .."button[6,10;1,1;recraftgl;87]"
        .."button[7,10;1,1;recraftgm;88]"
        .."button[8,10;1,1;recraftgn;89]"
        .."button[9,10;1,1;recraftgo;90]"
        .."button[10,10;1,1;recraftgp;91]"
        .."button[11,10;1,1;recraftgq;92]"
        .."button[12,10;1,1;recraftgr;93]"
        .."button[13,10;1,1;recraftgs;94]"
        .."button[14,10;1,1;recraftgt;95]"
        .."button[15,10;1,1;recraftgu;96]"
        .."button[0,11;1,1;recraftgv;97]"
        .."button[1,11;1,1;recraftgw;98]"
        .."button[2,11;1,1;recraftgx;99]"
        .."button[3,11;1,1;recraftgy;100]"
        .."button[4,11;1,1;recraftha;101]"
        .."button[5,11;1,1;recraftia;102]"
        .."button[6,11;1,1;recraftib;103]"
        .."button[7,11;1,1;recraftic;104]"
        .."button[8,11;1,1;recraftid;105]"
        .."button[9,11;1,1;recraftja;106]"
        .."button[10,11;1,1;recraftjb;107]"
        .."button[11,11;1,1;recraftjc;108]"
        .."button[12,11;1,1;recraftjd;109]"
        .."button[13,11;1,1;recraftje;110]"
        .."button[14,11;1,1;recraftjf;111]"
        .."button[15,11;1,1;recraftjg;112]"
        .."button[0,12;1,1;recraftjh;113]"
        .."button[1,12;1,1;recraftji;114]"
        .."button[2,12;1,1;recraftjj;115]"
        .."button[3,12;1,1;recraftka;116]"
        .."button[4,12;1,1;recraftkb;117]"
        .."button[5,12;1,1;recraftkc;118]"
        .."button[6,12;1,1;recraftkd;119]"
        .."button[7,12;1,1;recraftke;120]"
        .."button[8,12;1,1;recraftkf;121]"
        .."button[9,12;1,1;recraftla;122]"
        .."button[10,12;1,1;recraftma;MAX]"
	return formspec
end
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    if fields.artifacts then
		inventory_plus.set_inventory_formspec(player, artifacts.get_formspec(player))
	end
    if fields.crafting6 then
		inventory_plus.set_inventory_formspec(player, crafting6.get_formspec(player))
	end
    if fields.crafting7 then
		inventory_plus.set_inventory_formspec(player, crafting7.get_formspec(player))
	end
    if fields.crafting8 then
		inventory_plus.set_inventory_formspec(player, crafting8.get_formspec(player))
	end
    if fields.treasures then
		inventory_plus.set_inventory_formspec(player, treasures.get_formspec(player))
	end
    if fields.troph then
		inventory_plus.set_inventory_formspec(player, troph.get_formspec(player))
	end
	if fields.backward then
		inventory_plus.set_inventory_formspec(player, backward.get_formspec(player))
	end
    if fields.trophys then
		inventory_plus.set_inventory_formspec(player, trophys.get_formspec(player))
	end
    if fields.fuel then
        local uran = player_inv:get_stack("uranin", 1):get_name()
        local key = player_inv:get_stack("cookkey", 1):get_name()
        fuel2 = 4
        if key == "tutorial:cooking_schluessel1" then
            fuel2 = 5
        elseif key == "tutorial:cooking_schluessel2" then
            fuel2 = 6
        elseif key == "tutorial:cooking_schluessel3" then
            fuel2 = 7
        elseif key == "tutorial:cooking_schluessel4" then
            fuel2 = 8
        end
        local fuel = 0
        if uran == "tutorial:uranium1" then
            fuel = fuel2
        elseif uran == "tutorial:uranium2" then
            fuel = fuel2*2
        elseif uran == "tutorial:uranium3" then
            fuel = fuel2*4
        elseif uran == "tutorial:uranium4" then
            fuel = fuel2*8
        elseif uran == "tutorial:uranium5" then
            fuel = fuel2*16
        elseif uran == "tutorial:uranium6" then
            fuel = fuel2*32
        elseif uran == "tutorial:uranium7" then
            fuel = fuel2*64
        elseif uran == "tutorial:uranium8" then
            fuel = fuel2*128
        elseif uran == "tutorial:uranium9" then
            fuel = fuel2*256
        end
        if (player_inv:get_stack("fuel", 1):get_count()+fuel) > 60000 then
        else
            if fuel > 0 then
                player_inv:set_stack("uranin", 1, uran.." "..(player_inv:get_stack("uranin", 1):get_count()-1))
            end
            player_inv:set_stack("fuel", 1, "default:dirt "..(player_inv:get_stack("fuel", 1):get_count()+fuel))
        end
		inventory_plus.set_inventory_formspec(player, crafting6.get_formspec(player))
	end
    if fields.cook then
        local count = player_inv:get_stack("cookin", 1):get_count()
        local input = player_inv:get_stack("cookin", 1):get_name()
        local time = minetest.get_craft_result({method="cooking", width=1, items={player_inv:get_stack("cookin", 1)}}).time
        local output = minetest.get_craft_result({method="cooking", width=1, items={player_inv:get_stack("cookin", 1)}})
        for i=1,count do
            if player_inv:room_for_item("main", output.item) and output.item:get_count() ~= 0 then
                if (player_inv:get_stack("fuel", 1):get_count()-time) > -1 then
                     player_inv:set_stack("fuel", 1, "default:dirt "..(player_inv:get_stack("fuel", 1):get_count()-time))
                     player_inv:add_item("main",output.item)
                     player_inv:set_stack("cookin", 1, input.." "..(player_inv:get_stack("cookin", 1):get_count()-1))
                end
            end
        end
		inventory_plus.set_inventory_formspec(player, crafting6.get_formspec(player))
	end
    if fields.trophcra then  
        local player_inv = player:get_inventory()
        player_inv:set_size("trophcr", 1)
        player_inv:set_size("tearred", 1)
        player_inv:set_size("tearblue", 1)
        player_inv:set_size("teargreen", 1)
        player_inv:set_size("tearpurple", 1)
        player_inv:set_size("tearyellow", 1)
        player_inv:set_size("tearcyan", 1)
        local name = player_inv:get_stack("trophcr", 1):get_name()
        if name == "tutorial:red_tear" then
            player_inv:remove_item("trophcr", "tutorial:red_tear")
            player_inv:add_item("tearred", "tutorial:medallion")
        end
        if name == "tutorial:blue_tear" then
            player_inv:remove_item("trophcr", "tutorial:blue_tear")
            player_inv:add_item("tearblue", "tutorial:medallion")
        end
        if name == "tutorial:green_tear" then
            player_inv:remove_item("trophcr", "tutorial:green_tear")
            player_inv:add_item("teargreen", "tutorial:medallion")
        end
        if name == "tutorial:yellow_tear" then
            player_inv:remove_item("trophcr", "tutorial:yellow_tear")
            player_inv:add_item("tearyellow", "tutorial:medallion")
        end
        if name == "tutorial:purple_tear" then
            player_inv:remove_item("trophcr", "tutorial:purple_tear")
            player_inv:add_item("tearpurple", "tutorial:medallion")
        end
        if name == "tutorial:cyan_tear" then
            player_inv:remove_item("trophcr", "tutorial:cyan_tear")
            player_inv:add_item("tearcyan", "tutorial:medallion")
        end
		inventory_plus.set_inventory_formspec(player, troph.get_formspec(player))
	end
	if fields.backwardcra then  
        local player_inv = player:get_inventory()
        player_inv:set_size("backward", 1)
		local name = player_inv:get_stack("backward", 1):get_name()
		local item1 = ""
		local item2 = ""
		local item3 = ""
		local item4 = ""
		local re = false
		if name == "3d_armor:superlegendenboots" or name == "3d_armor:superlegendenboots2" or name == "3d_armor:superlegendenboots3" or name == "3d_armor:superlegendenboots4" then
			item1 = "3d_armor:legendenboots6"
			item2 = "tutorial:lilabattleaxe2"
			re = true
		elseif name == "3d_armor:superlegendenchestplate" or name == "3d_armor:superlegendenchestplate2" or name == "3d_armor:superlegendenchestplate3" or name == "3d_armor:superlegendenchestplate4" then
			item1 = "3d_armor:legendenchestplate6"
			item2 = "tutorial:lilabattleaxe2"
			re = true
		elseif name == "3d_armor:superlegendenhelmet" or name == "3d_armor:superlegendenhelmet2" or name == "3d_armor:superlegendenhelmet3" or name == "3d_armor:superlegendenhelmet4" then
			item1 = "3d_armor:legendenhelmet6"
			item2 = "tutorial:lilabattleaxe2"
			re = true
		elseif name == "3d_armor:superlegendenleggings" or name == "3d_armor:superlegendenleggings2" or name == "3d_armor:superlegendenleggings3" or name == "3d_armor:superlegendenleggings4" then
			item1 = "3d_armor:legendenleggings6"
			item2 = "tutorial:lilabattleaxe2"
			re = true
		elseif name == "shields:superlegendenshield" or name == "shields:superlegendenshield2" or name == "shields:superlegendenshield3" or name == "shields:superlegendenshield4" then
			item1 = "shields:legendenshield6"
			item2 = "tutorial:lilabattleaxe2"
			re = true
		elseif name == "tutorial:superlegendengun1" or name == "tutorial:superlegendengun2" then
			item1 = "tutorial:legendengun6"
			item2 = "tutorial:lilabattleaxe2"
			re = true
		elseif name == "tutorial:superlegendengun3" then
			item1 = "tutorial:legendengun6_2"
			item2 = "tutorial:lilabattleaxe2"
			re = true
		elseif name == "3d_armor:regnumboots" or name == "3d_armor:regnumboots2" or name == "3d_armor:regnumboots3" or name == "3d_armor:regnumboots4" then
			item1 = "3d_armor:legendenboots6"
			item2 = "tutorial:lilabattleaxe2"
			item3 = "tutorial:bottleSS 4"
			item4 = "tutorial:regnum 4"
			re = true
		elseif name == "3d_armor:regnumhelmet" or name == "3d_armor:regnumhelmet2" or name == "3d_armor:regnumhelmet3" or name == "3d_armor:regnumhelmet4" then
			item1 = "3d_armor:legendenhelmet6"
			item2 = "tutorial:lilabattleaxe2"
			item3 = "tutorial:bottleSS 4"
			item4 = "tutorial:regnum 4"
			re = true
		elseif name == "3d_armor:regnumleggings" or name == "3d_armor:regnumleggings2" or name == "3d_armor:regnumleggings3" or name == "3d_armor:regnumleggings4" then
			item1 = "3d_armor:legendenleggings6"
			item2 = "tutorial:lilabattleaxe2"
			item3 = "tutorial:bottleSS 4"
			item4 = "tutorial:regnum 4"
			re = true
		elseif name == "3d_armor:regnumchestplate" or name == "3d_armor:regnumchestplate2" or name == "3d_armor:regnumchestplate3" or name == "3d_armor:regnumchestplate4" then
			item1 = "3d_armor:legendenchestplate6"
			item2 = "tutorial:lilabattleaxe2"
			item3 = "tutorial:bottleSS 4"
			item4 = "tutorial:regnum 4"
			re = true
		elseif name == "shields:regnumshield" or name == "shields:regnumshield2" or name == "shields:regnumshield3" or name == "shields:regnumshield4" then
			item1 = "shields:legendenshield6"
			item2 = "tutorial:lilabattleaxe2"
			item3 = "tutorial:bottleSS 4"
			item4 = "tutorial:regnum 4"
			re = true
		elseif name == "tutorial:regnumgun1" or name == "tutorial:regnumgun2" then
			item1 = "tutorial:legendengun6"
			item2 = "tutorial:lilabattleaxe2"
			item3 = "tutorial:bottleSS 4"
			item4 = "tutorial:regnum 4"
			re = true
		elseif name == "tutorial:regnumgun3" then
			item1 = "tutorial:legendengun6_2"
			item2 = "tutorial:lilabattleaxe2"
			item3 = "tutorial:bottleSS 4"
			item4 = "tutorial:regnum 4"
			re = true
		end
		if string.match(name, "tutorial:bag_schluessel") then
			local level = string.gsub(name, "tutorial:bag_schluessel", "")
			if tonumber(level) > 0 and tonumber(level) < 4 then
				item1 = "tutorial:coin_grau "..(level*120)
				item2 = "tutorial:obsidian6 "..level
				item3 = "default:stick 2"
				re = true
			end
		elseif string.match(name, "technic:laser_mkS") then
			local level = string.gsub(name, "technic:laser_mkS", "")
			if tonumber(level) > 0 and tonumber(level) < 150 then
				item1 = "tutorial:coin "..(level-1)*8+3
				item2 = "tutorial:admin"
				item3 = "moreores:mithril_ingot 2"
				re = true
			end
		elseif string.match(name, "technic:drill_mkS") then
			local level = string.gsub(name, "technic:drill_mkS", "")
			local level = string.gsub(level, "_1", "")
			local level = string.gsub(level, "_2", "")
			local level = string.gsub(level, "_3", "")
			local level = string.gsub(level, "_4", "")
			local level = string.gsub(level, "_5", "")
			minetest.chat_send_all(level)
			if tonumber(level) > 0 and tonumber(level) < 150 then
				item1 = "tutorial:coin2 "..(level-1)*8+3
				item2 = "tutorial:admin"
				item3 = "moreores:mithril_ingot 2"
				re = true
			end
		elseif string.match(name, "tutorial:cooking_schluessel") then
			local level = string.gsub(name, "tutorial:cooking_schluessel", "")
			if tonumber(level) > 0 and tonumber(level) < 4 then
				item1 = "tutorial:coin_cyan "..(level-1)*8+6
				re = true
			end
		elseif string.match(name, "tutorial:craft_schluessel") then
			local level = string.gsub(name, "tutorial:craft_schluessel", "")
			if tonumber(level) > 0 and tonumber(level) < 7 then
				item1 = "tutorial:coin_lila "..(level-1)*8+7
				item2 = "default:stick 2"
				re = true
			end
		elseif string.match(name, "tutorial:wallplacer") then
			local level = string.gsub(name, "tutorial:wallplacer", "")
			local level = string.gsub(level, "_1", "")
			local level = string.gsub(level, "_2", "")
			local level = string.gsub(level, "_3", "")
			local level = string.gsub(level, "_4", "")
			local level = string.gsub(level, "_5", "")
			minetest.chat_send_all(level)
			if tonumber(level) > 0 and tonumber(level) < 5 then
				item1 = "tutorial:coin_gelb "..(level-1)*24+8
				re = true
			end
		elseif string.match(name, "tutorial:coin_grau") and name ~= "tutorial:coin_grau" then
			local level = string.gsub(name, "tutorial:coin_grau", "")
			if tonumber(level) > 0 and tonumber(level) < 20 then
				item1 = "tutorial:coin_grau "..(level)*8
				item2 = "tutorial:obsidian6"
				re = true
			end
		end
		if re == true and player_inv:room_for_item("main", item1) and player_inv:room_for_item("main", item2) and player_inv:room_for_item("main", item3) and player_inv:room_for_item("main", item4) then
			player_inv:remove_item("backward", name)
			player_inv:add_item("main", item1)
			player_inv:add_item("main", item2)
			player_inv:add_item("main", item3)
			player_inv:add_item("main", item4)
		end
		inventory_plus.set_inventory_formspec(player, backward.get_formspec(player))
	end
    if fields.cre2 then
		local player_inv = player:get_inventory()
        player_inv:set_size("kri", 8)
        local k = 0
        for i=1, 8 do
		    if not player_inv:get_stack("kri", i):is_empty() then
			    k = k+1
		    end
	    end

        local time = 500
        player_inv:set_stack("crtime", 1, "default:dirt")
        player_inv:set_size("pixkey", 1)
        local name = player_inv:get_stack("pixkey", 1):get_name()
        if name == "tutorial:regnum_key_pixeled" then
            time = time/2
        end
		inventory_plus.set_inventory_formspec(player, crafting8.get_formspec(player))
		minetest.after(time, function()
			if player == nil then
				return
			end	
			local player_inv = player:get_inventory()
			if crafting8.get_formspec(player) == (player:get_inventory_formspec()) then
				inventory_plus.set_inventory_formspec(player, crafting8.get_formspec(player))
			end
			player_inv:set_stack("crtime", 1, nil)
            player_inv:add_item("main", "tutorial:bottle_crystal "..(k+2))
		end)
	end
    if fields.meda1 then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medallion", 1)
        player_inv:set_stack("medallion", 1, "default:dirt")
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.meda2 then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medallion", 1)
        player_inv:set_stack("medallion", 1, "default:dirt 2")
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.meda3 then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medallion", 1)
        player_inv:set_stack("medallion", 1, "default:dirt 3")
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.meda4 then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medallion", 1)
        player_inv:set_stack("medallion", 1, "default:dirt 4")
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.meda5 then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medallion", 1)
        player_inv:set_stack("medallion", 1, "default:dirt 5")
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.meda6 then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medallion", 1)
        player_inv:set_stack("medallion", 1, "default:dirt 6")
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.meda7 then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medallion", 1)
        player_inv:set_stack("medallion", 1, "default:dirt 7")
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.mecraft then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medall", 1)
        local medall = player_inv:get_stack("medall", 1):get_count()
        local medall2 = player_inv:get_stack("medall", 1):get_name()
        if medall > 0 and medall2 == "tutorial:medallion" then
            player_inv:set_size("medall", 1)
            local med = player_inv:get_stack("medallion", 1):get_count()
            local x = ""
            if med == 1 then
                x = "red"
            elseif med == 2 then
                x = "blue"
            elseif med == 3 then
                x = "green"
            elseif med == 4 then
                x = "yellow"
            elseif med == 5 then
                x = "purple"
            elseif med == 6 then
                x = "cyan"
            elseif med == 7 then
                x = "gray"
            end
            local z = math.random(1,2)
            if z == 2 then
                local zz = math.random(1,9)
                player_inv:set_size("medallion"..x, 9)
                player_inv:set_stack("medallion"..x, zz, "default:dirt")
            end
            player_inv:remove_item("medall", "tutorial:medallion")
        end
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.medallion then
		inventory_plus.set_inventory_formspec(player, medallion.get_formspec(player))
	end
    if fields.artrew then
		if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("artrew", 1)
        local artrew = player_inv:get_stack("artrew", 1):get_count()
        if artrew == 0 then
            if player_inv:room_for_item("main", "tutorial:knight_schluessel") == true then
                player_inv:add_item("main", "tutorial:knight_schluessel")
                player_inv:add_item("artrew", "default:dirt")
            end
        end
	end
    if fields.trerew then
		if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("trerew", 1)
        local trerew = player_inv:get_stack("trerew", 1):get_count()
        if trerew == 0 then
            if player_inv:room_for_item("main", "tutorial:legendstick") == true then
                player_inv:add_item("main", "tutorial:legendstick")
                player_inv:add_item("trerew", "default:dirt")
            end
        end
	end
    if fields.medrew then
		if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medrew", 1)
        local medrew = player_inv:get_stack("medrew", 1):get_count()
        if medrew == 0 then
            if player_inv:room_for_item("main", "tutorial:crystal_schluessel") == true then
                player_inv:add_item("main", "tutorial:crystal_schluessel")
                player_inv:add_item("medrew", "default:dirt")
            end
        end
	end
    if fields.trorew then
		if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("trorew", 1)
        local trorew = player_inv:get_stack("trorew", 1):get_count()
        if trorew == 0 then
            if player_inv:room_for_item("main", "tutorial:protection_schluessel1") == true then
                player_inv:add_item("main", "tutorial:protection_schluessel1")
                player_inv:add_item("trorew", "default:dirt")
            end
        end
	end
    if fields.colreward then
		if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("colreward", 1)
        local colreward = player_inv:get_stack("colreward", 1):get_count()
        local tata = player_inv:get_stack("tata", 1):get_count()
        local afaf = player_inv:get_stack("afaf", 1):get_count()
        local trtr = player_inv:get_stack("trtr", 1):get_count()
        local meme = player_inv:get_stack("meme", 1):get_count()
        local rew = tata+afaf+trtr+meme
        if rew == 108 then
            if colreward == 0 then
                if player_inv:room_for_item("main", "tutorial:colorstick_broken") == true then
                    player_inv:add_item("main", "tutorial:colorstick_broken")
                    player_inv:add_item("colreward", "default:dirt")
                end
            end
        end
	end
    if fields.craftmine then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("mine1", 1)
        player_inv:set_size("mine2", 8)
        local gem = player_inv:get_stack("gem0", 1):get_count()
	    local g1 = player_inv:get_stack("mine2", 1):get_name()
        local g2 = player_inv:get_stack("mine2", 2):get_name()
        local g3 = player_inv:get_stack("mine2", 3):get_name()
        local g4 = player_inv:get_stack("mine2", 4):get_name()
        local g5 = player_inv:get_stack("mine2", 5):get_name()
        local g6 = player_inv:get_stack("mine2", 6):get_name()
        local g7 = player_inv:get_stack("mine2", 7):get_name()
        local g8 = player_inv:get_stack("mine2", 8):get_name()
        local y1 = player_inv:get_stack("mine2", 1):get_count()
		local y2 = player_inv:get_stack("mine2", 2):get_count()
		local y3 = player_inv:get_stack("mine2", 3):get_count()
		local y4 = player_inv:get_stack("mine2", 4):get_count()
		local y5 = player_inv:get_stack("mine2", 5):get_count()
		local y6 = player_inv:get_stack("mine2", 6):get_count()
		local y7 = player_inv:get_stack("mine2", 7):get_count()
		local y8 = player_inv:get_stack("mine2", 8):get_count()
        local k = 0
        local d = 0
        if g1 == g2 and g2 == g3 and g3 == g4 and g4 == g5 and g5 == g6 and g6 == g7 and g7 == g8 then
            if g1 == "tutorial:coin" then
                k = k+1
            end
            if g1 == "tutorial:coin2" then
                k = k+2
            end
        end
        if k == 1 then
            local p = 0
            for i = 1, 149 do
                if player_inv:get_stack("mine1", 1):get_name() == "technic:laser_mkS"..i and p == 0 then
                    p = 1
                    player_inv:set_stack("mine2", 1, "tutorial:coin "..(y1-1))
                    player_inv:set_stack("mine2", 2, "tutorial:coin "..(y2-1))
                    player_inv:set_stack("mine2", 3, "tutorial:coin "..(y3-1))
                    player_inv:set_stack("mine2", 4, "tutorial:coin "..(y4-1))
                    player_inv:set_stack("mine2", 5, "tutorial:coin "..(y5-1))
                    player_inv:set_stack("mine2", 6, "tutorial:coin "..(y6-1))
                    player_inv:set_stack("mine2", 7, "tutorial:coin "..(y7-1))
                    player_inv:set_stack("mine2", 8, "tutorial:coin "..(y8-1))
                    player_inv:set_stack("mine1", 1, "technic:laser_mkS"..(i+1))
                end
            end
        end
        if k == 2 then
			local p = 0
            for i = 1, 149 do
                local m = player_inv:get_stack("mine1", 1):get_name()
                if p == 0 then
					if m == "technic:drill_mkS"..i.."_1" or m == "technic:drill_mkS"..i.."_2" or m == "technic:drill_mkS"..i.."_3" or m == "technic:drill_mkS"..i.."_4" or m == "technic:drill_mkS"..i.."_5" or m == "technic:drill_mkS"..i then
						p = 1
						player_inv:set_stack("mine2", 1, "tutorial:coin2 "..(y1-1))
						player_inv:set_stack("mine2", 2, "tutorial:coin2 "..(y2-1))
						player_inv:set_stack("mine2", 3, "tutorial:coin2 "..(y3-1))
						player_inv:set_stack("mine2", 4, "tutorial:coin2 "..(y4-1))
						player_inv:set_stack("mine2", 5, "tutorial:coin2 "..(y5-1))
						player_inv:set_stack("mine2", 6, "tutorial:coin2 "..(y6-1))
						player_inv:set_stack("mine2", 7, "tutorial:coin2 "..(y7-1))
						player_inv:set_stack("mine2", 8, "tutorial:coin2 "..(y8-1))
						player_inv:set_stack("mine1", 1, "technic:drill_mkS"..(i+1))
					end
                end
            end
        end
		inventory_plus.set_inventory_formspec(player, mine.get_formspec(player))
	end
    if fields.xpi4 then
		inventory_plus.set_inventory_formspec(player, xpi4.get_formspec(player))
	end
    if fields.xpi5 then
		inventory_plus.set_inventory_formspec(player, xpi5.get_formspec(player))
	end
    if fields.mine then
		inventory_plus.set_inventory_formspec(player, mine.get_formspec(player))
	end
	if fields.recraft then
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.reg1 then
        player_inv:set_size("recr2", 1)
        player_inv:set_stack("recr2", 1, "")
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.reg2 then
        player_inv:set_size("recr2", 1)
        player_inv:set_stack("recr2", 1, "default:dirt "..1)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.reg3 then
        player_inv:set_size("recr2", 2)
        player_inv:set_stack("recr2", 1, "default:dirt "..2)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.reg4 then
        player_inv:set_size("recr2", 2)
        player_inv:set_stack("recr2", 1, "default:dirt "..3)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.reg5 then
        player_inv:set_size("recr2", 2)
        player_inv:set_stack("recr2", 1, "default:dirt "..4)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.reg6 then
        player_inv:set_size("recr2", 2)
        player_inv:set_stack("recr2", 1, "default:dirt "..5)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.reg7 then
        player_inv:set_size("recr2", 2)
        player_inv:set_stack("recr2", 1, "default:dirt "..6)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafta then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..1)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..2)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftc then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..3)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftd then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..4)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafte then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..5)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftf then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..6)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftg then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..7)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafth then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..8)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafti then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..9)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftj then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..10)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftk then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..11)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftl then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..12)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftm then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..13)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftn then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..14)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafto then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..15)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftp then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..16)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftq then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..17)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftr then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..18)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafts then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..19)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftt then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..20)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftaa then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..21)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftab then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..22)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftac then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..23)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftad then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..24)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftae then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..25)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftaf then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..26)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftag then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..27)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftah then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..28)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftai then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..29)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftaj then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..30)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftak then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..31)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftal then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..32)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftam then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..33)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftan then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..34)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftao then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..35)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftap then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..36)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftaq then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..37)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftar then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..38)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftas then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..39)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftat then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..40)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftau then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..41)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftav then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..42)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftaw then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..43)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftax then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..44)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftay then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..45)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftba then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..46)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftbb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..47)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftbc then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..48)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftbd then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..49)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftca then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..50)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftcb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..51)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftda then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..52)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..53)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdc then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..54)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdd then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..55)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftde then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..56)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdf then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..57)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdg then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..58)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdh then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..59)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdi then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..60)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdj then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..61)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdk then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..62)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdl then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..63)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftea then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..64)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafteb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..65)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftec then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..66)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafted then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..67)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftee then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..68)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftef then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..69)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafteg then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..70)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftfa then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..71)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftfb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..72)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftfc then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..73)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftfd then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..74)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftfe then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..75)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftga then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..76)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..77)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgc then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..78)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgd then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..79)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftge then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..80)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgf then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..81)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgg then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..82)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgh then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..83)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgi then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..84)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgj then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..85)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgk then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..86)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgl then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..87)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgm then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..88)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgn then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..89)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgo then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..90)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgp then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..91)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgq then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..92)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgr then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..93)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgs then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..94)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgt then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..95)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgu then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..96)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgv then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..97)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgw then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..98)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgx then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..99)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgy then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..100)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftha then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..101)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftia then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..102)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftib then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..103)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftic then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..104)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftid then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..105)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftja then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..106)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftjb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..107)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftjc then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..108)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftjd then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..109)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftje then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..110)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftjf then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..111)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftjg then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..112)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftjh then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..113)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftji then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..114)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftjj then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..115)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftka then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..116)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftkb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..117)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftkc then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..118)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftkd then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..119)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftke then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..120)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftkf then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..121)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftla then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..122)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftma then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..123)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
end)
minetest.register_tool("tutorial:adminbattleaxe3", {
	description = "Admin tool 3: Admin battleaxe Mode 3 (for hunting mobs)",
	inventory_image = "tutorial_adminbattleaxe.png^technic_tool_mode3.png",
    wield_image = "tutorial_adminbattleaxe.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=4000}
	},
	liquids_pointable = false,
	on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:adminbattleaxe")
        end
        return itemstack
    end,
})
minetest.register_tool("tutorial:superlegendenbattleaxe3", {
	description = "Superlegendbattleaxe Mode 3 (for hunting mobs)\nBattleaxe-lv.122",
	inventory_image = "tutorial_superlegendenbattleaxe.png^technic_tool_mode3.png",
    wield_image = "tutorial_superlegendenbattleaxe.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=244}
	},
	liquids_pointable = false,
	on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:superlegendenbattleaxe1")
        end
        return itemstack
    end,
})
minetest.register_tool("tutorial:regnumbattleaxe3", {
	description = "Regnumbattleaxe Mode 3 (for hunting mobs)\nBattleaxe-lv.MAX",
	inventory_image = "tutorial_regnumbattleaxe.png^technic_tool_mode3.png",
    wield_image = "tutorial_regnumbattleaxe.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=150}
	},
	liquids_pointable = false,
	on_secondary_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:regnumbattleaxe1")
        end
        return itemstack
    end,
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
	description = "Ultra magic bottle",
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