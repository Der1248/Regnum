-- support for i18n
dofile(minetest.get_modpath("shields").."/tutorial.lua")
dofile(minetest.get_modpath("shields").."/tutorial_craft.lua")
local S = armor_i18n.gettext

local disable_sounds = minetest.settings:get_bool("shields_disable_sounds")
local use_moreores = minetest.get_modpath("moreores")
local function play_sound_effect(player, name)
	if not disable_sounds and player then
		local pos = player:getpos()
		if pos then
			minetest.sound_play(name, {
				pos = pos,
				max_hear_distance = 10,
				gain = 0.5,
			})
		end
	end
end

if minetest.global_exists("armor") and armor.elements then
	table.insert(armor.elements, "shield")
	local mult = armor.config.level_multiplier or 1
	armor.config.level_multiplier = mult * 0.9
end

-- Regisiter Shields
minetest.register_tool("shields:shield_admin", {
	description = "Admin Shield Mode 1 (no speed and no jump)",
	inventory_image = "shields_inv_shield_admin.png^technic_tool_mode1.png",
    wield_image = "shields_inv_shield_admin.png",
	groups = {armor_shield=20, armor_heal=25, armor_use=0, armor_fire=1, armor_water=0.2},
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
	groups = {armor_shield=20, armor_heal=25, armor_use=0, armor_fire=1, physics_speed=0.25, armor_water=0.2},
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
	groups = {armor_shield=20, armor_heal=25, armor_use=0, armor_fire=1, physics_jump=0.25, armor_water=0.2},
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
	groups = {armor_shield=20, armor_heal=25, armor_use=0, armor_fire=1, physics_jump=0.25, physics_speed=0.25, armor_water=0.2},
	wear = 0,
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("shields:shield_admin")
        end
        return itemstack
    end,
})
