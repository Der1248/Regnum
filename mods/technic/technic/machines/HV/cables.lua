
minetest.register_craft({
	output = 'technic:hv_cable0 16',
	recipe = {
		{'', 'default:mese', ''},
		{'default:mese', 'technic:mv_cable0', 'default:mese'},
		{'', 'default:mese', ''},
	}
}) 

technic.register_cable("HV", 3/16)

