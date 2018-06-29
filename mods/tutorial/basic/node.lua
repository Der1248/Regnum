--v.2.0.0
--v.1.13.0
minetest.register_node("tutorial:geschenk_gem",{
	description = "Gift lv.1 (gem)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_gem.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    drop = {},
})
--v.1.12.0
--v.1.11.1
--v.1.11.0
minetest.register_node("tutorial:geschenk_dragon",{
	description = "Gift (dragon)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_dragon.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    drop = {},
})
--v.1.10.0
--v.1.9.2
--v.1.9.1
--v.1.9.0
--v.1.8.0
--v.1.7.5
--v.1.7.4
--v.1.7.3
--v.1.7.2
--v.1.7.1
--v.1.7.0
minetest.register_node("tutorial:geschenk_dna",{
	description = "Gift (DNA)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_dna.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
--v.1.6.0
--v.1.5.0
--v.1.4.4
--v.1.4.3
--v.1.4.2
--v.1.4.1
--v.1.4.0
--v.1.3.3
--v.1.3.2
--v.1.3.1
--v.1.3.0
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
--v.1.2.4
--v.1.2.3
--v.1.2.2
--v.1.2.1
--v.1.2.0
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
--v.1.1.5
--v.1.1.4
--v.1.1.3
--v.1.1.2
--v.1.1.1
--v.1.1.0
minetest.register_node("tutorial:geschenk_death",{
	description = "Deathgift",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_death.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
--v.1.0.10
--v.1.0.9
--v.1.0.8
--v.1.0.7
--v.1.0.6
--v.1.0.5
--v.1.0.4
--v.1.0.3
--v.1.0.2
--v.1.0.1
--v.1.0.0
minetest.register_node("tutorial:stone_with_regnum", {
	description = "Regnum ore",
	tiles = {"default_stone.png^tutorial_regnum_ore.png"},
	is_ground_content = true,
	groups = {cracky=10},
	drop = 'tutorial:regnum',
	sounds = default.node_sound_stone_defaults(),
})
--v.0.23.3
--v.0.23.2
--v.0.23.1
--v.0.23.0
--v.0.22.1
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
--v.0.22.0
--v.0.21.0
minetest.register_node("tutorial:rainbow_torch", {
	description = "Rainbow torch",
	drawtype = "torchlike",
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
--v.0.20.0
minetest.register_node("tutorial:geschenk_wool2",{
	description = "Colored wool gift lv.2",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_wool2.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
})
minetest.register_node("tutorial:geschenk_wool1",{
	description = "Colored wool gift lv.1",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_wool1.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
})
minetest.register_node("tutorial:geschenk_wool",{
	description = "Wool gift",
	is_ground_content = true,
	drop   = 'wool:white 10',
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
--v.0.19.1
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
--v.0.18.0
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
--v.0.17.0
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
minetest.register_node("tutorial:level1",{
	tiles  = {"tutorial_level1.png"},
	description = "You are now in Level green 1",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level2",{
	tiles  = {"tutorial_level2.png"},
	description = "You are now in Level green 2",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level3",{
	tiles  = {"tutorial_level3.png"},
	description = "You are now in Level green 3",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level4",{
	tiles  = {"tutorial_level4.png"},
	description = "You are now in Level green 4",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level5",{
	tiles  = {"tutorial_level5.png"},
	description = "You are now in Level green 5",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level6",{
	tiles  = {"tutorial_level6.png"},
	description = "You are now in Level green 6",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level7",{
	tiles  = {"tutorial_level7.png"},
	description = "You are now in Level green 7",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level8",{
	tiles  = {"tutorial_level8.png"},
	description = "You are now in Level green 8",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level9",{
	tiles  = {"tutorial_level9.png"},
	description = "You are now in Level green 9",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level10",{
	tiles  = {"tutorial_level10.png"},
	description = "You are now in Level green 10",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level11",{
	tiles  = {"tutorial_level11.png"},
	description = "You are now in Level green 11",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level12",{
	tiles  = {"tutorial_level12.png"},
	description = "You are now in Level green 12",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level13",{
	tiles  = {"tutorial_level13.png"},
	description = "You are now in Level green 13",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level14",{
	tiles  = {"tutorial_level14.png"},
	description = "You are now in Level green 14",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level15",{
	tiles  = {"tutorial_level15.png"},
	description = "You are now in Level green 15",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level16",{
	tiles  = {"tutorial_level16.png"},
	description = "You are now in Level green 16",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level17",{
	tiles  = {"tutorial_level17.png"},
	description = "You are now in Level green 17",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})					
minetest.register_node("tutorial:level18",{
	tiles  = {"tutorial_level18.png"},
	description = "You are now in Level green 18",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level19",{
	tiles  = {"tutorial_level19.png"},
	description = "You are now in Level green 19",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level20",{
	tiles  = {"tutorial_level20.png"},
	description = "You are now in Level green 20",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level21",{
	tiles  = {"tutorial_level21.png"},
	description = "You are now in Level green 21",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level22",{
	tiles  = {"tutorial_level22.png"},
	description = "You are now in Level green 22",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level22",{
	tiles  = {"tutorial_level22.png"},
	description = "You are now in Level green 22",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level23",{
	tiles  = {"tutorial_level23.png"},
	description = "You are now in Level green 23",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level24",{
	tiles  = {"tutorial_level24.png"},
	description = "You are now in Level green 24",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level25",{
	tiles  = {"tutorial_level25.png"},
	description = "You are now in Level green 25",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level26",{
	tiles  = {"tutorial_level26.png"},
	description = "You are now in Level green 26",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level27",{
	tiles  = {"tutorial_level27.png"},
	description = "You are now in Level green 27",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level28",{
	tiles  = {"tutorial_level28.png"},
	description = "You are now in Level green 28",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level29",{
	tiles  = {"tutorial_level29.png"},
	description = "You are now in Level green 29",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level30",{
	tiles  = {"tutorial_level30.png"},
	description = "You are now in Level green 30",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level31",{
	tiles  = {"tutorial_level31.png"},
	description = "You are now in Level green 31",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level32",{
	tiles  = {"tutorial_level32.png"},
	description = "You are now in Level green 32",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level33",{
	tiles  = {"tutorial_level33.png"},
	description = "You are now in Level green 33",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level34",{
	tiles  = {"tutorial_level34.png"},
	description = "You are now in Level green 34",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level35",{
	tiles  = {"tutorial_level35.png"},
	description = "You are now in Level green 35",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level36",{
	tiles  = {"tutorial_level36.png"},
	description = "You are now in Level green 36",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level37",{
	tiles  = {"tutorial_level37.png"},
	description = "You are now in Level green 37",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level38",{
	tiles  = {"tutorial_level38.png"},
	description = "You are now in Level green 38",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level39",{
	tiles  = {"tutorial_level39.png"},
	description = "You are now in Level green 39",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level40",{
	tiles  = {"tutorial_level40.png"},
	description = "You are now in Level green 40",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level41",{
	tiles  = {"tutorial_level41.png"},
	description = "You are now in Level green 41",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level42",{
	tiles  = {"tutorial_level42.png"},
	description = "You are now in Level green 42",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level43",{
	tiles  = {"tutorial_level43.png"},
	description = "You are now in Level green 43",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level44",{
	tiles  = {"tutorial_level44.png"},
	description = "You are now in Level green 44",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level45",{
	tiles  = {"tutorial_level45.png"},
	description = "You are now in Level green 45",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level46",{
	tiles  = {"tutorial_level46.png"},
	description = "You are now in Level green 46",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level47",{
	tiles  = {"tutorial_level47.png"},
	description = "You are now in Level green 47",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level48",{
	tiles  = {"tutorial_level48.png"},
	description = "You are now in Level green 48",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level49",{
	tiles  = {"tutorial_level49.png"},
	description = "You are now in Level green 49",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level50",{
	tiles  = {"tutorial_level50.png"},
	description = "You are now in Level green 50",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level51",{
	tiles  = {"tutorial_level51.png"},
	description = "You are now in Level green 51",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level52",{
	tiles  = {"tutorial_level52.png"},
	description = "You are now in Level green 52",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level53",{
	tiles  = {"tutorial_level53.png"},
	description = "You are now in Level green 53",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level54",{
	tiles  = {"tutorial_level54.png"},
	description = "You are now in Level green 54",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level55",{
	tiles  = {"tutorial_level55.png"},
	description = "You are now in Level green 55",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level56",{
	tiles  = {"tutorial_level56.png"},
	description = "You are now in Level green 56",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level57",{
	tiles  = {"tutorial_level57.png"},
	description = "You are now in Level green 57",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level58",{
	tiles  = {"tutorial_level58.png"},
	description = "You are now in Level green 58",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level59",{
	tiles  = {"tutorial_level59.png"},
	description = "You are now in Level green 59",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level60",{
	tiles  = {"tutorial_level60.png"},
	description = "You are now in Level green 60",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level61",{
	tiles  = {"tutorial_level61.png"},
	description = "You are now in Level green 61",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level62",{
	tiles  = {"tutorial_level62.png"},
	description = "You are now in Level green 62",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level63",{
	tiles  = {"tutorial_level63.png"},
	description = "You are now in Level green 63",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level64",{
	tiles  = {"tutorial_level64.png"},
	description = "You are now in Level green 64",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level65",{
	tiles  = {"tutorial_level65.png"},
	description = "You are now in Level green 65",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level66",{
	tiles  = {"tutorial_level66.png"},
	description = "You are now in Level green 66",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level67",{
	tiles  = {"tutorial_level67.png"},
	description = "You are now in Level green 67",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level68",{
	tiles  = {"tutorial_level68.png"},
	description = "You are now in Level green 68",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level69",{
	tiles  = {"tutorial_level69.png"},
	description = "You are now in Level green 69",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level70",{
	tiles  = {"tutorial_level70.png"},
	description = "You are now in Level green 70",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level71",{
	tiles  = {"tutorial_level71.png"},
	description = "You are now in Level green 71",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level72",{
	tiles  = {"tutorial_level72.png"},
	description = "You are now in Level green 72",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level73",{
	tiles  = {"tutorial_level73.png"},
	description = "You are now in Level green 73",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level74",{
	tiles  = {"tutorial_level74.png"},
	description = "You are now in Level green 74",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level75",{
	tiles  = {"tutorial_level75.png"},
	description = "You are now in Level green 75",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level76",{
	tiles  = {"tutorial_level76.png"},
	description = "You are now in Level green 76",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level77",{
	tiles  = {"tutorial_level77.png"},
	description = "You are now in Level green 77",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level78",{
	tiles  = {"tutorial_level78.png"},
	description = "You are now in Level green 78",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level79",{
	tiles  = {"tutorial_level79.png"},
	description = "You are now in Level green 79",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level80",{
	tiles  = {"tutorial_level80.png"},
	description = "You are now in Level green 80",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level81",{
	tiles  = {"tutorial_level81.png"},
	description = "You are now in Level green 81",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level82",{
	tiles  = {"tutorial_level82.png"},
	description = "You are now in Level green 82",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level83",{
	tiles  = {"tutorial_level83.png"},
	description = "You are now in Level green 83",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level84",{
	tiles  = {"tutorial_level84.png"},
	description = "You are now in Level green 84",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level85",{
	tiles  = {"tutorial_level85.png"},
	description = "You are now in Level green 85",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level86",{
	tiles  = {"tutorial_level86.png"},
	description = "You are now in Level green 86",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level87",{
	tiles  = {"tutorial_level87.png"},
	description = "You are now in Level green 87",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level88",{
	tiles  = {"tutorial_level88.png"},
	description = "You are now in Level green 88",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level89",{
	tiles  = {"tutorial_level89.png"},
	description = "You are now in Level green 89",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level90",{
	tiles  = {"tutorial_level90.png"},
	description = "You are now in Level green 90",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level91",{
	tiles  = {"tutorial_level91.png"},
	description = "You are now in Level green 91",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level92",{
	tiles  = {"tutorial_level92.png"},
	description = "You are now in Level green 92",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level93",{
	tiles  = {"tutorial_level93.png"},
	description = "You are now in Level green 93",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level94",{
	tiles  = {"tutorial_level94.png"},
	description = "You are now in Level green 94",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level95",{
	tiles  = {"tutorial_level95.png"},
	description = "You are now in Level green 95",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level96",{
	tiles  = {"tutorial_level96.png"},
	description = "You are now in Level green 96",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level97",{
	tiles  = {"tutorial_level97.png"},
	description = "You are now in Level green 97",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level98",{
	tiles  = {"tutorial_level98.png"},
	description = "You are now in Level green 98",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level99",{
	tiles  = {"tutorial_level99.png"},
	description = "You are now in Level green 99",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level100",{
	tiles  = {"tutorial_level100.png"},
	description = "You are now in Level green 100",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:levelMAX",{
	tiles  = {"tutorial_levelMAX.png"},
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
--v.0.16.0
--v.0.15.0
minetest.register_node("tutorial:stone_with_admin", {
	description = "Admin ore",
	tiles = {"default_stone.png^tutorial_admin_ore.png"},
	is_ground_content = true,
	groups = {cracky=10},
	drop = 'tutorial:admin',
	sounds = default.node_sound_stone_defaults(),
})
--v.0.14.0
--v.0.13.0
--v.0.12.0
--v.0.11.0
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
--v.0.10.1
--v.0.10.0
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
--v.0.9.0
--v.0.8.0
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
--v.0.7.2
--v.0.7.1
--v.0.7.0
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
--v.0.6.5
--v.0.6.4
minetest.register_node("tutorial:diamondblock2",{
	tiles  = {"tutorial_diamondblock2.png"},
	description = "Diamond block lv.2",
	groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})
--v.0.6.3
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
--v.0.6.2
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
--v.0.6.1
--v.0.6.0
--v.0.5.2
--v.0.5.1
minetest.register_node("tutorial:lightstone",{
  tiles  = {"tutorial_lightstone.png"},
  groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
  light_source = LIGHT_MAX-1,
  description = "Lightstone",
})
--v.0.5.0
--v.0.4.0
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
--v.0.3.0
--v.0.2.0
--v.0.1.0
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
