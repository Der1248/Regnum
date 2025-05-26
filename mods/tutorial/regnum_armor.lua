local armor_array = {
	{":[1]", "[2]\n[2]-Lv.0", "_inv_[1].png", 1},
	{":[1]_mega[3]", "Mega [2] Lv.[3]\n[2]-Lv.[4]", "_inv_[1]_mega[3].png", 20},
	{":cloud[1]_mega[3]", "Cloud [2] Lv.[3]\n[2]-Lv.[4]", "_inv_cloud[1]_mega[3].png", 25},
	{":super[1][3]", "Super [2] Lv.[3]\n[2]-Lv.[4]", "_inv_super[1][3].png", 4},
	{":uranium[1][3]", "Uranium [2] Lv.[3]\n[2]-Lv.[4]", "_inv_uranium[1][3].png", 2},
	{":energy[1][3]", "Energy [2] Lv.[3]\n[2]-Lv.[4]", "_inv_energy[1][3].png", 12},
	{":superenergy[1][3]", "Super Energy [2] Lv.[3]\n[2]-Lv.[4]", "_inv_superenergy[1][3].png", 7},
	{":kristall[1][3]", "Crystal [2] Lv.[3]\n[2]-Lv.[4]", "_inv_kristall[1][3].png", 5},
	{":ultra[1][3]", "Ultra [2] Lv.[3]\n[2]-Lv.[4]", "_inv_ultra[1][3].png", 25},
	{":superultra[1]", "Super Ultra [2]\n[2]-Lv.[4]", "_inv_superultra[1].png", 1},
	{":arena[1][3]", "Arena [2] Lv.[3]\n[2]-Lv.[4]", "_inv_arena[1][3].png", 4},
	{":titan[1][3]", "Titan [2] Lv.[3]\n[2]-Lv.[4]", "_inv_titan[1][3].png", 10},
	{":legenden[1][3]", "Legendary [2] Lv.[3]\n[2]-Lv.[4]", "_inv_legenden[1][3].png", 6},
	{":superlegenden[1]", "Super Legendary [2]\n[2]-Lv.[4]", "_inv_superlegenden[1].png", 1},
	{":regnum[1]", "Regnum [2]\n[2]-Lv.MAX", "_inv_regnum[1].png", 1},
}

local armor_items = {"boots", "chestplate", "helmet", "leggings", "shield"}

local armor_items2 = {"Boots", "Chestplate", "Helmet", "Leggings", "Shield"}
local a1 = 0.5
local a2 = 0.7
local y_max1 = 85
local y_max2 = 75
local x_max1 = 124
local x_max2 = 14

local level = -1
for i = 1, #armor_array do
	effect2 = 2/5 * y_max2 * ((i-1)^a2) / (x_max2^a2 + (i-1)^a2)
	effect2 = math.floor(effect2 * 100 + 0.5) / 100
	for j = 1, armor_array[i][4] do
		for k = 1, #armor_items do
			effect = 2/5 * y_max1 * ((level+j+1)^a1) / (x_max1^a1 + (level+j+1)^a1)
			effect = math.floor(effect * 100 + 0.5) / 100
			local string1 = string.gsub(string.gsub(armor_array[i][1], "%[1]", armor_items[k], 1), "%[3]", ""..j, 1)
			local string2 = string.gsub(string.gsub(string.gsub(string.gsub(armor_array[i][2], "%[1]", armor_items[k], 1), "%[2]", armor_items2[k]), "%[4]",""..(level+j) , 1), "%[3]",""..j , 1)
			local string3 = string.gsub(string.gsub(armor_array[i][3], "%[1]", armor_items[k], 1), "%[3]", ""..j, 1)
			local group = {}
			local pref = "3d_armor"
			if k == 1 then
				group = {armor_feet=effect, armor_heal=effect2, armor_use=0, not_in_creative_inventory=1}
			elseif k == 2 then
				group = {armor_torso=effect, armor_heal=effect2, armor_use=0, not_in_creative_inventory=1}
			elseif k == 3 then
				group = {armor_head=effect, armor_heal=effect2, armor_use=0, not_in_creative_inventory=1}
			elseif k == 4 then
				group = {armor_legs=effect, armor_heal=effect2, armor_use=0, not_in_creative_inventory=1}
			elseif k == 5 then
				group = {armor_shield=effect, armor_heal=effect2, armor_use=0, not_in_creative_inventory=1}
				pref = "shields"
			end
			if i >= #armor_array-1 then
				group.physics_speed=0.25
				group.physics_jump=0.25
				group.armor_fire=0.2
				group.armor_water=0.2
				group.armor_feather=0.2
			elseif i == #armor_array then
				group.not_in_creative_inventory = 0
			end
			minetest.register_tool(":"..pref..string1, {
				description = string2,
				inventory_image = pref..string3,
				groups = group,
				wear = 0,
			})
		end
	end
	level = level+armor_array[i][4]
end

effect_s = 2/5 * y_max1 * ((level+2)^a1) / (x_max1^a1 + (level+2)^a1)
effect_s = math.floor(effect_s * 100 + 0.5) / 100

effect_r = 2/5 * y_max1 * ((level+3)^a1) / (x_max1^a1 + (level+3)^a1)
effect_r = math.floor(effect_r * 100 + 0.5) / 100


effect2_s = 2/5 * y_max2 * ((#armor_array)^a2) / (x_max2^a2 + (#armor_array)^a2)
effect2_s = math.floor(effect2_s * 100 + 0.5) / 100

effect2_r = 2/5 * y_max2 * ((#armor_array+1)^a2) / (x_max2^a2 + (#armor_array+1)^a2)
effect2_r = math.floor(effect2_r * 100 + 0.5) / 100

minetest.register_tool(":3d_armor:helmet_admin", {
	description = "Admin Helmet",
	inventory_image = "3d_armor_inv_helmet_admin.png",
    wield_image = "3d_armor_inv_helmet_admin.png",
	groups = {armor_head=20, armor_heal=20, armor_use=0, armor_fire=0.2, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, armor_feather=0.2},
	wear = 0,
})

minetest.register_tool(":3d_armor:chestplate_admin", {
	description = "Admin Chestplate",
	inventory_image = "3d_armor_inv_chestplate_admin.png",
    wield_image = "3d_armor_inv_chestplate_admin.png",
	groups = {armor_torso=20, armor_heal=20, armor_use=0, armor_fire=0.2, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, armor_feather=0.2},
	wear = 0,
})

minetest.register_tool(":3d_armor:leggings_admin", {
	description = "Admin Leggings",
    wield_image = "3d_armor_inv_leggings_admin.png",
	inventory_image = "3d_armor_inv_leggings_admin.png",
	groups = {armor_legs=20, armor_heal=20, armor_use=0, armor_fire=0.2, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, armor_feather=0.2},
	wear = 0,
})

minetest.register_tool(":3d_armor:boots_admin", {
	description = "Admin Boots",
	inventory_image = "3d_armor_inv_boots_admin.png",
    wield_image = "3d_armor_inv_boots_admin.png",
	groups = {armor_feet=20, armor_heal=20, armor_use=0, armor_fire=0.2, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, armor_feather=0.2},
	wear = 0,
})

minetest.register_tool(":shields:shield_admin", {
	description = "Admin Shield",
	inventory_image = "shields_inv_shield_admin.png",
    wield_image = "shields_inv_shield_admin.png",
	groups = {armor_shield=20, armor_heal=20, armor_use=0, armor_fire=0.2, physics_jump=0.25, physics_speed=0.25, armor_water=0.2, armor_feather=0.2},
	wear = 0,
})