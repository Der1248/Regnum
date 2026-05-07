local monster_dic = {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	attack_npcs = false,
	damage = 1,
	hp_min = 4,
	hp_max = 8,
	armor = 100,
	visual_size = {x=3, y=2.6},
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.x",
	textures = {},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_dirtmonster",
	},
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	drops = {},
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
}

function monster_dict(drop_mode, drop1, drop2, texture, blood_texture)
    local new_dict = {}
    for k, v in pairs(monster_dic) do
        new_dict[k] = v
    end
	local drop = {}
	if drop_mode == 1 then
		drop = {
			{name = drop1,
			chance = 1, 
			min = 1, 
			max = 1},
		}
	elseif drop_mode == 2 then
		drop = {
			{name = "tutorial:geschenkpapier",
			chance = 1, 
			min = 2, 
			max = 4},
			{name = "tutorial:geschenkpapier_death",
			chance = 2, 
			min = 2, 
			max = 4},
			{name = "tutorial:dna_string",
			chance = 2, 
			min = 1, 
			max = 1},
		}
	end
    -- Aktualisiere den gewünschten Wert
    new_dict["textures"] = {{texture},}
	new_dict["drops"] = drop
	new_dict["blood_texture"] = blood_texture

    -- Gib die neue Tabelle zurück
    return new_dict
end

mobs:register_mob("mobs:mummy", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	attack_npcs = false,
	damage = 10,
	hp_min = 500,
	hp_max = 500,
	armor = 100,
	visual_size = {x=8, y=8},
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_mummy.x",
	textures = {
		{"mobs_mummy.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_mummy",
		death = "mobs_mummy_death",
	},
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 5,
	jump = true,
	drops = {
		{name = "tutorial:geschenkpapier 50",
		chance = 1, 
		min = 1, 
		max = 1},
	},
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	animation = {
		speed_normal = 74,
		speed_run = 15,
		stand_start = 74,
		stand_end = 74,
		walk_start = 74,
		walk_end = 105,
		run_start = 74,
		run_end = 105,
		punch_start = 74,
		punch_end = 105,
	},
})

local entity_aliases = {
    [":mobs_turtles:turtle_sm"] = "mobs_turtles:turtle",
	[":mobs_turtles:turtle_lg"] = "mobs_turtles:seaturtle",
	[":mobs_crocs:crocodile_sm"] = "mobs_crocs:crocodile_swim",
	[":mobs_crocs:crocodile_md"] = "mobs_crocs:crocodile_float",
	[":mobs_crocs:crocodile_lg"] = "mobs_crocs:crocodile",
}

for old_entity, new_entity in pairs(entity_aliases) do
	minetest.register_entity(old_entity, {
		on_activate = function(self, staticdata, dtime_s)
			local pos = self.object:get_pos()
			self.object:remove()
			local new_entity = minetest.add_entity(pos, new_entity)
		end,
	})
end

mobs:register_mob("mobs:red_monster", monster_dict(1, "tutorial:red_tear", "", "mobs_red_monster.png", "tutorial_red_tear.png"))
mobs:register_mob("mobs:blue_monster", monster_dict(1, "tutorial:blue_tear", "", "mobs_blue_monster.png", "tutorial_blue_tear.png"))
mobs:register_mob("mobs:cyan_monster", monster_dict(1, "tutorial:cyan_tear", "", "mobs_cyan_monster.png", "tutorial_cyan_tear.png"))
mobs:register_mob("mobs:green2_monster", monster_dict(1, "tutorial:green_tear", "", "mobs_green_monster.png", "tutorial_green_tear.png"))
mobs:register_mob("mobs:yellow_monster", monster_dict(1, "tutorial:yellow_tear", "", "mobs_yellow_monster.png", "tutorial_yellow_tear.png"))
mobs:register_mob("mobs:purple_monster", monster_dict(1, "tutorial:purple_tear", "", "mobs_purple_monster.png", "tutorial_purple_tear.png"))

