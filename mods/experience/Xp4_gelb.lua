experience.register_xp_type("experience_yellow", {
	description = "",
	texture = "orb_gelb.png",
	on_xp_gain = function(player, new_xpy)
		sfinv.set_player_inventory_formspec(player)
		local player_inv = player:get_inventory()
		local h = 0
		for i=1,100 do
			local g = 0
			if i < 11 then
				g = i*1
			elseif i < 21 then
				g = 10+(i-10)*2
			elseif i < 31 then
				g = 30+(i-20)*3
			elseif i < 41 then
				g = 60+(i-30)*4
			elseif i < 51 then
				g = 100+(i-40)*5
			elseif i < 61 then
				g = 150+(i-50)*6
			elseif i < 71 then
				g = 210+(i-60)*7
			elseif i < 81 then
				g = 280+(i-70)*8
			elseif i < 91 then
				g = 360+(i-80)*9
			elseif i < 101 then
				g = 450+(i-90)*10
			end
			if new_xpy == g then
				player_inv:add_item("xpi01", "tutorial:coin_gelb 1")
				player_inv:set_stack("xpi5", i, "tutorial:level"..i.."_gelb 1")
				minetest.sound_play("level_up", {
					to_player = player:get_player_name(),
				})
			end
		end
		if new_xpy == 550 then
			player_inv:add_item("xpi01", "tutorial:golden_schluessel")
			minetest.sound_play("level_up", {
				to_player = player:get_player_name(),
			})
		end
		if new_xpy == 600 then
			player_inv:add_item("xpi01", "tutorial:coin_gelb 4")
			player_inv:set_stack("xpi5", 101, "tutorial:levelMAX_gelb 1")
			minetest.sound_play("level_up", {
				to_player = player:get_player_name(),
			})
		end
	end,
})
