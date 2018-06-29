minetest.register_craft({
	output = 'technic:mithril_chest 1',
	recipe = {
		{'moreores:mithril_ingot','moreores:mithril_ingot','moreores:mithril_ingot'},
		{'moreores:mithril_ingot','technic:gold_chest','moreores:mithril_ingot'},
		{'moreores:mithril_ingot','moreores:mithril_ingot','moreores:mithril_ingot'},
	}
})

minetest.register_craft({
	output = 'technic:mithril_locked_chest 1',
	recipe = {
		{'moreores:mithril_ingot','moreores:mithril_ingot','moreores:mithril_ingot'},
		{'moreores:mithril_ingot','technic:gold_locked_chest','moreores:mithril_ingot'},
		{'moreores:mithril_ingot','moreores:mithril_ingot','moreores:mithril_ingot'},
	}
})

minetest.register_craft({
	output = 'technic:mithril_locked_chest 1',
	recipe = {
		{'default:steel_ingot'},
		{'technic:mithril_chest'},
	}
})

technic.chests:register("Mithril", {
	width = 15,
	height = 6,
	sort = false,
	autosort = false,
	infotext = true,
	color = false,
	locked = false,
})

technic.chests:register("Mithril", {
	width = 15,
	height = 6,
	sort = false,
	autosort = false,
	infotext = true,
	color = false,
	locked = true,
})

