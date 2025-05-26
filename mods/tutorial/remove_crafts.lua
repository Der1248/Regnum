local override_items = {
	"mesecons_commandblock:commandblock_off",
	"mesecons_stickyblocks:sticky_block_all",
	"technic:green_energy_crystal",
	"technic:red_energy_crystal",
	"technic:blue_energy_crystal",
	"technic:coal_dust",
	"technic:copper_dust",
	"technic:gold_dust",
	"technic:wrought_iron_dust",
	"technic:tin_dust",
	"technic:chromium_dust",
	"technic:zinc_dust",
	"technic:lead_dust",
	"technic:sulfur_dust",
	"technic:stone_dust",
	"technic:mithril_dust",
	"technic:silver_dust",
	"technic:copper_plate",
	"technic:cast_iron_ingot",
	"technic:carbon_steel_ingot",
	"technic:graphite",
	"technic:doped_silicon_wafer",
	"technic:uranium_fuel",
	"technic:silicon_wafer",
	"technic:carbon_plate",
	"technic:coal_dust",
	"technic:copper_dust",
	"technic:gold_dust",
	"technic:tin_dust",
	"technic:chromium_dust",
	"technic:uranium_dust",
	"technic:zinc_dust",
	"technic:lead_dust",
	"technic:sulfur_dust",
	"technic:stone_dust",
	"technic:zinc_lump",
	"technic:uranium_lump",
	"technic:chromium_lump",
	"technic:sulfur_lump",
	"technic:lead_lump",
	"technic:marble",
	"technic:granite",
	"technic:bronze_dust",
	"technic:brass_dust",
	"technic:carbon_steel_dust",
	"technic:cast_iron_dust",
	"technic:bucket_corium",
	"technic:chernobylite_dust",
	"technic:composite_plate",
	"technic:corium_source",
	"technic:mineral_uranium",
	"technic:mineral_chromium",
	"technic:mineral_zinc",
	"technic:mineral_lead",
	"technic:mineral_sulfur",
	"moretrees:rubber_tree_sapling",
	"moretrees:rubber_tree_trunk",
	"moretrees:rubber_tree_leaves",
	"technic:raw_latex",
	"technic:rubber",
	"technic:stainless_steel_dust",
	"wrench:wrench",
	"technic:sawdust",
	"technic:rubber_tree_grindings",
	"technic:common_tree_grindings",
	"technic:uranium0_dust",
	"technic:uranium_block",
	"technic:uranium_ingot",
	"technic:uranium_dust",
	"technic:uranium35_dust"
}

