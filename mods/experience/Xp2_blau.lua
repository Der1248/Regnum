minetest.register_on_dignode(function(pos, oldnode, digger)
	local namer = oldnode.name
	local see_if_mineral = minetest.get_item_group(namer, "xpb")
	if see_if_mineral > 0 then
		experience.add_orb(pos, "experience_blau")
	end
end)


minetest.register_globalstep(function(dtime)
	for _,player in ipairs(minetest.get_connected_players()) do
		local pos = player:get_pos()
		pos.y = pos.y+0.5
		for _,object in ipairs(minetest.get_objects_inside_radius(pos, 1)) do
			if experience.is_xp_orb(object, "experience_blau") then
				--RIGHT HERE ADD IN THE CODE TO UPGRADE PLAYERS
				object:set_velocity({x=0,y=0,z=0})
				object:get_luaentity().name = "STOP"
				minetest.sound_play("orb", {
					to_player = player:get_player_name(),
				})

				local old_xpb = experience.get(player, "experience_blau")
				if old_xpb ~= nil then
					local new_xpb = old_xpb + 1
					experience.set(player, "experience_blau", new_xpb)

					sfinv.set_player_inventory_formspec(player)
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
                            player_inv:add_item("xpi01", "tutorial:coin_blau "..g)
                            player_inv:set_stack("xpi3", i, "tutorial:level"..i.."_blau")
                            minetest.sound_play("level_up", {
							    to_player = player:get_player_name(),
						    })
					    end
                    end
                    if new_xpb == 250 then
                        player_inv:add_item("xpi01", "tutorial:coin_blau 5")
                        player_inv:set_stack("xpi3", 21, "tutorial:levelMAX_blau")
                        minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
                    if new_xpb == 210 then
                        player_inv:add_item("xpi01", "tutorial:xp_blau")
                        minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
				end
			object:remove()
			end
		end
	end
end)
