local use_moreores = minetest.get_modpath("moreores")
dofile(minetest.get_modpath("shields").."/tutorial.lua")
-- Regisiter Shields

minetest.register_tool("shields:shield_admin", {
	description = "Admin Shield Mode 1 (no speed and no jump)",
	inventory_image = "shields_inv_shield_admin.png^technic_tool_mode1.png",
    wield_image = "shields_inv_shield_admin.png",
	groups = {armor_shield=5000, armor_heal=2500, armor_use=0, armor_fire=2000},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("shields:shield_admin2")
        end
        return itemstack
    end,
})

minetest.register_tool("shields:shield_admin2", {
	description = "Admin Shield Mode 2 (speed and no jump)",
	inventory_image = "shields_inv_shield_admin.png^technic_tool_mode2.png",
    wield_image = "shields_inv_shield_admin.png",
	groups = {armor_shield=5000, armor_heal=2500, armor_use=0, armor_fire=2000, physics_speed=0.25},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("shields:shield_admin3")
        end
        return itemstack
    end,
})

minetest.register_tool("shields:shield_admin3", {
	description = "Admin Shield Mode 3 (no speed and jump)",
	inventory_image = "shields_inv_shield_admin.png^technic_tool_mode3.png",
    wield_image = "shields_inv_shield_admin.png",
	groups = {armor_shield=5000, armor_heal=2500, armor_use=0, armor_fire=2000, physics_jump=0.25},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("shields:shield_admin4")
        end
        return itemstack
    end,
})

minetest.register_tool("shields:shield_admin4", {
	description = "Admin Shield Mode 4 (speed and jump)",
	inventory_image = "shields_inv_shield_admin.png^technic_tool_mode4.png",
    wield_image = "shields_inv_shield_admin.png",
	groups = {armor_shield=5000, armor_heal=2500, armor_use=0, armor_fire=2000, physics_jump=0.25, physics_speed=0.25},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("shields:shield_admin")
        end
        return itemstack
    end,
})









if ARMOR_MATERIALS.wood then
	minetest.register_tool("shields:shield_wood", {
		description = "Wooden Shield",
		inventory_image = "shields_inv_shield_wood.png",
		groups = {armor_shield=10, armor_heal=0, armor_use=2000},
		wear = 0,
	})
	minetest.register_tool("shields:shield_enhanced_wood", {
		description = "Enhanced Wood Shield",
		inventory_image = "shields_inv_shield_enhanced_wood.png",
		groups = {armor_shield=15, armor_heal=1, armor_use=200},
		wear = 0,
	})
	minetest.register_craft({
		output = "shields:shield_enhanced_wood",
		recipe = {
			{"default:steel_ingot"},
			{"shields:shield_wood"},
			{"default:steel_ingot"},
		},
	})
end

if ARMOR_MATERIALS.cactus then
	minetest.register_tool("shields:shield_cactus", {
		description = "Cactus Shield",
		inventory_image = "shields_inv_shield_cactus.png",
		groups = {armor_shield=7, armor_heal=2, armor_use=200},
		wear = 0,
	})
	minetest.register_tool("shields:shield_enhanced_cactus", {
		description = "Enhanced Cactus Shield",
		inventory_image = "shields_inv_shield_enhanced_cactus.png",
		groups = {armor_shield=20, armor_heal=4, armor_use=100},
		wear = 0,
	})
	minetest.register_craft({
		output = "shields:shield_enhanced_cactus",
		recipe = {
			{"default:steel_ingot"},
			{"shields:shield_cactus"},
			{"default:steel_ingot"},
		},
	})
end

if ARMOR_MATERIALS.steel then
	minetest.register_tool("shields:shield_steel", {
		description = "Steel Shield",
		inventory_image = "shields_inv_shield_steel.png",
		groups = {armor_shield=20, armor_heal=4, armor_use=100},
		wear = 0,
	})
end

if ARMOR_MATERIALS.bronze then
	minetest.register_tool("shields:shield_bronze", {
		description = "Bronze Shield",
		inventory_image = "shields_inv_shield_bronze.png",
		groups = {armor_shield=40, armor_heal=8, armor_use=75},
		wear = 0,
	})
end

if ARMOR_MATERIALS.diamond then
	minetest.register_tool("shields:shield_diamond", {
		description = "Diamond Shield",
		inventory_image = "shields_inv_shield_diamond.png",
		groups = {armor_shield=20, armor_heal=2, armor_use=200},
		wear = 0,
	})
end

if ARMOR_MATERIALS.gold then
	minetest.register_tool("shields:shield_gold", {
		description = "Gold Shield",
		inventory_image = "shields_inv_shield_gold.png",
		groups = {armor_shield=40, armor_heal=8, armor_use=50},
		wear = 0,
	})
end

if ARMOR_MATERIALS.mithril then
	minetest.register_tool("shields:shield_mithril", {
		description = "Mithril Shield",
		inventory_image = "shields_inv_shield_mithril.png",
		groups = {armor_shield=80, armor_heal=16, armor_use=25},
		wear = 0,
	})
end

if ARMOR_MATERIALS.crystal then
	minetest.register_tool("shields:shield_crystal", {
		description = "Crystal Shield",
		inventory_image = "shields_inv_shield_crystal.png",
		groups = {armor_shield=200, armor_heal=100, armor_use=0, armor_fire=1},
		wear = 0,
	})
end

for k, v in pairs(ARMOR_MATERIALS) do
	minetest.register_craft({
		output = "shields:shield_"..k,
		recipe = {
			{v, v, v},
			{v, v, v},
			{"", v, ""},
		},
	})
end

minetest.after(0, function()
	table.insert(armor.elements, "shield")
end)

