
minetest.register_alias("compressor", "technic:lv_compressor")

minetest.register_craft({
	output = 'technic:lv_compressor',
	recipe = {
		{'default:stone','default:furnace','default:stone'},
		{'default:stone','gems:sapphire_gem','default:stone'},
		{'default:stone','default:furnace','default:stone'},
	}
})
technic.register_compressor({tier = "LV", demand = {300}, speed = 1})
