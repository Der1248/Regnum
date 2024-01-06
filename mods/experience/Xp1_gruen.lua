--add an experience orb if player digs node from xp group
minetest.register_on_dignode(function(pos, oldnode, digger)
	local namer = oldnode.name
	local see_if_mineral = minetest.get_item_group(namer, "xp")
	if see_if_mineral > 0 then
		minetest.add_entity(pos, "experience:orb")
	end
end)
--give a new player some xp
minetest.register_on_newplayer(function(player)
	local file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience", "w")
	file:write("0")
	file:close()
end)
--Allow people to collect orbs
minetest.register_globalstep(function(dtime)
	for _,player in ipairs(minetest.get_connected_players()) do
		local pos = player:get_pos()
		pos.y = pos.y+0.5
		for _,object in ipairs(minetest.get_objects_inside_radius(pos, 1)) do
			if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "experience:orb" then
				--RIGHT HERE ADD IN THE CODE TO UPGRADE PLAYERS 
				object:setvelocity({x=0,y=0,z=0})
				object:get_luaentity().name = "STOP"
				minetest.sound_play("orb", {
					to_player = player:get_player_name(),
				})
				xp = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience", "r")
				experience = xp:read("*l")
				xp:close()
				if experience ~= nil then
					new_xp = experience + 1
					xp_write = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience", "w")
					xp_write:write(new_xp)
					xp_write:close()
                    local player_inv = player:get_inventory()
                    local vv = 0
                    local h = 0
                    for i=1,100 do
                        local g = 0
                        local c = 0
                        if i < 6 then
                            g = i*1*10
                        elseif i < 11 then
                            g = 50+(i-5)*2*10
                        elseif i < 16 then
                            g = 150+(i-10)*3*10
                        elseif i < 21 then
                            g = 300+(i-15)*4*10
                        elseif i < 26 then
                            g = 500+(i-20)*5*10
                        elseif i < 31 then
                            g = 750+(i-25)*6*10
                        elseif i < 36 then
                            g = 1050+(i-30)*7*10
                        elseif i < 41 then
                            g = 1400+(i-35)*8*10
                        elseif i < 46 then
                            g = 1800+(i-40)*9*10
                        elseif i < 51 then
                            g = 2250+(i-45)*10*10
                        elseif i < 56 then
                            g = 2750+(i-50)*11*10
                        elseif i < 61 then
                            g = 3300+(i-55)*12*10
                        elseif i < 66 then
                            g = 3900+(i-60)*13*10
                        elseif i < 71 then
                            g = 4550+(i-65)*14*10
                        elseif i < 76 then
                            g = 5250+(i-70)*15*10
                        elseif i < 81 then
                            g = 6000+(i-75)*16*10
                        elseif i < 86 then
                            g = 6800+(i-80)*17*10
                        elseif i < 91 then
                            g = 7650+(i-85)*18*10
                        elseif i < 96 then
                            g = 8550+(i-90)*19*10
                        elseif i < 101 then
                            g = 9500+(i-95)*20*10
                        end
                        if i < 6 then
                            c = 1
                        elseif i < 11 then
                            c = 2
                        elseif i < 16 then
                            c = 3
                        elseif i < 21 then
                            c = 4
                        elseif i < 26 then
                            c = 5
                        elseif i < 31 then
                            c = 6
                        elseif i < 36 then
                            c = 7
                        elseif i < 41 then
                            c = 8
                        elseif i < 46 then
                            c = 9
                        elseif i < 51 then
                            c = 10
                        elseif i < 56 then
                            c = 11
                        elseif i < 61 then
                            c = 12
                        elseif i < 66 then
                            c = 13
                        elseif i < 71 then
                            c = 14
                        elseif i < 76 then
                            c = 15
                        elseif i < 81 then
                            c = 16
                        elseif i < 86 then
                            c = 17
                        elseif i < 91 then
                            c = 18
                        elseif i < 96 then
                            c = 19
                        elseif i < 101 then
                            c = 20
                        end
                        if (new_xp >= g) then
                            vv = i
                        end
                        if (new_xp >= 11950) then
                            vv = 101
                        end
                        if i == 100 then
                            local fi = 0
                            local se = 0
                            player_inv:set_size("exp", 1)
                            local coun = player_inv:get_stack("exp", 1):get_count()
                            for cou=1,coun do
                                if cou < 6 and cou > 0 then
                                    fi = fi+1
                                elseif cou < 11 and cou > 0 then
                                    fi = fi+2
                                elseif cou < 16 and cou > 0 then
                                    fi = fi+3
                                elseif cou < 21 and cou > 0 then
                                    fi = fi+4
                                elseif cou < 26 and cou > 0 then
                                    fi = fi+5
                                elseif cou < 31 and cou > 0 then
                                    fi = fi+6
                                elseif cou < 36 and cou > 0 then
                                    fi = fi+7
                                elseif cou < 41 and cou > 0 then
                                    fi = fi+8
                                elseif cou < 46 and cou > 0 then
                                    fi = fi+9
                                elseif cou < 51 and cou > 0 then
                                    fi = fi+10
                                elseif cou < 56 and cou > 0 then
                                    fi = fi+11
                                elseif cou < 61 and cou > 0 then
                                    fi = fi+12
                                elseif cou < 66 and cou > 0 then
                                    fi = fi+13
                                elseif cou < 71 and cou > 0 then
                                    fi = fi+14
                                elseif cou < 76 and cou > 0 then
                                    fi = fi+15
                                elseif cou < 81 and cou > 0 then
                                    fi = fi+16
                                elseif cou < 86 and cou > 0 then
                                    fi = fi+17
                                elseif cou < 91 and cou > 0 then
                                    fi = fi+18
                                elseif cou < 96 and cou > 0 then
                                    fi = fi+19
                                elseif cou < 101 and cou > 0 then
                                    fi = fi+20
                                end
                            end
                            for v=1,vv do
                                if v < 6 and v > 0 then
                                    se = se+1
                                elseif v < 11 and v > 0 then
                                    se = se+2
                                elseif v < 16 and v > 0 then
                                    se = se+3
                                elseif v < 21 and v > 0 then
                                    se = se+4
                                elseif v < 26 and v > 0 then
                                    se = se+5
                                elseif v < 31 and v > 0 then
                                    se = se+6
                                elseif v < 36 and v > 0 then
                                    se = se+7
                                elseif v < 41 and v > 0 then
                                    se = se+8
                                elseif v < 46 and v > 0 then
                                    se = se+9
                                elseif v < 51 and v > 0 then
                                    se = se+10
                                elseif v < 56 and v > 0 then
                                    se = se+11
                                elseif v < 61 and v > 0 then
                                    se = se+12
                                elseif v < 66 and v > 0 then
                                    se = se+13
                                elseif v < 71 and v > 0 then
                                    se = se+14
                                elseif v < 76 and v > 0 then
                                    se = se+15
                                elseif v < 81 and v > 0 then
                                    se = se+16
                                elseif v < 86 and v > 0 then
                                    se = se+17
                                elseif v < 91 and v > 0 then
                                    se = se+18
                                elseif v < 96 and v > 0 then
                                    se = se+19
                                elseif v < 101 and v > 0 then
                                    se = se+20
                                end
                            end
                            local en = se-fi
                            player_inv:set_size("xpi01", 15)
                            player_inv:add_item("xpi01", "tutorial:coin2 "..en)
                            if vv ~= 0 then
                                player_inv:set_stack("exp", 1, "default:dirt "..vv)
                            end
                            if new_xp >= 11950 and coun ~= 101 then
						    player_inv:set_size("xpi01", 15)
						    player_inv:add_item("xpi01", "tutorial:coin2 145")
						    minetest.sound_play("level_up", {
							    to_player = player:get_player_name(),
						    })
					    end
                        end
                        if new_xp == g then
                            player_inv:set_size("xpi01", 15)
                            player_inv:add_item("xpi01", "tutorial:coin "..c)
                            player_inv:set_size("xpi1", 100)
                            player_inv:set_stack("xpi1", i, "tutorial:level"..i.." 1")
                            minetest.sound_play("level_up", {
							    to_player = player:get_player_name(),
						    })
                        end
                    end
                    if new_xp == 2750 then
                        player_inv:set_size("xpi01", 15)
						player_inv:add_item("xpi01", "tutorial:level_schluessel 1")
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
                    if new_xp == 10500 then
                        player_inv:set_size("xpi01", 15)
						player_inv:add_item("xpi01", "tutorial:lilabattleaxe")
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
                    if new_xp == 11950 then
						player_inv:set_size("xpi01", 15)
						player_inv:add_item("xpi01", "tutorial:coin 145")
                        player_inv:add_item("xpi01", "tutorial:levelMAX")
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
				end
				object:remove()
			end
		end
		for _,object in ipairs(minetest.get_objects_inside_radius(pos, 3)) do
			if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "experience:orb" then
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

minetest.register_entity("experience:orb", {
	physical = true,
	timer = 0,
	textures = {"orb.png"},
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
		if p == nil then
			return
		end
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
