	local l_skins = {
		{"animal_bat.png"},
		{"animal_bat.png^[colorize:black:150"}
	}
	local l_spawnnear	= {"group:stone"}
	local l_spawnchance	= 15
	mobs:register_mob("mobs_bat:bat", {
		type = "animal",
		damage = 1,
		reach = 1,
		attack_type = "dogfight",
		hp_min = 4,
		hp_max = 8,
		armor = 130,
		collisionbox = {-0.4,-0.4,-0.4, 0.4,0.4,0.4},
		visual = "mesh",
		mesh = "animal_bat.b3d",
		textures = l_skins,
		rotate = 270,
		walk_velocity = 10,
		run_velocity = 23,
		fall_speed = 0,
		stepheight = 3,
		sounds = {
			random = "animal_bat",
			war_cry = "animal_bat",
			damage = "animal_bat",
			attack = "animal_bat",
		},
		fly = true,
		water_damage = 2,
		lava_damage = 10,
		light_damage = 0,
		view_range = 10,
		animation = {
			speed_normal = 24,		speed_run = 24,
			stand_start = 30,		stand_end = 59,
			walk_start = 30,		walk_end = 59,
			run_start = 30,			run_end = 59,
			punch_start = 60,		punch_end = 89
		},
		on_rightclick = function(self, clicker)
			mobs:capture_mob(self, clicker, 5, 60, 0, true, nil)
		end
	})
	--mobs:spawn_specific("mobs_bat:bat", {"air"}, l_spawnnear, 0, 6, 10, l_spawnchance, 2, -100, 11000)
