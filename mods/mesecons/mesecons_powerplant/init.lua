-- The POWER_PLANT
-- Just emits power. always.

minetest.register_node("mesecons_powerplant:power_plant", {
	drawtype = "plantlike",
	visual_scale = 1,
	tiles = {"jeija_power_plant.png"},
	inventory_image = "jeija_power_plant.png",
	paramtype = "light",
	walkable = false,
	groups = {dig_immediate=3, mesecon = 2},
	light_source = LIGHT_MAX-9,
    	description="Power Plant",
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, -0.5+0.7, 0.3},
	},
	sounds = default.node_sound_leaves_defaults(),
	mesecons = {receptor = {
		state = mesecon.state.on
	}}
})

minetest.register_craft({
	output = "mesecons_powerplant:power_plant 1",
	recipe = {
		{"mesecons_blinkyplant:blinky_plant_off"},
		{"mesecons_blinkyplant:blinky_plant_off"},
		{""},
	}
})


minetest.register_node("mesecons_powerplant:player_plant_off", {
	drawtype = "plantlike",
	visual_scale = 1,
	tiles = {"jeija_power_plant.png"},
	inventory_image = "jeija_power_plant.png",
	paramtype = "light",
	walkable = false,
	groups = {dig_immediate=3, mesecon = 2},
	light_source = LIGHT_MAX-9,
    	description="player Plant off",
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, -0.5+0.7, 0.3},
	},
	sounds = default.node_sound_leaves_defaults(),
	mesecons = {receptor = {
		state = mesecon.state.off
	}}
})

minetest.register_node("mesecons_powerplant:player_plant_on", {
	drawtype = "plantlike",
	visual_scale = 1,
	tiles = {"jeija_power_plant.png"},
	inventory_image = "jeija_power_plant.png",
	paramtype = "light",
	walkable = false,
	groups = {dig_immediate=3, mesecon = 2},
	light_source = LIGHT_MAX-9,
    	description="player Plant on",
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, -0.5+0.7, 0.3},
	},
	sounds = default.node_sound_leaves_defaults(),
	mesecons = {receptor = {
		state = mesecon.state.on
	}}
})

minetest.register_abm(
	{nodenames = {"mesecons_solarpanel:solar_panel_off"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
	  

	  if l == true then
	  minetest.swap_node(pos, {name = "mesecons_powerplant:player_plant_on"})
	  end
	end,
})

--minetest.register_abm(
--	{nodenames = {"mesecons_powerplant:player_plant_on"},
--	interval = 20,
--	chance = 1,
--	action = function(pos, node, active_object_count, active_object_count_wider)
--	  minetest.swap_node(pos, {name = "mesecons_powerplant:player_plant_off", param2=node.param2})
--	  mesecon.receptor_off(pos)
--	end,
--})