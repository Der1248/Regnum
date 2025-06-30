experience.register_xp_type("experience_bronze", {
	description = "",
	color = "#cd7f32",
	texture = "orb_bronze.png",
	on_xp_gain = function(player, new_xp)
		sfinv.set_player_inventory_formspec(player)
		local player_inv = player:get_inventory()
		local h = 0
		for i=1,100 do
			local g = 0
			if i < 11 then
				g = i*2
			elseif i < 21 then
				g = 20+(i-10)*4
			elseif i < 31 then
				g = 60+(i-20)*6
			elseif i < 41 then
				g = 120+(i-30)*8
			elseif i < 51 then
				g = 200+(i-40)*10
			elseif i < 61 then
				g = 300+(i-50)*12
			elseif i < 71 then
				g = 420+(i-60)*14
			elseif i < 81 then
				g = 560+(i-70)*16
			elseif i < 91 then
				g = 720+(i-80)*18
			elseif i < 101 then
				g = 900+(i-90)*20
			end
			if new_xp == g then
				player_inv:add_item("xpi01", "tutorial:coin_bronze 1")
				player_inv:set_stack("xpi7", i, "tutorial:level"..i.."_bronze 1")
				minetest.sound_play("level_up", {
					to_player = player:get_player_name(),
				})
			end
		end
		if new_xp == 1100 then
			player_inv:add_item("xpi01", "tutorial:bronzekey")
			minetest.sound_play("level_up", {
				to_player = player:get_player_name(),
			})
		end
		if new_xp == 1500 then
			player_inv:add_item("xpi01", "tutorial:coin_bronze 4")
			player_inv:set_stack("xpi7", 101, "tutorial:levelMAX_bronze 1")
			minetest.sound_play("level_up", {
				to_player = player:get_player_name(),
			})
		end
	end,
})

experience.register_xp_type("experience_silver", {
	description = "",
	color = "#c0c0c0",
	texture = "orb_silver.png",
	on_xp_gain = function(player, new_xp)
		sfinv.set_player_inventory_formspec(player)
		local player_inv = player:get_inventory()
		local h = 0
		for i=1,100 do
			local g = 0
			if i < 11 then
				g = i*4
			elseif i < 21 then
				g = 40+(i-10)*8
			elseif i < 31 then
				g = 120+(i-20)*12
			elseif i < 41 then
				g = 240+(i-30)*16
			elseif i < 51 then
				g = 400+(i-40)*20
			elseif i < 61 then
				g = 600+(i-50)*24
			elseif i < 71 then
				g = 840+(i-60)*28
			elseif i < 81 then
				g = 1120+(i-70)*32
			elseif i < 91 then
				g = 1440+(i-80)*36
			elseif i < 101 then
				g = 1800+(i-90)*40
			end
			if new_xp == g then
				player_inv:add_item("xpi01", "tutorial:coin_silver 1")
				player_inv:set_stack("xpi8", i, "tutorial:level"..i.."_silver 1")
				minetest.sound_play("level_up", {
					to_player = player:get_player_name(),
				})
			end
		end
		--[[
		if new_xp == 2200 then
			player_inv:set_size("xpi01", 10)
			player_inv:add_item("xpi01", "tutorial:bronzekey")
			minetest.sound_play("level_up", {
				to_player = player:get_player_name(),
			})
		end
		if new_xp == 3000 then
			player_inv:set_size("xpi01", 10)
			player_inv:add_item("xpi01", "tutorial:coin_bronze 4")
			player_inv:add_item("xpi01", "tutorial:levelMAX_bronze 1")
			minetest.sound_play("level_up", {
				to_player = player:get_player_name(),
			})
		end
		--]]
	end,
})
