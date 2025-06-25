minetest.register_on_dignode(function(pos, oldnode, digger)
	local namer = oldnode.name
	local see_if_mineral = minetest.get_item_group(namer, "xpc")
	if see_if_mineral > 0 then
		minetest.add_entity(pos, "experience:orb_cyan")
	end
end)


minetest.register_globalstep(function(dtime)
	for _,player in ipairs(minetest.get_connected_players()) do
		local pos = player:get_pos()
		pos.y = pos.y+0.5
		for _,object in ipairs(minetest.get_objects_inside_radius(pos, 1)) do
			if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "experience:orb_cyan" then
				--RIGHT HERE ADD IN THE CODE TO UPGRADE PLAYERS
				object:set_velocity({x=0,y=0,z=0})
				object:get_luaentity().name = "STOP"
				minetest.sound_play("orb", {
					to_player = player:get_player_name(),
				})

				local old_xpc = experience.get(player, "experience_cyan")
				if old_xpc ~= nil then
					local new_xpc = old_xpc + 1
					experience.set(player, "experience_cyan", new_xpc)

					sfinv.set_player_inventory_formspec(player)
                    local player_inv = player:get_inventory()
                    local h = 0
                    for i=1,25 do
                        local g = 0
                        g = i*i
                        if new_xpc == g then
                            player_inv:add_item("xpi01", "tutorial:coin_cyan 1")
                            player_inv:set_stack("xpi6", i, "tutorial:level"..i.."_cyan 1")
                            minetest.sound_play("level_up", {
							    to_player = player:get_player_name(),
						    })
                        end
                    end
                    if new_xpc == 900 then
                        player_inv:add_item("xpi01", "tutorial:coin_cyan 5")
                        player_inv:set_stack("xpi6", 26, "tutorial:levelMAX_cyan 1")
                        minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
                    end
				end
				object:remove()
		end
	end
for _,object in ipairs(minetest.get_objects_inside_radius(pos, 3)) do
			if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "experience:orb_cyan" then
				if object:get_luaentity().collect then
					local pos1 = pos
					pos1.y = pos1.y+0.2
					local pos2 = object:get_pos()
					local vec = {x=pos1.x-pos2.x, y=pos1.y-pos2.y, z=pos1.z-pos2.z}
					vec.x = vec.x*3
					vec.y = vec.y*3
					vec.z = vec.z*3
					object:set_velocity(vec)
				end
			end
		end
	end
end)

minetest.register_entity("experience:orb_cyan", {
	physical = true,
	timer = 0,
	textures = {"orb_cyan.png"},
	visual_size = {x=0.3, y=0.3},
	collisionbox = {-0.17,-0.17,-0.17,0.17,0.17,0.17},
	on_activate = function(self, staticdata)
		self.object:set_armor_groups({immortal=1})
		self.object:set_velocity({x=0, y=1, z=0})
		self.object:set_acceleration({x=0, y=-10, z=0})
	end,
	collect = true,
	on_step = function(self, dtime)
		self.timer = self.timer + dtime
		if (self.timer > 300) then
			self.object:remove()
		end
		local p = self.object:get_pos()
		p.y = p.y - 0.3
		local nn = minetest.get_node(p).name
		if not minetest.registered_nodes[nn] or minetest.registered_nodes[nn].walkable then
			if self.physical_state then
				self.object:set_velocity({x=0, y=0, z=0})
				self.object:set_acceleration({x=0, y=0, z=0})
				self.physical_state = false
				self.object:set_properties({
					physical = false
				})
			end
		else
			if not self.physical_state then
				self.object:set_velocity({x=0,y=0,z=0})
				self.object:set_acceleration({x=0, y=-10, z=0})
				self.physical_state = true
				self.object:set_properties({
					physical = true
				})
			end
		end
	end,
})
