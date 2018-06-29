minetest.register_craftitem("pink:sieve", {
	description = "Sieve",
	inventory_image = "sieve.png",
})

minetest.register_node("pink:pink_grass",{
description = "Pink Grass",
tiles = {"pink_grass_top.png","default_dirt.png","default_dirt.png",
"default_dirt.png","default_dirt.png","default_dirt.png"},
 groups = {crumbly=3,oddly_breakable_by_hand=2},  
})

minetest.register_craftitem("pink:pink_seed", {
	description = "Pink Seed",
	inventory_image = "pink_seed.png",
})

minetest.register_node("pink:mud",{
description = "Mud",
 tiles  = {"pink_mud.png"},
 groups = {crumbly=3,oddly_breakable_by_hand=2},  
})

minetest.register_craft({
	output = "pink:small_tree",
	recipe = {
		{"pink:pink_seed", "pink:pink_seed", "pink:pink_seed"},
		{"", "pink:pink_seed", ""},
		{"", "pink:mud", ""},
	}
})

minetest.register_craft({
	output = "pink:sieve",
	recipe = {
		{"default:stick", "pink:fiber", "default:stick"},
		{"pink:fiber", "pink:fiber", "pink:fiber"},
		{"default:stick", "pink:fiber", "default:stick"},
	}
})

minetest.register_craft({
	output = "pink:mud",
	recipe = {
		{"default:dirt"},
		{"bucket:bucket_water"},
	}
})

minetest.register_craft({
	output = "pink:pink_seed 3",
	recipe = {
		{"pink:mud"},
		{"pink:sieve"},
	}
})

minetest.register_craftitem("pink:fiber", {
	description = "Fiber",
	inventory_image = "pink_fiber.png",
})

minetest.register_craftitem("pink:leaf", {
	description = "Leaf",
	inventory_image = "pink_leaf.png",
})

minetest.register_craft({
	output = "pink:fiber 2",
	recipe = {
		{"", "pink:leaf", ""},
		{"", "pink:leaf", ""},
		{"", "pink:leaf", ""},
	}
})

minetest.register_node("pink:small_tree", {
	description = "The Pink Tree",
	drawtype = "plantlike",
	tiles = {"pink_small_tree.png"},
	paramtype = "light",
	is_ground_content = false,
	inventory_image = "pink_small_tree.png",
	visual_scale = 2,
	wield_scale = {x=0.5, y=0.5, z=0.5},
	groups = {snappy=3, flammable=1, attatched_node=1},
    drop = {
	   max_items = 1,
	   	items = {
		       {items = {'pink:leaf 4'},rarity = 2,},
			   {items = {'pink:pink_wood 2'}}
		}
	},

	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 3, 0.3}
	},
	walkable = true,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "pink:pink_grass",
	sidelen = 16,
	fill_ratio = 0.02,
	biomes = {"pinky"},
	decoration = "pink:small_tree",
	height = 1,
})

SNIPER_DAMAGE=5
SNIPER_GRAVITY=2
SNIPER_VELOCITY=19

pink_shoot_sniper=function (item, player, pointed_thing)

	local i=1
	if player:get_inventory():contains_item("main", "pink:sniper_bullet") then
		player:get_inventory():remove_item("main", "pink:sniper_bullet")

		local playerpos=player:getpos()
		local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "pink:sniper_bullet_entity")
		local dir=player:get_look_dir()
		obj:setvelocity({x=dir.x*SNIPER_VELOCITY, y=dir.y*SNIPER_VELOCITY, z=dir.z*SNIPER_VELOCITY})
		obj:setacceleration({x=dir.x*-3, y=-SNIPER_GRAVITY, z=dir.z*-3})
	end
	return
end

minetest.register_craftitem("pink:sniper", {
	description = "Sniper",
	inventory_image = "pink_sniper.png",
    stack_max = 1,
	on_use = pink_shoot_sniper,
})


minetest.register_craftitem("pink:sniper_bullet", {
	description = "Sniper Bullet",
	inventory_image = "pink_sniper_bullet.png",
})

minetest.register_craftitem("pink:zoom", {
	description = "Target Device",
	inventory_image = "pink_zoom.png",
})


PINK_SNIPER_BULLET_ENTITY={
	physical = false,
	timer=0,
	textures = {"pink_bullet_back.png"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}



PINK_SNIPER_BULLET_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:getpos()
	local node = minetest.env:get_node(pos)


	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			obj:set_hp(obj:get_hp()-SNIPER_DAMAGE)
			if obj:get_entity_name() ~= "pink:sniper_bullet_entity" then
				if obj:get_hp()<=0 then 
					obj:remove()
				end
				self.object:remove() 
			end
		end
	end


	if self.lastpos.x~=nil then
		if node.name ~= "air" then
			minetest.env:add_item(self.lastpos, 'pink:sniper_bullet')
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z} 
end

