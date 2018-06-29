-- The electric generator.
-- A simple device to get started on the electric machines.
-- Inefficient and expensive in fuel (200EU per tick)
-- Also only allows for LV machinery to run.

minetest.register_alias("lv_generator", "technic:lv_generator")

minetest.register_craft({
	output = 'technic:lv_generator',
	recipe = {
		{'default:stone','default:furnace','default:stone'},
		{'default:stone','gems:ruby_gem','default:stone'},
		{'default:stone','default:furnace','default:stone'},
	}
})

technic.register_generator({tier="LV", supply=200})

