minetest.register_on_dignode(function(pos, oldnode, digger)
	local namer = oldnode.name
	local see_if_mineral = minetest.get_item_group(namer, "xpc")
	if see_if_mineral > 0 then
		experience.add_orb(pos, "experience_cyan")
	end
end)


minetest.register_globalstep(function(dtime)
	for _,player in ipairs(minetest.get_connected_players()) do
		local pos = player:get_pos()
		pos.y = pos.y+0.5
		for _,object in ipairs(minetest.get_objects_inside_radius(pos, 1)) do
			if experience.is_xp_orb(object, "experience_cyan") then
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
	end
end)
