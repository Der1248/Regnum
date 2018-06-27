
minetest.register_craft({
	output = 'technic:hv_cable0 1',
	recipe = {
		{'default:mese_crystal','default:mese_crystal','default:mese_crystal'},
		{'default:mese_crystal','technic:mv_cable0','default:mese_crystal'},
		{'default:mese_crystal','default:mese_crystal','default:mese_crystal'},
	}
}) 

technic.register_cable("HV", 3/16)