minetest.register_entity("pink:sniper_bullet_entity", PINK_SNIPER_BULLET_ENTITY)

minetest.register_craft({
	output = 'pink:sniper',
	recipe = {
		{'', 'pink:zoom', ''},
		{'pink:ultimate_material_r', 'pink:colt3', 'pink:ultimate_material_r'},
		{'pink:ultimate_stick_long', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'pink:zoom',
	recipe = {
		{'default:steel_ingot', 'default:glass', 'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'pink:sniper_bullet',
	recipe = {
		{'pink:bullet', 'pink:bullet'},
	}
})

MUD_DAMAGE=1
MUD_GRAVITY=6
MUD_VELOCITY=19

pink_shoot_mud=function (item, player, pointed_thing)

	local i=1
	if player:get_inventory():contains_item("main", "pink:mudball") then
		player:get_inventory():remove_item("main", "pink:mudball")

		local playerpos=player:getpos()
		local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "pink:mudball_entity")
		local dir=player:get_look_dir()
		obj:setvelocity({x=dir.x*MUD_VELOCITY, y=dir.y*MUD_VELOCITY, z=dir.z*MUD_VELOCITY})
		obj:setacceleration({x=dir.x*-3, y=-MUD_GRAVITY, z=dir.z*-3})
	end
	return
end

minetest.register_craftitem("pink:slingshot", {
	description = "Slingshot",
	inventory_image = "pink_slingshot.png",
    stack_max = 1,
	on_use = pink_shoot_mud,
})

minetest.register_craftitem("pink:mudball", {
	description = "Mudball",
	inventory_image = "pink_mudball.png",
})


PINK_MUDBALL_ENTITY={
	physical = false,
	timer=0,
	textures = {"pink_mudball_back.png"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}



PINK_MUDBALL_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:getpos()
	local node = minetest.env:get_node(pos)


	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			obj:set_hp(obj:get_hp()-MUD_DAMAGE)
			if obj:get_entity_name() ~= "pink:mudball_entity" then
				if obj:get_hp()<=0 then 
					obj:remove()
				end
				self.object:remove() 
			end
		end
	end


	if self.lastpos.x~=nil then
		if node.name ~= "air" then
			minetest.env:add_item(self.lastpos, 'pink:mudball')
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z} 
end

minetest.register_entity("pink:mudball_entity", PINK_MUDBALL_ENTITY)


minetest.register_craft({
	output = 'pink:slingshot',
	recipe = {
		{'default:stick', 'pink:fiber', 'default:stick'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'pink:mudball 4',
	recipe = {
		{'pink:mud'},
	}
})



BULLET_DAMAGE=3
BULLET_GRAVITY=4
BULLET_VELOCITY=19

pink_shoot_bullet=function (item, player, pointed_thing)

	local i=1
	if player:get_inventory():contains_item("main", "pink:bullet") then
		player:get_inventory():remove_item("main", "pink:bullet")

		local playerpos=player:getpos()
		local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "pink:bullet_entity")
		local dir=player:get_look_dir()
		obj:setvelocity({x=dir.x*BULLET_VELOCITY, y=dir.y*BULLET_VELOCITY, z=dir.z*BULLET_VELOCITY})
		obj:setacceleration({x=dir.x*-3, y=-BULLET_GRAVITY, z=dir.z*-3})
	end
	return
end

minetest.register_craftitem("pink:hammer_pin", {
	description = "Hammer Pin",
	inventory_image = "pink_hammer_pin.png",
})

minetest.register_craftitem("pink:colt1", {
	description = "Colt level 1",
	inventory_image = "pink_colt1.png",
    stack_max = 1,
	on_use = pink_shoot_bullet,
})

minetest.register_craftitem("pink:colt2", {
	description = "Colt level 2",
	inventory_image = "pink_colt2.png",
    stack_max = 1,
	on_use = pink_shoot_bullet,
})

minetest.register_craftitem("pink:colt3", {
	description = "Colt level 3",
	inventory_image = "pink_colt3.png",
    stack_max = 1,
	on_use = pink_shoot_bullet,
})

minetest.register_craftitem("pink:bullet", {
	description = "Standart Bullet",
	inventory_image = "pink_bullet.png",
})



PINK_BULLET_ENTITY={
	physical = false,
	timer=0,
	textures = {"pink_bullet_back.png"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}



PINK_BULLET_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:getpos()
	local node = minetest.env:get_node(pos)


	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			obj:set_hp(obj:get_hp()-BULLET_DAMAGE)
			if obj:get_entity_name() ~= "pink:bullet_entity" then
				if obj:get_hp()<=0 then 
					obj:remove()
				end
				self.object:remove() 
			end
		end
	end


	if self.lastpos.x~=nil then
		if node.name ~= "air" then
			minetest.env:add_item(self.lastpos, 'pink:bullet')
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z} 
end

minetest.register_entity("pink:bullet_entity", PINK_BULLET_ENTITY)



minetest.register_craft({
	output = 'pink:hammer_pin',
	recipe = {
		{'default:steel_ingot'},
		{'default:steel_ingot'},
	}
})

minetest.register_craft({
	output = 'pink:colt1',
	recipe = {
		{'pink:hammer_pin', '', ''},
		{'pink:ultimate_material_r', 'default:steel_ingot', 'default:steel_ingot'},
		{'default:wood', '', ''},
	}
})

minetest.register_craft({
	output = 'pink:colt2',
	recipe = {
		{'', '', ''},
		{'pink:ultimate_material_r', 'pink:colt1', 'pink:ultimate_material_r'},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'pink:colt3',
	recipe = {
		{'', '', ''},
		{'pink:ultimate_material_r', 'pink:colt2', 'pink:ultimate_material_r'},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'pink:bullet 8',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot'},
	}
})



minetest.register_craft({
	output = "pink:ultimate_material_r",
	recipe = {
		{"", "pink:hammer", ""},
		{"", "pink:ultimate_material", "pink:ultimate_material"},
		{"", "pink:ultimate_material", "pink:ultimate_material"},
	}
})

minetest.register_craftitem( "pink:ultimate_material_r", {
	description = "Ultimate Material (reinforced)",
	inventory_image = "ultimate_material_4.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	output = "pink:ultimate_pick_big",
	recipe = {
		{"pink:ultimate_material_r", "pink:ultimate_material_r", "pink:ultimate_material_r"},
		{"", "pink:ultimate_stick_long", ""},
		{"", "pink:ultimate_stick_long", ""},
	}
})

minetest.register_tool("pink:ultimate_pick_big", {
	description = "Ultimate Pickaxe (big)",
	inventory_image = "ultimate_pick_big.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.0, [2]=0.5, [3]=0.25}, uses=1000000, maxlevel=10},
		},
		damage_groups = {fleshy=9},
	},
})

minetest.register_craftitem( "pink:ultimate_stick_long", {
	description = "Ultimate Stick (long)",
	inventory_image = "ultimate_stick_long.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	output = "pink:ultimate_stick_long",
	recipe = {
		{"", "pink:ultimate_stick", ""},
		{"", "pink:ultimate_stick", ""},
		{"", "pink:ultimate_stick", ""},
	}
})



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
		damage_groups = {fleshy=8},
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
		damage_groups = {fleshy=10},
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
		damage_groups = {fleshy=5},
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
	inventory_image = "ultimate_material.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	output = "pink:ultimate_material_unformed",
	recipe = {
		{"", "", ""},
		{"", "pink:ultimate_material_hot", ""},
		{"", "bucket:bucket_water", ""},
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
    groups = {cracky=3},
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

minetest.register_craft({
	output = "pink:try_it",
	recipe = {
		{"pink:pink_iron", "pink:pink_iron", "pink:pink_iron"},
		{"pink:pink_iron", "pink:pink_block", "pink:pink_iron"},
		{"pink:pink_iron", "pink:pink_iron", "pink:pink_iron"},
	}
})



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
		    {items = {'pink:pink_block'},rarity = 5,},
		    {items = {'pink:pink_iron 5'},rarity = 3,},
			{items = {'pink:pink_wood 5'},rarity = 2,},
			{items = {'pink:pink_no'}}
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
    groups = {choppy=3,oddly_breakable_by_hand=2},
})






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
    groups = {cracky=2},
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


minetest.register_tool("pink:pink_sword", {
	description = "Pink Sword",
	inventory_image = "pink_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=1000000, maxlevel=3},
		},
		damage_groups = {fleshy=6},
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
		damage_groups = {fleshy=4},
	},
})


minetest.register_node("pink:pink_smile",{
description = "Pink Smile",
 tiles  = {"pink_smile.png"},
 groups = {cracky=3},  
})

minetest.register_node("pink:pink_no",{
description = "You get nothing!",
 tiles  = {"pink_no.png"},
 groups = {cracky=3},  
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
	groups = {cracky=3},
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


--minetest.register_tool("pink:admin_pick", {
--	description = "Admin Pickaxe",
--	inventory_image = "admin_pick.png",
--	tool_capabilities = {
--		full_punch_interval = 0.9,
--		max_drop_level=3,
--		groupcaps={
--			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=1000000000, maxlevel=20},
--		},
--		damage_groups = {fleshy=1000000000},
--	},
--})