local remove_items = {
	"pipeworks:straight_pipe_empty", 
	"pipeworks:pipe_1_empty", 
	"pipeworks:spigot",
	"pipeworks:entry_panel_empty",
	"pipeworks:pump_off",
	"pipeworks:valve_off_empty",
	"pipeworks:storage_tank_0",
	"pipeworks:grating",
	"pipeworks:flow_sensor_empty",
	"pipeworks:fountainhead",
	"pipeworks:steel_pane_embedded_tube",
	"pipeworks:steel_block_embedded_tube",
	"mesecons_lightstone:lightstone_red_off",
	"mesecons_lightstone:lightstone_green_off",
	"mesecons_lightstone:lightstone_blue_off",
	"mesecons_lightstone:lightstone_gray_off",
	"mesecons_lightstone:lightstone_darkgray_off",
	"mesecons_lightstone:lightstone_yellow_off",
	"mesecons_lightstone:lightstone_orange_off",
	"mesecons_lightstone:lightstone_white_off",
	"mesecons_lightstone:lightstone_pink_off",
	"mesecons_lightstone:lightstone_magenta_off",
	"mesecons_lightstone:lightstone_cyan_off",
	"mesecons_lightstone:lightstone_violet_off",
	"mesecons_hydroturbine:hydro_turbine_off",
	"mesecons_solarpanel:solar_panel_off",
	"mesecons_noteblock:noteblock",
	"mesecons_movestones:movestone",
	"mesecons_movestones:sticky_movestone",
	"mesecons_movestones:movestone_vertical",
	"mesecons_movestones:sticky_movestone_vertical",
	"mesecons_lamp:lamp_off",
	"mesecons_detector:object_detector_off",
	"mesecons_materials:glue",
	"mesecons_materials:fiber",
	"mesecons_materials:silicon",
	"mesecons_pressureplates:pressure_plate_wood_off",
	"mesecons_pressureplates:pressure_plate_stone_off",
	"mesecons_random:removestone",
	"mesecons_random:ghoststone",
	"mesecons_torch:mesecon_torch_on",
	"mesecons_microcontroller:microcontroller0000",
	"technic:concrete_post_platform",
	"technic:concrete_post",
	"technic:blast_resistant_concrete",
	"technic:insulator_clip",
	"technic:insulator_clip_fencepost",
	"technic:green_energy_crystal",
	"technic:blue_energy_crystal",
	"technic:red_energy_crystal",
	"technic:copper_coil",
	"technic:diamond_drill_head",
	"technic:machine_casing",
	"technic:carbon_cloth",
	"technic:mixed_metal_ingot",
	"technic:lv_transformer",
	"technic:mv_transformer",
	"technic:hv_transformer",
	"technic:rubber_goo",
	"technic:rubber",
	"technic:chernobylite_block",
	"technic:cast_iron_ingot",
	"technic:carbon_steel_ingot",
	"technic:lv_compressor",
	"technic:lv_extractor",
	"technic:geothermal",
	"technic:lv_grinder",
	"technic:lv_lamp",
	"technic:lv_led",
	"technic:music_player",
	"technic:mv_centrifuge",
	"technic:mv_compressor",
	"technic:mv_extractor",
	"technic:mv_freezer",
	"technic:mv_grinder",
	"technic:tool_workshop",
	"technic:forcefield_emitter_off",
	"technic:hv_nuclear_reactor_core",
	"technic:water_can",
	"technic:lava_can",
	"technic:river_water_can",
	"technic:treetap",
	"technic:laser_mk1",
	"technic:laser_mk2",
	"technic:laser_mk3",
	"technic:mining_drill",
	"technic:mining_drill_mk2",
	"technic:mining_drill_mk3",
	"technic:chromium_block", 
	"technic:chromium_ingot",
	"technic:zinc_block", 
	"technic:zinc_ingot",
	"technic:lead_block", 
	"technic:lead_ingot",
	"technic:cast_iron_block", 
	"technic:carbon_steel_block", 
	"technic:stainless_steel_block", 
	"technic:stainless_steel_ingot",
	"technic:marble_bricks",
	"technic:granite_bricks",
	"technic:prospector",
	"technic:cnc",
	"technic:chainsaw",
	"technic:sonic_screwdriver",
	"technic:vacuum",
	"technic:injector",
	"pep:breath",
	"pep:speedminus",
	"pep:jumpplus",
	"pep:regen",
	"pep:regen2",
	"pep:jumpminus",
	"pep:grav0",
	"pep:mole",
	"pep:gravreset" ,
	"pep:speedplus",
	"pep:speedreset",
	"pep:jumpreset",
	"moreores:pick_mithril",
	"moreores:pick_silver",
	"moreores:sword_mithril",
	"moreores:sword_silver",
	"moreores:axe_mithril",
	"moreores:axe_silver",
	"moreores:shovel_mithril",
	"moreores:shovel_silver",
	"moreores:hoe_mithril",
	"moreores:hoe_silver",
}

for p = 0, 35 do
	local nici = (p ~= 0 and p ~= 7 and p ~= 35) and 1 or nil
	local psuffix = p == 7 and "" or p
	table.insert(remove_items, "technic:uranium"..psuffix.."_ingot")
	table.insert(remove_items, "technic:uranium"..psuffix.."_block")
	if psuffix ~= 0 and psuffix ~= 35 then
		table.insert(remove_items, "technic:uranium"..psuffix.."_dust")
	end
end

local cnc_programs = {
	"technic_cnc_stick",
	"technic_cnc_oblate_spheroid",
	"technic_cnc_cylinder_horizontal",
	"technic_cnc_slope_inner_edge_upsdown",
	"technic_cnc_slope_edge_upsdown",
	"technic_cnc_slope_upsdown",

	"technic_cnc_element_end_double",
	"technic_cnc_element_cross_double",
	"technic_cnc_element_t_double",
	"technic_cnc_element_edge_double",
	"technic_cnc_element_straight_double",
	"technic_cnc_element_end",
	"technic_cnc_element_cross",
	"technic_cnc_element_t",
	"technic_cnc_element_edge",
	"technic_cnc_element_straight",
	"technic_cnc_sphere",
	"technic_cnc_cylinder",
	"technic_cnc_twocurvededge",
	"technic_cnc_onecurvededge",
	"technic_cnc_spike",
	"technic_cnc_pyramid",
	"technic_cnc_slope_inner_edge",
	"technic_cnc_slope_edge",
	"technic_cnc_slope_lying",
	"technic_cnc_slope",
}

