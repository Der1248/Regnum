minetest.register_on_joinplayer(function(player)
	minetest.setting_set("node_highlighting", "box")
    minetest.setting_set("disable_anticheat", "true")
    minetest.setting_set("bones_mode", "keep")
    minetest.setting_set("time_speed", "0")
    minetest.set_timeofday(0.5)
    local player_inv = player:get_inventory()
    local g1 = player_inv:get_stack("gem", 1):get_name()
    local g2 = player_inv:get_stack("gem", 2):get_name()
    local g3 = player_inv:get_stack("gem", 3):get_name()
    local g4 = player_inv:get_stack("gem", 4):get_name()
    local g5 = player_inv:get_stack("gem", 5):get_name()
    local g21 = player_inv:get_stack("2gem", 1):get_name()
    local g22 = player_inv:get_stack("2gem", 2):get_name()
    local g23 = player_inv:get_stack("2gem", 3):get_name()
    local g24 = player_inv:get_stack("2gem", 4):get_name()
    local g25 = player_inv:get_stack("2gem", 5):get_name()
    local gg1 = 0
    local gg2 = 0
    local gg3 = 0
    local gg4 = 0
    local gg5 = 0
    local gg21 = 0
    local gg22 = 0
    local gg23 = 0
    local gg24 = 0
    local gg25 = 0
    if g1 == "tutorial:magic_gem1" then
        gg1 = 1
    end
    if g2 == "tutorial:magic_gem2" then
        gg2 = 1
    end
    if g3 == "tutorial:magic_gem3" then
        gg3 = 1
    end
    if g4 == "tutorial:magic_gem4" then
        gg4 = 1
    end
    if g5 == "tutorial:magic_gem5" then
        gg5 = 1
    end
    if g21 == "tutorial:magic_gem1" then
        gg21 = 1
    end
    if g22 == "tutorial:magic_gem2" then
        gg22 = 1
    end
    if g23 == "tutorial:magic_gem3" then
        gg23 = 1
    end
    if g24 == "tutorial:magic_gem4" then
        gg24 = 1
    end
    if g25 == "tutorial:magic_gem5" then
        gg25 = 1
    end
    if gg1 == 1 and gg2 == 1 and gg3 == 1 and gg4 == 1 and gg5 == 1 then
		local punched_player_privs = minetest.get_player_privs(player:get_player_name())
		punched_player_privs["home"] = true
        punched_player_privs["zoom"] = true
		minetest.set_player_privs(player:get_player_name(), punched_player_privs)
    end
    if gg21 == 1 and gg22 == 1 and gg23 == 1 and gg24 == 1 and gg25 == 1 then
        local punched_player_privs = minetest.get_player_privs(player:get_player_name())
		punched_player_privs["fast"] = true
		minetest.set_player_privs(player:get_player_name(), punched_player_privs)
    end
end)
minetest.register_on_shutdown(function()
    minetest.setting_set("disable_anticheat", "false")
    minetest.setting_set("bones_mode", "bones")
    minetest.setting_set("time_speed", "72")
end)
local gem = {}
gem.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    player_inv:set_size("gem", 5)
    player_inv:set_size("2gem", 5)
    local g1 = player_inv:get_stack("gem", 1):get_name()
    local g2 = player_inv:get_stack("gem", 2):get_name()
    local g3 = player_inv:get_stack("gem", 3):get_name()
    local g4 = player_inv:get_stack("gem", 4):get_name()
    local g5 = player_inv:get_stack("gem", 5):get_name()
    local g21 = player_inv:get_stack("2gem", 1):get_name()
    local g22 = player_inv:get_stack("2gem", 2):get_name()
    local g23 = player_inv:get_stack("2gem", 3):get_name()
    local g24 = player_inv:get_stack("2gem", 4):get_name()
    local g25 = player_inv:get_stack("2gem", 5):get_name()
	formspec = "size[8,8.3]"
	    .."button[0,0;2,0.5;inven;Back]"
	    .."button[2,0;2,0.5;main;Main]"
        .."background[8,8.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."image[1.5,1.25;1,1;tutorial_gem1.png]"
        .."image[2.5,1.25;1,1;tutorial_gem2.png]"
        .."image[3.5,1.25;1,1;tutorial_gem3.png]"
        .."image[4.5,1.25;1,1;tutorial_gem4.png]"
        .."image[5.5,1.25;1,1;tutorial_gem5.png]"
        if g1 == "tutorial:magic_gem1" and g2 == "tutorial:magic_gem2" and g3 == "tutorial:magic_gem3" and g4 == "tutorial:magic_gem4" and g5 == "tutorial:magic_gem5" then
        else
            formspec = formspec
            .."list[current_player;gem;1.5,1.25;5,1;]"
        end
        if g21 == "tutorial:magic_gem1" and g22 == "tutorial:magic_gem2" and g23 == "tutorial:magic_gem3" and g24 == "tutorial:magic_gem4" and g25 == "tutorial:magic_gem5" then
            formspec = formspec
                .."image[1.5,2.25;1,1;tutorial_gem1.png]"
                .."image[2.5,2.25;1,1;tutorial_gem2.png]"
                .."image[3.5,2.25;1,1;tutorial_gem3.png]"
                .."image[4.5,2.25;1,1;tutorial_gem4.png]"
                .."image[5.5,2.25;1,1;tutorial_gem5.png]"           
        else
            if g1 == "tutorial:magic_gem1" and g2 == "tutorial:magic_gem2" and g3 == "tutorial:magic_gem3" and g4 == "tutorial:magic_gem4" and g5 == "tutorial:magic_gem5" then
                formspec = formspec
                .."list[current_player;2gem;1.5,2.25;5,1;]"
                .."image[1.5,2.25;1,1;tutorial_gem1.png]"
                .."image[2.5,2.25;1,1;tutorial_gem2.png]"
                .."image[3.5,2.25;1,1;tutorial_gem3.png]"
                .."image[4.5,2.25;1,1;tutorial_gem4.png]"
                .."image[5.5,2.25;1,1;tutorial_gem5.png]"
            end
        end
        formspec = formspec
        .."list[current_player;main;0,4.25;8,1;]"
	    .."list[current_player;main;0,5.5;8,3;8]"
	return formspec		
end
local crafting5 = {}
crafting5.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    player_inv:set_size("gem1", 8)
    player_inv:set_size("gem2", 8)
	formspec = "size[10,8.3]"
        .."background[10,8.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
	    .."button[0,0;2,0.5;cr;Back]"
	    .."button[2,0;2,0.5;main;Main]"
        .."list[current_player;gem1;2,1;8,1;]"
        .."label[0,1.2;Gem fragment]"
        .."list[current_player;gem2;2,2;8,1;]"
        .."label[0,2.2;Uranium Ingot]"
        .."button[4,3.3;2,0.5;craftgem;craft]"
        .."list[current_player;main;1,4.25;8,1;]"
	    .."list[current_player;main;1,5.5;8,3;8]"
	return formspec		
end
minetest.register_on_player_receive_fields(function(player, formname, fields)
    local player_inv = player:get_inventory()
    player_inv:set_size("rew", 1)
    player_inv:set_size("rewb", 1)
    local rew = player_inv:get_stack("rew", 1):get_count()
    local rewb = player_inv:get_stack("rewb", 1):get_count()
	player_inv:set_size("a1", 1)
	player_inv:set_size("a2", 1)
	player_inv:set_size("a3", 1)
	player_inv:set_size("a4", 1)
	player_inv:set_size("a5", 1)
	player_inv:set_size("a6", 1)
	player_inv:set_size("a7", 1)
	player_inv:set_size("a8", 1)
	player_inv:set_size("a9", 1)
	player_inv:set_size("a10", 1)
	player_inv:set_size("a11", 1)
	player_inv:set_size("a12", 1)
	player_inv:set_size("a13", 1)
	player_inv:set_size("a14", 1)
	player_inv:set_size("a15", 1)
	player_inv:set_size("a16", 1)
    player_inv:set_size("a17", 1)
    player_inv:set_size("a18", 1)
    player_inv:set_size("a19", 1)
    player_inv:set_size("a20", 1)
    player_inv:set_size("a21", 1)
    player_inv:set_size("a22", 1)
    player_inv:set_size("a23", 1)
    player_inv:set_size("a24", 1)
    player_inv:set_size("a25", 1)
    player_inv:set_size("a26", 1)
    player_inv:set_size("a27", 1)
    player_inv:set_size("a28", 1)
    player_inv:set_size("a29", 1)
    player_inv:set_size("a30", 1)
    player_inv:set_size("a31", 1)
    player_inv:set_size("a32", 1)
    player_inv:set_size("a33", 1)
    player_inv:set_size("a34", 1)
    player_inv:set_size("a35", 1)
    player_inv:set_size("a36", 1)
    player_inv:set_size("a37", 1)
    player_inv:set_size("a38", 1)
    player_inv:set_size("a39", 1)
    player_inv:set_size("a40", 1)
    player_inv:set_size("a41", 1)
    player_inv:set_size("a42", 1)
    player_inv:set_size("a43", 1)
    player_inv:set_size("a44", 1)
    player_inv:set_size("a45", 1)
    player_inv:set_size("a46", 1)
    player_inv:set_size("a47", 1)
    player_inv:set_size("a48", 1)
    player_inv:set_size("a49", 1)
    player_inv:set_size("a50", 1)
    local a1 = player_inv:get_stack("a1", 1):get_count()
	local a2 = player_inv:get_stack("a2", 1):get_count()
	local a3 = player_inv:get_stack("a3", 1):get_count()
	local a4 = player_inv:get_stack("a4", 1):get_count()
	local a5 = player_inv:get_stack("a5", 1):get_count()
	local a6 = player_inv:get_stack("a6", 1):get_count()
	local a7 = player_inv:get_stack("a7", 1):get_count()
	local a8 = player_inv:get_stack("a8", 1):get_count()
	local a9 = player_inv:get_stack("a9", 1):get_count()
	local a10 = player_inv:get_stack("a10", 1):get_count()
	local a11 = player_inv:get_stack("a11", 1):get_count()
	local a12 = player_inv:get_stack("a12", 1):get_count()
	local a13 = player_inv:get_stack("a13", 1):get_count()
	local a14 = player_inv:get_stack("a14", 1):get_count()
	local a15 = player_inv:get_stack("a15", 1):get_count()
	local a16 = player_inv:get_stack("a16", 1):get_count()
    local a17 = player_inv:get_stack("a17", 1):get_count()
    local a18 = player_inv:get_stack("a18", 1):get_count()
    local a19 = player_inv:get_stack("a19", 1):get_count()
    local a20 = player_inv:get_stack("a20", 1):get_count()
    local a21 = player_inv:get_stack("a21", 1):get_count()
    local a22 = player_inv:get_stack("a22", 1):get_count()
    local a23 = player_inv:get_stack("a23", 1):get_count()
    local a24 = player_inv:get_stack("a24", 1):get_count()
    local a25 = player_inv:get_stack("a25", 1):get_count()
    local a26 = player_inv:get_stack("a26", 1):get_count()
    local a27 = player_inv:get_stack("a27", 1):get_count()
    local a28 = player_inv:get_stack("a28", 1):get_count()
    local a29 = player_inv:get_stack("a29", 1):get_count()
    local a30 = player_inv:get_stack("a30", 1):get_count()
    local a31 = player_inv:get_stack("a31", 1):get_count()
    local a32 = player_inv:get_stack("a32", 1):get_count()
    local a33 = player_inv:get_stack("a33", 1):get_count()
    local a34 = player_inv:get_stack("a34", 1):get_count()
    local a35 = player_inv:get_stack("a35", 1):get_count()
    local a36 = player_inv:get_stack("a36", 1):get_count()
    local a37 = player_inv:get_stack("a37", 1):get_count()
    local a38 = player_inv:get_stack("a38", 1):get_count()
    local a39 = player_inv:get_stack("a39", 1):get_count()
    local a40 = player_inv:get_stack("a40", 1):get_count()
    local a41 = player_inv:get_stack("a41", 1):get_count()
    local a42 = player_inv:get_stack("a42", 1):get_count()
    local a43 = player_inv:get_stack("a43", 1):get_count()
    local a44 = player_inv:get_stack("a44", 1):get_count()
    local a45 = player_inv:get_stack("a45", 1):get_count()
    local a46 = player_inv:get_stack("a46", 1):get_count()
    local a47 = player_inv:get_stack("a47", 1):get_count()
    local a48 = player_inv:get_stack("a48", 1):get_count()
    local a49 = player_inv:get_stack("a49", 1):get_count()
    local a50 = player_inv:get_stack("a50", 1):get_count()
    local d1 = 0
    if a1 == 1 then
        d1 = d1+1
    end
    if a2 == 1 then
        d1 = d1+1
    end
    if a3 == 1 then
        d1 = d1+1
    end
    if a4 == 1 then
        d1 = d1+1
    end
    if a5 == 1 then
        d1 = d1+1
    end
    if a6 == 1 then
        d1 = d1+1
    end
    if a7 == 1 then
        d1 = d1+1
    end
    if a8 == 1 then
        d1 = d1+1
    end
    if a9 == 1 then
        d1 = d1+1
    end
    if a10 == 1 then
        d1 = d1+1
    end
    if a11 == 1 then
        d1 = d1+1
    end
    if a12 == 1 then
        d1 = d1+1
    end
    if a13 == 1 then
        d1 = d1+1
    end
    if a14 == 1 then
        d1 = d1+1
    end
    if a15 == 1 then
        d1 = d1+1
    end
    if a16 == 1 then
        d1 = d1+1
    end
    if a17 == 1 then
        d1 = d1+1
    end
    if a18 == 1 then
        d1 = d1+1
    end
    if a19 == 1 then
        d1 = d1+1
    end
    if a20 == 1 then
        d1 = d1+1
    end
    if a21 == 1 then
        d1 = d1+1
    end
    if a22 == 1 then
        d1 = d1+1
    end
    if a23 == 1 then
        d1 = d1+1
    end
    if a24 == 1 then
        d1 = d1+1
    end
    if a25 == 1 then
        d1 = d1+1
    end
    if a26 == 1 then
        d1 = d1+1
    end
    if a27 == 1 then
        d1 = d1+1
    end
    if a28 == 1 then
        d1 = d1+1
    end
    if a29 == 1 then
        d1 = d1+1
    end
    if a30 == 1 then
        d1 = d1+1
    end
    if a31 == 1 then
        d1 = d1+1
    end
    if a32 == 1 then
        d1 = d1+1
    end
    if a33 == 1 then
        d1 = d1+1
    end
    if a34 == 1 then
        d1 = d1+1
    end
    if a35 == 1 then
        d1 = d1+1
    end
    if a36 == 1 then
        d1 = d1+1
    end
    if a37 == 1 then
        d1 = d1+1
    end
    if a38 == 1 then
        d1 = d1+1
    end
    if a39 == 1 then
        d1 = d1+1
    end
    if a40 == 1 then
        d1 = d1+1
    end
    if a41 == 1 then
        d1 = d1+1
    end
    if a42 == 1 then
        d1 = d1+1
    end
    if a43 == 1 then
        d1 = d1+1
    end
    if a44 == 1 then
        d1 = d1+1
    end
    if a45 == 1 then
        d1 = d1+1
    end
    if a46 == 1 then
        d1 = d1+1
    end
    if a47 == 1 then
        d1 = d1+1
    end
    if a48 == 1 then
        d1 = d1+1
    end
    if a49 == 1 then
        d1 = d1+1
    end
    if a50 == 1 then
        d1 = d1+1
    end
    if fields.rew then
        if d1 > 24 and rew == 0 and player_inv:room_for_item("main", "mobs:knight_1248_egg") then
            player_inv:add_item("main", "mobs:knight_1248_egg")
            player_inv:add_item("rew", "default:dirt")
            minetest.chat_send_all(player:get_player_name().." has 25 Regnum things and is able to spawn a 1248 Knight")
        end
    end
    if fields.rewb then
        if d1 > 49 and rewb == 0 and player_inv:room_for_item("main", "tutorial:hammer") then
            player_inv:add_item("main", "tutorial:hammer")
            player_inv:add_item("rewb", "default:dirt")
            minetest.chat_send_all(player:get_player_name().." has 50 Regnum things and is able to repair the color stick")
        end
    end
    if fields.gem then
        inventory_plus.set_inventory_formspec(player, gem.get_formspec(player))
    end
    if fields.main or fields.inven then
        local player_inv = player:get_inventory()
        local g1 = player_inv:get_stack("gem", 1):get_name()
        local g2 = player_inv:get_stack("gem", 2):get_name()
        local g3 = player_inv:get_stack("gem", 3):get_name()
        local g4 = player_inv:get_stack("gem", 4):get_name()
        local g5 = player_inv:get_stack("gem", 5):get_name()
        local g21 = player_inv:get_stack("2gem", 1):get_name()
        local g22 = player_inv:get_stack("2gem", 2):get_name()
        local g23 = player_inv:get_stack("2gem", 3):get_name()
        local g24 = player_inv:get_stack("2gem", 4):get_name()
        local g25 = player_inv:get_stack("2gem", 5):get_name()
        local gg1 = 0
        local gg2 = 0
        local gg3 = 0
        local gg4 = 0
        local gg5 = 0
        local gg21 = 0
        local gg22 = 0
        local gg23 = 0
        local gg24 = 0
        local gg25 = 0
        if g1 == "tutorial:magic_gem1" then
            gg1 = 1
        end
        if g2 == "tutorial:magic_gem2" then
            gg2 = 1
        end
        if g3 == "tutorial:magic_gem3" then
            gg3 = 1
        end
        if g4 == "tutorial:magic_gem4" then
            gg4 = 1
        end
        if g5 == "tutorial:magic_gem5" then
            gg5 = 1
        end
        if g21 == "tutorial:magic_gem1" then
            gg21 = 1
        end
        if g22 == "tutorial:magic_gem2" then
            gg22 = 1
        end
        if g23 == "tutorial:magic_gem3" then
            gg23 = 1
        end
        if g24 == "tutorial:magic_gem4" then
            gg24 = 1
        end
        if g25 == "tutorial:magic_gem5" then
            gg25 = 1
        end
        if gg1 == 1 and gg2 == 1 and gg3 == 1 and gg4 == 1 and gg5 == 1 then
		    local punched_player_privs = minetest.get_player_privs(player:get_player_name())
		    punched_player_privs["home"] = true
            punched_player_privs["zoom"] = true
		    minetest.set_player_privs(player:get_player_name(), punched_player_privs)
        end
        if gg21 == 1 and gg22 == 1 and gg23 == 1 and gg24 == 1 and gg25 == 1 then
            local punched_player_privs = minetest.get_player_privs(player:get_player_name())
		    punched_player_privs["fast"] = true
		    minetest.set_player_privs(player:get_player_name(), punched_player_privs)
        end
    end
	if fields.craftgem then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("gem0", 1)
        player_inv:set_size("2gem0", 1)
        local gem = player_inv:get_stack("gem0", 1):get_count()
        local gem2 = player_inv:get_stack("2gem0", 1):get_count()
	    local g11 = player_inv:get_stack("gem1", 1):get_name()
        local g12 = player_inv:get_stack("gem1", 2):get_name()
        local g13 = player_inv:get_stack("gem1", 3):get_name()
        local g14 = player_inv:get_stack("gem1", 4):get_name()
        local g15 = player_inv:get_stack("gem1", 5):get_name()
        local g16 = player_inv:get_stack("gem1", 6):get_name()
        local g17 = player_inv:get_stack("gem1", 7):get_name()
        local g18 = player_inv:get_stack("gem1", 8):get_name()
        local g21 = player_inv:get_stack("gem2", 1):get_name()
        local g22 = player_inv:get_stack("gem2", 2):get_name()
        local g23 = player_inv:get_stack("gem2", 3):get_name()
        local g24 = player_inv:get_stack("gem2", 4):get_name()
        local g25 = player_inv:get_stack("gem2", 5):get_name()
        local g26 = player_inv:get_stack("gem2", 6):get_name()
        local g27 = player_inv:get_stack("gem2", 7):get_name()
        local g28 = player_inv:get_stack("gem2", 8):get_name()
        local y1 = player_inv:get_stack("gem1", 1):get_count()
		local y2 = player_inv:get_stack("gem1", 2):get_count()
		local y3 = player_inv:get_stack("gem1", 3):get_count()
		local y4 = player_inv:get_stack("gem1", 4):get_count()
		local y5 = player_inv:get_stack("gem1", 5):get_count()
		local y6 = player_inv:get_stack("gem1", 6):get_count()
		local y7 = player_inv:get_stack("gem1", 7):get_count()
		local y8 = player_inv:get_stack("gem1", 8):get_count()
        local yy1 = player_inv:get_stack("gem2", 1):get_count()
		local yy2 = player_inv:get_stack("gem2", 2):get_count()
		local yy3 = player_inv:get_stack("gem2", 3):get_count()
		local yy4 = player_inv:get_stack("gem2", 4):get_count()
		local yy5 = player_inv:get_stack("gem2", 5):get_count()
		local yy6 = player_inv:get_stack("gem2", 6):get_count()
		local yy7 = player_inv:get_stack("gem2", 7):get_count()
		local yy8 = player_inv:get_stack("gem2", 8):get_count()
        local k = 0
        local d = 0
        if g11 == g12 and g12 == g13 and g13 == g14 and g14 == g15 and g15 == g16 and g16 == g17 and g17 == g18 then
            if g11 == "tutorial:gem_fragment" then
                k = k+1
            end
        end
        if g11 == g12 and g12 == g13 and g13 == g14 and g14 == g15 and g15 == g16 and g16 == g17 and g17 == g18 then
            if g11 == "tutorial:gem_fragment2" then
                k = k+2
            end
        end
        if g21 == g22 and g22 == g23 and g23 == g24 and g24 == g25 and g25 == g26 and g26 == g27 and g27 == g28 then
            if g21 == "technic:uranium_ingot" then
                k = k+1
            end
        end
        if k == 2 then
            if gem == 0 then
                if player_inv:room_for_item("main", "tutorial:magic_gem1") == true then
                    player_inv:add_item("main", "tutorial:magic_gem1")
                    player_inv:add_item("gem0", "default:dirt")
                    d = 1
                end
            elseif gem == 1 then
                if player_inv:room_for_item("main", "tutorial:magic_gem2") == true then
                    player_inv:add_item("main", "tutorial:magic_gem2")
                    player_inv:add_item("gem0", "default:dirt")
                    d = 1
                end
            elseif gem == 2 then
                if player_inv:room_for_item("main", "tutorial:magic_gem3") == true then
                    player_inv:add_item("main", "tutorial:magic_gem3")
                    player_inv:add_item("gem0", "default:dirt")
                    d = 1
                end
            elseif gem == 3 then
                if player_inv:room_for_item("main", "tutorial:magic_gem4") == true then
                    player_inv:add_item("main", "tutorial:magic_gem4")
                    player_inv:add_item("gem0", "default:dirt")
                    d = 1
                end
            elseif gem == 4 then
                if player_inv:room_for_item("main", "tutorial:magic_gem5") == true then
                    player_inv:add_item("main", "tutorial:magic_gem5")
                    player_inv:add_item("gem0", "default:dirt")
                    d = 1
                end
            end
            if d == 1 then
			    player_inv:set_stack("gem1", 1, "tutorial:gem_fragment "..(y1-1))
                player_inv:set_stack("gem1", 2, "tutorial:gem_fragment "..(y2-1))
                player_inv:set_stack("gem1", 3, "tutorial:gem_fragment "..(y3-1))
                player_inv:set_stack("gem1", 4, "tutorial:gem_fragment "..(y4-1))
                player_inv:set_stack("gem1", 5, "tutorial:gem_fragment "..(y5-1))
                player_inv:set_stack("gem1", 6, "tutorial:gem_fragment "..(y6-1))
                player_inv:set_stack("gem1", 7, "tutorial:gem_fragment "..(y7-1))
                player_inv:set_stack("gem1", 8, "tutorial:gem_fragment "..(y8-1))
                player_inv:set_stack("gem2", 1, "technic:uranium_ingot "..(yy1-1))
                player_inv:set_stack("gem2", 2, "technic:uranium_ingot "..(yy2-1))
                player_inv:set_stack("gem2", 3, "technic:uranium_ingot "..(yy3-1))
                player_inv:set_stack("gem2", 4, "technic:uranium_ingot "..(yy4-1))
                player_inv:set_stack("gem2", 5, "technic:uranium_ingot "..(yy5-1))
                player_inv:set_stack("gem2", 6, "technic:uranium_ingot "..(yy6-1))
                player_inv:set_stack("gem2", 7, "technic:uranium_ingot "..(yy7-1))
                player_inv:set_stack("gem2", 8, "technic:uranium_ingot "..(yy8-1))
            end
        end
        if k == 3 then
            if gem2 == 0 then
                if player_inv:room_for_item("main", "tutorial:magic_gem1") == true then
                    player_inv:add_item("main", "tutorial:magic_gem1")
                    player_inv:add_item("2gem0", "default:dirt")
                    d = 1
                end
            elseif gem2 == 1 then
                if player_inv:room_for_item("main", "tutorial:magic_gem2") == true then
                    player_inv:add_item("main", "tutorial:magic_gem2")
                    player_inv:add_item("2gem0", "default:dirt")
                    d = 1
                end
            elseif gem2 == 2 then
                if player_inv:room_for_item("main", "tutorial:magic_gem3") == true then
                    player_inv:add_item("main", "tutorial:magic_gem3")
                    player_inv:add_item("2gem0", "default:dirt")
                    d = 1
                end
            elseif gem2 == 3 then
                if player_inv:room_for_item("main", "tutorial:magic_gem4") == true then
                    player_inv:add_item("main", "tutorial:magic_gem4")
                    player_inv:add_item("2gem0", "default:dirt")
                    d = 1
                end
            elseif gem2 == 4 then
                if player_inv:room_for_item("main", "tutorial:magic_gem5") == true then
                    player_inv:add_item("main", "tutorial:magic_gem5")
                    player_inv:add_item("2gem0", "default:dirt")
                    d = 1
                end
            end
            if d == 1 then
			    player_inv:set_stack("gem1", 1, "tutorial:gem_fragment2 "..(y1-1))
                player_inv:set_stack("gem1", 2, "tutorial:gem_fragment2 "..(y2-1))
                player_inv:set_stack("gem1", 3, "tutorial:gem_fragment2 "..(y3-1))
                player_inv:set_stack("gem1", 4, "tutorial:gem_fragment2 "..(y4-1))
                player_inv:set_stack("gem1", 5, "tutorial:gem_fragment2 "..(y5-1))
                player_inv:set_stack("gem1", 6, "tutorial:gem_fragment2 "..(y6-1))
                player_inv:set_stack("gem1", 7, "tutorial:gem_fragment2 "..(y7-1))
                player_inv:set_stack("gem1", 8, "tutorial:gem_fragment2 "..(y8-1))
                player_inv:set_stack("gem2", 1, "technic:uranium_ingot "..(yy1-1))
                player_inv:set_stack("gem2", 2, "technic:uranium_ingot "..(yy2-1))
                player_inv:set_stack("gem2", 3, "technic:uranium_ingot "..(yy3-1))
                player_inv:set_stack("gem2", 4, "technic:uranium_ingot "..(yy4-1))
                player_inv:set_stack("gem2", 5, "technic:uranium_ingot "..(yy5-1))
                player_inv:set_stack("gem2", 6, "technic:uranium_ingot "..(yy6-1))
                player_inv:set_stack("gem2", 7, "technic:uranium_ingot "..(yy7-1))
                player_inv:set_stack("gem2", 8, "technic:uranium_ingot "..(yy8-1))
            end
        end
		inventory_plus.set_inventory_formspec(player, crafting5.get_formspec(player))
	end
end)

