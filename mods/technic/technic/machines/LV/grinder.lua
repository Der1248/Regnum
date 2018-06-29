
minetest.register_alias("grinder", "technic:grinder")
minetest.register_craft({
	output = 'technic:lv_grinder',
	recipe = {
		{'default:cobble','default:cobble','default:cobble'},
		{'default:cobble','gems:amethyst_gem','default:cobble'},
		{'default:cobble','default:cobble','default:cobble'},
	}
})

technic.register_grinder({tier="LV", demand={200}, speed=1})