local cnc_meterials = {
	"default:dirt",
	"default:dirt_with_grass", 
	"default:wood",
	"default:stone",
	"default:cobble",
	"default:sandstone",
	"default:leaves",
	"default:tree",
	"default:bronzeblock", 
	"technic:stainless_steel_block",
	"technic:marble",
	"technic:granite",
	"technic:blast_resistant_concrete",
	"default:steelblock",
}


local change_items = {
	"pipeworks:filter",
	"pipeworks:mese_filter",
	"pipeworks:autocrafter",
	"pipeworks:tube_1",
	"pipeworks:accelerator_tube_1",
	"pipeworks:deployer_off",
	"pipeworks:dispenser_off",
	"pipeworks:nodebreaker_off",
	"pipeworks:trashcan",
	"pipeworks:one_way_tube",
	"pipeworks:teleport_tube_1",
	"pipeworks:sand_tube_1",
	"pipeworks:mese_tube_000000",
	"pipeworks:tag_tube_000000",
	"pipeworks:mese_sand_tube_1",
	"pipeworks:priority_tube_1",
	"mesecons:wire_00000000_off",
	"mesecons_powerplant:power_plant",
	"mesecons_blinkyplant:blinky_plant_off",
	"mesecons_button:button_off",
	"mesecons_walllever:wall_lever_off",
	"mesecons_switch:mesecon_switch_off",
	"mesecons_pistons:piston_normal_off",
	"mesecons_pistons:piston_sticky_off",
	"mesecons_detector:node_detector_off",
	"mesecons_extrawires:vertical_off",
	"mesecons_luacontroller:luacontroller0000",
	"mesecons_fpga:fpga0000",
	"mesecons_fpga:programmer",
	"mesecons_gates:diode_off",
	"mesecons_gates:not_off",
	"mesecons_gates:and_off",
	"mesecons_gates:nand_off",
	"mesecons_gates:xor_off",
	"mesecons_gates:nor_off",
	"mesecons_gates:or_off",
	"mesecons_delayer:delayer_off_1",
	"technic:lv_generator",
	"technic:mv_generator",
	"technic:hv_generator",
	"technic:solar_panel",
	"technic:solar_array_lv",
	"technic:solar_array_mv",
	"technic:solar_array_hv",
	"technic:hydro_turbine",
	"technic:power_monitor",
	"technic:supply_converter",
	"technic:switching_station",
	"technic:water_mill",
	"technic:quarry",
	"technic:electric_furnace",
	"technic:mv_electric_furnace",
	"technic:lv_alloy_furnace",
	"technic:mv_alloy_furnace",
	"technic:lv_cable",
	"technic:mv_cable",
	"technic:hv_cable",
	"technic:lv_battery_box0",
	"technic:mv_battery_box0",
	"technic:hv_battery_box0",
	"technic:control_logic_unit",
	"technic:battery",
	"technic:iron_locked_chest",
	"technic:iron_chest",
}

local change_items_craft_cooking = {
	"technic:stone_dust",
	"technic:copper_dust",
	"technic:gold_dust",
	"technic:bronze_dust",
	"technic:carbon_steel_ingot",
	"technic:cast_iron_ingot",
	"technic:wrought_iron_dust",
	"technic:tin_dust",
	"technic:silver_dust",
	"technic:mithril_dust",
}

