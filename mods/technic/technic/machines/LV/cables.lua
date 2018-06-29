
minetest.register_alias("lv_cable", "technic:lv_cable0")

minetest.register_craft({
	output = 'technic:lv_cable0 16',
	recipe = {
		{'',        '',        ''},
		{'default:mese', '', ''},
		{'',        '',        ''},
	}
}) 

technic.register_cable("LV", 2/16)

