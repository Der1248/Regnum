-- local variables
	local l_skins = {
		{"croco.png"},
		{"croco2.png"}
	}
	local l_anims = {
		speed_normal = 24,	speed_run = 24,
		stand_start = 0,	stand_end = 80,
		walk_start = 81,	walk_end = 170,
		run_start = 81,		run_end = 170,
		punch_start = 205,	punch_end = 220
	}
	local l_model			= "crocodile.x"
	local l_sounds			= {random = "croco"}
	local l_egg_texture		= "default_grass.png"
	local l_spawn_chance	= 30000

		mobs:register_mob("mobs_crocs:crocodile_lg", {
			type = "monster",
			attack_type = "dogfight",
			damage = 2,
			reach = 3,
			hp_min = 4,
			hp_max = 8,
			armor = 250,
			collisionbox = {-0.85, -0.30, -0.85, 0.85, 1.5, 0.85},
			drawtype = "front",
			visual = "mesh",
			mesh = l_model,
			textures = l_skins,
			visual_size = {x=4, y=4},
			sounds = l_sounds,
			fly = false,
			fly_in = "default:water_source",
			fall_speed = -1,
			floats = 0,
			stepheight = 1,
			view_range = 10,
			water_damage = 0,
			lava_damage = 10,
			light_damage = 0,
			animation = l_anims
		})
		--mobs:spawn_specific("mobs_crocs:crocodile_lg",
		--	{"default:water_flowing","default:water_source"},
		--	{"default:water_flowing","default:water_source"},
		--	5, 20, 30, l_spawn_chance, 1, -31000, 0)
		mobs:register_mob("mobs_crocs:crocodile_md", {
			type = "monster",
			attack_type = "dogfight",
			damage = 2,
			reach = 3,
			hp_min = 4,
			hp_max = 8,
			armor = 225,
			collisionbox = {-0.85, -0.30, -0.85, 0.85, 1.5, 0.85},
			drawtype = "front",
			visual = "mesh",
			mesh = l_model,
			textures = l_skins,
			visual_size = {x=3, y=3},
			sounds = l_sounds,
			fly = true,
			fly_in = "default:water_source",
			fall_speed = -1,
			floats = 0,
			view_range = 10,
			water_damage = 0,
			lava_damage = 10,
			light_damage = 0,
			animation = l_anims
		})
		--mobs:spawn_specific("mobs_crocs:crocodile_md",
		--	{"default:water_flowing","default:water_source"},
		--	{"default:water_flowing","default:water_source"},
		--	5, 20, 30, l_spawn_chance, 1, -31000, 0)
		mobs:register_mob("mobs_crocs:crocodile_sm", {
			type = "monster",
			attack_type = "dogfight",
			damage = 2,
			reach = 3,
			hp_min = 4,
			hp_max = 8,
			armor = 200,
			collisionbox = {-0.85, -0.30, -0.85, 0.85, 1.5, 0.85},
			drawtype = "front",
			visual = "mesh",
			mesh = l_model,
			textures = l_skins,
			visual_size = {x=2, y=2},
			sounds = l_sounds,
			fly = true,
			fly_in = "default:water_source",
			fall_speed = -1,
			floats = 0,
			view_range = 10,
			water_damage = 0,
			lava_damage = 10,
			light_damage = 0,
			animation = l_anims
		})
		--mobs:spawn_specific("mobs_crocs:crocodile_sm",
		--	{"default:water_flowing","default:water_source"},
		--	{"default:water_flowing","default:water_source"},
		--	5, 20, 30, l_spawn_chance, 1, -31000, 0)
