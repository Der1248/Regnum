
-- Bat spawn example

mobs:spawn({
	name = "mobs_bat:bat",
	nodes = {"air"},
	neighbors = {"default:stone"},
	max_light = 6,
	interval = 30,
	chance = 30000,
	active_object_count = 2,
	min_height = -100,
	max_height = 150
})
