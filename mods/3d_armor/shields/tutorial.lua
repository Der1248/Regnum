minetest.register_tool("shields:shield", {
	description = "Shield\nShield-lv.0",
	inventory_image = "shields_inv_shield.png",
	groups = {armor_shield=1, armor_heal=0, armor_use=0, not_in_creative_inventory=1},
	wear = 0,
})
for i=1,20 do
    minetest.register_tool("shields:shield_mega"..i, {
	    description = "Megashield lv."..i.."\nShield-lv."..i,
	    inventory_image = "shields_inv_shield_mega"..i..".png",
	    groups = {armor_shield=i*0.1, armor_heal=0, armor_use=0, armor_fire=0.005*i, not_in_creative_inventory=1},
	    wear = 0,
    })
end
for i=1,25 do
    minetest.register_tool("shields:cloudshield_mega"..i, {
	    description = "Cloudshield lv."..i.."\nShield-lv."..(i+20),
	    inventory_image = "shields_inv_cloudshield_mega"..i..".png",
	    groups = {armor_shield=(20+i)*0.1, armor_heal=1, armor_use=0, armor_fire=0.005*(i+20), not_in_creative_inventory=1},
	    wear = 0,
    })
end
for i=1,4 do
    minetest.register_tool("shields:supershield"..i, {
	    description = "Supershield lv."..i.."\nShield-lv."..(i+45),
	    inventory_image = "shields_inv_supershield"..i..".png",
	    groups = {armor_shield=(45+i)*0.1, armor_heal=2, armor_use=0, armor_fire=0.005*(i+45), not_in_creative_inventory=1},
	    wear = 0,
    })
end
for i=1,2 do
    minetest.register_tool("shields:uraniumshield"..i, {
	    description = "Uraniumshield lv."..i.."\nShield-lv."..(i+49),
	    inventory_image = "shields_inv_uraniumshield"..i..".png",
	    groups = {armor_shield=(49+i)*0.1, armor_heal=3, armor_use=0, armor_fire=0.005*(i+49), not_in_creative_inventory=1},
	    wear = 0,
    })
end
for i=1,12 do
    minetest.register_tool("shields:energyshield"..i, {
	    description = "Energyshield lv."..i.."\nShield-lv."..(i+51),
	    inventory_image = "shields_inv_energyshield"..i..".png",
	    groups = {armor_shield=(51+i)*0.1, armor_heal=4, armor_use=0, armor_fire=0.005*(i+51), not_in_creative_inventory=1},
	    wear = 0,
    })
end
for i=1,7 do
    minetest.register_tool("shields:superenergyshield"..i, {
	    description = "Superenergyshield lv."..i.."\nShield-lv."..(i+63),
	    inventory_image = "shields_inv_superenergyshield"..i..".png",
	    groups = {armor_shield=(63+i)*0.1, armor_heal=5, armor_use=0, armor_fire=0.005*(i+63), not_in_creative_inventory=1},
	    wear = 0,
    })
end
for i=1,5 do
    minetest.register_tool("shields:kristallshield"..i, {
	    description = "Crystalshield lv."..i.."\nShield-lv."..(i+70),
	    inventory_image = "shields_inv_kristallshield"..i..".png",
	    groups = {armor_shield=(70+i)*0.1, armor_heal=6, armor_use=0, armor_fire=0.005*(i+70), not_in_creative_inventory=1},
	    wear = 0,
    })
end
for i=1,25 do
    minetest.register_tool("shields:ultrashield"..i, {
	    description = "Ultrashield lv."..i.."\nShield-lv."..(i+75),
	    inventory_image = "shields_inv_ultrashield"..i..".png",
	    groups = {armor_shield=(75+i)*0.1, armor_heal=7, armor_use=0, armor_fire=0.005*(i+75), not_in_creative_inventory=1},
	    wear = 0,
    })