local item_replacements = {
	{"3d_armor:superlegendenboots2", "3d_armor:superlegendenboots"},
    {"3d_armor:superlegendenboots3", "3d_armor:superlegendenboots"},
    {"3d_armor:superlegendenboots4", "3d_armor:superlegendenboots"},
    {"3d_armor:superlegendenchestplate2", "3d_armor:superlegendenchestplate"},
    {"3d_armor:superlegendenchestplate3", "3d_armor:superlegendenchestplate"},
    {"3d_armor:superlegendenchestplate4", "3d_armor:superlegendenchestplate"},
	{"3d_armor:superlegendenhelmet2", "3d_armor:superlegendenhelmet"},
    {"3d_armor:superlegendenhelmet3", "3d_armor:superlegendenhelmet"},
    {"3d_armor:superlegendenhelmet4", "3d_armor:superlegendenhelmet"},
	{"3d_armor:superlegendenleggings2", "3d_armor:superlegendenleggings"},
    {"3d_armor:superlegendenleggings3", "3d_armor:superlegendenleggings"},
    {"3d_armor:superlegendenleggings4", "3d_armor:superlegendenleggings"},
	{"shields:superlegendenshield2", "shields:superlegendenshield"},
    {"shields:superlegendenshield3", "shields:superlegendenshield"},
    {"shields:superlegendenshield4", "shields:superlegendenshield"},

	{"3d_armor:regnumboots2", "3d_armor:regnumboots"},
    {"3d_armor:regnumboots3", "3d_armor:regnumboots"},
    {"3d_armor:regnumboots4", "3d_armor:regnumboots"},
    {"3d_armor:regnumchestplate2", "3d_armor:regnumchestplate"},
    {"3d_armor:regnumchestplate3", "3d_armor:regnumchestplate"},
    {"3d_armor:regnumchestplate4", "3d_armor:regnumchestplate"},
	{"3d_armor:regnumhelmet2", "3d_armor:regnumhelmet"},
    {"3d_armor:regnumhelmet3", "3d_armor:regnumhelmet"},
    {"3d_armor:regnumhelmet4", "3d_armor:regnumhelmet"},
	{"3d_armor:regnumleggings2", "3d_armor:regnumleggings"},
    {"3d_armor:regnumleggings3", "3d_armor:regnumleggings"},
    {"3d_armor:regnumleggings4", "3d_armor:regnumleggings"},
	{"shields:regnumshield2", "shields:regnumshield"},
    {"shields:regnumshield3", "shields:regnumshield"},
    {"shields:regnumshield4", "shields:regnumshield"},

	{"3d_armor:boots_admin2", "3d_armor:boots_admin"},
    {"3d_armor:boots_admin3", "3d_armor:boots_admin"},
    {"3d_armor:boots_admin4", "3d_armor:boots_admin"},
    {"3d_armor:chestplate_admin2", "3d_armor:chestplate_admin"},
    {"3d_armor:chestplate_admin3", "3d_armor:chestplate_admin"},
    {"3d_armor:chestplate_admin4", "3d_armor:chestplate_admin"},
	{"3d_armor:helmet_admin2", "3d_armor:helmet_admin"},
    {"3d_armor:helmet_admin3", "3d_armor:helmet_admin"},
    {"3d_armor:helmet_admin4", "3d_armor:helmet_admin"},
	{"3d_armor:leggings_admin2", "3d_armor:leggings_admin"},
    {"3d_armor:leggings_admin3", "3d_armor:leggings_admin"},
    {"3d_armor:leggings_admin4", "3d_armor:leggings_admin"},
	{"shields:shield_admin2", "shields:shield_admin"},
    {"shields:shield_admin3", "shields:shield_admin"},
    {"shields:shield_admin4", "shields:shield_admin"},
	{"tutorial:server_hammer7", "tutorial:server_hammer1"},
	{"tutorial:server_hammer8", "tutorial:server_hammer1"},
}
for i, pair in ipairs(item_replacements) do
	minetest.register_alias(pair[1] , pair[2])
end
for i = 1, #cnc_meterials do
	for j = 1, #cnc_programs do
		if not (i == 1 and j < 7 ) then
			minetest.unregister_item(cnc_meterials[i].."_"..cnc_programs[j])
		end
	end
end

for i = 1, #remove_items do
	local recipes = minetest.get_all_craft_recipes(remove_items[i])
	if dump(recipes) == "nil" then
		minetest.log("action", remove_items[i])
	end
	--minetest.log("action", dump(recipes))
	minetest.clear_craft({
		output = remove_items[i],
	})
	minetest.override_item(remove_items[i], {
		groups = {not_in_creative_inventory=1},
	})
end

