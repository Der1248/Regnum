
minetest.register_alias("extractor", "technic:lv_extractor")

minetest.register_craft({
	output = 'technic:lv_extractor',
	recipe = {
		{'default:cobble','default:cobble','default:cobble'},
		{'default:cobble','gems:ruby_gem','default:cobble'},
		{'default:cobble','default:cobble','default:cobble'},
	}
})
technic.register_extractor({tier = "LV", demand = {300}, speed = 1})
