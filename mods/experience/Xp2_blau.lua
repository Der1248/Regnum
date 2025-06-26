experience.register_xp_type("experience_blue", {
	description = "",
	texture = "orb_blau.png",
	on_xp_gain = function(player, new_xpb)
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
	end,
})
