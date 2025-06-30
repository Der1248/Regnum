experience.register_xp_type("experience_grey", {
	description = "",
	color = "#666666",
	texture = "orb_grey.png",
	on_xp_gain = function(player, new_xpg)
		sfinv.set_player_inventory_formspec(player)
		local player_inv = player:get_inventory()
		local h = 0
		for i=1,100 do
			local g = 0
			local c = 0
			if i < 11 then
				g = i*1*5
			elseif i < 21 then
				g = 50+(i-10)*2*5
			elseif i < 31 then
				g = 150+(i-20)*3*5
			elseif i < 41 then
				g = 300+(i-30)*4*5
			elseif i < 51 then
				g = 500+(i-40)*5*5
			elseif i < 61 then
				g = 750+(i-50)*6*5
			elseif i < 71 then
				g = 1050+(i-60)*7*5
			elseif i < 81 then
				g = 1400+(i-70)*8*5
			elseif i < 91 then
				g = 1800+(i-80)*9*5
			elseif i < 101 then
				g = 2250+(i-90)*10*5
			end
			print(g)
			if i < 11 then
				c = 1
			elseif i < 21 then
				c = 2
			elseif i < 31 then
				c = 3
			elseif i < 41 then
				c = 4
			elseif i < 51 then
				c = 5
			elseif i < 61 then
				c = 6
			elseif i < 71 then
				c = 7
			elseif i < 81 then
				c = 8
			elseif i < 91 then
				c = 9
			elseif i < 101 then
				c = 10
			end
			if i == 10 or i == 20 or i == 30 or i == 40 or i == 50 or i == 60 or i == 70 or i == 80 or i == 90 then
				h = 1
			else
				h = 0
			end
			if new_xpg == g then
				if h == 1 then
					player_inv:add_item("xpi01", "tutorial:xp_block")
				end
				player_inv:add_item("xpi01", "tutorial:coin_grau "..c)
				player_inv:set_stack("xpi4", i, "tutorial:level"..i.."_grau 1")
				minetest.sound_play("level_up", {
					to_player = player:get_player_name(),
				})
			end
		end
		if new_xpg == 3200 then
			player_inv:add_item("xpi01", "tutorial:coin_grau 90")
			player_inv:set_stack("xpi4", 101, "tutorial:levelMAX_grau")
			minetest.sound_play("level_up", {
				to_player = player:get_player_name(),
			})
		end
		if new_xpg == 2750 then
			player_inv:add_item("xpi01", "tutorial:legenden_schluessel")
			minetest.sound_play("level_up", {
				to_player = player:get_player_name(),
			})
		end
	end,
})
