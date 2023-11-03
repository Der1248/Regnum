minetest.register_node("tutorial:geschenk_gem",{
	description = "Gift (gem dragon)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_gem.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    drop = {
		max_items = 1,
		items = {
			{items = {"tutorial:gem_fragment"},rarity = 2.5},
			{items = {"tutorial:geschenk_legend"},rarity = 5},
			{items = {""},rarity = 2.5},
		}
	}
})
minetest.register_node("tutorial:geschenk_dragon",{
	description = "Gift (dragon)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_dragon.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    drop = {"default:coal_lump 20"},
})
minetest.register_node("tutorial:geschenk_dna",{
	description = "Gift (DNA)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_dna.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {
		max_items = 1,
		items = {
			{items = {"mobs:watermob_crocodile_lg_egg"},rarity = 16},
			{items = {"mobs:watermob_crocodile_md_egg"},rarity = 16},
			{items = {"mobs:watermob_crocodile_sm_egg"},rarity = 16},
			{items = {"mobs:watermob_clownfish_egg"},rarity = 16},
			{items = {"mobs:watermob_tropical_fish_egg"},rarity = 16},
			{items = {"mobs:watermob_jellyfish_egg"},rarity = 16},
			{items = {"mobs:watermob_shark_sm_egg"},rarity = 16},
			{items = {"mobs:watermob_shark_md_egg"},rarity = 16},
			{items = {"mobs:watermob_shark_lg_egg"},rarity = 16},
			{items = {"mobs:watermob_turtle_lg_egg"},rarity = 16},
			{items = {"mobs:watermob_turtle_sm_egg"},rarity = 16},
			{items = {"mobs:skymob_butterfly_egg"},rarity = 16},
			{items = {"mobs:skymob_gull_egg"},rarity = 16},
			{items = {"mobs:skymob_bird_sm_egg"},rarity = 16},
			{items = {"mobs:skymob_bird_lg_egg"},rarity = 16},
			{items = {"mobs:skymob_bat_egg"},rarity = 16},
			{items = {"tutorial:geschenk_dna"}},
		}
	}
})
minetest.register_node("tutorial:geschenk_legend",{
	description = "Gift (legendary)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_legenden.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {
		max_items = 1,
		items = {
			{items = {"gems:emerald_gem 2"},rarity = 16},
			{items = {"gems:shadow_gem 2"},rarity = 8},
			{items = {"gems:pearl_gem 2"},rarity = 8},
			{items = {"gems:amethyst_gem 2"},rarity = 5.333},
			{items = {"gems:ruby_gem 2"},rarity = 4},
			{items = {"gems:sapphire_gem 2"},rarity = 4},
			{items = {"tutorial:geschenk_legend"}},
		}
	}
})
minetest.register_node("tutorial:geschenk_regnum",{
	description = "Gift (regnum)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_regnum.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {
		max_items = 1,
		items = {
			{items = {"tutorial:regnum_pixel_gold 20"},rarity = 5},
			{items = {"tutorial:regnum_pixel_green 20"},rarity = 5},
			{items = {"tutorial:regnum_pixel_purple 55"},rarity = 5},
			{items = {"tutorial:regnum_pixel_red 185"},rarity = 5},
			{items = {"tutorial:regnum_pixel_blue 185"},rarity = 5},
			{items = {"tutorial:geschenk_regnum"}},
		}
	}
})
minetest.register_node("tutorial:geschenk_death_silber",{
	description = "Deathgift (silver)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_death_silber.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {
		max_items = 1,
		items = {
			{items = {"default:mese_crystal"},rarity = 8.333},
			{items = {"tutorial:lightstone"},rarity = 8.333},
			{items = {"default:ice"},rarity = 8.333},
			{items = {"tutorial:regnum_part 2"},rarity = 50},
			{items = {"tutorial:geschenk_death_silber"}},
		}
	}
})
minetest.register_node("tutorial:geschenk_death_gold",{
	description = "Deathgift (gold)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_death_gold.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {
		max_items = 1,
		items = {
			{items = {"default:mese_crystal 2"},rarity = 7.143},
			{items = {"tutorial:lightstone 2"},rarity = 7.143},
			{items = {"default:ice"},rarity = 7.143},
			{items = {"tutorial:regnum_part 3"},rarity = 50},
			{items = {"tutorial:geschenk_death_gold"}},
		}
	}
})
minetest.register_node("tutorial:geschenk_death_platin",{
	description = "Deathgift (platinum)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_death_platin.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {
		max_items = 1,
		items = {
			{items = {"default:mese_crystal 3"},rarity = 6.25},
			{items = {"tutorial:lightstone 2"},rarity = 5.556},
			{items = {"default:ice"},rarity = 6.25},
			{items = {"tutorial:regnum_part 4"},rarity = 50},
			{items = {"tutorial:geschenk_death_platin"}},
		}
	}
})
minetest.register_node("tutorial:geschenk_death",{
	description = "Deathgift",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_death.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {
		max_items = 1,
		items = {
			{items = {"default:mese_crystal_fragment 4"},rarity = 10},
			{items = {"tutorial:lightstone"},rarity = 10},
			{items = {"default:ice"},rarity = 10},
			{items = {"tutorial:regnum_part"},rarity = 50},
			{items = {"tutorial:geschenk_death"}},
		}
	}
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
    drop = {
		max_items = 1,
		items = {
			{items = {"wool:yellow 3"},rarity = 15},
			{items = {"wool:white 3"},rarity = 15},
			{items = {"wool:violet 3"},rarity = 15},
			{items = {"wool:red 3"},rarity = 15},
			{items = {"wool:pink 3"},rarity = 15},
			{items = {"wool:orange 3"},rarity = 15},
			{items = {"wool:magenta 3"},rarity = 15},
			{items = {"wool:grey 3"},rarity = 15},
			{items = {"wool:green 3"},rarity = 15},
			{items = {"wool:dark_grey 3"},rarity = 15},
			{items = {"wool:dark_green 3"},rarity = 15},
			{items = {"wool:cyan 3"},rarity = 15},
			{items = {"wool:brown 3"},rarity = 15},
			{items = {"wool:blue 3"},rarity = 15},
			{items = {"wool:black 3"},rarity = 15},
			{items = {"tutorial:geschenk_wool2"}},
		}
	}
})
minetest.register_node("tutorial:geschenk_wool1",{
	description = "Colored wool gift lv.1",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_wool1.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    drop = {
		max_items = 1,
		items = {
			{items = {"wool:yellow 2"},rarity = 6},
			{items = {"wool:white 2"},rarity = 6},
			{items = {"wool:violet 2"},rarity = 6},
			{items = {"wool:red 2"},rarity = 6},
			{items = {"wool:orange 2"},rarity = 6},
			{items = {"wool:blue 2"},rarity = 6},
			{items = {"tutorial:geschenk_wool1"}},
		}
	}
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
	drop = {
		max_items = 1,
		items = {
			{items = {"mobs:dirt_monster_egg"},rarity = 23},
			{items = {"mobs:stone_monster_egg"},rarity = 23},
			{items = {"mobs:sand_monster_egg"},rarity = 23},
			{items = {"mobs:desert_sand_monster_egg"},rarity = 23},
			{items = {"mobs:snow_monster_egg"},rarity = 23},
			{items = {"mobs:desert_stone_monster_egg"},rarity = 23},
			{items = {"mobs:ice_monster_egg"},rarity = 23},
			{items = {"mobs:grass_monster_egg"},rarity = 23},
			{items = {"mobs:rainforest_litter_monster_egg"},rarity = 23},
			{items = {"mobs:dry_grass_monster_egg"},rarity = 23},
			{items = {"mobs:silver_sand_monster_egg"},rarity = 23},
			{items = {"mobs:dry_dirt_monster_egg"},rarity = 23},
			{items = {"mobs:clay_monster_egg"},rarity = 23},
			{items = {"mobs:gravel_monster_egg"},rarity = 23},
			{items = {"mobs:moss_monster_egg"},rarity = 23},
			{items = {"mobs:permafrost_monster_egg"},rarity = 23},
			{items = {"mobs:coniferous_litter_monster_egg"},rarity = 23},
			{items = {"default:mese_crystal"},rarity = 3.833},
			{items = {"tutorial:geschenk_gold"}},
		}
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
			{items = {"default:mese_crystal 2"},rarity = 2.5},
			{items = {"tutorial:geschenk_wool"},rarity = 3.333},
			{items = {"tutorial:geschenk_wool1"},rarity = 5},
			{items = {"tutorial:geschenk_wool2"},rarity = 10},
			{items = {"tutorial:geschenk_platin"}},
		}
	}
})
minetest.register_node("tutorial:geschenk_silber",{
	description = "Gift (silver)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_silber.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {
		max_items = 1,
		items = {
			{items = {"tutorial:lightstone 2"},rarity = 2.222},
			{items = {"default:mese_crystal_fragment 4"},rarity = 2.5},
			{items = {"tutorial:arena_block"},rarity = 10},
			{items = {"tutorial:arena_glass"},rarity = 20},
			{items = {"tutorial:geschenk_silber"}},
		}
	}
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
	use_texture_alpha = "clip",
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
	    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,not_in_creative_inventory=1},
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
	    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,not_in_creative_inventory=1},
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
	    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,not_in_creative_inventory=1},
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
	    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,not_in_creative_inventory=1},
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
	drop = {
		max_items = 1,
		items = {
			{items = {"tutorial:lightstone"},rarity = 3.22},
			{items = {"default:mese_crystal_fragment 2"},rarity = 3.625},
			{items = {"default:ice"},rarity = 4.833},
			{items = {"tutorial:dunklematerie4"},rarity = 9.667},
			{items = {"tutorial:geschenk"}},
		}
	}
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
	groups = {vessel=1,dig_immediate=3,attached_node=1,not_in_creative_inventory=1},
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
	groups = {vessel=1,dig_immediate=3,attached_node=1,not_in_creative_inventory=1},
})
minetest.register_node("tutorial:bottleS3", {
	description = "Super magic bottle lv.MAX",
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
	groups = {vessel=1,dig_immediate=3,attached_node=1,not_in_creative_inventory=1},
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
	groups = {vessel=1,dig_immediate=3,attached_node=1,not_in_creative_inventory=1},
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
	groups = {vessel=1,dig_immediate=3,attached_node=1,not_in_creative_inventory=1},
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
	groups = {vessel=1,dig_immediate=3,attached_node=1,not_in_creative_inventory=1},
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
	groups = {vessel=1,dig_immediate=3,attached_node=1,not_in_creative_inventory=1},
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
	groups = {vessel=1,dig_immediate=3,attached_node=1,not_in_creative_inventory=1},
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
	groups = {vessel=1,dig_immediate=3,attached_node=1,not_in_creative_inventory=1},
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
	groups = {vessel=1,dig_immediate=3,attached_node=1,not_in_creative_inventory=1},
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
	groups = {vessel=1,dig_immediate=3,attached_node=1,not_in_creative_inventory=1},
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
	groups = {vessel=1,dig_immediate=3,attached_node=1,not_in_creative_inventory=1},
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
	groups = {vessel=1,dig_immediate=3,attached_node=1,not_in_creative_inventory=1},
})
minetest.register_node("tutorial:bottle12", {
	description = "Magic bottle lv.MAX",
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
	description = "Mega block Lv.MAX",
	groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})