for i = 1, #override_items do
	minetest.override_item(override_items[i], {
		groups = {not_in_creative_inventory=1},
	})
end

for i = 1, #change_items do
	minetest.clear_craft({
		output = change_items[i],
	})
end
for i = 1, #change_items_craft_cooking do
	minetest.clear_craft({
		type = "cooking",
		recipe = change_items_craft_cooking[i],
	})
end
minetest.clear_craft({
	recipe = {
		{"mesecons_materials:fiber", "mesecons_materials:fiber", "mesecons_materials:fiber"},
		{"group:mesecon_conductor_craftable", "group:mesecon_conductor_craftable", "group:mesecon_conductor_craftable"},
		{"mesecons_materials:fiber", "mesecons_materials:fiber", "mesecons_materials:fiber"},
	}
})

minetest.clear_craft({
	type = "shapeless",
	replacements = {{"bucket:bucket_water","bucket:bucket_empty"}},
	recipe = {
		"technic:stone_dust",
		"group:leaves",
		"bucket:bucket_water",
		"group:sand",
	},
})

minetest.register_craft({
	output = "pipeworks:filter",
	recipe = {
		{"default:mese_crystal", "gems:ruby_gem"},
	},
})

minetest.register_craft({
	output = "pipeworks:trashcan",
	recipe = {
		{"default:mese_crystal", "gems:sapphire_gem"},
	},
})

minetest.register_craft({
	output = "pipeworks:mese_filter",
	recipe = {
		{"pipeworks:filter", "pipeworks:filter"},
	},
})

minetest.register_craft({
	output = "pipeworks:autocrafter",
	recipe = {
		{"default:mese_crystal", "gems:amethyst_gem"},
	},
})

minetest.register_craft({
	output = "pipeworks:deployer_off",
	recipe = {
		{"default:mese_crystal", "gems:pearl_gem"},
	},
})

minetest.register_craft({
	output = "pipeworks:dispenser_off",
	recipe = {
		{"default:mese_crystal", "gems:shadow_gem"},
	},
})

minetest.register_craft({
	output = "pipeworks:nodebreaker_off",
	recipe = {
		{"default:mese_crystal", "gems:emerald_gem"},
	},
})

minetest.register_craft({
	output = "pipeworks:tube_1 64",
	recipe = {
		{"gems:ruby_gem", "gems:ruby_gem", "gems:ruby_gem"},
		{"", "", ""},
		{"gems:sapphire_gem", "gems:sapphire_gem", "gems:sapphire_gem"}
	},
})

minetest.register_craft({
	output = "pipeworks:accelerator_tube_1",
	recipe = {
		{"pipeworks:tube_1", "pipeworks:tube_1", "pipeworks:tube_1"},
	},
})

minetest.register_craft({
	output = "pipeworks:one_way_tube",
	recipe = {
		{"", "gems:amethyst_gem", ""},
		{"gems:amethyst_gem", "pipeworks:tube_1", "gems:amethyst_gem"},
		{"", "gems:amethyst_gem", ""}
	},
})

minetest.register_craft({
	output = "pipeworks:teleport_tube_1",
	recipe = {
		{"", "gems:emerald_gem", ""},
		{"gems:emerald_gem", "pipeworks:tube_1", "gems:emerald_gem"},
		{"", "gems:emerald_gem", ""}
	},
})

minetest.register_craft({
	output = "pipeworks:sand_tube_1",
	recipe = {
		{"", "gems:pearl_gem", ""},
		{"gems:pearl_gem", "pipeworks:tube_1", "gems:pearl_gem"},
		{"", "gems:pearl_gem", ""}
	},
})

minetest.register_craft({
	output = "pipeworks:mese_tube_000000",
	recipe = {
		{"", "gems:shadow_gem", ""},
		{"gems:shadow_gem", "pipeworks:tube_1", "gems:shadow_gem"},
		{"", "gems:shadow_gem", ""}
	},
})

minetest.register_craft({
	output = "pipeworks:tag_tube_000000",
	recipe = {
		{"pipeworks:mese_tube_000000", "pipeworks:mese_tube_000000", "pipeworks:mese_tube_000000"},
	},
})

minetest.register_craft({
	output = "pipeworks:mese_sand_tube_1",
	recipe = {
		{"pipeworks:sand_tube_1", "pipeworks:sand_tube_1", "pipeworks:sand_tube_1"},
	},
})

