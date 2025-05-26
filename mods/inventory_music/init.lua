
inventory_music = {}
inventory_music.sound_time = 0
inventory_music.sound_play_on = 0
inventory_music.sound_play_regnum = {}
inventory_music.inst_list = {}

minetest.register_globalstep(function(dtime)
    if inventory_music.sound_play_on == 0 then
        inventory_music.sound_play_on = 1
        for _,player in ipairs(minetest.get_connected_players()) do
			inventory_music.inst_list = {}
            local player_inv = player:get_inventory()
            local inst1 = player_inv:get_stack("inst", 1):get_count()
            local inst2 = player_inv:get_stack("inst", 2):get_count()
            if inst1 == 1 then
                table.insert(inventory_music.inst_list, "Theme1")
            end
            if inst2 == 1 then
                table.insert(inventory_music.inst_list, "Theme2")
            end
            if inst1 == 1 or inst2 == 1 then
                local inst = inventory_music.inst_list[ math.random(#inventory_music.inst_list)]
                local music = player_inv:get_stack("music", 1):get_count()
                if music == 1 then
                    inventory_music.sound_play_regnum[player:get_player_name()] = minetest.sound_play(inst, {
	                    to_player = player:get_player_name(),
                    })
                end
            end
        end
    end
    inventory_music.sound_time = inventory_music.sound_time+dtime
    if inventory_music.sound_time > 120 then
        inventory_music.sound_time = 0
        inventory_music.sound_play_on = 0
    end
end)



inventory_music.get_formspec = function(player)
    local player_inv = player:get_inventory()
    player_inv:set_size("music", 1)
    player_inv:set_size("inst", 10)
    local music = player_inv:get_stack("music", 1):get_count()
    local inst1 = player_inv:get_stack("inst", 1):get_count()
    local inst2 = player_inv:get_stack("inst", 2):get_count()
	formspec = "button[0,0;2,0.5;back;Back]"
        if music == 0 then
            formspec = formspec.."checkbox[0,1;music;Background Music on;false]"
        end
        if music == 1 then
            formspec = formspec.."checkbox[0,1;music;Background Music on;true]"
        end
        if inst1 == 0 and music == 1 then
            formspec = formspec.."checkbox[0.5,1.5;inst1;1248's Theme 1;false]"
        end
        if inst1 == 1 and music == 1 then
            formspec = formspec.."checkbox[0.5,1.5;inst1;1248's Theme 1;true]"
        end
        if inst2 == 0 and music == 1 then
            formspec = formspec.."checkbox[0.5,1.8;inst2;1248's Theme 2;false]"
        end
        if inst2 == 1 and music == 1 then
            formspec = formspec.."checkbox[0.5,1.8;inst2;1248's Theme 2;true]"
        end
	return formspec		
end