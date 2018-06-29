-- MV grinder

minetest.register_craft({
	output = 'technic:mv_grinder',
	recipe = {
		{'technic:lv_grinder', 'technic:lv_grinder',     ''},
		{'',         '', ''},
		{'', '',      ''},
	}
})

technic.register_grinder({tier="MV", demand={600, 450, 300}, speed=2, upgrade=1, tube=1})

