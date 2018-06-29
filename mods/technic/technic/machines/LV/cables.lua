
minetest.register_alias("lv_cable", "technic:lv_cable0")

minetest.register_craft({
	output = 'technic:lv_cable0 1',
	recipe = {
		{'default:mese_crystal','default:mese_crystal','default:mese_crystal'},
	}
}) 

technic.register_cable("LV", 2/16)

