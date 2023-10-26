minetest.register_entity("tutorial:patrone", {
	visual = "mesh",
	visual_size = {x=5, y=5},
	mesh = "tutorial_fireball.x",
	textures = {"tutorial_adminball.png"},
	velocity = 5,
	light_source = 12,
	on_step = function(self, dtime)
		local pos = self.object:get_pos()
		if minetest.env:get_node(self.object:get_pos()).name ~= "air" then
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
		local s = player:get_pos()
		local p = player:get_look_dir()
		local vec = {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z}
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=1000000},
		}, vec)
		local pos = player:get_pos()
		for dx=-1,1 do
			for dy=-1,1 do
				for dz=-1,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(pos).name
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
						minetest.env:set_node(p, {name="tutorial:legend_thunderadmin"})
					else
						minetest.env:remove_node(p)
					end
				end
			end
		end
	end,
	hit_node = function(self, pos, node)
		for dx=-1,1 do
			for dy=-1,1 do
				for dz=-1,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(pos).name
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
						minetest.env:set_node(p, {name="tutorial:legend_thunderadmin"})
					else
						minetest.env:remove_node(p)
					end
				end
			end
		end
	end
})