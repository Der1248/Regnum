experience.register_xp_type("experience_green", {
	description = "Gained from Uranium Ore.",
	color = "#007f00",
	texture = "orb_green.png",
	on_xp_gain = function(player, new_xp)
		sfinv.set_player_inventory_formspec(player)
		local player_inv = player:get_inventory()
		local player_name = player:get_player_name()

		local level_xp = 0
		for level = 1, 100 do
			level_xp = level_xp + (math.ceil(level / 5) * 10)
			local coins = math.ceil(level / 5)

			if new_xp == level_xp then
				player_inv:add_item("xpi01", "tutorial:coin " .. coins)
				player_inv:add_item("xpi01", "tutorial:coin2 " .. coins)
				player_inv:set_stack("xpi1", level, "tutorial:level" .. level .. " 1")
				minetest.sound_play("level_up", {
					to_player = player_name,
				})
			end
			-- print(string.format("Level: %3d, Level XP: %5d, Coins: %2d", level, level_xp, coins))
		end

		if new_xp == 2750 then -- Level 50
			player_inv:add_item("xpi01", "tutorial:level_schluessel 1")
		end
		if new_xp == 10500 then -- Level 100
			player_inv:add_item("xpi01", "tutorial:lilabattleaxe")
		end

		if new_xp == 11950 then -- Level 101
			player_inv:add_item("xpi01", "tutorial:coin 145")
			player_inv:add_item("xpi01", "tutorial:coin2 145")
			player_inv:set_stack("xpi1", 101, "tutorial:levelMAX")
			minetest.sound_play("level_up", {
				to_player = player_name,
			})
		end
	end,
})
