-- tubes crafting recipes

minetest.register_craft({
    output = 'pipeworks:accelerator_tube_1',
    recipe = {
        {'technic:copper_coil', 'pipeworks:tube_1', 'technic:copper_coil'},
        }
})

minetest.register_craft({
    output = 'pipeworks:teleport_tube_1',
    recipe = {
        {'default:mese_crystal', 'technic:copper_coil', 'default:mese_crystal'},
        {'pipeworks:tube_1', 'technic:control_logic_unit', 'pipeworks:tube_1'},
        {'default:mese_crystal', 'technic:copper_coil', 'default:mese_crystal'},
        }
})
-- Remove some recipes
-- Bronze
minetest.register_craft({
	type = "shapeless",
	output = "default:bronze_ingot 0",
	recipe = {"default:copper_ingot", "default:steel_ingot"}
})

-- Accelerator tube
minetest.register_craft({
	output = "pipeworks:accelerator_tube_1 0",
	recipe = {
	        { "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
	        { "default:mese_crystal_fragment", "default:steel_ingot", "default:mese_crystal_fragment" },
	        { "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
	},
})

-- Teleport tube
minetest.register_craft({
	output = "pipeworks:teleport_tube_1 0",
	recipe = {
	        { "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
	        { "default:desert_stone", "default:mese_block", "default:desert_stone" },
	        { "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
	},
})