minetest.register_craft({
	output = "pipeworks:priority_tube_1",
	recipe = {
		{"pipeworks:tube_1", "pipeworks:tube_1"},
	},
})

minetest.register_craft({
	output = "mesecons:wire_00000000_off 64",
	recipe = {
		{"gems:ruby_gem", "default:mese_crystal", "gems:sapphire_gem"}
	},
})

minetest.register_craft({
	output = "mesecons_powerplant:power_plant",
	recipe = {
		{"", "gems:amethyst_gem", ""},
		{"gems:ruby_gem", "default:mese_crystal", "gems:sapphire_gem"}
	},
})

minetest.register_craft({
	output = "mesecons_blinkyplant:blinky_plant_off",
	recipe = {
		{"mesecons_powerplant:power_plant", "mesecons_powerplant:power_plant", "mesecons_powerplant:power_plant"},
	},
})

minetest.register_craft({
	output = "mesecons_button:button_off",
	recipe = {
		{"gems:ruby_gem", "mesecons:wire_00000000_off", "gems:ruby_gem"}
	},
})

minetest.register_craft({
	output = "mesecons_walllever:wall_lever_off",
	recipe = {
		{"gems:sapphire_gem", "mesecons:wire_00000000_off", "gems:sapphire_gem"}
	},
})


minetest.register_craft({
	output = "mesecons_switch:mesecon_switch_off",
	recipe = {
		{"", "gems:ruby_gem", ""},
		{"gems:ruby_gem", "mesecons:wire_00000000_off", "gems:ruby_gem"},
		{"", "gems:ruby_gem", ""}
	},
})

minetest.register_craft({
	output = "mesecons_pistons:piston_normal_off",
	recipe = {
		{"", "gems:sapphire_gem", ""},
		{"gems:sapphire_gem", "mesecons:wire_00000000_off", "gems:sapphire_gem"},
		{"", "gems:sapphire_gem", ""}
	},
})

minetest.register_craft({
	output = "mesecons_pistons:piston_sticky_off",
	recipe = {
		{"mesecons_pistons:piston_normal_off", "mesecons_pistons:piston_normal_off", "mesecons_pistons:piston_normal_off"}
	},
})

minetest.register_craft({
	output = "mesecons_detector:node_detector_off",
	recipe = {
		{"", "gems:amethyst_gem", ""},
		{"gems:amethyst_gem", "mesecons:wire_00000000_off", "gems:amethyst_gem"},
		{"", "gems:amethyst_gem", ""}
	},
})

minetest.register_craft({
	output = "mesecons_insulated:insulated_off",
	recipe = {
		{"gems:ruby_gem", "mesecons:wire_00000000_off", "gems:sapphire_gem"}
	},
})

minetest.register_craft({
	output = "mesecons_extrawires:vertical_off",
	recipe = {
		{"mesecons:wire_00000000_off", "mesecons:wire_00000000_off", "mesecons:wire_00000000_off"}
	},
})

minetest.register_craft({
	output = "mesecons_luacontroller:luacontroller0000",
	recipe = {
		{"", "gems:shadow_gem", ""},
		{"gems:shadow_gem", "mesecons:wire_00000000_off", "gems:shadow_gem"},
		{"", "gems:shadow_gem", ""}
	},
})

minetest.register_craft({
	output = "mesecons_fpga:programmer",
	recipe = {
		{"", "gems:emerald_gem", ""},
		{"gems:emerald_gem", "mesecons:wire_00000000_off", "gems:emerald_gem"},
		{"", "gems:emerald_gem", ""}
	},
})

minetest.register_craft({
	output = "mesecons_fpga:fpga0000",
	recipe = {
		{"", "gems:pearl_gem", ""},
		{"gems:pearl_gem", "mesecons:wire_00000000_off", "gems:pearl_gem"},
		{"", "gems:pearl_gem", ""}
	},
})

minetest.register_craft({
	output = "mesecons_gates:and_off",
	recipe = {
		{"mesecons:wire_00000000_off", "gems:ruby_gem", ""},
		{"", "", "mesecons:wire_00000000_off"},
		{"mesecons:wire_00000000_off", "gems:ruby_gem", ""}
	},
})

