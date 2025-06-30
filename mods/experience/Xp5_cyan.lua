experience.register_xp_type("experience_cyan", {
	description = "Gained from Crystal Bottles.",
	color = "#007f7f",
	texture = "orb_cyan.png",
	on_xp_gain = function(player, new_xpc)
		sfinv.set_player_inventory_formspec(player)
		local player_inv = player:get_inventory()
		local player_name = player:get_player_name()

		for level = 1, 25 do
			local level_xp = level * level

			if new_xpc == level_xp then
				player_inv:add_item("xpi01", "tutorial:coin_cyan 1")
				player_inv:set_stack("xpi6", level, "tutorial:level" .. level .. "_cyan 1")
				core.sound_play("level_up", {
					to_player = player_name,
				})
			end
		end
		if new_xpc == 900 then
			player_inv:add_item("xpi01", "tutorial:coin_cyan 5")
			player_inv:set_stack("xpi6", 26, "tutorial:levelMAX_cyan 1")
			core.sound_play("level_up", {
				to_player = player_name,
			})
		end
	end,
})