local rg13 = {}
rg13.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;II. 4. Ores]"
        .."label[0,1.3;You can find ores in the depth.]"
        .."label[0,1.6;Where to find ores:]"
		.."label[0,1.9;(default) Coal: y < 65]"
        .."label[0,2.2;(default) Iron: y < 1]"
		.."label[0,2.5;(default) Copper: y < -15]"
		.."label[0,2.8;(default) Tin: y < -31]"
		.."label[0,3.1;(default) Gold: y < -63]"
		.."label[0,3.4;(default) Mese: y < -63]"
        .."label[0,3.7;(default) Diamond: y < -127]"
		.."label[0,4.0;(moreores) Tin: y < 9]"
		.."label[0,4.3;(moreores) Silver: y < -1]"
		.."label[0,4.6;(moreores) Mithril: y < -511]"
		.."label[0,4.9;(technic) Zinc: y < 3]"
		.."label[0,5.2;(technic) Cromium: y < -99]"
        .."label[0,5.5;(technic) Uranium: -301 < y < -79]"
        .."label[0,5.8;(regnum) Black/White: y < 2 (can be digged with battleaxe-lv.21)]"
        .."label[0,6.1;(regnum) Uranium: y < -128 (can be digged with battleaxe-lv.46)]"
		.."label[0,6.4;(regnum) Ruby/Sapphire: y < -300 (can be digged with battleaxe-lv.52)]"
		.."label[0,6.7;(regnum) Amethyst: y < -600 (can be digged with battleaxe-lv.62)]"
        .."label[0,7.0;(regnum) Shadow/Pearl: y < -900 (can be digged with battleaxe-lv.64)]"
        .."label[0,7.3;(regnum) Emerald: y < -1200 (can be digged with battleaxe-lv.71)]"
        .."label[0,7.6;(regnum) Admin: y < -500 (can be digged with battleaxe-lv.74)]"
		.."label[0,7.9;(regnum) Regnum: y < -600 (can be digged with battleaxe-lv.74)]"
        .."label[0,8.2;(regnum) Titan: y < -400 (can be digged with battleaxe-lv.110 and titanremover)]"
        .."label[0,8.5;(regnum) Rot/Blau: y < -100 (can be digged with battleaxe-lv.122 and purplebattleaxe)]"
        .."button[2,10;   2,0.5;rg12;<]"
        .."button[4,10;   2,0.5;rg14;>]"
	return formspec		
end
local rg14 = {}
rg14.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;II. 5. Armor, Battleaxes & Guns]"
        .."label[0,1.3;There are over 120 differend battleaxes, armors and guns.]"
        .."label[0,1.6;Here you can see witch kind of armor, battleaxe and gun you have to craft:]"
        .."label[0,1.9;(starter)]"
        .."label[0,2.2;mega lv.1-20]"
        .."label[0,2.5;cloud lv.1-25]"
        .."label[0,2.8;super lv.1-4]"
        .."label[0,3.1;uranium lv.1-2]"
        .."label[0,3.4;energie lv.1-12]"
        .."label[0,3.7;superenergy lv.1-7]"
        .."label[0,4.0;crystal lv.1-5]"
        .."label[0,4.3;ultra lv.1-25]"
        .."label[0,4.6;superultra]"
        .."label[0,4.9;arena lv.1-4]"
        .."label[0,5.2;titan lv.1-10]"
        .."label[0,5.5;legendary lv.1-6]"
        .."label[0,5.8;superlegendary]"
        .."label[0,6.1;regnum]"
		.."label[0,6.4;The legendary battleaxe (or higher) will double some ores if you dig them.]"
        .."label[0,6.7;There are differend modes for some battleaxes, armors and guns.]"
		.."label[0,7.0;With battleaxe Mode 2 you can dig water and lava.]"
		.."label[0,7.3;With battleaxe Mode 3 you can only hunt monster.]"
		.."label[0,7.6;With armor Mode 2 you can run faster.]"
        .."label[0,7.9;With armor Mode 3 you can jump higher.]"
        .."label[0,8.2;With armor Mode 4 you can run faster and jump higher.]"
		.."label[0,8.5;With gun Mode 2 you can only make damage to monsters.]"
		.."label[0,8.8;With gun Mode 3 you will also add thunder.]"
        .."label[0,9.1;For changing the mode of a tool (also Wallplacer and mining Drill),]"
		.."label[0,9.4;you have to press the right mouse and sneak (don't point at a node)]"
        .."button[2,10;   2,0.5;rg13;<]"
        .."button[4,10;   2,0.5;rg15;>]"
	return formspec		
end
local rg15 = {}
rg15.get_formspec = function(player, pos)
    if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;II. 6. Chat commands]"
        .."label[0,1.3;/admin for all admin things (give priv needed)]"
        .."label[0,1.6;/regnum for all regnum things (give priv needed)]"
        .."label[0,1.9;/rank to see your rank]"
        .."button[2,10;   2,0.5;rg14;<]"
		.."button[4,10;   2,0.5;rg16;>]"
	return formspec		
end
local rg16 = {}
rg16.get_formspec = function(player, pos)
    if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;II. 7. Keys]"
        .."label[0,1.3;Bagkey: can be crafted with grey coins]"
        .."label[0,1.6;Armorkey: can be crafted with a blue and a red ore]"
        .."label[0,1.9;Levelkey: can be got as a reward for green level 50]"
		.."label[0,2.2;Craftkey: can be crafted with purple coins]"
		.."label[0,2.5;Legendkey: can be got as a reward for grey level 100]"
		.."label[0,2.8;Regnumkey: can be crafted with a regnum ore]"
		.."label[0,3.1;Pixeled Regnumkey: can be crafted with a pixeled regnum ore (make it in the regnum craft)]"
		.."label[0,3.4;Dragonkey: can be got from a gift (dragon)]"
		.."label[0,3.7;Foxkey: can be got from the fox after some time]"
		.."label[0,4.0;Tortoisekey: can be got from a gift (tortoise)]"
		.."label[0,4.3;Knightkey: can be got as a reward for all artifacts]"
		.."label[0,4.6;Crystalkey: can be got as a reward for all medallions]"
		.."label[0,4.9;Goldenkey: can be got as a reward for yellow level 100]"
		.."label[0,5.2;Cookingkey: can be crafted with cyan coins]"
		.."label[0,5.5;Protectionkey: can be got as a reward for all trophys]"
        .."button[2,10;   2,0.5;rg15;<]"
	return formspec		
end
local rg10 = {}
rg10.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;II. 1. Gifts]"
        .."label[0,1.3;Craft gifts to get nice differend things.]"
        .."label[0,1.6;Gift: gift, dark matter Lv.4, ice, mese, lightstone]"
        .."label[0,1.9;Gift (silver): arena glass, arena block, mese, lightstone, gift]"
        .."label[0,2.2;Gift (gold): dirt/sand/stone monster spawn-egg, mese]"
        .."label[0,2.5;Gift (platinum): wool gift, colored wool gift lv.1/2]"
        .."label[0,2.8;Deathgift: mese, lightstone, ice, deathgift, regnum part]"
        .."label[0,3.1;Deathgift (silver): mese, lightstone, ice, deathgift, regnum part]"
        .."label[0,3.4;Deathgift (gold): mese, lightstone, ice, deathgift, regnum part]"
        .."label[0,3.7;Deathgift (platinum): mese, lightstone, ice, deathgift, regnum part]"
        .."label[0,4.0;Gift (DNA): every spawn-egg (but no monsters)]"
        .."label[0,4.3;Gift (legendary): ruby, sapphire, amethyst, pearl, shadow, emerald, legendary crystal]"
        .."label[0,4.6;Gift (regnum): gold/green/purple/red/blue regnum pixel]"
        .."label[0,4.9;Wool gift: white wool]"
        .."label[0,5.2;Colored wool gift lv.1: yellow/white/violetta/red/orange/blue wool]"
        .."label[0,5.5;Colored wool gift lv.2: every wool]"
        .."label[0,5.8;Gift (dragon): coal lump, dragon key]"
        .."label[0,6.1;Gift (gem): gift (legendary), gem fragment]"
        .."button[2,10;   2,0.5;rg9;<]"
        .."button[4,10;   2,0.5;rg11;>]"
	return formspec		
end
local rg11 = {}
rg11.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;II. 2. Mobs]"
        .."label[0,1.3;There are monsters, animals and pets in Regnum.]"
        .."label[0,1.6;The monster will kill you, but can get wrapping paper and DNA strings or tears.]"
        .."label[0,1.9;You can get water and sky animals from the dna gift.]"
        .."label[0,2.2;There are turtles, sharks, gulls and many other.]"
        .."label[0,2.5;If you use the DNA craft you can get pets.]"
        .."label[0,2.8;The dog and the cat will kill monsters and collect the wrapping paper and DNA strings.]"
        .."label[0,3.1;The sheep will produce wool.]"
        .."label[0,3.4;The dagon will produce a dragon gift or a gem gift if you have a regnum crystal.]"
        .."label[0,3.7;The fox will produce a fox key and treasures.]"
        .."label[0,4.0;The tortoise will produce a tortoise gift or a gem gift if you have a regnum crystal.]"
        .."label[0,4.3;You can change the color of the pets and they can follow you.]"
        .."button[2,10;   2,0.5;rg10;<]"
        .."button[4,10;   2,0.5;rg12;>]"
	return formspec		
end
local rg12 = {}
rg12.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;II. 3. Xp & Level]"
        .."label[0,1.3;If you dig some things you can get Xp.]"
        .."label[0,1.6;There are 6 differend kind of Xp:]"
        .."label[0,1.9;green, red, blue, grey, yellow and cyan Xp]"
        .."label[0,2.2;If you dig uranium you will get 1 green Xp.]"
        .."label[0,2.5;If you reach level green 100, you will get the lilabattleaxe.]"
        .."label[0,2.8;With it, you can dig red and blue ore.]"
        .."label[0,3.1;From them you can get red and blue Xp.]"
        .."label[0,3.4;If you reach level red/blue 20, you will get a red/blue xp block.]"
        .."label[0,3.7;With them you can craft the grey xp block.]"
        .."label[0,4.0;From the grey xp block you will get grey xp.]"
        .."label[0,4.3;If you reach level gray 100, you will get the yellow xp block.]"
        .."label[0,4.6;From the yellow xp block you will get yellow xp.]"
        .."label[0,4.9;If you reach level yellow 100, you will get the golden key.]"
        .."label[0,5.2;With the golden key you can use the Crystal craft.]"
        .."label[0,5.5;From there you can get cristal bottles.]"
        .."label[0,5.8;If you reach level cyan 25, you have completed all levels.]"
        .."label[0,6.1;Look in the 'Xp Guide' for your xp and how much xp you need.]"
        .."label[0,6.4;If you reach a new level you will get a reward.]"
        .."label[0,6.7;Look in 'Xp Items' for the reward.]"
        .."button[2,10;   2,0.5;rg11;<]"
        .."button[4,10;   2,0.5;rg13;>]"
	return formspec		
end
local rg7 = {}
rg7.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;I. 5. Quests]"
		.."label[0.0,1.3;a) Awards]"
        .."label[0.2,1.6;Here you can see your awards.]"
		.."label[0.2,1.9;Dig some ores to get an award.]"
        .."label[0.2,2.2;If you have all awards, you will get the 'all awards' achievement.]"
		.."label[0.0,2.5;b) Achievements]"
        .."label[0.2,2.8;Here you can see your achievement.]"
        .."label[0.2,3.1;If you have all 50 achievements,]"
        .."label[0.2,3.4;you will have all Regnum things and you have completed the Regnum game.]"
        .."label[0.2,3.7;If you have 25 or 50 achivements you will get a reward.]"
        .."label[0.2,4.0;You will get spezial achievments for every aniversary.]"
        .."button[2,10;   2,0.5;rg6;<]"
        .."button[4,10;   2,0.5;rg8;>]"
	return formspec		
