-- LV Electric Furnace
-- This is a faster version of the stone furnace which runs on EUs

-- FIXME: kpoppel I'd like to introduce an induction heating element here also
minetest.register_craft({
	output = 'technic:lv_electric_furnace',
	recipe = {
		{'default:cobble','default:furnace','default:cobble'},
		{'default:cobble','gems:sapphire_gem','default:cobble'},
		{'default:cobble','default:furnace','default:cobble'},
	}
})

technic.register_electric_furnace({tier="LV", demand={300}, speed = 2})


