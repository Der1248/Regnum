minetest.register_on_dignode(function(pos, oldnode, digger)
	local namer = oldnode.name
	local see_if_mineral = minetest.get_item_group(namer, "xpg")
	if see_if_mineral > 0 then
		minetest.add_entity(pos, "experience:orb_grau")
	end
end)

minetest.register_on_newplayer(function(player)
	local file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_grau", "w")
	file:write("0")
	file:close()
end)

minetest.register_globalstep(function(dtime)
	for _,player in ipairs(minetest.get_connected_players()) do
		local pos = player:get_pos()
		pos.y = pos.y+0.5
		for _,object in ipairs(minetest.get_objects_inside_radius(pos, 1)) do
			if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "experience:orb_grau" then
				--RIGHT HERE ADD IN THE CODE TO UPGRADE PLAYERS 
				object:setvelocity({x=0,y=0,z=0})
				object:get_luaentity().name = "STOP"
				minetest.sound_play("orb", {
					to_player = player:get_player_name(),
				})
				xpg = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_grau", "r")
				experience_grau = xpg:read("*l")
				xpg:close()
				if experience_grau ~= nil then
					new_xpg = experience_grau + 1
					xpg_write = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_grau", "w")
					xpg_write:write(new_xpg)
					xpg_write:close()
                    local player_inv = player:get_inventory()
                    local h = 0
                    for i=1,100 do
                        local g = 0
                        local c = 0
                        if i < 11 then
                            g = i*1*5
                        elseif i < 21 then
                            g = 50+(i-10)*2*5
                        elseif i < 31 then
                            g = 150+(i-20)*3*5
                        elseif i < 41 then
                            g = 300+(i-30)*4*5
                        elseif i < 51 then
                            g = 500+(i-40)*5*5
                        elseif i < 61 then
                            g = 750+(i-50)*6*5
                        elseif i < 71 then
                            g = 1050+(i-60)*7*5
                        elseif i < 81 then
                            g = 1400+(i-70)*8*5
                        elseif i < 91 then
                            g = 1800+(i-80)*9*5
                        elseif i < 101 then
                            g = 2250+(i-90)*10*5
                        end
                        print(g)
                        if i < 11 then
                            c = 1
                        elseif i < 21 then
                            c = 2
                        elseif i < 31 then
                            c = 3
                        elseif i < 41 then
                            c = 4
                        elseif i < 51 then
                            c = 5
                        elseif i < 61 then
                            c = 6
                        elseif i < 71 then
                            c = 7
                        elseif i < 81 then
                            c = 8
                        elseif i < 91 then
                            c = 9
                        elseif i < 101 then
                            c = 10
                        end
                        if i == 10 or i == 20 or i == 30 or i == 40 or i == 50 or i == 60 or i == 70 or i == 80 or i == 90 then
                            h = 1
                        else
                            h = 0
                        end
                        if new_xpg == g then
                            if h == 1 then
                                player_inv:set_size("xpi04", 10)
                                player_inv:add_item("xpi04", "tutorial:xp_block") 
                            end
                            player_inv:set_size("xpi04", 10)
                            player_inv:add_item("xpi04", "tutorial:coin_grau "..c)
                            player_inv:set_size("xpi4", 100)
                            player_inv:set_stack("xpi4", i, "tutorial:level"..i.."_grau 1")
                            minetest.sound_play("level_up", {
							    to_player = player:get_player_name(),
						    })
                        end 
                    end
                    if new_xpg == 3200 then
						player_inv:set_size("xpi04", 10)
						player_inv:add_item("xpi04", "tutorial:coin_grau 90")
                        player_inv:add_item("xpi04", "tutorial:levelMAX_grau")
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
                    if new_xpg == 2750 then
						player_inv:set_size("xpi04", 10)
						player_inv:add_item("xpi04", "tutorial:legenden_schluessel")
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
				end
				object:remove()
		end
	end
for _,object in ipairs(minetest.get_objects_inside_radius(pos, 3)) do
			if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "experience:orb_grau" then
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

minetest.register_entity("experience:orb_grau", {
	physical = true,
	timer = 0,
	textures = {"orb_grau.png"},
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