end
local xpi0 = {}
xpi0.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    local xpi01_inv = minetest.create_detached_inventory(player:get_player_name().."_xpi01",{
        on_take = function(inv, listname, index, stack, player)
			player:get_inventory():remove_item(listname,stack)
		end,
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return stack:get_count()
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
	
	xpi01_inv:set_size("xpi01", 15)
	player_inv:set_size("xpi01", 15)
    xpi01_inv:set_size("xpi02", 15)
	player_inv:set_size("xpi02", 15)
    xpi01_inv:set_size("xpi03", 15)
	player_inv:set_size("xpi03", 15)
    xpi01_inv:set_size("xpi04", 15)
	player_inv:set_size("xpi04", 15)
    xpi01_inv:set_size("xpi05", 15)
	player_inv:set_size("xpi05", 15)
    xpi01_inv:set_size("xpi06", 15)
	player_inv:set_size("xpi06", 15)
    for i=1, 15 do
		local stack = player_inv:get_stack("xpi01", i)
		xpi01_inv:set_stack("xpi01", i, stack)
        local stack = player_inv:get_stack("xpi02", i)
		xpi01_inv:set_stack("xpi02", i, stack)
        local stack = player_inv:get_stack("xpi03", i)
		xpi01_inv:set_stack("xpi03", i, stack)
        local stack = player_inv:get_stack("xpi04", i)
		xpi01_inv:set_stack("xpi04", i, stack)
        local stack = player_inv:get_stack("xpi05", i)
		xpi01_inv:set_stack("xpi05", i, stack)
        local stack = player_inv:get_stack("xpi06", i)
		xpi01_inv:set_stack("xpi06", i, stack)
    end
	formspec = "size[18,12.3]"
	    .."button[0,0;2,0.5;inven;Back]"
	    .."button[2,0;2,0.5;main;Main]"
        .."list[current_player;main;5,7.5;8,1;]"
		.."list[current_player;main;5,8.75;8,3;8]"
        .."background[18,12.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."list[detached:"..player:get_player_name().."_xpi01;xpi01;3,1.5;5,1]"
        .."list[detached:"..player:get_player_name().."_xpi01;xpi02;3,2.7;5,1]"
        .."list[detached:"..player:get_player_name().."_xpi01;xpi03;3,3.9;5,1]"
        .."list[detached:"..player:get_player_name().."_xpi01;xpi04;10,1.5;5,1]"
        .."list[detached:"..player:get_player_name().."_xpi01;xpi05;10,2.7;5,1]"
        .."list[detached:"..player:get_player_name().."_xpi01;xpi06;10,3.9;5,1]"
        .."listring[current_player;main]" 
	    .."listring[detached:"..player:get_player_name().."_xpi01;xpi01]"
        .."listring[current_player;main]" 
	    .."listring[detached:"..player:get_player_name().."_xpi01;xpi02]"
        .."listring[current_player;main]" 
	    .."listring[detached:"..player:get_player_name().."_xpi01;xpi03]"
        .."listring[current_player;main]" 
	    .."listring[detached:"..player:get_player_name().."_xpi01;xpi04]"
        .."listring[current_player;main]" 
	    .."listring[detached:"..player:get_player_name().."_xpi01;xpi05]"
        .."listring[current_player;main]" 
	    .."listring[detached:"..player:get_player_name().."_xpi01;xpi06]"
        .."label[3,1.1;Green Xp Items]"
        .."label[3,2.3;Red Xp Items]"
        .."label[3,3.5;Blue Xp Items]"
        .."label[10,1.1;Grey Xp Items]"
        .."label[10,2.3;Yellow Xp Items]"
        .."label[10,3.5;Cyan Xp Items]"
        .."button[9,12;2,0.5;xpi;>]"
	return formspec		
end

local xpi = {}
xpi.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    local xpi1_inv = minetest.create_detached_inventory(player:get_player_name().."_xpi1",{
        on_take = function(inv, listname, index, stack, player)
			player:get_inventory():remove_item(listname,stack)
		end,
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return stack:get_count()
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
	xpi1_inv:set_size("xpi1", 100)
	player_inv:set_size("xpi1", 100)
    for i=1, 100 do
		local stack = player_inv:get_stack("xpi1", i)
		xpi1_inv:set_stack("xpi1", i, stack)
    end
	formspec = "size[18,12.3]"
	    .."button[0,0;2,0.5;inven;Back]"
	    .."button[2,0;2,0.5;main;Main]"
        .."list[current_player;main;5,7.5;8,1;]"
		.."list[current_player;main;5,8.75;8,3;8]"
        .."background[18,12.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."list[detached:"..player:get_player_name().."_xpi1;xpi1;0,1.3;18,6]"
        .."listring[current_player;main]" 
	    .."listring[detached:"..player:get_player_name().."_xpi1;xpi1]"
        .."label[0,0.7;Green Level Blocks]"
        .."button[9,12;2,0.5;xpi2;>]"
        .."button[7,12;2,0.5;xpi0;<]"
	return formspec		
end

local xpi2 = {}
xpi2.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    local xpi2_inv = minetest.create_detached_inventory(player:get_player_name().."_xpi2",{
        on_take = function(inv, listname, index, stack, player)
			player:get_inventory():remove_item(listname,stack)
		end,
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return stack:get_count()
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
    local xpi3_inv = minetest.create_detached_inventory(player:get_player_name().."_xpi3",{
        on_take = function(inv, listname, index, stack, player)
			player:get_inventory():remove_item(listname,stack)
		end,
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return 1
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
    xpi2_inv:set_size("xpi2", 20)
	player_inv:set_size("xpi2", 20)
    xpi3_inv:set_size("xpi3", 20)
	player_inv:set_size("xpi3", 20)
    for i=1, 20 do
		local stack = player_inv:get_stack("xpi2", i)
		xpi2_inv:set_stack("xpi2", i, stack)
        local stack2 = player_inv:get_stack("xpi3", i)
		xpi3_inv:set_stack("xpi3", i, stack2)
    end
	xpi2_inv:set_size("xpi2", 20)
	player_inv:set_size("xpi2", 20)
    xpi3_inv:set_size("xpi3", 20)
	player_inv:set_size("xpi3", 20)
	formspec = "size[18,12.3]"
	    .."button[0,0;2,0.5;inven;Back]"
	    .."button[2,0;2,0.5;main;Main]"
        .."list[current_player;main;5,7.5;8,1;]"
		.."list[current_player;main;5,8.75;8,3;8]"
        .."background[18,12.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."list[detached:"..player:get_player_name().."_xpi2;xpi2;0,1.3;18,2]"
        .."list[detached:"..player:get_player_name().."_xpi3;xpi3;0,3.9;18,2]"
        .."listring[current_player;main]" 
	    .."listring[detached:"..player:get_player_name().."_xpi2;xpi2]"
        .."listring[current_player;main]" 
	    .."listring[detached:"..player:get_player_name().."_xpi3;xpi3]"
        .."label[0,0.7;Red Level Blocks]"
        .."label[0,3.3;Blue Level Blocks]"
        .."button[7,12;2,0.5;xpi;<]"
        .."button[9,12;2,0.5;xpi3;>]"
	return formspec		
end
local xpi3 = {}
xpi3.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    local xpi4_inv = minetest.create_detached_inventory(player:get_player_name().."_xpi4",{
        on_take = function(inv, listname, index, stack, player)
			player:get_inventory():remove_item(listname,stack)
		end,
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return stack:get_count()
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
    xpi4_inv:set_size("xpi4", 100)
	player_inv:set_size("xp4", 100)
    for i=1, 100 do
		local stack = player_inv:get_stack("xpi4", i)
		xpi4_inv:set_stack("xpi4", i, stack)
    end
	xpi4_inv:set_size("xpi4", 100)
	player_inv:set_size("xpi4", 100)
	formspec = "size[18,12.3]"
	    .."button[0,0;2,0.5;inven;Back]"
	    .."button[2,0;2,0.5;main;Main]"
        .."list[current_player;main;5,7.5;8,1;]"
		.."list[current_player;main;5,8.75;8,3;8]"
        .."background[18,12.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."list[detached:"..player:get_player_name().."_xpi4;xpi4;0,1.3;18,6]"
        .."listring[current_player;main]" 
	    .."listring[detached:"..player:get_player_name().."_xpi4;xpi4]"
        .."label[0,0.7;Grey Level Blocks]"
        .."button[7,12;2,0.5;xpi2;<]"
        .."button[9,12;2,0.5;xpi4;>]"
	return formspec		
end
local rg4 = {}
rg4.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;I. 2. Crafting]"
        .."label[0,1.3;There are 11 differend crafts:]"
        .."label[0,1.6;The 4x4 craft and 5x5 craft to craft in a 4x4 and 5x5 field.]"
		.."label[0,1.9;Look in the 'Craft Guide' which item you can craft in 4x4 and 5x5.]"
        .."label[0,2.2;The Regnum craft to craft a pixeled regnum.]"
		.."label[0,2.5;You will need regnum pixels. (You can get them from Regnum gifts)]"
		.."label[0,2.8;The DNA craft to get mobs and ??? monster spawn-egg.]"
		.."label[0,3.1;You will need dna strings for pets (You can get them from monsters)]"
		.."label[0,3.4;and big dna for ???-monster spawn-egg. (You can craft them in the 5x5 craft)]"
		.."label[0,3.7;If you press 'Mob Position' you can see the positions of your pets.]"
		.."label[0,4.0;The Gem craft to get magic gems.]"
        .."label[0,4.3;You will need gem fragments and (technic) uranium ingots.]"
		.."label[0,4.6;The Cooking craft, works like furnaces but with (regnum) uranium (every level) as fuel.]"
		.."label[0,4.9;If you have the cooking key you will get more fuel.]"
		.."label[0,5.2;The Mine craft to level your mining laser/drill up.]"
        .."label[0,5.5;You will need the mining laser/drill and green coins.]"
        .."label[0,5.8;The Medallion craft to get medallions.]"
		.."label[0,6.1;You will need medallion pieces. (You will get them if you run around)]"
        .."label[0,6.4;The Crystal craft to get crystalbottles.]"
		.."label[0,6.7;You have to wait 500s to get two crystallbottles.]"
		.."label[0,7.0;You will get one bottle more for each crystal you have]"
		.."label[0,7.3;and if you have a pixeled regnum key you only have to wait 250s.]"
        .."label[0,7.6;The Trophy craft to get trophys.]"
		.."label[0,7.9;You will need Tears. (You can get them from monsters spawned by the ??? monster spawn-egg)]"
		.."label[0,8.2;The Reverse craft to get your items back, if you craft the wrong one.]"
		.."label[0,8.5;You can only use some items.]"
        .."button[2,10;   2,0.5;rg3;<]"
        .."button[4,10;   2,0.5;rg5;>]"
	return formspec		
end
local rg6 = {}
rg6.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;I. 4. Spezial]"
		.."label[0.0,1.3;a) Crystals]"
		.."label[0.2,1.6;Here you can get legendary fire balls.]"
        .."label[0.2,1.9;If you dig a legendary gift you can get a legendary crystal.]"
        .."label[0.2,2.2;With every new cristal you get, get can get better fire balls.]"
        .."label[0.2,2.5;After some time you will get the fire ball.]"
        .."label[0.2,2.8;The time will be halved, if you have a crystal key.]"
		.."label[0.0,3.1;b) Xp items]"
		.."label[0.2,3.4;Here you can get your rewards, if you reach a new level.]"
		.."label[0.2,3.7;You will also get a block for every level.]"
		.."label[0.0,4.0;c) Gems]"
		.."label[0.2,4.3;You have to craft some magic gems in the gem craft.]"
		.."label[0.2,4.6;If you have 5, you will get the home priv.]"
		.."label[0.2,4.9;If you have 10, you will get the fast priv.]"
        .."button[2,10;   2,0.5;rg5;<]"
        .."button[4,10;   2,0.5;rg7;>]"
	return formspec		
end
local rg8 = {}
rg8.get_formspec = function(player, pos)
    if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;I. 6. Color items]"
		.."label[0.0,1.3;a) Artifacts]"
        .."label[0.2,1.6;If you run around you will get artifacts.]"
        .."label[0.2,1.9;Collect 71 artifacts to get the knight key as a reward.]"
		.."label[0.0,2.2;b) Medallion]"
        .."label[0.2,2.5;craft medallions in the medallion craft.]"
        .."label[0.2,2.8;Collect 7 medallions to get the crystal key as a reward.]"
		.."label[0.0,3.1;c) Treasures]"
        .."label[0.2,3.4;get treasures from the fox.]"
        .."label[0.2,3.7;Collect 6 treasures to get the (broken) legend stick as a reward.]"
		.."label[0.0,4.0;d) Trophys]"
        .."label[0.2,4.3;get trophys in the trophy craft.]"
        .."label[0.2,4.6;Collect 24 trothys to get the protection key as a reward.]"
        .."button[2,10;   2,0.5;rg7;<]"
        .."button[4,10;   2,0.5;rg9;>]"
	return formspec		
end
local rg9 = {}
rg9.get_formspec = function(player, pos)
    if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;I. 7. Music]"
        .."label[0,1.3;Enable Background Music.]"
        .."label[0,1.6;Choose Themes to be randomly selected and listen to the Regnum Themes.]"
        .."button[2,10;   2,0.5;rg8;<]"
        .."button[4,10;   2,0.5;rg10;>]"
	return formspec		
end
local rg2 = {}
rg2.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;                                     CONTENS]"
        .."label[0,1.3; I. Inventory]"
        .."label[0,1.6;   1. Equipment]"
        .."label[0,1.9;   2. Crafting]"
        .."label[0,2.2;   3. Help]"
        .."label[0,2.5;   4. Spezial]"
        .."label[0,2.8;   5. Quests]"
        .."label[0,3.1;   6. Color items]"
        .."label[0,3.4;   7. Music]"
        .."label[0,3.7; II. Game]"
        .."label[0,4.0;   1. Gifts]"
        .."label[0,4.3;   2. Mobs]"
        .."label[0,4.6;   3. Xp & Level]"
        .."label[0,4.9;   4. Ores]"
        .."label[0,5.2;   5. Armor, Battleaxes & Guns]"
        .."label[0,5.5;   6. Chat commands]"
		.."label[0,5.8;   7. Keys]"
        .."button[2,10;   2,0.5;rg1;<]"
        .."button[4,10;   2,0.5;rg3;>]"
	return formspec		
end
local rg3 = {}
rg3.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;I. 1. Equipment]"
		.."label[0.0,1.3;a) Skins]"
		.."label[0.2,1.6;Here you can change your skin.]"
        .."label[0.2,1.9;Click on one skin to change your skin.]"
        .."label[0.2,2.2;If you have the pixeled Regnum key you can use the see-through skin.]"
        .."label[0.2,2.5;If you have the knight key you can use the knight skins.]"
		.."label[0.0,2.8;b) Bags]"
        .."label[0.2,3.1;You can use bags to take more things with you.]"
        .."label[0.2,3.4;You can have up to eight bags, every bag has eight level.]"
		.."label[0.2,3.7;Craft a bag (look in the 'Craft Guide' how).]"
        .."label[0.2,4.0;Put the bag in one of the fields and use the button below.]"
		.."label[0.2,4.3;You can put your items in the new inventory.]"
        .."label[0.2,4.6;Every level for a bag give you more space for it.]"
        .."label[0.2,4.9;If you want more then four bags you need also a bag key.]"
        .."label[0.2,5.2;With each new bag key level you can get one more bag.]"
		.."label[0.0,5.5;c) Armor]"
		.."label[0.2,5.8;Craft some armor (look in the 'Craft Guide' how).]"
        .."label[0.2,6.1;You can use armor to save you from monsters.]"
        .."label[0.2,6.4;There are 5 differend armor parts:]"
		.."label[0.2,6.7;Helmets, chestplates, leggings, boots and shields]"
		.."label[0.2,7.0;If you have a full regnum armor you can't burn or drown.]"
        .."label[0.2,7.3;If you have the armor key you can make your armor invisible to other.]"
		.."label[0.2,7.6;If you have the protection key you will have a higher protection.]"
        .."button[2,10;   2,0.5;rg2;<]"
        .."button[4,10;   2,0.5;rg4;>]"
	return formspec		
end
local rg5 = {}
rg5.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;I. 3. Help]"
		.."label[0.0,1.3;a) Regnum Guide]"
		.."label[0.2,1.6;You can read something about the Regnum Game :)]"
		.."label[0.0,1.9;b) Craft Guide]"
		.."label[0.2,2.2;Here you can see how to craft items.]"
        .."label[0.2,2.5;Click on one item to see the crafting.]"
        .."label[0.2,2.8;You can also see 4x4 and 5x5 craftings.]"
        .."label[0.2,3.1;You can see the craftings for battleaxes/armor/gun in the Regnum Craft Guide.]"
		.."label[0.0,3.4;c) Xp Guide]"
        .."label[0.2,3.7;If you dig uranium (not from the technic mod), red ore, blue ore,]"
        .."label[0.2,4.0;Xp block (grey), Xp Block (yellow) or you place a Crystalbottle, you will get xp.]"
		.."label[0.2,4.3;There are 6 differend kinds of xp.]"
        .."label[0.2,4.6;You can see here how many xp you have.]"
        .."label[0.2,4.9;If you want to see how many xp you need for the next level,]"
        .."label[0.2,5.2;you will need the xp key.]"
        .."button[2,10;   2,0.5;rg4;<]"
        .."button[4,10;   2,0.5;rg6;>]"
	return formspec		
end
local rg = {}
rg.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[9,10.3]"
	    .."button[0,0;2,0.5;inven;Back]"
	    .."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
	    .."label[0,1;This is the first page of the Regnum guide.]"
        .."label[0,1.3;Here you can get some basic informations]"
        .."label[0,1.6;about my game: Regnum]"
        .."label[0,1.9;I develop the Regnum game over the last 8 years.]"
        .."label[0,2.5;Thanks to:]"
        .."label[0,2.8;NightmareLP for building a mod]"
        .."label[0,3.1;et77 for great ideas]"
        .."label[0,3.4;wuschel1912 for testing]"
		.."label[0,3.7;jumali for testing]"
        .."button[4,10;2,0.5;rg2;>]"
	return formspec		
end
local dna = {}
dna.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    player_inv:set_size("dna", 8)
	player_inv:set_size("dogdna", 1)
	player_inv:set_size("catdna", 1)
    player_inv:set_size("sheepdna", 1)
    player_inv:set_size("dragondna", 1)
    player_inv:set_size("foxdna", 1)
    player_inv:set_size("tortoisedna", 1)
	local dog = player_inv:get_stack("dogdna", 1):get_count()
	local cat = player_inv:get_stack("catdna", 1):get_count()
    local sheep = player_inv:get_stack("sheepdna", 1):get_count()
    local dragon = player_inv:get_stack("dragondna", 1):get_count()
    local fox = player_inv:get_stack("foxdna", 1):get_count()
    local tortoise = player_inv:get_stack("tortoisedna", 1):get_count()
	if cat == 20 then
		if player_inv:room_for_item("main", "mobs:cat_egg") == true then
			player_inv:add_item("catdna","default:dirt")
			player_inv:add_item("main","mobs:cat_egg")
			player_inv:add_item("a16","default:dirt")
			percat = ""
		else
			percat = "100% "
		end
	elseif cat > 20 then
		percat = ""
	else
		percat = (cat*5).."% " 
	end
	if dog == 20 then
		if player_inv:room_for_item("main", "mobs:dog_egg") == true then
			player_inv:add_item("dogdna","default:dirt")
			player_inv:add_item("main","mobs:dog_egg")
			player_inv:add_item("a15","default:dirt")
			perdog = ""
		else
			perdog = "100% "
		end
	elseif dog > 20 then
		perdog = ""
	else
		perdog = (dog*5).."% " 
	end
    if sheep == 20 then
		if player_inv:room_for_item("main", "mobs:sheep_egg") == true then
			player_inv:add_item("sheepdna","default:dirt")
			player_inv:add_item("main","mobs:sheep_egg")
			player_inv:add_item("a17","default:dirt")
			persheep = ""
		else
			persheep = "100% "
		end
	elseif sheep > 20 then
		persheep = ""
	else
		persheep = (sheep*5).."% " 
	end
    if dragon == 25 then
		if player_inv:room_for_item("main", "mobs:dragon_egg") == true then
			player_inv:add_item("dragondna","default:dirt")
			player_inv:add_item("main","mobs:dragon_egg")
			player_inv:add_item("a18","default:dirt")
			perdragon = ""
		else
			perdragon = "100% "
		end
	elseif dragon > 25 then
		perdragon = ""
	else
		perdragon = (dragon*4).."% " 
	end
    if fox == 25 then
		if player_inv:room_for_item("main", "mobs:fox_egg") == true then
			player_inv:add_item("foxdna","default:dirt")
			player_inv:add_item("main","mobs:fox_egg")
			player_inv:add_item("a29","default:dirt")
			perfox = ""
		else
			perfox = "100% "
		end
	elseif fox > 25 then
		perfox = ""
	else
		perfox = (fox*4).."% " 
	end
    if tortoise == 50 then
		if player_inv:room_for_item("main", "mobs:tortoise_egg") == true then
			player_inv:add_item("tortoisedna","default:dirt")
			player_inv:add_item("main","mobs:tortoise_egg")
			player_inv:add_item("a30","default:dirt")
			pertortoise = ""
		else
			pertortoise = "100% "
		end
	elseif tortoise > 50 then
		pertortoise = ""
	else
		pertortoise = (tortoise*2).."% " 
	end
	formspec = "size[8,9.5]"
        .."background[8,9.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."button[4,0;2,0.5;mobpos;Mob positions]"
		.."label[0,1;loading dog DNA...]"
        .."label[0,1.4;loading cat DNA...]"
		.."label[0,1.8;loading sheep DNA...]"
        .."label[0,2.2;loading dragon DNA...]"
        .."label[0,2.6;loading fox DNA...]"
        .."label[0,3;loading tortoise DNA...]"
		.."label[3,1;"..perdog.."complete]"
		.."label[3,1.4;"..percat.."complete]"
        .."label[3,1.8;"..persheep.."complete]"
        .."label[3,2.2;"..perdragon.."complete]"
        .."label[3,2.6;"..perfox.."complete]"
        .."label[3,3;"..pertortoise.."complete]"
		.."list[current_player;dna;0,3.6;8,1;]"
		.."button[5,2.3;2,0.5;dnab;build DNA]"
		.."list[current_player;main;0,5.5;8,1;]"
		.."list[current_player;main;0,6.75;8,3;8]"
        .."listring[current_player;main]"
		.."listring[current_player;dna]"
	return formspec		
end
local mobpos = {}
mobpos.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    player_inv:set_size("gem1", 8)
    player_inv:set_size("gem2", 8)
    local dog = ""
    local cat = ""
    local sheep = ""
    local dragon = ""
    local fox = ""
    local tortoise = ""
    local knight = ""
    if player:get_attribute("dogx") ~= nil then
        dog = player:get_attribute("dogx")..", "..player:get_attribute("dogy")..", "..player:get_attribute("dogz")
    end
    if player:get_attribute("catx") ~= nil then
        cat = player:get_attribute("catx")..", "..player:get_attribute("caty")..", "..player:get_attribute("catz")
    end
    if player:get_attribute("sheepx") ~= nil then
        sheep = player:get_attribute("sheepx")..", "..player:get_attribute("sheepy")..", "..player:get_attribute("sheepz")
    end
    if player:get_attribute("dragonx") ~= nil then
        dragon = player:get_attribute("dragonx")..", "..player:get_attribute("dragony")..", "..player:get_attribute("dragonz")
    end
    if player:get_attribute("foxx") ~= nil then
        fox = player:get_attribute("foxx")..", "..player:get_attribute("foxy")..", "..player:get_attribute("foxz")
    end
    if player:get_attribute("tortoisex") ~= nil then
        tortoise = player:get_attribute("tortoisex")..", "..player:get_attribute("tortoisey")..", "..player:get_attribute("tortoisez")
    end
    if player:get_attribute("knightx") ~= nil then
        knight = player:get_attribute("knightx")..", "..player:get_attribute("knighty")..", "..player:get_attribute("knightz")
    end
	formspec = "size[4,3]"
        .."background[4,3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."button[0,0;2,0.5;dna;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."label[0,1;Dog pos:"..dog.."]"
        .."label[0,1.3;Cat pos:"..cat.."]"
        .."label[0,1.6;Sheep pos:"..sheep.."]"
        .."label[0,1.9;Dragon pos:"..dragon.."]"
        .."label[0,2.2;Fox pos:"..fox.."]"
        .."label[0,2.5;Tortoise pos:"..tortoise.."]"
        .."label[0,2.8;1248 Knight pos:"..knight.."]"
	return formspec		
end
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if fields.dna then
		inventory_plus.set_inventory_formspec(player, dna.get_formspec(player))
	end
    if fields.mobpos then
		inventory_plus.set_inventory_formspec(player, mobpos.get_formspec(player))
	end
    if fields.xpi then
		inventory_plus.set_inventory_formspec(player, xpi.get_formspec(player))
	end
    if fields.xpi0 then
		inventory_plus.set_inventory_formspec(player, xpi0.get_formspec(player))
	end
    if fields.xpi2 then
		inventory_plus.set_inventory_formspec(player, xpi2.get_formspec(player))
	end
    if fields.xpi3 then
		inventory_plus.set_inventory_formspec(player, xpi3.get_formspec(player))
	end
    if fields.rg then
		inventory_plus.set_inventory_formspec(player, rg.get_formspec(player))
	end
    if fields.rg1 then
		inventory_plus.set_inventory_formspec(player, rg.get_formspec(player))
	end
    if fields.rg2 then
		inventory_plus.set_inventory_formspec(player, rg2.get_formspec(player))
	end
    if fields.rg3 then
		inventory_plus.set_inventory_formspec(player, rg3.get_formspec(player))
	end
    if fields.rg4 then
		inventory_plus.set_inventory_formspec(player, rg4.get_formspec(player))
	end
    if fields.rg5 then
		inventory_plus.set_inventory_formspec(player, rg5.get_formspec(player))
	end
    if fields.rg6 then
		inventory_plus.set_inventory_formspec(player, rg6.get_formspec(player))
	end
    if fields.rg7 then
		inventory_plus.set_inventory_formspec(player, rg7.get_formspec(player))
	end
    if fields.rg8 then
		inventory_plus.set_inventory_formspec(player, rg8.get_formspec(player))
	end
    if fields.rg9 then
		inventory_plus.set_inventory_formspec(player, rg9.get_formspec(player))
	end
    if fields.rg10 then
		inventory_plus.set_inventory_formspec(player, rg10.get_formspec(player))
	end
    if fields.rg11 then
		inventory_plus.set_inventory_formspec(player, rg11.get_formspec(player))
	end
    if fields.rg12 then
		inventory_plus.set_inventory_formspec(player, rg12.get_formspec(player))
	end
    if fields.rg13 then
		inventory_plus.set_inventory_formspec(player, rg13.get_formspec(player))
	end
    if fields.rg14 then
		inventory_plus.set_inventory_formspec(player, rg14.get_formspec(player))
	end
    if fields.rg15 then
		inventory_plus.set_inventory_formspec(player, rg15.get_formspec(player))
	end
	if fields.rg16 then
		inventory_plus.set_inventory_formspec(player, rg16.get_formspec(player))
	end
    if fields.crafting5 then
		inventory_plus.set_inventory_formspec(player, crafting5.get_formspec(player))
	end
	if fields.dnab then
		local player_inv = player:get_inventory()
		local x1 = player_inv:get_stack("dna", 1):get_name()
		local x2 = player_inv:get_stack("dna", 2):get_name()
		local x3 = player_inv:get_stack("dna", 3):get_name()
		local x4 = player_inv:get_stack("dna", 4):get_name()
		local x5 = player_inv:get_stack("dna", 5):get_name()
		local x6 = player_inv:get_stack("dna", 6):get_name()
		local x7 = player_inv:get_stack("dna", 7):get_name()
		local x8 = player_inv:get_stack("dna", 8):get_name()
        local y1 = player_inv:get_stack("dna", 1):get_count()
		local y2 = player_inv:get_stack("dna", 2):get_count()
		local y3 = player_inv:get_stack("dna", 3):get_count()
		local y4 = player_inv:get_stack("dna", 4):get_count()
		local y5 = player_inv:get_stack("dna", 5):get_count()
		local y6 = player_inv:get_stack("dna", 6):get_count()
		local y7 = player_inv:get_stack("dna", 7):get_count()
		local y8 = player_inv:get_stack("dna", 8):get_count()
		local dog = player_inv:get_stack("dogdna", 1):get_count()
		local cat = player_inv:get_stack("catdna", 1):get_count()
        local sheep = player_inv:get_stack("sheepdna", 1):get_count()
        local dragon = player_inv:get_stack("dragondna", 1):get_count()
        local fox = player_inv:get_stack("foxdna", 1):get_count()
        local tortoise = player_inv:get_stack("tortoisedna", 1):get_count()
		if x1 == "tutorial:dna_string" and x2 == "tutorial:dna_string" and x3 == "tutorial:dna_string" and x4 == "tutorial:dna_string" and x5 == "tutorial:dna_string" and x6 == "tutorial:dna_string" and x7 == "tutorial:dna_string" and x8 == "tutorial:dna_string" then
			player_inv:set_stack("dna", 1, "tutorial:dna_string "..(y1-1))
            player_inv:set_stack("dna", 2, "tutorial:dna_string "..(y2-1))
            player_inv:set_stack("dna", 3, "tutorial:dna_string "..(y3-1))
            player_inv:set_stack("dna", 4, "tutorial:dna_string "..(y4-1))
            player_inv:set_stack("dna", 5, "tutorial:dna_string "..(y5-1))
            player_inv:set_stack("dna", 6, "tutorial:dna_string "..(y6-1))
            player_inv:set_stack("dna", 7, "tutorial:dna_string "..(y7-1))
            player_inv:set_stack("dna", 8, "tutorial:dna_string "..(y8-1))
			local z = math.random(6)
			if z == 1 then
				if dog < 20 then
					player_inv:add_item("dogdna","default:dirt")
				end
			elseif z == 2 then
				if cat < 20 then
					player_inv:add_item("catdna","default:dirt")
				end
            elseif z == 3 then
                if sheep < 20 then
					player_inv:add_item("sheepdna","default:dirt")
				end
            elseif z == 4 then
                if dragon < 25 then
					player_inv:add_item("dragondna","default:dirt")
				end
            elseif z == 5 then
                if fox < 25 then
					player_inv:add_item("foxdna","default:dirt")
				end
            elseif z == 6 then
                if tortoise < 50 then
					player_inv:add_item("tortoisedna","default:dirt")
				end
			end
		end
        if x1 == "tutorial:big_dna_string" and x2 == "tutorial:big_dna_string" and x3 == "tutorial:big_dna_string" and x4 == "tutorial:big_dna_string" and x5 == "tutorial:big_dna_string" and x6 == "tutorial:big_dna_string" and x7 == "tutorial:big_dna_string" and x8 == "tutorial:big_dna_string" then
		    player_inv:set_stack("dna", 1, "tutorial:big_dna_string "..(y1-1))
            player_inv:set_stack("dna", 2, "tutorial:big_dna_string "..(y2-1))
            player_inv:set_stack("dna", 3, "tutorial:big_dna_string "..(y3-1))
            player_inv:set_stack("dna", 4, "tutorial:big_dna_string "..(y4-1))
            player_inv:set_stack("dna", 5, "tutorial:big_dna_string "..(y5-1))
            player_inv:set_stack("dna", 6, "tutorial:big_dna_string "..(y6-1))
            player_inv:set_stack("dna", 7, "tutorial:big_dna_string "..(y7-1))
            player_inv:set_stack("dna", 8, "tutorial:big_dna_string "..(y8-1))
            player_inv:add_item("main","mobs:random_monster_egg 6")
        end
		inventory_plus.set_inventory_formspec(player, dna.get_formspec(player))
	end
end)
local ach = {}
ach.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
	player_inv:set_size("a1", 1)
	player_inv:set_size("a2", 1)
	player_inv:set_size("a3", 1)
	player_inv:set_size("a4", 1)
	player_inv:set_size("a5", 1)
	player_inv:set_size("a6", 1)
	player_inv:set_size("a7", 1)
	player_inv:set_size("a8", 1)
	player_inv:set_size("a9", 1)
	player_inv:set_size("a10", 1)
	player_inv:set_size("a11", 1)
	player_inv:set_size("a12", 1)
	player_inv:set_size("a13", 1)
	player_inv:set_size("a14", 1)
	player_inv:set_size("a15", 1)
	player_inv:set_size("a16", 1)
    player_inv:set_size("a17", 1)
    player_inv:set_size("a18", 1)
    player_inv:set_size("a19", 1)
    player_inv:set_size("a20", 1)
    player_inv:set_size("a21", 1)
    player_inv:set_size("a22", 1)
    player_inv:set_size("a23", 1)
    player_inv:set_size("a24", 1)
    player_inv:set_size("a25", 1)
    player_inv:set_size("a26", 1)
    player_inv:set_size("a27", 1)
    player_inv:set_size("a28", 1)
    player_inv:set_size("a29", 1)
    player_inv:set_size("a30", 1)
    player_inv:set_size("a31", 1)
    player_inv:set_size("a32", 1)
    player_inv:set_size("a33", 1)
    player_inv:set_size("a34", 1)
    player_inv:set_size("a35", 1)
    player_inv:set_size("a36", 1)
    player_inv:set_size("a37", 1)
    player_inv:set_size("a38", 1)
    player_inv:set_size("a39", 1)
    player_inv:set_size("a40", 1)
    player_inv:set_size("a41", 1)
    player_inv:set_size("a42", 1)
    player_inv:set_size("a43", 1)
    player_inv:set_size("a44", 1)
    player_inv:set_size("a45", 1)
    player_inv:set_size("a46", 1)
    player_inv:set_size("a47", 1)
    player_inv:set_size("a48", 1)
    player_inv:set_size("a49", 1)
    player_inv:set_size("a50", 1)
	local a1 = player_inv:get_stack("a1", 1):get_count()
	local a2 = player_inv:get_stack("a2", 1):get_count()
	local a3 = player_inv:get_stack("a3", 1):get_count()
	local a4 = player_inv:get_stack("a4", 1):get_count()
	local a5 = player_inv:get_stack("a5", 1):get_count()
	local a6 = player_inv:get_stack("a6", 1):get_count()
	local a7 = player_inv:get_stack("a7", 1):get_count()
	local a8 = player_inv:get_stack("a8", 1):get_count()
	local a9 = player_inv:get_stack("a9", 1):get_count()
	local a10 = player_inv:get_stack("a10", 1):get_count()
	local a11 = player_inv:get_stack("a11", 1):get_count()
	local a12 = player_inv:get_stack("a12", 1):get_count()
	local a13 = player_inv:get_stack("a13", 1):get_count()
	local a14 = player_inv:get_stack("a14", 1):get_count()
	local a15 = player_inv:get_stack("a15", 1):get_count()
	local a16 = player_inv:get_stack("a16", 1):get_count()
    local a17 = player_inv:get_stack("a17", 1):get_count()
    local a18 = player_inv:get_stack("a18", 1):get_count()
    local a19 = player_inv:get_stack("a19", 1):get_count()
    local a20 = player_inv:get_stack("a20", 1):get_count()
    local a21 = player_inv:get_stack("a21", 1):get_count()
    local a22 = player_inv:get_stack("a22", 1):get_count()
    local a23 = player_inv:get_stack("a23", 1):get_count()
    local a24 = player_inv:get_stack("a24", 1):get_count()
    local a25 = player_inv:get_stack("a25", 1):get_count()
    local a26 = player_inv:get_stack("a26", 1):get_count()
    local a27 = player_inv:get_stack("a27", 1):get_count()
    local a28 = player_inv:get_stack("a28", 1):get_count()
    local a29 = player_inv:get_stack("a29", 1):get_count()
    local a30 = player_inv:get_stack("a30", 1):get_count()
    local a31 = player_inv:get_stack("a31", 1):get_count()
    local a32 = player_inv:get_stack("a32", 1):get_count()
    local a33 = player_inv:get_stack("a33", 1):get_count()
    local a34 = player_inv:get_stack("a34", 1):get_count()
    local a35 = player_inv:get_stack("a35", 1):get_count()
    local a36 = player_inv:get_stack("a36", 1):get_count()
    local a37 = player_inv:get_stack("a37", 1):get_count()
    local a38 = player_inv:get_stack("a38", 1):get_count()
    local a39 = player_inv:get_stack("a39", 1):get_count()
    local a40 = player_inv:get_stack("a40", 1):get_count()
    local a41 = player_inv:get_stack("a41", 1):get_count()
    local a42 = player_inv:get_stack("a42", 1):get_count()
    local a43 = player_inv:get_stack("a43", 1):get_count()
    local a44 = player_inv:get_stack("a44", 1):get_count()
    local a45 = player_inv:get_stack("a45", 1):get_count()
    local a46 = player_inv:get_stack("a46", 1):get_count()
    local a47 = player_inv:get_stack("a47", 1):get_count()
    local a48 = player_inv:get_stack("a48", 1):get_count()
    local a49 = player_inv:get_stack("a49", 1):get_count()
    local a50 = player_inv:get_stack("a50", 1):get_count()
    local d1 = 0
    if a1 == 1 then
        d1 = d1+1
    end
    if a2 == 1 then
        d1 = d1+1
    end
    if a3 == 1 then
        d1 = d1+1
    end
    if a4 == 1 then
        d1 = d1+1
    end
    if a5 == 1 then
        d1 = d1+1
    end
    if a6 == 1 then
        d1 = d1+1
    end
    if a7 == 1 then
        d1 = d1+1
    end
    if a8 == 1 then
        d1 = d1+1
    end
    if a9 == 1 then
        d1 = d1+1
    end
    if a10 == 1 then
        d1 = d1+1
    end
    if a11 == 1 then
        d1 = d1+1
    end
    if a12 == 1 then
        d1 = d1+1
    end
    if a13 == 1 then
        d1 = d1+1
    end
    if a14 == 1 then
        d1 = d1+1
    end
    if a15 == 1 then
        d1 = d1+1
    end
    if a16 == 1 then
        d1 = d1+1
    end
    if a17 == 1 then
        d1 = d1+1
    end
    if a18 == 1 then
        d1 = d1+1
    end
    if a19 == 1 then
        d1 = d1+1
    end
    if a20 == 1 then
        d1 = d1+1
    end
    if a21 == 1 then
        d1 = d1+1
    end
    if a22 == 1 then
        d1 = d1+1
    end
    if a23 == 1 then
        d1 = d1+1
    end
    if a24 == 1 then
        d1 = d1+1
    end
    if a25 == 1 then
        d1 = d1+1
    end
    if a26 == 1 then
        d1 = d1+1
    end
    if a27 == 1 then
        d1 = d1+1
    end
    if a28 == 1 then
        d1 = d1+1
    end
    if a29 == 1 then
        d1 = d1+1
    end
    if a30 == 1 then
        d1 = d1+1
    end
    if a31 == 1 then
        d1 = d1+1
    end
    if a32 == 1 then
        d1 = d1+1
    end
    if a33 == 1 then
        d1 = d1+1
    end
    if a34 == 1 then
        d1 = d1+1
    end
    if a35 == 1 then
        d1 = d1+1
    end
    if a36 == 1 then
        d1 = d1+1
    end
    if a37 == 1 then
        d1 = d1+1
    end
    if a38 == 1 then
        d1 = d1+1
    end
    if a39 == 1 then
        d1 = d1+1
    end
    if a40 == 1 then
        d1 = d1+1
    end
    if a41 == 1 then
        d1 = d1+1
    end
    if a42 == 1 then
        d1 = d1+1
    end
    if a43 == 1 then
        d1 = d1+1
    end
    if a44 == 1 then
        d1 = d1+1
    end
    if a45 == 1 then
        d1 = d1+1
    end
    if a46 == 1 then
        d1 = d1+1
    end
    if a47 == 1 then
        d1 = d1+1
    end
    if a48 == 1 then
        d1 = d1+1
    end
    if a49 == 1 then
        d1 = d1+1
    end
    if a50 == 1 then
        d1 = d1+1
    end
	formspec = "size[10.5,11.3]"
        .."background[10.5,11.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."button[4,0;2,0.5;achc;Spezial]"
		.."image[0,1;0.8,0.8;tutorial_"..a1..".png]"
		.."image[0,1.8;0.8,0.8;tutorial_"..a2..".png]"
		.."image[0,2.6;0.8,0.8;tutorial_"..a3..".png]"
		.."image[0,3.4;0.8,0.8;tutorial_"..a4..".png]"
		.."image[0,4.2;0.8,0.8;tutorial_"..a5..".png]"
		.."image[0,5;0.8,0.8;tutorial_"..a6..".png]"
		.."image[0,5.8;0.8,0.8;tutorial_"..a7..".png]"
		.."image[0,6.6;0.8,0.8;tutorial_"..a8..".png]"
		.."image[0,7.4;0.8,0.8;tutorial_"..a9..".png]"
		.."image[0,8.2;0.8,0.8;tutorial_"..a10..".png]"
		.."image[0,9;0.8,0.8;tutorial_"..a11..".png]"
		.."image[0,9.8;0.8,0.8;tutorial_"..a12..".png]"
		.."image[0,10.6;0.8,0.8;tutorial_"..a13..".png]"
		.."image[2.5,1.0;0.8,0.8;tutorial_"..a14..".png]"
		.."image[2.5,1.8;0.8,0.8;tutorial_"..a15..".png]"
		.."image[2.5,2.6;0.8,0.8;tutorial_"..a16..".png]"
        .."image[2.5,3.4;0.8,0.8;tutorial_"..a17..".png]"
        .."image[2.5,4.2;0.8,0.8;tutorial_"..a18..".png]"
        .."image[2.5,5;0.8,0.8;tutorial_"..a19..".png]"
        .."image[2.5,5.8;0.8,0.8;tutorial_"..a20..".png]"
        .."image[2.5,6.6;0.8,0.8;tutorial_"..a21..".png]"
        .."image[2.5,7.4;0.8,0.8;tutorial_"..a22..".png]"
        .."image[2.5,8.2;0.8,0.8;tutorial_"..a23..".png]"
        .."image[2.5,9;0.8,0.8;tutorial_"..a24..".png]"
        .."image[2.5,9.8;0.8,0.8;tutorial_"..a25..".png]"
        .."image[2.5,10.6;0.8,0.8;tutorial_"..a26..".png]"
        .."image[5,1;0.8,0.8;tutorial_"..a27..".png]"
        .."image[5,1.8;0.8,0.8;tutorial_"..a28..".png]"
        .."image[5,2.6;0.8,0.8;tutorial_"..a29..".png]"
        .."image[5,3.4;0.8,0.8;tutorial_"..a30..".png]"
        .."image[5,4.2;0.8,0.8;tutorial_"..a31..".png]"
        .."image[5,5;0.8,0.8;tutorial_"..a32..".png]"
        .."image[5,5.8;0.8,0.8;tutorial_"..a33..".png]"
        .."image[5,6.6;0.8,0.8;tutorial_"..a34..".png]"
        .."image[5,7.4;0.8,0.8;tutorial_"..a35..".png]"
        .."image[5,8.2;0.8,0.8;tutorial_"..a36..".png]"
        .."image[5,9.0;0.8,0.8;tutorial_"..a37..".png]"
        .."image[5,9.8;0.8,0.8;tutorial_"..a38..".png]"
        .."image[5,10.6;0.8,0.8;tutorial_"..a39..".png]"
        .."image[7.5,1;0.8,0.8;tutorial_"..a40..".png]"
        .."image[7.5,1.8;0.8,0.8;tutorial_"..a41..".png]"
        .."image[7.5,2.6;0.8,0.8;tutorial_"..a42..".png]"
        .."image[7.5,3.4;0.8,0.8;tutorial_"..a43..".png]"
        .."image[7.5,4.2;0.8,0.8;tutorial_"..a44..".png]"
        .."image[7.5,5;0.8,0.8;tutorial_"..a45..".png]"
        .."image[7.5,5.8;0.8,0.8;tutorial_"..a46..".png]"
        .."image[7.5,6.6;0.8,0.8;tutorial_"..a47..".png]"
        .."image[7.5,7.4;0.8,0.8;tutorial_"..a48..".png]"
        .."image[7.5,8.2;0.8,0.8;tutorial_"..a49..".png]"
        .."image[7.5,9.0;0.8,0.8;tutorial_"..a50..".png]"
        .."label[6,0;"..d1.."/50]"
        .."button[6.5,0;2,0.5;rew;Reward (25)]"
        .."button[8.5,0;2,0.5;rewb;Reward (50)]"
	return formspec
end
local ach2 = {}
ach2.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    formspec= "label[0.8,1.1;Regnumbattleaxe]"
		.."label[0.8,1.9;Bagkey Lv.MAX]"
		.."label[0.8,2.7.5;Armorkey]"
		.."label[0.8,3.5;Levelkey]"
		.."label[0.8,4.3.5;Craftkey Lv.MAX]"
		.."label[0.8,5.1;Legendkey]"
		.."label[0.8,5.9;Regnumkey]"
		.."label[0.8,6.7;Pixeled Regnumkey]"
		.."label[0.8,7.5;8 Regnum Trolleys]"
		.."label[0.8,8.3;8 Legend Crystals]"
		.."label[0.8,9.1;Xp green Lv.MAX]"
		.."label[0.8,9.9;Xp red Lv.MAX]"
		.."label[0.8,10.7;Xp blue Lv.MAX]"
		.."label[3.3,1.1;Xp grey Lv.MAX]"
		.."label[3.3,1.9;Dog spawn-egg]"
		.."label[3.3,2.7;Cat spawn-egg]"
        .."label[3.3,3.5;Sheep spawn-egg]"
        .."label[3.3,4.3;Dragon spawn-egg]"
        .."label[3.3,5.1;Mining Laser lv.150]"
        .."label[3.3,5.9;All awards]"
        .."label[3.3,6.7;Mining Drill lv.150]"
        .."label[3.3,7.5;Dragonkey]"
        .."label[3.3,8.3;10 magic gems]"
        .."label[3.3,9.1;Regnumhelmet]"
        .."label[3.3,9.9;Regnumchestplate]"
        .."label[3.3,10.7;Regnumleggings]"
        .."label[5.8,1.1;Regnumboots]"
        .."label[5.8,1.9;Regnumshield]"
        .."label[5.8,2.7;Fox spawn-egg]"
        .."label[5.8,3.5;Tortoise spawn-egg]"
        .."label[5.8,4.3;Foxkey]"
        .."label[5.8,5.1;5 magic gems]"
        .."label[5.8,5.9;Wallplacer lv.MAX]"
        .."label[5.8,6.7;Xp yellow Lv.MAX]"
        .."label[5.8,7.5;All artifacts]"
        .."label[5.8,8.3;Tortoisekey]"
        .."label[5.8,9.1;Knightkey]"
        .."label[5.8,9.9;All medallions]"
        .."label[5.8,10.7;Crystalkey]"
        .."label[8.3,1.1;2 Regnum crystal]"
        .."label[8.3,1.9;Goldenkey]"
        .."label[8.3,2.7;Xp cyan Lv.MAX]"
        .."label[8.3,3.5;Cookingkey Lv.MAX]"
        .."label[8.3,4.3;2 Pixeled Regnumkeys]"
        .."label[8.3,5.1;All trophys]"
        .."label[8.3,5.9;Protectionkey lv.MAX]"
        .."label[8.3,6.7;All treasures]"
        .."label[8.3,7.5;Legendstick lv.MAX]"
        .."label[8.3,8.3;Regnumgun]"
        .."label[8.3,9.1;Colorstick (broken)]"
	return formspec
end
local ach3 = {}
ach3.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    player_inv:set_size("year", 4)
	local year = player_inv:get_stack("year", 1):get_count()
    local year2 = player_inv:get_stack("year", 2):get_count()
	local year3 = player_inv:get_stack("year", 3):get_count()
	local year4 = player_inv:get_stack("year", 4):get_count()
    local d = 0
    if year == 1 then
        d = d+1
    end
    if year2 == 1 then
        d = d+1
    end
	if year3 == 1 then
        d = d+1
    end
	if year4 == 1 then
        d = d+1
    end
    formspec= "size[10.5,11.3]"
        .."background[10.5,11.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[0,0;2,0.5;ach;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."label[0.8,1.1;One year Trophy]"
        .."label[0.8,1.9;Two years Trophy]"
		.."label[0.8,2.7;Three years Trophy]"
		.."label[0.8,3.5;Four years Trophy]"
        .."label[5.5,0;"..d.."/4]"
        .."image[0,1;0.8,0.8;tutorial_"..year..".png]"
        .."image[0,1.8;0.8,0.8;tutorial_"..year2..".png]"
		.."image[0,2.6;0.8,0.8;tutorial_"..year3..".png]"
		.."image[0,3.4;0.8,0.8;tutorial_"..year4..".png]"
	return formspec
end
for j = 1, 8, 1 do
	for i = 1, 8, 1 do
		minetest.register_node("tutorial:legend_thunder_"..i.."_"..j, {
			description = "Legend thunder: damage lv."..i..",lengh lv."..j,
			drawtype = "plantlike",
			tiles = {{
				name="tutorial_legend_thunder.png",
			}},
			light_source = 12,
			walkable = false,
			buildable_to = true,
			damage_per_second = (i*8),
			drop = {},
			groups = {dig_immediate=3,not_in_creative_inventory=1},
		})
		minetest.register_abm({
			nodenames = {"tutorial:legend_thunder_"..i.."_"..j},
			interval = (j*3),
			chance = 1,
			action = function(pos)
				minetest.env:remove_node(pos)
			end,
		})
	end
end
for k = 1, 8, 1 do
	for j = 1, 8, 1 do
		for i = 1, 8, 1 do
			minetest.register_entity("tutorial:legendball_"..i.."_"..j.."_"..k, {
				visual = "mesh",
				visual_size = {x=5, y=5},
				mesh = "tutorial_fireball.x",
				textures = {"tutorial_legendball.png"},
				velocity = 5,
				light_source = 12,
				on_step = function(self, dtime)
						local pos = self.object:getpos()
						if minetest.env:get_node(self.object:getpos()).name ~= "air"then
							self.hit_node(self, pos, node)
							self.object:remove()
							return
						end
						pos.y = pos.y-1
						for _,player in pairs(minetest.env:get_objects_inside_radius(pos, 1)) do
							if player:is_player() then
								self.hit_player(self, player)
								self.object:remove()
								return
							end
						end
					end,
				hit_player = function(self, player)
					local hp = player:get_hp()
					if hp > (k*2) then
						player:set_hp(hp-(k*2))
					else
						player:set_hp(0)
					end
					local s = player:getpos()
					local p = player:get_look_dir()
					local vec = {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z}
					local pos = player:getpos()
					for dx=0,1 do
						for dy=0,1 do
							for dz=0,1 do
								local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
								local n = minetest.env:get_node(p).name
								if (n == "air") then
									minetest.env:add_node(p, {name="tutorial:legend_thunder_"..i.."_"..j})
								end
							end
						end
					end
				end,
				hit_node = function(self, pos, node)
					for dx=-1,1 do
						for dy=-2,1 do
							for dz=-1,1 do
								local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
								local n = minetest.env:get_node(p).name
								if (n == "air") then
									minetest.env:add_node(p, {name="tutorial:legend_thunder_"..i.."_"..j})
								end
							end
						end
					end
				end
			})
			minetest.register_tool("tutorial:legendball_"..i.."_"..j.."_"..k, {
				description = "Legend Ball: Ball damage lv."..k..", Thunder damage lv."..i..", Thunder lengh lv."..j,
				inventory_image = "tutorial_legendball.png",
				groups = {not_in_creative_inventory=1},
				on_use = function(itemstack, placer, pointed_thing)
						local dir = placer:get_look_dir();
						local inv = placer:get_inventory()
						local playerpos = placer:getpos();
						local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_"..i.."_"..j.."_"..k)
						local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
						if not minetest.setting_getbool("creative_mode") then 
                            itemstack:take_item() 
                        end
						obj:setvelocity(vec)
					return itemstack
				end,
				light_source = 12,
			})
		end
	end
end
local mode_text = {
	{"give player Enemy rank. (revoke all privs)"},
	{"give player Member rank. (interact,shout)"},
	{"give player Premium rank. (interact,shout,fly,fast,home)"},
	{"give player VIP rank. (interact,shout,fly,fast,home,teleport)"},
	{"give player Hero rank. (interact,shout,fly,fast,home,teleport,noclip,debug)"},
	{"give player Legend rank (interact,shout,fly,fast,home,teleport,noclip,debug,bring,settime)"},
	{"give player Admin rank (all privs)"},
	{"mark player as a youtuber"},
}
local function server_hammer_setmode(user, itemstack, mode, keys)
	local puncher = user:get_player_name()
	if keys["sneak"] == false and mode == 0 then
		return 
	end
	if keys["sneak"] == true then
		mode = mode + 1
		if mode == 9 then 
			mode = 1
		end
		minetest.chat_send_player(puncher, "Ban hammer mode : "..mode.." - "..mode_text[mode][1] )
	end
	itemstack:set_name("tutorial:server_hammer"..mode)
	itemstack:set_metadata(mode)
	return itemstack, mode
end
local function server_hammer_handler(itemstack, user, pointed_thing, mode)
	local keys = user:get_player_control()
	server_hammer_setmode(user, itemstack, mode, keys)
	if pointed_thing.type ~= "object" then
		return
	end
	if not pointed_thing.ref:is_player() then
		return
	end
	local puncher = user:get_player_name()
	local puncher_privs = minetest.get_player_privs(puncher)
	if (puncher_privs["ban"] == false) then
		return
	end
	local punched_player = pointed_thing.ref:get_player_name()
	local punched_player_privs = minetest.get_player_privs(punched_player)
	if mode == 1 then
		minetest.chat_send_player(punched_player, puncher.." gives you Enemy rank. You have no privs")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		local player = minetest.get_player_by_name(punched_player)
		local player_inv = player:get_inventory()
		player_inv:set_size("youtube", 1)
		local c = player_inv:get_stack("youtube",1):get_count()
		if c == 0 then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 0}, text = "[Enemy]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 0}, text = "[Youtuber][Enemy]"..player:get_player_name()})
		end
	elseif mode == 2 then
		minetest.chat_send_player(punched_player, puncher.." gives you Member rank. You can use interact and shout")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		punched_player_privs["interact"] = true
		punched_player_privs["shout"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)
		local player = minetest.get_player_by_name(punched_player)
		local player_inv = player:get_inventory()
		player_inv:set_size("youtube", 1)
		local c = player_inv:get_stack("youtube",1):get_count()
		if c == 0 then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 255}, text = "[Member]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 255}, text = "[Youtuber][Member]"..player:get_player_name()})
		end
	elseif mode == 3 then
		minetest.chat_send_player(punched_player, puncher.." gives you Premium rank. You can use interact,shout,fly,fast and home")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		punched_player_privs["interact"] = true
		punched_player_privs["shout"] = true
		punched_player_privs["fly"] = true
		punched_player_privs["fast"] = true
		punched_player_privs["home"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)
		local player = minetest.get_player_by_name(punched_player)
		local player_inv = player:get_inventory()
		player_inv:set_size("youtube", 1)
		local c = player_inv:get_stack("youtube",1):get_count()
		if c == 0 then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 0, b = 255}, text = "[Premium]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 0, b = 255}, text = "[Youtuber][Premium]"..player:get_player_name()})
		end
	elseif mode == 4 then
		minetest.chat_send_player(punched_player, puncher.." gives you VIP rank. You can use interact,shout,fly,fast,home and teleport")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		punched_player_privs["interact"] = true
		punched_player_privs["shout"] = true
		punched_player_privs["fly"] = true
		punched_player_privs["fast"] = true
		punched_player_privs["home"] = true
		punched_player_privs["teleport"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)	
		local player = minetest.get_player_by_name(punched_player)
		local player_inv = player:get_inventory()
		player_inv:set_size("youtube", 1)
		local c = player_inv:get_stack("youtube",1):get_count()
		if c == 0 then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 0}, text = "[VIP]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 0}, text = "[Youtuber][VIP]"..player:get_player_name()})
		end
	elseif mode == 5 then
		minetest.chat_send_player(punched_player, puncher.." gives you Hero rank. You can use interact,shout,fly,fast,home,teleport,noclip and debug")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		punched_player_privs["interact"] = true
		punched_player_privs["shout"] = true
		punched_player_privs["fly"] = true
		punched_player_privs["fast"] = true
		punched_player_privs["home"] = true
		punched_player_privs["teleport"] = true
		punched_player_privs["noclip"] = true
        punched_player_privs["debug"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)
		local player = minetest.get_player_by_name(punched_player)
		local player_inv = player:get_inventory()
		player_inv:set_size("youtube", 1)
		local c = player_inv:get_stack("youtube",1):get_count()
		if c == 0 then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 255}, text = "[Hero]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 255}, text = "[Youtuber][Hero]"..player:get_player_name()})
		end
	elseif mode == 6 then
		minetest.chat_send_player(punched_player, puncher.." gives you Legend rank. You can use interact,shout,fly,fast,home,teleport,noclip,debug,bring and settime")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		punched_player_privs["interact"] = true
		punched_player_privs["shout"] = true
		punched_player_privs["fly"] = true
		punched_player_privs["fast"] = true
		punched_player_privs["home"] = true
		punched_player_privs["bring"] = true
		punched_player_privs["teleport"] = true
		punched_player_privs["noclip"] = true
        punched_player_privs["debug"] = true
		punched_player_privs["settime"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)
		local player = minetest.get_player_by_name(punched_player)
		local player_inv = player:get_inventory()
		player_inv:set_size("youtube", 1)
		local c = player_inv:get_stack("youtube",1):get_count()
		if c == 0 then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 0}, text = "[Legend]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 0}, text = "[Youtuber][Legend]"..player:get_player_name()})
		end
	elseif mode == 7 then
		minetest.chat_send_player(punched_player, puncher.." gives you Admin rank. You can use every privs")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		punched_player_privs["interact"] = true
		punched_player_privs["shout"] = true
		punched_player_privs["fly"] = true
		punched_player_privs["fast"] = true
		punched_player_privs["home"] = true
		punched_player_privs["bring"] = true
		punched_player_privs["teleport"] = true
		punched_player_privs["noclip"] = true
        punched_player_privs["debug"] = true
		punched_player_privs["settime"] = true
		punched_player_privs["server"] = true
		punched_player_privs["password"] = true
		punched_player_privs["delprotect"] = true
		punched_player_privs["kick"] = true
		punched_player_privs["ban"] = true
		punched_player_privs["rollback"] = true
		punched_player_privs["privs"] = true
		punched_player_privs["basic_privs"] = true
		punched_player_privs["give"] = true
		punched_player_privs["protection_bypass"] = true
        punched_player_privs["travelnet_remove"] = true
        punched_player_privs["travelnet_attach"] = true
        punched_player_privs["shop_admin"] = true
		punched_player_privs["creative"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)
		local player = minetest.get_player_by_name(punched_player)
		local player_inv = player:get_inventory()
		player_inv:set_size("youtube", 1)
		local c = player_inv:get_stack("youtube",1):get_count()
		if c == 0 then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 255}, text = "[Admin]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 255}, text = "[Youtuber][Admin]"..player:get_player_name()})
		end
	elseif mode == 8 then
		minetest.chat_send_player(punched_player, puncher.." marks you as a youtuber")
		pri = minetest.get_player_privs(punched_player)
		local player = minetest.get_player_by_name(punched_player)
		if pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.debug and pri.settime and pri.bring and pri.server and pri.password and pri.delprotect and pri.kick and pri.ban and pri.rollback and pri.privs and pri.basic_privs and pri.give and pri.sign_editor and pri.protection_bypass and pri.travelnet_remove and pri.travelnet_attach and pri.shop_admin and pri.creative then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 255}, text = "[Youtuber][Admin]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.debug and pri.settime and pri.bring then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 0}, text = "[Youtuber][Legend]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.debug then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 255}, text = "[Youtuber][Hero]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 0}, text = "[Youtuber][VIP]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 0, b = 255}, text = "[Youtuber][Premium]"..player:get_player_name()})
		elseif pri.interact and pri.shout then
			player:set_nametag_attributes({text = "[Youtuber][Member]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 0}, text = "[Youtuber][Enemy]"..player:get_player_name()})
		end
		local inv = player:get_inventory()
		inv:set_size("youtube",1)
		inv:set_stack("youtube",1,"default:dirt")
	end
	return itemstack
end
minetest.register_craftitem("tutorial:server_hammer", {
	description = "Admin tool 6: Server Hammer",
	inventory_image = "ban_hammer.png",
	stack_max = 1,
	groups = {not_in_creative_inventory=1},
	on_secondary_use = function(itemstack, user, pointed_thing)
		local mode = 0
		server_hammer_handler(itemstack, user, pointed_thing, mode)
		return itemstack
	end,
	on_use = function(itemstack, user, pointed_thing)
		local mode = 0
		server_hammer_handler(itemstack, user, pointed_thing, mode)
		return itemstack
	end,
})
minetest.register_craftitem("tutorial:server_hammer1", {
		description = "Admin tool 6: Server Hammer Mode 1 ("..mode_text[1][1]..")",
		inventory_image = "ban_hammer.png^technic_tool_mode1.png",
		wield_image = "ban_hammer.png",
		on_secondary_use = function(itemstack, user, pointed_thing)
			server_hammer_handler(itemstack, user, pointed_thing, 1)
			return itemstack
		end,
	})
for i = 2, 8 do
	minetest.register_craftitem("tutorial:server_hammer"..i, {
		description = "Admin tool 6: Server Hammer in Mode "..i.." ("..mode_text[i][1]..")",
		inventory_image = "ban_hammer.png^technic_tool_mode"..i..".png",
		wield_image = "ban_hammer.png",
		groups = {not_in_creative_inventory=1},
		on_secondary_use = function(itemstack, user, pointed_thing)
			local mode = i
			server_hammer_handler(itemstack, user, pointed_thing, mode)
			return itemstack
		end,
	})
end
minetest.register_on_joinplayer(function(player)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
	player_inv:set_size("t", 1)
	player_inv:add_item("t", "default:dirt")
end)
local kri = {}
kri.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
	local kri_inv = minetest.create_detached_inventory(player:get_player_name().."_kri",{
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
	kri_inv:set_size("kri", 8)
	player_inv:set_size("kri", 8)
	player_inv:set_size("de", 1)
	player_inv:set_size("td", 1)
	player_inv:set_size("tl", 1)
	player_inv:set_size("time", 1)
	player_inv:set_size("t", 1)
    player_inv:set_size("krit", 1)
	local dl = player_inv:get_stack("de", 1):get_count()
	local tdl = player_inv:get_stack("td", 1):get_count()
	local tll = player_inv:get_stack("tl", 1):get_count()
	local tes = player_inv:get_stack("t", 1):get_count()
	if dl == 0 then
		dl = "nil"
	end
	if tdl == 0 then
		tdl = "nil"
	end
	if tll == 0 then
		tll = "nil"
	end
	local k = 0
	for i=1, 8 do
		local stack = player_inv:get_stack("kri", i)
		kri_inv:set_stack("kri", i, stack)
		if not player_inv:get_stack("kri", i):is_empty() then
			k = k+1
		end
	end
	local time = 0
	if dl ~= "nil" and tdl ~= "nil" and tll ~= "nil" then
		time = time+(dl*35)
		time = time+(tdl*15)
		time = time+(tll*10)
        if player_inv:get_stack("krit", 1):get_name() == "tutorial:crystal_schluessel" then
		    time = time/2
        end
	else
		time = "nil"
	end
	
	formspec = "size[10,12.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[10,8.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."list[current_player;krit;0.3,2.5;1,1;]"
        .."list[current_player;main;1,8.75;8,4;]"
        .."label[0.3,3.5;crystalkey]"
		.."list[detached:"..player:get_player_name().."_kri;kri;3,1;2,1;]"
		.."list[detached:"..player:get_player_name().."_kri;kri;5,2;1,2;2]"
		.."list[detached:"..player:get_player_name().."_kri;kri;4,4;1,1;4]"
		.."list[detached:"..player:get_player_name().."_kri;kri;3,4;1,1;5]"
		.."list[detached:"..player:get_player_name().."_kri;kri;2,3;1,1;6]"
		.."list[detached:"..player:get_player_name().."_kri;kri;2,2;1,1;7]"
        .."listring[current_player;krit]"
		.."listring[current_player;main]"
		.."label[0,1;You have "..k.."/8 crystals]"
		.."image[3.1,2.1;2,2;tutorial_legendenkristall.png]"
		.."label[7,1;Ball damage level:"..dl.."]"
		.."label[7,1.5;Thunder damage level:"..tdl.."]"
		.."label[7,2;Thunder damage level:"..tll.."]"
		.."label[7,2.5;Time in s:"..time.."]"
		.."label[0,5.75;Ball damage level]"
		.."label[0,6.75;Thunder damage level]"
		.."label[0,7.75;Thunder length level]"
	if k > 0 then
		formspec = formspec .."button[2,5.75;1,0.5;adem;1]"
		    .."button[2,6.75;1,0.5;athu;1]"
		    .."button[2,7.75;1,0.5;athl;1]"
            if time ~= "nil" and tes == 0 then
                formspec = formspec .."label[7,3;creating..]"
            end
	end
	if k > 1 then
		formspec = formspec .."button[3,5.75;1,0.5;bdem;2]"
		    .."button[3,6.75;1,0.5;bthu;2]"
		    .."button[3,7.75;1,0.5;bthl;2]"
	end
	if k > 2 then
		formspec = formspec .."button[4,5.75;1,0.5;cdem;3]"
		    .."button[4,6.75;1,0.5;cthu;3]"
		    .."button[4,7.75;1,0.5;cthl;3]"
	end
	if k > 3 then
		formspec = formspec .."button[5,5.75;1,0.5;ddem;4]"
		    .."button[5,6.75;1,0.5;dthu;4]"
		    .."button[5,7.75;1,0.5;dthl;4]"
	end
	if k > 4 then
		formspec = formspec .."button[6,5.75;1,0.5;edem;5]"
		    .."button[6,6.75;1,0.5;ethu;5]"
		    .."button[6,7.75;1,0.5;ethl;5]"
	end
	if k > 5 then
		formspec = formspec .."button[7,5.75;1,0.5;fdem;6]"
		    .."button[7,6.75;1,0.5;fthu;6]"
		    .."button[7,7.75;1,0.5;fthl;6]"
	end
	if k > 6 then
		formspec = formspec .."button[8,5.75;1,0.5;gdem;7]"
		    .."button[8,6.75;1,0.5;gthu;7]"
		    .."button[8,7.75;1,0.5;gthl;7]"
	end
	if k > 7 then
		formspec = formspec .."button[9,5.75;1,0.5;hdem;8]"
		    .."button[9,6.75;1,0.5;hthu;8]"
		    .."button[9,7.75;1,0.5;hthl;8]"
	end
	if tes > 0  and time ~= "nil" then
		formspec = formspec .."button[7,3;2,0.5;cre;create]"
	end
	return formspec		
end
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if player == nil then
        return
    end
	if fields.kri then
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.ach then
		local player_inv = player:get_inventory()
		local name = player:get_player_name()
        player_inv:set_size("a1", 1)
		player_inv:set_size("a2", 1)
		player_inv:set_size("a3", 1)
		player_inv:set_size("a4", 1)
		player_inv:set_size("a5", 1)
		player_inv:set_size("a6", 1)
		player_inv:set_size("a7", 1)
		player_inv:set_size("a8", 1)
		player_inv:set_size("a9", 1)
		player_inv:set_size("a10", 1)
		player_inv:set_size("a11", 1)
		player_inv:set_size("a12", 1)
		player_inv:set_size("a13", 1)
		player_inv:set_size("a14", 1)
		player_inv:set_size("a15", 1)
		player_inv:set_size("a16", 1)
        player_inv:set_size("a17", 1)
        player_inv:set_size("a18", 1)
        player_inv:set_size("a19", 1)
        player_inv:set_size("a20", 1)
        player_inv:set_size("a21", 1)
        player_inv:set_size("a22", 1)
        player_inv:set_size("a23", 1)
        player_inv:set_size("a24", 1)
        player_inv:set_size("a25", 1)
        player_inv:set_size("a26", 1)
        player_inv:set_size("a27", 1)
        player_inv:set_size("a28", 1)
        player_inv:set_size("a29", 1)
        player_inv:set_size("a30", 1)
        player_inv:set_size("a31", 1)
        player_inv:set_size("a32", 1)
        player_inv:set_size("a33", 1)
        player_inv:set_size("a34", 1)
        player_inv:set_size("a35", 1)
        player_inv:set_size("a36", 1)
        player_inv:set_size("a37", 1)
        player_inv:set_size("a38", 1)
        player_inv:set_size("a39", 1)
        player_inv:set_size("a40", 1)
        player_inv:set_size("a41", 1)
        player_inv:set_size("a42", 1)
        player_inv:set_size("a43", 1)
        player_inv:set_size("a44", 1)
        player_inv:set_size("a45", 1)
        player_inv:set_size("a46", 1)
        player_inv:set_size("a47", 1)
        player_inv:set_size("a48", 1)
        player_inv:set_size("a49", 1)
        player_inv:set_size("a50", 1)
		local type = player:get_inventory():get_stack("b",1):get_name()
		local type2 = player:get_inventory():get_stack("arm",1):get_name()
		local type3 = player:get_inventory():get_stack("feld2",1):get_name()
		local type4 = player:get_inventory():get_stack("feld",1):get_name()
		local type5 = player:get_inventory():get_stack("feld3",1):get_name()
		local type6 = player:get_inventory():get_stack("feld4",1):get_name()
		local type7 = player:get_inventory():get_stack("skinskey",1):get_name()
		local type8 = 0
		local type9 = 0
        local type10 = player:get_inventory():get_stack("feld5",1):get_name()
		local ge = io.open(minetest.get_worldpath().."/"..name.."_experience", "r")
		local type10 = ge:read("*l")
		local rt = io.open(minetest.get_worldpath().."/"..name.."_experience_rot", "r")
		local type11 = rt:read("*l")
		local bl = io.open(minetest.get_worldpath().."/"..name.."_experience_blau", "r")
		local type12 = bl:read("*l")
		local gr = io.open(minetest.get_worldpath().."/"..name.."_experience_grau", "r")
		local type13 = gr:read("*l")
        local ye = io.open(minetest.get_worldpath().."/"..name.."_experience_gelb", "r")
		local type16 = ye:read("*l")
        local ce = io.open(minetest.get_worldpath().."/"..name.."_experience_cyan", "r")
		local type23 = ce:read("*l")
        local type14 = player:get_inventory():get_stack("feld5",1):get_name()
        local type15 = player:get_inventory():get_stack("feld6",1):get_name()
        local type17 = player:get_inventory():get_stack("feld7",1):get_name()
        local type18 = player:get_inventory():get_stack("skinskey2",1):get_name()
        local type19 = player:get_inventory():get_stack("krit",1):get_name()
        local type20 = player:get_inventory():get_stack("dragon",1):get_name()
        local type21 = player:get_inventory():get_stack("tortoise",1):get_name()
        local type22 = player:get_inventory():get_stack("feld8",1):get_name()
        local type24 = player:get_inventory():get_stack("cookkey",1):get_name()
        local type25 = player:get_inventory():get_stack("pixkey",1):get_name()
        local type26 = player:get_inventory():get_stack("arm2",1):get_name()
		for i=1,8 do
			if player:get_inventory():get_stack("bag"..i,1):get_name() == "bags:trolley_admin" then
				type8 = type8+1
			end
			if player:get_inventory():get_stack("kri",i):get_name() == "tutorial:legenden_kristall_"..i then
				type9 = type9+1
			end
		end
        local g1 = player_inv:get_stack("gem", 1):get_name()
        local g2 = player_inv:get_stack("gem", 2):get_name()
        local g3 = player_inv:get_stack("gem", 3):get_name()
        local g4 = player_inv:get_stack("gem", 4):get_name()
        local g5 = player_inv:get_stack("gem", 5):get_name()
        local g11 = player_inv:get_stack("2gem", 1):get_name()
        local g12 = player_inv:get_stack("2gem", 2):get_name()
        local g13 = player_inv:get_stack("2gem", 3):get_name()
        local g14 = player_inv:get_stack("2gem", 4):get_name()
        local g15 = player_inv:get_stack("2gem", 5):get_name()
        local ar1 = player_inv:get_stack("armor", 1):get_name()
        local ar2 = player_inv:get_stack("armor", 2):get_name()
        local ar3 = player_inv:get_stack("armor", 3):get_name()
        local ar4 = player_inv:get_stack("armor", 4):get_name()
        local ar5 = player_inv:get_stack("armor", 5):get_name()
        local afaf = player_inv:get_stack("afaf", 1):get_count()
        local meme = player_inv:get_stack("meme", 1):get_count()
        local trtr = player_inv:get_stack("trtr", 1):get_count()
        local tata = player_inv:get_stack("tata", 1):get_count()
        if afaf == 71 then
            player_inv:set_stack("a35", 1,"tutorial:dirt")
        end
        if meme == 7 then
            player_inv:set_stack("a38", 1,"tutorial:dirt")
        end
        if trtr == 24 then
            player_inv:set_stack("a45", 1,"tutorial:dirt")
        end
        if tata == 6 then
            player_inv:set_stack("a47", 1,"tutorial:dirt")
        end
        if ar1 == "3d_armor:regnumhelmet" or ar1 == "3d_armor:regnumhelmet2" or ar1 == "3d_armor:regnumhelmet3" or ar1 == "3d_armor:regnumhelmet4" then
            player_inv:set_stack("a24", 1,"tutorial:dirt")
        end
        if ar2 == "3d_armor:regnumchestplate" or ar2 == "3d_armor:regnumchestplate2" or ar2 == "3d_armor:regnumchestplate3" or ar2 == "3d_armor:regnumchestplate4" then
            player_inv:set_stack("a25", 1,"tutorial:dirt")
        end
        if ar3 == "3d_armor:regnumleggings" or ar3 == "3d_armor:regnumleggings2" or ar3 == "3d_armor:regnumleggings3" or ar3 == "3d_armor:regnumleggings4" then
            player_inv:set_stack("a26", 1,"tutorial:dirt")
        end
        if ar4 == "3d_armor:regnumboots" or ar4 == "3d_armor:regnumboots2" or ar4 == "3d_armor:regnumboots3" or ar4 == "3d_armor:regnumboots4" then
            player_inv:set_stack("a27", 1,"tutorial:dirt")
        end
        if ar5 == "shields:regnumshield" or ar5 == "shields:regnumshield2" or ar5 == "shields:regnumshield3" or ar5 == "shields:regnumshield4" then
            player_inv:set_stack("a28", 1,"tutorial:dirt")
        end
        if g1 == "tutorial:magic_gem1" and g2 == "tutorial:magic_gem2" and g3 == "tutorial:magic_gem3" and g4 == "tutorial:magic_gem4" and g5 == "tutorial:magic_gem5" then
            if g11 == "tutorial:magic_gem1" and g12 == "tutorial:magic_gem2" and g13 == "tutorial:magic_gem3" and g14 == "tutorial:magic_gem4" and g15 == "tutorial:magic_gem5" then
                player_inv:set_stack("a23", 1,"tutorial:dirt")
            end
        end
        if g1 == "tutorial:magic_gem1" and g2 == "tutorial:magic_gem2" and g3 == "tutorial:magic_gem3" and g4 == "tutorial:magic_gem4" and g5 == "tutorial:magic_gem5" then
            player_inv:set_stack("a32", 1,"tutorial:dirt")
        end
		if player:get_inventory():contains_item("main", "tutorial:regnumbattleaxe1") or player:get_inventory():contains_item("main", "tutorial:regnumbattleaxe2") or player:get_inventory():contains_item("main", "tutorial:regnumbattleaxe3") then
			player_inv:set_stack("a1", 1,"tutorial:dirt")
		end
        if player:get_inventory():contains_item("main", "tutorial:legendstick9") then
            player_inv:set_stack("a48", 1,"tutorial:dirt")
		end
        if player:get_inventory():contains_item("main", "tutorial:wallplacer5_1") or player:get_inventory():contains_item("main", "tutorial:wallplacer5_2") or player:get_inventory():contains_item("main", "tutorial:wallplacer5_3") or player:get_inventory():contains_item("main", "tutorial:wallplacer5_4") or player:get_inventory():contains_item("main", "tutorial:wallplacer5_5") then
			player_inv:set_stack("a33", 1,"tutorial:dirt")
		end
        if player:get_inventory():contains_item("main", "technic:laser_mkS150") then
			player_inv:set_stack("a19", 1,"tutorial:dirt")
		end
        if player:get_inventory():contains_item("main", "tutorial:colorstick_broken") then
			player_inv:set_stack("a50", 1,"tutorial:dirt")
		end
        if player:get_inventory():contains_item("main", "tutorial:regnumgun1") or player:get_inventory():contains_item("main", "tutorial:regnumgun2") then
			player_inv:set_stack("a49", 1,"tutorial:dirt")
		end
        if player:get_inventory():contains_item("main", "technic:drill_mkS150") or player:get_inventory():contains_item("main", "technic:drill_mkS150_1") or player:get_inventory():contains_item("main", "technic:drill_mkS150_2") or player:get_inventory():contains_item("main", "technic:drill_mkS150_3") or player:get_inventory():contains_item("main", "technic:drill_mkS150_4") or player:get_inventory():contains_item("main", "technic:drill_mkS150_5")then
			player_inv:set_stack("a21", 1,"tutorial:dirt")
		end
		if type == "tutorial:bag_schluessel4" then
			player_inv:set_stack("a2", 1,"tutorial:dirt")
		end
		if type2 == "tutorial:armor_key" then
			player_inv:set_stack("a3", 1, "default:dirt")
		end
		if type3 == "tutorial:level_schluessel" then
			player_inv:set_stack("a4", 1, "default:dirt")
		end
		if type4 == "tutorial:craft_schluessel7" then
			player_inv:set_stack("a5", 1, "default:dirt")
		end
		if type5 == "tutorial:legenden_schluessel" then
			player_inv:set_stack("a6", 1, "default:dirt")
		end
		if type6 == "tutorial:regnum_key" then
			player_inv:set_stack("a7", 1, "default:dirt")
		end
		if type7 == "tutorial:regnum_key_pixeled" or type25 == "tutorial:regnum_key_pixeled" then
			player_inv:set_stack("a8", 1, "default:dirt")
		end
		if type8 == 8 then
			player_inv:set_stack("a9", 1, "default:dirt")
		end
		if type9 == 8 then
			player_inv:set_stack("a10", 1, "default:dirt")
		end
        if type14 == "tutorial:dragon_schluessel" then
			player_inv:set_stack("a22", 1, "default:dirt")
		end
        if type15 == "tutorial:fox_schluessel" then
			player_inv:set_stack("a31", 1, "default:dirt")
		end
        if type17 == "tutorial:tortoise_schluessel" then
			player_inv:set_stack("a36", 1, "default:dirt")
		end
        if type18 == "tutorial:knight_schluessel" then
			player_inv:set_stack("a37", 1, "default:dirt")
		end
        if type19 == "tutorial:crystal_schluessel" then
			player_inv:set_stack("a39", 1, "default:dirt")
		end
        if type20 == "tutorial:dragon_crystal" and type21 == "tutorial:dragon_crystal" then
			player_inv:set_stack("a40", 1, "default:dirt")
		end
        if type22 == "tutorial:golden_schluessel" then
			player_inv:set_stack("a41", 1, "default:dirt")
		end
        if type24 == "tutorial:cooking_schluessel4" then
			player_inv:set_stack("a43", 1, "default:dirt")
		end
        if type26 == "tutorial:protection_schluessel3" then
			player_inv:set_stack("a46", 1, "default:dirt")
		end
        if type7 == "tutorial:regnum_key_pixeled" and type25 == "tutorial:regnum_key_pixeled" then
			player_inv:set_stack("a44", 1, "default:dirt")
		end
		if tonumber(type10) > 11949 then
			player_inv:set_stack("a11", 1, "default:dirt")
		end
		if tonumber(type11) > 249 then
			player_inv:set_stack("a12", 1, "default:dirt")
		end
		if tonumber(type12) > 249 then
			player_inv:set_stack("a13", 1, "default:dirt")
		end
		if tonumber(type13) > 3199 then
			player_inv:set_stack("a14", 1, "default:dirt")
		end
        if tonumber(type16) > 599 then
			player_inv:set_stack("a34", 1, "default:dirt")
		end
        if tonumber(type23) > 899 then
			player_inv:set_stack("a42", 1, "default:dirt")
		end
		inventory_plus.set_inventory_formspec(player, (ach.get_formspec(player)..ach2.get_formspec(player)))
	end
    if fields.achc then
        local player_inv = player:get_inventory()
        player_inv:set_size("year", 4)
        if player:get_inventory():contains_item("main", "tutorial:trophy_year1") then
            player_inv:set_stack("year", 1,"tutorial:dirt")
		end
        if player:get_inventory():contains_item("main", "tutorial:trophy_year2") then
            player_inv:set_stack("year", 2,"tutorial:dirt")
		end
		if player:get_inventory():contains_item("main", "tutorial:trophy_year3") then
            player_inv:set_stack("year", 3,"tutorial:dirt")
		end
		if player:get_inventory():contains_item("main", "tutorial:trophy_year4") then
            player_inv:set_stack("year", 4,"tutorial:dirt")
		end
		inventory_plus.set_inventory_formspec(player, ach3.get_formspec(player))
	end
	if fields.adem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 1")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.bdem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 2")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))																
	end
	if fields.cdem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 3")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.ddem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 4")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.edem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 5")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.fdem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 6")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.gdem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 7")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.hdem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 8")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.athu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 1")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.bthu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 2")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.cthu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 3")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.dthu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 4")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.ethu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 5")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.fthu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 6")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.gthu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 7")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.hthu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 8")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.athl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 1")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.bthl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 2")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.cthl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 3")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.dthl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 4")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.ethl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 5")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.fthl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 6")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.gthl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 7")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.hthl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 8")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.cre then
		local player_inv = player:get_inventory()
		local dl = player_inv:get_stack("de", 1):get_count()
		local tdl = player_inv:get_stack("td", 1):get_count()
		local tll = player_inv:get_stack("tl", 1):get_count()
        local time = 0
		time = time+(dl*35)
		time = time+(tdl*15)
		time = time+(tll*10)
		player_inv:set_stack("t", 1, nil)
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
        if player_inv:get_stack("krit", 1):get_name() == "tutorial:crystal_schluessel" then
		    time = time/2
        end
        print(time)
		minetest.after(time, function()
			if player == nil then
				return
			end	
			local player_inv = player:get_inventory()
			player_inv:add_item("main","tutorial:legendball_"..tdl.."_"..tll.."_"..dl)
			player_inv:set_stack("t", 1, "default:dirt")
			if kri.get_formspec(player) == (player:get_inventory_formspec().."button[10,2;2,0.5;cre;create]") then
				inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
			end
		end)
	end
