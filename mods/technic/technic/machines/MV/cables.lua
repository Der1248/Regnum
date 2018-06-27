
minetest.register_alias("mv_cable", "technic:mv_cable0")

minetest.register_craft({
	output = 'technic:mv_cable0 1',
	recipe ={
		{'','default:mese_crystal',''},
		{'default:mese_crystal','technic:lv_cable0','default:mese_crystal'},
		{'','default:mese_crystal',''},
	}
}) 

technic.register_cable("MV", 2.5/16)

