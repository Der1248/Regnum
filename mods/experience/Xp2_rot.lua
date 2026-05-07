experience.register_xp_type("experience_red", {
	description = "Gained from Red Ore.",
	color = "#7f0000",
	texture = "orb_red.png",
	on_xp_gain = function(player, new_xpr)
		sfinv.set_player_inventory_formspec(player)
		local player_inv = player:get_inventory()
		local player_name = player:get_player_name()

		local level_xp = 0
		for level = 1, 20 do
			level_xp = level_xp + level
			local coins = math.ceil(level / 5)

			if new_xpr == level_xp then
				player_inv:add_item("xpi01", "tutorial:coin_rot " .. coins)
				player_inv:set_stack("xpi2", level, "tutorial:level" .. level .. "_rot")
				minetest.sound_play("level_up", {
					to_player = player_name,
				})
			end
			-- print(string.format("Level: %2d, Level XP: %3d, Coins: %1d", level, level_xp, coins))
		end

		if new_xpr == 210 then -- Level 20
			player_inv:add_item("xpi01", "tutorial:xp_rot")
		end

		if new_xpr == 250 then -- Level 21
			player_inv:add_item("xpi01", "tutorial:coin_rot 5")
			player_inv:set_stack("xpi2", 21, "tutorial:levelMAX_rot")
			minetest.sound_play("level_up", {
				to_player = player_name,
			})
		end
	end,
})
