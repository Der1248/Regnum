
--V6

--V5

minetest.register_craft({
	output = "pink:ultimate_material_broken 3",
	recipe = {
		{"", "pink:hammer", ""},
		{"", "pink:ultimate_pick_small", ""},
		{"", "", ""},
	}
})

minetest.register_tool("pink:ultimate_pick_small", {
	description = "Ultimate Pickaxe (small)",
	inventory_image = "ultimate_pick_small.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=1000000, maxlevel=10},
		},
		damage_groups = {fleshy=100},
	},
})


minetest.register_craft({
	output = "pink:ultimate_pick_small",
	recipe = {
		{"pink:ultimate_material", "pink:ultimate_material", "pink:ultimate_material"},
		{"", "pink:ultimate_stick", ""},
		{"", "pink:ultimate_stick", ""},
	}
})

minetest.register_craft({
	type = "cooking",
	recipe = "pink:ultimate_material_broken",
        cooktime = 5,
	output = "pink:ultimate_material_hot",
})

minetest.register_craftitem( "pink:ultimate_material_broken", {
	description = "Ultimate Material (broken)",
	inventory_image = "ultimate_material_broken.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	output = "pink:ultimate_material_broken 3",
	recipe = {
		{"", "pink:hammer", ""},
		{"", "pink:ultimate_sword_small", ""},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "pink:ultimate_sword_small",
	recipe = {
		{"", "pink:ultimate_material", ""},
		{"", "pink:ultimate_material", ""},
		{"", "pink:ultimate_stick", ""},
	}
})

minetest.register_craftitem( "pink:ultimate_stick", {
	description = "Ultimate Stick",
	inventory_image = "ultimate_stick.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	output = "pink:ultimate_stick 2",
	recipe = {
		{"", "", ""},
		{"", "pink:ultimate_material", ""},
		{"", "default:stick", ""},
	}
})

minetest.register_craft({
	output = "pink:pink_stick 4",
	recipe = {
		{"", "", ""},
		{"", "pink:pink_planks", ""},
		{"", "", ""},
	}
})

minetest.register_craftitem( "pink:pink_stick", {
	description = "Pink Stick",
	inventory_image = "pink_stick.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_tool("pink:ultimate_sword_small", {
	description = "Ultimate Sword (small)",
	inventory_image = "ultimate_sword_small.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=1000000, maxlevel=3},
		},
		damage_groups = {fleshy=200},
	}
})

minetest.register_craft({
	output = "pink:hammer",
	recipe = {
		{"default:stone", "default:stick", "default:stone"},
		{"default:stone", "default:stick", "default:stone"},
		{"", "default:stick", ""},
	}
})

minetest.register_tool("pink:hammer", {
	description = "Hammer",
	inventory_image = "hammer.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=1000000, maxlevel=3},
		},
		damage_groups = {fleshy=18},
	}
})

minetest.register_craft({
	output = "pink:ultimate_material",
	recipe = {
		{"", "pink:hammer", ""},
		{"", "pink:ultimate_material_unformed", ""},
		{"", "", ""},
	}
})

minetest.register_craftitem( "pink:ultimate_material", {
	description = "Ultimate Material",
	inventory_image = "ultimate_material_.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	output = "pink:ultimate_material_unformed",
	recipe = {
		{"", "", ""},
		{"", "pink:ultimate_material_hot", ""},
		{"", "default:water_bucket", ""},
	}
})

minetest.register_craftitem( "pink:ultimate_material_unformed", {
	description = "Ultimate Material (unformed)",
	inventory_image = "ultimate_material_unformed.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "pink:ultimate_material_hot", {
	description = "Ultimate Material (hot)",
	inventory_image = "ultimate_material_hot.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	type = "cooking",
	recipe = "pink:ultimate_material_cold",
        cooktime = 5,
	output = "pink:ultimate_material_hot",
})

