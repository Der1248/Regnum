minetest.register_alias("hv_generator", "technic:hv_generator")

minetest.register_craft({
	output = 'technic:hv_generator',
	recipe = {
		{'technic:mv_generator','technic:mv_generator'},
	}
})

technic.register_generator({tier="HV", tube=1, supply=1200})

