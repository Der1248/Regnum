-- MV compressor

minetest.register_craft({
	output = 'technic:mv_compressor',
	recipe = {
		{'technic:lv_compressor','technic:lv_compressor'},
	}
})

technic.register_compressor({tier = "MV", demand = {800, 600, 400}, speed = 2, upgrade = 1, tube = 1})
