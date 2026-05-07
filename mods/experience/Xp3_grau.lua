experience.register_xp_type("experience_grey", {
	description = "Gained from Grey XP Block.",
	color = "#666666",
	texture = "orb_grey.png",
	on_xp_gain = function(player, new_xpg)
		sfinv.set_player_inventory_formspec(player)
		local player_inv = player:get_inventory()
		local player_name = player:get_player_name()

		local level_xp = 0
		local xp_block = false
		for level = 1, 100 do
			level_xp = level_xp + (math.ceil(level / 10) * 5)
			local coins = math.ceil(level / 10)

			if level % 10 == 0 then
				xp_block = true
			else
				xp_block = false
			end

			if new_xpg == level_xp then
				if xp_block then
					-- NOTE: why? isn't this utterly useless?
					player_inv:add_item("xpi01", "tutorial:xp_block")
				end
				player_inv:add_item("xpi01", "tutorial:coin_grau " .. coins)
				player_inv:set_stack("xpi4", level, "tutorial:level" .. level .. "_grau 1")
				minetest.sound_play("level_up", {
					to_player = player_name,
				})
			end
			-- print(string.format("Level: %3d, Level XP: %4d, Coins: %2d, XP Block Reward: %s", level, level_xp, coins, xp_block and "yes" or "no"))
		end

		if new_xpg == 2750 then -- Level 100
			player_inv:add_item("xpi01", "tutorial:legenden_schluessel")
		end

		if new_xpg == 3200 then -- Level 101
			player_inv:add_item("xpi01", "tutorial:coin_grau 90")
			player_inv:set_stack("xpi4", 101, "tutorial:levelMAX_grau")
			minetest.sound_play("level_up", {
				to_player = player_name,
			})
		end
	end,
})
