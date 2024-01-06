minetest.register_node("gems:ruby_ore", {
	  description = "ruby ore",
      light_source = 8,
	  tiles = {"default_stone.png^ruby_ruby_ore.png"},
	  is_ground_content = true,
	  groups = {cracky=6},
	  sounds = default.node_sound_defaults(),
	  drop = 'craft "gems:ruby_gem" 1',
})

minetest.register_node("gems:emerald_ore", {
	  description = "emerald ore",
      light_source = 8,
	  tiles = {"default_stone.png^gems_emerald_ore.png"},
	  is_ground_content = true,
	  groups = {cracky=9},
	  sounds = default.node_sound_defaults(),
	  drop = 'craft "gems:emerald_gem" 1',
})

minetest.register_node("gems:sapphire_ore", {
	  description = "sapphire ore",
      light_source = 8,
	  tiles = {"default_stone.png^gems_sapphire_ore.png"},
	  is_ground_content = true,
	  groups = {cracky=6},
	  sounds = default.node_sound_defaults(),
	  drop = 'craft "gems:sapphire_gem" 1',
})

minetest.register_node("gems:amethyst_ore", {
	  description = "amethyst ore",
      light_source = 8,
	  tiles = {"default_stone.png^gems_amethyst_ore.png"},
	  is_ground_content = true,
	  groups = {cracky=7} ,
	  sounds = default.node_sound_defaults(),
	  drop = 'craft "gems:amethyst_gem" 1',
})

minetest.register_node("gems:shadow_ore", {
	  description = "shadow ore",
      light_source = 8,
	  tiles = {"default_stone.png^shadow_ore.png"},
	  is_ground_content = true,
	  groups = {cracky=8},
	  sounds = default.node_sound_defaults(),
	  drop = 'craft "gems:shadow_gem" 1',
})

minetest.register_node("gems:pearl_ore", {
	  description = "pearl ore",
      light_source = 8,
	  tiles = {"default_stone.png^gems_pearl_ore.png"},
	  is_ground_content = true,
	  groups = {cracky=8},
	  sounds = default.node_sound_defaults(),
	  drop = 'craft "gems:pearl_gem" 1',
})

