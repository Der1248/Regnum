if minetest.get_modpath("technic") then
	local stats = {
		brass = { name="Brass", armor=20, heal=10, use=50 },
		cast = { name="Cast Iron", armor=40, heal=15, use=250 },
		carbon = { name="Carbon Steel", armor=50, heal=20, use=50,},
		stainless = { name="Stainless Steel", armor=50, heal=20, use=50 },
	}
	local mats = {
		brass="technic:brass_ingot",
		cast="technic:cast_iron_ingot",
		carbon="technic:carbon_steel_ingot",
		stainless="technic:stainless_steel_ingot",
	}
	if minetest.get_modpath("moreores") then
		stats.tin = { name="Tin", armor=40, heal=15, use=250 }
		stats.silver = { name="Silver", armor=20, heal=4, use=50 }
		mats.tin = "moreores:tin_ingot"
		mats.silver = "moreores:silver_ingot"
	end

	for k, v in pairs(stats) do
		minetest.register_tool("technic_armor:helmet_"..k, {
			description = v.name.." Helmet",
			inventory_image = "technic_armor_inv_helmet_"..k..".png",
			groups = {armor_head=math.floor(5*v.armor), armor_heal=v.heal, armor_use=v.use, armor_fire=v.fire},
			wear = 0,
		})
		minetest.register_tool("technic_armor:chestplate_"..k, {
			description = v.name.." Chestplate",
			inventory_image = "technic_armor_inv_chestplate_"..k..".png",
			groups = {armor_torso=math.floor(8*v.armor), armor_heal=v.heal, armor_use=v.use, armor_fire=v.fire},
			wear = 0,
		})
		minetest.register_tool("technic_armor:leggings_"..k, {
			description = v.name.." Leggings",
			inventory_image = "technic_armor_inv_leggings_"..k..".png",
			groups = {armor_legs=math.floor(7*v.armor), armor_heal=v.heal, armor_use=v.use, armor_fire=v.fire},
			wear = 0,
		})
		minetest.register_tool("technic_armor:boots_"..k, {
			description = v.name.." Boots",
			inventory_image = "technic_armor_inv_boots_"..k..".png",
			groups = {armor_feet=math.floor(4*v.armor), armor_heal=v.heal, armor_use=v.use, armor_fire=v.fire},
			wear = 0,
		})
	end
end

