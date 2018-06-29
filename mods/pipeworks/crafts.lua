

minetest.register_craft( {
	output = "pipeworks:one_way_tube 2",
	recipe = {
	        { "gems:sapphire_gem", "gems:sapphire_gem", "gems:sapphire_gem" },
	        { "", "", "" },
	        { "gems:sapphire_gem", "gems:sapphire_gem", "gems:sapphire_gem" }
	},
})


minetest.register_craft( {
	output = "pipeworks:tube_1 64",
	recipe = {
	        { "", "", "" },
	        { "", "", "" },
	        { "gems:pearl_gem", "gems:pearl_gem", "gems:pearl_gem" }
	},
})





minetest.register_craft( {
	output = "pipeworks:mese_sand_tube_1 2",
	recipe = {
	        { "gems:pearl_gem", "gems:pearl_gem", "gems:pearl_gem" },
	        { "gems:pearl_gem", "gems:pearl_gem", "gems:pearl_gem" },
	        { "", "", "" }
	},
})



minetest.register_craft( {
	output = "pipeworks:filter 1",
	recipe = {
	        { "", "", "" },
	        { "", "default:mese_crystal", "gems:ruby_gem" },
	        { "", "", "" }
	},
})

minetest.register_craft( {
	output = "pipeworks:mese_filter 1",
	recipe = {
	        { "pipeworks:filter", "pipeworks:filter", "" },
	        { "", "", "" },
	        { "", "", "" }
	},
})


