-- LV Alloy furnace

-- FIXME: kpoppel: I'd like to introduce an induction heating element here...
minetest.register_craft({
	output = 'technic:lv_alloy_furnace',
	recipe = {
		{'default:stone','default:furnace','default:stone'},
		{'default:stone','gems:sapphire_gem','default:stone'},
		{'default:stone','default:furnace','default:stone'},
	}
})

technic.register_alloy_furnace({tier = "LV", speed = 1, demand = {300}})

