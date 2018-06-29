minetest.register_alias("generator_mv", "technic:generator_mv")

minetest.register_craft({
	output = 'technic:mv_generator',
	recipe = {
		{'technic:lv_generator','technic:lv_generator'},
	}
})

technic.register_generator({tier="MV", tube=1, supply=600})