end)
local crafting4 = {}
crafting4.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    player_inv:set_size("crvier4", 5)
	formspec = "size[8,11.3]"
        .."background[8,11.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."button[6,3.5;2,0.5;cra4;Craft]"
		.."list[current_player;main;0,7.25;8,1;]"
		.."label[2,1;you need 352 gold pixel]"
		.."label[2,2;you need 352 green pixel]"
		.."label[2,3;you need 1120 purple pixel]"
		.."label[2,4;you need 3696 red pixel]"
		.."label[2,5;you need 3696 blue pixel]"
		.."list[current_player;main;0,8.5;8,3;8]"
		.."list[current_player;crvier4;1,1;1,5;]"
		.."listring[current_player;main]"
		.."listring[current_player;crvier4]"
	return formspec		
end
minetest.register_on_dignode(function(pos, node, player)
	if player == nil then
        return
    end	
	local name = player:get_player_name()
	local hp = player:get_hp()
	local drops = node.name
	local x = math.random(1,50)
	local inv = player:get_inventory()
	if node.name == "tutorial:geschenk_death" then
		if x < 6 then
			minetest.get_player_by_name(name):set_hp(0)
		elseif x < 21 then
			if hp > 3 then
				minetest.get_player_by_name(name):set_hp(hp-4)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 31 then
			if hp > 9 then
				minetest.get_player_by_name(name):set_hp(hp-10)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		end
	end
	if node.name == "tutorial:geschenk_death_silber" then
		if x < 5 then
			minetest.get_player_by_name(name):set_hp(0)
		elseif x < 18 then
			if hp > 3 then
				minetest.get_player_by_name(name):set_hp(hp-4)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 26 then
			if hp > 9 then
				minetest.get_player_by_name(name):set_hp(hp-10)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		end
	end
	if node.name == "tutorial:geschenk_death_gold" then
		if x < 4 then
			minetest.get_player_by_name(name):set_hp(0)
		elseif x < 15 then
			if hp > 3 then
				minetest.get_player_by_name(name):set_hp(hp-4)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 21 then
			if hp > 9 then
				minetest.get_player_by_name(name):set_hp(hp-10)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		end
	end
	if node.name == "tutorial:geschenk_death_platin" then
		if x < 4 then
			minetest.get_player_by_name(name):set_hp(0)
		elseif x < 15 then
			if hp > 3 then
				minetest.get_player_by_name(name):set_hp(hp-4)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 16 then
			if hp > 9 then
				minetest.get_player_by_name(name):set_hp(hp-10)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		end
	end
	if node.name == "tutorial:geschenk_dragon" then
        local x = math.random(1,25)
        if x == 8 then
            inv:set_size("dgon", 1)
            local dgon = inv:get_stack("dgon", 1):get_count()
            if dgon == 0 and inv:room_for_item("main", "tutorial:dragon_schluessel") then
                inv:add_item("main", "tutorial:dragon_schluessel")
                inv:add_item("dgon", "default:dirt")
            end
        end
	end
    if node.name == "tutorial:geschenk_tortoise" then
        local x = math.random(1,25)
        if x == 8 then
            inv:set_size("ttoise", 1)
            local ttoise = inv:get_stack("ttoise", 1):get_count()
            if ttoise == 0 and inv:room_for_item("main", "tutorial:tortoise_schluessel") then
                inv:add_item("main", "tutorial:tortoise_schluessel")
                inv:add_item("ttoise", "default:dirt")
            end
        end
	end
	if node.name == "tutorial:geschenk_legend" then
		local x = math.random(10)
		if x == 8 then
			local y = math.random(8)
			inv:set_stack("kri", y,"tutorial:legenden_kristall_"..y)
		end
	end
end)
minetest.override_item("default:water_source", {
	groups = {water=3, liquid=3, puts_out_fire=1, cracky = 14},
	drop = "default:water_source",
    drawtype = "liquid",
	diggable = true,
    alpha = 180,
})
minetest.override_item("default:water_flowing", {
	groups = {water=3, liquid=3, puts_out_fire=1, cracky = 14},
	drop = "default:water_source",
    drawtype = "flowingliquid",
	diggable = true,
    alpha = 180,
})
minetest.override_item("default:lava_source", {
	groups = {lava=3, liquid=2, hot=3, igniter=1, cracky = 14},
	drop = "default:lava_source",
	diggable = true,
})
minetest.register_on_dignode(function(pos, node, player)
	local dig1 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","default:clay"}
	local dig2 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium"}
	local dig3 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore"}
	local dig4 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","default:clay"}
	local dig5 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","tutorial:stone_with_titan"}
    local dig6 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","tutorial:stone_with_titan","tutorial:stone_with_rot","tutorial:stone_with_blau"}
    local dig7 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","tutorial:stone_with_titan","tutorial:stone_with_rot","tutorial:stone_with_blau","default:lava_source","default:water_source"}
	local dig8 = {"default:cobble","default:stone","default:dirt","default:sand","default:desert_sand","default:desert_stone","default:dirt_with_grass","default:gravel","default:clay","default:cobble","default:mossycobble","default:dirt_with_snow","default:dirt_with_rainforest_litter","default:grass_3","default:dry_grass_3","default:grass_4","default:dry_grass_4"}
    local name, tool, drops, i, drop, drop_name
	if player == nil then
        return
    end	
	local inv = player:get_inventory()
    tool = player:get_wielded_item():get_name()
	if tool == "tutorial:legendenbattleaxe1" then
	    drops = node.name
        for _,node_name in ipairs(dig1) do
	        if drops == node_name then
				droping = minetest.get_node_drops(node.name)
				for _, itemname in ipairs(droping) do
					inv:add_item("main", itemname)
				end
			end
		end
	end
	if tool == "tutorial:legendenbattleaxe2" then
		drops = node.name
		for _,node_name in ipairs(dig2) do
			if drops == node_name then
				droping = minetest.get_node_drops(node.name)
				for _, itemname in ipairs(droping) do
					inv:add_item("main", itemname)
				end
			end
		end
	end
	if tool == "tutorial:legendenbattleaxe3" then
		drops = node.name
		for _,node_name in ipairs(dig3) do
			if drops == node_name then
				droping = minetest.get_node_drops(node.name)
				for _, itemname in ipairs(droping) do
					inv:add_item("main", itemname)
				end
			end
		end
	end
	if tool == "tutorial:legendenbattleaxe4" then
		drops = node.name
		for _,node_name in ipairs(dig4) do
			if drops == node_name then
				droping = minetest.get_node_drops(node.name)
				for _, itemname in ipairs(droping) do
					inv:add_item("main", itemname)
				end
			end
		end
	end
	if tool == "tutorial:legendenbattleaxe5" then
		drops = node.name
		for _,node_name in ipairs(dig5) do
			if drops == node_name then
				droping = minetest.get_node_drops(node.name)
				for _, itemname in ipairs(droping) do
					inv:add_item("main", itemname)
				end
			end
		end
	end
	if tool == "tutorial:legendenbattleaxe6" then
		drops = node.name
		for _,node_name in ipairs(dig6) do
			if drops == node_name then
				droping = minetest.get_node_drops(node.name)
				for _, itemname in ipairs(droping) do
					inv:add_item("main", itemname)
				end
			end
		end
	end
	if tool == "tutorial:superlegendenbattleaxe1" or tool == "tutorial:superlegendenbattleaxe2" then
        drops = node.name
		for _,node_name in ipairs(dig7) do
			if drops == node_name then
				droping = minetest.get_node_drops(node.name)
				for _, itemname in ipairs(droping) do
					inv:add_item("main", itemname)
				end
			end
		end
	end
	if tool == "tutorial:regnumbattleaxe1" or tool == "tutorial:regnumbattleaxe2" or tool == "tutorial:regnumbattleaxe3" then
        drops = node.name
		for _,node_name in ipairs(dig7) do
			if drops == node_name then
				droping = minetest.get_node_drops(node.name)
				for _, itemname in ipairs(droping) do
					inv:add_item("main", itemname)
				end
			end
		end
        for _,node_name in ipairs(dig8) do
			if drops == node_name then
				droping = minetest.get_node_drops(node.name)
				for _, itemname in ipairs(droping) do
					inv:add_item("main", itemname)
				end
			end
		end
        if drops == "default:grass_5" or drops == "default:dry_grass_5" then
            droping = minetest.get_node_drops(node.name)
			for _, itemname in ipairs(droping) do
				inv:add_item("main", itemname)
                inv:add_item("main", itemname)
			end
        end
	end
end)
local old_entities = {"mobs:zombie", "mobs:grass_monster", "mobs:geist", "mobs:tree_monster", "mobs:spider", "mobs:dungeon_master", "mobs:lava_flan", "mobs:mese_monster", "mobs:oerkki","mobs:rat","mobs_crocs:crocodile_swim","mobs:cow","mobs:chicken","mobs:pumba","mobs:sheep_white","mobs:kitten","","spidermob:spider"}
local old_nodes = {}
for _,node_name in ipairs(old_nodes) do
    minetest.register_node(":"..node_name, {
        groups = {old=1},
    })
