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
	attacks_monsters = true,
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
})