minetest.register_craft({
	output = "mesecons_gates:nand_off",
	recipe = {
		{"mesecons:wire_00000000_off", "gems:sapphire_gem", ""},
		{"", "", "mesecons:wire_00000000_off"},
		{"mesecons:wire_00000000_off", "gems:sapphire_gem", ""}
	},
})

minetest.register_craft({
	output = "mesecons_gates:or_off",
	recipe = {
		{"mesecons:wire_00000000_off", "gems:ruby_gem", ""},
		{"", "", "mesecons:wire_00000000_off"},
		{"mesecons:wire_00000000_off", "gems:sapphire_gem", ""}
	},
})

minetest.register_craft({
	output = "mesecons_gates:nor_off",
	recipe = {
		{"mesecons:wire_00000000_off", "gems:sapphire_gem", ""},
		{"", "", "mesecons:wire_00000000_off"},
		{"mesecons:wire_00000000_off", "gems:ruby_gem", ""}
	},
})

minetest.register_craft({
	output = "mesecons_gates:xor_off",
	recipe = {
		{"mesecons:wire_00000000_off", "gems:sapphire_gem", ""},
		{"", "gems:amethyst_gem", "mesecons:wire_00000000_off"},
		{"mesecons:wire_00000000_off", "gems:ruby_gem", ""}
	},
})

minetest.register_craft({
	output = "mesecons_gates:not_off",
	recipe = {
		{"mesecons:wire_00000000_off", "gems:sapphire_gem", "mesecons:wire_00000000_off"}
	},
})

minetest.register_craft({
	output = "mesecons_gates:diode_off",
	recipe = {
		{"mesecons:wire_00000000_off", "gems:ruby_gem", "mesecons:wire_00000000_off"}
	},
})

minetest.register_craft({
	output = "mesecons_delayer:delayer_off_1",
	recipe = {
		{"mesecons:wire_00000000_off", "gems:emerald_gem", "mesecons:wire_00000000_off"}
	},
})

minetest.register_craft({
	output = 'technic:lv_generator',
	recipe = {
		{'default:cobble', 'default:cobble',       'default:cobble'},
		{'default:cobble', 'gems:ruby_gem', 	'default:cobble'},
		{'default:cobble', 'default:cobble',      	'default:cobble'},
	}
})

minetest.register_craft({
	output = "technic:mv_generator",
	recipe = {
		{"technic:lv_generator", "technic:lv_generator"},
	},
})

minetest.register_craft({
	output = "technic:hv_generator",
	recipe = {
		{"technic:mv_generator", "technic:mv_generator"},
	},
})

minetest.register_craft({
	output = 'technic:solar_panel',
	recipe = {
		{'default:cobble', 'default:cobble',       'default:cobble'},
		{'default:cobble', 'gems:sapphire_gem', 	'default:cobble'},
		{'default:cobble', 'default:cobble',      	'default:cobble'},
	}
})

minetest.register_craft({
	output = "technic:solar_array_lv",
	recipe = {
		{"technic:solar_panel", "technic:solar_panel"},
	},
})

minetest.register_craft({
	output = "technic:solar_array_mv",
	recipe = {
		{"technic:solar_array_lv", "technic:solar_array_lv"},
	},
})

minetest.register_craft({
	output = "technic:solar_array_hv",
	recipe = {
		{"technic:solar_array_mv", "technic:solar_array_mv"},
	},
})

minetest.register_craft({
	output = 'technic:water_mill',
	recipe = {
		{'default:cobble', 'default:cobble',       'default:cobble'},
		{'default:cobble', 'gems:amethyst_gem', 	'default:cobble'},
		{'default:cobble', 'default:cobble',      	'default:cobble'},
	}
})

minetest.register_craft({
	output = "technic:hydro_turbine",
	recipe = {
		{"technic:water_mill", "technic:water_mill"},
	},
})

minetest.register_craft({
	output = 'technic:power_monitor',
	recipe = {
		{'default:cobble', 	'default:cobble',       'default:cobble'},
		{'gems:sapphire_gem', 	'default:cobble', 		'gems:sapphire_gem'},
		{'default:cobble', 	'default:cobble',      	'default:cobble'},
	}
})

