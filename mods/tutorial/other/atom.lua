--pictures by et
--programm by 1248
minetest.register_node("tutorial:radioaktive", {
	description = "Radioaktive",
	drawtype = "plantlike",
	tiles = {{
		name="tutorial_radioaktive.png",
	}},
	light_source = 12,
	walkable = false,
	buildable_to = true,
	damage_per_second = 0,
	groups = {dig_immediate=3},
})

minetest.register_abm({
	nodenames = {"tutorial:radioaktive"},
	interval = 1,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.env:remove_node(pos)
	end,
})
minetest.register_entity("tutorial:radioaktiveball", {
	visual = "mesh",
	visual_size = {x=5, y=5},
	mesh = "fireballs_smokeball.x",
	textures = {"tutorial_radioaktiveball.png"},
	velocity = 5,
	light_source = 12,
	on_step = function(self, dtime)
			local pos = self.object:getpos()
			if minetest.env:get_node(self.object:getpos()).name ~= "air"then
				self.hit_node(self, pos, node)
				self.object:remove()
				return
			end
			pos.y = pos.y-1
			for _,player in pairs(minetest.env:get_objects_inside_radius(pos, 1)) do
				if player:is_player() then
					self.hit_player(self, player)
					self.object:remove()
					return
				end
			end
		end,
	hit_player = function(self, player)
		local s = player:getpos()
		local p = player:get_look_dir()
		local vec = {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z}
		local pos = player:getpos()
		for dx=0,1 do
			for dy=0,1 do
				for dz=0,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(p).name
					if (n == "air") then
	minetest.env:add_node(p, {name="tutorial:radioaktive"})
					end
				end
			end
		end
	end,
	hit_node = function(self, pos, node)
		for dx=-1,1 do
			for dy=-2,1 do
				for dz=-1,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(p).name
					if (n == "air") then
	minetest.env:add_node(p, {name="tutorial:radioaktive"})
					end
				end
			end
		end
	end
})

minetest.register_tool("tutorial:raketenwerfer", {
	description = "Raketenwerfer",
	inventory_image = "tutorial_raketenwerfer.png",
	on_use = function(itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:radioaktiveball")
			local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 12,
})
minetest.register_craftitem("tutorial:atombombe", {
    description = "Atombombe",
	inventory_image = "tutorial_atombombe.png",
})

minetest.register_craftitem("tutorial:atombombe2", {
    description = "Atombombe Teil2",
	inventory_image = "tutorial_atombombe2.png",
})

minetest.register_craftitem("tutorial:atombombe1", {
    description = "Atombombe Teil1",
	inventory_image = "tutorial_atombombe1.png",
})

--Version 2
minetest.register_tool("tutorial:coreentverner", {
	description = "Core entverner",
	inventory_image = "tutorial_coreentverner.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={	
cracky  = {times={[-1]=0}, uses=500, maxlevel=3},
	},
		damage_groups = {fleshy=5}
	},
})
minetest.register_node("tutorial:glass_reaktor_core", {
				description = "Glass Reaktor core",
				drawtype = "glasslike",
				tiles = {"tutorial_glass_reaktor_core.png"},
				paramtype = "light",
				sunlight_propagates = true,
				use_texture_alpha = true,
				is_ground_content = true,
				groups = {cracky=-1},
				sounds = default.node_sound_glass_defaults()
				})

minetest.register_node("tutorial:glass_verseuchter_reaktor_core", {
				description = "Glass Verseuchter Reaktor core",
				drawtype = "glasslike",
				tiles = {"tutorial_verseuchter_glass_reaktor_core.png"},
				paramtype = "light",
				sunlight_propagates = true,
				use_texture_alpha = true,
				light_source = 10,
				is_ground_content = true,
				groups = {cracky=-1},
				sounds = default.node_sound_glass_defaults()
				})