minetest.register_craftitem( "pink:ultimate_material_cold", {
	description = "Ultimate Material (cold)",
	inventory_image = "ultimate_material_cold.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_node("pink:ultimate_ore", {
    description = "Ultimate Ore",
    tiles = {"ultimate_ore.png"},
    groups = {cracky=5},
	drop = 'pink:ultimate_material_cold',
})

minetest.register_ore({
    ore_type       = "scatter",
    ore            = "pink:ultimate_ore",
    wherein        = "default:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 4,
    clust_size     = 4,
    height_min     = -31000,
    height_max     = -500,
})

minetest.register_craftitem( "pink:ultimate_material", {
	description = "The Ultimate Material",
	inventory_image = "ultimate_material.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	output = "pink:try_it",
	recipe = {
		{"pink:pink_iron", "pink:pink_iron", "pink:pink_iron"},
		{"pink:pink_iron", "pink:pink_block", "pink:pink_iron"},
		{"pink:pink_iron", "pink:pink_iron", "pink:pink_iron"},
	}
})

--V4

minetest.register_craft({
	output = "pink:pink_ingot 9",
	recipe = {
		{"", "", ""},
		{"", "pink:pink_block", ""},
		{"", "", ""},
	}
})


minetest.register_node("pink:try_it",{
description = "Pink Lucky Block",
 is_ground_content = true,
 tiles  = {"pink_try_it.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},  
 drop = {
	max_items = 1,
		items = {
			{items = {'pink:pink_no'}},
			{items = {'pink:pink_iron 5'},rarity = 5,},
			{items = {'pink:pink_block'},rarity = 10,},
			{items = {'pink:pink_wood 5'},rarity = 10,}
		}
	},


})
	
minetest.register_craft({
	output = "pink:pink_planks 4",
	recipe = {
		{"", "", ""},
		{"", "pink:pink_wood", ""},
		{"", "", ""},
	}
})

minetest.register_node("pink:pink_planks", {
    description = "Pink Planks",
    tiles = {"pink_planks.png"},
    groups = {choppy=3},
})

minetest.register_node("pink:pink_wood", {
    description = "Pink Wood",
    tiles = {"pink_wood_top.png","pink_wood_top.png","pink_wood.png",
	"pink_wood.png","pink_wood.png","pink_wood.png"},
    groups = {choppy=3},
})


--V3



minetest.register_craft({
	output = "pink:pink_pick",
	recipe = {
		{"pink:pink_iron", "pink:pink_iron", "pink:pink_iron"},
		{"", "pink:pink_stick", ""},
		{"", "pink:pink_stick", ""},
	}
})

minetest.register_craft({
	output = "pink:pink_iron",
	recipe = {
		{"", "", ""},
		{"pink:pink_ingot", "default:steel_ingot", ""},
		{"", "", ""},
	}
})

minetest.register_craftitem( "pink:pink_iron", {
	description = "Pink Iron",
	inventory_image = "pink_iron.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	output = "pink:pink_block",
	recipe = {
		{"pink:pink_ingot", "pink:pink_ingot", "pink:pink_ingot"},
		{"pink:pink_ingot", "pink:pink_ingot", "pink:pink_ingot"},
		{"pink:pink_ingot", "pink:pink_ingot", "pink:pink_ingot"},
	}
})

minetest.register_craft({
	output = "pink:pink_sword",
	recipe = {
		{"", "pink:pink_iron", ""},
		{"", "pink:pink_iron", ""},
		{"", "pink:pink_stick", ""},
	}
})

minetest.register_node("pink:pink_block", {
    description = "Pink Block",
    tiles = {"pink_block.png"},
    groups = {cracky=1},
})

minetest.register_craft({
	type = "cooking",
	recipe = "pink:pink_lump",
        cooktime = 3,
	output = "pink:pink_ingot",
})


minetest.register_craftitem( "pink:pink_ingot", {
	description = "Pink Ingot",
	inventory_image = "pink_ingot.png",
})


minetest.register_ore({
    ore_type       = "scatter",
    ore            = "pink:pink_ore",
    wherein        = "default:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 4,
    clust_size     = 4,
    height_min     = -31000,
    height_max     = 64,
})


minetest.register_node("pink:pink_ore", {
    description = "Pink Ore",
    tiles = {"pink_ore.png"},
    groups = {cracky=1},
    drop = 'pink:pink_lump',
})


minetest.register_craftitem( "pink:pink_lump", {
	description = "Pink Lump",
	inventory_image = "pink_lump.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

--V2

minetest.register_node( "pink:no_texture_block", {
	description = "No Texture Block",
	inventory_image = "no_texture_block.png",
	groups = {choppy=1,cracky=2}
})

minetest.register_craftitem( "pink:lost_texture", {
	description = "lost Texture",
	inventory_image = "pink_lost_texture.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_tool("pink:pink_sword", {
	description = "Pink Sword",
	inventory_image = "pink_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=1000000, maxlevel=3},
		},
		damage_groups = {fleshy=13},
	}
})

minetest.register_tool("pink:pink_pick", {
	description = "Pink Pickaxe",
	inventory_image = "pink_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=1000000, maxlevel=6},
		},
		damage_groups = {fleshy=8},
	},
})


