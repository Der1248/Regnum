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
		
		
		
		