minetest.register_node("tutorial:verseuchter_reaktor_core", {
	description = "Verseuchter Reaktor core",
	tiles = {"tutorial_verseuchter_reaktor_core.png"},
	is_ground_content = true,
	groups = {cracky=-1},
	light_source = 10,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:reaktor_core", {
	description = "Reaktor core",
	tiles = {"tutorial_reaktor_core.png"},
	is_ground_content = true,
	groups = {cracky=-1},
	sounds = default.node_sound_stone_defaults(),
})

--Version 1
minetest.register_craftitem("tutorial:blei_ingot", {
    description = "Blei Ingot",
	inventory_image = "tutorial_blei_ingot.png",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_blei",
	wherein        = "default:stone",
	clust_scarcity = 15*15*15,
	clust_num_ores = 3,
	clust_size     = 2,
	height_min     = -31000 ,
	height_max     = -25,
})

minetest.register_node("tutorial:stone_with_blei", {
	description = "Blei",
	tiles = {"tutorial_blei.png"},
	is_ground_content = true,
	groups = {cracky=0},
	drop = 'tutorial:blei_ingot',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("tutorial:plutonium_ingot", {
    description = "Plutonium Ingot lv.1",
	inventory_image = "tutorial_plutonium_ingot.png",
})

minetest.register_craftitem("tutorial:plutonium_ingot2", {
    description = "Plutonium Ingot lv.2",
	inventory_image = "tutorial_plutonium_ingot2.png",
})



minetest.register_craftitem("tutorial:plutonium_lump", {
    description = "Plutonium Lump",
	inventory_image = "tutorial_plutonium_lump.png",
})


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tutorial:stone_with_plutonium",
	wherein        = "default:stone",
	clust_scarcity = 15*15*15,
	clust_num_ores = 3,
	clust_size     = 2,
	height_min     = -31000 ,
	height_max     = -25,
})

minetest.register_node("tutorial:stone_with_plutonium", {
	description = "Plutonium",
	tiles = {"tutorial_plutonium.png"},
	is_ground_content = true,
	groups = {cracky=4},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tutorial:verseuchtesgeschenk",{
description = "Verseuchtesgeschenk",
 is_ground_content = true,
 tiles  = {"tutorial_verseuchtesgeschenk.png"},
 groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},  
 drop = {
	max_items = 1,
		items = {
			{items = {'tutorial:verseuchtebattleaxe'},rarity = 10,},
			{items = {'tutorial:uranium1 16'},rarity = 1,},
 			{items = {'tutorial:uranium2 8'},rarity = 3,},
			{items = {'tutorial:uranium3 4'},rarity = 5,}
 			
		}
	},


})




minetest.register_tool("tutorial:atombattleaxe", {
	description = "Atombattleaxe",
	inventory_image = "tutorial_atombattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={

--sword			
snappy  = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
 --axe                       
choppy  = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
--shovel			
crumbly = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
--pick			
cracky  = {times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=2.0, [7]=4.0, [8]=4.0, [9]=4.0, [0]=0,}, uses=0, maxlevel=3},
	},
		damage_groups = {fleshy=500000}
	},
})

minetest.register_tool("tutorial:radioaktivebattleaxe", {
	description = "Radioaktivebattleaxe",
	inventory_image = "tutorial_radioaktivebattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={

--sword			
snappy  = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
 --axe                       
choppy  = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
--shovel			
crumbly = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
--pick			
cracky  = {times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=1.0, [6]=3.0, [0]=0,}, uses=0, maxlevel=3},
	},
		damage_groups = {fleshy=250000}
	},
})


minetest.register_tool("tutorial:verseuchtebattleaxe", {
	description = "Verseuchtebattleaxe",
	inventory_image = "tutorial_verseuchtebattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={

--sword			
snappy  = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
 --axe                       
choppy  = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
--shovel			
crumbly = {times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
--pick			
cracky  = {times={[1]=0, [2]=0, [3]=0, [4]=0, [5]=2.0, [0]=0,}, uses=0, maxlevel=3},
	},
		damage_groups = {fleshy=50000}
	},
})
