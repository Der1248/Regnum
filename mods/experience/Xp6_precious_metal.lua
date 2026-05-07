experience.register_xp_type("experience_bronze", {
	description = "Gained from Precious Metal.",
	color = "#cd7f32",
	texture = "orb_bronze.png",
	on_xp_gain = function(player, new_xp)
		sfinv.set_player_inventory_formspec(player)
		local player_inv = player:get_inventory()
		local player_name = player:get_player_name()

		local level_xp = 0
		for level = 1, 100 do
			level_xp = level_xp + (math.ceil(level / 10) * 2)

			if new_xp == level_xp then
				player_inv:add_item("xpi01", "tutorial:coin_bronze 1")
				player_inv:set_stack("xpi7", level, "tutorial:level" .. level .. "_bronze 1")
				minetest.sound_play("level_up", {
					to_player = player_name,
				})
			end
			-- print(string.format("Level: %3d, Level XP: %4d", level, level_xp))
		end

		if new_xp == 1100 then -- Level 100
			player_inv:add_item("xpi01", "tutorial:bronzekey")
		end

		if new_xp == 1500 then -- Level 101
			player_inv:add_item("xpi01", "tutorial:coin_bronze 4")
			player_inv:set_stack("xpi7", 101, "tutorial:levelMAX_bronze 1")
			minetest.sound_play("level_up", {
				to_player = player_name,
			})
		end
	end,
})

experience.register_xp_type("experience_silver", {
	description = "Gained from Precious Metal with a Bronze Key equiped.",
	color = "#c0c0c0",
	texture = "orb_silver.png",
	max_xp = 840,
	on_xp_gain = function(player, new_xp)
		sfinv.set_player_inventory_formspec(player)
		local player_inv = player:get_inventory()
		local player_name = player:get_player_name()

		local level_xp = 0
		for level = 1, 60 do
			level_xp = level_xp + (math.ceil(level / 10) * 4)
			if new_xp == level_xp then
				player_inv:add_item("xpi01", "tutorial:coin_silver 1")
				player_inv:set_stack("xpi8", level, "tutorial:level" .. level .. "_silver 1")
				minetest.sound_play("level_up", {
					to_player = player_name,
				})
			end
			-- print(string.format("Level: %3d, Level XP: %4d", level, level_xp))
		end
		--[[
		if new_xp == 2200 then -- Level 100
			player_inv:set_size("xpi01", 10)
			player_inv:add_item("xpi01", "tutorial:bronzekey")
			minetest.sound_play("level_up", {
				to_player = player_name,
			})
		end

		if new_xp == 3000 then -- Level 101
			player_inv:set_size("xpi01", 10)
			player_inv:add_item("xpi01", "tutorial:coin_bronze 4")
			player_inv:add_item("xpi01", "tutorial:levelMAX_bronze 1")
			minetest.sound_play("level_up", {
				to_player = player_name,
			})
		end
		--]]
	end,
})
