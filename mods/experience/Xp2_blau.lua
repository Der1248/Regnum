minetest.register_on_dignode(function(pos, oldnode, digger)
	local namer = oldnode.name
	local see_if_mineral = minetest.get_item_group(namer, "xpb")
	if see_if_mineral > 0 then
		minetest.add_entity(pos, "experience:orb_blau")
	end
end)

minetest.register_on_newplayer(function(player)
	local file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_blau", "w")
	file:write("0")
	file:close()
end)



minetest.register_globalstep(function(dtime)
	for _,player in ipairs(minetest.get_connected_players()) do
		local pos = player:get_pos()
		pos.y = pos.y+0.5
		for _,object in ipairs(minetest.get_objects_inside_radius(pos, 1)) do
			if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "experience:orb_blau" then
				--RIGHT HERE ADD IN THE CODE TO UPGRADE PLAYERS 
				object:setvelocity({x=0,y=0,z=0})
				object:get_luaentity().name = "STOP"
				minetest.sound_play("orb", {
					to_player = player:get_player_name(),
				})
				xpb = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_blau", "r")
				experience_blau = xpb:read("*l")
				xpb:close()
				if experience_blau ~= nil then
					new_xpb = experience_blau + 1
					xpb_write = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_blau", "w")
					xpb_write:write(new_xpb)
					xpb_write:close()
                    local h = 0
                    local player_inv = player:get_inventory()
                    for i=1,20 do
                        h = h+i
                        local g = 0
                        if i < 6 then
                            g = 1
                        elseif i < 11 then
                            g = 2
                        elseif i < 16 then
                            g = 3
                        elseif i < 21 then
                            g = 4
                        end
                        if new_xpb == h then
						    player_inv:set_size("xpi03", 10)
                            player_inv:add_item("xpi03", "tutorial:coin_blau "..g)
                            player_inv:set_size("xpi3", 20)
                            player_inv:set_stack("xpi3", i, "tutorial:level"..i.."_blau")
                            minetest.sound_play("level_up", {
							    to_player = player:get_player_name(),
						    })
					    end
                    end
                    if new_xpb == 250 then
						player_inv:set_size("xpi03", 10)
                        player_inv:add_item("xpi03", "tutorial:coin_blau 5")
                        player_inv:set_size("xpi3", 20)
                        player_inv:add_item("xpi03", "tutorial:levelMAX_blau")
                        minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
                    if new_xpb == 210 then
						player_inv:set_size("xpi03", 10)
                        player_inv:add_item("xpi03", "tutorial:xp_blau")
                        minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
				end
			object:remove()
		end
	end
for _,object in ipairs(minetest.get_objects_inside_radius(pos, 3)) do
			if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "experience:orb_blau" then
				if object:get_luaentity().collect then
					local pos1 = pos
					pos1.y = pos1.y+0.2
					local pos2 = object:get_pos()
					local vec = {x=pos1.x-pos2.x, y=pos1.y-pos2.y, z=pos1.z-pos2.z}
					vec.x = vec.x*3
					vec.y = vec.y*3
					vec.z = vec.z*3
					object:setvelocity(vec)
				end
			end
		end
	end
end)

minetest.register_entity("experience:orb_blau", {
	physical = true,
	timer = 0,
	textures = {"orb_blau.png"},
	visual_size = {x=0.3, y=0.3},
	collisionbox = {-0.17,-0.17,-0.17,0.17,0.17,0.17},
	on_activate = function(self, staticdata)
		self.object:set_armor_groups({immortal=1})
		self.object:setvelocity({x=0, y=1, z=0})
		self.object:setacceleration({x=0, y=-10, z=0})
	end,
	collect = true,
	on_step = function(self, dtime)
		self.timer = self.timer + dtime
		if (self.timer > 300) then
			self.object:remove()
		end
		local p = self.object:get_pos()
		local nn = minetest.get_node(p).name
		noder = minetest.get_node(p).name
		p.y = p.y - 0.3
		local nn = minetest.get_node(p).name
		if not minetest.registered_nodes[nn] or minetest.registered_nodes[nn].walkable then
			if self.physical_state then
				self.object:setvelocity({x=0, y=0, z=0})
				self.object:setacceleration({x=0, y=0, z=0})
				self.physical_state = false
				self.object:set_properties({
					physical = false
				})
			end
		else
			if not self.physical_state then
				self.object:setvelocity({x=0,y=0,z=0})
				self.object:setacceleration({x=0, y=-10, z=0})
				self.physical_state = true
				self.object:set_properties({
					physical = true
				})
			end
		end
	end,
})














