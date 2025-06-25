minetest.register_on_dignode(function(pos, oldnode, digger)
	local namer = oldnode.name
	local see_if_mineral = minetest.get_item_group(namer, "xpc")
	if see_if_mineral > 0 then
		experience.add_orb(pos, "experience_cyan")
	end
end)

experience.register_xp_type("experience_cyan", {
	description = "",
	texture = "orb_cyan.png",
	on_xp_gain = function(player, new_xpc)
		sfinv.set_player_inventory_formspec(player)
		local player_inv = player:get_inventory()
		local h = 0
		for i=1,25 do
			local g = 0
			g = i*i
			if new_xpc == g then
				player_inv:add_item("xpi01", "tutorial:coin_cyan 1")
				player_inv:set_stack("xpi6", i, "tutorial:level"..i.."_cyan 1")
				minetest.sound_play("level_up", {
					to_player = player:get_player_name(),
				})
			end
		end
		if new_xpc == 900 then
			player_inv:add_item("xpi01", "tutorial:coin_cyan 5")
			player_inv:set_stack("xpi6", 26, "tutorial:levelMAX_cyan 1")
			minetest.sound_play("level_up", {
				to_player = player:get_player_name(),
			})
		end
	end,
})