end
minetest.register_abm({
    nodenames = {"group:old"},
    interval = 1,
    chance = 1,
    action = function(pos, node)
        minetest.env:remove_node(pos)
    end,
})
for _,entity_name in ipairs(old_entities) do
    minetest.register_entity(":"..entity_name, {
        on_activate = function(self, staticdata)
            self.object:remove()
        end,
    })
end
local xp_gui = {}
local xp_gru = {}
local xp_r_b = {}
local xp_gra = {}
local xp_gel = {}
local xp_cya = {}
local crafting = {}
local crafting3 = {}
local crafting4 = {}
local cr = {}
crafting4.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    player_inv:set_size("crvier4", 5)
	formspec = "size[8,11.3]"
        .."background[8,11.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."button[6,3.5;2,0.5;cra4;Craft]"
		.."list[current_player;main;0,7.25;8,1;]"
		.."label[2,1;you need 352 gold pixel]"
		.."label[2,2;you need 352 green pixel]"
		.."label[2,3;you need 1120 purple pixel]"
		.."label[2,4;you need 3696 red pixel]"
		.."label[2,5;you need 3696 blue pixel]"
		.."list[current_player;main;0,8.5;8,3;8]"
		.."list[current_player;crvier4;1,1;1,5;]"
		.."listring[current_player;main]"
		.."listring[current_player;crvier4]"
	return formspec		