mobs:register_mob("mobs:stone_monster", 				monster_dict(2, "", "", "mobs_stone_monster.png",				"default_stone.png"))
mobs:register_mob("mobs:dirt_monster", 					monster_dict(2, "", "", "mobs_dirt_monster.png",				"default_dirt.png"))
mobs:register_mob("mobs:sand_monster", 					monster_dict(2, "", "", "mobs_sand_monster.png",				"default_sand.png"))
mobs:register_mob("mobs:silver_sand_monster", 			monster_dict(2, "", "", "mobs_silver_sand_monster.png",			"default_silver_sand.png"))
mobs:register_mob("mobs:desert_sand_monster", 			monster_dict(2, "", "", "mobs_desert_sand_monster.png",			"default_desert_sand.png"))
mobs:register_mob("mobs:desert_stone_monster", 			monster_dict(2, "", "", "mobs_desert_stone_monster.png",		"default_desert_stone.png"))
mobs:register_mob("mobs:snow_monster", 					monster_dict(2, "", "", "mobs_snow_monster.png",				"default_snow.png"))
mobs:register_mob("mobs:ice_monster", 					monster_dict(2, "", "", "mobs_ice_monster.png",					"default_ice.png"))
mobs:register_mob("mobs:grass_monster", 				monster_dict(2, "", "", "mobs_grass_monster.png",				"default_grass.png"))
mobs:register_mob("mobs:dry_dirt_monster", 				monster_dict(2, "", "", "mobs_dry_dirt_monster.png",			"default_dry_dirt.png"))
mobs:register_mob("mobs:clay_monster", 					monster_dict(2, "", "", "mobs_clay_monster.png",				"default_clay.png"))
mobs:register_mob("mobs:gravel_monster", 				monster_dict(2, "", "", "mobs_gravel_monster.png",				"default_gravel.png"))
mobs:register_mob("mobs:coniferous_litter_monster", 	monster_dict(2, "", "", "mobs_coniferous_litter_monster.png",	"default_coniferous_litter.png"))
mobs:register_mob("mobs:moss_monster", 					monster_dict(2, "", "", "mobs_moss_monster.png",				"default_moss.png"))
mobs:register_mob("mobs:permafrost_monster", 			monster_dict(2, "", "", "mobs_permafrost_monster.png",			"default_permafrost.png"))
mobs:register_mob("mobs:dry_grass_monster", 			monster_dict(2, "", "", "mobs_dry_grass_monster.png",			"default_dry_grass.png"))
mobs:register_mob("mobs:rainforest_litter_monster", 	monster_dict(2, "", "", "mobs_rainforest_litter_monster.png",	"default_rainforest_litter.png"))
mobs:register_mob("mobs:obsidian_monster", 				monster_dict(2, "", "", "mobs_obsidian_monster.png",			"default_obsidian.png"))

mobs:register_egg("mobs:stone_monster", 				"Stone Monster", 				"default_stone.png", 1)
mobs:register_egg("mobs:dirt_monster", 					"Dirt Monster", 				"default_dirt.png", 1)
mobs:register_egg("mobs:sand_monster", 					"Sand Monster", 				"default_sand.png", 1)
mobs:register_egg("mobs:silver_sand_monster", 			"Silver Sand Monster", 			"default_silver_sand.png", 1)
mobs:register_egg("mobs:desert_sand_monster", 			"Desert Sand Monster", 			"default_desert_sand.png", 1)
mobs:register_egg("mobs:desert_stone_monster", 			"Desert Stone Monster", 		"default_desert_stone.png", 1)
mobs:register_egg("mobs:snow_monster", 					"Snow Monster", 				"default_snow.png", 1)
mobs:register_egg("mobs:ice_monster", 					"Ice Monster", 					"default_ice.png", 1)
mobs:register_egg("mobs:grass_monster", 				"Grass Monster", 				"default_grass.png", 1)
mobs:register_egg("mobs:dry_dirt_monster", 				"Dry Dirt Monster", 			"default_dry_dirt.png", 1)
mobs:register_egg("mobs:clay_monster", 					"Clay Monster", 				"default_clay.png", 1)
mobs:register_egg("mobs:gravel_monster", 				"Gravel Monster", 				"default_gravel.png", 1)
mobs:register_egg("mobs:coniferous_litter_monster", 	"Coniferous Litter Monster", 	"default_coniferous_litter.png", 1)
mobs:register_egg("mobs:moss_monster", 					"Moss Monster", 				"default_moss.png", 1)
mobs:register_egg("mobs:permafrost_monster", 			"Permafrost Monster", 			"default_permafrost.png", 1)
mobs:register_egg("mobs:dry_grass_monster", 			"Dry Grass Monster", 			"default_dry_grass.png", 1)
mobs:register_egg("mobs:rainforest_litter_monster", 	"Rainforest Litter Monster", 	"default_rainforest_litter.png", 1)
mobs:register_egg("mobs:obsidian_monster", 				"Obsidian Monster", 			"default_obsidian.png", 1)




