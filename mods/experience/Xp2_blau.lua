experience.register_xp_type("experience_blue", {
	description = "Gained from Blue Ore.",
	color = "#00007f",
	texture = "orb_blue.png",
	on_xp_gain = function(player, new_xpb)
		sfinv.set_player_inventory_formspec(player)
		local player_inv = player:get_inventory()
		local player_name = player:get_player_name()

		local level_xp = 0
		for level = 1, 20 do
			level_xp = level_xp + level
			local coins = math.ceil(level / 5)

			if new_xpb == level_xp then
				player_inv:add_item("xpi01", "tutorial:coin_blau " .. coins)
				player_inv:set_stack("xpi3", level, "tutorial:level" .. level .. "_blau")
				minetest.sound_play("level_up", {
					to_player = player_name,
				})
			end
			-- print(string.format("Level: %2d, Level XP: %3d, Coins: %1d", level, level_xp, coins))
		end

		if new_xpb == 210 then -- Level 20
			player_inv:add_item("xpi01", "tutorial:xp_blau")
		end

		if new_xpb == 250 then -- Level 21
			player_inv:add_item("xpi01", "tutorial:coin_blau 5")
			player_inv:set_stack("xpi3", 21, "tutorial:levelMAX_blau")
			minetest.sound_play("level_up", {
				to_player = player_name,
			})
		end
	end,
})
