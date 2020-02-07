-- support for i18n
local S = armor_i18n.gettext

minetest.register_tool("3d_armor:helmet_admin", {
	description = "Admin Helmet Mode 1 (no speed and no jump)",
	inventory_image = "3d_armor_inv_helmet_admin.png^technic_tool_mode1.png",
    wield_image = "3d_armor_inv_helmet_admin.png",
	groups = {armor_head=20, armor_heal=20, armor_use=0, armor_fire=1, armor_water=0.2},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:helmet_admin2")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:helmet_admin2", {
	description = "Admin Helmet Mode 2 (speed and no jump)",
	inventory_image = "3d_armor_inv_helmet_admin.png^technic_tool_mode2.png",
    wield_image = "3d_armor_inv_helmet_admin.png",
	groups = {armor_head=20, armor_heal=20, armor_use=0, armor_fire=1, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:helmet_admin3")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:helmet_admin3", {
	description = "Admin Helmet Mode 3 (no speed and jump)",
	inventory_image = "3d_armor_inv_helmet_admin.png^technic_tool_mode3.png",
    wield_image = "3d_armor_inv_helmet_admin.png",
	groups = {armor_head=20, armor_heal=20, armor_use=0, armor_fire=1, physics_jump=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:helmet_admin4")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:helmet_admin4", {
	description = "Admin Helmet Mode 4 (speed and jump)",
	inventory_image = "3d_armor_inv_helmet_admin.png^technic_tool_mode4.png",
    wield_image = "3d_armor_inv_helmet_admin.png",
	groups = {armor_head=20, armor_heal=20, armor_use=0, armor_fire=1, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:helmet_admin")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:chestplate_admin", {
	description = "Admin Chestplate Mode 1 (no speed and no jump)",
	inventory_image = "3d_armor_inv_chestplate_admin.png^technic_tool_mode1.png",
    wield_image = "3d_armor_inv_chestplate_admin.png",
	groups = {armor_torso=20, armor_heal=20, armor_use=0, armor_fire=1, armor_water=0.2},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:chestplate_admin2")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:chestplate_admin2", {
	description = "Admin Chestplate Mode 2 (speed and no jump)",
	inventory_image = "3d_armor_inv_chestplate_admin.png^technic_tool_mode2.png",
    wield_image = "3d_armor_inv_chestplate_admin.png",
	groups = {armor_torso=20, armor_heal=20, armor_use=0, armor_fire=1, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:chestplate_admin3")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:chestplate_admin3", {
	description = "Admin Chestplate Mode 3 (no speed and jump)",
	inventory_image = "3d_armor_inv_chestplate_admin.png^technic_tool_mode3.png",
    wield_image = "3d_armor_inv_chestplate_admin.png",
	groups = {armor_torso=20, armor_heal=20, armor_use=0, armor_fire=1, physics_jump=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:chestplate_admin4")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:chestplate_admin4", {
	description = "Admin Chestplate Mode 4 (speed and jump)",
	inventory_image = "3d_armor_inv_chestplate_admin.png^technic_tool_mode4.png",
    wield_image = "3d_armor_inv_chestplate_admin.png",
	groups = {armor_torso=20, armor_heal=20, armor_use=0, armor_fire=1, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:chestplate_admin")
        end
        return itemstack
    end,
})
minetest.register_tool("3d_armor:leggings_admin", {
	description = "Admin Leggings Mode 1 (no speed and no jump)",
    wield_image = "3d_armor_inv_leggings_admin.png",
	inventory_image = "3d_armor_inv_leggings_admin.png^technic_tool_mode1.png",
	groups = {armor_legs=20, armor_heal=20, armor_use=0, armor_fire=1, armor_water=0.2},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:leggings_admin2")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:leggings_admin2", {
	description = "Admin Leggings Mode 2 (speed and no jump)",
    wield_image = "3d_armor_inv_leggings_admin.png",
	inventory_image = "3d_armor_inv_leggings_admin.png^technic_tool_mode2.png",
	groups = {armor_legs=20, armor_heal=20, armor_use=0, armor_fire=1, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:leggings_admin3")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:leggings_admin3", {
	description = "Admin Leggings Mode 3 (no speed and jump)",
    wield_image = "3d_armor_inv_leggings_admin.png",
	inventory_image = "3d_armor_inv_leggings_admin.png^technic_tool_mode3.png",
	groups = {armor_legs=20, armor_heal=20, armor_use=0, armor_fire=1, physics_jump=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:leggings_admin4")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:leggings_admin4", {
	description = "Admin Leggings Mode 4 (speed and jump)",
	inventory_image = "3d_armor_inv_leggings_admin.png^technic_tool_mode4.png",
    wield_image = "3d_armor_inv_leggings_admin.png",
	groups = {armor_legs=20, armor_heal=20, armor_use=0, armor_fire=1, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:leggings_admin")
        end
        return itemstack
    end,
})



minetest.register_tool("3d_armor:boots_admin", {
	description = "Admin Boots Mode 1 (no speed and no jump)",
	inventory_image = "3d_armor_inv_boots_admin.png^technic_tool_mode1.png",
    wield_image = "3d_armor_inv_boots_admin.png",
	groups = {armor_feet=20, armor_heal=20, armor_use=0, armor_fire=1, armor_water=0.2},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:boots_admin2")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:boots_admin2", {
	description = "Admin Boots Mode 2 (speed and no jump)",
	inventory_image = "3d_armor_inv_boots_admin.png^technic_tool_mode2.png",
    wield_image = "3d_armor_inv_boots_admin.png",
	groups = {armor_feet=20, armor_heal=20, armor_use=0, armor_fire=1, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:boots_admin3")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:boots_admin3", {
	description = "Admin Boots Mode 3 (no speed and jump)",
	inventory_image = "3d_armor_inv_boots_admin.png^technic_tool_mode3.png",
    wield_image = "3d_armor_inv_boots_admin.png",
	groups = {armor_feet=20, armor_heal=20, armor_use=0, armor_fire=1, physics_jump=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:boots_admin4")
        end
        return itemstack
    end,
})

minetest.register_tool("3d_armor:boots_admin4", {
	description = "Admin Boots Mode 4 (speed and jump)",
	inventory_image = "3d_armor_inv_boots_admin.png^technic_tool_mode4.png",
    wield_image = "3d_armor_inv_boots_admin.png",
	groups = {armor_feet=20, armor_heal=20, armor_use=0, armor_fire=1, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, not_in_creative_inventory=1},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("3d_armor:boots_admin")
        end
        return itemstack
    end,
})