end
crafting3.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    player_inv:set_size("crvier3", 25)
	formspec = "size[8,10.3]"
        .."background[8,11.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."button[6,2;2,0.5;cra3;Craft (1)]"
        .."button[6,3;2,0.5;cra310;Craft (10)]"
        .."button[6,4;2,0.5;cra399;Craft (99)]"
		.."list[current_player;main;0,6.25;8,1;]"
		.."list[current_player;main;0,7.5;8,3;8]"
		.."list[current_player;crvier3;1,1;5,5;]"
		.."listring[current_player;main]"
		.."listring[current_player;crvier3]"
	return formspec		
end
crafting.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    player_inv:set_size("crvier", 16)
	formspec = "size[8,9.3]"
        .."background[8,9.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."button[5,1.5;2,0.5;cra;Craft (1)]"
        .."button[5,2.5;2,0.5;cra10;Craft (10)]"
        .."button[5,3.5;2,0.5;cra99;Craft (99)]"
		.."list[current_player;main;0,5.25;8,1;]"
		.."list[current_player;main;0,6.5;8,3;8]"
		.."list[current_player;crvier;1,1;4,4;]"
		.."listring[current_player;main]"
		.."listring[current_player;crvier]"
	
	return formspec		
end
cr.get_formspec = function(player,pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
	player_inv:set_size("feld", 1)
	player_inv:set_size("feld3", 1)
	player_inv:set_size("feld4", 1)
    player_inv:set_size("feld5", 1)
    player_inv:set_size("feld6", 1)
    player_inv:set_size("feld7", 1)
    player_inv:set_size("feld8", 1)
	local type = player:get_inventory():get_stack("feld",1):get_name()
	local type3 = player:get_inventory():get_stack("feld3",1):get_name()
	local type4 = player:get_inventory():get_stack("feld4",1):get_name()
    local type5 = player:get_inventory():get_stack("feld5",1):get_name()
    local type6 = player:get_inventory():get_stack("feld6",1):get_name()
    local type7 = player:get_inventory():get_stack("feld7",1):get_name()
    local type8 = player:get_inventory():get_stack("feld8",1):get_name()
	if type == "tutorial:craft_schluessel7" then
		image = "crafting"
	else
		image = "cr"
	end
	if type3 == "tutorial:legenden_schluessel" then
		image3 = "crafting3"
	else
		image3 = "cr"
	end
	if type4 == "tutorial:regnum_key" then
		image4 = "crafting4"
	else
		image4 = "cr"
	end
    if type5 == "tutorial:dragon_schluessel" then
		image5 = "crafting5"
	else
		image5 = "cr"
	end
    if type6 == "tutorial:fox_schluessel" then
		image6 = "crafting6"
	else
		image6 = "cr"
	end
    if type7 == "tutorial:tortoise_schluessel" then
		image7 = "crafting7"
	else
		image7 = "cr"
	end
    if type8 == "tutorial:golden_schluessel" then
		image8 = "crafting8"
	else
		image8 = "cr"
	end
	formspec = "size[14,8.55]"
        .."background[14,8.55;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."button[0,2.5;2,0.5;"..image..";4x4 craft]"
		.."button[2,2.5;2,0.5;"..image3..";5x5 craft]"
		.."button[4,2.5;2,0.5;"..image4..";Regnum craft]"
        .."button[6,2.5;2,0.5;"..image5..";Gem craft]"
        .."button[8,2.5;2,0.5;"..image6..";Cooking]"
        .."button[10,2.5;2,0.5;"..image7..";Medallion craft]"
        .."button[12,2.5;2,0.5;"..image8..";Crystal craft]"
		.."button[3,3.5;2,0.5;dna;DNA craft]"
        .."button[5,3.5;2,0.5;mine;Mining craft]"
        .."button[7,3.5;2,0.5;troph;Trophy craft]"
		.."button[9,3.5;2,0.5;backward;Backward craft]"
		.."label[0.5,1.8;Craftkey]"
		.."label[2.4,1.8;Legendkey]"
		.."label[4.35,1.8;Regnumkey]"
        .."label[6.35,1.8;Dragonkey]"
        .."label[8.5,1.8;Foxkey]"
        .."label[10.4,1.8;Tortoisekey]"
        .."label[12.4,1.8;Goldenkey]"
		.."list[current_player;feld;0.5,1;1,1;]"
		.."list[current_player;feld3;2.5,1;1,1;]"
		.."list[current_player;feld4;4.5,1;1,1;]"
        .."list[current_player;feld5;6.5,1;1,1;]"
        .."list[current_player;feld6;8.5,1;1,1;]"
        .."list[current_player;feld7;10.5,1;1,1;]"
        .."list[current_player;feld8;12.5,1;1,1;]"
		.."list[current_player;main;3,4.5;8,1;]"
		.."list[current_player;main;3,5.75;8,3;8]"
	return formspec
end
xp_gra.get_formspec = function(player)
	formspec = "size[6.2,5.95]button[0,0;2,0.5;xp_gui;Back]"
        .."background[6.2,5.95;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[2.5,0;2,0.5;main;Main]"
		.."textlist[0,1;6,5;xp_gra;Lv.1 = 5xp,Lv.2 = 10xp,Lv.3 = 15xp,Lv.4 = 20xp,Lv.5 = 25xp,Lv.6 = 30xp,Lv.7 = 35xp,Lv.8 = 40xp,Lv.9 = 45xp,Lv.10 = 50xp,Lv.11 = 60xp,Lv.12 = 70xp,Lv.13 = 80xp,Lv.14 = 90xp,Lv.15 = 100xp,Lv.16 = 110xp,Lv.17 = 120xp,Lv.18 = 130xp,Lv.19 = 140xp,Lv.20 = 150xp,Lv.21 = 165xp,Lv.22 = 180xp,Lv.23 = 195xp,Lv.24 = 210xp,Lv.25 = 225xp,Lv.26 = 240xp,Lv.27 = 255xp,Lv.28 = 270xp,Lv.29 = 285xp,Lv.30 = 300xp,Lv.31 = 320xp,Lv.32 = 340xp,Lv.33 = 360xp,Lv.34 = 380xp,Lv.35 = 400xp,Lv.36 = 420xp,Lv.37 = 440xp,Lv.38 = 460xp,Lv.39 = 480xp,Lv.40 = 500xp,Lv.41 = 525xp,Lv.42 = 550xp,Lv.43 = 575xp,Lv.44 = 600xp,Lv.45 = 625xp,Lv.46 = 650xp,Lv.47 = 675xp,Lv.48 = 700xp,Lv.49 = 725xp,Lv.50 = 750xp,Lv.51 = 780xp,Lv.52 = 810xp,Lv.53 = 840xp,Lv.54 = 870xp,Lv.55 = 900xp,Lv.56 = 930xp,Lv.57 = 960xp,Lv.58 = 990xp,Lv.59 = 1020xp,Lv.60 = 1050xp,Lv.61 = 1085xp,Lv.62 = 1120xp,Lv.63 = 1155xp,Lv.64 = 1190xp,Lv.65 = 1225xp,Lv.66 = 1260xp,Lv.67 = 1295xp,Lv.68 = 1330xp,Lv.69 = 1365xp,Lv.70 = 1400xp,Lv.71 = 1440xp,Lv.72 = 1480xp,Lv.73 = 1520xp,Lv.74 = 1560xp,Lv.75 = 1600xp,Lv.76 = 1640xp,Lv.77 = 1680xp,Lv.78 = 1720xp,Lv.79 = 1760xp,Lv.80 = 1800xp,Lv.81 = 1845xp,Lv.82 = 1890xp,Lv.83 = 1935xp,Lv.84 = 1980xp,Lv.85 = 2025xp,Lv.86 = 2070xp,Lv.87 = 2115xp,Lv.88 = 2160xp,Lv.89 = 2205xp,Lv.90 = 2250xp,Lv.91 = 2300xp,Lv.92 = 2350xp,Lv.93 = 2400xp,Lv.94 = 2450xp,Lv.95 = 2500xp,Lv.96 = 2550xp,Lv.97 = 2600xp,Lv.98 = 2650xp,Lv.99 = 2700xp,Lv.100 = 2750xp,Lv.MAX = 3200xp]"
	return formspec
end
xp_r_b.get_formspec = function(player)
	formspec = "size[6.2,5.95]button[0,0;2,0.5;xp_gui;Back]"
        .."background[6.2,5.95;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[2.5,0;2,0.5;main;Main]"
		.."textlist[0,1;6,5;xp_r_b;Lv.1 = 1xp,Lv.2 = 3xp,Lv.3 = 6xp,Lv.4 = 10xp,Lv.5 = 15xp,Lv.6 = 21xp,Lv.7 = 28xp,Lv.8 = 36xp,Lv.9 = 45xp,Lv.10 = 55xp,Lv.11 = 66xp,Lv.12 = 78xp,Lv.13 = 91xp,Lv.14 = 105xp,Lv.15 = 120xp,Lv.16 = 136xp,Lv.17 = 153xp,Lv.18 = 171xp,Lv.19 = 190xp,Lv.20 = 210xp,Lv.MAX = 250xp]"
	return formspec
end
xp_gru.get_formspec = function(player)
	formspec = "size[6.2,5.95]button[0,0;2,0.5;xp_gui;Back]"
        .."background[6.2,5.95;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[2.5,0;2,0.5;main;Main]"
		.."textlist[0,1;6,5;xp_gru;Lv.1 = 10xp,Lv.2 = 20xp,Lv.3 = 30xp,Lv.4 = 40xp,Lv.5 = 50xp,Lv.6 = 70xp,Lv.7 = 90xp,Lv.8 = 110xp,Lv.9 = 130xp,Lv.10 = 150xp,Lv.11 = 180xp,Lv.12 = 210xp,Lv.13 = 240xp,Lv.14 = 270xp,Lv.15 = 300xp,Lv.16 = 340xp,Lv.17 = 380xp,Lv.18 = 420xp,Lv.19 = 460xp,Lv.20 = 500xp,Lv.21 = 550xp,Lv.22 = 600xp,Lv.23 = 650xp,Lv.24 = 700xp,Lv.25 = 750xp,Lv.26 = 810xp,Lv.27 = 870xp,Lv.28 = 930xp,Lv.29 = 990xp,Lv.30 = 1050xp,Lv.31 = 1120xp,Lv.32 = 1190xp,Lv.33 = 1260xp,Lv.34 = 1330xp,Lv.35 = 1400xp,Lv.36 = 1480xp,Lv.37 = 1560xp,Lv.38 = 1640xp,Lv.39 = 1720xp,Lv.40 = 1800xp,Lv.41 = 1890xp,Lv.42 = 1980xp,Lv.43 = 2070xp,Lv.44 = 2160xp,Lv.45 = 2250xp,Lv.46 = 2350xp,Lv.47 = 2450xp,Lv.48 = 2550xp,Lv.49 = 2650xp,Lv.50 = 2750xp,Lv.51 = 2860xp,Lv.52 = 2970xp,Lv.53 = 3080xp,Lv.54 = 3190xp,Lv.55 = 3300xp,Lv.56 = 3420xp,Lv.57 = 3540xp,Lv.58 = 3660xp,Lv.59 = 3780xp,Lv.60 = 3900xp,Lv.61 = 4030xp,Lv.62 = 4160xp,Lv.63 = 4290xp,Lv.64 = 4420xp,Lv.65 = 4550xp,Lv.66 = 4690xp,Lv.67 = 4830xp,Lv.68 = 4970xp,Lv.69 = 5110xp,Lv.70 = 5250xp,Lv.71 = 5400xp,Lv.72 = 5550xp,Lv.73 = 5700xp,Lv.74 = 5850xp,Lv.75 = 6000xp,Lv.76 = 6160xp,Lv.77 = 6320xp,Lv.78 = 6480xp,Lv.79 = 6640xp,Lv.80 = 6800xp,Lv.81 = 6970xp,Lv.82 = 7140xp,Lv.83 = 7310xp,Lv.84 = 7480xp,Lv.85 = 7650xp,Lv.86 = 7830xp,Lv.87 = 8010xp,Lv.88 = 8190xp,Lv.89 = 8370xp,Lv.90 = 8550xp,Lv.91 = 8740xp,Lv.92 = 8930xp,Lv.93 = 9120xp,Lv.94 = 9310xp,Lv.95 = 9500xp,Lv.96 = 9700xp,Lv.97 = 9900xp,Lv.98 = 10100xp,Lv.99 = 10300xp,Lv.100 = 10500xp,Lv.MAX = 11950xp]"
	return formspec
end
xp_gel.get_formspec = function(player)
	formspec = "size[6.2,5.95]button[0,0;2,0.5;xp_gui;Back]"
        .."background[6.2,5.95;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[2.5,0;2,0.5;main;Main]"
		.."textlist[0,1;6,5;xp_gel;Lv.1 = 1xp,Lv.2 = 2xp,Lv.3 = 3xp,Lv.4 = 4xp,Lv.5 = 5xp,Lv.6 = 6xp,Lv.7 = 7xp,Lv.8 = 8xp,Lv.9 = 9xp,Lv.10 = 10xp,Lv.11 = 12xp,Lv.12 = 14xp,Lv.13 = 16xp,Lv.14 = 18xp,Lv.15 = 20xp,Lv.16 = 22xp,Lv.17 = 24xp,Lv.18 = 26xp,Lv.19 = 28xp,Lv.20 = 30xp,Lv.21 = 33xp,Lv.22 = 36xp,Lv.23 = 39xp,Lv.24 = 42xp,Lv.25 = 45xp,Lv.26 = 48xp,Lv.27 = 51xp,Lv.28 = 54xp,Lv.29 = 57xp,Lv.30 = 60xp,Lv.31 = 64xp,Lv.32 = 68xp,Lv.33 = 72xp,Lv.34 = 76xp,Lv.35 = 80xp,Lv.36 = 84xp,Lv.37 = 88xp,Lv.38 = 92xp,Lv.39 = 96xp,Lv.40 = 100xp,Lv.41 = 105xp,Lv.42 = 110xp,Lv.43 = 115xp,Lv.44 = 120xp,Lv.45 = 125xp,Lv.46 = 130xp,Lv.47 = 135xp,Lv.48 = 140xp,Lv.49 = 145xp,Lv.50 = 150xp,Lv.51 = 156xp,Lv.52 = 162xp,Lv.53 = 168xp,Lv.54 = 174xp,Lv.55 = 180xp,Lv.56 = 186xp,Lv.57 = 192xp,Lv.58 = 198xp,Lv.59 = 204xp,Lv.60 = 210xp,Lv.61 = 217xp,Lv.62 = 224xp,Lv.63 = 231xp,Lv.64 = 238xp,Lv.65 = 245xp,Lv.66 = 252xp,Lv.67 = 259xp,Lv.68 = 266xp,Lv.69 = 273xp,Lv.70 = 280xp,Lv.71 = 288xp,Lv.72 = 296xp,Lv.73 = 304xp,Lv.74 = 312xp,Lv.75 = 320xp,Lv.76 = 328xp,Lv.77 = 336xp,Lv.78 = 344xp,Lv.79 = 352xp,Lv.80 = 360xp,Lv.81 = 369xp,Lv.82 = 378xp,Lv.83 = 387xp,Lv.84 = 396xp,Lv.85 = 405xp,Lv.86 = 414xp,Lv.87 = 423xp,Lv.88 = 432xp,Lv.89 = 441xp,Lv.90 = 450xp,Lv.91 = 460xp,Lv.92 = 470xp,Lv.93 = 480xp,Lv.94 = 490xp,Lv.95 = 500xp,Lv.96 = 510xp,Lv.97 = 520xp,Lv.98 = 530xp,Lv.99 = 540xp,Lv.100 = 550xp,Lv.MAX = 600xp]"
	return formspec
end
xp_cya.get_formspec = function(player)
	formspec = "size[6.2,5.95]button[0,0;2,0.5;xp_gui;Back]"
        .."background[6.2,5.95;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[2.5,0;2,0.5;main;Main]"
		.."textlist[0,1;6,5;xp_cya;Lv.1 = 1xp,Lv.2 = 4xp,Lv.3 = 9xp,Lv.4 = 16xp,Lv.5 = 25xp,Lv.6 = 36xp,Lv.7 = 49xp,Lv.8 = 64xp,Lv.9 = 81xp,Lv.10 = 100xp,Lv.11 = 121xp,Lv.12 = 144xp,Lv.13 = 169xp,Lv.14 = 196xp,Lv.15 = 225xp,Lv.16 = 256xp,Lv.17 = 289xp,Lv.18 = 324xp,Lv.19 = 361xp,Lv.20 = 400xp,Lv.21 = 441xp,Lv.22 = 484xp,Lv.23 = 529xp,Lv.24 = 576xp,Lv.25 = 625xp,Lv.MAX = 900xp]"
	return formspec
end
xp_gui.get_formspec = function(player)
	if player == nil then
        return
    end
	local name = player:get_player_name()
	local player_inv = player:get_inventory()
	local xp_gruen_o = io.open(minetest.get_worldpath().."/"..name.."_experience", "r")
	local xp_gruen = xp_gruen_o:read("*l")
	local xp_rot_o = io.open(minetest.get_worldpath().."/"..name.."_experience_rot", "r")
	local xp_rot = xp_rot_o:read("*l")
	local xp_blau_o = io.open(minetest.get_worldpath().."/"..name.."_experience_blau", "r")
	local xp_blau = xp_blau_o:read("*l")
	local xp_grau_o = io.open(minetest.get_worldpath().."/"..name.."_experience_grau", "r")
	local xp_grau = xp_grau_o:read("*l")
    local xp_gelb_o = io.open(minetest.get_worldpath().."/"..name.."_experience_gelb", "r")
	local xp_gelb = xp_gelb_o:read("*l")
    local xp_cyan_o = io.open(minetest.get_worldpath().."/"..name.."_experience_cyan", "r")
	local xp_cyan = xp_cyan_o:read("*l")
	player_inv:set_size("feld2", 1)
	local type = player:get_inventory():get_stack("feld2",1):get_name()
	if type == "tutorial:level_schluessel" then
		image1 = "xp_gru"
		image2 = "xp_r_b"
		image3 = "xp_gra"
        image4 = "xp_gel"
        image5 = "xp_cya"
	else
		image1 = "xp_gui"
		image2 = "xp_gui"
		image3 = "xp_gui"
        image4 = "xp_gui"
        image5 = "xp_gui"
	end
	formspec = "size[8,8.3]button[0,0;2,0.5;inven;Back]"
        .."background[8,8.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;Xp green (Part1) : "..xp_gruen.."xp]"
		.."label[0,1.4;Xp red     (Part2) : "..xp_rot.."xp]"
		.."label[0,1.8;Xp blue   (Part2) : "..xp_blau.."xp]"
		.."label[0,2.2;Xp gray   (Part3) : "..xp_grau.."xp]"
        .."label[0,2.6;Xp yellow (Part4) : "..xp_gelb.."xp]"
        .."label[0,3;Xp cyan   (Part5) : "..xp_cyan.."xp]"
		.."list[current_player;main;0,4.25;8,1;]"
		.."list[current_player;main;0,5.5;8,3;8]"
		.."list[current_player;feld2;5,0;1,1;]"
		.."label[5.1,0.9;Levelkey]"
		.."button[3.5,1.5;2.0,0.2;"..image1..";Xp green you need]"
		.."button[3.5,2.2;2.0,0.2;"..image2..";Xp red/blue you need]"
		.."button[5.5,1.5;2.0,0.2;"..image3..";Xp gray you need]"
        .."button[5.5,2.2;2.0,0.2;"..image4..";Xp yellow you need]"
        .."button[4.5,2.9;2.0,0.2;"..image5..";Xp cyan you need]"
        .."listring[current_player;feld2]"
        .."listring[current_player;main]"
	return formspec
end	
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if player == nil then
        return
    end
	if fields.xp_gui then
		inventory_plus.set_inventory_formspec(player, xp_gui.get_formspec(player))
	end
	if fields.craft10 then
		local item_name = ""
		for i=1,10 do
			local player_inv = player:get_inventory()
			local crafted = nil
			local table_dec = nil
			local player_inv = player:get_inventory()
			local tablelist = player_inv:get_list("craft")
			if tablelist then
				crafted,table_dec = minetest.get_craft_result({method = "normal", width = 3, items = tablelist})
			end
			if item_name == "" or item_name == crafted.item:get_name() then
				item_name = crafted.item:get_name()
				local k = 0
				if player_inv:room_for_item("main", crafted.item) == true then
					k = 1
				end
				if crafted.item:get_name() == "" then
					k = 0
				end
				local kk = nil
				if not kk == ture then
					k = 0
				end
				if k == 1 then
					player_inv:add_item("main", crafted.item)
					player_inv:set_list("craft", table_dec.items)
				end
			end
		end
		inventory_plus.set_inventory_formspec(player, sfinv.get_formspec(player, sfinv.get_or_create_context(player)))
	end
	if fields.craft99 then
		local item_name = ""
		for i=1,99 do
			local player_inv = player:get_inventory()
			local crafted = nil
			local table_dec = nil
			local player_inv = player:get_inventory()
			local tablelist = player_inv:get_list("craft")
			if tablelist then
				crafted,table_dec = minetest.get_craft_result({method = "normal", width = 3, items = tablelist})
			end
			if item_name == "" or item_name == crafted.item:get_name() then
				item_name = crafted.item:get_name()
				local k = 0
				if player_inv:room_for_item("main", crafted.item) == true then
					k = 1
				end
				if crafted.item:get_name() == "" then
					k = 0
				end
				local kk = nil
				if not kk == ture then
					k = 0
				end
				if k == 1 then
					player_inv:add_item("main", crafted.item)
					player_inv:set_list("craft", table_dec.items)
				end
			end
		end
		inventory_plus.set_inventory_formspec(player, sfinv.get_formspec(player, sfinv.get_or_create_context(player)))
	end
	if fields.cra then
		local player_inv = player:get_inventory()
		local crafted = nil
		local table_dec = nil
		local player_inv = player:get_inventory()
		local tablelist = player_inv:get_list("crvier")
		if tablelist then
			crafted,table_dec = minetest.get_craft_result({method = "normal", width = 4, items = tablelist})
		end
		local k = 0
		if player_inv:room_for_item("main", crafted.item) == true then
			k = 1
		end
		if crafted.item:get_name() == "" then
			k = 0
		end
		local kk = nil
		if not kk == ture then
			k = 0
		end
		if k == 1 then
			player_inv:add_item("main", crafted.item)
			player_inv:set_list("crvier", table_dec.items)
		end
		inventory_plus.set_inventory_formspec(player, crafting.get_formspec(player))
    end
    if fields.cra10 then
		local item_name = ""
        for i=1,10 do
            local player_inv = player:get_inventory()
		    local crafted = nil
		    local table_dec = nil
		    local player_inv = player:get_inventory()
		    local tablelist = player_inv:get_list("crvier")
		    if tablelist then
			    crafted,table_dec = minetest.get_craft_result({method = "normal", width = 4, items = tablelist})
		    end
			if item_name == "" or item_name == crafted.item:get_name() then
				item_name = crafted.item:get_name()
				local k = 0
				if player_inv:room_for_item("main", crafted.item) == true then
					k = 1
				end
				if crafted.item:get_name() == "" then
					k = 0
				end
				local kk = nil
				if not kk == ture then
					k = 0
				end
				if k == 1 then
					player_inv:add_item("main", crafted.item)
					player_inv:set_list("crvier", table_dec.items)
				end
			end
		    inventory_plus.set_inventory_formspec(player, crafting.get_formspec(player))
        end
    end
    if fields.cra99 then
		local item_name = ""
        for i=1,99 do
            local player_inv = player:get_inventory()
		    local crafted = nil
		    local table_dec = nil
		    local player_inv = player:get_inventory()
		    local tablelist = player_inv:get_list("crvier")
		    if tablelist then
			    crafted,table_dec = minetest.get_craft_result({method = "normal", width = 4, items = tablelist})
		    end
			if item_name == "" or item_name == crafted.item:get_name() then
				item_name = crafted.item:get_name()
				local k = 0
				if player_inv:room_for_item("main", crafted.item) == true then
					k = 1
				end
				if crafted.item:get_name() == "" then
					k = 0
				end
				local kk = nil
				if not kk == ture then
					k = 0
				end
				if k == 1 then
					player_inv:add_item("main", crafted.item)
					player_inv:set_list("crvier", table_dec.items)
				end
			end
		    inventory_plus.set_inventory_formspec(player, crafting.get_formspec(player))
        end
    end
	if fields.cra3 then
		local player_inv = player:get_inventory()
		local crafted = nil
		local table_dec = nil
		local player_inv = player:get_inventory()
		local tablelist = player_inv:get_list("crvier3")
		if tablelist then
			crafted,table_dec = minetest.get_craft_result({method = "normal", width = 5, items = tablelist})
		end
		local k = 0
		if player_inv:room_for_item("main", crafted.item) == true then
			k = 1
		end
		if crafted.item:get_name() == "" then
			k = 0
		end
		if k == 1 then
			player_inv:add_item("main", crafted.item)
			player_inv:set_list("crvier3", table_dec.items)
		end
		inventory_plus.set_inventory_formspec(player, crafting3.get_formspec(player))
	end
    if fields.cra310 then
		local item_name = ""
        for i=1,10 do
		    local player_inv = player:get_inventory()
		    local crafted = nil
		    local table_dec = nil
		    local player_inv = player:get_inventory()
		    local tablelist = player_inv:get_list("crvier3")
		    if tablelist then
			    crafted,table_dec = minetest.get_craft_result({method = "normal", width = 5, items = tablelist})
		    end
			if item_name == "" or item_name == crafted.item:get_name() then
				item_name = crafted.item:get_name()
				local k = 0
				if player_inv:room_for_item("main", crafted.item) == true then
					k = 1
				end
				if crafted.item:get_name() == "" then
					k = 0
				end
				if k == 1 then
					player_inv:add_item("main", crafted.item)
					player_inv:set_list("crvier3", table_dec.items)
				end
			end
		    inventory_plus.set_inventory_formspec(player, crafting3.get_formspec(player))
        end
	end
    if fields.cra399 then
		local item_name = ""
        for i=1,99 do
		    local player_inv = player:get_inventory()
		    local crafted = nil
		    local table_dec = nil
		    local player_inv = player:get_inventory()
		    local tablelist = player_inv:get_list("crvier3")
		    if tablelist then
			    crafted,table_dec = minetest.get_craft_result({method = "normal", width = 5, items = tablelist})
		    end
			if item_name == "" or item_name == crafted.item:get_name() then
				item_name = crafted.item:get_name()
				local k = 0
				if player_inv:room_for_item("main", crafted.item) == true then
					k = 1
				end
				if crafted.item:get_name() == "" then
					k = 0
				end
				if k == 1 then
					player_inv:add_item("main", crafted.item)
					player_inv:set_list("crvier3", table_dec.items)
				end
			end
		    inventory_plus.set_inventory_formspec(player, crafting3.get_formspec(player))
        end
	end
	if fields.cra4 then
		local player_inv = player:get_inventory()
		local crafted = nil
		local table_dec = nil
		local player_inv = player:get_inventory()
		local k = 1
		local x1 = player_inv:get_stack("crvier4", 1):get_name()
		local x2 = player_inv:get_stack("crvier4", 2):get_name()
		local x3 = player_inv:get_stack("crvier4", 3):get_name()
		local x4 = player_inv:get_stack("crvier4", 4):get_name()
		local x5 = player_inv:get_stack("crvier4", 5):get_name()
		local y1 = player_inv:get_stack("crvier4", 1):get_count()
		local y2 = player_inv:get_stack("crvier4", 2):get_count()
		local y3 = player_inv:get_stack("crvier4", 3):get_count()
		local y4 = player_inv:get_stack("crvier4", 4):get_count()
		local y5 = player_inv:get_stack("crvier4", 5):get_count()
		if x1 == "tutorial:regnum_pixel_gold" and y1 >= 352 then
		else
			k = 0
		end
		if x2 == "tutorial:regnum_pixel_green" and y2 >= 352 then
        else
			k = 0
		end
		if x3 == "tutorial:regnum_pixel_purple" and y3 >= 1120 then
		else
			k = 0
		end
		if x4 == "tutorial:regnum_pixel_red" and y4 >= 3696 then
		else
			k = 0
		end
		if x5 == "tutorial:regnum_pixel_blue" and y5 >= 3696 then
		else
			k = 0
		end
		if k == 1 then
			player_inv:add_item("main", "tutorial:regnum_pixeled")
			print (y1-352)
			player_inv:set_stack("crvier4", 1, "tutorial:regnum_pixel_gold "..(y1-352))
			player_inv:set_stack("crvier4", 2, "tutorial:regnum_pixel_green "..(y2-352))
			player_inv:set_stack("crvier4", 3, "tutorial:regnum_pixel_purple "..(y3-1120))
			player_inv:set_stack("crvier4", 4, "tutorial:regnum_pixel_red "..(y4-3696))
			player_inv:set_stack("crvier4", 5, "tutorial:regnum_pixel_blue "..(y5-3696))
		end
		inventory_plus.set_inventory_formspec(player, crafting4.get_formspec(player))
	end
	if fields.xp_gru then
		inventory_plus.set_inventory_formspec(player, xp_gru.get_formspec(player))
	end
	if fields.xp_r_b then
		inventory_plus.set_inventory_formspec(player, xp_r_b.get_formspec(player))
	end
	if fields.xp_gra then
		inventory_plus.set_inventory_formspec(player, xp_gra.get_formspec(player))
	end
    if fields.xp_gel then
		inventory_plus.set_inventory_formspec(player, xp_gel.get_formspec(player))
	end
    if fields.xp_cya then
		inventory_plus.set_inventory_formspec(player, xp_cya.get_formspec(player))
	end
	if fields.cr then 
		inventory_plus.set_inventory_formspec(player, cr.get_formspec(player))
	end
	if fields.crafting then
		inventory_plus.set_inventory_formspec(player, crafting.get_formspec(player))
	end
	if fields.crafting3 then
		inventory_plus.set_inventory_formspec(player, crafting3.get_formspec(player))
	end
	if fields.crafting4 then
		inventory_plus.set_inventory_formspec(player, crafting4.get_formspec(player))
	end
end)