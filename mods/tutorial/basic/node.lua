minetest.register_node("tutorial:geschenk_gem",{
	description = "Gift lv.1 (gem)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_gem.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    drop = {},
})
minetest.register_node("tutorial:geschenk_dragon",{
	description = "Gift (dragon)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_dragon.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    drop = {},
})
minetest.register_node("tutorial:geschenk_dna",{
	description = "Gift (DNA)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_dna.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
minetest.register_node("tutorial:geschenk_legend",{
	description = "Gift (legendary)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_legenden.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
minetest.register_node("tutorial:geschenk_regnum",{
	description = "Gift (regnum)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_regnum.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
minetest.register_node("tutorial:geschenk_death_silber",{
	description = "Deathgift (silver)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_death_silber.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
minetest.register_node("tutorial:geschenk_death_gold",{
	description = "Deathgift (gold)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_death_gold.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
minetest.register_node("tutorial:geschenk_death_platin",{
	description = "Deathgift (platinum)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_death_platin.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
minetest.register_node("tutorial:geschenk_death",{
	description = "Deathgift",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_death.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
minetest.register_node("tutorial:stone_with_regnum", {
	description = "Regnum ore",
	tiles = {"default_stone.png^tutorial_regnum_ore.png"},
	is_ground_content = true,
	groups = {cracky=10},
	drop = 'tutorial:regnum',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("tutorial:xp_block",{
	description = "Xp Block (grey)",
	tiles  = {"tutorial_xp_block.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,xpg=1},  
})
minetest.register_node("tutorial:stone_with_blau", {
	description = "Blue ore",
	tiles = {"default_stone.png^tutorial_blau_erz.png"},
	is_ground_content = true,
	groups = {cracky=13, xpb=1},
	drop = 'tutorial:blau_erz',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("tutorial:stone_with_rot", {
	description = "Red ore",
	tiles = {"default_stone.png^tutorial_rot_erz.png"},
	is_ground_content = true,
	groups = {cracky=13, xpr=1},
	drop = 'tutorial:rot_erz',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("tutorial:rainbow_torch", {
	description = "Rainbow torch",
	drawtype = "torchlike",
	tiles = {
		{name="tutorial_torch_on_floor_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}},
		{name="tutorial_torch_on_ceiling_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}},
		{name="tutorial_torch_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}}
	},
	inventory_image = "tutorial_torch_on_floor.png",
	wield_image = "tutorial_torch_on_floor.png",
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
minetest.register_node("tutorial:geschenk_wool2",{
	description = "Colored wool gift lv.2",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_wool2.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    drop = {},
})
minetest.register_node("tutorial:geschenk_wool1",{
	description = "Colored wool gift lv.1",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_wool1.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
    drop = {},
})
minetest.register_node("tutorial:geschenk_wool",{
	description = "Wool gift",
	is_ground_content = true,
	drop   = 'wool:white 5',
	tiles  = {"tutorial_geschenk_wool.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},   
})
minetest.register_node("tutorial:geschenk_gold",{
	description = "Gift (gold)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_gold.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
	drop = {},
})
minetest.register_node("tutorial:geschenk_platin",{
	description = "Gift (platinum)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_platin.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
	drop = {},
})
minetest.register_node("tutorial:geschenk_silber",{
	description = "Gift (silver)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_silber.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
	drop = {},
})
minetest.register_node("tutorial:stone_with_titan", {
	description = "Titanium ore",
	tiles = {"tutorial_titan_ore.png"},
	is_ground_content = true,
	groups = {cracky=12},
	drop = 'tutorial:titan',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("tutorial:arena_glass", {
	description = "Arena glass",
	drawtype = "glasslike_framed_optional",
    alpha = 0,
    connects_to = "default:water_source",
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
for i = 1, 20, 1 do
    minetest.register_node("tutorial:level"..i.."_rot",{
	    tiles  = {"tutorial_level"..i..".png^tutorial_level_rot.png"},
	    description = "You are now in Level red "..i,
	    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
    })
end
minetest.register_node("tutorial:levelMAX_rot",{
	tiles  = {"tutorial_levelMAX.png^tutorial_level_rot.png"},
	description = "You are now in Level red MAX",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
for i = 1, 100, 1 do
    minetest.register_node("tutorial:level"..i.."_grau",{
	    tiles  = {"tutorial_level"..i..".png^tutorial_level_grau.png"},
	    description = "You are now in Level gray "..i,
	    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
    })
end
minetest.register_node("tutorial:levelMAX_grau",{
	tiles  = {"tutorial_levelMAX.png^tutorial_level_grau.png"},
	description = "You are now in Level gray MAX",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
for i = 1, 20, 1 do
    minetest.register_node("tutorial:level"..i.."_blau",{
	    tiles  = {"tutorial_level"..i..".png^tutorial_level_blau.png"},
	    description = "You are now in Level blue "..i,
	    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
    })
end
minetest.register_node("tutorial:levelMAX_blau",{
	tiles  = {"tutorial_levelMAX.png^tutorial_level_blau.png"},
	description = "You are now in Level blue MAX",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
for i = 1, 100, 1 do
    minetest.register_node("tutorial:level"..i,{
	    tiles  = {"tutorial_level"..i..".png"},
	    description = "You are now in Level green "..i,
	    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
    })
end
minetest.register_node("tutorial:levelMAX",{
	tiles  = {"tutorial_levelMAX.png^tutorial_level_green.png"},
	description = "You are now in Level green MAX",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:geschenk",{
	description = "Gift",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
	drop = {},
})
minetest.register_node("tutorial:stone_with_admin", {
	description = "Admin ore",
	tiles = {"default_stone.png^tutorial_admin_ore.png"},
	is_ground_content = true,
	groups = {cracky=10},
	drop = 'tutorial:admin',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("tutorial:stone_with_uranium", {
	description = "Uranium Ore",
	tiles = {"default_stone.png^tutorial_mineral_uran.png"},
	is_ground_content = true,
	groups = {cracky=5,xp=1},
	drop = 'tutorial:uranium1 4',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("tutorial:uran_chest", {
	description = "Uranium chest",
	tiles = {"tutorial_uran_chest_top.png",  "tutorial_uran_chest_top.png",  "tutorial_uran_chest_side.png",  "tutorial_uran_chest_side.png", "tutorial_uran_chest_side.png", "tutorial_uran_chest_front.png"},
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
--v.0.6.6
minetest.register_node("tutorial:megablock2",{
	tiles  = {"tutorial_megablock2.png"},
	description = "Mega block Lv.2",
	groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})
minetest.register_node("tutorial:megablock1",{
		tiles  = {"tutorial_megablock1.png"},
		description = "Mega block lv.1",
		groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})
minetest.register_node("tutorial:diamondblock2",{
	tiles  = {"tutorial_diamondblock2.png"},
	description = "Diamond block lv.2",
	groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
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
minetest.register_node("tutorial:lightstone",{
  tiles  = {"tutorial_lightstone.png"},
  groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
  light_source = LIGHT_MAX-1,
  description = "Lightstone",
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
minetest.register_node("tutorial:redstone",{
	description = "Magical red block",
	tiles  = {"tutorial_redstone.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})