minetest.register_craft({
	output = "pink:lost_texture",
	recipe = {
		{"default:dirt", "default:dirt", "default:stone"},
		{"default:dirt", "default:stone", "default:dirt"},
		{"default:stone", "default:dirt", "default:dirt"},
	}
})

minetest.register_craft({
	type = "cooking",
	recipe = "pink:lost_texture",
        cooktime = 10,
	output = "pink:no_texture_block",
})

--version 1

minetest.register_node("pink:pink_smile",{
description = "Pink Smile",
 tiles  = {"pink_smile.png"},
 groups = {cracky=2},  
})

minetest.register_node("pink:pink_no",{
description = "You get nothing!",
 tiles  = {"pink_no.png"},
 groups = {cracky=1},  
})

minetest.register_craftitem( "pink:pink_scull", {
	description = "Pink Scull",
	inventory_image = "pink_scull.png",
	on_place_on_ground = minetest.craftitem_place_item,
})



minetest.register_node("pink:pink_glass", {
	description = "Pink Glass",
	drawtype = "glasslike",
	tiles = {"pink_glass.png"},
	paramtype = "light",
	groups = {cracky=0},
})



minetest.register_craft({
	output = "pink:pink_smile",
	recipe = {
		{"default:obsidian", "wool:pink", "default:obsidian"},
		{"wool:pink", "wool:pink", "wool:pink"},
		{"default:obsidian", "default:obsidian", "default:obsidian"},
	}
})


minetest.register_craft({
	output = "pink:pink_scull",
	recipe = {
		{"wool:pink", "wool:white", "wool:white"},
		{"wool:pink", "wool:white", "wool:white"},
		{"wool:pink", "wool:white", "wool:white"},
	}
})

minetest.register_craft({
	output = "bones:bones",
	recipe = {
		{"default:gravel", "default:gravel", "default:gravel"},
		{"default:gravel", "pink:pink_scull", "default:gravel"},
		{"default:gravel", "default:gravel", "default:gravel"},
	}
})

minetest.register_craft({
	output = "pink:pink_glass",
	recipe = {
		{"default:glass", "default:glass", "default:glass"},
		{"default:glass", "pink:pink_smile", "default:glass"},
		{"default:glass", "default:glass", "default:glass"},
	}
})

--Secret Version
--To unlock this version please remove the -- infront of the code.
-- WARNING: OVER POWERD

--minetest.register_tool("pink:secret_pick", {
	--description = "Secret Pickaxe",
	--inventory_image = "secret_pick.png",
	--tool_capabilities = {
		--full_punch_interval = 0.9,
		--max_drop_level=3,
		--groupcaps={
			--cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=1000000000, maxlevel=20},
		--},
		--damage_groups = {fleshy=1000000000},
	--},
--})

--minetest.register_craft({
	--output = "pink:secret_pick",
	--recipe = {
		--{"default:dirt", "default:dirt", "default:dirt"},
		--{"", "default:stick", ""},
		--{"", "default:stick", ""},
	--}
--})



