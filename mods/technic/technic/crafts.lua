

-- Remove some recipes
-- Bronze
minetest.register_craft({
	type = "shapeless",
	output = "default:bronze_ingot 0",
	recipe = {"default:copper_ingot", "default:steel_ingot"}
})



