--Copyright by 1248
--Textures  by 1248 & ....
--Code		by 1248
--Ideas	    by 1248 & ....

minetest.register_on_joinplayer(function(player)
	name = player:get_player_name()
	player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=10},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "Minetest Version	    :  0.4.13",
	})
	player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=30},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "Modpack Version	  :  1.0.5",
	})
end)



minetest.register_craft({
        output = 'tutorial:regnumbattleaxe1',
        recipe = {
                {'tutorial:regnum', 'tutorial:regnum', 'tutorial:regnum', 'tutorial:regnum', 'tutorial:regnum'},
				{'tutorial:regnum', 'tutorial:regnum', 'tutorial:regnum', 'tutorial:regnum', 'tutorial:regnum'},
				{'tutorial:regnum', 'tutorial:regnum', 'tutorial:superlegendenbattleaxe1', 'tutorial:regnum', 'tutorial:regnum'},
				{'tutorial:regnum', 'tutorial:regnum', 'tutorial:regnum', 'tutorial:regnum', 'tutorial:regnum'},
				{'tutorial:regnum', 'tutorial:regnum', 'tutorial:regnum', 'tutorial:regnum', 'tutorial:regnum'},
        }
})

minetest.register_craftitem("tutorial:regnum", {
	description = "Regnum",
	inventory_image = "tutorial_regnum.png",
})

minetest.register_node("tutorial:stone_with_regnum", {
	description = "Regnum ore",
	tiles = {"default_stone.png^tutorial_regnum_ore.png"},
	is_ground_content = true,
	groups = {cracky=10},
	drop = 'tutorial:regnum',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_regnum",
	wherein        = "default:stone",
	clust_scarcity = 30*30*30,
	clust_num_ores = 1,
	clust_size     = 1,
	height_min     = -31000,
	height_max     = -2000,
	flags          = "absheight",
})
minetest.register_craft({
        output = 'tutorial:regnumbattleaxe2',
        recipe = {
                {'tutorial:regnumbattleaxe1', '', ''},
				{'', '', ''},
				{'', '', ''},
        }
})
minetest.register_craft({
        output = 'tutorial:regnumbattleaxe1',
        recipe = {
                {'tutorial:regnumbattleaxe2', '', ''},
				{'', '', ''},
				{'', '', ''},
        }
})
minetest.register_tool("tutorial:regnumbattleaxe1", {
	description = "Regnumbattleaxe mode 1. Can dig water/lava",
	inventory_image = "tutorial_regnumbattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=5.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=1000}
	},
	liquids_pointable = true,
})


minetest.register_tool("tutorial:regnumbattleaxe2", {
	description = "Regnumbattleaxe mode 2. Can not dig water/lava",
	inventory_image = "tutorial_regnumbattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=5.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=1000}
	},
	liquids_pointable = false,
})




minetest.register_craft({
        output = 'tutorial:superlegendenbattleaxe1',
        recipe = {
                {'tutorial:lilabattleaxe2', 'tutorial:legendenbattleaxe6', ''},
				{'', '', ''},
				{'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:superlegendenbattleaxe2',
        recipe = {
                {'tutorial:superlegendenbattleaxe1', '', ''},
				{'', '', ''},
				{'', '', ''},
        }
})
minetest.register_craft({
        output = 'tutorial:superlegendenbattleaxe1',
        recipe = {
                {'tutorial:superlegendenbattleaxe2', '', ''},
				{'', '', ''},
				{'', '', ''},
        }
})
minetest.register_tool("tutorial:superlegendenbattleaxe1", {
	description = "Superlegendbattleaxe mode 1. Can dig water/lava",
	inventory_image = "tutorial_superlegendenbattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=122}
	},
	liquids_pointable = true,
})
minetest.register_tool("tutorial:superlegendenbattleaxe2", {
	description = "Superlegendbattleaxe mode 2. Can not dig water/lava",
	inventory_image = "tutorial_superlegendenbattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=122}
	},
	liquids_pointable = false,
})



minetest.register_craft({
        output = 'tutorial:lilabattleaxe2',
        recipe = {
                {'tutorial:lila_erz3', 'tutorial:lila_erz3', 'tutorial:lila_erz3'},
				{'tutorial:waterbattleaxe', 'tutorial:lilabattleaxe', 'tutorial:lavabattleaxe'},
				{'tutorial:lila_erz3', 'tutorial:lila_erz3', 'tutorial:lila_erz3'},
        }
})
minetest.override_item("default:water_source", {
	groups = {water=3, liquid=3, puts_out_fire=1, cracky = 14},
	drop = "default:water_source",
	diggable = true,
})
minetest.override_item("default:lava_source", {
	groups = {lava=3, liquid=2, hot=3, igniter=1, cracky = 14},
	drop = "default:lava_source",
	diggable = true,
})
minetest.register_tool("tutorial:lilabattleaxe2", {
	description = "Purplebattleaxe Lv.2",
	inventory_image = "tutorial_lilabattleaxe2.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={	
	cracky  = {times={[13]=0,[14]=0}, uses=0, maxlevel=3},
	},
		damage_groups = {fleshy=10}
	},
	liquids_pointable = true,
})
minetest.register_craftitem("tutorial:waterbattleaxe", {
	description = "Waterbattleaxe",
	inventory_image = "tutorial_waterbattleaxe.png",
	stack_max = 1,
	liquids_pointable = true,
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if pointed_thing.type ~= "node" then
			return
		end
		local nodes = minetest.get_node(pointed_thing.under)
		local name = nodes.name
		if name == "default:water_source" then
		  minetest.add_node(pointed_thing.under, {name="air"})
		  inv:add_item("main", "default:water_source")
		end
	end,
})
minetest.register_craftitem("tutorial:lavabattleaxe", {
	description = "Lavabattleaxe",
	inventory_image = "tutorial_lavabattleaxe.png",
	stack_max = 1,
	liquids_pointable = true,
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if pointed_thing.type ~= "node" then
			return
		end
		local nodes = minetest.get_node(pointed_thing.under)
		local name = nodes.name
		if name == "default:lava_source" then
		  minetest.add_node(pointed_thing.under, {name="air"})
		  inv:add_item("main", "default:lava_source")
		end
	end,
})

minetest.register_craft({
        output = 'tutorial:lavabattleaxe',
        recipe = {
                {'tutorial:rot_erz', 'tutorial:rot_erz', 'tutorial:rot_erz'},
				{'tutorial:rot_erz', 'default:stick', 'tutorial:rot_erz'},
				{'', 'default:stick', ''},
        }
})
minetest.register_craft({
        output = 'tutorial:waterbattleaxe',
        recipe = {
                {'tutorial:blau_erz', 'tutorial:blau_erz', 'tutorial:blau_erz'},
				{'tutorial:blau_erz', 'default:stick', 'tutorial:blau_erz'},
				{'', 'default:stick', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:lila_erz2',
        recipe = {
                {'tutorial:lila_erz1', 'tutorial:lila_erz1', ''},
				{'tutorial:lila_erz1', 'tutorial:lila_erz1', ''},
				{'', '', ''},
        }
})
minetest.register_craft({
        output = 'tutorial:lila_erz3',
        recipe = {
                {'tutorial:lila_erz2', 'tutorial:lila_erz2', ''},
				{'tutorial:lila_erz2', 'tutorial:lila_erz2', ''},
				{'', '', ''},
        }
})
minetest.register_craft({
        output = 'tutorial:lila_erz1',
        recipe = {
                {'tutorial:blau_erz', 'tutorial:rot_erz'},
        }
})
minetest.register_craft({
        output = 'tutorial:lila_erz1',
        recipe = {
                {'tutorial:rot_erz', 'tutorial:blau_erz'},
        }
})
minetest.register_craftitem("tutorial:lila_erz1", {
	description = "Purple Lv.1",
	inventory_image = "tutorial_lila_erz1.png",
})
minetest.register_craftitem("tutorial:lila_erz2", {
	description = "Purple Lv.2",
	inventory_image = "tutorial_lila_erz2.png",
})
minetest.register_craftitem("tutorial:lila_erz3", {
	description = "Purple Lv.3",
	inventory_image = "tutorial_lila_erz3.png",
})

minetest.register_craft({
        output = 'tutorial:legendenbattleaxe1',
        recipe = {
                {'tutorial:titanbattleaxe10', 'tutorial:bottle5', 'tutorial:bottle5', 'tutorial:bottle5'},
				{'tutorial:bottle5', 'tutorial:bottle5', 'tutorial:bottle5', 'tutorial:bottle5'},
				{'tutorial:bottle5', 'tutorial:bottle5', 'tutorial:bottle5', 'tutorial:bottle5'},
				{'tutorial:bottle5', 'tutorial:bottle5', 'tutorial:bottle5', 'tutorial:bottle5'},
        }
})
minetest.register_craft({
        output = 'tutorial:legendenbattleaxe2',
        recipe = {
                {'tutorial:legendenbattleaxe1', 'tutorial:bottle7', 'tutorial:bottle7', 'tutorial:bottle7'},
				{'tutorial:bottle7', 'tutorial:bottle7', 'tutorial:bottle7', 'tutorial:bottle7'},
				{'tutorial:bottle7', 'tutorial:bottle7', 'tutorial:bottle7', 'tutorial:bottle7'},
				{'tutorial:bottle7', 'tutorial:bottle7', 'tutorial:bottle7', 'tutorial:bottle7'},
        }
})
minetest.register_craft({
        output = 'tutorial:legendenbattleaxe3',
        recipe = {
                {'tutorial:legendenbattleaxe2', 'tutorial:bottle9', 'tutorial:bottle9', 'tutorial:bottle9'},
				{'tutorial:bottle9', 'tutorial:bottle9', 'tutorial:bottle9', 'tutorial:bottle9'},
				{'tutorial:bottle9', 'tutorial:bottle9', 'tutorial:bottle9', 'tutorial:bottle9'},
				{'tutorial:bottle9', 'tutorial:bottle9', 'tutorial:bottle9', 'tutorial:bottle9'},
        }
})
minetest.register_craft({
        output = 'tutorial:legendenbattleaxe4',
        recipe = {
                {'tutorial:legendenbattleaxe3', 'tutorial:bottle11', 'tutorial:bottle11', 'tutorial:bottle11'},
				{'tutorial:bottle11', 'tutorial:bottle11', 'tutorial:bottle11', 'tutorial:bottle11'},
				{'tutorial:bottle11', 'tutorial:bottle11', 'tutorial:bottle11', 'tutorial:bottle11'},
				{'tutorial:bottle11', 'tutorial:bottle11', 'tutorial:bottle11', 'tutorial:bottle11'},
        }
})
minetest.register_craft({
        output = 'tutorial:legendenbattleaxe5',
        recipe = {
                {'tutorial:legendenbattleaxe4', 'tutorial:bottleS1', 'tutorial:bottleS1', 'tutorial:bottleS1'},
				{'tutorial:bottleS1', 'tutorial:bottleS1', 'tutorial:bottleS1', 'tutorial:bottleS1'},
				{'tutorial:bottleS1', 'tutorial:bottleS1', 'tutorial:bottleS1', 'tutorial:bottleS1'},
				{'tutorial:bottleS1', 'tutorial:bottleS1', 'tutorial:bottleS1', 'tutorial:bottleS1'},
        }
})
minetest.register_craft({
        output = 'tutorial:legendenbattleaxe6',
        recipe = {
                {'tutorial:legendenbattleaxe5', 'tutorial:bottleS3', 'tutorial:bottleS3', 'tutorial:bottleS3'},
				{'tutorial:bottleS3', 'tutorial:bottleS3', 'tutorial:bottleS3', 'tutorial:bottleS3'},
				{'tutorial:bottleS3', 'tutorial:bottleS3', 'tutorial:bottleS3', 'tutorial:bottleS3'},
				{'tutorial:bottleS3', 'tutorial:bottleS3', 'tutorial:bottleS3', 'tutorial:bottleS3'},
        }
})

minetest.register_tool("tutorial:legendenbattleaxe1", {
	description = "Legendbattleaxe Lv.1",
	inventory_image = "tutorial_legendenbattleaxe1.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=5.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=116}
	},
})
minetest.register_tool("tutorial:legendenbattleaxe2", {
	description = "Legendbattleaxe Lv.2",
	inventory_image = "tutorial_legendenbattleaxe2.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=4.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=117}
	},
})
minetest.register_tool("tutorial:legendenbattleaxe3", {
	description = "Legendbattleaxe Lv.3",
	inventory_image = "tutorial_legendenbattleaxe3.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=3.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=118}
	},
})
minetest.register_tool("tutorial:legendenbattleaxe4", {
	description = "Legendbattleaxe Lv.4",
	inventory_image = "tutorial_legendenbattleaxe4.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=2.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=119}
	},
})
minetest.register_tool("tutorial:legendenbattleaxe5", {
	description = "Legendbattleaxe Lv.5",
	inventory_image = "tutorial_legendenbattleaxe5.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=1.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=120}
	},
})
minetest.register_tool("tutorial:legendenbattleaxe6", {
	description = "Legendbattleaxe Lv.6",
	inventory_image = "tutorial_legendenbattleaxe6.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=121}
	},
})

minetest.register_on_dignode(function(pos, node, player)
	local dig1 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","default:clay"}
	local dig2 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","default:clay"}
	local dig3 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","default:clay"}
	local dig4 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","default:clay"}
	local dig5 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","tutorial:stone_with_titan","default:clay"}
    local dig6 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","tutorial:stone_with_titan","tutorial:stone_with_rot","tutorial:stone_with_blau","default:clay"}
    local dig7 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","tutorial:stone_with_titan","tutorial:stone_with_rot","tutorial:stone_with_blau","default:lava_source","default:water_source","default:clay"}
	local dig8 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","tutorial:stone_with_titan","tutorial:stone_with_rot","tutorial:stone_with_blau","default:lava_source","default:water_source","default:cobble","default:stone","default:dirt","default:sand","default:desert_sand","default:desert_stone","default:clay","default:dirt_with_grass","default:gravel"}	
	local name, tool, drops, i, drop, drop_name
	if player == nil then
        return
    end	
	local inv = player:get_inventory()
    tool = player:get_wielded_item():get_name()
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
	  print "hit"
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
      for _,node_name in ipairs(dig7) do
	    if drops == node_name then
		  droping = minetest.get_node_drops(node.name)
		  for _, itemname in ipairs(droping) do
			 print(itemname)
			 inv:add_item("main", itemname)
		  end
		end
	  end
	end
	if tool == "tutorial:regnumbattleaxe1" or tool == "tutorial:regnumbattleaxe2" then
      for _,node_name in ipairs(dig8) do
	    if drops == node_name then
		  droping = minetest.get_node_drops(node.name)
		  for _, itemname in ipairs(droping) do
			 print(itemname)
			 inv:add_item("main", itemname)
		  end
		end
	  end
	end
end)
--Version 0.23.3
local old_entities = {"mobs:zombie", "mobs:grass_monster", "mobs:geist", "mobs:tree_monster", "mobs:spider", "mobs:dungeon_master", "mobs:lava_flan", "mobs:mese_monster", "mobs:oerkki", }
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
        minetest.env:remove_node(pos)
    end,
})

for _,entity_name in ipairs(old_entities) do
    minetest.register_entity(":"..entity_name, {
        on_activate = function(self, staticdata)
            self.object:remove()
        end,
    })
end