minetest.register_node("tutorial:megablock3",{
	tiles  = {"tutorial_megablock3.png"},
	description = "Mega block Lv.3",
	groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0,not_in_creative_inventory=1},
})
--v.0.6.6
minetest.register_node("tutorial:megablock2",{
	tiles  = {"tutorial_megablock2.png"},
	description = "Mega block Lv.2",
	groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0,not_in_creative_inventory=1},
})
minetest.register_node("tutorial:megablock1",{
		tiles  = {"tutorial_megablock1.png"},
		description = "Mega block lv.1",
		groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0,not_in_creative_inventory=1},
})
minetest.register_node("tutorial:diamondblock2",{
	tiles  = {"tutorial_diamondblock2.png"},
	description = "Diamond block lv.MAX",
	groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})
minetest.register_node("tutorial:dunklematerie1",{
	tiles  = {"tutorial_dunklematerie1.png"},
	description = "Dark matter Lv.1",
	groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0,not_in_creative_inventory=1},
})
minetest.register_node("tutorial:dunklematerie2",{
	tiles  = {"tutorial_dunklematerie2.png"},
	description = "Dark matter Lv.2",
	groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0,not_in_creative_inventory=1},
})
minetest.register_node("tutorial:dunklematerie3",{
	tiles  = {"tutorial_dunklematerie3.png"},
	description = "Dark matter Lv.3",
	groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0,not_in_creative_inventory=1},
})
minetest.register_node("tutorial:dunklematerie4",{
	tiles  = {"tutorial_dunklematerie4.png"},
	description = "Dark matter Lv.4",
	groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0,not_in_creative_inventory=1},
})
minetest.register_node("tutorial:dunklematerie5",{
	tiles  = {"tutorial_dunklematerie5.png"},
	description = "Dark matter Lv.5",
	groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0,not_in_creative_inventory=1},
})
minetest.register_node("tutorial:dunklematerie6",{
	tiles  = {"tutorial_dunklematerie6.png"},
	description = "Dark matter Lv.MAX",
	groups = {snappy=6,choppy=0,oddly_breakable_by_hand=0,flammable=0},
})
minetest.register_node("tutorial:obsidian2",{
	tiles  = {"tutorial_obsidian2.png"},
	description = "Obsidian Lv.2",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=0,not_in_creative_inventory=1},
})
minetest.register_node("tutorial:obsidian3",{
	tiles  = {"tutorial_obsidian3.png"},
	description = "Obsidian Lv.3",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=0,not_in_creative_inventory=1},
})
minetest.register_node("tutorial:obsidian4",{
	tiles  = {"tutorial_obsidian4.png"},
	description = "Obsidian Lv.4",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=0,not_in_creative_inventory=1},
})
minetest.register_node("tutorial:obsidian5",{
	tiles  = {"tutorial_obsidian5.png"},
	description = "Obsidian Lv.5",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=0,not_in_creative_inventory=1},
})
minetest.register_node("tutorial:obsidian6",{
	description = "Obsidian Lv.MAX",
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
