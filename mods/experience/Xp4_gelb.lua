experience.register_xp_type("experience_yellow", {
	description = "Gained from Yellow XP Block",
	color = "#ffff00",
	texture = "orb_yellow.png",
	on_xp_gain = function(player, new_xpy)
		sfinv.set_player_inventory_formspec(player)
		local player_inv = player:get_inventory()
		local player_name = player:get_player_name()

		local level_xp = 0
		for level = 1, 100 do
			level_xp = level_xp + math.ceil(level / 10)

			if new_xpy == level_xp then
				player_inv:add_item("xpi01", "tutorial:coin_gelb 1")
				player_inv:set_stack("xpi5", level, "tutorial:level" .. level .. "_gelb 1")
				minetest.sound_play("level_up", {
					to_player = player_name,
				})
			end
			-- print(string.format("Level: %3d, Level XP: %3d", level, level_xp))
		end

		if new_xpy == 550 then -- Level 100
			player_inv:add_item("xpi01", "tutorial:golden_schluessel")
		end

		if new_xpy == 600 then -- Level 101
			player_inv:add_item("xpi01", "tutorial:coin_gelb 4")
			player_inv:set_stack("xpi5", 101, "tutorial:levelMAX_gelb 1")
			minetest.sound_play("level_up", {
				to_player = player_name,
			})
		end
	end,
})
