--v.2.0.0
--v.1.13.0
--v.1.12.0
--v.1.11.1
--v.1.11.0
--v.1.10.0
--v.1.9.2
--v.1.9.1
--v.1.9.0
--v.1.8.0
--v.1.7.5
--v.1.7.4
--v.1.7.3
--v.1.7.2
--v.1.7.1
--v.1.7.0
--v.1.6.0
--v.1.5.0
--v.1.4.4
--v.1.4.3
--v.1.4.2
--v.1.4.1
--v.1.4.0
--v.1.3.3
--v.1.3.2
--v.1.3.1
--v.1.3.0
--v.1.2.4
--v.1.2.3
--v.1.2.2
--v.1.2.1
--v.1.2.0
--v.1.1.5
--v.1.1.4
--v.1.1.3
--v.1.1.2
--v.1.1.1
--v.1.1.0
--v.1.0.10
--v.1.0.9
--v.1.0.8
--v.1.0.7
--v.1.0.6
--v.1.0.5
--v.1.0.4
--v.1.0.3
--v.1.0.2
--v.1.0.1
--v.1.0.0
--v.0.23.3
--v.0.23.2
--v.0.23.1
--v.0.23.0
--v.0.22.1
--v.0.22.0
--v.0.21.0
--v.0.20.0
--v.0.19.1
--v.0.18.0
--v.0.17.0
--v.0.16.0
--v.0.15.0
--v.0.14.0
--v.0.13.0
--v.0.12.0
--v.0.11.0
minetest.register_entity("tutorial:patrone", {
	visual = "mesh",
	visual_size = {x=5, y=5},
	mesh = "tutorial_fireball.x",
	textures = {"tutorial_patrone.png"},
	velocity = 5,
	light_source = 12,
	on_step = function(self, dtime)
		local pos = self.object:getpos()
		if minetest.env:get_node(self.object:getpos()).name ~= "air" then
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
		player:punch(self.object, 1.0,  {
			full_punch_interval=1.0,
			damage_groups = {fleshy=1000000},
		}, vec)
		local pos = player:getpos()
		for dx=-1,1 do
			for dy=-1,1 do
				for dz=-1,1 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(pos).name
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <= 30 then
						minetest.env:set_node(p, {name="tutorial:thunder"})
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
						minetest.env:set_node(p, {name="tutorial:thunder"})
					else
						minetest.env:remove_node(p)
					end
				end
			end
		end
	end
})
--v.0.10.1
--v.0.10.0
--v.0.9.0
--v.0.8.0
--v.0.7.2
--v.0.7.1
--v.0.7.0
--v.0.6.6
--v.0.6.5
--v.0.6.4
--v.0.6.3
--v.0.6.2
--v.0.6.1
--v.0.6.0
--v.0.5.2
--v.0.5.1
--v.0.5.0
--v.0.4.0
--v.0.3.0
--v.0.2.0
--v.0.1.0