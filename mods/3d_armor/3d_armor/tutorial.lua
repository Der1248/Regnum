minetest.register_tool("3d_armor:boots", {
	description = "Boots\nBoots-lv.0",
	inventory_image = "3d_armor_inv_boots.png",
	groups = {armor_feet=0.1, armor_heal=0, armor_use=0, not_in_creative_inventory=1},
	wear = 0,
})
minetest.register_tool("3d_armor:chestplate", {
	description = "Chestplate\nChestplate-lv.0",
	inventory_image = "3d_armor_inv_chestplate.png",
	groups = {armor_torso=0.1, armor_heal=0, armor_use=0, not_in_creative_inventory=1},
	wear = 0,
})
minetest.register_tool("3d_armor:helmet", {
		description = "Helmet\nHelmet-lv.0",
		inventory_image = "3d_armor_inv_helmet.png",
		groups = {armor_head=0.1, armor_heal=0, armor_use=0, not_in_creative_inventory=1},
		wear = 0,
})
minetest.register_tool("3d_armor:leggings", {
	description = "Leggings\nLeggings-lv.0",
	inventory_image = "3d_armor_inv_leggings.png",
	groups = {armor_legs=0.1, armor_heal=0, armor_use=0, not_in_creative_inventory=1},
	wear = 0,
})
for i=1,20 do
    minetest.register_tool("3d_armor:boots_mega"..i, {
	    description = "Megaboots lv."..i.."\nBoots-lv."..i,
	    inventory_image = "3d_armor_inv_boots_mega"..i..".png",
	    groups = {armor_feet=i*0.1, armor_heal=0, armor_use=0, armor_fire=0.005*i, not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:chestplate_mega"..i, {
	    description = "Megachestplate lv."..i.."\nChestplate-lv."..i,
	    inventory_image = "3d_armor_inv_chestplate_mega"..i..".png",
	    groups = {armor_torso=i*0.1, armor_heal=0, armor_use=0, armor_fire=0.005*i, not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:leggings_mega"..i, {
	    description = "Megaleggings lv."..i.."\nLeggings-lv."..i,
	    inventory_image = "3d_armor_inv_leggings_mega"..i..".png",
	    groups = {armor_legs=i*0.1, armor_heal=0, armor_use=0,armor_fire=0.005*i, not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:helmet_mega"..i, {
		description = "Megahelmet lv."..i.."\nHelmet-lv."..i,
		inventory_image = "3d_armor_inv_helmet_mega"..i..".png",
		groups = {armor_head=i*0.1, armor_heal=0, armor_use=0,armor_fire=0.005*i, not_in_creative_inventory=1},
		wear = 0,
    })
end
for i=1,25 do
    minetest.register_tool("3d_armor:cloudboots_mega"..i, {
	    description = "Cloudboots lv."..i.."\nBoots-lv."..(i+20),
	    inventory_image = "3d_armor_inv_cloudboots_mega"..i..".png",
	    groups = {armor_feet=(20+i)*0.1, armor_heal=1, armor_use=0, armor_fire=0.005*(i+20), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:cloudchestplate_mega"..i, {
	    description = "Cloudchestplate lv."..i.."\nChestplate-lv."..(i+20),
	    inventory_image = "3d_armor_inv_cloudchestplate_mega"..i..".png",
	    groups = {armor_torso=(20+i)*0.1, armor_heal=1, armor_use=0, armor_fire=0.005*(i+20), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:cloudleggings_mega"..i, {
	    description = "Cloudleggings lv."..i.."\nLeggings-lv."..(i+20),
	    inventory_image = "3d_armor_inv_cloudleggings_mega"..i..".png",
	    groups = {armor_legs=(20+i)*0.1, armor_heal=1, armor_use=0,armor_fire=0.005*(i+20), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:cloudhelmet_mega"..i, {
		description = "Cloudhelmet lv."..i.."\nHelmet-lv."..(i+20),
		inventory_image = "3d_armor_inv_cloudhelmet_mega"..i..".png",
		groups = {armor_head=(20+i)*0.1, armor_heal=1, armor_use=0,armor_fire=0.005*(i+20), not_in_creative_inventory=1},
		wear = 0,
    })
end
for i=1,4 do
    minetest.register_tool("3d_armor:superboots"..i, {
	    description = "Superboots lv."..i.."\nBoots-lv."..(i+45),
	    inventory_image = "3d_armor_inv_superboots"..i..".png",
	    groups = {armor_feet=(45+i)*0.1, armor_heal=2, armor_use=0, armor_fire=0.005*(i+45), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:superchestplate"..i, {
	    description = "Superchestplate lv."..i.."\nChestplate-lv."..(i+45),
	    inventory_image = "3d_armor_inv_superchestplate"..i..".png",
	    groups = {armor_torso=(45+i)*0.1, armor_heal=2, armor_use=0, armor_fire=0.005*(i+45), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:superleggings"..i, {
	    description = "Superleggings lv."..i.."\nLeggings-lv."..(i+45),
	    inventory_image = "3d_armor_inv_superleggings"..i..".png",
	    groups = {armor_legs=(45+i)*0.1, armor_heal=2, armor_use=0,armor_fire=0.005*(i+45), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:superhelmet"..i, {
		description = "Superhelmet lv."..i.."\nHelmet-lv."..(i+45),
		inventory_image = "3d_armor_inv_superhelmet"..i..".png",
		groups = {armor_head=(45+i)*0.1, armor_heal=2, armor_use=0,armor_fire=0.005*(i+45), not_in_creative_inventory=1},
		wear = 0,
    })
end
for i=1,2 do
    minetest.register_tool("3d_armor:uraniumboots"..i, {
	    description = "Uraniumboots lv."..i.."\nBoots-lv."..(i+49),
	    inventory_image = "3d_armor_inv_uraniumboots"..i..".png",
	    groups = {armor_feet=(49+i)*0.1, armor_heal=3, armor_use=0, armor_fire=0.005*(i+49), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:uraniumchestplate"..i, {
	    description = "Uraniumchestplate lv."..i.."\nChestplate-lv."..(i+49),
	    inventory_image = "3d_armor_inv_uraniumchestplate"..i..".png",
	    groups = {armor_torso=(49+i)*0.1, armor_heal=3, armor_use=0, armor_fire=0.005*(i+49), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:uraniumleggings"..i, {
	    description = "Uraniumleggings lv."..i.."\nLeggings-lv."..(i+49),
	    inventory_image = "3d_armor_inv_uraniumleggings"..i..".png",
	    groups = {armor_legs=(49+i)*0.1, armor_heal=3, armor_use=0,armor_fire=0.005*(i+49), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:uraniumhelmet"..i, {
		description = "Uraniumhelmet lv."..i.."\nHelmet-lv."..(i+49),
		inventory_image = "3d_armor_inv_uraniumhelmet"..i..".png",
		groups = {armor_head=(49+i)*0.1, armor_heal=3, armor_use=0,armor_fire=0.005*(i+49), not_in_creative_inventory=1},
		wear = 0,
    })
end
for i=1,12 do
    minetest.register_tool("3d_armor:energyboots"..i, {
	    description = "Energyboots lv."..i.."\nBoots-lv."..(i+51),
	    inventory_image = "3d_armor_inv_energyboots"..i..".png",
	    groups = {armor_feet=(51+i)*0.1, armor_heal=4, armor_use=0, armor_fire=0.005*(i+51), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:energychestplate"..i, {
	    description = "Energychestplate lv."..i.."\nChestplate-lv."..(i+51),
	    inventory_image = "3d_armor_inv_energychestplate"..i..".png",
	    groups = {armor_torso=(51+i)*0.1, armor_heal=4, armor_use=0, armor_fire=0.005*(i+51), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:energyleggings"..i, {
	    description = "Energyleggings lv."..i.."\nLeggings-lv."..(i+51),
	    inventory_image = "3d_armor_inv_energyleggings"..i..".png",
	    groups = {armor_legs=(51+i)*0.1, armor_heal=4, armor_use=0,armor_fire=0.005*(i+51), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:energyhelmet"..i, {
		description = "Energyhelmet lv."..i.."\nHelmet-lv."..(i+51),
		inventory_image = "3d_armor_inv_energyhelmet"..i..".png",
		groups = {armor_head=(51+i)*0.1, armor_heal=4, armor_use=0,armor_fire=0.005*(i+51), not_in_creative_inventory=1},
		wear = 0,
    })
end
for i=1,7 do
    minetest.register_tool("3d_armor:superenergyboots"..i, {
	    description = "Superenergyboots lv."..i.."\nBoots-lv."..(i+63),
	    inventory_image = "3d_armor_inv_superenergyboots"..i..".png",
	    groups = {armor_feet=(63+i)*0.1, armor_heal=5, armor_use=0, armor_fire=0.005*(i+63), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:superenergychestplate"..i, {
	    description = "Superenergychestplate lv."..i.."\nChestplate-lv."..(i+63),
	    inventory_image = "3d_armor_inv_superenergychestplate"..i..".png",
	    groups = {armor_torso=(63+i)*0.1, armor_heal=5, armor_use=0, armor_fire=0.005*(i+63), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:superenergyleggings"..i, {
	    description = "Superenergyleggings lv."..i.."\nLeggings-lv."..(i+63),
	    inventory_image = "3d_armor_inv_superenergyleggings"..i..".png",
	    groups = {armor_legs=(63+i)*0.1, armor_heal=5, armor_use=0,armor_fire=0.005*(i+63), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:superenergyhelmet"..i, {
		description = "Superenergyhelmet lv."..i.."\nHelmet-lv."..(i+63),
		inventory_image = "3d_armor_inv_superenergyhelmet"..i..".png",
		groups = {armor_head=(63+i)*0.1, armor_heal=5, armor_use=0,armor_fire=0.005*(i+63), not_in_creative_inventory=1},
		wear = 0,
    })
end
for i=1,5 do
    minetest.register_tool("3d_armor:kristallboots"..i, {
	    description = "Crystalboots lv."..i.."\nBoots-lv."..(i+70),
	    inventory_image = "3d_armor_inv_kristallboots"..i..".png",
	    groups = {armor_feet=(70+i)*0.1, armor_heal=6, armor_use=0, armor_fire=0.005*(i+70), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:kristallchestplate"..i, {
	    description = "Crystalchestplate lv."..i.."\nChestplate-lv."..(i+70),
	    inventory_image = "3d_armor_inv_kristallchestplate"..i..".png",
	    groups = {armor_torso=(70+i)*0.1, armor_heal=6, armor_use=0, armor_fire=0.005*(i+70), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:kristallleggings"..i, {
	    description = "Crystalleggings lv."..i.."\nLeggings-lv."..(i+70),
	    inventory_image = "3d_armor_inv_kristallleggings"..i..".png",
	    groups = {armor_legs=(70+i)*0.1, armor_heal=6, armor_use=0,armor_fire=0.005*(i+70), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:kristallhelmet"..i, {
		description = "Crystalhelmet lv."..i.."\nHelmet-lv."..(i+70),
		inventory_image = "3d_armor_inv_kristallhelmet"..i..".png",
		groups = {armor_head=(70+i)*0.1, armor_heal=6, armor_use=0,armor_fire=0.005*(i+70), not_in_creative_inventory=1},
		wear = 0,
    })
end
for i=1,25 do
    minetest.register_tool("3d_armor:ultraboots"..i, {
	    description = "Ultraboots lv."..i.."\nBoots-lv."..(i+75),
	    inventory_image = "3d_armor_inv_ultraboots"..i..".png",
	    groups = {armor_feet=(75+i)*0.1, armor_heal=7, armor_use=0, armor_fire=0.005*(i+75), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:ultrachestplate"..i, {
	    description = "Ultrachestplate lv."..i.."\nChestplate-lv."..(i+75),
	    inventory_image = "3d_armor_inv_ultrachestplate"..i..".png",
	    groups = {armor_torso=(75+i)*0.1, armor_heal=7, armor_use=0, armor_fire=0.005*(i+75), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:ultraleggings"..i, {
	    description = "Ultraleggings lv."..i.."\nLeggings-lv."..(i+75),
	    inventory_image = "3d_armor_inv_ultraleggings"..i..".png",
	    groups = {armor_legs=(75+i)*0.1, armor_heal=7, armor_use=0,armor_fire=0.005*(i+75), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:ultrahelmet"..i, {
		description = "Ultrahelmet lv."..i.."\nHelmet-lv."..(i+75),
		inventory_image = "3d_armor_inv_ultrahelmet"..i..".png",
		groups = {armor_head=(75+i)*0.1, armor_heal=7, armor_use=0,armor_fire=0.005*(i+75), not_in_creative_inventory=1},
		wear = 0,
    })
end
minetest.register_tool("3d_armor:superultraboots", {
	description = "Superultraboots\nBoots-lv.101",
	inventory_image = "3d_armor_inv_superultraboots.png",
	groups = {armor_feet=10.1, armor_heal=8, armor_use=0,armor_fire=0.505, not_in_creative_inventory=1},
	wear = 0,
})
minetest.register_tool("3d_armor:superultrachestplate", {
	description = "Superultrachestplate\nChestplate-lv.101",
	inventory_image = "3d_armor_inv_superultrachestplate.png",
	groups = {armor_torso=10.1, armor_heal=8, armor_use=0, armor_fire=0.505, not_in_creative_inventory=1},
	wear = 0,
})
minetest.register_tool("3d_armor:superultrahelmet", {
	description = "Superultrahelmet\nHelmet-lv.101",
	inventory_image = "3d_armor_inv_superultrahelmet.png",
	groups = {armor_head=10.1, armor_heal=8, armor_use=0,armor_fire=0.505, not_in_creative_inventory=1},
	wear = 0,
})
minetest.register_tool("3d_armor:superultraleggings", {
	description = "Superultraleggings\nLeggings-lv.101",
	inventory_image = "3d_armor_inv_superultraleggings.png",
	groups = {armor_legs=10.1, armor_heal=8, armor_use=0,armor_fire=0.505, not_in_creative_inventory=1},
	wear = 0,
})
for i=1,4 do
    minetest.register_tool("3d_armor:arenaboots"..i, {
	    description = "Arenaboots lv."..i.."\nBoots-lv."..(i+101),
	    inventory_image = "3d_armor_inv_arenaboots"..i..".png",
	    groups = {armor_feet=(101+i)*0.1, armor_heal=9, armor_use=0, armor_fire=0.005*(i+101), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:arenachestplate"..i, {
	    description = "Arenachestplate lv."..i.."\nChestplate-lv."..(i+101),
	    inventory_image = "3d_armor_inv_arenachestplate"..i..".png",
	    groups = {armor_torso=(101+i)*0.1, armor_heal=9, armor_use=0, armor_fire=0.005*(i+101), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:arenaleggings"..i, {
	    description = "Arenaleggings lv."..i.."\nLeggings-lv."..(i+101),
	    inventory_image = "3d_armor_inv_arenaleggings"..i..".png",
	    groups = {armor_legs=(101+i)*0.1, armor_heal=9, armor_use=0,armor_fire=0.005*(i+101), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:arenahelmet"..i, {
		description = "Arenahelmet lv."..i.."\nHelmet-lv."..(i+101),
		inventory_image = "3d_armor_inv_arenahelmet"..i..".png",
		groups = {armor_head=(101+i)*0.1, armor_heal=9, armor_use=0,armor_fire=0.005*(i+101), not_in_creative_inventory=1},
		wear = 0,
    })
end
for i=1,10 do
    minetest.register_tool("3d_armor:titanboots"..i, {
	    description = "Titanboots lv."..i.."\nBoots-lv."..(i+105),
	    inventory_image = "3d_armor_inv_titanboots"..i..".png",
	    groups = {armor_feet=(105+i)*0.1, armor_heal=10, armor_use=0, armor_fire=0.005*(i+105), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:titanchestplate"..i, {
	    description = "Titanchestplate lv."..i.."\nChestplate-lv."..(i+105),
	    inventory_image = "3d_armor_inv_titanchestplate"..i..".png",
	    groups = {armor_torso=(105+i)*0.1, armor_heal=10, armor_use=0, armor_fire=0.005*(i+105), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:titanleggings"..i, {
	    description = "Titanleggings lv."..i.."\nLeggings-lv."..(i+105),
	    inventory_image = "3d_armor_inv_titanleggings"..i..".png",
	    groups = {armor_legs=(105+i)*0.1, armor_heal=10, armor_use=0,armor_fire=0.005*(i+105), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:titanhelmet"..i, {
		description = "Titanhelmet lv."..i.."\nHelmet-lv."..(i+105),
		inventory_image = "3d_armor_inv_titanhelmet"..i..".png",
		groups = {armor_head=(105+i)*0.1, armor_heal=10, armor_use=0,armor_fire=0.005*(i+105), not_in_creative_inventory=1},
		wear = 0,
    })
end
for i=1,6 do
    minetest.register_tool("3d_armor:legendenboots"..i, {
	    description = "Legendboots lv."..i.."\nBoots-lv."..(i+115),
	    inventory_image = "3d_armor_inv_legendenboots"..i..".png",
	    groups = {armor_feet=(115+i)*0.1, armor_heal=11, armor_use=0, armor_fire=0.005*(i+115), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:legendenchestplate"..i, {
	    description = "Legendchestplate lv."..i.."\nChestplate-lv."..(i+115),
	    inventory_image = "3d_armor_inv_legendenchestplate"..i..".png",
	    groups = {armor_torso=(115+i)*0.1, armor_heal=11, armor_use=0, armor_fire=0.005*(i+115), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:legendenleggings"..i, {
	    description = "Legendleggings lv."..i.."\nLeggings-lv."..(i+115),
	    inventory_image = "3d_armor_inv_legendenleggings"..i..".png",
	    groups = {armor_legs=(115+i)*0.1, armor_heal=11, armor_use=0,armor_fire=0.005*(i+115), not_in_creative_inventory=1},
	    wear = 0,
    })
    minetest.register_tool("3d_armor:legendenhelmet"..i, {
		description = "Legendhelmet lv."..i.."\nHelmet-lv."..(i+115),
		inventory_image = "3d_armor_inv_legendenhelmet"..i..".png",
		groups = {armor_head=(115+i)*0.1, armor_heal=11, armor_use=0,armor_fire=0.005*(i+115), not_in_creative_inventory=1},
		wear = 0,
    })
end




minetest.register_tool("3d_armor:superlegendenboots", {
	description = "Superlegendboots Mode 1 (no speed and no jump)\nBoots-lv.122",
	inventory_image = "3d_armor_inv_superlegendenboots.png^technic_tool_mode1.png",
	groups = {armor_feet=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenboots.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenboots2")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:superlegendenboots2", {
	description = "Superlegendboots Mode 2 (speed and no jump)\nBoots-lv.122",
	inventory_image = "3d_armor_inv_superlegendenboots.png^technic_tool_mode2.png",
	groups = {armor_feet=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenboots.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenboots3")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:superlegendenboots3", {
	description = "Superlegendboots Mode 3 (no speed and jump)\nBoots-lv.122",
	inventory_image = "3d_armor_inv_superlegendenboots.png^technic_tool_mode3.png",
	groups = {armor_feet=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, physics_jump=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenboots.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenboots4")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:superlegendenboots4", {
	description = "Superlegendboots Mode 4 (speed and jump)\nBoots-lv.122",
	inventory_image = "3d_armor_inv_superlegendenboots.png^technic_tool_mode4.png",
	groups = {armor_feet=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenboots.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenboots")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:superlegendenchestplate", {
	description = "Superlegendchestplate Mode 1 (no speed and no jump)\nChestplate-lv.122",
	inventory_image = "3d_armor_inv_superlegendenchestplate.png^technic_tool_mode1.png",
	groups = {armor_torso=12.2, armor_heal=12, armor_use=0, armor_fire=0.61, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenchestplate.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenchestplate2")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:superlegendenchestplate2", {
	description = "Superlegendchestplate Mode 2 (speed and no jump)\nChestplate-lv.122",
	inventory_image = "3d_armor_inv_superlegendenchestplate.png^technic_tool_mode2.png",
	groups = {armor_torso=12.2, armor_heal=12, armor_use=0, armor_fire=0.61, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenchestplate.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenchestplate3")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:superlegendenchestplate3", {
	description = "Superlegendchestplate Mode 3 (no speed and jump)\nChestplate-lv.122",
	inventory_image = "3d_armor_inv_superlegendenchestplate.png^technic_tool_mode3.png",
	groups = {armor_torso=12.2, armor_heal=12, armor_use=0, armor_fire=0.61, physics_jump=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenchestplate.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenchestplate4")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:superlegendenchestplate4", {
	description = "Superlegendchestplate Mode 4 (speed and jump)\nChestplate-lv.122",
	inventory_image = "3d_armor_inv_superlegendenchestplate.png^technic_tool_mode4.png",
	groups = {armor_torso=12.2, armor_heal=12, armor_use=0, armor_fire=0.61, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenchestplate.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenchestplate")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:superlegendenhelmet", {
	description = "Superlegendhelmet Mode 1 (no speed and no jump)\nHelmet-lv.122",
	inventory_image = "3d_armor_inv_superlegendenhelmet.png^technic_tool_mode1.png",
	groups = {armor_head=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenhelmet.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenhelmet2")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:superlegendenhelmet2", {
	description = "Superlegendhelmet Mode 2 (speed and no jump)\nHelmet-lv.122",
	inventory_image = "3d_armor_inv_superlegendenhelmet.png^technic_tool_mode2.png",
	groups = {armor_head=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenhelmet.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenhelmet3")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:superlegendenhelmet3", {
	description = "Superlegendhelmet Mode 3 (no speed and jump)\nHelmet-lv.122",
	inventory_image = "3d_armor_inv_superlegendenhelmet.png^technic_tool_mode3.png",
	groups = {armor_head=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, physics_jump=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenhelmet.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenhelmet4")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:superlegendenhelmet4", {
	description = "Superlegendhelmet Mode 4 (speed and jump)\nHelmet-lv.122",
	inventory_image = "3d_armor_inv_superlegendenhelmet.png^technic_tool_mode4.png",
	groups = {armor_head=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenhelmet.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenhelmet")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:superlegendenleggings", {
	description = "Superlegendleggings Mode 1 (no speed and no jump)\nLeggings-lv.122",
	inventory_image = "3d_armor_inv_superlegendenleggings.png^technic_tool_mode1.png",
	groups = {armor_legs=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenleggings.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenleggings2")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:superlegendenleggings2", {
	description = "Superlegendleggings Mode 2 (speed and no jump)\nLeggings-lv.122",
	inventory_image = "3d_armor_inv_superlegendenleggings.png^technic_tool_mode2.png",
	groups = {armor_legs=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenleggings.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenleggings3")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:superlegendenleggings3", {
	description = "Superlegendleggings Mode 3 (no speed and jump)\nLeggings-lv.122",
	inventory_image = "3d_armor_inv_superlegendenleggings.png^technic_tool_mode3.png",
	groups = {armor_legs=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, physics_jump=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenleggings.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenleggings4")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:superlegendenleggings4", {
	description = "Superlegendleggings Mode 4 (speed and jump)\nLeggings-lv.122",
	inventory_image = "3d_armor_inv_superlegendenleggings.png^technic_tool_mode4.png",
	groups = {armor_legs=12.2, armor_heal=12, armor_use=0,armor_fire=0.61, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_superlegendenleggings.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:superlegendenleggings")
        end
        return itemstack
    end,
})


minetest.register_tool("3d_armor:regnumboots", {
	description = "Regnumboots Mode 1 (no speed and no jump)\nBoots-lv.MAX",
	inventory_image = "3d_armor_inv_regnumboots.png^technic_tool_mode1.png",
	groups = {armor_feet=15.0, armor_heal=13, armor_use=0,armor_fire=1, armor_water=0.2},
	wear = 0,
    wield_image = "3d_armor_inv_regnumboots.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumboots2")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:regnumboots2", {
	description = "Regnumboots Mode 2 (speed and no jump)\nBoots-lv.MAX",
	inventory_image = "3d_armor_inv_regnumboots.png^technic_tool_mode2.png",
	groups = {armor_feet=15.0, armor_heal=13, armor_use=0,armor_fire=1, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_regnumboots.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumboots3")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:regnumboots3", {
	description = "Regnumboots Mode 3 (no speed and jump)\nBoots-lv.MAX",
	inventory_image = "3d_armor_inv_regnumboots.png^technic_tool_mode3.png",
	groups = {armor_feet=15.0, armor_heal=13, armor_use=0,armor_fire=1, physics_jump=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_regnumboots.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumboots4")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:regnumboots4", {
	description = "Regnumboots Mode 4 (speed and jump)\nBoots-lv.MAX",
	inventory_image = "3d_armor_inv_regnumboots.png^technic_tool_mode4.png",
	groups = {armor_feet=15.0, armor_heal=13, armor_use=0,armor_fire=1, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_regnumboots.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumboots")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:regnumchestplate", {
	description = "Regnumchestplate Mode 1 (no speed and no jump)\nChestplate-lv.MAX",
	inventory_image = "3d_armor_inv_regnumchestplate.png^technic_tool_mode1.png",
	groups = {armor_torso=15.0, armor_heal=13, armor_use=0, armor_fire=1, armor_water=0.2},
	wear = 0,
    wield_image = "3d_armor_inv_regnumchestplate.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumchestplate2")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:regnumchestplate2", {
	description = "Regnumchestplate Mode 2 (speed and no jump)\nChestplate-lv.MAX",
	inventory_image = "3d_armor_inv_regnumchestplate.png^technic_tool_mode2.png",
	groups = {armor_torso=15.0, armor_heal=13, armor_use=0, armor_fire=1, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_regnumchestplate.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumchestplate3")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:regnumchestplate3", {
	description = "Regnumchestplate Mode 3 (no speed and jump)\nChestplate-lv.MAX",
	inventory_image = "3d_armor_inv_regnumchestplate.png^technic_tool_mode3.png",
	groups = {armor_torso=15.0, armor_heal=13, armor_use=0, armor_fire=1, physics_jump=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_regnumchestplate.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumchestplate4")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:regnumchestplate4", {
	description = "Regnumchestplate Mode 4 (speed and jump)\nChestplate-lv.MAX",
	inventory_image = "3d_armor_inv_regnumchestplate.png^technic_tool_mode4.png",
	groups = {armor_torso=15.0, armor_heal=13, armor_use=0, armor_fire=1, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_regnumchestplate.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumchestplate")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:regnumhelmet", {
	description = "Regnumhelmet Mode 1 (no speed and no jump)\nHelmet-lv.MAX",
	inventory_image = "3d_armor_inv_regnumhelmet.png^technic_tool_mode1.png",
	groups = {armor_head=15.0, armor_heal=13, armor_use=0,armor_fire=1, armor_water=0.2},
	wear = 0,
    wield_image = "3d_armor_inv_regnumhelmet.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumhelmet2")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:regnumhelmet2", {
	description = "Regnumhelmet Mode 2 (speed and no jump)\nHelmet-lv.MAX",
	inventory_image = "3d_armor_inv_regnumhelmet.png^technic_tool_mode2.png",
	groups = {armor_head=15.0, armor_heal=13, armor_use=0,armor_fire=1, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_regnumhelmet.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumhelmet3")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:regnumhelmet3", {
	description = "Regnumhelmet Mode 3 (no speed and jump)\nHelmet-lv.MAX",
	inventory_image = "3d_armor_inv_regnumhelmet.png^technic_tool_mode3.png",
	groups = {armor_head=15.0, armor_heal=13, armor_use=0,armor_fire=1, physics_jump=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_regnumhelmet.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumhelmet4")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:regnumhelmet4", {
	description = "Regnumhelmet Mode 4 (speed and jump)\nHelmet-lv.MAX",
	inventory_image = "3d_armor_inv_regnumhelmet.png^technic_tool_mode4.png",
	groups = {armor_head=15.0, armor_heal=13, armor_use=0,armor_fire=1, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_regnumhelmet.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumhelmet")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:regnumleggings", {
	description = "Regnumleggings Mode 1 (no speed and no jump)\nLeggings-lv.MAX",
	inventory_image = "3d_armor_inv_regnumleggings.png^technic_tool_mode1.png",
	groups = {armor_legs=15.0, armor_heal=13, armor_use=0,armor_fire=1, armor_water=0.2},
	wear = 0,
    wield_image = "3d_armor_inv_regnumleggings.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumleggings2")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:regnumleggings2", {
	description = "Regnumleggings Mode 2 (speed and no jump)\nLeggings-lv.MAX",
	inventory_image = "3d_armor_inv_regnumleggings.png^technic_tool_mode2.png",
	groups = {armor_legs=15.0, armor_heal=13, armor_use=0,armor_fire=1, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_regnumleggings.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumleggings3")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:regnumleggings3", {
	description = "Regnumleggings Mode 3 (no speed and jump)\nLeggings-lv.MAX",
	inventory_image = "3d_armor_inv_regnumleggings.png^technic_tool_mode3.png",
	groups = {armor_legs=15.0, armor_heal=13, armor_use=0,armor_fire=1, physics_jump=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_regnumleggings.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumleggings4")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:regnumleggings4", {
	description = "Regnumleggings Mode 4 (speed and jump)\nLeggings-lv.MAX",
	inventory_image = "3d_armor_inv_regnumleggings.png^technic_tool_mode4.png",
	groups = {armor_legs=15.0, armor_heal=13, armor_use=0,armor_fire=1, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    wield_image = "3d_armor_inv_regnumleggings.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:regnumleggings")
        end
        return itemstack
    end,
})