minetest.register_node( "gems:ruby_block", {
	description = "ruby block",
    light_source = 8,
	tiles = { "ruby_ruby_block.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "gems:emerald_block", {
	description = "emerald block",
    light_source = 8,
	tiles = { "gems_emerald_block.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "gems:sapphire_block", {
	description = "sapphire block",
    light_source = 8,
	tiles = { "gems_sapphire_block.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "gems:shadow_block", {
	description = "shadow block",
    light_source = 8,
	tiles = { "shadow_block.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "gems:pearl_block", {
	description = "pearl block",
    light_source = 8,
	tiles = { "gems_pearl_block.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "gems:amethyst_block", {
	description = "amethyst block",
    light_source = 8,
	tiles = { "gems_amethyst_block.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem( "gems:ruby_gem", {
	description = "ruby gem",
	tiles = { "ruby:ruby_gem" },
	inventory_image = "ruby_ruby_gem.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "gems:emerald_gem", {
	description = "emerald gem",
	tiles = { "gems:emerald_gem" },
	inventory_image = "gems_emerald_gem.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "gems:shadow_gem", {
	description = "shadow gem",
	tiles = { "gems:shadow_gem" },
	inventory_image = "shadow_gem.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "gems:sapphire_gem", {
	description = "sapphire gem",
	tiles = { "gems:sapphire_gem" },
	inventory_image = "gems_sapphire_gem.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "gems:amethyst_gem", {
	description = "amethyst gem",
	tiles = { "gems:amethyst_gem" },
	inventory_image = "gems_amethyst_gem.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "gems:pearl_gem", {
	description = "pearl gem",
	tiles = { "gems:pearl_gem" },
	inventory_image = "gems_pearl_gem.png",
	on_place_on_ground = minetest.craftitem_place_item,
})



minetest.register_craft({
	output = 'gems:ruby_block',
	recipe = {
		{'gems:ruby_gem','gems:ruby_gem','gems:ruby_gem',},
		{'gems:ruby_gem','gems:ruby_gem','gems:ruby_gem',},
		{'gems:ruby_gem','gems:ruby_gem','gems:ruby_gem',},
	}
})

minetest.register_craft({
	output = 'gems:shadow_block',
	recipe = {
		{'gems:shadow_gem','gems:shadow_gem','gems:shadow_gem',},
		{'gems:shadow_gem','gems:shadow_gem','gems:shadow_gem',},
		{'gems:shadow_gem','gems:shadow_gem','gems:shadow_gem',},
	}
})

minetest.register_craft({
	output = 'gems:amethyst_block',
	recipe = {
		{'gems:amethyst_gem','gems:amethyst_gem','gems:amethyst_gem',},
		{'gems:amethyst_gem','gems:amethyst_gem','gems:amethyst_gem',},
		{'gems:amethyst_gem','gems:amethyst_gem','gems:amethyst_gem',},
	}
})

minetest.register_craft({
	output = 'gems:emerald_block',
	recipe = {
		{'gems:emerald_gem', 'gems:emerald_gem', 'gems:emerald_gem'},
		{'gems:emerald_gem', 'gems:emerald_gem', 'gems:emerald_gem'},
		{'gems:emerald_gem', 'gems:emerald_gem', 'gems:emerald_gem'},
	}
})

minetest.register_craft({
	output = 'gems:sapphire_block',
	recipe = {
		{'gems:sapphire_gem', 'gems:sapphire_gem', 'gems:sapphire_gem'},
		{'gems:sapphire_gem', 'gems:sapphire_gem', 'gems:sapphire_gem'},
		{'gems:sapphire_gem', 'gems:sapphire_gem', 'gems:sapphire_gem'},
	}
})

minetest.register_craft({
	output = 'gems:pearl_block',
	recipe = {
		{'gems:pearl_gem', 'gems:pearl_gem', 'gems:pearl_gem'},
		{'gems:pearl_gem', 'gems:pearl_gem', 'gems:pearl_gem'},
		{'gems:pearl_gem', 'gems:pearl_gem', 'gems:pearl_gem'},
	}
})



minetest.register_craft({
        output = 'gems:amethyst_gem 9',
        recipe = {
            {'', '', ''},
		    {'', 'gems:amethyst_block', ''},
		    {'', '', ''},

        }
})

minetest.register_craft({
        output = 'gems:ruby_gem 9',
        recipe = {
            {'', '', ''},
		    {'', 'gems:ruby_block', ''},
		    {'', '', ''},

        }
})

minetest.register_craft({
        output = 'gems:emerald_gem 9',
        recipe = {
            {'', '', ''},
		    {'', 'gems:emerald_block', ''},
		    {'', '', ''},

        }
})

minetest.register_craft({
        output = 'gems:sapphire_gem 9',
        recipe = {
            {'', '', ''},
		    {'', 'gems:sapphire_block', ''},
		    {'', '', ''},

        }
})

minetest.register_craft({
        output = 'gems:shadow_gem 9',
        recipe = {
            {'', '', ''},
		    {'', 'gems:shadow_block', ''},
		    {'', '', ''},

        }
})

minetest.register_craft({
        output = 'gems:pearl_gem 9',
        recipe = {
            {'', '', ''},
		    {'', 'gems:pearl_block', ''},
		    {'', '', ''},

        }
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gems:ruby_ore",
	wherein        = "default:stone",
	clust_scarcity = 10*10*10,
	clust_num_ores = 4,
	clust_size     = 3,
	y_min 		   = -31000,
	y_max 		   = -300,
	flags          = "absheight",
})


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gems:sapphire_ore",
	wherein        = "default:stone",
	clust_scarcity = 10*10*10,
	clust_num_ores = 4,
	clust_size     = 3,
	y_min 		   = -31000,
	y_max 		   = -300,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gems:amethyst_ore",
	wherein        = "default:stone",
	clust_scarcity = 13*13*13,
	clust_num_ores = 4,
	clust_size     = 3,
	y_min 		   = -31000,
	y_max 		   = -600,
	flags          = "absheight",
})


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gems:shadow_ore",
	wherein        = "default:stone",
	clust_scarcity = 15*15*15,
	clust_num_ores = 4,
	clust_size     = 3,
	y_min 		   = -31000,
	y_max 		   = -900,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gems:pearl_ore",
	wherein        = "default:stone",
	clust_scarcity = 15*15*15,
	clust_num_ores = 4,
	clust_size     = 3,
	y_min 		   = -31000,
	y_max 		   = -900,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gems:emerald_ore",
	wherein        = "default:stone",
	clust_scarcity = 17*17*17,
	clust_num_ores = 4,
	clust_size     = 3,
	y_min 		   = -31000,
	y_max 		   = -1200,
	flags          = "absheight",
})