--Version 0.23.2
minetest.register_craftitem("tutorial:legenden_schluessel", {
	description = "Legendkey Lv.MAX",
	inventory_image = "tutorial_legenden_schluessel.png",
})
minetest.register_craft({
        output = 'tutorial:craft_schluessel1',
        recipe = {
                {'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
				{'tutorial:coin_lila', 'default:stick', 'tutorial:coin_lila'},
				{'tutorial:coin_lila', 'default:stick', 'tutorial:coin_lila'},
        }
})

minetest.register_craft({
        output = 'tutorial:craft_schluessel2',
        recipe = {
                {'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
				{'tutorial:coin_lila', 'tutorial:craft_schluessel1', 'tutorial:coin_lila'},
				{'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
        }
})
minetest.register_craft({
        output = 'tutorial:craft_schluessel3',
        recipe = {
                {'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
				{'tutorial:coin_lila', 'tutorial:craft_schluessel2', 'tutorial:coin_lila'},
				{'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
        }
})
minetest.register_craft({
        output = 'tutorial:craft_schluessel4',
        recipe = {
                {'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
				{'tutorial:coin_lila', 'tutorial:craft_schluessel3', 'tutorial:coin_lila'},
				{'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
        }
})
minetest.register_craft({
        output = 'tutorial:craft_schluessel5',
        recipe = {
                {'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
				{'tutorial:coin_lila', 'tutorial:craft_schluessel4', 'tutorial:coin_lila'},
				{'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
        }
})
minetest.register_craft({
        output = 'tutorial:craft_schluessel6',
        recipe = {
                {'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
				{'tutorial:coin_lila', 'tutorial:craft_schluessel5', 'tutorial:coin_lila'},
				{'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
        }
})
minetest.register_craft({
        output = 'tutorial:craft_schluessel7',
        recipe = {
                {'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
				{'tutorial:coin_lila', 'tutorial:craft_schluessel6', 'tutorial:coin_lila'},
				{'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
        }
})
minetest.register_craft({
        output = 'tutorial:bag_schluessel4',
        recipe = {
                {'', 'tutorial:coin_grau20', ''},
				{'', 'tutorial:bag_schluessel3', ''},
				{'', '', ''},
        }
})
minetest.register_craft({
        output = 'tutorial:bag_schluessel3',
        recipe = {
                {'', 'tutorial:coin_grau20', ''},
				{'', 'tutorial:bag_schluessel2', ''},
				{'', '', ''},
        }
})
minetest.register_craft({
        output = 'tutorial:bag_schluessel2',
        recipe = {
                {'', 'tutorial:coin_grau20', ''},
				{'', 'tutorial:bag_schluessel1', ''},
				{'', '', ''},
        }
})
minetest.register_craft({
        output = 'tutorial:bag_schluessel1',
        recipe = {
                {'', 'tutorial:coin_grau20', ''},
				{'', 'default:stick', ''},
				{'', 'default:stick', ''},
        }
})

minetest.register_craftitem("tutorial:bag_schluessel4", {
	description = "Bagkey Lv.MAX",
	inventory_image = "tutorial_bag_schluessel4.png",
})
minetest.register_craftitem("tutorial:bag_schluessel3", {
	description = "Bagkey Lv.3",
	inventory_image = "tutorial_bag_schluessel3.png",
})
minetest.register_craftitem("tutorial:bag_schluessel2", {
	description = "Bagkey Lv.2",
	inventory_image = "tutorial_bag_schluessel2.png",
})
minetest.register_craftitem("tutorial:bag_schluessel1", {
	description = "Bagkey Lv.1",
	inventory_image = "tutorial_bag_schluessel1.png",
})
minetest.register_craftitem("tutorial:craft_schluessel7", {
	description = "Craftkey Lv.MAX",
	inventory_image = "tutorial_craft_schluessel7.png",
})
minetest.register_craftitem("tutorial:craft_schluessel6", {
	description = "Craftkey Lv.6",
	inventory_image = "tutorial_craft_schluessel6.png",
})
minetest.register_craftitem("tutorial:craft_schluessel5", {
	description = "Craftkey Lv.5",
	inventory_image = "tutorial_craft_schluessel5.png",
})
minetest.register_craftitem("tutorial:craft_schluessel5", {
	description = "Craftkey Lv.5",
	inventory_image = "tutorial_craft_schluessel5.png",
})
minetest.register_craftitem("tutorial:craft_schluessel4", {
	description = "Craftkey Lv.4",
	inventory_image = "tutorial_craft_schluessel4.png",
})
minetest.register_craftitem("tutorial:craft_schluessel3", {
	description = "Craftkey Lv.3",
	inventory_image = "tutorial_craft_schluessel3.png",
})
minetest.register_craftitem("tutorial:craft_schluessel2", {
	description = "Craftkey Lv.2",
	inventory_image = "tutorial_craft_schluessel2.png",
})
minetest.register_craftitem("tutorial:craft_schluessel1", {
	description = "Craftkey Lv.1",
	inventory_image = "tutorial_craft_schluessel1.png",
})



	local xp_gui = {}
	local xp_gru = {}
	local xp_r_b = {}
	local xp_gra = {}
	local crafting = {}
	local crafting3 = {}
	local cr = {}

--Version 0.23.1
crafting3.get_formspec = function(player, pos)
	local player_inv = player:get_inventory()
    player_inv:set_size("crvier", 25)
	formspec = "size[8,11.3]"
	.."button[0,0;2,0.5;main;Main]"
	.."button[2,0;2,0.5;cr;Back]"
	.."list[current_player;main;0,7.25;8,1;]"
	.."list[current_player;main;0,8.5;8,3;8]"
	.."list[current_player;crvier;2,1;5,5;]"
	.."listring[current_player;main]"
	.."listring[current_player;craft]"
	local crafted = nil
	local table_dec = nil
	local player_inv = player:get_inventory()
	local tablelist = player_inv:get_list("crvier")
	if tablelist then
		crafted,table_dec = minetest.get_craft_result({method = "normal", width = 5, items = tablelist})
	end
	local k = 0
	if crafted.item ~= nil then
		if player_inv:room_for_item("main", crafted.item) == true then
		  print "hi"
		  k = 1
		end
	end
	if crafted.item ~= nil and k == 1 then
		player_inv:add_item("main", crafted.item)
		player_inv:set_stack("crvier", 1, nil)
		player_inv:set_stack("crvier", 2, nil)
		player_inv:set_stack("crvier", 3, nil)
		player_inv:set_stack("crvier", 4, nil)
		player_inv:set_stack("crvier", 5, nil)
		player_inv:set_stack("crvier", 6, nil)
		player_inv:set_stack("crvier", 7, nil)
		player_inv:set_stack("crvier", 8, nil)
		player_inv:set_stack("crvier", 8, nil)
		player_inv:set_stack("crvier", 9, nil)
		player_inv:set_stack("crvier", 10, nil)
		player_inv:set_stack("crvier", 11, nil)
		player_inv:set_stack("crvier", 12, nil)
		player_inv:set_stack("crvier", 13, nil)
		player_inv:set_stack("crvier", 14, nil)
		player_inv:set_stack("crvier", 15, nil)
		player_inv:set_stack("crvier", 16, nil)
		player_inv:set_stack("crvier", 17, nil)
		player_inv:set_stack("crvier", 18, nil)
		player_inv:set_stack("crvier", 19, nil)
		player_inv:set_stack("crvier", 20, nil)
		player_inv:set_stack("crvier", 21, nil)
		player_inv:set_stack("crvier", 22, nil)
		player_inv:set_stack("crvier", 23, nil)
		player_inv:set_stack("crvier", 24, nil)
		player_inv:set_stack("crvier", 25, nil)
	end
	return formspec		
end



crafting.get_formspec = function(player, pos)
	local player_inv = player:get_inventory()
    player_inv:set_size("crvier", 16)
	formspec = "size[8,9.3]"
	.."button[0,0;2,0.5;main;Main]"
	.."button[2,0;2,0.5;cr;Back]"
	.."list[current_player;main;0,5.25;8,1;]"
	.."list[current_player;main;0,6.5;8,3;8]"
	.."list[current_player;crvier;2,1;4,4;]"
	.."listring[current_player;main]"
	.."listring[current_player;craft]"
	local crafted = nil
	local table_dec = nil
	local player_inv = player:get_inventory()
	local tablelist = player_inv:get_list("crvier")
	if tablelist then
		crafted,table_dec = minetest.get_craft_result({method = "normal", width = 4, items = tablelist})
	end
	local k = 0
	if crafted.item ~= nil then
		if player_inv:room_for_item("main", crafted.item) == true then
		  print "hi"
		  k = 1
		end
	end
	if crafted.item ~= nil and k == 1 then
		player_inv:add_item("main", crafted.item)
		player_inv:set_stack("crvier", 1, nil)
		player_inv:set_stack("crvier", 2, nil)
		player_inv:set_stack("crvier", 3, nil)
		player_inv:set_stack("crvier", 4, nil)
		player_inv:set_stack("crvier", 5, nil)
		player_inv:set_stack("crvier", 6, nil)
		player_inv:set_stack("crvier", 7, nil)
		player_inv:set_stack("crvier", 8, nil)
		player_inv:set_stack("crvier", 8, nil)
		player_inv:set_stack("crvier", 9, nil)
		player_inv:set_stack("crvier", 10, nil)
		player_inv:set_stack("crvier", 11, nil)
		player_inv:set_stack("crvier", 12, nil)
		player_inv:set_stack("crvier", 13, nil)
		player_inv:set_stack("crvier", 14, nil)
		player_inv:set_stack("crvier", 15, nil)
		player_inv:set_stack("crvier", 16, nil)
	end
	return formspec		
end
--Version 0.23.0
    cr.get_formspec = function(player,pos)
	    local player_inv = player:get_inventory()
		player_inv:set_size("feld", 1)
		player_inv:set_size("feld3", 1)
		local type = player:get_inventory():get_stack("feld",1):get_name()
		local type3 = player:get_inventory():get_stack("feld3",1):get_name()
		if type == "tutorial:craft_schluessel7" then
			image = "crafting"
		else
			 image = "cr"
		end
		if type3 == "tutorial:legenden_schluessel" then
			image3 = "crafting3"
		else
			image3 = "cr"
		end
		formspec = "size[8,7.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."button[0,2;2,0.5;"..image..";4x4 craft]"
		.."button[2,2;2,0.5;"..image3..";5x5 craft]"
		.."list[current_player;feld;0.5,1;1,1;]"
		.."list[current_player;feld3;2.5,1;1,1;]"
		.."list[current_player;main;0,3.25;8,1;]"
		.."list[current_player;main;0,4.5;8,3;8]"
		return formspec
	end
	xp_gra.get_formspec = function(player)
	    formspec = "size[6.2,5.95]button[0,0;2,0.5;xp_gui;Back]"
		.."button[2.5,0;2,0.5;main;Main]"
		.."textlist[0,1;6,5;xp_gra;Lv.1 = 5xp,Lv.2 = 10xp,Lv.3 = 15xp,Lv.4 = 20xp,Lv.5 = 25xp,Lv.6 = 30xp,Lv.7 = 35xp,Lv.8 = 40xp,Lv.9 = 45xp,Lv.10 = 50xp,Lv.11 = 60xp,Lv.12 = 70xp,Lv.13 = 80xp,Lv.14 = 90xp,Lv.15 = 100xp,Lv.16 = 110xp,Lv.17 = 120xp,Lv.18 = 130xp,Lv.19 = 140xp,Lv.20 = 150xp,Lv.21 = 165xp,Lv.22 = 180xp,Lv.23 = 195xp,Lv.24 = 210xp,Lv.25 = 225xp,Lv.26 = 240xp,Lv.27 = 255xp,Lv.28 = 270xp,Lv.29 = 285xp,Lv.30 = 300xp,Lv.31 = 320xp,Lv.32 = 340xp,Lv.33 = 360xp,Lv.34 = 380xp,Lv.35 = 400xp,Lv.36 = 420xp,Lv.37 = 440xp,Lv.38 = 460xp,Lv.39 = 480xp,Lv.40 = 500xp,Lv.41 = 525xp,Lv.42 = 550xp,Lv.43 = 575xp,Lv.44 = 600xp,Lv.45 = 625xp,Lv.46 = 650xp,Lv.47 = 675xp,Lv.48 = 700xp,Lv.49 = 725xp,Lv.50 = 750xp,Lv.51 = 780xp,Lv.52 = 810xp,Lv.53 = 840xp,Lv.54 = 870xp,Lv.55 = 900xp,Lv.56 = 930xp,Lv.57 = 960xp,Lv.58 = 990xp,Lv.59 = 1020xp,Lv.60 = 1050xp,Lv.61 = 1085xp,Lv.62 = 1120xp,Lv.63 = 1155xp,Lv.64 = 1190xp,Lv.65 = 1225xp,Lv.66 = 1260xp,Lv.67 = 1295xp,Lv.68 = 1330xp,Lv.69 = 1365xp,Lv.70 = 1400xp,Lv.71 = 1440xp,Lv.72 = 1480xp,Lv.73 = 1520xp,Lv.74 = 1560xp,Lv.75 = 1600xp,Lv.76 = 1640xp,Lv.77 = 1680xp,Lv.78 = 1720xp,Lv.79 = 1760xp,Lv.80 = 1800xp,Lv.81 = 1845xp,Lv.82 = 1890xp,Lv.83 = 1935xp,Lv.84 = 1980xp,Lv.85 = 2025xp,Lv.86 = 2070xp,Lv.87 = 2115xp,Lv.88 = 2160xp,Lv.89 = 2205xp,Lv.90 = 2250xp,Lv.91 = 2300xp,Lv.92 = 2350xp,Lv.93 = 2400xp,Lv.94 = 2450xp,Lv.95 = 2500xp,Lv.96 = 2550xp,Lv.97 = 2600xp,Lv.98 = 2650xp,Lv.99 = 2700xp,Lv.100 = 2750xp,Lv.MAX = 3200xp]"
		return formspec
	end
	xp_r_b.get_formspec = function(player)
	    formspec = "size[6.2,5.95]button[0,0;2,0.5;xp_gui;Back]"
		.."button[2.5,0;2,0.5;main;Main]"
		.."textlist[0,1;6,5;xp_r_b;Lv.1 = 1xp,Lv.2 = 3xp,Lv.3 = 6xp,Lv.4 = 10xp,Lv.5 = 15xp,Lv.6 = 21xp,Lv.7 = 28xp,Lv.8 = 36xp,Lv.9 = 45xp,Lv.10 = 55xp,Lv.11 = 66xp,Lv.12 = 78xp,Lv.13 = 91xp,Lv.14 = 105xp,Lv.15 = 120xp,Lv.16 = 136xp,Lv.17 = 153xp,Lv.18 = 171xp,Lv.19 = 190xp,Lv.20 = 210xp,Lv.MAX = 250xp]"
		return formspec
	end
    xp_gru.get_formspec = function(player)
	    formspec = "size[6.2,5.95]button[0,0;2,0.5;xp_gui;Back]"
		.."button[2.5,0;2,0.5;main;Main]"
		.."textlist[0,1;6,5;xp_gru;Lv.1 = 10xp,Lv.2 = 20xp,Lv.3 = 30xp,Lv.4 = 40xp,Lv.5 = 50xp,Lv.6 = 70xp,Lv.7 = 90xp,Lv.8 = 110xp,Lv.9 = 130xp,Lv.10 = 150xp,Lv.11 = 180xp,Lv.12 = 210xp,Lv.13 = 240xp,Lv.14 = 270xp,Lv.15 = 300xp,Lv.16 = 340xp,Lv.17 = 380xp,Lv.18 = 420xp,Lv.19 = 460xp,Lv.20 = 500xp,Lv.21 = 550xp,Lv.22 = 600xp,Lv.23 = 650xp,Lv.24 = 700xp,Lv.25 = 750xp,Lv.26 = 810xp,Lv.27 = 870xp,Lv.28 = 930xp,Lv.29 = 990xp,Lv.30 = 1050xp,Lv.31 = 1120xp,Lv.32 = 1190xp,Lv.33 = 1260xp,Lv.34 = 1330xp,Lv.35 = 1400xp,Lv.36 = 1480xp,Lv.37 = 1560xp,Lv.38 = 1640xp,Lv.39 = 1720xp,Lv.40 = 1800xp,Lv.41 = 1890xp,Lv.42 = 1980xp,Lv.43 = 2070xp,Lv.44 = 2160xp,Lv.45 = 2250xp,Lv.45 = 2250xp,Lv.46 = 2350xp,Lv.47 = 2450xp,Lv.48 = 2550xp,Lv.49 = 2650xp,Lv.50 = 2750xp,Lv.51 = 2860xp,Lv.52 = 2970xp,Lv.53 = 3080xp,Lv.54 = 3190xp,Lv.55 = 3300xp,Lv.56 = 3420xp,Lv.57 = 3540xp,Lv.58 = 3660xp,Lv.59 = 3780xp,Lv.60 = 3900xp,Lv.61 = 4030xp,Lv.62 = 4160xp,Lv.63 = 4290xp,Lv.64 = 4420xp,Lv.65 = 4550xp,Lv.66 = 4690xp,Lv.67 = 4830xp,Lv.68 = 4970xp,Lv.69 = 5110xp,Lv.70 = 5250xp,Lv.71 = 5400xp,Lv.72 = 5550xp,Lv.73 = 5700xp,Lv.74 = 5850xp,Lv.75 = 6000xp,Lv.76 = 6160xp,Lv.77 = 6320xp,Lv.78 = 6480xp,Lv.79 = 6640xp,Lv.80 = 6800xp,Lv.81 = 6970xp,Lv.82 = 7140xp,Lv.83 = 7310xp,Lv.84 = 7480xp,Lv.85 = 7650xp,Lv.86 = 7830xp,Lv.87 = 8010xp,Lv.88 = 8190xp,Lv.89 = 8370xp,Lv.90 = 8550xp,Lv.91 = 8740xp,Lv.92 = 8930xp,Lv.93 = 9120xp,Lv.94 = 9310xp,Lv.95 = 9500xp,Lv.96 = 9700xp,Lv.97 = 9900xp,Lv.98 = 10100xp,Lv.99 = 10300xp,Lv.100 = 10500xp,Lv.MAX = 11950xp]"
		return formspec
	end

	xp_gui.get_formspec = function(player)
		local name = player:get_player_name()
		local player_inv = player:get_inventory()
		local xp_gruen_o = io.open(minetest.get_worldpath().."/"..name.."_experience", "r")
	    local xp_gruen = xp_gruen_o:read("*l")
		local xp_rot_o = io.open(minetest.get_worldpath().."/"..name.."_experience_rot", "r")
	    local xp_rot = xp_rot_o:read("*l")
		local xp_blau_o = io.open(minetest.get_worldpath().."/"..name.."_experience_blau", "r")
	    local xp_blau = xp_blau_o:read("*l")
		local xp_grau_o = io.open(minetest.get_worldpath().."/"..name.."_experience_grau", "r")
	    local xp_grau = xp_grau_o:read("*l")
		player_inv:set_size("feld2", 1)
		local type = player:get_inventory():get_stack("feld2",1):get_name()
		if type == "tutorial:level_schluessel" then
			image1 = "xp_gru"
			image2 = "xp_r_b"
			image3 = "xp_gra"
		else
			image1 = "xp_gui"
			image2 = "xp_gui"
			image3 = "xp_gui"
		end
	    formspec = "size[8,8.3]button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;Xp green (Part1) : "..xp_gruen.."xp]"
		.."label[0,1.5;Xp red     (Part2) : "..xp_rot.."xp]"
		.."label[0,2;Xp blue   (Part2) : "..xp_blau.."xp]"
		.."label[0,2.5;Xp gray   (Part3) : "..xp_grau.."xp]"
		.."list[current_player;main;0,4.2.5;8,1;]"
		.."list[current_player;main;0,5.5;8,3;8]"
		.."list[current_player;feld2;5,0;1,1;]"
		.."button[4,1;3.0,0.5;"..image1..";Xp Gruen you neet]"
		.."button[4,2;3.0,0.5;"..image2..";Xp Rot/Blau you neet]"
		.."button[4,3;3.0,0.5;"..image3..";Xp Grau you neet]"
		return formspec
	end
	
	minetest.register_on_player_receive_fields(function(player, formname, fields)
		if fields.xp_gui then
			inventory_plus.set_inventory_formspec(player, xp_gui.get_formspec(player))
		end
		if fields.xp_gru then
			inventory_plus.set_inventory_formspec(player, xp_gru.get_formspec(player))
		end
		if fields.xp_r_b then
			inventory_plus.set_inventory_formspec(player, xp_r_b.get_formspec(player))
		end
		if fields.xp_gra then
			inventory_plus.set_inventory_formspec(player, xp_gra.get_formspec(player))
		end
		if fields.cr then 
			inventory_plus.set_inventory_formspec(player, cr.get_formspec(player))
		end
		if fields.crafting then
			inventory_plus.set_inventory_formspec(player, crafting.get_formspec(player))
		end
		if fields.crafting3 then
			inventory_plus.set_inventory_formspec(player, crafting3.get_formspec(player))
		end
	end)
--Version 0.22.1
minetest.register_craft({
        output = 'tutorial:xp_block',
        recipe = {
                {'tutorial:xp_blau', 'tutorial:xp_rot', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_node("tutorial:xp_block",{
description = "Xp Block",
 tiles  = {"tutorial_xp_block.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,xpg=1},  
})

minetest.register_craftitem("tutorial:xp_blau", {
	description = "Blue xp block",
	inventory_image = "tutorial_xp_blau.png",
})


minetest.register_craftitem("tutorial:xp_rot", {
	description = "Red xp block",
	inventory_image = "tutorial_xp_rot.png",
})


minetest.register_craftitem("tutorial:blau_erz", {
        description = "Blue",
	inventory_image = "tutorial_blau_erz.png",
})

minetest.register_craftitem("tutorial:rot_erz", {
        description = "Red",
	inventory_image = "tutorial_rot_erz.png",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_blau",
	wherein        = "default:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 1,
	clust_size     = 1,
	height_min     = -31000,
	height_max     = -100,
})

minetest.register_node("tutorial:stone_with_blau", {
	description = "Blue ore",
	tiles = {"default_stone.png^tutorial_blau_erz.png"},
	is_ground_content = true,
	groups = {cracky=13, xpb=1},
	drop = 'tutorial:blau_erz',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_rot",
	wherein        = "default:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 1,
	clust_size     = 1,
	height_min     = -31000,
	height_max     = -100,
})

minetest.register_node("tutorial:stone_with_rot", {
	description = "Red ore",
	tiles = {"default_stone.png^tutorial_rot_erz.png"},
	is_ground_content = true,
	groups = {cracky=13, xpr=1},
	drop = 'tutorial:rot_erz',
	sounds = default.node_sound_stone_defaults(),
})
--Version 0.22.0
minetest.register_craft({
        output = 'tutorial:titanentverner',
        recipe = {
                {'default:gold_ingot', 'tutorial:uranium7', 'default:gold_ingot'},
                {'', 'moreores:silver_ingot', ''},
                {'', 'moreores:silver_ingot', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:titanbattleaxe10',
        recipe = {
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titanbattleaxe9', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        }
})

minetest.register_craft({
        output = 'tutorial:titanbattleaxe9',
        recipe = {
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titanbattleaxe8', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        }
})

minetest.register_craft({
        output = 'tutorial:titanbattleaxe8',
        recipe = {
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titanbattleaxe7', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        }
})

minetest.register_craft({
        output = 'tutorial:titanbattleaxe7',
        recipe = {
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titanbattleaxe6', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        }
})

minetest.register_craft({
        output = 'tutorial:titanbattleaxe6',
        recipe = {
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titanbattleaxe5', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        }
})

minetest.register_craft({
        output = 'tutorial:titanbattleaxe5',
        recipe = {
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titanbattleaxe4', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        }
})

minetest.register_craft({
        output = 'tutorial:titanbattleaxe4',
        recipe = {
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titanbattleaxe3', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        }
})

minetest.register_craft({
        output = 'tutorial:titanbattleaxe3',
        recipe = {
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titanbattleaxe2', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        }
})

minetest.register_craft({
        output = 'tutorial:titanbattleaxe2',
        recipe = {
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titanbattleaxe1', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        }
})

minetest.register_craft({
        output = 'tutorial:titanbattleaxe1',
        recipe = {
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:arena_battleaxe4', 'tutorial:titan'},
                {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        }
})

minetest.register_tool("tutorial:titanentverner", {
	description = "Titanium remover",
	inventory_image = "tutorial_titanentverner.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={cracky  = {times={[12]=75.0,}, uses=1, maxlevel=3},},
		damage_groups = {fleshy=3}
	},
})

minetest.register_tool("tutorial:titanbattleaxe10", {
	description = "Titaniumbattleaxe lv.10",
	inventory_image = "tutorial_titanbattleaxe10.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=115}
	},
})

minetest.register_tool("tutorial:titanbattleaxe9", {
	description = "Titaniumbattleaxe lv.9",
	inventory_image = "tutorial_titanbattleaxe9.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=1.0, [12]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=114}
	},
})

minetest.register_tool("tutorial:titanbattleaxe8", {
	description = "Titaniumbattleaxe lv.8",
	inventory_image = "tutorial_titanbattleaxe8.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=2.0, [12]=30.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=113}
	},
})

minetest.register_tool("tutorial:titanbattleaxe7", {
	description = "Titaniumbattleaxe lv.7",
	inventory_image = "tutorial_titanbattleaxe7.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=3.0, [12]=40.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=112}
	},
})

minetest.register_tool("tutorial:titanbattleaxe6", {
	description = "Titaniumbattleaxe lv.6",
	inventory_image = "tutorial_titanbattleaxe6.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=4.0, [12]=50.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=111}
	},
})

minetest.register_tool("tutorial:titanbattleaxe5", {
	description = "Titaniumbattleaxe lv.5",
	inventory_image = "tutorial_titanbattleaxe5.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=5.0, [12]=60.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=110}
	},
})

minetest.register_tool("tutorial:titanbattleaxe4", {
	description = "Titaniumbattleaxe lv.4",
	inventory_image = "tutorial_titanbattleaxe4.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=6.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=109}
	},
})

minetest.register_tool("tutorial:titanbattleaxe3", {
	description = "Titaniumbattleaxe lv.3",
	inventory_image = "tutorial_titanbattleaxe3.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=7.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=108}
	},
})

minetest.register_tool("tutorial:titanbattleaxe2", {
	description = "Titaniumbattleaxe lv.2",
	inventory_image = "tutorial_titanbattleaxe2.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=8.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=107}
	},
})

minetest.register_tool("tutorial:titanbattleaxe1", {
	description = "Titaniumbattleaxe lv.1",
	inventory_image = "tutorial_titanbattleaxe1.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=9.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=106}
	},
})

--Version 0.21.0
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool1"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:blue_wool_titan30"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool1"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:orange_wool_titan30"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool1"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:red_wool_titan30"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool1"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:violet_wool_titan30"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool1"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:white_wool_titan30"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool1"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:yellow_wool_titan30"})
	end,
})

minetest.register_node("tutorial:yellow_wool_titan30", {
	description = "Yellow wool gift block (30)",
	tiles = {"wool_yellow.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:yellow 30',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:white_wool_titan30", {
	description = "White wool gift block (30)",
	tiles = {"wool_white.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:white 30',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:violet_wool_titan30", {
	description = "Violetta wool gift block (30)",
	tiles = {"wool_violet.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:violet 30',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:red_wool_titan30", {
	description = "Red wool gift block (30)",
	tiles = {"wool_red.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:red 30',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:orange_wool_titan30", {
	description = "Orange wool gift block (30)",
	tiles = {"wool_orange.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:orange 30',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:blue_wool_titan30", {
	description = "Blue wool gift block (30)",
	tiles = {"wool_blue.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:blue 30',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:yellow_wool_titan50"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:white_wool_titan50"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:violet_wool_titan50"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:red_wool_titan50"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:pink_wool_titan50"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:orange_wool_titan50"})
	end,
})


minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:magenta_wool_titan50"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:grey_wool_titan50"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:green_wool_titan50"})
	end,
})


minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:dark_grey_wool_titan50"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:dark_green_wool_titan50"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:cyan_wool_titan50"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:brown_wool_titan50"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:blue_wool_titan50"})
	end,
})

minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:black_wool_titan50"})
	end,
})

minetest.register_node("tutorial:yellow_wool_titan50", {
	description = "Yellow wool gift block (50)",
	tiles = {"wool_yellow.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:yellow 50',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:white_wool_titan50", {
	description = "White wool gift block (50)",
	tiles = {"wool_white.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:white 50',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:violet_wool_titan50", {
	description = "Violetta wool gift block (50)",
	tiles = {"wool_violet.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:violet 50',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:red_wool_titan50", {
	description = "Red wool gift block (50)",
	tiles = {"wool_red.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:red 50',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:pink_wool_titan50", {
	description = "Pink wool gift block (50)",
	tiles = {"wool_pink.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:pink 50',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:orange_wool_titan50", {
	description = "Orange wool gift block (50)",
	tiles = {"wool_orange.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:orange 50',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:magenta_wool_titan50", {
	description = "Magenta wool gift block (50)",
	tiles = {"wool_magenta.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:magenta 50',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:grey_wool_titan50", {
	description = "Gray wool gift block (50)",
	tiles = {"wool_grey.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:grey 50',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:green_wool_titan50", {
	description = "Green wool gift block (50)",
	tiles = {"wool_green.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:green 50',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:dark_grey_wool_titan50", {
	description = "Dark gray wool gift block (50)",
	tiles = {"wool_dark_grey.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:dark_grey 50',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:dark_green_wool_titan50", {
	description = "Dark green wool gift block (50)",
	tiles = {"wool_dark_green.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:dark_green 50',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:cyan_wool_titan50", {
	description = "Turquoise wool gift block (50)",
	tiles = {"wool_cyan.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:cyan 50',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:brown_wool_titan50", {
	description = "Brown wool gift block (50)",
	tiles = {"wool_brown.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:brown 50',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:blue_wool_titan50", {
	description = "Blue wool gift block (50)",
	tiles = {"wool_blue.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:blue 50',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:black_wool_titan50", {
	description = "Black wool gift block (50)",
	tiles = {"wool_black.png^tutorial_wool_titan.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'wool:black 50',
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
        output = 'tutorial:rainbow_torch 4',
        recipe = {
                {'', 'default:nyancat_rainbow', ''},
                {'', 'tutorial:titan', ''},
                {'', '', ''},
        }
})


minetest.register_node("tutorial:rainbow_torch", {
	description = "Rainbow torch",
	drawtype = "torchlike",
	--tiles = {"default_torch_on_floor.png", "default_torch_on_ceiling.png", "default_torch.png"},
	tiles = {
		{name="tutorial_torch_on_floor_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}},
		{name="tutorial_torch_on_ceiling_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}},
		{name="tutorial_torch_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}}
	},
	inventory_image = "tutorial_torch_on_floor.png",
	wield_image = "default_torch_on_floor.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	is_ground_content = false,
	walkable = false,
	light_source = LIGHT_MAX-1,
	selection_box = {
		type = "wallmounted",
		wall_top = {-0.1, 0.5-0.6, -0.1, 0.1, 0.5, 0.1},
		wall_bottom = {-0.1, -0.5, -0.1, 0.1, -0.5+0.6, 0.1},
		wall_side = {-0.5, -0.3, -0.1, -0.5+0.3, 0.3, 0.1},
	},
	groups = {choppy=2,dig_immediate=3,flammable=1,attached_node=1,hot=2},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
})


--Version 0.20.0
dofile(minetest.get_modpath("tutorial").."/atom.lua")


minetest.register_node("tutorial:geschenk_wool2",{
description = "Colored wolle gift lv.2",
 is_ground_content = true,
 tiles  = {"tutorial_geschenk_wool2.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
 
})

minetest.register_node("tutorial:geschenk_wool1",{
description = "Colored wolle gift lv.1",
 is_ground_content = true,
 tiles  = {"tutorial_geschenk_wool1.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
 
})


minetest.register_node("tutorial:geschenk_wool",{
description = "Wolle gift",
 is_ground_content = true,
 drop   = 'wool:white 10',
 tiles  = {"tutorial_geschenk_wool.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
 
})


minetest.register_craft({
        output = 'tutorial:geschenk_wool 16',
        recipe = {
                {'', 'tutorial:titan', ''},
                {'tutorial:titan', 'tutorial:geschenk', 'tutorial:titan'},
                {'', 'tutorial:titan', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:geschenk_wool1 3',
        recipe = {
                {'tutorial:geschenk_wool', 'tutorial:geschenk_wool', ''},
                {'tutorial:geschenk_wool', 'tutorial:geschenk_wool', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:geschenk_wool2 3',
        recipe = {
                {'tutorial:geschenk_wool1', 'tutorial:geschenk_wool1', ''},
                {'tutorial:geschenk_wool1', 'tutorial:geschenk_wool1', ''},
                {'', '', ''},
        }
})


minetest.register_craft({
        output = 'tutorial:geschenk_gold',
        recipe = {
                {'tutorial:geschenk_silber', 'tutorial:geschenk_silber', ''},
                {'tutorial:geschenk_silber', 'tutorial:geschenk_silber', ''},
                {'', '', ''},
        }
})

minetest.register_node("tutorial:geschenk_gold",{
description = "Gift (gold)",
 is_ground_content = true,
 tiles  = {"tutorial_geschenk_gold.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
 drop = {
	max_items = 1,
		items = {
			{items = {'mobs:oerkki_egg'},rarity = 16,},
			{items = {'mobs:geist_egg'},rarity = 16,},
			{items = {'mobs:zombie_egg'},rarity = 12,},
			{items = {'mobs:dirt_monster_egg'},rarity = 8,},
 			{items = {'mobs:stone_monster_egg'},rarity = 8,},
			{items = {'mobs:sand_monster_egg'},rarity = 8,},
 			{items = {'mobs:tree_monster_egg'},rarity = 8,},
 			{items = {'mobs:grass_monster_egg'},rarity = 8,},
			{items = {'mobs:sheep_egg'},rarity = 4,},
			{items = {'default:mese 20'},rarity = 2,}
		}
	},


})



minetest.register_craft({
        output = 'tutorial:geschenk_platin',
        recipe = {
                {'tutorial:geschenk_gold', 'tutorial:geschenk_gold', ''},
                {'tutorial:geschenk_gold', 'tutorial:geschenk_gold', ''},
                {'', '', ''},
        }
})





minetest.register_node("tutorial:geschenk_platin",{
description = "Gift (platinum)",
 is_ground_content = true,
 tiles  = {"tutorial_geschenk_platin.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
 drop = {
	max_items = 1,
		items = {
			{items = {'tutorial:geschenk_wool2'},rarity = 8,},
			{items = {'tutorial:geschenk_wool1'},rarity = 6,},
			{items = {'tutorial:geschenk_wool'},rarity = 4,},
 			{items = {'mobs:rat_egg 2'},rarity = 4,},
			{items = {'mobs:cow_egg 2'},rarity = 4,},
			{items = {'mobs:chicken_egg 2'},rarity = 4,},
			{items = {'default:mese 80'},rarity = 2,}
		}
	},


})

minetest.register_tool("tutorial:lilabattleaxe", {
	description = "Purplebattleaxe Lv.1 (only for red and blue ores)",
	inventory_image = "tutorial_lilabattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={			
			cracky  = {times={[13]=0,}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=10}
	},
})



--Version 0.19.1
minetest.register_craftitem("tutorial:level_schluessel", {
	description = "Levelkey lv.MAX",
	inventory_image = "tutorial_level_schluessel.png",
})
--Version 0.19.0





minetest.register_craft({
        output = 'tutorial:geschenk_silber',
        recipe = {
                {'tutorial:geschenk', 'tutorial:geschenk', ''},
                {'tutorial:geschenk', 'tutorial:geschenk', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:arena_battleaxe4',
        recipe = {
                {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
                {'tutorial:arena_block', 'tutorial:arena_battleaxe3', 'tutorial:arena_block'},
                {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
        }
})

minetest.register_craft({
        output = 'tutorial:arena_battleaxe3',
        recipe = {
                {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
                {'tutorial:arena_block', 'tutorial:arena_battleaxe2', 'tutorial:arena_block'},
                {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
        }
})


minetest.register_craft({
        output = 'tutorial:arena_battleaxe2',
        recipe = {
                {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
                {'tutorial:arena_block', 'tutorial:arena_battleaxe1', 'tutorial:arena_block'},
                {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
        }
})

minetest.register_craft({
        output = 'tutorial:arena_battleaxe1',
        recipe = {
                {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
                {'tutorial:arena_block', 'tutorial:ultrabattleaxe', 'tutorial:arena_block'},
                {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
        }
})

minetest.register_tool("tutorial:arena_battleaxe4", {
	description = "Arenabattleaxe lv.4 ",
	inventory_image = "tutorial_arenabattleaxe4.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=105}
	},
})


minetest.register_tool("tutorial:arena_battleaxe3", {
	description = "Arenabattleaxe lv.3",
	inventory_image = "tutorial_arenabattleaxe3.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=104}
	},
})

minetest.register_tool("tutorial:arena_battleaxe2", {
	description = "Arenabattleaxe lv.2",
	inventory_image = "tutorial_arenabattleaxe2.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=30.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=103}
	},
})

minetest.register_tool("tutorial:arena_battleaxe1", {
	description = "Arenabattleaxe lv.1",
	inventory_image = "tutorial_arenabattleaxe1.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=40.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=102}
	},
})









minetest.register_node("tutorial:geschenk_silber",{
description = "Gift (silver)",
 is_ground_content = true,
 tiles  = {"tutorial_geschenk_silber.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
 drop = {
	max_items = 1,
		items = {
			{items = {'tutorial:geschenk 2'},rarity = 5,},
 			{items = {'tutorial:lightstone 400'},rarity = 2,},
			{items = {'tutorial:arena_block'},rarity = 8,},
 			{items = {'tutorial:arena_glass'},rarity = 12,},
			{items = {'default:mese 8'},rarity = 3,}
		}
	},


})



minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_titan",
	wherein        = "default:stone",
	clust_scarcity = 18*18*18,
	clust_num_ores = 1,
	clust_size     = 1,
	height_min     = -31000,
	height_max     = -800,
})

minetest.register_node("tutorial:stone_with_titan", {
	description = "Titanium ore",
	tiles = {"tutorial_titan_ore.png"},
	is_ground_content = true,
	groups = {cracky=12},
	drop = 'tutorial:titan',
	sounds = default.node_sound_stone_defaults(),
})







minetest.register_craftitem("tutorial:titan", {
	description = "Titanium",
	inventory_image = "tutorial_titan.png",
})


--Version 0.18.0
minetest.register_node("tutorial:arena_glass", {
				description = "Arena glass",
				drawtype = "glasslike",
				tiles = {"tutorial_arena_glass.png"},
				paramtype = "light",
				sunlight_propagates = true,
				use_texture_alpha = true,
				light_source = 14,
				is_ground_content = true,
				groups = {cracky=11},
				sounds = default.node_sound_glass_defaults()
				})



minetest.register_node("tutorial:arena_block",{
 tiles  = {"tutorial_arena_block.png"},
 description = "Arena block",
 groups = {cracky=11},
})

minetest.register_tool("tutorial:adminbattleaxe", {
	description = "Admin tool 3.1: Admin battleaxe Mode 1 (best Battleaxe)",
	inventory_image = "tutorial_adminbattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={

--sword			
snappy  = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
 --axe                       
choppy  = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
--shovel			
crumbly = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
--pick			
cracky  = {times={[-1]=0,[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=0, [0]=0,}, uses=0, maxlevel=3},
	},
		damage_groups = {fleshy=100000000000000000000000000000000000000000}
	},
	liquids_pointable = false,
})
minetest.register_tool("tutorial:adminbattleaxe2", {
	description = "Admin tool 3.2: Admin battleaxe Mode 2 (best Battleaxe)",
	inventory_image = "tutorial_adminbattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={

--sword			
snappy  = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
 --axe                       
choppy  = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
--shovel			
crumbly = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
--pick			
cracky  = {times={[-1]=0,[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=0, [0]=0,}, uses=0, maxlevel=3},
	},
		damage_groups = {fleshy=100000000000000000000000000000000000000000}
	},
	liquids_pointable = true,
})
minetest.register_craft({
        output = 'tutorial:adminbattleaxe2',
        recipe = {
                {'tutorial:adminbattleaxe', '', ''},
				{'', '', ''},
				{'', '', ''},
        }
})
minetest.register_craft({
        output = 'tutorial:adminbattleaxe',
        recipe = {
                {'tutorial:adminbattleaxe2', '', ''},
				{'', '', ''},
				{'', '', ''},
        }
})
--Version 0.17.0
minetest.register_craft({
        output = 'tutorial:coin_lila',
        recipe = {
                {'tutorial:coin_rot', 'tutorial:coin_blau', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craftitem("tutorial:coin_lila", {
        description = "Coin purple (very rare)",
	inventory_image = "tutorial_coin_lila.png",
})

minetest.register_craftitem("tutorial:coin_rot", {
        description = "Coin red (very rare)",
	inventory_image = "tutorial_coin_rot.png",
})

minetest.register_node("tutorial:level1_rot",{
 tiles  = {"tutorial_level1_rot.png"},
 description = "You are now in Level red 1",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level2_rot",{
 tiles  = {"tutorial_level2_rot.png"},
 description = "You are now in Level red 2",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level3_rot",{
 tiles  = {"tutorial_level3_rot.png"},
 description = "You are now in Level red 3",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level4_rot",{
 tiles  = {"tutorial_level4_rot.png"},
 description = "You are now in Level red 4",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level5_rot",{
 tiles  = {"tutorial_level5_rot.png"},
 description = "You are now in Level red 5",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level6_rot",{
 tiles  = {"tutorial_level6_rot.png"},
 description = "You are now in Level red 6",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level7_rot",{
 tiles  = {"tutorial_level7_rot.png"},
 description = "You are now in Level red 7",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level8_rot",{
 tiles  = {"tutorial_level8_rot.png"},
 description = "You are now in Level red 8",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level9_rot",{
 tiles  = {"tutorial_level9_rot.png"},
 description = "You are now in Level red 9",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level10_rot",{
 tiles  = {"tutorial_level10_rot.png"},
 description = "You are now in Level red 10",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level11_rot",{
 tiles  = {"tutorial_level11_rot.png"},
 description = "You are now in Level red 11",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level12_rot",{
 tiles  = {"tutorial_level12_rot.png"},
 description = "You are now in Level red 12",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level13_rot",{
 tiles  = {"tutorial_level13_rot.png"},
 description = "You are now in Level red 13",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level14_rot",{
 tiles  = {"tutorial_level14_rot.png"},
 description = "You are now in Level red 14",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level15_rot",{
 tiles  = {"tutorial_level15_rot.png"},
 description = "You are now in Level red 15",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level16_rot",{
 tiles  = {"tutorial_level16_rot.png"},
 description = "You are now in Level red 16",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level17_rot",{
 tiles  = {"tutorial_level17_rot.png"},
 description = "You are now in Level red 17",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
					
minetest.register_node("tutorial:level18_rot",{
 tiles  = {"tutorial_level18_rot.png"},
 description = "You are now in Level red 18",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level19_rot",{
 tiles  = {"tutorial_level19_rot.png"},
 description = "You are now in Level red 19",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level20_rot",{
 tiles  = {"tutorial_level20_rot.png"},
 description = "You are now in Level red 20",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:levelMAX_rot",{
 tiles  = {"tutorial_levelMAX_rot.png"},
 description = "You are now in Level red MAX",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})




minetest.register_craftitem("tutorial:coin_blau", {
        description = "Coin blue (very rare)",
	inventory_image = "tutorial_coin_blau.png",
})

minetest.register_craftitem("tutorial:coin_grau", {
        description = "Coin gray (very rare)",
	inventory_image = "tutorial_coin_grau.png",
})

minetest.register_craftitem("tutorial:coin_grau1", {
        description = "Spezial gray coin lv.1",
	inventory_image = "tutorial_coin_grau1.png",
})

minetest.register_craftitem("tutorial:coin_grau2", {
        description = "Spezial gray coin lv.2",
	inventory_image = "tutorial_coin_grau2.png",
})

minetest.register_craftitem("tutorial:coin_grau3", {
        description = "Spezial gray coin lv.3",
	inventory_image = "tutorial_coin_grau3.png",
})

minetest.register_craftitem("tutorial:coin_grau4", {
        description = "Spezial gray coin lv.4",
	inventory_image = "tutorial_coin_grau4.png",
})

minetest.register_craftitem("tutorial:coin_grau5", {
        description = "Spezial gray coin lv.5",
	inventory_image = "tutorial_coin_grau5.png",
})

minetest.register_craftitem("tutorial:coin_grau6", {
        description = "Spezial gray coin lv.6",
	inventory_image = "tutorial_coin_grau6.png",
})

minetest.register_craftitem("tutorial:coin_grau7", {
        description = "Spezial gray coin lv.7",
	inventory_image = "tutorial_coin_grau7.png",
})

minetest.register_craftitem("tutorial:coin_grau8", {
        description = "Spezial gray coin lv.8",
	inventory_image = "tutorial_coin_grau8.png",
})

minetest.register_craftitem("tutorial:coin_grau9", {
        description = "Spezial gray coin lv.9",
	inventory_image = "tutorial_coin_grau9.png",
})

minetest.register_craftitem("tutorial:coin_grau10", {
        description = "Spezial gray coin lv.10",
	inventory_image = "tutorial_coin_grau10.png",
})

minetest.register_craftitem("tutorial:coin_grau11", {
        description = "Spezial gray coin lv.11",
	inventory_image = "tutorial_coin_grau11.png",
})

minetest.register_craftitem("tutorial:coin_grau12", {
        description = "Spezial gray coin lv.12",
	inventory_image = "tutorial_coin_grau12.png",
})

minetest.register_craftitem("tutorial:coin_grau13", {
        description = "Spezial gray coin lv.13",
	inventory_image = "tutorial_coin_grau13.png",
})

minetest.register_craftitem("tutorial:coin_grau14", {
        description = "Spezial gray coin lv.14",
	inventory_image = "tutorial_coin_grau14.png",
})

minetest.register_craftitem("tutorial:coin_grau15", {
        description = "Spezial gray coin lv.15",
	inventory_image = "tutorial_coin_grau15.png",
})

minetest.register_craftitem("tutorial:coin_grau16", {
        description = "Spezial gray coin lv.16",
	inventory_image = "tutorial_coin_grau16.png",
})

minetest.register_craftitem("tutorial:coin_grau17", {
        description = "Spezial gray coin lv.17",
	inventory_image = "tutorial_coin_grau17.png",
})

minetest.register_craftitem("tutorial:coin_grau18", {
        description = "Spezial gray coin lv.18",
	inventory_image = "tutorial_coin_grau18.png",
})

minetest.register_craftitem("tutorial:coin_grau19", {
        description = "Spezial gray coin lv.19",
	inventory_image = "tutorial_coin_grau19.png",
})

minetest.register_craftitem("tutorial:coin_grau20", {
        description = "Spezial gray coin lv.20",
	inventory_image = "tutorial_coin_grau20.png",
})


minetest.register_craft({
        output = 'tutorial:coin_grau20',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau19', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau19',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau18', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau18',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau17', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau17',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau16', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau16',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau15', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau15',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau14', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau14',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau13', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau13',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau12', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau12',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau11', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau11',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau10', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau10',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau9', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau9',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau8', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau8',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau7', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau7',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau6', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau6',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau5', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau5',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau4', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau4',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau3', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau3',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau2', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau2',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau1', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})
minetest.register_craft({
        output = 'tutorial:coin_grau1',
        recipe = {
                {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:obsidian6', 'tutorial:coin_grau'},
				{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
        }
})

minetest.register_node("tutorial:level1_grau",{
 tiles  = {"tutorial_level1_grau.png"},
 description = "You are now in Level gray 1",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level2_grau",{
 tiles  = {"tutorial_level2_grau.png"},
 description = "You are now in Level gray 2",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level3_grau",{
 tiles  = {"tutorial_level3_grau.png"},
 description = "You are now in Level gray 3",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level4_grau",{
 tiles  = {"tutorial_level4_grau.png"},
 description = "You are now in Level gray 4",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level5_grau",{
 tiles  = {"tutorial_level5_grau.png"},
 description = "You are now in Level gray 5",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level6_grau",{
 tiles  = {"tutorial_level6_grau.png"},
 description = "You are now in Level gray 6",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level7_grau",{
 tiles  = {"tutorial_level7_grau.png"},
 description = "You are now in Level gray 7",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level8_grau",{
 tiles  = {"tutorial_level8_grau.png"},
 description = "You are now in Level gray 8",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level9_grau",{
 tiles  = {"tutorial_level9_grau.png"},
 description = "You are now in Level gray 9",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level10_grau",{
 tiles  = {"tutorial_level10_grau.png"},
 description = "You are now in Level gray 10",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level11_grau",{
 tiles  = {"tutorial_level11_grau.png"},
 description = "You are now in Level gray 11",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level12_grau",{
 tiles  = {"tutorial_level12_grau.png"},
 description = "You are now in Level gray 12",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level13_grau",{
 tiles  = {"tutorial_level13_grau.png"},
 description = "You are now in Level gray 13",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level14_grau",{
 tiles  = {"tutorial_level14_grau.png"},
 description = "You are now in Level gray 14",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level15_grau",{
 tiles  = {"tutorial_level15_grau.png"},
 description = "You are now in Level gray 15",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level16_grau",{
 tiles  = {"tutorial_level16_grau.png"},
 description = "You are now in Level gray 16",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level17_grau",{
 tiles  = {"tutorial_level17_grau.png"},
 description = "You are now in Level gray 17",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
					
minetest.register_node("tutorial:level18_grau",{
 tiles  = {"tutorial_level18_grau.png"},
 description = "You are now in Level gray 18",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level19_grau",{
 tiles  = {"tutorial_level19_grau.png"},
 description = "You are now in Level gray 19",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level20_grau",{
 tiles  = {"tutorial_level20_grau.png"},
 description = "You are now in Level gray 20",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level21_grau",{
 tiles  = {"tutorial_level21_grau.png"},
 description = "You are now in Level gray 21",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level22_grau",{
 tiles  = {"tutorial_level22_grau.png"},
 description = "You are now in Level gray 22",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level23_grau",{
 tiles  = {"tutorial_level23_grau.png"},
 description = "You are now in Level gray 23",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level24_grau",{
 tiles  = {"tutorial_level24_grau.png"},
 description = "You are now in Level gray 24",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level25_grau",{
 tiles  = {"tutorial_level25_grau.png"},
 description = "You are now in Level gray 25",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level26_grau",{
 tiles  = {"tutorial_level26_grau.png"},
 description = "You are now in Level gray 26",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level27_grau",{
 tiles  = {"tutorial_level27_grau.png"},
 description = "You are now in Level gray 27",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level28_grau",{
 tiles  = {"tutorial_level28_grau.png"},
 description = "You are now in Level gray 28",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level29_grau",{
 tiles  = {"tutorial_level29_grau.png"},
 description = "You are now in Level gray 29",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level30_grau",{
 tiles  = {"tutorial_level30_grau.png"},
 description = "You are now in Level gray 30",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level31_grau",{
 tiles  = {"tutorial_level31_grau.png"},
 description = "You are now in Level gray 31",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level32_grau",{
 tiles  = {"tutorial_level32_grau.png"},
 description = "You are now in Level gray 32",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level33_grau",{
 tiles  = {"tutorial_level33_grau.png"},
 description = "You are now in Level gray 33",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level34_grau",{
 tiles  = {"tutorial_level34_grau.png"},
 description = "You are now in Level gray 34",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level35_grau",{
 tiles  = {"tutorial_level35_grau.png"},
 description = "You are now in Level gray 35",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level36_grau",{
 tiles  = {"tutorial_level36_grau.png"},
 description = "You are now in Level gray 36",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level37_grau",{
 tiles  = {"tutorial_level37_grau.png"},
 description = "You are now in Level gray 37",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level38_grau",{
 tiles  = {"tutorial_level38_grau.png"},
 description = "You are now in Level gray 38",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level39_grau",{
 tiles  = {"tutorial_level39_grau.png"},
 description = "You are now in Level gray 39",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level40_grau",{
 tiles  = {"tutorial_level40_grau.png"},
 description = "You are now in Level gray 40",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level41_grau",{
 tiles  = {"tutorial_level41_grau.png"},
 description = "You are now in Level gray 41",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level42_grau",{
 tiles  = {"tutorial_level42_grau.png"},
 description = "You are now in Level gray 42",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level43_grau",{
 tiles  = {"tutorial_level43_grau.png"},
 description = "You are now in Level gray 43",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level44_grau",{
 tiles  = {"tutorial_level44_grau.png"},
 description = "You are now in Level gray 44",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level45_grau",{
 tiles  = {"tutorial_level45_grau.png"},
 description = "You are now in Level gray 45",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level46_grau",{
 tiles  = {"tutorial_level46_grau.png"},
 description = "You are now in Level gray 46",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level47_grau",{
 tiles  = {"tutorial_level47_grau.png"},
 description = "You are now in Level gray 47",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level48_grau",{
 tiles  = {"tutorial_level48_grau.png"},
 description = "You are now in Level gray 48",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level49_grau",{
 tiles  = {"tutorial_level49_grau.png"},
 description = "You are now in Level gray 49",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level50_grau",{
 tiles  = {"tutorial_level50_grau.png"},
 description = "You are now in Level gray 50",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level51_grau",{
 tiles  = {"tutorial_level51_grau.png"},
 description = "You are now in Level gray 51",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level52_grau",{
 tiles  = {"tutorial_level52_grau.png"},
 description = "You are now in Level gray 52",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level53_grau",{
 tiles  = {"tutorial_level53_grau.png"},
 description = "You are now in Level gray 53",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level54_grau",{
 tiles  = {"tutorial_level54_grau.png"},
 description = "You are now in Level gray 54",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level55_grau",{
 tiles  = {"tutorial_level55_grau.png"},
 description = "You are now in Level gray 55",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level56_grau",{
 tiles  = {"tutorial_level56_grau.png"},
 description = "You are now in Level gray 56",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level57_grau",{
 tiles  = {"tutorial_level57_grau.png"},
 description = "You are now in Level gray 57",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level58_grau",{
 tiles  = {"tutorial_level58_grau.png"},
 description = "You are now in Level gray 58",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level59_grau",{
 tiles  = {"tutorial_level59_grau.png"},
 description = "You are now in Level gray 59",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level60_grau",{
 tiles  = {"tutorial_level60_grau.png"},
 description = "You are now in Level gray 60",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level61_grau",{
 tiles  = {"tutorial_level61_grau.png"},
 description = "You are now in Level gray 61",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level62_grau",{
 tiles  = {"tutorial_level62_grau.png"},
 description = "You are now in Level gray 62",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level63_grau",{
 tiles  = {"tutorial_level63_grau.png"},
 description = "You are now in Level gray 63",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level64_grau",{
 tiles  = {"tutorial_level64_grau.png"},
 description = "You are now in Level gray 64",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level65_grau",{
 tiles  = {"tutorial_level65_grau.png"},
 description = "You are now in Level gray 65",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level66_grau",{
 tiles  = {"tutorial_level66_grau.png"},
 description = "You are now in Level gray 66",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level67_grau",{
 tiles  = {"tutorial_level67_grau.png"},
 description = "You are now in Level gray 67",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level68_grau",{
 tiles  = {"tutorial_level68_grau.png"},
 description = "You are now in Level gray 68",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level69_grau",{
 tiles  = {"tutorial_level69_grau.png"},
 description = "You are now in Level gray 69",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level70_grau",{
 tiles  = {"tutorial_level70_grau.png"},
 description = "You are now in Level gray 70",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level71_grau",{
 tiles  = {"tutorial_level71_grau.png"},
 description = "You are now in Level gray 71",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level72_grau",{
 tiles  = {"tutorial_level72_grau.png"},
 description = "You are now in Level gray 72",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level73_grau",{
 tiles  = {"tutorial_level73_grau.png"},
 description = "You are now in Level gray 73",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level74_grau",{
 tiles  = {"tutorial_level74_grau.png"},
 description = "You are now in Level gray 74",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level75_grau",{
 tiles  = {"tutorial_level75_grau.png"},
 description = "You are now in Level gray 75",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level76_grau",{
 tiles  = {"tutorial_level76_grau.png"},
 description = "You are now in Level gray 76",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level77_grau",{
 tiles  = {"tutorial_level77_grau.png"},
 description = "You are now in Level gray 77",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level78_grau",{
 tiles  = {"tutorial_level78_grau.png"},
 description = "You are now in Level gray 78",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level79_grau",{
 tiles  = {"tutorial_level79_grau.png"},
 description = "You are now in Level gray 79",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level80_grau",{
 tiles  = {"tutorial_level80_grau.png"},
 description = "You are now in Level gray 80",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level81_grau",{
 tiles  = {"tutorial_level81_grau.png"},
 description = "You are now in Level gray 81",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level82_grau",{
 tiles  = {"tutorial_level82_grau.png"},
 description = "You are now in Level gray 82",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level83_grau",{
 tiles  = {"tutorial_level83_grau.png"},
 description = "You are now in Level gray 83",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level84_grau",{
 tiles  = {"tutorial_level84_grau.png"},
 description = "You are now in Level gray 84",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level85_grau",{
 tiles  = {"tutorial_level85_grau.png"},
 description = "You are now in Level gray 85",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level86_grau",{
 tiles  = {"tutorial_level86_grau.png"},
 description = "You are now in Level gray 86",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level87_grau",{
 tiles  = {"tutorial_level87_grau.png"},
 description = "You are now in Level gray 87",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level88_grau",{
 tiles  = {"tutorial_level88_grau.png"},
 description = "You are now in Level gray 88",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level89_grau",{
 tiles  = {"tutorial_level89_grau.png"},
 description = "You are now in Level gray 89",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level90_grau",{
 tiles  = {"tutorial_level90_grau.png"},
 description = "You are now in Level gray 90",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level91_grau",{
 tiles  = {"tutorial_level91_grau.png"},
 description = "You are now in Level gray 91",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level92_grau",{
 tiles  = {"tutorial_level92_grau.png"},
 description = "You are now in Level gray 92",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level93_grau",{
 tiles  = {"tutorial_level93_grau.png"},
 description = "You are now in Level gray 93",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level94_grau",{
 tiles  = {"tutorial_level94_grau.png"},
 description = "You are now in Level gray 94",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level95_grau",{
 tiles  = {"tutorial_level95_grau.png"},
 description = "You are now in Level gray 95",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level96_grau",{
 tiles  = {"tutorial_level96_grau.png"},
 description = "You are now in Level gray 96",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level97_grau",{
 tiles  = {"tutorial_level97_grau.png"},
 description = "You are now in Level gray 97",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level98_grau",{
 tiles  = {"tutorial_level98_grau.png"},
 description = "You are now in Level gray 98",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level99_grau",{
 tiles  = {"tutorial_level99_grau.png"},
 description = "You are now in Level gray 99",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level100_grau",{
 tiles  = {"tutorial_level100_grau.png"},
 description = "You are now in Level gray 100",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:levelMAX_grau",{
 tiles  = {"tutorial_levelMAX_grau.png"},
 description = "You are now in Level gray MAX",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level1_blau",{
 tiles  = {"tutorial_level1_blau.png"},
 description = "You are now in Level blue 1",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level2_blau",{
 tiles  = {"tutorial_level2_blau.png"},
 description = "You are now in Level blue 2",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level3_blau",{
 tiles  = {"tutorial_level3_blau.png"},
 description = "You are now in Level blue 3",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level4_blau",{
 tiles  = {"tutorial_level4_blau.png"},
 description = "You are now in Level blue 4",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level5_blau",{
 tiles  = {"tutorial_level5_blau.png"},
 description = "You are now in Level blue 5",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level6_blau",{
 tiles  = {"tutorial_level6_blau.png"},
 description = "You are now in Level blue 6",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level7_blau",{
 tiles  = {"tutorial_level7_blau.png"},
 description = "You are now in Level blue 7",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level8_blau",{
 tiles  = {"tutorial_level8_blau.png"},
 description = "You are now in Level blue 8",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level9_blau",{
 tiles  = {"tutorial_level9_blau.png"},
 description = "You are now in Level blue 9",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level10_blau",{
 tiles  = {"tutorial_level10_blau.png"},
 description = "You are now in Level blue 10",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level11_blau",{
 tiles  = {"tutorial_level11_blau.png"},
 description = "You are now in Level blue 11",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level12_blau",{
 tiles  = {"tutorial_level12_blau.png"},
 description = "You are now in Level blue 12",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level13_blau",{
 tiles  = {"tutorial_level13_blau.png"},
 description = "You are now in Level blue 13",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level14_blau",{
 tiles  = {"tutorial_level14_blau.png"},
 description = "You are now in Level blue 14",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level15_blau",{
 tiles  = {"tutorial_level15_blau.png"},
 description = "You are now in Level blue 15",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level16_blau",{
 tiles  = {"tutorial_level16_blau.png"},
 description = "You are now in Level blue 16",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level17_blau",{
 tiles  = {"tutorial_level17_blau.png"},
 description = "You are now in Level blue 17",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
					
minetest.register_node("tutorial:level18_blau",{
 tiles  = {"tutorial_level18_blau.png"},
 description = "You are now in Level blue 18",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level19_blau",{
 tiles  = {"tutorial_level19_blau.png"},
 description = "You are now in Level blue 19",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level20_blau",{
 tiles  = {"tutorial_level20_blau.png"},
 description = "You are now in Level blue 20",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:levelMAX_blau",{
 tiles  = {"tutorial_levelMAX_blau.png"},
 description = "You are now in Level blue MAX",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})




minetest.register_craftitem("tutorial:coin", {
        description = "Coin (very rare)",
	inventory_image = "tutorial_coin.png",
})

minetest.register_node("tutorial:level1",{
 tiles  = {"tutorial_level1.png"},
 description = "You are now in Level 1",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level2",{
 tiles  = {"tutorial_level2.png"},
 description = "You are now in Level 2",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level3",{
 tiles  = {"tutorial_level3.png"},
 description = "You are now in Level 3",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level4",{
 tiles  = {"tutorial_level4.png"},
 description = "You are now in Level 4",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level5",{
 tiles  = {"tutorial_level5.png"},
 description = "You are now in Level 5",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level6",{
 tiles  = {"tutorial_level6.png"},
 description = "You are now in Level 6",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level7",{
 tiles  = {"tutorial_level7.png"},
 description = "You are now in Level 7",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level8",{
 tiles  = {"tutorial_level8.png"},
 description = "You are now in Level 8",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level9",{
 tiles  = {"tutorial_level9.png"},
 description = "You are now in Level 9",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level10",{
 tiles  = {"tutorial_level10.png"},
 description = "You are now in Level 10",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level11",{
 tiles  = {"tutorial_level11.png"},
 description = "You are now in Level 11",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level12",{
 tiles  = {"tutorial_level12.png"},
 description = "You are now in Level 12",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level13",{
 tiles  = {"tutorial_level13.png"},
 description = "You are now in Level 13",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level14",{
 tiles  = {"tutorial_level14.png"},
 description = "You are now in Level 14",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level15",{
 tiles  = {"tutorial_level15.png"},
 description = "You are now in Level 15",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level16",{
 tiles  = {"tutorial_level16.png"},
 description = "You are now in Level 16",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level17",{
 tiles  = {"tutorial_level17.png"},
 description = "You are now in Level 17",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
					
minetest.register_node("tutorial:level18",{
 tiles  = {"tutorial_level18.png"},
 description = "You are now in Level 18",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level19",{
 tiles  = {"tutorial_level19.png"},
 description = "You are now in Level 19",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level20",{
 tiles  = {"tutorial_level20.png"},
 description = "You are now in Level 20",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level21",{
 tiles  = {"tutorial_level21.png"},
 description = "You are now in Level 21",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level22",{
 tiles  = {"tutorial_level22.png"},
 description = "You are now in Level 22",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level22",{
 tiles  = {"tutorial_level22.png"},
 description = "You are now in Level 22",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level23",{
 tiles  = {"tutorial_level23.png"},
 description = "You are now in Level 23",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level24",{
 tiles  = {"tutorial_level24.png"},
 description = "You are now in Level 24",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level25",{
 tiles  = {"tutorial_level25.png"},
 description = "You are now in Level 25",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level26",{
 tiles  = {"tutorial_level26.png"},
 description = "You are now in Level 26",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level27",{
 tiles  = {"tutorial_level27.png"},
 description = "You are now in Level 27",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level28",{
 tiles  = {"tutorial_level28.png"},
 description = "You are now in Level 28",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level29",{
 tiles  = {"tutorial_level29.png"},
 description = "You are now in Level 29",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level30",{
 tiles  = {"tutorial_level30.png"},
 description = "You are now in Level 30",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level31",{
 tiles  = {"tutorial_level31.png"},
 description = "You are now in Level 31",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level32",{
 tiles  = {"tutorial_level32.png"},
 description = "You are now in Level 32",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level33",{
 tiles  = {"tutorial_level33.png"},
 description = "You are now in Level 33",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level34",{
 tiles  = {"tutorial_level34.png"},
 description = "You are now in Level 34",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level35",{
 tiles  = {"tutorial_level35.png"},
 description = "You are now in Level 35",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level36",{
 tiles  = {"tutorial_level36.png"},
 description = "You are now in Level 36",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level37",{
 tiles  = {"tutorial_level37.png"},
 description = "You are now in Level 37",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level38",{
 tiles  = {"tutorial_level38.png"},
 description = "You are now in Level 38",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level39",{
 tiles  = {"tutorial_level39.png"},
 description = "You are now in Level 39",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level40",{
 tiles  = {"tutorial_level40.png"},
 description = "You are now in Level 40",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level41",{
 tiles  = {"tutorial_level41.png"},
 description = "You are now in Level 41",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level42",{
 tiles  = {"tutorial_level42.png"},
 description = "You are now in Level 42",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level43",{
 tiles  = {"tutorial_level43.png"},
 description = "You are now in Level 43",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level44",{
 tiles  = {"tutorial_level44.png"},
 description = "You are now in Level 44",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level45",{
 tiles  = {"tutorial_level45.png"},
 description = "You are now in Level 45",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level46",{
 tiles  = {"tutorial_level46.png"},
 description = "You are now in Level 46",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level47",{
 tiles  = {"tutorial_level47.png"},
 description = "You are now in Level 47",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level48",{
 tiles  = {"tutorial_level48.png"},
 description = "You are now in Level 48",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level49",{
 tiles  = {"tutorial_level49.png"},
 description = "You are now in Level 49",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level50",{
 tiles  = {"tutorial_level50.png"},
 description = "You are now in Level 50",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level51",{
 tiles  = {"tutorial_level51.png"},
 description = "You are now in Level 51",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level52",{
 tiles  = {"tutorial_level52.png"},
 description = "You are now in Level 52",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level53",{
 tiles  = {"tutorial_level53.png"},
 description = "You are now in Level 53",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level54",{
 tiles  = {"tutorial_level54.png"},
 description = "You are now in Level 54",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level55",{
 tiles  = {"tutorial_level55.png"},
 description = "You are now in Level 55",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level56",{
 tiles  = {"tutorial_level56.png"},
 description = "You are now in Level 56",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level57",{
 tiles  = {"tutorial_level57.png"},
 description = "You are now in Level 57",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level58",{
 tiles  = {"tutorial_level58.png"},
 description = "You are now in Level 58",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level59",{
 tiles  = {"tutorial_level59.png"},
 description = "You are now in Level 59",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level60",{
 tiles  = {"tutorial_level60.png"},
 description = "You are now in Level 60",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level61",{
 tiles  = {"tutorial_level61.png"},
 description = "You are now in Level 61",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level62",{
 tiles  = {"tutorial_level62.png"},
 description = "You are now in Level 62",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level63",{
 tiles  = {"tutorial_level63.png"},
 description = "You are now in Level 63",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level64",{
 tiles  = {"tutorial_level64.png"},
 description = "You are now in Level 64",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level65",{
 tiles  = {"tutorial_level65.png"},
 description = "You are now in Level 65",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level66",{
 tiles  = {"tutorial_level66.png"},
 description = "You are now in Level 66",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level67",{
 tiles  = {"tutorial_level67.png"},
 description = "You are now in Level 67",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level68",{
 tiles  = {"tutorial_level68.png"},
 description = "You are now in Level 68",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level69",{
 tiles  = {"tutorial_level69.png"},
 description = "You are now in Level 69",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level70",{
 tiles  = {"tutorial_level70.png"},
 description = "You are now in Level 70",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level71",{
 tiles  = {"tutorial_level71.png"},
 description = "You are now in Level 71",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level72",{
 tiles  = {"tutorial_level72.png"},
 description = "You are now in Level 72",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level73",{
 tiles  = {"tutorial_level73.png"},
 description = "You are now in Level 73",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level74",{
 tiles  = {"tutorial_level74.png"},
 description = "You are now in Level 74",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level75",{
 tiles  = {"tutorial_level75.png"},
 description = "You are now in Level 75",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level76",{
 tiles  = {"tutorial_level76.png"},
 description = "You are now in Level 76",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level77",{
 tiles  = {"tutorial_level77.png"},
 description = "You are now in Level 77",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level78",{
 tiles  = {"tutorial_level78.png"},
 description = "You are now in Level 78",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level79",{
 tiles  = {"tutorial_level79.png"},
 description = "You are now in Level 79",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level80",{
 tiles  = {"tutorial_level80.png"},
 description = "You are now in Level 80",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level81",{
 tiles  = {"tutorial_level81.png"},
 description = "You are now in Level 81",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level82",{
 tiles  = {"tutorial_level82.png"},
 description = "You are now in Level 82",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level83",{
 tiles  = {"tutorial_level83.png"},
 description = "You are now in Level 83",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level84",{
 tiles  = {"tutorial_level84.png"},
 description = "You are now in Level 84",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level85",{
 tiles  = {"tutorial_level85.png"},
 description = "You are now in Level 85",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level86",{
 tiles  = {"tutorial_level86.png"},
 description = "You are now in Level 86",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level87",{
 tiles  = {"tutorial_level87.png"},
 description = "You are now in Level 87",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level88",{
 tiles  = {"tutorial_level88.png"},
 description = "You are now in Level 88",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level89",{
 tiles  = {"tutorial_level89.png"},
 description = "You are now in Level 89",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level90",{
 tiles  = {"tutorial_level90.png"},
 description = "You are now in Level 90",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level91",{
 tiles  = {"tutorial_level91.png"},
 description = "You are now in Level 91",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level92",{
 tiles  = {"tutorial_level92.png"},
 description = "You are now in Level 92",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level93",{
 tiles  = {"tutorial_level93.png"},
 description = "You are now in Level 93",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level94",{
 tiles  = {"tutorial_level94.png"},
 description = "You are now in Level 94",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level95",{
 tiles  = {"tutorial_level95.png"},
 description = "You are now in Level 95",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level96",{
 tiles  = {"tutorial_level96.png"},
 description = "You are now in Level 96",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level97",{
 tiles  = {"tutorial_level97.png"},
 description = "You are now in Level 97",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level98",{
 tiles  = {"tutorial_level98.png"},
 description = "You are now in Level 98",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level99",{
 tiles  = {"tutorial_level99.png"},
 description = "You are now in Level 99",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:level100",{
 tiles  = {"tutorial_level100.png"},
 description = "You are now in Level 100",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("tutorial:levelMAX",{
 tiles  = {"tutorial_levelMAX.png"},
 description = "Du bist nun im MAX Level",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})



minetest.register_craftitem("tutorial:admin", {
	description = "Admin",
	inventory_image = "tutorial_admin_ore.png",
})



minetest.register_craftitem("tutorial:geschenkpapier", {
        description = "Wrapping paper",
	inventory_image = "tutorial_geschenkpapier.png",
})

minetest.register_craft({
        output = 'tutorial:geschenk',
        recipe = {
                {'tutorial:geschenkpapier', 'tutorial:geschenkpapier', ''},
                {'tutorial:geschenkpapier', 'tutorial:geschenkpapier', ''},
                {'', '', ''},
        }
})

minetest.register_node("tutorial:geschenk",{
description = "Gift",
 is_ground_content = true,
 tiles  = {"tutorial_geschenk.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
 drop = {
	max_items = 1,
		items = {
			{items = {'tutorial:spawner_mummy'},rarity = 30,},
			{items = {'tutorial:geschenk 3'},rarity = 10,},
			{items = {'tutorial:dunklematerie4 3'},rarity = 6,},
			{items = {'tutorial:geschenk 2'},rarity = 7,},
			{items = {'default:ice'},rarity = 3,},
			{items = {'default:mese 4'},rarity = 2,},
 			{items = {'tutorial:lightstone 100'},rarity = 3,}

		}
	},


})


--Version 0.16.0
minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe25",
        cooktime = 10000,
	output = "tutorial:ultrabattleaxe",
})


minetest.register_tool("tutorial:ultrabattleaxe", {
	description = "Superultrabattleaxe",
	inventory_image = "tutorial_super_ultrabattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=1.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=101}
	},
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe24",
        cooktime = 5000,
	output = "tutorial:ultrabattleaxe25",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe23",
        cooktime = 4800,
	output = "tutorial:ultrabattleaxe24",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe22",
        cooktime = 4600,
	output = "tutorial:ultrabattleaxe23",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe21",
        cooktime = 4400,
	output = "tutorial:ultrabattleaxe22",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe20",
        cooktime = 4200,
	output = "tutorial:ultrabattleaxe21",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe19",
        cooktime = 4000,
	output = "tutorial:ultrabattleaxe20",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe18",
        cooktime = 3800,
	output = "tutorial:ultrabattleaxe19",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe17",
        cooktime = 3600,
	output = "tutorial:ultrabattleaxe18",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe16",
        cooktime = 3400,
	output = "tutorial:ultrabattleaxe17",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe15",
        cooktime = 3200,
	output = "tutorial:ultrabattleaxe16",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe14",
        cooktime = 3000,
	output = "tutorial:ultrabattleaxe15",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe13",
        cooktime = 2800,
	output = "tutorial:ultrabattleaxe14",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe12",
        cooktime = 2600,
	output = "tutorial:ultrabattleaxe13",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe11",
        cooktime = 2400,
	output = "tutorial:ultrabattleaxe12",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe10",
        cooktime = 2200,
	output = "tutorial:ultrabattleaxe11",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe9",
        cooktime = 2000,
	output = "tutorial:ultrabattleaxe10",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe8",
        cooktime = 1800,
	output = "tutorial:ultrabattleaxe9",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe7",
        cooktime = 1600,
	output = "tutorial:ultrabattleaxe8",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe6",
        cooktime = 1400,
	output = "tutorial:ultrabattleaxe7",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe5",
        cooktime = 1200,
	output = "tutorial:ultrabattleaxe6",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe4",
        cooktime = 1000,
	output = "tutorial:ultrabattleaxe5",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe3",
        cooktime = 800,
	output = "tutorial:ultrabattleaxe4",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe2",
        cooktime = 600,
	output = "tutorial:ultrabattleaxe3",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:ultrabattleaxe1",
        cooktime = 400,
	output = "tutorial:ultrabattleaxe2",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:kristallbattleaxe5",
        cooktime = 200,
	output = "tutorial:ultrabattleaxe1",
})




minetest.register_tool("tutorial:ultrabattleaxe25", {
	description = "Ultrabattleaxe lv.25",
	inventory_image = "tutorial_ultrabattleaxe25.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=4.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=100}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe24", {
	description = "Ultrabattleaxe lv.24",
	inventory_image = "tutorial_ultrabattleaxe24.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=8.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=99}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe23", {
	description = "Ultrabattleaxe lv.23",
	inventory_image = "tutorial_ultrabattleaxe23.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=12.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=98}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe22", {
	description = "Ultrabattleaxe lv.22",
	inventory_image = "tutorial_ultrabattleaxe22.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=16.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=97}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe21", {
	description = "Ultrabattleaxe lv.21",
	inventory_image = "tutorial_ultrabattleaxe21.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=96}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe20", {
	description = "Ultrabattleaxe lv.20",
	inventory_image = "tutorial_ultrabattleaxe20.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=24.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=95}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe19", {
	description = "Ultrabattleaxe lv.19",
	inventory_image = "tutorial_ultrabattleaxe19.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=28.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=94}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe18", {
	description = "Ultrabattleaxe lv.18",
	inventory_image = "tutorial_ultrabattleaxe18.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=32.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=93}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe17", {
	description = "Ultrabattleaxe lv.17",
	inventory_image = "tutorial_ultrabattleaxe17.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=36.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=92}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe16", {
	description = "Ultrabattleaxe lv.16",
	inventory_image = "tutorial_ultrabattleaxe16.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=40.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=91}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe15", {
	description = "Ultrabattleaxe lv.15",
	inventory_image = "tutorial_ultrabattleaxe15.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=44.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=90}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe14", {
	description = "Ultrabattleaxe lv.14",
	inventory_image = "tutorial_ultrabattleaxe14.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=48.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=89}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe13", {
	description = "Ultrabattleaxe lv.13",
	inventory_image = "tutorial_ultrabattleaxe13.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=52.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=88}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe12", {
	description = "Ultrabattleaxe lv.12",
	inventory_image = "tutorial_ultrabattleaxe12.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=56.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=87}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe11", {
	description = "Ultrabattleaxe lv.11",
	inventory_image = "tutorial_ultrabattleaxe11.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=60.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=86}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe10", {
	description = "Ultrabattleaxe lv.10",
	inventory_image = "tutorial_ultrabattleaxe10.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=64.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=85}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe9", {
	description = "Ultrabattleaxe lv.9",
	inventory_image = "tutorial_ultrabattleaxe9.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=68.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=84}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe8", {
	description = "Ultrabattleaxe lv.8",
	inventory_image = "tutorial_ultrabattleaxe8.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=72.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=83}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe7", {
	description = "Ultrabattleaxe lv.7",
	inventory_image = "tutorial_ultrabattleaxe7.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=76.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=82}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe6", {
	description = "Ultrabattleaxe lv.6",
	inventory_image = "tutorial_ultrabattleaxe6.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=80.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=81}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe5", {
	description = "Ultrabattleaxe lv.5",
	inventory_image = "tutorial_ultrabattleaxe5.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=84.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=80}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe4", {
	description = "Ultrabattleaxe lv.4",
	inventory_image = "tutorial_ultrabattleaxe4.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=88.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=79}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe3", {
	description = "Ultrabattleaxe lv.3",
	inventory_image = "tutorial_ultrabattleaxe3.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=1.0, [10]=92.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=78}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe2", {
	description = "Ultrabattleaxe lv.2",
	inventory_image = "tutorial_ultrabattleaxe2.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=2.0, [10]=96.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=77}
	},
})

minetest.register_tool("tutorial:ultrabattleaxe1", {
	description = "Ultrabattleaxe lv.1",
	inventory_image = "tutorial_ultrabattleaxe1.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=3.0, [10]=100.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=76}
	},
})
--Version 0.15.0
minetest.register_craft({
        output = 'tutorial:kristallbattleaxe5',
        recipe = {
                {'tutorial:admin', 'tutorial:admin', 'tutorial:admin'},
                {'tutorial:admin', 'tutorial:kristallbattleaxe4', 'tutorial:admin'},
                {'tutorial:admin', 'tutorial:admin', 'tutorial:admin'},
        }
})

minetest.register_craft({
        output = 'tutorial:kristallbattleaxe4',
        recipe = {
                {'gems:emerald_block', 'tutorial:thunder', 'gems:emerald_block'},
                {'gems:emerald_block', 'tutorial:kristallbattleaxe3', 'gems:emerald_block'},
                {'gems:emerald_block', 'tutorial:thunder', 'gems:emerald_block'},
        }
})

minetest.register_craft({
        output = 'tutorial:kristallbattleaxe3',
        recipe = {
                {'gems:pearl_block', 'tutorial:thunder', 'gems:shadow_block'},
                {'gems:pearl_block', 'tutorial:kristallbattleaxe2', 'gems:shadow_block'},
                {'gems:pearl_block', 'tutorial:thunder', 'gems:shadow_block'},
        }
})

minetest.register_craft({
        output = 'tutorial:kristallbattleaxe2',
        recipe = {
                {'gems:amethyst_block', 'tutorial:thunder', 'gems:amethyst_block'},
                {'gems:amethyst_block', 'tutorial:kristallbattleaxe1', 'gems:amethyst_block'},
                {'gems:amethyst_block', 'tutorial:thunder', 'gems:amethyst_block'},
        }
})


minetest.register_craft({
        output = 'tutorial:kristallbattleaxe1',
        recipe = {
                {'gems:ruby_block', 'tutorial:thunder', 'gems:sapphire_block'},
                {'gems:ruby_block', 'tutorial:superenergybattleaxe7', 'gems:sapphire_block'},
                {'gems:ruby_block', 'tutorial:thunder', 'gems:sapphire_block'},
        }
})

minetest.register_tool("tutorial:kristallbattleaxe5", {
	description = "Crystalbattleaxe lv.5",
	inventory_image = "tutorial_kristallbattleaxe5.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=4.0, [10]=110.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=75}
	},
})

minetest.register_tool("tutorial:kristallbattleaxe4", {
	description = "Crystalbattleaxe lv.4",
	inventory_image = "tutorial_kristallbattleaxe4.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=1.0, [9]=5.0, [10]=120.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=74}
	},
})


minetest.register_tool("tutorial:kristallbattleaxe3", {
	description = "Crystalbattleaxe lv.3",
	inventory_image = "tutorial_kristallbattleaxe3.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=2.0, [9]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=73}
	},
})

minetest.register_tool("tutorial:kristallbattleaxe2", {
	description = "Crystalbattleaxe lv.2",
	inventory_image = "tutorial_kristallbattleaxe2.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=3.0, [9]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=72}
	},
})

minetest.register_tool("tutorial:kristallbattleaxe1", {
	description = "Crystalbattleaxe lv.1",
	inventory_image = "tutorial_kristallbattleaxe1.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=4.0, [9]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=71}
	},
})

minetest.register_node("tutorial:stone_with_admin", {
	description = "Admin ore",
	tiles = {"default_stone.png^tutorial_admin_ore.png"},
	is_ground_content = true,
	groups = {cracky=10},
	drop = 'tutorial:admin',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_admin",
	wherein        = "default:stone",
	clust_scarcity = 25*25*25,
	clust_num_ores = 1,
	clust_size     = 1,
	height_min     = -31000,
	height_max     = -1000,
	flags          = "absheight",
})



--Version 0.14.0



minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:energybattleaxe12",
        cooktime = 1000,
	output = "tutorial:superenergybattleaxe1",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:superenergybattleaxe1",
        cooktime = 1200,
	output = "tutorial:superenergybattleaxe2",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:superenergybattleaxe2",
        cooktime = 1400,
	output = "tutorial:superenergybattleaxe3",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:superenergybattleaxe3",
        cooktime = 1600,
	output = "tutorial:superenergybattleaxe4",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:superenergybattleaxe4",
        cooktime = 1800,
	output = "tutorial:superenergybattleaxe5",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:superenergybattleaxe5",
        cooktime = 2000,
	output = "tutorial:superenergybattleaxe6",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:superenergybattleaxe6",
        cooktime = 2500,
	output = "tutorial:superenergybattleaxe7",
})


minetest.register_tool("tutorial:superenergybattleaxe7", {
	description = "Superenergybattleaxe lv.7",
	inventory_image = "tutorial_superenergybattleaxe7.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=1.0, [8]=5.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=70}
	},
})

minetest.register_tool("tutorial:superenergybattleaxe6", {
	description = "Superenergybattleaxe lv.6",
	inventory_image = "tutorial_superenergybattleaxe6.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=3.0, [8]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=69}
	},
})

minetest.register_tool("tutorial:superenergybattleaxe5", {
	description = "Superenergybattleaxe lv.5",
	inventory_image = "tutorial_superenergybattleaxe5.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=6.0, [8]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=68}
	},
})

minetest.register_tool("tutorial:superenergybattleaxe4", {
	description = "Superenergybattleaxe lv.4",
	inventory_image = "tutorial_superenergybattleaxe4.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=9.0, [8]=30.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=67}
	},
})

minetest.register_tool("tutorial:superenergybattleaxe3", {
	description = "Superenergybattleaxe lv.3",
	inventory_image = "tutorial_superenergybattleaxe3.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=12.0, [8]=40.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=66}
	},
})

minetest.register_tool("tutorial:superenergybattleaxe2", {
	description = "Superenergybattleaxe lv.2",
	inventory_image = "tutorial_superenergybattleaxe2.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=15.0, [8]=50.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=65}
	},
})

minetest.register_tool("tutorial:superenergybattleaxe1", {
	description = "Superenergybattleaxe lv.1",
	inventory_image = "tutorial_superenergybattleaxe1.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=20.0, [8]=60.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=64}
	},
})



minetest.register_craft({
        output = 'gems:amethyst_gem',
        recipe = {
                {'', '', ''},
                {'', '', ''},
                {'gems:sapphire_gem', 'gems:ruby_gem', ''},
        }
})

--Version 0.13.0

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:uraniumbattleaxe2",
        cooktime = 100,
	output = "tutorial:energybattleaxe1",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:energybattleaxe1",
        cooktime = 100,
	output = "tutorial:energybattleaxe2",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:energybattleaxe2",
        cooktime = 200,
	output = "tutorial:energybattleaxe3",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:energybattleaxe3",
        cooktime = 300,
	output = "tutorial:energybattleaxe4",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:energybattleaxe4",
        cooktime = 400,
	output = "tutorial:energybattleaxe5",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:energybattleaxe5",
        cooktime = 500,
	output = "tutorial:energybattleaxe6",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:energybattleaxe6",
        cooktime = 600,
	output = "tutorial:energybattleaxe7",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:energybattleaxe7",
        cooktime = 700,
	output = "tutorial:energybattleaxe8",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:energybattleaxe8",
        cooktime = 800,
	output = "tutorial:energybattleaxe9",
})



minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:energybattleaxe9",
        cooktime = 900,
	output = "tutorial:energybattleaxe10",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:energybattleaxe10",
        cooktime = 1000,
	output = "tutorial:energybattleaxe11",
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:energybattleaxe11",
        cooktime = 1500,
	output = "tutorial:energybattleaxe12",
})

minetest.register_tool("tutorial:energybattleaxe12", {
	description = "Energybattleaxe lv.12",
	inventory_image = "tutorial_energybattleaxe12.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=1.0, [7]=25.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=63}
	},
})




minetest.register_tool("tutorial:energybattleaxe11", {
	description = "Energybattleaxe lv.11",
	inventory_image = "tutorial_energybattleaxe11.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=3.0, [7]=50.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=62}
	},
})

minetest.register_tool("tutorial:energybattleaxe10", {
	description = "Energybattleaxe lv.10",
	inventory_image = "tutorial_energybattleaxe10.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=5.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=61}
	},
})

minetest.register_tool("tutorial:energybattleaxe9", {
	description = "Energybattleaxe lv.9",
	inventory_image = "tutorial_energybattleaxe9.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=60}
	},
})

minetest.register_tool("tutorial:energybattleaxe8", {
	description = "Energybattleaxe lv.8",
	inventory_image = "tutorial_energybattleaxe8.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=15.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=59}
	},
})

minetest.register_tool("tutorial:energybattleaxe7", {
	description = "Energybattleaxe lv.7",
	inventory_image = "tutorial_energybattleaxe7.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=58}
	},
})

minetest.register_tool("tutorial:energybattleaxe6", {
	description = "Energybattleaxe lv.6",
	inventory_image = "tutorial_energybattleaxe6.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=25.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=57}
	},
})

minetest.register_tool("tutorial:energybattleaxe5", {
	description = "Energybattleaxe lv.5",
	inventory_image = "tutorial_energybattleaxe5.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=30.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=56}
	},
})

minetest.register_tool("tutorial:energybattleaxe4", {
	description = "Energybattleaxe lv.4",
	inventory_image = "tutorial_energybattleaxe4.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=1.0, [6]=35.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=55}
	},
})

minetest.register_tool("tutorial:energybattleaxe3", {
	description = "Energybattleaxe lv.3",
	inventory_image = "tutorial_energybattleaxe3.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=2.0, [6]=40.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=54}
	},
})


minetest.register_tool("tutorial:energybattleaxe2", {
	description = "Energybattleaxe lv.2",
	inventory_image = "tutorial_energybattleaxe2.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=3.0, [6]=45.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=53}
	},
})

minetest.register_tool("tutorial:energybattleaxe1", {
	description = "Energybattleaxe lv.1",
	inventory_image = "tutorial_energybattleaxe1.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=4.0, [6]=50.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=52}
	},
})



--Version 0.12.0

minetest.register_craft({
        output = 'tutorial:uraniumbattleaxe2',
        recipe = {
                {'tutorial:uranium9', 'tutorial:uranium9', 'tutorial:uranium9'},
                {'tutorial:uranium9', 'tutorial:uraniumbattleaxe1', 'tutorial:uranium9'},
                {'tutorial:uranium9', 'tutorial:uranium9', 'tutorial:uranium9'},
        }
})

minetest.register_tool("tutorial:uraniumbattleaxe2", {
	description = "Uraniumbattleaxe lv.2",
	inventory_image = "tutorial_uraniumbattleaxe2.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=5.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=51}
	},
})




minetest.register_tool("tutorial:battleaxe", {
	description = "Battleaxe",
	inventory_image = "tutorial_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=100, maxlevel=3},
			choppy	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=100, maxlevel=3},
			crumbly =	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=100, maxlevel=3},
			fleshy	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=100, maxlevel=3},
			cracky	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=1},
	},
})

minetest.register_craft({
        output = 'tutorial:battleaxe',
        recipe = {
                {'default:wood', 'default:wood', 'default:wood'},
                {'default:wood', 'default:wood', 'default:wood'},
                {'', 'default:wood', ''},
        }
})


minetest.register_tool("tutorial:cloudentverner", {
	description = "Clouds remover",
	inventory_image = "tutorial_cloudentvernerg.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky={times={[0]=2.0}, uses=50, maxlevel=0}
		}
	},
})


minetest.register_craft({
        output = 'tutorial:cloudentverner',
        recipe = {
                {'wool:white', 'wool:white', 'wool:white'},
                {'wool:white', 'wool:white', 'wool:white'},
                {'', 'wool:white', ''},
        }
})





minetest.register_craft({
	type = "cooking",
	recipe = "default:coal_lump",
        cooktime = 5,
	output = "default:diamond",
})





minetest.register_craft({
        output = 'default:cactus 4',
        recipe = {
                {'', '', ''},
                {'', '', ''},
                {'default:dirt', 'default:dirt', ''},
        }
})

minetest.register_craft({
        output = 'default:cactus',
        recipe = {
                {'', '', ''},
                {'', '', ''},
                {'default:leaves', 'default:leaves', ''},
        }
})

minetest.register_craft({
        output = 'default:obsidian 8',
        recipe = {
                {'', '', ''},
                {'default:cobble', 'default:cobble', 'default:cobble'},
                {'default:cobble', 'default:cobble', 'default:cobble'},
        }
})



minetest.register_craft({
        output = 'tutorial:XP',
        recipe = {
                {'default:obsidian', '', 'default:obsidian'},
                {'', 'default:obsidian', ''},
                {'default:obsidian', '', 'default:obsidian'},
        }
})


minetest.register_craft({
        output = 'tutorial:superblock1 11',
        recipe = {
                {'tutorial:geld'},
        }
})

minetest.register_craft({
        output = 'tutorial:geld 250',
        recipe = {
                {'default:diamond'},
        }
})

minetest.register_craft({
        output = 'tutorial:geld 500',
        recipe = {
                {'default:mese_crystal', 'default:mese_crystal'},
        }
})

minetest.register_craft({
        output = 'tutorial:geld 75',
        recipe = {
                {'default:gold_ingot'},
        }
})

minetest.register_craft({
        output = 'tutorial:geld 50',
        recipe = {
                {'default:bronze_ingot'},
        }
})

minetest.register_craft({
        output = 'tutorial:geld 30',
        recipe = {
                {'default:copper_ingot'},
        }
})

minetest.register_craft({
        output = 'tutorial:geld 25',
        recipe = {
                {'default:steel_ingot'},
        }
})

minetest.register_craft({
        output = 'tutorial:geld 7',
        recipe = {
                {'default:clay_brick'},
        }
})


minetest.register_craftitem("tutorial:geld", {
	inventory_image = "tutorial_geld.png",
})


minetest.register_craftitem("tutorial:XP", {
	inventory_image = "tutorial_XP.png",
})


minetest.register_craft({
	type = "cooking",
	recipe = "default:stick",
        cooktime = 1,
	output = "default:coal_lump",
})



minetest.register_craft({
	type = "fuel",
	recipe = "tutorial:stone_coal_lump",
	burntime = 100,
})

minetest.register_craftitem("tutorial:stone_coal_lump", {
	description = "Stone coal lump",
	inventory_image = "tutorial_stone_coal_lump.png",
})

minetest.register_craft({
	type = "fuel",
	recipe = "tutorial:uranium9",
	burntime = 1000000,
})

minetest.register_craft({
        output = 'tutorial:stone_coal_lump 10',
        recipe = {
                {'default:cobble', 'default:cobble', 'default:cobble'},
                {'default:cobble', 'default:cobble', 'default:cobble'},
                {'default:cobble', 'default:cobble', 'default:cobble'},
        }
})


--Version 0.11.0
minetest.register_craft({
        output = 'tutorial:uraniumbattleaxe1',
        recipe = {
                {'tutorial:uranium8', 'tutorial:uranium8', 'tutorial:uranium8'},
                {'tutorial:uranium8', 'tutorial:superbattleaxe4', 'tutorial:uranium8'},
                {'tutorial:uranium8', 'tutorial:uranium8', 'tutorial:uranium8'},
        }
})



minetest.register_craft({
        output = 'tutorial:uranium2',
        recipe = {
                {'tutorial:uranium1', 'tutorial:uranium1', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:uranium3',
        recipe = {
                {'tutorial:uranium2', 'tutorial:uranium2', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:uranium4',
        recipe = {
                {'tutorial:uranium3', 'tutorial:uranium3', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:uranium5',
        recipe = {
                {'tutorial:uranium4', 'tutorial:uranium4', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:uranium6',
        recipe = {
                {'tutorial:uranium5', 'tutorial:uranium5', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:uranium7',
        recipe = {
                {'tutorial:uranium6', 'tutorial:uranium6', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:uranium8',
        recipe = {
                {'tutorial:uranium7', 'tutorial:uranium7', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:uranium9',
        recipe = {
                {'tutorial:uranium8', 'tutorial:uranium8', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_tool("tutorial:uraniumbattleaxe1", {
	description = "Uraniumbattleaxe lv.1",
	inventory_image = "tutorial_uraniumbattleaxe1.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=0.5, [5]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=50}
	},
})

minetest.register_node("tutorial:stone_with_uranium", {
	description = "Uranium Ore",
	tiles = {"default_stone.png^tutorial_mineral_uran.png"},
	is_ground_content = true,
	groups = {cracky=5,xp=1},
	drop = 'tutorial:uranium1 4',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("tutorial:uranium1", {
	description = "Uranium lv.1",
	inventory_image = "tutorial_uranium1.png",
})

minetest.register_craftitem("tutorial:uranium2", {
	description = "Uranium lv.2",
	inventory_image = "tutorial_uranium2.png",
})

minetest.register_craftitem("tutorial:uranium3", {
	description = "Uranium lv.3",
	inventory_image = "tutorial_uranium3.png",
})

minetest.register_craftitem("tutorial:uranium4", {
	description = "Uranium lv.4",
	inventory_image = "tutorial_uranium4.png",
})

minetest.register_craftitem("tutorial:uranium5", {
	description = "Uranium lv.5",
	inventory_image = "tutorial_uranium5.png",
})

minetest.register_craftitem("tutorial:uranium6", {
	description = "Uranium lv.6",
	inventory_image = "tutorial_uranium6.png",
})

minetest.register_craftitem("tutorial:uranium7", {
	description = "Uranium lv.7",
	inventory_image = "tutorial_uranium7.png",
})

minetest.register_craftitem("tutorial:uranium8", {
	description = "Uranium lv.8",
	inventory_image = "tutorial_uranium8.png",
})

minetest.register_craftitem("tutorial:uranium9", {
	description = "Uranium lv.9",
	inventory_image = "tutorial_uranium9.png",
})





minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_uranium",
	wherein        = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 8,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = 64,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_uranium",
	wherein        = "default:stone",
	clust_scarcity = 24*24*24,
	clust_num_ores = 27,
	clust_size     = 6,
	height_min     = -31000,
	height_max     = 0,
	flags          = "absheight",
})



minetest.register_node("tutorial:uran_chest", {
	description = "Uranium chest",
	tiles = {"tutorial_uran_chest_top.png",  "tutorial_uran_chest_top.png",  "tutorial_uran_chest_side.png",
		 "tutorial_uran_chest_side.png", "tutorial_uran_chest_side.png", "tutorial_uran_chest_front.png"},
	paramtype2 = "facedir",
	groups = {choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",default.chest_formspec)
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*8)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
	end,
})

local function has_locked_chest_privilege(meta, player)
	if player:get_player_name() ~= meta:get_string("owner") then
		return false
	end
	return true
end




minetest.register_craft({
        output = 'tutorial:superbattleaxe4',
        recipe = {
                {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
                {'tutorial:whiteblock6', 'tutorial:superbattleaxe3', 'tutorial:blackblock6'},
                {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
        }
})



minetest.register_craft({
        output = 'tutorial:superbattleaxe3',
        recipe = {
                {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
                {'tutorial:whiteblock6', 'tutorial:superbattleaxe2', 'tutorial:blackblock6'},
                {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
        }
})

minetest.register_craft({
        output = 'tutorial:superbattleaxe2',
        recipe = {
                {'tutorial:whiteblock5', 'tutorial:thunder', 'tutorial:blackblock5'},
                {'tutorial:whiteblock5', 'tutorial:superbattleaxe1', 'tutorial:blackblock5'},
                {'tutorial:whiteblock5', 'tutorial:thunder', 'tutorial:blackblock5'},
        }
})

minetest.register_craft({
        output = 'tutorial:superbattleaxe1',
        recipe = {
                {'tutorial:zauberstab9', 'tutorial:cloudbattleaxe_mega25', 'tutorial:swored_zauber9'},
                {'', '', ''},
                {'', '', ''},
        }
})




minetest.register_tool("tutorial:pistole", {
	description = "Admin tool 2: Admin Gun",
	inventory_image = "tutorial_pistole.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:patrone")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 2,
})
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
minetest.register_entity("tutorial:patrone", {
	visual = "mesh",
	visual_size = {x=5, y=5},
	mesh = "tutorial_fireball.x",
	textures = {"tutorial_patrone.png"},
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
		local s = player:getpos()
		local p = player:get_look_dir()
		local vec = {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z}
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=1000000},
		}, vec)
		local pos = player:getpos()
		for dx=-200,200 do
			for dy=-200,200 do
				for dz=-200,200 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(pos).name
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
						minetest.env:set_node(p, {name="tutorial:thunder"})
					else
						minetest.env:remove_node(p)
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
					local n = minetest.env:get_node(pos).name
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
						minetest.env:set_node(p, {name="tutorial:thunder"})
					else
						minetest.env:remove_node(p)
					end
				end
			end
		end
	end
})


minetest.register_tool("tutorial:patrone", {
	inventory_image = "tutorial_fireball.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:patrone")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 12,
})


minetest.register_tool("tutorial:superbattleaxe4", {
	description = "Superbattleaxe lv.4",
	inventory_image = "tutorial_superbattleaxe4.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=1.0, [5]=25.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=49}
	},
})

minetest.register_tool("tutorial:superbattleaxe3", {
	description = "Superbattleaxe lv.3",
	inventory_image = "tutorial_superbattleaxe3.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=2.0, [5]=50.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=48}
	},
})


minetest.register_tool("tutorial:superbattleaxe2", {
	description = "Superbattleaxe lv.2",
	inventory_image = "tutorial_superbattleaxe2.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=3.0, [5]=75.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=47}
	},
})


minetest.register_tool("tutorial:superbattleaxe1", {
	description = "Superbattleaxe lv.1",
	inventory_image = "tutorial_superbattleaxe1.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=4.0, [5]=100.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=46}
	},
})





--Version 0.10.1
minetest.register_craft({
        output = 'tutorial:whiteblock6',
        recipe = {
                {'', '', ''},
                {'tutorial:whiteblock5', 'tutorial:whiteblock5', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:whiteblock5',
        recipe = {
                {'', '', ''},
                {'tutorial:whiteblock4', 'tutorial:whiteblock4', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:whiteblock4',
        recipe = {
                {'', '', ''},
                {'tutorial:whiteblock3', 'tutorial:whiteblock3', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:whiteblock3',
        recipe = {
                {'', '', ''},
                {'tutorial:whiteblock2', 'tutorial:whiteblock2', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:whiteblock2',
        recipe = {
                {'', '', ''},
                {'tutorial:whiteblock1', 'tutorial:whiteblock1', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:whiteblock1',
        recipe = {
                {'', '', ''},
                {'tutorial:white', 'tutorial:white', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:blackblock6',
        recipe = {
                {'', '', ''},
                {'tutorial:blackblock5', 'tutorial:blackblock5', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:blackblock5',
        recipe = {
                {'', '', ''},
                {'tutorial:blackblock4', 'tutorial:blackblock4', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:blackblock4',
        recipe = {
                {'', '', ''},
                {'tutorial:blackblock3', 'tutorial:blackblock3', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:blackblock3',
        recipe = {
                {'', '', ''},
                {'tutorial:blackblock2', 'tutorial:blackblock2', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:blackblock2',
        recipe = {
                {'', '', ''},
                {'tutorial:blackblock1', 'tutorial:blackblock1', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:blackblock1',
        recipe = {
                {'', '', ''},
                {'tutorial:black', 'tutorial:black', ''},
                {'', '', ''},
        }
})


minetest.register_craftitem( "tutorial:blackblock1", {
	description = "Black item lv.1",
	inventory_image = "tutorial_blackblock1.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:blackblock2", {
	description = "Black item lv.2",
	inventory_image = "tutorial_blackblock2.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:blackblock3", {
	description = "Black item lv.3",
	inventory_image = "tutorial_blackblock3.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:blackblock4", {
	description = "Black item lv.4",
	inventory_image = "tutorial_blackblock4.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:blackblock5", {
	description = "Black item lv.5",
	inventory_image = "tutorial_blackblock5.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:blackblock6", {
	description = "Black item lv.6",
	inventory_image = "tutorial_blackblock6.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:whiteblock1", {
	description = "White item lv.1",
	inventory_image = "tutorial_whiteblock1.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:whiteblock2", {
	description = "White item lv.2",
	inventory_image = "tutorial_whiteblock2.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:whiteblock3", {
	description = "White item lv.3",
	inventory_image = "tutorial_whiteblock3.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:whiteblock4", {
	description = "White item lv.4",
	inventory_image = "tutorial_whiteblock4.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:whiteblock5", {
	description = "White item lv.5",
	inventory_image = "tutorial_whiteblock5.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:whiteblock6", {
	description = "White item lv.6",
	inventory_image = "tutorial_whiteblock6.png",
	on_place_on_ground = minetest.craftitem_place_item,
})


minetest.register_craft({
        output = 'tutorial:zauberstab',
        recipe = {
                {'', 'default:dirt', ''},
                {'', 'default:dirt', ''},
                {'', 'default:dirt', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:zauberstab9',
        recipe = {
                {'tutorial:diamondblock2', 'tutorial:dunklematerie6', 'tutorial:diamondblock2'},
                {'tutorial:diamondblock2', 'tutorial:dunklematerie6', 'tutorial:diamondblock2'},
                {'tutorial:diamondblock2', 'tutorial:zauberstab8', 'tutorial:diamondblock2'},
        }
})

minetest.register_craft({
        output = 'tutorial:zauberstab8',
        recipe = {
                {'tutorial:megablock4', 'tutorial:dunklematerie6', 'tutorial:megablock4'},
                {'tutorial:diamondblock2', 'tutorial:dunklematerie5', 'tutorial:diamondblock2'},
                {'tutorial:diamondblock2', 'tutorial:zauberstab7', 'tutorial:diamondblock2'},
        }
})


minetest.register_craft({
        output = 'tutorial:zauberstab7',
        recipe = {
                {'tutorial:megablock4', 'tutorial:dunklematerie5', 'tutorial:megablock4'},
                {'tutorial:megablock4', 'tutorial:dunklematerie5', 'tutorial:megablock4'},
                {'tutorial:megablock4', 'tutorial:zauberstab6', 'tutorial:megablock4'},
        }
})

minetest.register_craft({
        output = 'tutorial:zauberstab6',
        recipe = {
                {'tutorial:megablock4', 'tutorial:dunklematerie5', 'tutorial:megablock4'},
                {'tutorial:megablock4', 'tutorial:dunklematerie5', 'tutorial:megablock4'},
                {'tutorial:megablock4', 'tutorial:zauberstab5', 'tutorial:megablock4'},
        }
})





minetest.register_tool("tutorial:zauberstab", {
	description = "Magic stick",
	inventory_image = "tutorial_zauberstab.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 12,
})



minetest.register_tool("tutorial:zauberstab9", {
	description = "Magic stick lv.9",
	inventory_image = "tutorial_zauberstab9.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 12,
})




minetest.register_tool("tutorial:zauberstab8", {
	description = "Magic stick lv.8",
	inventory_image = "tutorial_zauberstab8.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 12,
})




minetest.register_tool("tutorial:zauberstab7", {
	description = "Magic stick lv.7",
	inventory_image = "tutorial_zauberstab7.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 12,
})





minetest.register_tool("tutorial:zauberstab6", {
	description = "Magic stick lv.6",
	inventory_image = "tutorial_zauberstab6.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 12,
})


minetest.register_tool("tutorial:zauberstab5", {
	description = "Magic stick lv.5",
	inventory_image = "tutorial_zauberstab5.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 12,
})


--Version 0.10.0

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_white",
	wherein        = "default:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -63,
	height_max     = -16,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_white",
	wherein        = "default:stone",
	clust_scarcity = 7*7*7,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -64,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_white",
	wherein        = "default:stone",
	clust_scarcity = 24*24*24,
	clust_num_ores = 27,
	clust_size     = 6,
	height_min     = -31000,
	height_max     = -64,
	flags          = "absheight",
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_black",
	wherein        = "default:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 4,
	clust_size     = 3,
	height_min     = -63,
	height_max     = -16,

})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_black",
	wherein        = "default:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 4,
	clust_size     = 3,
	height_min     = -15,
	height_max     = 2,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_black",
	wherein        = "default:stone",
	clust_scarcity = 7*7*7,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -64,
	flags          = "absheight",
})
minetest.register_node("tutorial:stone_with_white", {
	description = "White Ore",
	tiles = {"default_stone.png^tutorial_mineral_withe.png"},
	is_ground_content = true,
	groups = {cracky=4},
	drop = "tutorial:white",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:stone_with_black", {
	description = "Black Ore",
	tiles = {"default_stone.png^tutorial_mineral_black.png"},
	is_ground_content = true,
	groups = {cracky=4},
	drop = "tutorial:black",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("tutorial:white", {
	description = "White",
	inventory_image = "tutorial_white.png",
})

minetest.register_craftitem("tutorial:black", {
	description = "Black",
	inventory_image = "tutorial_black.png",
})





--Version 0.9.0

minetest.register_craft({
        output = 'tutorial:superblock9',
        recipe = {
                {'', '', ''},
                {'', '', ''},
                {'tutorial:superblock8', 'tutorial:superblock8', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:superblock8',
        recipe = {
                {'', '', ''},
                {'', '', ''},
                {'tutorial:superblock7', 'tutorial:superblock7', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:superblock7',
        recipe = {
                {'', '', ''},
                {'', '', ''},
                {'tutorial:superblock6', 'tutorial:superblock6', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:superblock6',
        recipe = {
                {'', '', ''},
                {'', '', ''},
                {'tutorial:superblock5', 'tutorial:superblock5', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:superblock5',
        recipe = {
                {'', '', ''},
                {'', '', ''},
                {'tutorial:superblock4', 'tutorial:superblock4', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:superblock4 2',
        recipe = {
                {'', '', ''},
                {'tutorial:superblock3', 'tutorial:superblock3', ''},
                {'tutorial:superblock3', 'tutorial:superblock3', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:superblock3 4',
        recipe = {
                {'tutorial:superblock2', 'tutorial:superblock2', 'tutorial:superblock2'},
                {'tutorial:superblock2', '', 'tutorial:superblock2'},
                {'tutorial:superblock2', 'tutorial:superblock2', 'tutorial:superblock2'},
        }
})

minetest.register_craft({
        output = 'tutorial:superblock2 4',
        recipe = {
                {'tutorial:superblock1', 'tutorial:superblock1', 'tutorial:superblock1'},
                {'tutorial:superblock1', '', 'tutorial:superblock1'},
                {'tutorial:superblock1', 'tutorial:superblock1', 'tutorial:superblock1'},
        }
})




minetest.register_craftitem( "tutorial:superblock1", {
	description = "Super item lv.1",
	inventory_image = "tutorial_superblock1.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:superblock2", {
	description = "Super item lv.2",
	inventory_image = "tutorial_superblock2.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:superblock3", {
	description = "Super item lv.3",
	inventory_image = "tutorial_superblock3.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:superblock4", {
	description = "Super item lv.4",
	inventory_image = "tutorial_superblock4.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:superblock5", {
	description = "Super item lv.5",
	inventory_image = "tutorial_superblock5.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:superblock6", {
	description = "Super item lv.6",
	inventory_image = "tutorial_superblock6.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:superblock7", {
	description = "Super item lv.7",
	inventory_image = "tutorial_superblock7.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:superblock8", {
	description = "Super item lv.8",
	inventory_image = "tutorial_superblock8.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:superblock9", {
	description = "Super item lv.9",
	inventory_image = "tutorial_superblock9.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
        output = 'tutorial:superblock1 4',
        recipe = {
                {'default:dirt', 'default:sand', 'default:cobble'},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:superblock1 4',
        recipe = {
                {'default:dirt', 'default:cobble', 'default:sand'},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:superblock1 4',
        recipe = {
                {'default:cobble', 'default:dirt', 'default:sand'},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:superblock1 4',
        recipe = {
                {'default:cobble', 'default:sand', 'default:dirt'},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:superblock1 4',
        recipe = {
                {'default:sand', 'default:cobble', 'default:dirt'},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:superblock1 4',
        recipe = {
                {'default:sand', 'default:dirt', 'default:cobble'},
                {'', '', ''},
                {'', '', ''},
        }
})


minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega25',
        recipe = {
                {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
                {'tutorial:superblock9', 'tutorial:cloudbattleaxe_mega24', 'tutorial:superblock9'},
                {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega24',
        recipe = {
                {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
                {'tutorial:superblock9', 'tutorial:cloudbattleaxe_mega23', 'tutorial:superblock9'},
                {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega23',
        recipe = {
                {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
                {'tutorial:superblock9', 'tutorial:cloudbattleaxe_mega22', 'tutorial:superblock9'},
                {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega22',
        recipe = {
                {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
                {'tutorial:superblock9', 'tutorial:cloudbattleaxe_mega21', 'tutorial:superblock9'},
                {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega21',
        recipe = {
                {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
                {'tutorial:superblock9', 'tutorial:cloudbattleaxe_mega20', 'tutorial:superblock9'},
                {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega20',
        recipe = {
                {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
                {'tutorial:superblock8', 'tutorial:cloudbattleaxe_mega19', 'tutorial:superblock8'},
                {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega19',
        recipe = {
                {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
                {'tutorial:superblock8', 'tutorial:cloudbattleaxe_mega18', 'tutorial:superblock8'},
                {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega18',
        recipe = {
                {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
                {'tutorial:superblock8', 'tutorial:cloudbattleaxe_mega17', 'tutorial:superblock8'},
                {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega17',
        recipe = {
                {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
                {'tutorial:superblock8', 'tutorial:cloudbattleaxe_mega16', 'tutorial:superblock8'},
                {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega16',
        recipe = {
                {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
                {'tutorial:superblock8', 'tutorial:cloudbattleaxe_mega15', 'tutorial:superblock8'},
                {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega15',
        recipe = {
                {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
                {'tutorial:superblock7', 'tutorial:cloudbattleaxe_mega14', 'tutorial:superblock7'},
                {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega14',
        recipe = {
                {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
                {'tutorial:superblock7', 'tutorial:cloudbattleaxe_mega13', 'tutorial:superblock7'},
                {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega13',
        recipe = {
                {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
                {'tutorial:superblock7', 'tutorial:cloudbattleaxe_mega12', 'tutorial:superblock7'},
                {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega12',
        recipe = {
                {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
                {'tutorial:superblock7', 'tutorial:cloudbattleaxe_mega11', 'tutorial:superblock7'},
                {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega11',
        recipe = {
                {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
                {'tutorial:superblock7', 'tutorial:cloudbattleaxe_mega10', 'tutorial:superblock7'},
                {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega10',
        recipe = {
                {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
                {'tutorial:superblock6', 'tutorial:cloudbattleaxe_mega9', 'tutorial:superblock6'},
                {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega9',
        recipe = {
                {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
                {'tutorial:superblock6', 'tutorial:cloudbattleaxe_mega8', 'tutorial:superblock6'},
                {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega8',
        recipe = {
                {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
                {'tutorial:superblock6', 'tutorial:cloudbattleaxe_mega7', 'tutorial:superblock6'},
                {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega7',
        recipe = {
                {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
                {'tutorial:superblock6', 'tutorial:cloudbattleaxe_mega6', 'tutorial:superblock6'},
                {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega6',
        recipe = {
                {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
                {'tutorial:superblock6', 'tutorial:cloudbattleaxe_mega5', 'tutorial:superblock6'},
                {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega5',
        recipe = {
                {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
                {'tutorial:superblock5', 'tutorial:cloudbattleaxe_mega4', 'tutorial:superblock5'},
                {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega4',
        recipe = {
                {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
                {'tutorial:superblock5', 'tutorial:cloudbattleaxe_mega3', 'tutorial:superblock5'},
                {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega3',
        recipe = {
                {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
                {'tutorial:superblock5', 'tutorial:cloudbattleaxe_mega2', 'tutorial:superblock5'},
                {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega2',
        recipe = {
                {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
                {'tutorial:superblock5', 'tutorial:cloudbattleaxe_mega1', 'tutorial:superblock5'},
                {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega1',
        recipe = {
                {'tutorial:cloudentverner21', 'tutorial:battleaxe_mega20', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudbattleaxe_mega1',
        recipe = {
                {'tutorial:battleaxe_mega20', 'tutorial:cloudentverner21', ''},
                {'', '', ''},
                {'', '', ''},
        }
})





minetest.register_tool("tutorial:cloudbattleaxe_mega1", {
	description = "Cloudbattleaxe lv.1",
	inventory_image = "tutorial_cloudbattleaxe_mega1.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=24.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=21},
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega2", {
	description = "Cloudbattleaxe lv.2",
	inventory_image = "tutorial_cloudbattleaxe_mega2.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=23.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=22},
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega3", {
	description = "Cloudbattleaxe lv.3",
	inventory_image = "tutorial_cloudbattleaxe_mega3.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=22.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=23},
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega4", {
	description = "Cloudbattleaxe lv.4",
	inventory_image = "tutorial_cloudbattleaxe_mega4.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=21.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=24},
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega5", {
	description = "Cloudbattleaxe lv.5",
	inventory_image = "tutorial_cloudbattleaxe_mega5.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=25},
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega6", {
	description = "Cloudbattleaxe lv.6",
	inventory_image = "tutorial_cloudbattleaxe_mega6.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=19.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=26},
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega7", {
	description = "Cloudbattleaxe lv.7",
	inventory_image = "tutorial_cloudbattleaxe_mega7.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=18.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=27},
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega8", {
	description = "Cloudbattleaxe lv.8",
	inventory_image = "tutorial_cloudbattleaxe_mega8.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=17.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=28},
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega9", {
	description = "Cloudbattleaxe lv.9",
	inventory_image = "tutorial_cloudbattleaxe_mega9.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=16.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=29},
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega10", {
	description = "Cloudbattleaxe lv.10",
	inventory_image = "tutorial_cloudbattleaxe_mega10.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=15.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=30},
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega11", {
	description = "Cloudbattleaxe lv.11",
	inventory_image = "tutorial_cloudbattleaxe_mega11.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=14.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=31},
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega12", {
	description = "Cloudbattleaxe lv.12",
	inventory_image = "tutorial_cloudbattleaxe_mega12.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=13.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=32}
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega13", {
	description = "Cloudbattleaxe lv.13",
	inventory_image = "tutorial_cloudbattleaxe_mega13.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=12.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=33}
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega14", {
	description = "Cloudbattleaxe lv.14",
	inventory_image = "tutorial_cloudbattleaxe_mega14.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=11.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=34}
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega15", {
	description = "Cloudbattleaxe lv.15",
	inventory_image = "tutorial_cloudbattleaxe_mega15.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=35}
	},
})



minetest.register_tool("tutorial:cloudbattleaxe_mega16", {
	description = "Cloudbattleaxe lv.16",
	inventory_image = "tutorial_cloudbattleaxe_mega16.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=9.5}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=36}
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega17", {
	description = "Cloudbattleaxe lv.17",
	inventory_image = "tutorial_cloudbattleaxe_mega17.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=9.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=37}
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega18", {
	description = "Cloudbattleaxe lv.18",
	inventory_image = "tutorial_cloudbattleaxe_mega18.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=8.5}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=38}
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega19", {
	description = "Cloudbattleaxe lv.19",
	inventory_image = "tutorial_cloudbattleaxe_mega19.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=8.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=39}
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega20", {
	description = "Cloudbattleaxe lv.20",
	inventory_image = "tutorial_cloudbattleaxe_mega20.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=7.5}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=40}
	},
})



minetest.register_tool("tutorial:cloudbattleaxe_mega21", {
	description = "Cloudbattleaxe lv.21",
	inventory_image = "tutorial_cloudbattleaxe_mega21.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=7.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=41}
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega22", {
	description = "Cloudbattleaxe lv.22",
	inventory_image = "tutorial_cloudbattleaxe_mega22.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=6.5}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=42}
	},
})


minetest.register_tool("tutorial:cloudbattleaxe_mega23", {
	description = "Cloudbattleaxe lv.23",
	inventory_image = "tutorial_cloudbattleaxe_mega23.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=6.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=43}
	},
})


minetest.register_tool("tutorial:cloudbattleaxe_mega24", {
	description = "Cloudbattleaxe lv.24",
	inventory_image = "tutorial_cloudbattleaxe_mega24.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=5.5}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=44}
	},
})

minetest.register_tool("tutorial:cloudbattleaxe_mega25", { 
	description = "Cloudbattleaxe lv.25",
	inventory_image = "tutorial_cloudbattleaxe_mega25.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0, [4]=5.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=45}
	},
})







--Version 0.8.0
minetest.register_node("tutorial:bottleS1", {
	description = "Super magic bottle lv.1",
	drawtype = "plantlike",
	tiles = {"tutorial_bottleS1.png"},
	wield_image = "tutorial_bottleS1.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_node("tutorial:bottleS2", {
	description = "Super magic bottle lv.2",
	drawtype = "plantlike",
	tiles = {"tutorial_bottleS2.png"},
	wield_image = "tutorial_bottleS2.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_node("tutorial:bottleS3", {
	description = "Super magic bottle lv.3",
	drawtype = "plantlike",
	tiles = {"tutorial_bottleS3.png"},
	wield_image = "tutorial_bottleS3.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:bottle12",
	cooktime = 50,
	output = "tutorial:bottleS1",
})


minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:bottleS1",
	cooktime = 100,
	output = "tutorial:bottleS2",
})


minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:bottleS2",
	cooktime = 200,
	output = "tutorial:bottleS3",
})


minetest.register_node("tutorial:bottle_roh", {
	description = "Magic bottle raw",
	drawtype = "plantlike",
	tiles = {"tutorial_bottle_roh.png"},
	wield_image = "tutorial_bottle_roh.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_node("tutorial:bottle1", {
	description = "Magic bottle lv.1",
	drawtype = "plantlike",
	tiles = {"tutorial_bottle1.png"},
	wield_image = "tutorial_bottle1.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_node("tutorial:bottle2", {
	description = "Magic bottle lv.2",
	drawtype = "plantlike",
	tiles = {"tutorial_bottle2.png"},
	wield_image = "tutorial_bottle2.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_node("tutorial:bottle3", {
	description = "Magic bottle lv.3",
	drawtype = "plantlike",
	tiles = {"tutorial_bottle3.png"},
	wield_image = "tutorial_bottle3.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_node("tutorial:bottle4", {
	description = "Magic bottle lv.4",
	drawtype = "plantlike",
	tiles = {"tutorial_bottle4.png"},
	wield_image = "tutorial_bottle4.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_node("tutorial:bottle5", {
	description = "Magic bottle lv.5",
	drawtype = "plantlike",
	tiles = {"tutorial_bottle5.png"},
	wield_image = "tutorial_bottle5.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_node("tutorial:bottle6", {
	description = "Magic bottle lv.6",
	drawtype = "plantlike",
	tiles = {"tutorial_bottle6.png"},
	wield_image = "tutorial_bottle6.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_node("tutorial:bottle7", {
	description = "Magic bottle lv.7",
	drawtype = "plantlike",
	tiles = {"tutorial_bottle7.png"},
	wield_image = "tutorial_bottle7.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_node("tutorial:bottle8", {
	description = "Magic bottle lv.8",
	drawtype = "plantlike",
	tiles = {"tutorial_bottle8.png"},
	wield_image = "tutorial_bottle8.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_node("tutorial:bottle9", {
	description = "Magic bottle lv.9",
	drawtype = "plantlike",
	tiles = {"tutorial_bottle9.png"},
	wield_image = "tutorial_bottle9.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_node("tutorial:bottle10", {
	description = "Magic bottle lv.10",
	drawtype = "plantlike",
	tiles = {"tutorial_bottle10.png"},
	wield_image = "tutorial_bottle10.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_node("tutorial:bottle11", {
	description = "Magic bottle lv.11",
	drawtype = "plantlike",
	tiles = {"tutorial_bottle11.png"},
	wield_image = "tutorial_bottle11.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_node("tutorial:bottle12", {
	description = "Magic bottle lv.12",
	drawtype = "plantlike",
	tiles = {"tutorial_bottle12.png"},
	wield_image = "tutorial_bottle12.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})

minetest.register_craft({
        output = 'tutorial:bottle_roh 32',
        recipe = {
                {'vessels:glass_bottle', 'vessels:glass_bottle', 'vessels:glass_bottle'},
                {'vessels:glass_bottle', 'default:grass_1', 'vessels:glass_bottle'},
                {'vessels:glass_bottle', 'vessels:glass_bottle', 'vessels:glass_bottle'},
        }
})





minetest.register_craft({
        output = 'tutorial:bottle2',
        recipe = {
                {'tutorial:bottle1', 'tutorial:bottle1', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:bottle3',
        recipe = {
                {'tutorial:bottle2', 'tutorial:bottle2', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:bottle4',
        recipe = {
                {'tutorial:bottle3', 'tutorial:bottle3', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:bottle5',
        recipe = {
                {'tutorial:bottle4', 'tutorial:bottle4', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:bottle6',
        recipe = {
                {'tutorial:bottle5', 'tutorial:bottle5', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:bottle7',
        recipe = {
                {'tutorial:bottle6', 'tutorial:bottle6', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:bottle8',
        recipe = {
                {'tutorial:bottle7', 'tutorial:bottle7', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:bottle9',
        recipe = {
                {'tutorial:bottle8', 'tutorial:bottle8', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:bottle10',
        recipe = {
                {'tutorial:bottle9', 'tutorial:bottle9', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:bottle11',
        recipe = {
                {'tutorial:bottle10', 'tutorial:bottle10', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:bottle12',
        recipe = {
                {'tutorial:bottle11', 'tutorial:bottle11', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:bottle_roh",
	cooktime = 2,
	output = "tutorial:bottle1",
})

--Version 0.7.2








minetest.register_craft({
        output = 'default:cloud 50',
        recipe = {
                {'wool:white', 'wool:white', ''},
                {'wool:white', 'wool:white', ''},
                {'', '', ''},
        }
})


minetest.register_craft({
        output = "default:cloud 10000",
        recipe = {
                {'tutorial:megablock4', 'tutorial:megablock4', 'tutorial:megablock4'},
                {'tutorial:megablock4', 'tutorial:megablock4', 'tutorial:megablock4'},
                {'tutorial:megablock4', 'tutorial:megablock4', 'tutorial:megablock4'},
        }
})




minetest.register_craft({
        output = 'tutorial:cloudentverner1',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner2',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner1', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner3',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner2', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner4',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner3', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner5',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner4', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner6',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner5', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner7',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner6', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner8',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner7', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner9',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner8', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner10',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner9', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner11',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner10', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner12',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner11', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner13',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner12', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner14',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner13', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner15',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner14', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner16',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner15', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner17',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner16', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner18',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner17', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner19',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner18', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner20',
        recipe = {
                {'default:cloud', 'default:cloud', 'default:cloud'},
                {'default:cloud', 'tutorial:cloudentverner19', 'default:cloud'},
                {'default:cloud', 'default:cloud', 'default:cloud'},
        }
})

minetest.register_craft({
        output = 'tutorial:cloudentverner21',
        recipe = { 
{'tutorial:megablock4','tutorial:megablock4', 'tutorial:megablock4'},
{'tutorial:megablock4','tutorial:cloudentverner20', 'tutorial:megablock4'},
{'tutorial:megablock4','tutorial:megablock4', 'tutorial:megablock4'},
        }
})


minetest.register_tool("tutorial:cloudentverner1", {
	description = "Clouds remover lv.1",
	inventory_image = "tutorial_cloudentverner.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=1.0}, uses=50, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner2", {
	description = "Clouds remover lv.2",
	inventory_image = "tutorial_cloudentverner2.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.9}, uses=100, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner3", {
	description = "Clouds remover lv.3",
	inventory_image = "tutorial_cloudentverner3.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.8}, uses=150, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner4", {
	description = "Clouds remover lv.4",
	inventory_image = "tutorial_cloudentverner4.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.7}, uses=200, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner5", {
	description = "Clouds remover lv.5",
	inventory_image = "tutorial_cloudentverner5.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.6}, uses=250, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner6", {
	description = "Clouds remover lv.6",
	inventory_image = "tutorial_cloudentverner6.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.5}, uses=300, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner7", {
	description = "Clouds remover lv.7",
	inventory_image = "tutorial_cloudentverner7.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.4}, uses=350, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner8", {
	description = "Clouds remover lv.8",
	inventory_image = "tutorial_cloudentverner8.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.3}, uses=400, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner9", {
	description = "Clouds remover lv.9",
	inventory_image = "tutorial_cloudentverner9.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.2}, uses=450, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner10", {
	description = "Clouds remover lv.10",
	inventory_image = "tutorial_cloudentverner10.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.1}, uses=500, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner11", {
	description = "Clouds remover lv.11",
	inventory_image = "tutorial_cloudentverner11.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=550, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner12", {
	description = "Clouds remover lv.12",
	inventory_image = "tutorial_cloudentverner12.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=600, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner13", {
	description = "Clouds remover lv.13",
	inventory_image = "tutorial_cloudentverner13.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=650, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner14", {
	description = "Clouds remover lv.14",
	inventory_image = "tutorial_cloudentverner14.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=700, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner15", {
	description = "Clouds remover lv.15",
	inventory_image = "tutorial_cloudentverner15.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=750, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner16", {
	description = "Clouds remover lv.16",
	inventory_image = "tutorial_cloudentverner16.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=800, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner17", {
	description = "Clouds remover lv.17",
	inventory_image = "tutorial_cloudentverner17.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=850, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner18", {
	description = "Clouds remover lv.18",
	inventory_image = "tutorial_cloudentverner18.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=900, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner19", {
	description = "Clouds remover lv.19",
	inventory_image = "tutorial_cloudentverner19.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=950, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner20", {
	description = "Clouds remover lv.20",
	inventory_image = "tutorial_cloudentverner20.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=1000, maxlevel=3}
		}
	},
})

minetest.register_tool("tutorial:cloudentverner21", {
	description = "Clouds remover lv.21",
	inventory_image = "tutorial_cloudentverner21.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0, [4]=25.00}, uses=0, maxlevel=3}
		}
	},
})




--Version 0.7.1


minetest.register_craft({
        output = 'tutorial:zauberstab1',
        recipe = {
                {'', 'default:stick', ''},
                {'', 'default:stick', ''},
                {'', 'default:stick', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:zauberstab2',
        recipe = {
                {'', 'tutorial:megablock2', ''},
                {'', 'tutorial:megablock2', ''},
                {'', 'tutorial:zauberstab1', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:zauberstab3',
        recipe = {
                {'', 'tutorial:megablock2', ''},
                {'', 'tutorial:dunklematerie3', ''},
                {'', 'tutorial:zauberstab2', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:zauberstab4',
        recipe = {
                {'', 'tutorial:dunklematerie4', ''},
                {'', 'tutorial:dunklematerie4', ''},
                {'', 'tutorial:zauberstab3', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:zauberstab5',
        recipe = {
                {'tutorial:megablock3', 'tutorial:dunklematerie5', 'tutorial:megablock3'},
                {'tutorial:megablock3', 'tutorial:dunklematerie5', 'tutorial:megablock3'},
                {'tutorial:megablock3', 'tutorial:zauberstab4', 'tutorial:megablock3'},
        }
})




minetest.register_tool("tutorial:zauberstab4", {
	description = "Magic stick lv.4",
	inventory_image = "tutorial_zauberstab4.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 12,
})


minetest.register_tool("tutorial:zauberstab3", {
	description = "Magic stick lv.3",
	inventory_image = "tutorial_zauberstab3.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 12,
})



minetest.register_tool("tutorial:zauberstab2", {
	description = "Magic stick lv.2",
	inventory_image = "tutorial_zauberstab2.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 12,
})



minetest.register_tool("tutorial:zauberstab1", {
	description = "Magic stick lv.1",
	inventory_image = "tutorial_zauberstab1.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 12,
})



--Version 0.7.0


minetest.register_craft({
        output = 'tutorial:megablock3',
        recipe = {
                {'tutorial:megablock2', 'tutorial:megablock2', ''},
                {'tutorial:megablock2', 'tutorial:megablock2', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:megablock4',
        recipe = {
                {'tutorial:megablock3', 'tutorial:megablock3', ''},
                {'tutorial:megablock3', 'tutorial:megablock3', ''},
                {'', '', ''},
        }
})

minetest.register_node("tutorial:megablock4",{
 tiles  = {"tutorial_megablock4.png"},
 description = "Mega block Lv.4",
 groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})

minetest.register_node("tutorial:megablock3",{
 tiles  = {"tutorial_megablock3.png"},
 description = "Mega block Lv.3",
 groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})


minetest.register_craft({
        output = 'tutorial:swored_zauber1',
        recipe = {
{'tutorial:thunder','tutorial:megablock2','tutorial:thunder'},
{'tutorial:thunder','tutorial:megablock2','tutorial:thunder'},
{'tutorial:thunder','default:stick ','tutorial:thunder'},
        }
})

minetest.register_craft({
        output = 'tutorial:swored_zauber2',
        recipe = {
{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
{'tutorial:megablock2','tutorial:swored_zauber1','tutorial:megablock2'},
{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
        }
})

minetest.register_craft({
        output = 'tutorial:swored_zauber3',
        recipe = {
{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
{'tutorial:megablock2','tutorial:swored_zauber2','tutorial:megablock2'},
{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
        }
})

minetest.register_craft({
        output = 'tutorial:swored_zauber4',
        recipe = {
{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
{'tutorial:megablock2','tutorial:swored_zauber3','tutorial:megablock2'},
{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
        }
})

minetest.register_craft({
        output = 'tutorial:swored_zauber5',
        recipe = {
{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
{'tutorial:megablock2','tutorial:swored_zauber4','tutorial:megablock2'},
{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
        }
})

minetest.register_craft({
        output = 'tutorial:swored_zauber6',
        recipe = {
{'tutorial:megablock3','tutorial:megablock3', 'tutorial:megablock3'},
{'tutorial:megablock3','tutorial:swored_zauber5', 'tutorial:megablock3'},
{'tutorial:megablock3','tutorial:megablock3', 'tutorial:megablock3'},
        }
})

minetest.register_craft({
        output = 'tutorial:swored_zauber7',
        recipe = {
{'tutorial:megablock3','tutorial:megablock3', 'tutorial:megablock3'},
{'tutorial:megablock3','tutorial:swored_zauber6', 'tutorial:megablock3'},
{'tutorial:megablock3','tutorial:megablock3', 'tutorial:megablock3'},
        }
})

minetest.register_craft({
        output = 'tutorial:swored_zauber8',
        recipe = {
{'tutorial:megablock4','tutorial:megablock4', 'tutorial:megablock4'},
{'tutorial:megablock4','tutorial:swored_zauber7', 'tutorial:megablock4'},
{'tutorial:megablock4','tutorial:megablock4', 'tutorial:megablock4'},
        }
})

minetest.register_craft({
        output = 'tutorial:swored_zauber9',
        recipe = {
{'tutorial:megablock4','tutorial:megablock4', 'tutorial:megablock4'},
{'tutorial:megablock4','tutorial:swored_zauber8', 'tutorial:megablock4'},
{'tutorial:megablock4','tutorial:megablock4', 'tutorial:megablock4'},
        }
})

--
--
--
minetest.register_tool("tutorial:swored_zauber1", {
	description = "Magic sword lv.1",
	inventory_image = "tutorial_zauberschwert1.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 2,
})

minetest.register_tool("tutorial:swored_zauber2", {
	description = "Magic sword lv.2",
	inventory_image = "tutorial_zauberschwert2.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 2,
})

minetest.register_tool("tutorial:swored_zauber3", {
	description = "Magic sword lv.3",
	inventory_image = "tutorial_zauberschwert3.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 2,
})

minetest.register_tool("tutorial:swored_zauber4", {
	description = "Magic sword lv.4",
	inventory_image = "tutorial_zauberschwert4.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 2,
})

minetest.register_tool("tutorial:swored_zauber5", {
	description = "Magic sword lv.5",
	inventory_image = "tutorial_zauberschwert5.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 2,
})

minetest.register_tool("tutorial:swored_zauber6", {
	description = "Magic sword lv.6",
	inventory_image = "tutorial_zauberschwert6.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 2,
})

minetest.register_tool("tutorial:swored_zauber7", {
	description = "Magic sword lv.7",
	inventory_image = "tutorial_zauberschwert7.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 2,
})

minetest.register_tool("tutorial:swored_zauber8", {
	description = "Magic sword lv.8",
	inventory_image = "tutorial_zauberschwert8.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 2,
})

minetest.register_tool("tutorial:swored_zauber9", {
	description = "Magic sword lv.9",
	inventory_image = "tutorial_zauberschwert9.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 2,
})


--Version 0.6.6
minetest.register_tool("tutorial:battleaxe_mega16", {
	description = "Mega Battleaxe lv.16",
	inventory_image = "tutorial_battleaxe_mega16.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=16},
	},
})

minetest.register_tool("tutorial:battleaxe_mega17", {
	description = "Mega Battleaxe lv.17",
	inventory_image = "tutorial_battleaxe_mega17.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=17},
	},
})

minetest.register_tool("tutorial:battleaxe_mega18", {
	description = "Mega Battleaxe lv.18",
	inventory_image = "tutorial_battleaxe_mega18.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=18},
	},
})

minetest.register_tool("tutorial:battleaxe_mega19", {
	description = "Mega Battleaxe lv.19",
	inventory_image = "tutorial_battleaxe_mega19.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=19},
	},
})

minetest.register_tool("tutorial:battleaxe_mega20", {
	description = "Mega Battleaxe lv.20",
	inventory_image = "tutorial_battleaxe_mega20.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=20},
	},
})

minetest.register_node("tutorial:megablock2",{
 tiles  = {"tutorial_megablock2.png"},
 description = "Mega block Lv.2",
 groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})


minetest.register_craft({
        output = 'tutorial:megablock2',
        recipe = {
                {'tutorial:megablock1', 'tutorial:megablock1', ''},
                {'tutorial:megablock1', 'tutorial:megablock1', ''},
                {'', '', ''},
        }
})


minetest.register_craft({
        output = 'tutorial:battleaxe_mega20',
        recipe = {
{'tutorial:megablock2','tutorial:megablock2', 'tutorial:megablock2'},
{'tutorial:megablock2','tutorial:battleaxe_mega19','tutorial:megablock2'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})
minetest.register_craft({
        output = 'tutorial:battleaxe_mega19',
        recipe = {
{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
{'tutorial:megablock1','tutorial:battleaxe_mega18','tutorial:megablock1'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega18',
        recipe = {
{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
{'tutorial:megablock1','tutorial:battleaxe_mega17','tutorial:megablock1'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega17',
        recipe = {
{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
{'tutorial:megablock1','tutorial:battleaxe_mega16','tutorial:megablock1'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega16',
        recipe = {
{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
{'tutorial:megablock1','tutorial:battleaxe_mega15','tutorial:megablock1'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})



minetest.register_node("tutorial:megablock1",{
 tiles  = {"tutorial_megablock1.png"},
 description = "Mega block lv.1",
 groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})

minetest.register_craft({
        output = 'tutorial:megablock1',
        recipe = {
                {'default:cactus', 'default:cactus', ''},
                {'default:cactus', 'default:cactus', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'default:nyancat',
        recipe = {
                {'default:nyancat_rainbow', 'default:nyancat_rainbow', ''},
                {'default:nyancat_rainbow', 'default:nyancat_rainbow', ''},
                {'', '', ''},
        }
})

--Version 0.6.5
minetest.register_tool("tutorial:battleaxe_mega13", {
	description = "Mega Battleaxe lv.13",
	inventory_image = "tutorial_battleaxe_mega13.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=13},
	},
})




minetest.register_tool("tutorial:battleaxe_mega14", {
	description = "Mega Battleaxe lv.14",
	inventory_image = "tutorial_battleaxe_mega14.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	},
})

minetest.register_tool("tutorial:battleaxe_mega15", {
	description = "Mega Battleaxe lv.15",
	inventory_image = "tutorial_battleaxe_mega15.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=15},
	},
})




minetest.register_craft({
        output = 'tutorial:battleaxe_mega13',
        recipe = {
{'default:goldblock','default:goldblock', 'default:goldblock'},
{'default:goldblock','tutorial:battleaxe_mega12','default:goldblock'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega14',
        recipe = {
{'default:nyancat_rainbow','default:nyancat_rainbow', 'default:nyancat_rainbow'},
{'default:nyancat_rainbow','tutorial:battleaxe_mega13','default:nyancat_rainbow'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega15',
        recipe = {
{'default:nyancat_rainbow','default:nyancat_rainbow', 'default:nyancat_rainbow'},
{'default:nyancat_rainbow','tutorial:battleaxe_mega14','default:nyancat_rainbow'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})



--Version 0.6.4
minetest.register_craft({
        output = 'tutorial:battleaxe_mega9',
        recipe = {
{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
{'tutorial:diamondblock2','tutorial:battleaxe_mega8','tutorial:diamondblock2'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega10',
        recipe = {
{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
{'tutorial:diamondblock2','tutorial:battleaxe_mega9','tutorial:diamondblock2'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega11',
        recipe = {
{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
{'tutorial:diamondblock2','tutorial:battleaxe_mega10','tutorial:diamondblock2'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega12',
        recipe = {
{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
{'tutorial:diamondblock2','tutorial:battleaxe_mega11','tutorial:diamondblock2'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})



minetest.register_tool("tutorial:battleaxe_mega9", {
	description = "Mega Battleaxe lv.9",
	inventory_image = "tutorial_battleaxe_mega9.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.2, [2]=0.2, [3]=0.2}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.2, [2]=0.2, [3]=0.2}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.2, [2]=0.2, [3]=0.2}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.2, [2]=0.2, [3]=0.2}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.2, [2]=0.2, [3]=0.2}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
})

minetest.register_tool("tutorial:battleaxe_mega10", {
	description = "Mega Battleaxe lv.10",
	inventory_image = "tutorial_battleaxe_mega10.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
})

minetest.register_tool("tutorial:battleaxe_mega11", {
	description = "Mega Battleaxe lv.11",
	inventory_image = "tutorial_battleaxe_mega11.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=11},
	},
})

minetest.register_tool("tutorial:battleaxe_mega12", {
	description = "Mega Battleaxe lv.12",
	inventory_image = "tutorial_battleaxe_mega12.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
})

minetest.register_node("tutorial:diamondblock2",{
 tiles  = {"tutorial_diamondblock2.png"},
 description = "Diamond block lv.2",
 groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})

minetest.register_craft({
        output = '"tutorial:diamondblock2"',
        recipe = {
                {'default:diamondblock', 'default:diamondblock', ''},
                {'default:diamondblock', 'default:diamondblock', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = "tutorial:thunder 2",
        recipe = {
                {'default:coalblock', 'default:coalblock', ''},
                {'', '', ''},
                {'', '', ''},
        }
})


--Version 0.6.3
minetest.register_tool("tutorial:battleaxe_mega5", {
	description = "Mega Battleaxe lv.5",
	inventory_image = "tutorial_battleaxe_mega5.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.6, [2]=0.6, [3]=0.6}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.6, [2]=0.6, [3]=0.6}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.6, [2]=0.6, [3]=0.6}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.6, [2]=0.6, [3]=0.6}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.6, [2]=0.6, [3]=0.6}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_tool("tutorial:battleaxe_mega6", {
	description = "Mega Battleaxe lv.6",
	inventory_image = "tutorial_battleaxe_mega6.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_tool("tutorial:battleaxe_mega7", {
	description = "Mega Battleaxe lv.7",
	inventory_image = "tutorial_battleaxe_mega7.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.4, [2]=0.4, [3]=0.4}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.4, [2]=0.4, [3]=0.4}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.4, [2]=0.4, [3]=0.4}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.4, [2]=0.4, [3]=0.4}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.4, [2]=0.4, [3]=0.4}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool("tutorial:battleaxe_mega8", {
	description = "Mega Battleaxe lv.8",
	inventory_image = "tutorial_battleaxe_mega8.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.3, [2]=0.3, [3]=0.3}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.3, [2]=0.3, [3]=0.3}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.3, [2]=0.3, [3]=0.3}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.3, [2]=0.3, [3]=0.3}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.3, [2]=0.3, [3]=0.3}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_node("tutorial:dunklematerie1",{
 tiles  = {"tutorial_dunklematerie1.png"},
 description = "Dark matter Lv.1",
 groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})

minetest.register_node("tutorial:dunklematerie2",{
 tiles  = {"tutorial_dunklematerie2.png"},
 description = "Dark matter Lv.2",
 groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})

minetest.register_node("tutorial:dunklematerie3",{
 tiles  = {"tutorial_dunklematerie3.png"},
 description = "Dark matter Lv.3",
 groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})

minetest.register_node("tutorial:dunklematerie4",{
 tiles  = {"tutorial_dunklematerie4.png"},
 description = "Dark matter Lv.4",
 groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})

minetest.register_node("tutorial:dunklematerie5",{
 tiles  = {"tutorial_dunklematerie5.png"},
 description = "Dark matter Lv.5",
 groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})

minetest.register_node("tutorial:dunklematerie6",{
 tiles  = {"tutorial_dunklematerie6.png"},
 description = "Dark matter Lv.6",
 groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})

minetest.register_craft({
        output = "tutorial:dunklematerie1 2",
        recipe = {
                {'default:coal_lump', 'default:coal_lump', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:dunklematerie2',
        recipe = {
                {'tutorial:dunklematerie1', 'tutorial:dunklematerie1', ''},
                {'tutorial:dunklematerie1', 'tutorial:dunklematerie1', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:dunklematerie3',
        recipe = {
                {'tutorial:dunklematerie2', 'tutorial:dunklematerie2', ''},
                {'tutorial:dunklematerie2', 'tutorial:dunklematerie2', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:dunklematerie4',
        recipe = {
                {'tutorial:dunklematerie3', 'tutorial:dunklematerie3', ''},
                {'tutorial:dunklematerie3', 'tutorial:dunklematerie3', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:dunklematerie5',
        recipe = {
                {'tutorial:dunklematerie4', 'tutorial:dunklematerie4', ''},
                {'tutorial:dunklematerie4', 'tutorial:dunklematerie4', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:dunklematerie6',
        recipe = {
                {'tutorial:dunklematerie5', 'tutorial:dunklematerie5', ''},
                {'tutorial:dunklematerie5', 'tutorial:dunklematerie5', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega5',
        recipe = {
{'tutorial:dunklematerie4','tutorial:dunklematerie4', 'tutorial:dunklematerie4'},
{'tutorial:dunklematerie4','tutorial:battleaxe_mega4','tutorial:dunklematerie4'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega6',
        recipe = {
{'tutorial:dunklematerie4','tutorial:dunklematerie4', 'tutorial:dunklematerie4'},
{'tutorial:dunklematerie4','tutorial:battleaxe_mega5','tutorial:dunklematerie4'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega7',
        recipe = {
{'tutorial:dunklematerie5','tutorial:dunklematerie5', 'tutorial:dunklematerie5'},
{'tutorial:dunklematerie5','tutorial:battleaxe_mega6','tutorial:dunklematerie5'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega8',
        recipe = {
{'tutorial:dunklematerie6','tutorial:dunklematerie6', 'tutorial:dunklematerie6'},
{'tutorial:dunklematerie6','tutorial:battleaxe_mega7','tutorial:dunklematerie6'},
{'tutorial:thunder  ','tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

--Version 0.6.2
minetest.register_node("tutorial:obsidian2",{
 tiles  = {"tutorial_obsidian2.png"},
 description = "Obsidian Lv.2",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=0},
})

minetest.register_node("tutorial:obsidian3",{
 tiles  = {"tutorial_obsidian3.png"},
 description = "Obsidian Lv.3",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=0},
})

minetest.register_node("tutorial:obsidian4",{
 tiles  = {"tutorial_obsidian4.png"},
 description = "Obsidian Lv.4",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=0},
})

minetest.register_node("tutorial:obsidian5",{
 tiles  = {"tutorial_obsidian5.png"},
 description = "Obsidian Lv.5",
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=0},
})

minetest.register_node("tutorial:obsidian6",{
 description = "Obsidian Lv.6",
 tiles  = {"tutorial_obsidian6.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=0},
})

minetest.register_craft({
        output = 'tutorial:obsidian2',
        recipe = {
                {'default:obsidian', 'default:obsidian', ''},
                {'default:obsidian', 'default:obsidian', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:obsidian3',
        recipe = {
                {'tutorial:obsidian2', 'tutorial:obsidian2', ''},
                {'tutorial:obsidian2', 'tutorial:obsidian2', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:obsidian4',
        recipe = {
                {'tutorial:obsidian3', 'tutorial:obsidian3', ''},
                {'tutorial:obsidian3', 'tutorial:obsidian3', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:obsidian5',
        recipe = {
                {'tutorial:obsidian4', 'tutorial:obsidian4', ''},
                {'tutorial:obsidian4', 'tutorial:obsidian4', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:obsidian6',
        recipe = {
                {'tutorial:obsidian5', 'tutorial:obsidian5', ''},
                {'tutorial:obsidian5', 'tutorial:obsidian5', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega1',
        recipe = {
                {'tutorial:obsidian4', 'tutorial:obsidian4', 'tutorial:obsidian4'},
                {'tutorial:obsidian4', 'tutorial:battleaxe', 'tutorial:obsidian4'},
                {'tutorial:thunder  ', 'tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega2',
        recipe = {
                {'tutorial:obsidian4', 'tutorial:obsidian4', 'tutorial:obsidian4'},
                {'tutorial:obsidian4','tutorial:battleaxe_mega1',
                 'tutorial:obsidian4'},
                {'tutorial:thunder  ', 'tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega3',
        recipe = {
                {'tutorial:obsidian5', 'tutorial:obsidian5', 'tutorial:obsidian5'},
                {'tutorial:obsidian5','tutorial:battleaxe_mega2',
                 'tutorial:obsidian5'},
                {'tutorial:thunder  ', 'tutorial:thunder  ', 'tutorial:thunder  '},
        }
})

minetest.register_craft({
        output = 'tutorial:battleaxe_mega4',
        recipe = {
                {'tutorial:obsidian6', 'tutorial:obsidian6', 'tutorial:obsidian6'},
                {'tutorial:obsidian6','tutorial:battleaxe_mega3',
                 'tutorial:obsidian6'},
                {'tutorial:thunder  ', 'tutorial:thunder  ', 'tutorial:thunder  '},
        }
})



minetest.register_node("tutorial:thunder", {
	description = "Thunder",
	drawtype = "plantlike",
	tiles = {{
		name="tutorial_thunder.png",
	}},
	light_source = 12,
	walkable = false,
	buildable_to = true,
	damage_per_second = 5,
	groups = {dig_immediate=3},
})

minetest.register_abm({
	nodenames = {"tutorial:thunder"},
	interval = 3.0,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.env:remove_node(pos)
	end,
})




--Version 0.6.1
minetest.register_tool("tutorial:battleaxe_mega4", {
	description = "Mega Battleaxe lv.4",
	inventory_image = "tutorial_battleaxe_mega4.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.7, [2]=0.7, [3]=0.7}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.7, [2]=0.7, [3]=0.7}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.7, [2]=0.7, [3]=0.7}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.7, [2]=0.7, [3]=0.7}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.7, [2]=0.7, [3]=0.7}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool("tutorial:battleaxe_mega3", {
	description = "Mega Battleaxe lv.3",
	inventory_image = "tutorial_battleaxe_mega3.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.8, [2]=0.8, [3]=0.8}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.8, [2]=0.8, [3]=0.8}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.8, [2]=0.8, [3]=0.8}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.8, [2]=0.8, [3]=0.8}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.8, [2]=0.8, [3]=0.8}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=3},
	},
})

minetest.register_tool("tutorial:battleaxe_mega2", {
	description = "Mega Battleaxe lv.2",
	inventory_image = "tutorial_battleaxe_mega2.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.9, [2]=0.9, [3]=0.9}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.9, [2]=0.9, [3]=0.9}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.9, [2]=0.9, [3]=0.9}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.9, [2]=0.9, [3]=0.9}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.9, [2]=0.9, [3]=0.9}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=2},
	},
})

minetest.register_tool("tutorial:battleaxe_mega1", {
	description = "Mega Battleaxe lv.1",
	inventory_image = "tutorial_battleaxe_mega1.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=1.0, [2]=1.0, [3]=1.0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=1.0, [2]=1.0, [3]=1.0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=1.0, [2]=1.0, [3]=1.0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=1.0, [2]=1.0, [3]=1.0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=1.0, [2]=1.0, [3]=1.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=1},
	},
})
--Version 0.6.0
minetest.register_tool('tutorial:paxel_super', {
	description = 'Super Paxel',
	inventory_image = 'tutorial_tool_superpaxel.png',
	tool_capabilities = {
		full_punch_interval = 0.4,
		max_drop_level=3,
		groupcaps={
			choppy	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})

--Version 0.6.0
minetest.register_tool("tutorial:axe_super", {
	description = "Super Axe",
	inventory_image = "tutorial_tool_cediaxt.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			choppy	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
			fleshy	=	{times={[2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
		}
	},
})

minetest.register_craftitem("tutorial:food_1", {
	description = "Chicken (1 live)",
    groups = {},
    inventory_image = "tutorial_food_1.png",
	 on_use = minetest.item_eat(2),
})

minetest.register_craftitem("tutorial:food_2", {
	description = "Spider (2 live)",
    groups = {},
    inventory_image = "tutorial_food_2.png",
	 on_use = minetest.item_eat(4),
})

minetest.register_craftitem("tutorial:food_3", {
	description = "Pizza (3 live)",
    groups = {},
    inventory_image = "tutorial_food_3.png",
	 on_use = minetest.item_eat(6),
})

minetest.register_craftitem("tutorial:food_4", {
	description = "Little cake (4 live)",
    groups = {},
    inventory_image = "tutorial_food_4.png",
	 on_use = minetest.item_eat(8),
})

minetest.register_craftitem("tutorial:food_5", {
	description = "Tomato (5 live)",
    groups = {},
    inventory_image = "tutorial_food_5.png",
	 on_use = minetest.item_eat(10),
})

minetest.register_craftitem("tutorial:food_6", {
	description = "Hamburger (6 live)",
    groups = {},
    inventory_image = "tutorial_food_6.png",
	 on_use = minetest.item_eat(12),
})

minetest.register_craftitem("tutorial:food_7", {
	description = "Carrot (7 live)",
    groups = {},
    inventory_image = "tutorial_food_7.png",
	 on_use = minetest.item_eat(14),
})
--Version 0.5.2
minetest.register_tool("tutorial:shovel_super", {
	description = "Super Shovel",
	inventory_image = "tutorial_tool_cedishovel.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			crumbly =	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
		}
	},
})

--Version 0.5.1
minetest.register_node("tutorial:lightstone",{
 tiles  = {"tutorial_lightstone.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
 light_source = LIGHT_MAX-1,
 description = "Lightstone",
})

--Version 0.5.0

minetest.register_tool("tutorial:pick_super", {
	description = "Super Pick",
	inventory_image = "tutorial_tool_cedipick.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
		}
	},
})

minetest.register_craft({
        output = 'tutorial:pick_super',
        recipe = {
                {'default:cactus', 'default:cactus', 'default:cactus'},
                {'default:cactus', 'default:mossycobble', 'default:cactus'},
                {'default:cactus', 'default:mossycobble', 'default:cactus'},
        }
})






--Version 0.4.0


minetest.register_node("tutorial:mineral_blau",{
 tiles  = {"tutorial_mineral_blau.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:mineral_gelb",{
 tiles  = {"tutorial_mineral_gelb.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:mineral_gruen",{
 tiles  = {"tutorial_mineral_gruen.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:mineral_rosa",{
 tiles  = {"tutorial_mineral_rosa.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:mineral_rot",{
 tiles  = {"tutorial_mineral_rot.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:mineral_turkis",{
 tiles  = {"tutorial_mineral_turkis.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_abm({
	nodenames = {"default:nyancat_rainbow"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:mineral_blau"})
	end,
})

minetest.register_abm({
	nodenames = {"default:nyancat_rainbow"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:mineral_gelb"})
	end,
})

minetest.register_abm({
	nodenames = {"default:nyancat_rainbow"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:mineral_gruen"})
	end,
})

minetest.register_abm({
	nodenames = {"default:nyancat_rainbow"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:mineral_rosa"})
	end,
})

minetest.register_abm({
	nodenames = {"default:nyancat_rainbow"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:mineral_rot"})
	end,
})

minetest.register_abm({
	nodenames = {"default:nyancat_rainbow"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:mineral_turkis"})
	end,
})

minetest.register_craft({
        output = "tutorial:rosa",
        recipe = {
                {'tutorial:mineral_rosa', '', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = "tutorial:rot",
        recipe = {
                {'tutorial:mineral_rot', '', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = "tutorial:blau",
        recipe = {
                {'tutorial:mineral_blau', '', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = "tutorial:gruen",
        recipe = {
                {'tutorial:mineral_gruen', '', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = "tutorial:gelb",
        recipe = {
                {'tutorial:mineral_gelb', '', ''},
                {'', '', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = "tutorial:turkis",
        recipe = {
                {'tutorial:mineral_turkis', '', ''},
                {'', '', ''},
                {'', '', ''},
        }
})





--Version 0.3.0



tutorial = {}

dofile(minetest.get_modpath("tutorial").."/mummy.lua")




local function add_spawner(pos)
	minetest.set_node(pos, {name="tutorial:spawner_mummy"})
	if not minetest.setting_getbool("only_peaceful_mobs") then tutorial.spawn_mummy({x=pos.x,y=pos.y,z=pos.z-2},2) end
end

local function can_replace(pos)
	local n = minetest.get_node_or_nil(pos)
	if n and n.name and minetest.registered_nodes[n.name] and not minetest.registered_nodes[n.name].walkable then
		return true
	elseif not n then
		return true
	else
		return false
	end
end


-- Version 0.2.0


-- Helper functions


local function get_sign(i)
	if i == 0 then
		return 0
	else
		return i/math.abs(i)
	end
end

local function get_velocity(vx, vy, vz, yaw)
	local x = math.cos(yaw)*vx+math.cos(math.pi/2+yaw)*vz
	local z = math.sin(yaw)*vx+math.sin(math.pi/2+yaw)*vz
	return {x=x, y=vy, z=z}
end

local function get_v(v)
	return math.sqrt(vx^2+vz^2)
end

--
-- Heli entity
--

local heli = {
	physical = true,
	collisionbox = {-1,-0.6,-1, 1,0.3,1},
	
	--Just copy from lua api for test
	collide_with_objects = true,
	weight = 5,
	
	visual = "mesh",
	mesh = "root.x",
	--Player
	driver = nil,
	
	--Heli mesh
	model = nil,
	
	--In progress
	motor = nil,
	left = true,
	timer=0,
	
	--Rotation
	yaw=0,
	
	--Detect hit an object or node
	prev_y=0,
	
	--Speeds
	vx=0,
	vy=0,
	vz=0
	
	
}
local heliModel = {
	visual = "mesh",
	mesh = "heli.x",
	textures = {"bladest.png","bladest.png","helit.png","Glasst.png"},
}	
local motor = {
	physical = true,
	collisionbox = {-2,0.5,-1, 1,1,1},
	visual = "mesh",
	mesh = "motor.x",
	textures = {"motort.png"},
	driver = nil,
	left = true,
	timer=0,
	vx = 0,--Velo. for/back-ward
	vy = 0,--Velo. up/down
	vz = 0--Velo. side
}

function heli:on_rightclick(clicker)
	if not clicker or not clicker:is_player() then
		return
	end
	if self.driver and clicker == self.driver then
		clicker:set_attach(self.model, "Root", {x=0,y=0,z=0}, {x=0,y=0,z=0})
		self.driver = nil
		clicker:set_detach()
		self.model:set_animation({x=0,y=1},0, 0)
	elseif not self.driver then
		self.model:set_animation({x=0,y=10},10, 0)
		self.driver = clicker
		--self.driver:set_animation({ x= 81, y=160, },10,0)
		clicker:set_attach(self.model, "Root", {x=0,y=0,z=-10}, {x=-90,y=0,z=-90})
		--self.object:setyaw(clicker:get_look_yaw())
	end
end

function heliModel:on_activate(staticdata, dtime_s)
	self.object:set_armor_groups({immortal=1})
	local is_attached = false
	for _,object in ipairs(minetest.env:get_objects_inside_radius(self.object:getpos(), 2)) do
		if object and object:get_luaentity() and object:get_luaentity().name=="tutorial:heli" then
			if object:get_luaentity().model == nil then
				object:get_luaentity().model = self
			end
			if object:get_luaentity().model == self then
				is_attached = true
			end
		end
	end
	if is_attached == false then
		self.object:remove()
	end
	
end

function heli:on_activate(staticdata, dtime_s)
	self.object:set_armor_groups({immortal=1})
	self.prev_y=self.object:getpos()
	if self.model == nil then
		self.model = minetest.env:add_entity(self.object:getpos(), "tutorial:heliModel")
		self.model:set_attach(self.object, "Root", {x=0,y=0,z=2}, {x=0,y=0,z=0})	
	end
end

function heli:get_staticdata(self)	
end

function heli:on_punch(puncher, time_from_last_punch, tool_capabilities, direction)
	if self.model ~= nil then
		self.model:remove()
	end
	self.object:remove()
	if puncher and puncher:is_player() then
		puncher:get_inventory():add_item("main", "tutorial:heli")
	end
end
function heliModel:on_punch(puncher, time_from_last_punch, tool_capabilities, direction)
	self.object:remove()
end
function heli:on_step(dtime)
	--Prevent shaking heli while sitting in it
	
	
	--Prevent multi heli control bug
	if self.driver and ( math.abs(self.driver:getpos().x-self.object:getpos().x)>10*dtime or math.abs(self.driver:getpos().y-self.object:getpos().y)>10*dtime or math.abs(self.driver:getpos().z-self.object:getpos().z)>10*dtime) then
		self.driver = nil
	end
	
	if self.driver then
		--self.driver:set_animation({ x= 81, y=160, },10,0)
		self.yaw = self.driver:get_look_yaw()
		v = self.object:getvelocity()
		local ctrl = self.driver:get_player_control()
		--Forward/backward
		if ctrl.up then
			self.vx = self.vx + math.cos(self.driver:get_look_yaw())*0.1
			self.vz = self.vz + math.sin(self.driver:get_look_yaw())*0.1
		end
		if ctrl.down then
			self.vx = self.vx-math.cos(self.driver:get_look_yaw())*0.1
			self.vz = self.vz-math.sin(self.driver:get_look_yaw())*0.1
		end
		--Left/right
		if ctrl.left then
			self.vz = self.vz+math.cos(self.driver:get_look_yaw())*0.1
			self.vx = self.vx+math.sin(math.pi+self.driver:get_look_yaw())*0.1
		end
		if ctrl.right then
			self.vz = self.vz-math.cos(self.driver:get_look_yaw())*0.1
			self.vx = self.vx-math.sin(math.pi+self.driver:get_look_yaw())*0.1
		end
		--up/down
		if ctrl.jump then
			if self.vy<1.5 then
				self.vy = self.vy+0.2
			end
		end
		if ctrl.sneak then
			if self.vy>-1.5 then
				self.vy = self.vy-0.2
			end
		end
		--
		--Speed limit
		if math.abs(self.vx) > 4.5 then
			self.vx = 4.5*get_sign(self.vx)
		end
		if math.abs(self.vz) > 4.5 then
			self.vz = 4.5*get_sign(self.vz)
		end
		
	end
	
	--Decelerating
	local sx=get_sign(self.vx)
	self.vx = self.vx - 0.02*sx
	local sz=get_sign(self.vz)
	self.vz = self.vz - 0.02*sz
	local sy=get_sign(self.vy)
	self.vy = self.vy-0.01*sy
	
	--Stop
	if sx ~= get_sign(self.vx) then
		self.vx = 0
	end
	if sz ~= get_sign(self.vz) then
		self.vz = 0
	end
	
	
	--Speed limit
	if math.abs(self.vx) > 4.5 then
		self.vx = 4.5*get_sign(self.vx)
	end
	if math.abs(self.vz) > 4.5 then
		self.vz = 4.5*get_sign(self.vz)
	end
	if math.abs(self.vy) > 4.5 then
		self.vz = 4.5*get_sign(self.vz)
	end
	
	--Set speed to entity
	self.object:setvelocity({x=self.vx, y=self.vy,z=self.vz})
	--Model rotation 
	--[[if self.driver then
	self.model:set_attach(self.object,"Root", 
	{x=-(self.driver:getpos().x-self.object:getpos().x)*dtime,
	y=-(self.driver:getpos().z-self.object:getpos().z)*dtime,
	z=-(self.driver:getpos().y-self.object:getpos().y)*dtime}, {
			x=-90+self.vz*5*math.cos(self.yaw)-self.vx*5*math.sin(self.yaw), 
			y=0-self.vz*5*math.sin(self.yaw)-self.vx*5*math.cos(self.yaw), 
			z=self.yaw*57})
	else]]--
	if self.model then
		self.model:set_attach(self.object,"Root", {x=0,y=0,z=0}, {
			x=-90+self.vz*4*math.cos(self.yaw)-self.vx*4*math.sin(self.yaw), 
			y=0-self.vz*4*math.sin(self.yaw)-self.vx*4*math.cos(self.yaw), 
			z=self.yaw*57})
	end
end

--
--Registration
--

minetest.register_entity("tutorial:heli", heli)
minetest.register_entity("tutorial:heliModel", heliModel)
minetest.register_entity("tutorial:motor", motor)
--minetest.register_entity("helicopter:rocket", rocket)

--
--Craft items
--

--Blades
minetest.register_craftitem("tutorial:blades",{
	description = "Blades",
	inventory_image = "blades_invt.png",
	wield_image = "blades_inv.png",
})
--Cabin
minetest.register_craftitem("tutorial:cabin",{
	description = "Cabin for heli",
	inventory_image = "cabin_invt.png",
	wield_image = "cabin_inv.png",
})
--Heli
minetest.register_craftitem("tutorial:heli", {
	description = "Helicopter",
	inventory_image = "heli_invt.png",
	wield_image = "heli_inv.png",
	wield_scale = {x=1, y=1, z=1},
	liquids_pointable = false,
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" then
			return
		end
		pointed_thing.under.y = pointed_thing.under.y+1
		minetest.env:add_entity(pointed_thing.under, "tutorial:heli")
		--minetest.env:add_entity(pointed_thing.under, "helicopter:heliModel")
		--minetest.env:add_entity(pointed_thing.under, "helicopter:motor")
		itemstack:take_item()
		return itemstack
	end,
})

--
--Craft
--

minetest.register_craft({
	output = 'tutorial:blades',
	recipe = {
		{'', 'default:ice', ''},
		{'default:ice', 'default:ice', 'default:ice'},
		{'', 'default:ice', ''},
	}
})
minetest.register_craft({
	output = 'tutorial:cabin',
	recipe = {
		{'default:obsidian','default:obsidian','default:obsidian'},
		{'default:obsidian','','default:ice'},
	        {'default:obsidian','default:obsidian','default:obsidian'},		
	}
})		
minetest.register_craft({
	output = 'tutorial:heli',
	recipe = {
		{'', 'tutorial:blades', ''},
		{'tutorial:blades', 'tutorial:cabin',''},	
	}
})	




--Version 0.1.0
minetest.register_node("tutorial:decowood",{
 description = "Decowood",
 tiles  = {"tutorial_decowood.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:pingu",{
description = "Penguin",
 tiles  = {"tutorial_pingu.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:clouda",{
description = "A fake cloud",
 tiles  = {"tutorial_clouda.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:kreutz",{
description = "Cross",
 tiles  = {"tutorial_kreutz.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:fragezeichen",{
description = "Question mark",
 tiles  = {"tutorial_fragezeichen.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_abm({
	nodenames = {"tutorial:stampfi_ei"},
	interval = 8,
	chance = 8,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:stampfi"})
	end,
})

minetest.register_node("tutorial:stampfi",{
description = "Stampfi (the name of a turtle)",
 tiles  = {"tutorial_1.1.png","tutorial_1.2.png","tutorial_1.3.png","tutorial_1.4.png", "tutorial_1.5.png" ,"tutorial_1.6.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:stampfi_ei",{
description = "Stampfi egg (the name of a turtle)",
 tiles  = {"tutorial_stampfi_ei.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:goldstone",{
description = "A golden block",
 tiles  = {"tutorial_goldstone.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:blackstone",{
description = "A black block",
 tiles  = {"tutorial_blackstone.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:bluestone",{
description = "A blue block",
 tiles  = {"tutorial_bluestone.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:greenstone",{
description = "A green block",
 tiles  = {"tutorial_greenstone.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:redstone",{
description = "Magical red block",
 tiles  = {"tutorial_redstone.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("tutorial:yellowstone",{
description = "A yellow block",
 tiles  = {"tutorial_yellowstone.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_tool("tutorial:pick_ice", {
	description = "Ice Pick",
	inventory_image = "tutorial_tool_icepick.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=1000, maxlevel=3}
		}
	},
})

minetest.register_craft({
        output = 'tutorial:pick_ice',
        recipe = {
                {'default:ice', 'default:ice', 'default:ice'},
                {'', 'tutorial:redstone', ''},
                {'', 'tutorial:redstone', ''},
        }
})


minetest.register_craft({
        output = 'tutorial:redstone',
        recipe = {
                {'default:nyancat_rainbow', 'default:nyancat_rainbow', ''},
                {'default:nyancat_rainbow', 'default:nyancat_rainbow', ''},
                {'', '', ''},
        }
})

minetest.register_craft({
        output = 'default:ice',
        recipe = {
                {'bucket:bucket_water', 'bucket:bucket_water', ''},
                {'bucket:bucket_water', 'bucket:bucket_water', ''},
                {'', '', ''},
        }
})

minetest.register_tool("tutorial:shovel_ice", {
	description = "Ice Shovel",
	inventory_image = "tutorial_tool_iceshovel.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			crumbly	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=1000, maxlevel=3}
		}
	},
})

minetest.register_craft({
        output = 'tutorial:shovel_ice',
        recipe = {
                {'', 'default:ice', ''},
                {'', 'tutorial:redstone', ''},
                {'', 'tutorial:redstone', ''},
        }
})

minetest.register_tool("tutorial:axe_ice", {
	description = "Ice Axe",
	inventory_image = "tutorial_tool_iceaxt.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			fleshy	=	{times={[2]=2.0, [3]=2.0}, uses=1000, maxlevel=3},
			choppy	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=1000, maxlevel=3},
		}
	},
})

minetest.register_craft({
        output = 'tutorial:axe_ice',
        recipe = {
                {'default:ice', 'default:ice', ''},
                {'default:ice', 'tutorial:redstone', ''},
                {'', 'tutorial:redstone', ''},
        }
})

minetest.register_tool("tutorial:sword_ice", {
	description = "Ice Sword",
	inventory_image = "tutorial_tool_icesword.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			fleshy	=	{times={[2]=2.0, [3]=2.0}, uses=1000, maxlevel=3},
			snappy	=	{times={[2]=2.0, [3]=2.0}, uses=1000, maxlevel=3},
			choppy	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=1000, maxlevel=3},
		}
	},
})

minetest.register_craft({
        output = 'tutorial:sword_ice',
        recipe = {
                {'', 'default:ice', ''},
                {'', 'default:ice', ''},
                {'', 'tutorial:redstone', ''},
        }
})













minetest.register_node("tutorial:rosa_block",{
description = "Pink Block",
 tiles  = {"tutorial_rosa_block.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
})

minetest.register_node("tutorial:rosa_gebrant_block",{
description = "Cooked Pink block",
 tiles  = {"tutorial_rosa_gebrant_block.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
})

minetest.register_craft({
        output = 'tutorial:rosa_block',
        recipe = {
                {'tutorial:rosa', 'tutorial:rosa', 'tutorial:rosa'},
                {'tutorial:rosa', 'tutorial:rosa', 'tutorial:rosa'},
                {'tutorial:rosa', 'tutorial:rosa', 'tutorial:rosa'},
        }
})

minetest.register_craft({
        output = 'tutorial:rosa_gebrant_block',
        recipe = {
                {'tutorial:rosa_gebrant', 'tutorial:rosa_gebrant', 'tutorial:rosa_gebrant'},
                {'tutorial:rosa_gebrant', 'tutorial:rosa_gebrant', 'tutorial:rosa_gebrant'},
                {'tutorial:rosa_gebrant', 'tutorial:rosa_gebrant', 'tutorial:rosa_gebrant'},
        }
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:rosa",
	output = "tutorial:rosa_gebrant",
})




minetest.register_node("tutorial:turkis_block",{
description = "Turquoise block",
 tiles  = {"tutorial_turkis_block.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
})

minetest.register_node("tutorial:turkis_gebrant_block",{
description = "Cooked turquoise block",
 tiles  = {"tutorial_turkis_gebrant_block.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
})

minetest.register_craft({
        output = 'tutorial:turkis_block',
        recipe = {
                {'tutorial:turkis', 'tutorial:turkis', 'tutorial:turkis'},
                {'tutorial:turkis', 'tutorial:turkis', 'tutorial:turkis'},
                {'tutorial:turkis', 'tutorial:turkis', 'tutorial:turkis'},
        }
})

minetest.register_craft({
        output = 'tutorial:turkis_gebrant_block',
        recipe = {
                {'tutorial:turkis_gebrant', 'tutorial:turkis_gebrant', 'tutorial:turkis_gebrant'},
                {'tutorial:turkis_gebrant', 'tutorial:turkis_gebrant', 'tutorial:turkis_gebrant'},
                {'tutorial:turkis_gebrant', 'tutorial:turkis_gebrant', 'tutorial:turkis_gebrant'},
        }
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:turkis",
	output = "tutorial:turkis_gebrant",
})




minetest.register_node("tutorial:gelb_block",{
description = "Yellow block",
 tiles  = {"tutorial_gelb_block.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
})

minetest.register_node("tutorial:gelb_gebrant_block",{
description = "Cooked yellow block",
 tiles  = {"tutorial_gelb_gebrant_block.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
})

minetest.register_craft({
        output = 'tutorial:gelb_block',
        recipe = {
                {'tutorial:gelb', 'tutorial:gelb', 'tutorial:gelb'},
                {'tutorial:gelb', 'tutorial:gelb', 'tutorial:gelb'},
                {'tutorial:gelb', 'tutorial:gelb', 'tutorial:gelb'},
        }
})

minetest.register_craft({
        output = 'tutorial:gelb_gebrant_block',
        recipe = {
                {'tutorial:gelb_gebrant', 'tutorial:gelb_gebrant', 'tutorial:gelb_gebrant'},
                {'tutorial:gelb_gebrant', 'tutorial:gelb_gebrant', 'tutorial:gelb_gebrant'},
                {'tutorial:gelb_gebrant', 'tutorial:gelb_gebrant', 'tutorial:gelb_gebrant'},
        }
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:gelb",
	output = "tutorial:gelb_gebrant",
})




minetest.register_node("tutorial:gruen_block",{
description = "Green block",
 tiles  = {"tutorial_gruen_block.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
})

minetest.register_node("tutorial:gruen_gebrant_block",{
description = "Cooked green block",
 tiles  = {"tutorial_gruen_gebrant_block.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
})

minetest.register_craft({
        output = 'tutorial:gruen_block',
        recipe = {
                {'tutorial:gruen', 'tutorial:gruen', 'tutorial:gruen'},
                {'tutorial:gruen', 'tutorial:gruen', 'tutorial:gruen'},
                {'tutorial:gruen', 'tutorial:gruen', 'tutorial:gruen'},
        }
})

minetest.register_craft({
        output = 'tutorial:gruen_gebrant_block',
        recipe = {
                {'tutorial:gruen_gebrant', 'tutorial:gruen_gebrant', 'tutorial:gruen_gebrant'},
                {'tutorial:gruen_gebrant', 'tutorial:gruen_gebrant', 'tutorial:gruen_gebrant'},
                {'tutorial:gruen_gebrant', 'tutorial:gruen_gebrant', 'tutorial:gruen_gebrant'},
        }
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:gruen",
	output = "tutorial:gruen_gebrant",
})



minetest.register_node("tutorial:rot_block",{
description = "Red block",
 tiles  = {"tutorial_rot_block.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
})

minetest.register_node("tutorial:rot_gebrant_block",{
description = "Cooked red block",
 tiles  = {"tutorial_rot_gebrant_block.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
})

minetest.register_craft({
        output = 'tutorial:rot_block',
        recipe = {
                {'tutorial:rot', 'tutorial:rot', 'tutorial:rot'},
                {'tutorial:rot', 'tutorial:rot', 'tutorial:rot'},
                {'tutorial:rot', 'tutorial:rot', 'tutorial:rot'},
        }
})

minetest.register_craft({
        output = 'tutorial:rot_gebrant_block',
        recipe = {
                {'tutorial:rot_gebrant', 'tutorial:rot_gebrant', 'tutorial:rot_gebrant'},
                {'tutorial:rot_gebrant', 'tutorial:rot_gebrant', 'tutorial:rot_gebrant'},
                {'tutorial:rot_gebrant', 'tutorial:rot_gebrant', 'tutorial:rot_gebrant'},
        }
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:rot",
	output = "tutorial:rot_gebrant",
})



minetest.register_node("tutorial:blau_block",{
description = "Blue block",
 tiles  = {"tutorial_blau_block.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
})

minetest.register_node("tutorial:blau_gebrant_block",{
description = "Cooked blue block",
 tiles  = {"tutorial_blau_gebrant_block.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
})

minetest.register_craft({
        output = 'tutorial:blau_block',
        recipe = {
                {'tutorial:blau', 'tutorial:blau', 'tutorial:blau'},
                {'tutorial:blau', 'tutorial:blau', 'tutorial:blau'},
                {'tutorial:blau', 'tutorial:blau', 'tutorial:blau'},
        }
})

minetest.register_craft({
        output = 'tutorial:blau_gebrant_block',
        recipe = {
                {'tutorial:blau_gebrant', 'tutorial:blau_gebrant', 'tutorial:blau_gebrant'},
                {'tutorial:blau_gebrant', 'tutorial:blau_gebrant', 'tutorial:blau_gebrant'},
                {'tutorial:blau_gebrant', 'tutorial:blau_gebrant', 'tutorial:blau_gebrant'},
        }
})

minetest.register_craft({
	type = "cooking",
	recipe = "tutorial:blau",
	output = "tutorial:blau_gebrant",
})

minetest.register_craft({
        output = 'default:nyancat_rainbow',
        recipe = {
                {'default:cactus', 'default:cactus', 'default:cactus'},
                {'default:cactus', 'default:cactus', 'default:cactus'},
                {'default:cactus', 'default:cactus', 'default:cactus'},
        }

})






minetest.register_craft({
        output = 'tutorial:kreutz',
        recipe = {
                {'default:stone', '', 'default:stone'},
                {'', 'default:stone', ''},
                {'default:stone', '', 'default:stone'},
        }
})

minetest.register_craft({
        output = 'tutorial:fragezeichen',
        recipe = {
                {'default:stone', 'default:stone', 'default:stone'},
                {'', 'default:stone', ''},
                {'default:stone', 'default:stone', 'default:stone'},
        }
})




minetest.register_craft({
        output = 'tutorial:stampfi_ei',
        recipe = {
                {'default:sandstone', 'default:sandstone', 'default:sandstone'},
                {'default:sandstone', 'default:sandstone', 'default:sandstone'},
                {'default:sandstone', 'default:sandstone', 'default:sandstone'},
        }
})

minetest.register_craft({
        output = 'dye:black',
        recipe = {
                {'default:coal_lump', '', ''},
                {'', '', ''},
                {'', '', ''},
        }

})

minetest.register_craftitem( "tutorial:rot", {
	description = "Red lump",
	inventory_image = "tutorial_rot.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:blau", {
	description = "Blue lump",
	inventory_image = "tutorial_blau.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:gelb", {
	description = "Yellow lump",
	inventory_image = "tutorial_gelb.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:gruen", {
	description = "Green lump",
	inventory_image = "tutorial_gruen.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:rosa", {
	description = "Pink lump",
	inventory_image = "tutorial_rosa.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:turkis", {
	description = "Turquoise lump",
	inventory_image = "tutorial_turkis.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:rot_gebrant", {
	description = "Cooked red lump",
	inventory_image = "tutorial_rot_gebrant.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:blau_gebrant", {
	description = "Cooked blue lump",
	inventory_image = "tutorial_blau_gebrant.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:gelb_gebrant", {
	description = "Cooked yellow lump",
	inventory_image = "tutorial_gelb_gebrant.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:gruen_gebrant", {
	description = "Cooked green lump",
	inventory_image = "tutorial_gruen_gebrant.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:rosa_gebrant", {
	description = "Cooked pink lump",
	inventory_image = "tutorial_rosa_gebrant.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "tutorial:turkis_gebrant", {
	description = "Cooked turquoise lump",
	inventory_image = "tutorial_turkis_gebrant.png",
	on_place_on_ground = minetest.craftitem_place_item,
})


