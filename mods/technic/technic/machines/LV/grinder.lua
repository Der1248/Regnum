
minetest.register_alias("grinder", "technic:grinder")
minetest.register_craft({
	output = 'technic:grinder',
	recipe = {
		{'', 'default:furnace',        ''},
		{'default:furnace', 'gems:pearl_gem', 'default:furnace'},
		{'', 'default:furnace',      ''},
	}
})

technic.register_grinder({tier="LV", demand={200}, speed=1})

