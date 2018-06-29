	local l_colors = {
		"#604000:175",	--brown
		"#604000:100",	--brown2
		"#ffffff:150",	--white
		"#404040:150",	--dark_grey
		"#a0a0a0:150",	--grey
		"#808000:150",	--olive
		"#ff0000:150"	--red
	}
	local l_skins = {
		{"turtle1.png^turtle2.png^turtle3.png^turtle4.png^turtle5.png^turtle6.png^turtle7.png"},
		{"turtle1.png^(turtle2.png^[colorize:"..l_colors[5]..")^(turtle3.png^[colorize:"..l_colors[4]..")^(turtle4.png^[colorize:"..l_colors[1]..")^(turtle5.png^[colorize:"..l_colors[2]..")^(turtle6.png^[colorize:"..l_colors[6]..")^turtle7.png"}
	}
	local l_anims = {
		speed_normal = 24,	speed_run = 24,
		stand_start = 1,	stand_end = 50,
		walk_start = 60,	walk_end = 90,
		run_start = 60,		run_end = 90,
		hide_start = 95,	hide_end = 100
	}
	local l_model			= "mobf_turtle.x"
	local l_spawn_chance	= 30000

	mobs:register_mob("mobs_turtles:turtle_sm", {
		type = "animal",
		passive = true,
		hp_min = 4,
		hp_max = 8,
		armor = 200,
		collisionbox = {-0.4, 0.0, -0.4, 0.4, 0.35, 0.4},
		visual = "mesh",
		mesh = l_model,
		textures = l_skins,
		makes_footstep_sound = false,
		view_range = 10,
		rotate = 270,
		walk_velocity = 1,
		run_velocity = 1.5,
		stepheight = 1,
		jump = true,
		fly = true,
		fly_in = "default:water_source",
		fall_speed = -10,
		floats = 1,
		water_damage = 0,
		lava_damage = 5,
		light_damage = 0,
		fall_damage = 0,
		animation = l_anims,
		follow = "default:stick",
		on_rightclick = function(self, clicker)
			mobs:capture_mob(self, clicker, 0, 0, 80, true, nil)
		end
	})
	--mobs:spawn_specific("mobs_turtles:turtle_sm",
	--	{"default:water_flowing","default:water_source"},
	--	{"default:water_flowing","default:water_source"},
	--	5, 20, 30, l_spawn_chance, 1, -31000, 0)
	mobs:register_mob("mobs_turtles:turtle_lg", {
		type = "animal",
		passive = true,
		hp_min = 4,
		hp_max = 8,
		armor = 250,
		collisionbox = {-0.8, 0.0, -0.8, 0.8, 0.7, 0.8},
		visual = "mesh",
		visual_size = {x=2,y=2},
		mesh = l_model,
		textures = l_skins,
		makes_footstep_sound = false,
		view_range = 10,
		rotate = 270,
		walk_velocity = 1,
		run_velocity = 1.5,
		stepheight = 1,
		jump = false,
		fly = true,
		fly_in = "default:water_source",
		fall_speed = -10,
		floats = 1,
		water_damage = 0,
		lava_damage = 5,
		light_damage = 0,
		fall_damage = 0,
		animation = l_anims,
        follow = "default:stick",
		on_rightclick = function(self, clicker)
			mobs:capture_mob(self, clicker, 0, 0, 80, true, nil)
		end
	})
	--mobs:spawn_specific("mobs_turtles:turtle_lg",
	--	{"default:water_flowing","default:water_source"},
	--	{"default:water_flowing","default:water_source"},
	--	5, 20, 30, l_spawn_chance, 1, -31000, 0)