mobs:register_spawn("mobs:stone_monster", {"default:stone", "default:cobble", "default:mossycobble"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:dirt_monster", {"default:dirt"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:sand_monster", {"default:sand"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:silver_sand_monster", {"default:silver_sand"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:desert_sand_monster", {"default:desert_sand"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:desert_stone_monster", {"default:desert_stone", "default:desert_cobble"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:snow_monster", {"default:snowblock", "default:dirt_with_snow"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:ice_monster", {"default:ice"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:grass_monster", {"default:dirt_with_grass"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:dry_dirt_monster", {"default:dry_dirt"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:clay_monster", {"default:clay"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:gravel_monster", {"default:gravel"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:coniferous_litter_monster", {"default:dirt_with_coniferous_litter"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:moss_monster", {"default:permafrost_with_moss"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:permafrost_monster", {"default:permafrost","default:permafrost_with_stones"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:dry_grass_monster", {"default:dirt_with_dry_grass","default:dry_dirt_with_dry_grass"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:rainforest_litter_monster", {"default:dirt_with_rainforest_litter"}, 20, -1, 1, 2, 31000)
mobs:register_spawn("mobs:obsidian_monster", {"default:obsidian"}, 20, -1, 1, 2, 31000)


minetest.register_alias("mobs:skymob_gull_egg",  			"mobs_birds:gull_egg")
minetest.register_alias("mobs:skymob_bird_lg_egg",  		"mobs_birds:bird_lg_egg")
minetest.register_alias("mobs:skymob_bird_sm_egg",  		"mobs_birds:bird_sm_egg")
minetest.register_alias("mobs:skymob_bat_egg",  			"mobs_bat:bat_egg")
minetest.register_alias("mobs:skymob_butterfly_egg",  		"mobs_butterfly:butterfly_egg")

minetest.register_alias("mobs:watermob_crocodile_lg_egg",  	"mobs_crocs:crocodile_swim_egg")
minetest.register_alias("mobs:watermob_crocodile_md_egg",  	"mobs_crocs:crocodile_float_egg")
minetest.register_alias("mobs:watermob_crocodile_sm_egg",  	"mobs_crocs:crocodile_egg")
minetest.register_alias("mobs:watermob_clownfish_egg",  	"mobs_fish:clownfish_egg")
minetest.register_alias("mobs:watermob_tropical_fish_egg",  "mobs_fish:tropical_egg")
minetest.register_alias("mobs:watermob_jellyfish_egg",  	"mobs_jellyfish:jellyfish_egg")
minetest.register_alias("mobs:watermob_shark_sm_egg",  		"mobs_sharks:shark_sm_egg")
minetest.register_alias("mobs:watermob_shark_md_egg",  		"mobs_sharks:shark_md_egg")
minetest.register_alias("mobs:watermob_shark_lg_egg",  		"mobs_sharks:shark_lg_egg")
minetest.register_alias("mobs:watermob_turtle_lg_egg",  	"mobs_turtles:seaturtle_egg")
minetest.register_alias("mobs:watermob_turtle_sm_egg",  	"mobs_turtles:turtle_egg")

mobs:register_mob("mobs:cat", {
	type = "npc",
	passive = false,
	attack_type = "dogfight",
	damage = 10,
	hp_min = 2000,
	hp_max = 3000,
	armor = 100,
	order = "follow",
	visual_size= {x=1,y=1,z=1},
	collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	visual = "mesh",
	mesh = "mobs_kitten.b3d",
	attacks_monsters = true,
	attack_npcs = false,
	textures = {
		{"mobs_kitten.png"},
	},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	tamed = true,
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	fall_damage = 0,
	suffocation = 0,
	knock_back = false,
	metadata = 1,
	metadata2 = 1,
	node_damage = false,
	animation = {
		speed_normal = 42,
		stand_start = 97, 
		stand_end = 192,
		walk_start = 0, 
		walk_end = 96,
		stoodup_start = 0, 
		stoodup_end = 0,
	},
})

mobs:register_mob("mobs:dog", {
	type = "npc",
	passive = false,
	attack_type = "dogfight",
	damage = 10,
	hp_min = 2000,
	hp_max = 3000,
	armor = 100,
	order = "follow",
	visual_size= {x=1,y=1,z=1},
	collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	visual = "mesh",
	mesh = "mobs_dog.b3d",
	attacks_monsters = true,
	attack_npcs = false,
	textures = {
		{"mobs_dog.png"},
	},
	visual_rotate = math.pi / 2, 
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	tamed = true,
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	fall_damage = 0,
	suffocation = 0,
	knock_back = false,
	metadata = 1,
	metadata2 = 1,
	node_damage = false,
	rotate = 270,
	animation = {
		speed_normal = 17,
		stand_start = 121,
		stand_end = 180,
		walk_start = 61,
		walk_end = 120,
	},
})

mobs:register_mob("mobs:dragon", {
	type = "npc",
	passive = false,
	attack_type = "dogfight",
	damage = 10,
	hp_min = 2000,
	hp_max = 3000,
	armor = 100,
	order = "follow",
	visual_size= {x=1,y=1,z=1},
	collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	visual = "mesh",
	mesh = "mobs_dragon.b3d",
	attacks_monsters = false,
	attack_npcs = false,
	textures = {
		{"mobs_dragon_red.png"},
	},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	tamed = true,
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	fall_damage = 0,
	suffocation = 0,
	knock_back = false,
	metadata = 1,
	metadata2 = 1,
	node_damage = false,
	animation = {
		speed_normal = 10,
		speed_run = 20,
		walk_start = 1,
		walk_end = 22,
		stand_start = 1,
		stand_end = 22,
		run_start = 1,
		run_end = 22,
		punch_start = 22,
		punch_end = 47
	},
})

mobs:register_mob("mobs:fox", {
	type = "npc",
	passive = false,
	attack_type = "dogfight",
	damage = 10,
	hp_min = 2000,
	hp_max = 3000,
	armor = 100,
	order = "follow",
	visual_size= {x=1.5,y=1.5,z=1.5},
	collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	visual = "mesh",
	mesh = "mobs_fox.b3d",
	attacks_monsters = false,
	attack_npcs = false,
	textures = {
		{"mobs_fox1.png"},
	},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	tamed = true,
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	fall_damage = 0,
	suffocation = 0,
	knock_back = false,
	metadata = 1,
	metadata2 = 1,
	node_damage = false,
	animation = {
		speed_normal = 6,
		speed_run = 15,
		walk_start = 25,
		walk_end = 35,
		stand_start = 51,
		stand_end = 60,
		run_start = 1,
		run_end = 16,
		punch_start = 36,
		punch_end = 51
	}
})

mobs:register_mob("mobs:knight_1248", {
	type = "npc",
	passive = false,
	attack_type = "dogfight",
	damage = 10,
	hp_min = 2000,
	hp_max = 3000,
	armor = 100,
	order = "follow",
	visual_size= {x=1,y=1,z=1},
	collisionbox = {-0.4, -1.0, -0.4, 0.4, 1.0, 0.4},
	visual = "mesh",
	mesh = "mobs_1248_knight.b3d",
	attacks_monsters = false,
	attack_npcs = false,
	textures = {
		{"mobs_1248_knight.png"},
	},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	tamed = true,
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	fall_damage = 0,
	suffocation = 0,
	knock_back = false,
	metadata = 1,
	metadata2 = 1,
	node_damage = false,
	animation = {
		speed_normal = 30, 
		speed_run = 30,
		stand_start = 0, 
		stand_end = 79,
		walk_start = 168, 
		walk_end = 187,
		run_start = 168, 
		run_end = 187,
		punch_start = 189, 
		punch_end = 198
	},
})

mobs:register_mob("mobs:sheep", {
	type = "npc",
	passive = false,
	attack_type = "dogfight",
	damage = 10,
	hp_min = 2000,
	hp_max = 3000,
	armor = 100,
	order = "follow",
	visual_size= {x=1,y=1,z=1},
    collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	visual = "mesh",
	mesh = "mobs_sheep.x",
	attacks_monsters = false,
	attack_npcs = false,
	textures = {
		{"mobs_sheep.png"},
	},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	tamed = true,
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	fall_damage = 0,
	suffocation = 0,
	knock_back = false,
	metadata = 1,
	metadata2 = 1,
	node_damage = false,
	animation = {
		speed_normal = 17,
		stand_start = 0,
		stand_end = 80,
		walk_start = 81,
		walk_end = 100,
	},
})

mobs:register_mob("mobs:tortoise", {
	type = "npc",
	passive = false,
	attack_type = "dogfight",
	damage = 10,
	hp_min = 2000,
	hp_max = 3000,
	armor = 100,
	order = "follow",
	visual_size= {x=2.5,y=2.5},
	collisionbox = {-0.5, 0, -0.5, 0.5, 1, 0.5},
	visual = "mesh",
	mesh = "mobs_tortoise.b3d",
	attacks_monsters = false,
	attack_npcs = false,
	textures = {
		{"mobs_tortoise.png"},
	},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	tamed = true,
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	fall_damage = 0,
	suffocation = 0,
	knock_back = false,
	metadata = 1,
	metadata2 = 1,
	node_damage = false,
	animation = {
		speed_normal = 6,
		speed_run = 10,
		walk_start = 23,
		walk_end = 43,
		stand_start = 1,
		stand_end = 1,
		stand1_start = 1,
		stand1_end = 20,
		run_start = 23,
		run_end = 43,
		hide_start = 10,
		hide_end = 10
	},
})

minetest.register_craftitem(":mobs:random_monster_egg", {
	description = "Colored Monster",
	inventory_image = "mobs_chicken_egg.png^(nyancat_rainbow.png^[mask:mobs_chicken_egg_overlay.png)",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
        if pointed_thing.type == "node" then
            local x = math.random(1,6)
            if x == 1 then
			    minetest.add_entity(pointed_thing.above,"mobs:red_monster")
            elseif x == 2 then
                minetest.add_entity(pointed_thing.above,"mobs:blue_monster")
            elseif x == 3 then
                minetest.add_entity(pointed_thing.above,"mobs:green2_monster")
            elseif x == 4 then
                minetest.add_entity(pointed_thing.above,"mobs:yellow_monster")
            elseif x == 5 then
                minetest.add_entity(pointed_thing.above,"mobs:purple_monster")
            elseif x == 6 then
                minetest.add_entity(pointed_thing.above,"mobs:cyan_monster")
            end
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem(":mobs:dog_egg", {
	description = "Dog",
	inventory_image = "mobs_dog_inv.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local obj = minetest.add_entity(pointed_thing.above,"mobs:dog")
			local name = placer:get_player_name()
			local ent = obj:get_luaentity()
			ent.owner = placer:get_player_name()
			ent.npc_name = placer:get_player_name().."'s Dog"
			obj:set_properties({infotext=name.."'s Dog"})
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem(":mobs:cat_egg", {
	description = "Cat",
	inventory_image = "mobs_kitten_inv.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local obj = minetest.add_entity(pointed_thing.above,"mobs:cat")
			local name = placer:get_player_name()
			local ent = obj:get_luaentity()
			ent.owner = placer:get_player_name()
			ent.npc_name = placer:get_player_name().."'s Cat"
			obj:set_properties({infotext=name.."'s Cat"})
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem(":mobs:sheep_egg", {
	description = "Sheep",
	inventory_image = "mobs_chicken_egg.png^(wool_white.png^[mask:mobs_chicken_egg_overlay.png)",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local obj = minetest.add_entity(pointed_thing.above,"mobs:sheep")
			local name = placer:get_player_name()
			local ent = obj:get_luaentity()
			ent.owner = placer:get_player_name()
			ent.npc_name = placer:get_player_name().."'s Sheep"
			obj:set_properties({infotext=name.."'s Sheep"})
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem(":mobs:dragon_egg", {
	description = "Dragon",
	inventory_image = "mobs_chicken_egg.png^(default_lava_source_animated.png^[mask:mobs_chicken_egg_overlay.png)",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local obj = minetest.add_entity(pointed_thing.above,"mobs:dragon")
			local name = placer:get_player_name()
			local ent = obj:get_luaentity()
			ent.owner = placer:get_player_name()
			ent.npc_name = placer:get_player_name().."'s Dragon"
			obj:set_properties({infotext=name.."'s Dragon"})
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem(":mobs:fox_egg", {
	description = "Fox",
	inventory_image = "mobs_chicken_egg.png^(wool_orange.png^[mask:mobs_chicken_egg_overlay.png)",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local obj = minetest.add_entity(pointed_thing.above,"mobs:fox")
			local name = placer:get_player_name()
			local ent = obj:get_luaentity()
			ent.owner = placer:get_player_name()
			ent.npc_name = placer:get_player_name().."'s Fox"
			obj:set_properties({infotext=name.."'s Fox"})
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem(":mobs:tortoise_egg", {
	description = "Tortoise",
	inventory_image = "mobs_chicken_egg.png^(default_grass.png^[mask:mobs_chicken_egg_overlay.png)",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local obj = minetest.add_entity(pointed_thing.above,"mobs:tortoise")
			local name = placer:get_player_name()
			local ent = obj:get_luaentity()
			ent.owner = placer:get_player_name()
			ent.npc_name = placer:get_player_name().."'s Tortoise"
			obj:set_properties({infotext=name.."'s Tortoise"})
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem(":mobs:knight_1248_egg", {
	description = "1248 Knight",
	inventory_image = "mobs_chicken_egg.png^(tutorial_regnum.png^[mask:mobs_chicken_egg_overlay.png)",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local pos = pointed_thing.above
			pos.y = pos.y + 1
			local obj = minetest.add_entity(pos,"mobs:knight_1248")
			local name = placer:get_player_name()
			local ent = obj:get_luaentity()
			ent.owner = placer:get_player_name()
			ent.npc_name = placer:get_player_name().."'s Knight"
			obj:set_properties({infotext=name.."'s Knight"})
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})