minetest.register_craft({
	output = 'technic:supply_converter',
	recipe = {
		{'default:cobble', 	'default:cobble',       'default:cobble'},
		{'gems:amethyst_gem', 	'default:cobble', 		'gems:amethyst_gem'},
		{'default:cobble', 	'default:cobble',      	'default:cobble'},
	}
})

minetest.register_craft({
	output = 'technic:switching_station',
	recipe = {
		{'default:cobble', 	'default:cobble',       'default:cobble'},
		{'gems:ruby_gem', 	'default:cobble', 		'gems:ruby_gem'},
		{'default:cobble', 	'default:cobble',      	'default:cobble'},
	}
})

minetest.register_craft({
	output = 'technic:quarry',
	recipe = {
		{'default:cobble', 	'default:cobble',       'default:cobble'},
		{'gems:emerald_gem', 	'default:cobble', 		'gems:emerald_gem'},
		{'default:cobble', 	'default:cobble',      	'default:cobble'},
	}
})

minetest.register_craft({
	output = 'technic:electric_furnace',
	recipe = {
		{'default:cobble', 	'default:cobble',       'default:cobble'},
		{'gems:ruby_gem', 	'default:cobble', 		'gems:sapphire_gem'},
		{'default:cobble', 	'default:cobble',      	'default:cobble'},
	}
})

minetest.register_craft({
	output = "technic:mv_electric_furnace",
	recipe = {
		{"technic:electric_furnace", "technic:electric_furnace"},
	},
})

minetest.register_craft({
	output = 'technic:lv_alloy_furnace',
	recipe = {
		{'default:cobble', 	'default:cobble',       'default:cobble'},
		{'gems:pearl_gem', 	'default:cobble', 		'gems:shadow_gem'},
		{'default:cobble', 	'default:cobble',      	'default:cobble'},
	}
})

minetest.register_craft({
	output = "technic:mv_alloy_furnace",
	recipe = {
		{"technic:lv_alloy_furnace", "technic:lv_alloy_furnace"},
	},
})

minetest.register_craft({
	output = "technic:lv_cable 6",
	recipe = {
		{"gems:pearl_gem", "default:mese_crystal", "gems:shadow_gem"}
	},
})

minetest.register_craft({
	output = "technic:mv_cable",
	recipe = {
		{"technic:lv_cable", "technic:lv_cable"},
	},
})

minetest.register_craft({
	output = "technic:hv_cable",
	recipe = {
		{"technic:mv_cable", "technic:mv_cable"},
	},
})

minetest.register_craft({
	output = "technic:lv_battery_box0",
	recipe = {
		{'', 	'technic:lv_cable',       ''},
		{'technic:lv_cable', 	'default:mese_crystal', 		'technic:lv_cable'},
		{'', 	'technic:lv_cable',      	''},
	},
})

minetest.register_craft({
	output = "technic:mv_battery_box0",
	recipe = {
		{'', 	'technic:mv_cable',       ''},
		{'technic:mv_cable', 	'technic:lv_battery_box0', 		'technic:mv_cable'},
		{'', 	'technic:mv_cable',      	''},
	},
})

minetest.register_craft({
	output = "technic:hv_battery_box0",
	recipe = {
		{'', 	'technic:hv_cable',       ''},
		{'technic:hv_cable', 	'technic:mv_battery_box0', 		'technic:hv_cable'},
		{'', 	'technic:hv_cable',      	''},
	},
})

minetest.register_craft({
	output = "technic:control_logic_unit",
	recipe = {
		{'', 	'gems:pearl_gem',       ''},
		{'gems:pearl_gem', 	'tutorial:titan', 		'gems:pearl_gem'},
		{'', 	'gems:pearl_gem',      	''},
	},
})

minetest.register_craft({
	output = "technic:battery",
	recipe = {
		{'', 	'gems:shadow_gem',       ''},
		{'gems:shadow_gem', 	'tutorial:titan', 		'gems:shadow_gem'},
		{'', 	'gems:shadow_gem',      	''},
	},
})

minetest.register_craft({
	output = 'technic:iron_chest 1',
	recipe = {
		{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
		{"default:steel_ingot",'default:chest',"default:steel_ingot"},
		{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
	}
})

minetest.register_craft({
	output = 'technic:iron_locked_chest 1',
	recipe = {
		{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
		{"default:steel_ingot",'default:chest_locked',"default:steel_ingot"},
		{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
	}
})