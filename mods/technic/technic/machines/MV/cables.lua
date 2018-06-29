
minetest.register_alias("mv_cable", "technic:mv_cable0")

minetest.register_craft({
	output = 'technic:mv_cable0 16',
	recipe ={
		{'',    'default:mese',    ''},
		{'', 'technic:lv_cable0', ''},
		{'',    'default:mese',    ''},
	}
}) 

technic.register_cable("MV", 2.5/16)