end
minetest.register_tool("shields:superultrashield", {
	description = "Superultrashield\nShield-lv.101",
	inventory_image = "shields_inv_superultrashield.png",
	groups = {armor_shield=10.1, armor_heal=8, armor_use=0,armor_fire=0.505, not_in_creative_inventory=1},
	wear = 0,
})
for i=1,4 do
    minetest.register_tool("shields:arenashield"..i, {
	    description = "Arenashield lv."..i.."\nShield-lv."..(i+101),
	    inventory_image = "shields_inv_arenashield"..i..".png",
	    groups = {armor_shield=(101+i)*0.1, armor_heal=9, armor_use=0, armor_fire=0.005*(i+101), not_in_creative_inventory=1},
	    wear = 0,
    })
end
for i=1,10 do
    minetest.register_tool("shields:titanshield"..i, {
	    description = "Titanshield lv."..i.."\nShield-lv."..(i+105),
	    inventory_image = "shields_inv_titanshield"..i..".png",
	    groups = {armor_shield=(105+i)*0.1, armor_heal=10, armor_use=0, armor_fire=0.005*(i+105), not_in_creative_inventory=1},
	    wear = 0,
    })
end
for i=1,6 do
    minetest.register_tool("shields:legendenshield"..i, {
	    description = "Legendshield lv."..i.."\nShield-lv."..(i+115),
	    inventory_image = "shields_inv_legendenshield"..i..".png",
	    groups = {armor_shield=(115+i)*0.1, armor_heal=11, armor_use=0, armor_fire=0.005*(i+115), not_in_creative_inventory=1},
	    wear = 0,
    })
end
minetest.register_tool("shields:superlegendenshield", {
	description = "Superlegendshield Mode 1 (no speed and no jump)\nShield-lv.122",
	inventory_image = "shields_inv_superlegendenshield.png^technic_tool_mode1.png",
	groups = {armor_shield=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "shields_inv_superlegendenshield.png",
})
minetest.register_tool("shields:superlegendenshield2", {
	description = "Superlegendshield Mode 2 (speed and no jump)\nShield-lv.122",
	inventory_image = "shields_inv_superlegendenshield.png^technic_tool_mode2.png",
	groups = {armor_shield=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "shields_inv_superlegendenshield.png",
})
minetest.register_tool("shields:superlegendenshield3", {
	description = "Superlegendshield Mode 3 (no speed and jump)\nShield-lv.122",
	inventory_image = "shields_inv_superlegendenshield.png^technic_tool_mode3.png",
	groups = {armor_shield=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, physics_jump=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "shields_inv_superlegendenshield.png",
})
minetest.register_tool("shields:superlegendenshield4", {
	description = "Superlegendshield Mode 4 (speed and jump)\nShield-lv.122",
	inventory_image = "shields_inv_superlegendenshield.png^technic_tool_mode4.png",
	groups = {armor_shield=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "shields_inv_superlegendenshield.png",
})

minetest.register_tool("shields:regnumshield", {
	description = "Regnumshield Mode 1 (no speed and no jump)\nShield-lv.MAX",
	inventory_image = "shields_inv_regnumshield.png^technic_tool_mode1.png",
	groups = {armor_shield=15.0, armor_heal=13, armor_use=0,armor_fire=1, armor_water=0.2},
	wear = 0,
    wield_image = "shields_inv_regnumshield.png",
})
minetest.register_tool("shields:regnumshield2", {
	description = "Regnumshield Mode 2 (speed and no jump)\nShield-lv.MAX",
	inventory_image = "shields_inv_regnumshield.png^technic_tool_mode2.png",
	groups = {armor_shield=15.0, armor_heal=13, armor_use=0,armor_fire=1, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "shields_inv_regnumshield.png",
})
minetest.register_tool("shields:regnumshield3", {
	description = "Regnumshield Mode 3 (no speed and jump)\nShield-lv.MAX",
	inventory_image = "shields_inv_regnumshield.png^technic_tool_mode3.png",
	groups = {armor_shield=15.0, armor_heal=13, armor_use=0,armor_fire=1, physics_jump=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "shields_inv_regnumshield.png",
})
minetest.register_tool("shields:regnumshield4", {
	description = "Regnumshield Mode 4 (speed and jump)\nShield-lv.MAX",
	inventory_image = "shields_inv_regnumshield.png^technic_tool_mode4.png",
	groups = {armor_shield=15.0, armor_heal=13, armor_use=0,armor_fire=1, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "shields_inv_regnumshield.png",
})