	local l_skins_gull = {
		{"animal_gull_mesh.png"},
		{"gull_black.png"},
		{"gull_gray.png"},
		{"gull_grayblue.png"}
	}
	local l_skins_bird = {
		{"bird_blueish.png"},
		{"bird_brown.png"},
		{"bird_gray.png"},
		{"bird_grayblue.png"},
		{"bird_red.png"},
		{"bird_redish.png"}
	}
	local l_anims = {
		speed_normal = 24,	speed_run = 24,
		stand_start = 1,	stand_end = 95,
		walk_start = 1,		walk_end = 95,
		run_start = 1,		run_end = 95
	}
	local l_model				= "animal_gull.b3d"
	local l_egg_texture			= "default_cloud.png"
	local l_capture_chance_h	= 5
	local l_capture_chance_n	= 60
	local l_spawn_in			= {"air"}
	local l_spawn_near_gull		= {"group:leaves"}
	local l_spawn_near_bird		= {"group:leaves"}
	local l_spawn_chance_gull	= 15
	local l_spawn_chance_bird	= 15
		mobs:register_mob("mobs_birds:gull", {
			type = "animal",
			passive = true,
			hp_min = 5,
			hp_max = 10,
			armor = 100,
			collisionbox = {-1, -0.3, -1, 1, 0.3, 1},
			visual = "mesh",
			mesh = l_model,
			textures = l_skins_gull,
			rotate = 270,
			walk_velocity = 4,
			run_velocity = 6,
			fall_speed = 0,
			stepheight = 3,
			fly = true,
			water_damage = 0,
			lava_damage = 10,
			light_damage = 0,
			view_range = 14,
			animation = l_anims,
			on_rightclick = function(self, clicker)
				mobs:capture_mob(self, clicker, l_capture_chance_h, l_capture_chance_n, 0, true, nil)
			end
		})
		--mobs:spawn_specific("mobs_birds:gull", l_spawn_in, l_spawn_near_gull, 5, 20, 10, l_spawn_chance_gull, 1, 0, 31000)
		mobs:register_mob("mobs_birds:bird_lg", {
			type = "animal",
			passive = true,
			hp_min = 5,
			hp_max = 10,
			armor = 250,
			collisionbox = {-0.5, -0.3, -0.5, 0.5, 0.3, 0.5},
			visual = "mesh",
			mesh = l_model,
			textures = l_skins_bird,
			visual_size = {x=.5, y=.5},
			rotate = 270,
			walk_velocity = 4,
			run_velocity = 6,
			fall_speed = 0,
			stepheight = 3,
			fly = true,
			water_damage = 0,
			lava_damage = 10,
			light_damage = 0,
			view_range = 12,
			animation = l_anims,
			on_rightclick = function(self, clicker)
				mobs:capture_mob(self, clicker, l_capture_chance_h, l_capture_chance_n, 0, true, nil)
			end
		})
		--mobs:spawn_specific("mobs_birds:bird_lg", l_spawn_in, l_spawn_near_bird, 5, 20, 10, l_spawn_chance_bird, 1, 0, 31000)
		mobs:register_mob("mobs_birds:bird_sm", {
			type = "animal",
			passive = true,
			hp_min = 2,
			hp_max = 5,
			armor = 200,
			collisionbox = {-0.25, -0.3, -0.25, 0.25, 0.3, 0.25},
			visual = "mesh",
			mesh = l_model,
			textures = l_skins_bird,
			visual_size = {x=.25, y=.25},
			rotate = 270,
			walk_velocity = 4,
			run_velocity = 6,
			fall_speed = 0,
			stepheight = 3,
			fly = true,
			water_damage = 0,
			lava_damage = 10,
			light_damage = 0,
			view_range = 10,
			animation = l_anims,
			on_rightclick = function(self, clicker)
				mobs:capture_mob(self, clicker, l_capture_chance_h, l_capture_chance_n, 0, true, nil)
			end
		})
		--mobs:spawn_specific("mobs_birds:bird_sm", l_spawn_in, l_spawn_near_bird, 5, 20, 10, l_spawn_chance_bird, 1, 0, 31000)
