minetest.register_on_joinplayer(function(player)
	local name = player:get_player_name()
	player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=10},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "Minetest Version	    :  0.4.15",
	})
	player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=30},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "Subgame Version	  :  2.9.0",
	})
    
end)

dofile(minetest.get_modpath("tutorial").."/basic/craft.lua")
dofile(minetest.get_modpath("tutorial").."/basic/node.lua")
dofile(minetest.get_modpath("tutorial").."/basic/tool.lua")
dofile(minetest.get_modpath("tutorial").."/basic/craftitem.lua")
dofile(minetest.get_modpath("tutorial").."/basic/ore.lua")
dofile(minetest.get_modpath("tutorial").."/basic/abm.lua")
dofile(minetest.get_modpath("tutorial").."/basic/entity.lua")
dofile(minetest.get_modpath("tutorial").."/basic/chatcommand.lua")
dofile(minetest.get_modpath("tutorial").."/basic/else.lua")
dofile(minetest.get_modpath("tutorial").."/other/atom.lua")
dofile(minetest.get_modpath("tutorial").."/other/mummy.lua")
dofile(minetest.get_modpath("tutorial").."/other/regnum.lua")

--v.2.0.0+
minetest.register_craftitem("tutorial:golden_schluessel", {
	description = "Goldenkey",
	inventory_image = "tutorial_golden_schluessel.png",
})
minetest.register_craftitem("tutorial:crystal_schluessel", {
	description = "Crystalkey",
	inventory_image = "tutorial_crystal_schluessel.png",
})
minetest.register_craftitem("tutorial:medallion", {
	description = "Medallion",
	inventory_image = "tutorial_medallion.png",
    stack_max = 1000,
})
minetest.register_craftitem("tutorial:knight_schluessel", {
	description = "Knightkey",
	inventory_image = "tutorial_knight_schluessel.png",
})
local crafting7 = {}
crafting7.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()

	formspec = "size[8,8.3]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."button[1,2;2,0.5;meda1;Red]"
        .."button[3,2;2,0.5;meda2;Blue]"
        .."button[5,2;2,0.5;meda3;Green]"
        .."button[1,3;2,0.5;meda5;Purple]"
        .."button[3,3;2,0.5;meda4;Yellow]"
        .."button[5,3;2,0.5;meda6;Cyan]"
        .."button[3,4;2,0.5;meda7;Gray]"
	return formspec		
end
local crafting8 = {}
crafting8.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
	formspec = "size[8,8.3]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0,1;comming soon]"
	return formspec		
end
local meda = {}
meda.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    player_inv:set_size("medall", 1)
    local med = player_inv:get_stack("medallion", 1):get_count()
    local x = ""
    if med == 1 then
        x = "red"
    elseif med == 2 then
        x = "blue"
    elseif med == 3 then
        x = "green"
    elseif med == 4 then
        x = "yellow"
    elseif med == 5 then
        x = "purple"
    elseif med == 6 then
        x = "cyan"
    elseif med == 7 then
        x = "gray"
    end
    player_inv:set_size("medallion"..x, 9)
    local y1 = player_inv:get_stack("medallion"..x, 1):get_count()
    local y2 = player_inv:get_stack("medallion"..x, 2):get_count()
    local y3 = player_inv:get_stack("medallion"..x, 3):get_count()
    local y4 = player_inv:get_stack("medallion"..x, 4):get_count()
    local y5 = player_inv:get_stack("medallion"..x, 5):get_count()
    local y6 = player_inv:get_stack("medallion"..x, 6):get_count()
    local y7 = player_inv:get_stack("medallion"..x, 7):get_count()
    local y8 = player_inv:get_stack("medallion"..x, 8):get_count()
    local y9 = player_inv:get_stack("medallion"..x, 9):get_count()
	formspec = "size[8,9.3]"
		.."button[0,0;2,0.5;crafting7;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."button[5,3;2,0.5;mecraft;Craft]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."list[current_player;main;0,5.25;8,1;]"
        .."list[current_player;main;0,6.5;8,3;8]"
        .."list[current_player;medall;5.5,2;1,1;]"
        if y1 == 0 then
            formspec = formspec .."image[1,1;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[1,1;1,1;medallion_"..x.."_1.png]"
        end
        if y2 == 0 then
            formspec = formspec .."image[2,1;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[2,1;1,1;medallion_"..x.."_2.png]"
        end
        if y3 == 0 then
            formspec = formspec .."image[3,1;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[3,1;1,1;medallion_"..x.."_3.png]"
        end
        if y4 == 0 then
            formspec = formspec .."image[1,2;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[1,2;1,1;medallion_"..x.."_4.png]"
        end
        if y5 == 0 then
            formspec = formspec .."image[2,2;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[2,2;1,1;medallion_"..x.."_5.png]"
        end
        if y6 == 0 then
            formspec = formspec .."image[3,2;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[3,2;1,1;medallion_"..x.."_6.png]"
        end
        if y7 == 0 then
            formspec = formspec .."image[1,3;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[1,3;1,1;medallion_"..x.."_7.png]"
        end
        if y8 == 0 then
            formspec = formspec .."image[2,3;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[2,3;1,1;medallion_"..x.."_8.png]"
        end
        if y9 == 0 then
            formspec = formspec .."image[3,3;1,1;tutorial_0.png]"
        else
            formspec = formspec .."image[3,3;1,1;medallion_"..x.."_9.png]"
        end
	return formspec		
end
minetest.register_craftitem("tutorial:tortoise_schluessel", {
	description = "Tortoisekey",
	inventory_image = "tutorial_tortoise_schluessel.png",
})
local medallion = {}
medallion.get_formspec = function(player, pos)
    if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    player_inv:set_size("medallionred", 9)
    player_inv:set_size("meme", 1)
    local k = 0
    local p = 0
	formspec = "size[8.5,6.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[8.5,6.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."label[0.4,2.2;red]"
        .."label[1.6,2.2;blue]"
        .."label[2.7,2.2;green]"
        .."label[3.9,2.2;purple]"
        .."label[5.0,2.2;yellow]"
        .."label[6.3,2.2;cyan]"
        .."label[7.5,2.2;gray]"
    for i=1,9,1 do
        if player_inv:get_stack("medallionred", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[0,1;1.2,1.2;medallion_red.png]"
    else
        formspec = formspec .."image[0,1;1.2,1.2;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medallionblue", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[1.2,1;1.2,1.2;medallion_blue.png]"
    else
        formspec = formspec .."image[1.2,1;1.2,1.2;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medalliongreen", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[2.4,1;1.2,1.2;medallion_green.png]"
    else
        formspec = formspec .."image[2.4,1;1.2,1.2;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medallionpurple", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[3.6,1;1.2,1.2;medallion_purple.png]"
    else
        formspec = formspec .."image[3.6,1;1.2,1.2;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medallionyellow", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[4.8,1;1.2,1.2;medallion_yellow.png]"
    else
        formspec = formspec .."image[4.8,1;1.2,1.2;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medallioncyan", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[6,1;1.2,1.2;medallion_cyan.png]"
    else
        formspec = formspec .."image[6,1;1.2,1.2;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medalliongray", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[7.2,1;1.2,1.2;medallion_gray.png]"
    else
        formspec = formspec .."image[7.2,1;1.2,1.2;tutorial_0.png]"
    end
    formspec = formspec .."label[5,0;"..p.."/7]"
    if p == 7 then
        formspec = formspec .."button[6.5,0;2,0.5;medrew;Reward]"
    end
    player_inv:set_stack("meme", 1 , "default:dirt "..p)
	return formspec		
end
local rg21 = {}
rg21.get_formspec = function(player, pos)
    if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;I. 13. Artifacts]"
        .."label[0,1.3;If you run around you will get artifacts]"
        .."label[0,1.6;Collect 71 artifacts to get the Knight key]"
        .."label[0,1.9;How to use artifacts:]"
        .."label[0,2.2;1. run around]"
        .."label[0,2.5;2. get 71 artifacts]"
        .."label[0,2.8;3. press 'reward']"
        .."button[2,10;   2,0.5;rg14;<]"
        .."button[4,10;   2,0.5;rg22;>]"
	return formspec		
end
local rg22 = {}
rg22.get_formspec = function(player, pos)
    if player == nil then
        return
    end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[9,10.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."label[0,1;I. 14. Medallion]"
        .."label[0,1.3;craft medallions in the medallion craft]"
        .."label[0,1.6;Collect 7 medallions to get the ???? key]"
        .."label[0,1.9;How to use artifacts:]"
        .."label[0,2.2;1. craft medallions]"
        .."label[0,2.5;2. get 7 medallions]"
        .."label[0,2.8;3. press 'reward']"
        .."button[2,10;   2,0.5;rg21;<]"
        .."button[4,10;   2,0.5;rg15;>]"
	return formspec		
end
local timer = 0
local oldpos = {}
local newpos = {}
minetest.register_globalstep(function(dtime)
	timer = timer + dtime
	if (timer >= 1) then
		local players = minetest.get_connected_players()
		for _,player in ipairs(players) do
			if (oldpos[player:get_player_name()] ~= nil) then
				local playername = player:get_player_name()
				local pos = player:getpos()
                local player_inv = player:get_inventory()
                player_inv:set_size("mov", 1)
                player_inv:set_size("mov2", 1)
                local count = player_inv:get_stack("mov", 1):get_count()
                player_inv:set_stack("mov", 1 , "default:dirt "..count+math.sqrt(math.pow(oldpos[playername].x - pos.x, 2) + math.pow(oldpos[playername].y - pos.y, 2) + math.pow(oldpos[playername].z - pos.z,2)))
                local count = player_inv:get_stack("mov", 1):get_count()
                local count2 = player_inv:get_stack("mov2", 1):get_count()
                player_inv:set_stack("mov2", 1 , "default:dirt "..count2+math.sqrt(math.pow(oldpos[playername].x - pos.x, 2) + math.pow(oldpos[playername].y - pos.y, 2) + math.pow(oldpos[playername].z - pos.z,2)))
                local count2 = player_inv:get_stack("mov2", 1):get_count()
				if count > 250 then
                    player_inv:set_stack("mov", 1 , "default:dirt")
                    local r = math.random(1, 14)
                    if r == 13 or r == 14 then
                        local r2 = math.random(1, 11)
                        player_inv:set_stack("art13", r2 , "default:dirt")
                    else
                        local r2 = math.random(1, 5)
                        player_inv:set_stack("art"..r, r2 , "default:dirt")
                    end
                end
                if count2 > 1000 then
                    player_inv:set_stack("mov2", 1 , "default:dirt")
                    player_inv:add_item("medall", "tutorial:medallion")
                end
            end
            oldpos[player:get_player_name()] = player:getpos()
		end
		timer = 0
	end
end)
minetest.register_craftitem("tutorial:gem_fragment2", {
    description = "Gem fragment lv.2",
	inventory_image = "tutorial_gem_fragment2.png",
})
minetest.register_node("tutorial:geschenk_tortoise",{
	description = "Gift (tortoise)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_dragon.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    drop = {},
})
minetest.register_node("tutorial:geschenk_gem2",{
	description = "Gift lv.2 (gem)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_gem2.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    drop = {},
})
local artifacts = {}
artifacts.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    player_inv:set_size("art1", 5)
    player_inv:set_size("art2", 5)
    player_inv:set_size("art3", 5)
    player_inv:set_size("art4", 5)
    player_inv:set_size("art5", 5)
    player_inv:set_size("art6", 5)
    player_inv:set_size("art7", 5)
    player_inv:set_size("art8", 5)
    player_inv:set_size("art9", 5)
    player_inv:set_size("art10", 5)
    player_inv:set_size("art11", 5)
    player_inv:set_size("art12", 5)
    player_inv:set_size("art13", 11)
    local af = 0
	formspec = "size[11.8,7.4]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."label[5.4,1;green artifacts]"
        .."label[5.4,2;blue artifacts]"
        .."label[5.4,3;yellow artifacts]"
        .."label[5.4,4;purple artifacts]"
        .."label[5.4,5;cyan artifacts]"
        .."label[5.4,6;red artifacts]"
        .."label[10.7,7;grey artifacts]"
        for j=1,12,1 do
            for i=1,5,1 do
                local ar = player_inv:get_stack("art"..j, i):get_count()
                if ar == 1 and j == 1 then
                    formspec = formspec .."image["..(-1+i)..",1;0.6,0.6;artifacts_gruen1.png]"
                    af = af+1
                elseif ar == 1 and j == 2 then
                    formspec = formspec .."image["..(6+i)..",1;0.6,0.6;artifacts_gruen2.png]"
                    af = af+1
                elseif ar == 1 and j == 3 then
                    formspec = formspec .."image["..(-1+i)..",2;0.6,0.6;artifacts_blau1.png]"
                    af = af+1
                elseif ar == 1 and j == 4 then
                    formspec = formspec .."image["..(6+i)..",2;0.6,0.6;artifacts_blau2.png]"
                    af = af+1
                elseif ar == 1 and j == 5 then
                    formspec = formspec .."image["..(-1+i)..",3;0.6,0.6;artifacts_gelb1.png]"
                    af = af+1
                elseif ar == 1 and j == 6 then
                    formspec = formspec .."image["..(6+i)..",3;0.6,0.6;artifacts_gelb2.png]"
                    af = af+1
                elseif ar == 1 and j == 7 then
                    formspec = formspec .."image["..(-1+i)..",4;0.6,0.6;artifacts_lila1.png]"
                    af = af+1
                elseif ar == 1 and j == 8 then
                    formspec = formspec .."image["..(6+i)..",4;0.6,0.6;artifacts_lila2.png]"
                    af = af+1
                elseif ar == 1 and j == 9 then
                    formspec = formspec .."image["..(-1+i)..",5;0.6,0.6;artifacts_cyan1.png]"
                    af = af+1
                elseif ar == 1 and j == 10 then
                    formspec = formspec .."image["..(6+i)..",5;0.6,0.6;artifacts_cyan2.png]"
                    af = af+1
                elseif ar == 1 and j == 11 then
                    formspec = formspec .."image["..(-1+i)..",6;0.6,0.6;artifacts_rot1.png]"
                    af = af+1
                elseif ar == 1 and j == 12 then
                    formspec = formspec .."image["..(6+i)..",6;0.6,0.6;artifacts_rot2.png]"
                    af = af+1
                else
                    if j == 1 or j == 3 or j == 5 or j == 7 or j == 9 or j == 11 then
                        formspec = formspec .."image["..(-1+i)..","..math.ceil((j/2))..";0.6,0.6;tutorial_0.png]"
                    else
                        formspec = formspec .."image["..(6+i)..","..math.ceil((j/2))..";0.6,0.6;tutorial_0.png]"
                    end
                end
            end
        end
        for i=1,11,1 do
            local ar = player_inv:get_stack("art13", i):get_count()
            if ar == 1 then
                formspec = formspec .."image["..(-1+i)..",7;0.6,0.6;artifacts_grau"..i..".png]"
                af = af+1
            else
                formspec = formspec .."image["..(-1+i)..",7;0.6,0.6;tutorial_0.png]"
            end
        end
        if af == 71 then
            formspec = formspec .."button[7,0;2,0.5;artrew;Reward]"
        end
        player_inv:set_stack("afaf", 1 , "default:dirt "..af)
        formspec = formspec
        .."label[4,0;"..af.."/71]"
        .."background[8,8.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		
	return formspec		
end
local crafting6 = {}
crafting6.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    player_inv:set_size("cooking1", 5)
    player_inv:set_size("cookingout1", 30)
    player_inv:set_size("cooktime1", 4)
    player_inv:set_size("cooktime2", 4)
    player_inv:set_size("cooktime3", 4)
    player_inv:set_size("cooktime4", 4)
    player_inv:set_size("cooktime4", 5)
    local time1 = player_inv:get_stack("cooktime21", 1):get_count()
    local time2 = player_inv:get_stack("cooktime22", 1):get_count()
    local time3 = player_inv:get_stack("cooktime23", 1):get_count()
    local time4 = player_inv:get_stack("cooktime24", 1):get_count()
    local time5 = player_inv:get_stack("cooktime25", 1):get_count()
	formspec = "size[8,11.3]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."list[current_player;main;0,7.25;8,1;]"
        .."list[current_player;cooking1;0,1;1,5]"
        .."list[current_player;cookingout1;2,1;6,5]"
        .."image[1,1;1,1;gui_furnace_arrow_bg.png^[transformR270]"
        .."image[1,2;1,1;gui_furnace_arrow_bg.png^[transformR270]"
        .."image[1,3;1,1;gui_furnace_arrow_bg.png^[transformR270]"
        .."image[1,4;1,1;gui_furnace_arrow_bg.png^[transformR270]"
        .."image[1,5;1,1;gui_furnace_arrow_bg.png^[transformR270]"
        .."list[current_player;main;0,8.5;8,3;8]"
        .."label[1,1.7;"..time1.."s]"
        .."label[1,2.7;"..time2.."s]"
        .."label[1,3.7;"..time3.."s]"
        .."label[1,4.7;"..time4.."s]"
        .."label[1,5.7;"..time5.."s]"
        .."listring[current_player;main]"
		.."listring[current_player;cooking1]"
        .."listring[current_player;main]"
		.."listring[current_player;cookingout1]"
        .."background[8,11.3.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
	return formspec		
end

minetest.register_on_joinplayer(function(player)
	local player_inv = player:get_inventory()
    player_inv:set_size("cooktime1", 1)
    player_inv:set_size("cooktime21", 1)
    player_inv:set_stack("cooktime21", 1, "")
    player_inv:set_stack("cooktime1", 1, "")
    player_inv:set_size("cooktime2", 1)
    player_inv:set_size("cooktime22", 1)
    player_inv:set_stack("cooktime22", 1, "")
    player_inv:set_stack("cooktime2", 1, "")
    player_inv:set_size("cooktime3", 1)
    player_inv:set_size("cooktime23", 1)
    player_inv:set_stack("cooktime23", 1, "")
    player_inv:set_stack("cooktime3", 1, "")
    player_inv:set_size("cooktime4", 1)
    player_inv:set_size("cooktime24", 1)
    player_inv:set_stack("cooktime24", 1, "")
    player_inv:set_stack("cooktime4", 1, "")
    player_inv:set_size("cooktime5", 1)
    player_inv:set_size("cooktime25", 1)
    player_inv:set_stack("cooktime25", 1, "")
    player_inv:set_stack("cooktime5", 1, "")
    function af(x1,x2,x3,x4,x5)
        local time1 = minetest.get_craft_result({method="cooking", width=1, items={player_inv:get_stack("cooking1", 1)}}).time
        local time2 = minetest.get_craft_result({method="cooking", width=1, items={player_inv:get_stack("cooking1", 2)}}).time
        local time3 = minetest.get_craft_result({method="cooking", width=1, items={player_inv:get_stack("cooking1", 3)}}).time
        local time4 = minetest.get_craft_result({method="cooking", width=1, items={player_inv:get_stack("cooking1", 4)}}).time
        local time5 = minetest.get_craft_result({method="cooking", width=1, items={player_inv:get_stack("cooking1", 5)}}).time
        local output1 = minetest.get_craft_result({method="cooking", width=1, items={player_inv:get_stack("cooking1", 1)}})
        local output2 = minetest.get_craft_result({method="cooking", width=1, items={player_inv:get_stack("cooking1", 2)}})
        local output3 = minetest.get_craft_result({method="cooking", width=1, items={player_inv:get_stack("cooking1", 3)}})
        local output4 = minetest.get_craft_result({method="cooking", width=1, items={player_inv:get_stack("cooking1", 4)}})
        local output5 = minetest.get_craft_result({method="cooking", width=1, items={player_inv:get_stack("cooking1", 5)}})
        minetest.after(0.8, function()
            local x1 = x1+0
            local x2 = x2+0
            local x3 = x3+0
            local x4 = x4+0
            local x5 = x5+0
            if x1 > time1 then
                x1 = 0
            end
            if x2 > time2 then
                x2 = 0
            end
            if x3 > time3 then
                x3 = 0
            end
            if x4 > time4 then
                x4 = 0
            end
            if x5 > time5 then
                x5 = 0
            end
            local a = player:get_inventory_formspec()
            local b = crafting6.get_formspec(player)
            if time1 > 0 then
                player_inv:set_stack("cooktime21", 1, "default:dirt "..(time1-x1))
                if string.sub(a, 1, 80) == string.sub(b, 1, 80) then
                    inventory_plus.set_inventory_formspec(player, crafting6.get_formspec(player))
                end
            end
            if time2 > 0 then
                player_inv:set_stack("cooktime22", 1, "default:dirt "..(time2-x2))
                if string.sub(a, 1, 80) == string.sub(b, 1, 80) then
                    inventory_plus.set_inventory_formspec(player, crafting6.get_formspec(player))
                end
            end
            if time3 > 0 then
                player_inv:set_stack("cooktime23", 1, "default:dirt "..(time3-x3))
                if string.sub(a, 1, 80) == string.sub(b, 1, 80) then
                    inventory_plus.set_inventory_formspec(player, crafting6.get_formspec(player))
                end
            end
            if time4 > 0 then
                player_inv:set_stack("cooktime24", 1, "default:dirt "..(time4-x4))
                if string.sub(a, 1, 80) == string.sub(b, 1, 80) then
                    inventory_plus.set_inventory_formspec(player, crafting6.get_formspec(player))
                end
            end
            if time5 > 0 then
                player_inv:set_stack("cooktime25", 1, "default:dirt "..(time5-x5))
                if string.sub(a, 1, 80) == string.sub(b, 1, 80) then
                    inventory_plus.set_inventory_formspec(player, crafting6.get_formspec(player))
                end
            end
            x1 = x1+1
            x2 = x2+1
            x3 = x3+1
            x4 = x4+1
            x5 = x5+1
            if player_inv:get_stack("cooktime21", 1):get_count() == 0 then
                x1 = 0
                if (time1 > 0) and (player_inv:get_stack("cooking1", 1):get_count() > 0) then
                    if player_inv:room_for_item("cookingout1", output1.item) then
                        player_inv:add_item("cookingout1", output1.item)
                        player_inv:set_stack("cooking1", 1, player_inv:get_stack("cooking1", 1):get_name().." "..(player_inv:get_stack("cooking1", 1):get_count()-1))
                    end
                end
            end
            if player_inv:get_stack("cooktime22", 1):get_count() == 0 then
                x2 = 0
                if (time2 > 0) and (player_inv:get_stack("cooking1", 2):get_count() > 0) then
                    if player_inv:room_for_item("cookingout1", output2.item) then
                        player_inv:add_item("cookingout1", output2.item)
                        player_inv:set_stack("cooking1", 2, player_inv:get_stack("cooking1", 2):get_name().." "..(player_inv:get_stack("cooking1", 2):get_count()-1))
                    end
                end
            end
            if player_inv:get_stack("cooktime23", 1):get_count() == 0 then
                x3 = 0
                if (time3 > 0) and (player_inv:get_stack("cooking1", 3):get_count() > 0) then
                    if player_inv:room_for_item("cookingout1", output3.item) then
                        player_inv:add_item("cookingout1", output3.item)
                        player_inv:set_stack("cooking1", 3, player_inv:get_stack("cooking1", 3):get_name().." "..(player_inv:get_stack("cooking1", 3):get_count()-1))
                    end
                end
            end
            if player_inv:get_stack("cooktime24", 1):get_count() == 0 then
                x4 = 0
                if (time4 > 0) and (player_inv:get_stack("cooking1", 4):get_count() > 0) then
                    if player_inv:room_for_item("cookingout1", output4.item) then
                        player_inv:add_item("cookingout1", output4.item)
                        player_inv:set_stack("cooking1", 4, player_inv:get_stack("cooking1", 4):get_name().." "..(player_inv:get_stack("cooking1", 4):get_count()-1))
                    end
                end
            end
            if player_inv:get_stack("cooktime25", 1):get_count() == 0 then
                x5 = 0
                if (time5 > 0) and (player_inv:get_stack("cooking1", 5):get_count() > 0) then
                    if player_inv:room_for_item("cookingout1", output5.item) then
                        player_inv:add_item("cookingout1", output5.item)
                        player_inv:set_stack("cooking1", 5, player_inv:get_stack("cooking1", 5):get_name().." "..(player_inv:get_stack("cooking1", 5):get_count()-1))
                    end
                end
            end
            af(x1,x2,x3,x4,x5)
		end)
    end
    af(0,0,0,0,0)
end)

minetest.register_craftitem("tutorial:fox_schluessel", {
	description = "Foxkey",
	inventory_image = "tutorial_fox_schluessel.png",
})
minetest.override_item("default:obsidian", {
	description = "Obsidian Lv.1",
})
minetest.override_item("default:diamondblock", {
	description = "Diamond block lv.1",
})
minetest.register_craft({
    output = 'tutorial:wallplacer1',
    recipe = {
        {'', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', ''},
		{'', 'tutorial:coin_gelb', '', 'tutorial:coin_gelb', ''},
		{'', '', 'tutorial:coin_gelb', '', ''},
		{'', '', 'tutorial:coin_gelb', '', ''},
		{'', '', 'tutorial:coin_gelb', '', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer2_1',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer1', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer3_1',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer2_1', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer3_2',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer2_2', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer4_1',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer3_1', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer4_2',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer3_2', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer4_3',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer3_3', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer5_1',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer4_1', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer5_2',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer4_2', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer5_3',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer4_3', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craft({
    output = 'tutorial:wallplacer5_4',
    recipe = {
        {'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:wallplacer4_4', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
		{'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb', 'tutorial:coin_gelb'},
    }
})
minetest.register_craftitem("tutorial:wallplacer1", {
	description = "Wallplacer lv.1",
	inventory_image = "tutorial_block_placer1.png",
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do 
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer2_2", {
	description = "Wallplacer lv.2",
	inventory_image = "tutorial_block_placer2.png^technic_tool_mode2.png",
    wield_image = "tutorial_block_placer2.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer2_1")
        end
        return itemstack
    end,
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do 
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer2_1", {
	description = "Wallplacer lv.2",
	inventory_image = "tutorial_block_placer2.png^technic_tool_mode1.png",
    wield_image = "tutorial_block_placer2.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer2_2")
        end
        return itemstack
    end,
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do 
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer3_1", {
	description = "Wallplacer lv.3",
	inventory_image = "tutorial_block_placer3.png^technic_tool_mode1.png",
    wield_image = "tutorial_block_placer3.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer3_2")
        end
        return itemstack
    end,
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do 
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer3_2", {
	description = "Wallplacer lv.3",
	inventory_image = "tutorial_block_placer3.png^technic_tool_mode2.png",
    wield_image = "tutorial_block_placer3.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer3_3")
        end
        return itemstack
    end,
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do 
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer3_3", {
	description = "Wallplacer lv.3",
	inventory_image = "tutorial_block_placer3.png^technic_tool_mode3.png",
    wield_image = "tutorial_block_placer3.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer3_1")
        end
        return itemstack
    end,
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-4), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-4), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,7,1 do
                            for j=1,7,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-7), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-7), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-4), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-4), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,7,1 do
                            for j=1,7,1 do 
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-7), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-7), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer4_1", {
	description = "Wallplacer lv.4",
	inventory_image = "tutorial_block_placer4.png^technic_tool_mode1.png",
    wield_image = "tutorial_block_placer4.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer4_2")
        end
        return itemstack
    end,
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do 
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer4_2", {
	description = "Wallplacer lv.4",
	inventory_image = "tutorial_block_placer4.png^technic_tool_mode2.png",
    wield_image = "tutorial_block_placer4.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer4_3")
        end
        return itemstack
    end,
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do 
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer4_3", {
	description = "Wallplacer lv.4",
	inventory_image = "tutorial_block_placer4.png^technic_tool_mode3.png",
    wield_image = "tutorial_block_placer4.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer4_4")
        end
        return itemstack
    end,
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-4), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-4), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,7,1 do
                            for j=1,7,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-7), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-7), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-4), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-4), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,7,1 do
                            for j=1,7,1 do 
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-7), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-7), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer4_4", {
	description = "Wallplacer lv.4",
	inventory_image = "tutorial_block_placer4.png^technic_tool_mode4.png",
    wield_image = "tutorial_block_placer4.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer4_1")
        end
        return itemstack
    end,
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-5)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-5)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,9,1 do
                            for j=1,9,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-9), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-9), z=pos.z+(j-5)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-5), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-5), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,9,1 do
                            for j=1,9,1 do 
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-9), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-9), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer5_1", {
	description = "Wallplacer lv.MAX",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode1.png",
    wield_image = "tutorial_block_placer5.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer5_2")
        end
        return itemstack
    end,
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-2), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-2)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-2), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,3,1 do
                            for j=1,3,1 do
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,3,1 do
                            for j=1,3,1 do 
                                local name = minetest.get_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-2), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer5_2", {
	description = "Wallplacer lv.MAX",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode2.png",
    wield_image = "tutorial_block_placer5.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer5_3")
        end
        return itemstack
    end,
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-3), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-3)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-3), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,5,1 do
                            for j=1,5,1 do
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,5,1 do
                            for j=1,5,1 do 
                                local name = minetest.get_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-3), y=pos.y+(i-5), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer5_3", {
	description = "Wallplacer lv.MAX",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode3.png",
    wield_image = "tutorial_block_placer5.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer5_4")
        end
        return itemstack
    end,
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-4), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-4), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,7,1 do
                            for j=1,7,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-7), z=pos.z+(j-4)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-7), z=pos.z+(j-4)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-4), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-4), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,7,1 do
                            for j=1,7,1 do
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,7,1 do
                            for j=1,7,1 do 
                                local name = minetest.get_node({x=pos.x+(j-4), y=pos.y+(i-7), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-4), y=pos.y+(i-7), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer5_4", {
	description = "Wallplacer lv.MAX",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode4.png",
    wield_image = "tutorial_block_placer5.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer5_5")
        end
        return itemstack
    end,
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-5), z=pos.z+(j-5)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-5)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,9,1 do
                            for j=1,9,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-9), z=pos.z+(j-5)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-9), z=pos.z+(j-5)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-5), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-5), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,9,1 do
                            for j=1,9,1 do
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,9,1 do
                            for j=1,9,1 do 
                                local name = minetest.get_node({x=pos.x+(j-5), y=pos.y+(i-9), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-5), y=pos.y+(i-9), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craftitem("tutorial:wallplacer5_5", {
	description = "Wallplacer lv.MAX",
	inventory_image = "tutorial_block_placer5.png^technic_tool_mode5.png",
    wield_image = "tutorial_block_placer5.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("tutorial:wallplacer5_1")
        end
        return itemstack
    end,
	on_place = function(itemstack, placer, pointed_thing)
		local main = placer:get_wield_index()+1
        local inv = placer:get_inventory()
        local stack = inv:get_stack("main", main)
        local count =  inv:get_stack("main", main):get_count()
        if pointed_thing ~= nil then
            local dir=placer:get_look_dir()
            local di = 0
	        if math.abs(dir.x)>math.abs(dir.z) then 
		        if dir.x>0 then 
                    di = 0
                else
                    di = 1
                end
            elseif dir.z>0 then
                di = 2
            else
                di = 3
	        end
            local pos = pointed_thing.above
            local pos2 = pointed_thing.under
            local ab = 0
            if minetest.registered_nodes[stack:get_name()] then
                if di == 1 or di == 0 then
                    if pos.y == pos2.y then
                        for i=  1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-6), z=pos.z+(j-6)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-6), z=pos.z+(j-6)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-6)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-1), z=pos.z+(j-6)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,11,1 do
                            for j=1,11,1 do 
                                local name = minetest.get_node({x=pos.x, y=pos.y+(i-11), z=pos.z+(j-6)}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x, y=pos.y+(i-11), z=pos.z+(j-6)}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
                if di == 2 or di == 3 then
                    if pos.y == pos2.y then
                        for i=  1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x+(j-6), y=pos.y+(i-6), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-6), y=pos.y+(i-6), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y > pos2.y then
                        for i=  1,11,1 do
                            for j=1,11,1 do
                                local name = minetest.get_node({x=pos.x+(j-6), y=pos.y+(i-1), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-6), y=pos.y+(i-1), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    elseif pos.y < pos2.y then
                        for i=1,11,1 do
                            for j=1,11,1 do 
                                local name = minetest.get_node({x=pos.x+(j-6), y=pos.y+(i-11), z=pos.z}).name
                                if name == "air" or name == "default:water_source" or name == "default:water_flowing" or name == "default:river_water_source" or name == "default:river_water_flowing" or name == "default:lava_source" or name == "default:lava_flowing" or name == "technic:corium_flowing" then
                                    local count =  inv:get_stack("main", main):get_count()
                                    if count > 0 then
                                        minetest.set_node({x=pos.x+(j-6), y=pos.y+(i-11), z=pos.z}, {name=stack:get_name()})
                                        inv:remove_item("main", stack:get_name())
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
	end,
})
minetest.register_craft({
    output = 'tutorial:gun',
    recipe = {
        {'group:wood', 'group:wood', 'group:wood'},
		{'', 'default:stick', 'group:wood'},
		{'', '', 'default:stick'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega1',
    recipe = {
        {'tutorial:obsidian4', 'tutorial:obsidian4', 'tutorial:obsidian4'},
        {'tutorial:obsidian4', 'tutorial:gun', 'tutorial:obsidian4'},
        {'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega2',
    recipe = {
        {'tutorial:obsidian4', 'tutorial:obsidian4', 'tutorial:obsidian4'},
        {'tutorial:obsidian4','tutorial:gun_mega1','tutorial:obsidian4'},
        {'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega3',
    recipe = {
        {'tutorial:obsidian5', 'tutorial:obsidian5', 'tutorial:obsidian5'},
        {'tutorial:obsidian5','tutorial:gun_mega2','tutorial:obsidian5'},
        {'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega4',
    recipe = {
        {'tutorial:obsidian6', 'tutorial:obsidian6', 'tutorial:obsidian6'},
        {'tutorial:obsidian6','tutorial:gun_mega3','tutorial:obsidian6'},
        {'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega5',
    recipe = {
		{'tutorial:dunklematerie4','tutorial:dunklematerie4', 'tutorial:dunklematerie4'},
		{'tutorial:dunklematerie4','tutorial:gun_mega4','tutorial:dunklematerie4'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega6',
    recipe = {
		{'tutorial:dunklematerie4','tutorial:dunklematerie4', 'tutorial:dunklematerie4'},
		{'tutorial:dunklematerie4','tutorial:gun_mega5','tutorial:dunklematerie4'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega7',
    recipe = {
		{'tutorial:dunklematerie5','tutorial:dunklematerie5', 'tutorial:dunklematerie5'},
		{'tutorial:dunklematerie5','tutorial:gun_mega6','tutorial:dunklematerie5'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega8',
    recipe = {
		{'tutorial:dunklematerie6','tutorial:dunklematerie6', 'tutorial:dunklematerie6'},
		{'tutorial:dunklematerie6','tutorial:gun_mega7','tutorial:dunklematerie6'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega9',
    recipe = {
		{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
		{'tutorial:diamondblock2','tutorial:gun_mega8','tutorial:diamondblock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega10',
    recipe = {
		{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
		{'tutorial:diamondblock2','tutorial:gun_mega9','tutorial:diamondblock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega11',
    recipe = {
		{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
		{'tutorial:diamondblock2','tutorial:gun_mega10','tutorial:diamondblock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega12',
    recipe = {
		{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
		{'tutorial:diamondblock2','tutorial:gun_mega11','tutorial:diamondblock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega13',
    recipe = {
		{'default:goldblock','default:goldblock', 'default:goldblock'},
		{'default:goldblock','tutorial:gun_mega12','default:goldblock'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega14',
    recipe = {
		{'default:nyancat_rainbow','default:nyancat_rainbow', 'default:nyancat_rainbow'},
		{'default:nyancat_rainbow','tutorial:gun_mega13','default:nyancat_rainbow'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega15',
    recipe = {
		{'default:nyancat_rainbow','default:nyancat_rainbow', 'default:nyancat_rainbow'},
		{'default:nyancat_rainbow','tutorial:gun_mega14','default:nyancat_rainbow'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega16',
    recipe = {
		{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
		{'tutorial:megablock1','tutorial:gun_mega15','tutorial:megablock1'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega17',
    recipe = {
		{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
		{'tutorial:megablock1','tutorial:gun_mega16','tutorial:megablock1'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega18',
    recipe = {
		{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
		{'tutorial:megablock1','tutorial:gun_mega17','tutorial:megablock1'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega19',
    recipe = {
		{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
		{'tutorial:megablock1','tutorial:gun_mega18','tutorial:megablock1'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:gun_mega20',
    recipe = {
		{'tutorial:megablock2','tutorial:megablock2', 'tutorial:megablock2'},
		{'tutorial:megablock2','tutorial:gun_mega19','tutorial:megablock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega25',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:cloudgun_mega24', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega24',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:cloudgun_mega23', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega23',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:cloudgun_mega22', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega22',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:cloudgun_mega21', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega21',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:cloudgun_mega20', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega20',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:cloudgun_mega19', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega19',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:cloudgun_mega18', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega18',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:cloudgun_mega17', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega17',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:cloudgun_mega16', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega16',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:cloudgun_mega15', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega15',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:cloudgun_mega14', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega14',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:cloudgun_mega13', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega13',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:cloudgun_mega12', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega12',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:cloudgun_mega11', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega11',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:cloudgun_mega10', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega10',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:cloudgun_mega9', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega9',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:cloudgun_mega8', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega8',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:cloudgun_mega7', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega7',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:cloudgun_mega6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega6',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:cloudgun_mega5', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega5',
    recipe = {
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:cloudgun_mega4', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega4',
    recipe = {
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:cloudgun_mega3', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega3',
    recipe = {
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:cloudgun_mega2', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega2',
    recipe = {
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:cloudgun_mega1', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudgun_mega1',
    recipe = {
        {'tutorial:cloudentverner21', 'tutorial:gun_mega20'},
    }
})
minetest.register_craft({
    output = 'tutorial:supergun4',
    recipe = {
        {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
        {'tutorial:whiteblock6', 'tutorial:supergun3', 'tutorial:blackblock6'},
        {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:supergun3',
    recipe = {
        {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
        {'tutorial:whiteblock6', 'tutorial:supergun2', 'tutorial:blackblock6'},
        {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:supergun2',
    recipe = {
        {'tutorial:whiteblock5', 'tutorial:thunder', 'tutorial:blackblock5'},
        {'tutorial:whiteblock5', 'tutorial:supergun1', 'tutorial:blackblock5'},
        {'tutorial:whiteblock5', 'tutorial:thunder', 'tutorial:blackblock5'},
    }
})
minetest.register_craft({
    output = 'tutorial:supergun1',
    recipe = {
        {'tutorial:zauberstab9', 'tutorial:gun_mega25', 'tutorial:swored_zauber9'},
    }
})
minetest.register_craft({
    output = 'tutorial:uraniumgun2',
    recipe = {
        {'tutorial:uranium9', 'tutorial:uranium9', 'tutorial:uranium9'},
        {'tutorial:uranium9', 'tutorial:uraniumgun1', 'tutorial:uranium9'},
        {'tutorial:uranium9', 'tutorial:uranium9', 'tutorial:uranium9'},
    }
})
minetest.register_craft({
    output = 'tutorial:uraniumgun1',
    recipe = {
        {'tutorial:uranium8', 'tutorial:uranium8', 'tutorial:uranium8'},
        {'tutorial:uranium8', 'tutorial:supergun4', 'tutorial:uranium8'},
        {'tutorial:uranium8', 'tutorial:uranium8', 'tutorial:uranium8'},
    }
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energygun12',
    cooktime = 1000,
	output = 'tutorial:superenergygun1',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:superenergygun1',
    cooktime = 1200,
	output = 'tutorial:superenergygun2',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:superenergygun2',
    cooktime = 1400,
	output = 'tutorial:superenergygun3',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:superenergygun3',
    cooktime = 1600,
	output = 'tutorial:superenergygun4',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:superenergygun4',
    cooktime = 1800,
	output = 'tutorial:superenergygun5',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:superenergygun5',
    cooktime = 2000,
	output = 'tutorial:superenergygun6',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:superenergygun6',
    cooktime = 2500,
	output = 'tutorial:superenergygun7',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:uraniumgun2',
    cooktime = 100,
	output = 'tutorial:energygun1',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energygun1',
    cooktime = 100,
	output = 'tutorial:energygun2',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energygun2',
    cooktime = 200,
	output = 'tutorial:energygun3',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energygun3',
    cooktime = 300,
	output = 'tutorial:energygun4',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energygun4',
    cooktime = 400,
	output = 'tutorial:energygun5',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energygun5',
    cooktime = 500,
	output = 'tutorial:energygun6',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energygun6',
    cooktime = 600,
	output = 'tutorial:energygun7',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energygun7',
    cooktime = 700,
	output = 'tutorial:energygun8',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energygun8',
    cooktime = 800,
	output = 'tutorial:energygun9',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energygun9',
    cooktime = 900,
	output = 'tutorial:energygun10',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energygun10',
    cooktime = 1000,
	output = 'tutorial:energygun11',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energygun11',
    cooktime = 1500,
	output = 'tutorial:energygun12',
})
minetest.register_craft({
    output = 'tutorial:kristallgun5',
    recipe = {
        {'tutorial:admin', 'tutorial:thunder', 'tutorial:admin'},
        {'tutorial:admin', 'tutorial:kristallgun4', 'tutorial:admin'},
        {'tutorial:admin', 'tutorial:thunder', 'tutorial:admin'},
    }
})
minetest.register_craft({
    output = 'tutorial:kristallgun4',
    recipe = {
        {'gems:emerald_block', 'tutorial:thunder', 'gems:emerald_block'},
        {'gems:emerald_block', 'tutorial:kristallgun3', 'gems:emerald_block'},
        {'gems:emerald_block', 'tutorial:thunder', 'gems:emerald_block'},
    }
})
minetest.register_craft({
    output = 'tutorial:kristallgun3',
    recipe = {
        {'gems:pearl_block', 'tutorial:thunder', 'gems:shadow_block'},
        {'gems:pearl_block', 'tutorial:kristallgun2', 'gems:shadow_block'},
        {'gems:pearl_block', 'tutorial:thunder', 'gems:shadow_block'},
    }
})
minetest.register_craft({
    output = 'tutorial:kristallgun2',
    recipe = {
        {'gems:amethyst_block', 'tutorial:thunder', 'gems:amethyst_block'},
        {'gems:amethyst_block', 'tutorial:kristallgun1', 'gems:amethyst_block'},
        {'gems:amethyst_block', 'tutorial:thunder', 'gems:amethyst_block'},
    }
})
minetest.register_craft({
    output = 'tutorial:kristallgun1',
    recipe = {
        {'gems:ruby_block', 'tutorial:thunder', 'gems:sapphire_block'},
        {'gems:ruby_block', 'tutorial:superenergygun7', 'gems:sapphire_block'},
        {'gems:ruby_block', 'tutorial:thunder', 'gems:sapphire_block'},
    }
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun24',
    cooktime = 5000,
	output = 'tutorial:ultragun25',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun23',
    cooktime = 4800,
	output = 'tutorial:ultragun24',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun22',
    cooktime = 4600,
	output = 'tutorial:ultragun23',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun21',
    cooktime = 4400,
	output = 'tutorial:ultragun22',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun20',
    cooktime = 4200,
	output = 'tutorial:ultragun21',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun19',
    cooktime = 4000,
	output = 'tutorial:ultragun20',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun18',
    cooktime = 3800,
	output = 'tutorial:ultragun19',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun17',
    cooktime = 3600,
	output = 'tutorial:ultragun18',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun16',
    cooktime = 3400,
	output = 'tutorial:ultragun17',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun15',
    cooktime = 3200,
	output = 'tutorial:ultragun16',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun14',
    cooktime = 3000,
	output = 'tutorial:ultragun15',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun13',
    cooktime = 2800,
	output = 'tutorial:ultragun14',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun12',
    cooktime = 2600,
	output = 'tutorial:ultragun13',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun11',
    cooktime = 2400,
	output = 'tutorial:ultragun12',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun10',
    cooktime = 2200,
	output = 'tutorial:ultragun11',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun9',
    cooktime = 2000,
	output = 'tutorial:ultragun10',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun8',
    cooktime = 1800,
	output = 'tutorial:ultragun9',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun7',
    cooktime = 1600,
	output = 'tutorial:ultragun8',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun6',
    cooktime = 1400,
	output = 'tutorial:ultragun7',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun5',
    cooktime = 1200,
	output = 'tutorial:ultragun6',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun4',
    cooktime = 1000,
	output = 'tutorial:ultragun5',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun3',
    cooktime = 800,
	output = 'tutorial:ultragun4',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun2',
    cooktime = 600,
	output = 'tutorial:ultragun3',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun1',
    cooktime = 400,
	output = 'tutorial:ultragun2',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:kristallgun5',
    cooktime = 200,
	output = 'tutorial:ultragun1',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultragun25',
    cooktime = 10000,
	output = 'tutorial:ultragun',
})
minetest.register_craft({
    output = 'tutorial:xp_block_yellow 16',
    recipe = {
		{'tutorial:titan','tutorial:admin','tutorial:regnum','tutorial:admin','tutorial:titan'},
    }
})
minetest.register_craftitem("tutorial:coin_gelb", {
    description = "Coin yellow (very rare)",
	inventory_image = "tutorial_coin_gelb.png",
    stack_max = 1500,
})
minetest.register_node("tutorial:level1_gelb",{
	tiles  = {"tutorial_level1_gelb.png"},
	description = "You are now in Level yellow 1",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level2_gelb",{
	tiles  = {"tutorial_level2_gelb.png"},
	description = "You are now in Level yellow 2",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level3_gelb",{
	tiles  = {"tutorial_level3_gelb.png"},
	description = "You are now in Level yellow 3",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level4_gelb",{
	tiles  = {"tutorial_level4_gelb.png"},
	description = "You are now in Level yellow 4",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level5_gelb",{
	tiles  = {"tutorial_level5_gelb.png"},
	description = "You are now in Level yellow 5",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level6_gelb",{
	tiles  = {"tutorial_level6_gelb.png"},
	description = "You are now in Level yellow 6",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level7_gelb",{
	tiles  = {"tutorial_level7_gelb.png"},
	description = "You are now in Level yellow 7",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level8_gelb",{
	tiles  = {"tutorial_level8_gelb.png"},
	description = "You are now in Level yellow 8",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level9_gelb",{
	tiles  = {"tutorial_level9_gelb.png"},
	description = "You are now in Level yellow 9",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level10_gelb",{
	tiles  = {"tutorial_level10_gelb.png"},
	description = "You are now in Level yellow 10",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level11_gelb",{
	tiles  = {"tutorial_level11_gelb.png"},
	description = "You are now in Level yellow 11",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level12_gelb",{
	tiles  = {"tutorial_level12_gelb.png"},
	description = "You are now in Level yellow 12",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level13_gelb",{
	tiles  = {"tutorial_level13_gelb.png"},
	description = "You are now in Level yellow 13",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level14_gelb",{
	tiles  = {"tutorial_level14_gelb.png"},
	description = "You are now in Level yellow 14",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level15_gelb",{
	tiles  = {"tutorial_level15_gelb.png"},
	description = "You are now in Level yellow 15",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level16_gelb",{
	tiles  = {"tutorial_level16_gelb.png"},
	description = "You are now in Level yellow 16",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level17_gelb",{
	tiles  = {"tutorial_level17_gelb.png"},
	description = "You are now in Level yellow 17",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level18_gelb",{
	tiles  = {"tutorial_level18_gelb.png"},
	description = "You are now in Level yellow 18",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level19_gelb",{
	tiles  = {"tutorial_level19_gelb.png"},
	description = "You are now in Level yellow 19",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level20_gelb",{
	tiles  = {"tutorial_level20_gelb.png"},
	description = "You are now in Level yellow 20",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level21_gelb",{
	tiles  = {"tutorial_level21_gelb.png"},
	description = "You are now in Level yellow 21",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level22_gelb",{
	tiles  = {"tutorial_level22_gelb.png"},
	description = "You are now in Level yellow 22",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level23_gelb",{
	tiles  = {"tutorial_level23_gelb.png"},
	description = "You are now in Level yellow 23",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level24_gelb",{
	tiles  = {"tutorial_level24_gelb.png"},
	description = "You are now in Level yellow 24",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level25_gelb",{
	tiles  = {"tutorial_level25_gelb.png"},
	description = "You are now in Level yellow 25",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level26_gelb",{
	tiles  = {"tutorial_level26_gelb.png"},
	description = "You are now in Level yellow 26",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level27_gelb",{
	tiles  = {"tutorial_level27_gelb.png"},
	description = "You are now in Level yellow 27",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level28_gelb",{
	tiles  = {"tutorial_level28_gelb.png"},
	description = "You are now in Level yellow 28",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level29_gelb",{
	tiles  = {"tutorial_level29_gelb.png"},
	description = "You are now in Level yellow 29",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level30_gelb",{
	tiles  = {"tutorial_level30_gelb.png"},
	description = "You are now in Level yellow 30",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level31_gelb",{
	tiles  = {"tutorial_level31_gelb.png"},
	description = "You are now in Level yellow 31",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level32_gelb",{
	tiles  = {"tutorial_level32_gelb.png"},
	description = "You are now in Level yellow 32",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level33_gelb",{
	tiles  = {"tutorial_level33_gelb.png"},
	description = "You are now in Level yellow 33",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level34_gelb",{
	tiles  = {"tutorial_level34_gelb.png"},
	description = "You are now in Level yellow 34",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level35_gelb",{
	tiles  = {"tutorial_level35_gelb.png"},
	description = "You are now in Level yellow 35",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level36_gelb",{
	tiles  = {"tutorial_level36_gelb.png"},
	description = "You are now in Level yellow 36",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level37_gelb",{
	tiles  = {"tutorial_level37_gelb.png"},
	description = "You are now in Level yellow 37",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level38_gelb",{
	tiles  = {"tutorial_level38_gelb.png"},
	description = "You are now in Level yellow 38",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level39_gelb",{
	tiles  = {"tutorial_level39_gelb.png"},
	description = "You are now in Level yellow 39",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level40_gelb",{
	tiles  = {"tutorial_level40_gelb.png"},
	description = "You are now in Level yellow 40",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level41_gelb",{
	tiles  = {"tutorial_level41_gelb.png"},
	description = "You are now in Level yellow 41",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level42_gelb",{
	tiles  = {"tutorial_level42_gelb.png"},
	description = "You are now in Level yellow 42",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level43_gelb",{
	tiles  = {"tutorial_level43_gelb.png"},
	description = "You are now in Level yellow 43",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level44_gelb",{
	tiles  = {"tutorial_level44_gelb.png"},
	description = "You are now in Level yellow 44",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level45_gelb",{
	tiles  = {"tutorial_level45_gelb.png"},
	description = "You are now in Level yellow 45",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level46_gelb",{
	tiles  = {"tutorial_level46_gelb.png"},
	description = "You are now in Level yellow 46",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level47_gelb",{
	tiles  = {"tutorial_level47_gelb.png"},
	description = "You are now in Level yellow 47",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level48_gelb",{
	tiles  = {"tutorial_level48_gelb.png"},
	description = "You are now in Level yellow 48",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level49_gelb",{
	tiles  = {"tutorial_level49_gelb.png"},
	description = "You are now in Level yellow 49",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level50_gelb",{
	tiles  = {"tutorial_level50_gelb.png"},
	description = "You are now in Level yellow 50",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level51_gelb",{
	tiles  = {"tutorial_level51_gelb.png"},
	description = "You are now in Level yellow 51",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level52_gelb",{
	tiles  = {"tutorial_level52_gelb.png"},
	description = "You are now in Level yellow 52",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level53_gelb",{
	tiles  = {"tutorial_level53_gelb.png"},
	description = "You are now in Level yellow 53",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level54_gelb",{
	tiles  = {"tutorial_level54_gelb.png"},
	description = "You are now in Level yellow 54",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level55_gelb",{
	tiles  = {"tutorial_level55_gelb.png"},
	description = "You are now in Level yellow 55",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level56_gelb",{
	tiles  = {"tutorial_level56_gelb.png"},
	description = "You are now in Level yellow 56",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level57_gelb",{
	tiles  = {"tutorial_level57_gelb.png"},
	description = "You are now in Level yellow 57",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level58_gelb",{
	tiles  = {"tutorial_level58_gelb.png"},
	description = "You are now in Level yellow 58",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level59_gelb",{
	tiles  = {"tutorial_level59_gelb.png"},
	description = "You are now in Level yellow 59",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level60_gelb",{
	tiles  = {"tutorial_level60_gelb.png"},
	description = "You are now in Level yellow 60",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level61_gelb",{
	tiles  = {"tutorial_level61_gelb.png"},
	description = "You are now in Level yellow 61",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level62_gelb",{
	tiles  = {"tutorial_level62_gelb.png"},
	description = "You are now in Level yellow 62",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level63_gelb",{
	tiles  = {"tutorial_level63_gelb.png"},
	description = "You are now in Level yellow 63",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level64_gelb",{
	tiles  = {"tutorial_level64_gelb.png"},
	description = "You are now in Level yellow 64",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level65_gelb",{
	tiles  = {"tutorial_level65_gelb.png"},
	description = "You are now in Level yellow 65",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level66_gelb",{
	tiles  = {"tutorial_level66_gelb.png"},
	description = "You are now in Level yellow 66",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level67_gelb",{
	tiles  = {"tutorial_level67_gelb.png"},
	description = "You are now in Level yellow 67",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level68_gelb",{
	tiles  = {"tutorial_level68_gelb.png"},
	description = "You are now in Level yellow 68",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level69_gelb",{
	tiles  = {"tutorial_level69_gelb.png"},
	description = "You are now in Level yellow 69",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level70_gelb",{
	tiles  = {"tutorial_level70_gelb.png"},
	description = "You are now in Level yellow 70",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level71_gelb",{
	tiles  = {"tutorial_level71_gelb.png"},
	description = "You are now in Level yellow 71",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level72_gelb",{
	tiles  = {"tutorial_level72_gelb.png"},
	description = "You are now in Level yellow 72",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level73_gelb",{
	tiles  = {"tutorial_level73_gelb.png"},
	description = "You are now in Level yellow 73",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level74_gelb",{
	tiles  = {"tutorial_level74_gelb.png"},
	description = "You are now in Level yellow 74",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level75_gelb",{
	tiles  = {"tutorial_level75_gelb.png"},
	description = "You are now in Level yellow 75",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level76_gelb",{
	tiles  = {"tutorial_level76_gelb.png"},
	description = "You are now in Level yellow 76",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level77_gelb",{
	tiles  = {"tutorial_level77_gelb.png"},
	description = "You are now in Level yellow 77",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level78_gelb",{
	tiles  = {"tutorial_level78_gelb.png"},
	description = "You are now in Level yellow 78",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level79_gelb",{
	tiles  = {"tutorial_level79_gelb.png"},
	description = "You are now in Level yellow 79",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level80_gelb",{
	tiles  = {"tutorial_level80_gelb.png"},
	description = "You are now in Level yellow 80",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level81_gelb",{
	tiles  = {"tutorial_level81_gelb.png"},
	description = "You are now in Level yellow 81",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level82_gelb",{
	tiles  = {"tutorial_level82_gelb.png"},
	description = "You are now in Level yellow 82",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level83_gelb",{
	tiles  = {"tutorial_level83_gelb.png"},
	description = "You are now in Level yellow 83",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level84_gelb",{
	tiles  = {"tutorial_level84_gelb.png"},
	description = "You are now in Level yellow 84",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level85_gelb",{
	tiles  = {"tutorial_level85_gelb.png"},
	description = "You are now in Level yellow 85",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level86_gelb",{
	tiles  = {"tutorial_level86_gelb.png"},
	description = "You are now in Level yellow 86",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level87_gelb",{
	tiles  = {"tutorial_level87_gelb.png"},
	description = "You are now in Level yellow 87",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level88_gelb",{
	tiles  = {"tutorial_level88_gelb.png"},
	description = "You are now in Level yellow 88",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level89_gelb",{
	tiles  = {"tutorial_level89_gelb.png"},
	description = "You are now in Level yellow 89",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level90_gelb",{
	tiles  = {"tutorial_level90_gelb.png"},
	description = "You are now in Level yellow 90",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level91_gelb",{
	tiles  = {"tutorial_level91_gelb.png"},
	description = "You are now in Level yellow 91",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level92_gelb",{
	tiles  = {"tutorial_level92_gelb.png"},
	description = "You are now in Level yellow 92",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level93_gelb",{
	tiles  = {"tutorial_level93_gelb.png"},
	description = "You are now in Level yellow 93",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level94_gelb",{
	tiles  = {"tutorial_level94_gelb.png"},
	description = "You are now in Level yellow 94",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level95_gelb",{
	tiles  = {"tutorial_level95_gelb.png"},
	description = "You are now in Level yellow 95",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level96_gelb",{
	tiles  = {"tutorial_level96_gelb.png"},
	description = "You are now in Level yellow 96",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level97_gelb",{
	tiles  = {"tutorial_level97_gelb.png"},
	description = "You are now in Level yellow 97",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level98_gelb",{
	tiles  = {"tutorial_level98_gelb.png"},
	description = "You are now in Level yellow 98",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level99_gelb",{
	tiles  = {"tutorial_level99_gelb.png"},
	description = "You are now in Level yellow 99",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:level100_gelb",{
	tiles  = {"tutorial_level100_gelb.png"},
	description = "You are now in Level yellow 100",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
minetest.register_node("tutorial:levelMAX_gelb",{
	tiles  = {"tutorial_levelMAX_gelb.png"},
	description = "You are now in Level yellow MAX",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})
local xpi4 = {}
xpi4.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    local xpi5_inv = minetest.create_detached_inventory(player:get_player_name().."_xpi5",{
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
    xpi5_inv:set_size("xpi5", 60)
	player_inv:set_size("xp5", 60)
    for i=1, 60 do
		local stack = player_inv:get_stack("xpi5", i)
		xpi5_inv:set_stack("xpi5", i, stack)
    end
	xpi5_inv:set_size("xpi5", 60)
	player_inv:set_size("xpi5", 60)
	formspec = "size[18,12.3]"
	    .."button[0,0;2,0.5;inven;Back]"
	    .."button[2,0;2,0.5;main;Main]"
        .."list[current_player;main;4,7.5;8,1;]"
		.."list[current_player;main;4,8.75;8,3;8]"
        .."background[18,12.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        .."list[detached:"..player:get_player_name().."_xpi5;xpi5;0,1.3;18,6]"
        .."listring[current_player;main]" 
	    .."listring[detached:"..player:get_player_name().."_xpi5;xpi5]"
        .."label[0,0.7;Yellow Level Blocks]"
        .."button[7,12;2,0.5;xpi3;<]"
	return formspec		
end
minetest.register_node("tutorial:xp_block_yellow",{
	description = "Xp Block (yellow)",
	tiles  = {"tutorial_xp_block_yellow.png"},
    drop = '',
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,xpy=1},  
})
for i = 0, 121 do
    local XTRAORES_TB = {
	    physical = false,
	    timer = 0,
	    visual = "sprite",
	    visual_size = {x=0.075, y=0.075,},
	    textures = {'tutorial_titanium_shot.png'},
	    lastpos= {},
	    collisionbox = {0, 0, 0, 0, 0, 0},
        metadata = "",
    }
    XTRAORES_TB.on_step = function(self, dtime)
	    self.timer = self.timer + dtime
        local ki = 0
        if i == 0 then
            ki = 1
        else
            ki = i
        end
        local l = 0
        if i == 0 then
            l = 1
        elseif i < 21 then
            l = 2
        elseif i < 46 then
            l = 3
        elseif i < 50 then
            l = 4
        elseif i < 52 then
            l = 5
        elseif i < 64 then
            l = 6
        elseif i < 71 then
            l = 7
        elseif i < 76 then
            l = 8
        elseif i < 101 then
            l = 9
        elseif i < 102 then
            l = 10
        end
	    local pos = self.object:getpos()
	    local node = minetest.get_node(pos)
	    if self.timer > 0.08 then
		    local objs = minetest.get_objects_inside_radius({x = pos.x, y = pos.y, z = pos.z}, l)
		    for k, obj in pairs(objs) do
                local damage = ki
			    if obj:get_luaentity() ~= nil then
				    if obj:get_luaentity().name ~= "tutorial:tb_"..i and obj:get_luaentity().name ~= "__builtin:item" then
                        obj:punch(self.object, 1.0, {full_punch_interval = 1.0, damage_groups= {fleshy = damage}}, nil)
					    minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					    self.object:remove()
				    end
			    else
				    if obj:is_player() then
                        if obj:get_player_name() == self.player:get_player_name() then
                        else
                            obj:punch(self.object, 1.0, {full_punch_interval = 1.0, damage_groups= {fleshy = damage}}, nil)
					        minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					        self.object:remove()
                        end
                    else
                        obj:punch(self.object, 1.0, {full_punch_interval = 1.0, damage_groups= {fleshy = damage}}, nil)
					    minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
					    self.object:remove()
                    end
			    end
		    end
	    end
	    if self.lastpos.x ~= nil then
		    if minetest.registered_nodes[node.name].walkable then
			    if not minetest.setting_getbool("creative_mode") then
				    minetest.add_item(self.lastpos, "")
			    end
			    minetest.sound_play("default_dig_cracky", {pos = self.lastpos, gain = 0.8})
			    self.object:remove()
		    end
	    end
	    self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
    end
    minetest.register_entity("tutorial:tb_"..i, XTRAORES_TB)
end
minetest.register_tool("tutorial:gun", {
	    description = "Gun\nGun-lv.0",
	    inventory_image = "tutorial_gun.png",
	    on_use = function(itemstack, user, pointed_thing)
		    local inv = user:get_inventory()
		    local pos = user:getpos()
		    local dir = user:get_look_dir()
		    local yaw = user:get_look_yaw()
		    if pos and dir and yaw then
			    pos.y = pos.y + 1.6
			    local obj = minetest.add_entity(pos, "tutorial:tb_0")
			    if obj then
				    minetest.sound_play("shot", {object=obj})
				    obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				    obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				    obj:setyaw(yaw + math.pi)
				    local ent = obj:get_luaentity()
				    if ent then
					    ent.player = user
				    end
			    end
		    end
		    return itemstack
	    end,
    })
for i = 1, 20 do
    minetest.register_tool("tutorial:gun_mega"..i, {
	    description = "Mega Gun lv."..i.."\nGun-lv."..i,
	    inventory_image = "tutorial_gun_mega"..i..".png",
	    on_use = function(itemstack, user, pointed_thing)
		    local inv = user:get_inventory()
		    local pos = user:getpos()
		    local dir = user:get_look_dir()
		    local yaw = user:get_look_yaw()
		    if pos and dir and yaw then
			    pos.y = pos.y + 1.6
			    local obj = minetest.add_entity(pos, "tutorial:tb_"..i)
			    if obj then
				    minetest.sound_play("shot", {object=obj})
				    obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				    obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				    obj:setyaw(yaw + math.pi)
				    local ent = obj:get_luaentity()
				    if ent then
					    ent.player = user
				    end
			    end
		    end
		    return itemstack
	    end,
    })
end
for i = 1, 25 do
    minetest.register_tool("tutorial:cloudgun_mega"..i, {
	    description = "Cloudgun lv."..i.."\nGun-lv."..(i+20),
	    inventory_image = "tutorial_cloudgun_mega"..i..".png",
	    on_use = function(itemstack, user, pointed_thing)
		    local inv = user:get_inventory()
		    local pos = user:getpos()
		    local dir = user:get_look_dir()
		    local yaw = user:get_look_yaw()
		    if pos and dir and yaw then
			    pos.y = pos.y + 1.6
			    local obj = minetest.add_entity(pos, "tutorial:tb_"..(i+20))
			    if obj then
				    minetest.sound_play("shot", {object=obj})
				    obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				    obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				    obj:setyaw(yaw + math.pi)
				    local ent = obj:get_luaentity()
				    if ent then
					    ent.player = user
				    end
			    end
		    end
		    return itemstack
	    end,
    })
end
for i = 1, 4 do
    minetest.register_tool("tutorial:supergun"..i, {
	    description = "Supergun lv."..i.."\nGun-lv."..(i+45),
	    inventory_image = "tutorial_supergun"..i..".png",
	    on_use = function(itemstack, user, pointed_thing)
		    local inv = user:get_inventory()
		    local pos = user:getpos()
		    local dir = user:get_look_dir()
		    local yaw = user:get_look_yaw()
		    if pos and dir and yaw then
			    pos.y = pos.y + 1.6
			    local obj = minetest.add_entity(pos, "tutorial:tb_"..(i+45))
			    if obj then
				    minetest.sound_play("shot", {object=obj})
				    obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				    obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				    obj:setyaw(yaw + math.pi)
				    local ent = obj:get_luaentity()
				    if ent then
					    ent.player = user
				    end
			    end
		    end
		    return itemstack
	    end,
    })
end
for i = 1, 2 do
    minetest.register_tool("tutorial:uraniumgun"..i, {
	    description = "Uraniumgun lv."..i.."\nGun-lv."..(i+49),
	    inventory_image = "tutorial_uraniumgun"..i..".png",
	    on_use = function(itemstack, user, pointed_thing)
		    local inv = user:get_inventory()
		    local pos = user:getpos()
		    local dir = user:get_look_dir()
		    local yaw = user:get_look_yaw()
		    if pos and dir and yaw then
			    pos.y = pos.y + 1.6
			    local obj = minetest.add_entity(pos, "tutorial:tb_"..(i+49))
			    if obj then
				    minetest.sound_play("shot", {object=obj})
				    obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				    obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				    obj:setyaw(yaw + math.pi)
				    local ent = obj:get_luaentity()
				    if ent then
					    ent.player = user
				    end
			    end
		    end
		    return itemstack
	    end,
    })
end
for i = 1, 12 do
    minetest.register_tool("tutorial:energygun"..i, {
	    description = "Energygun lv."..i.."\nGun-lv."..(i+51),
	    inventory_image = "tutorial_energygun"..i..".png",
	    on_use = function(itemstack, user, pointed_thing)
		    local inv = user:get_inventory()
		    local pos = user:getpos()
		    local dir = user:get_look_dir()
		    local yaw = user:get_look_yaw()
		    if pos and dir and yaw then
			    pos.y = pos.y + 1.6
			    local obj = minetest.add_entity(pos, "tutorial:tb_"..(i+51))
			    if obj then
				    minetest.sound_play("shot", {object=obj})
				    obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				    obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				    obj:setyaw(yaw + math.pi)
				    local ent = obj:get_luaentity()
				    if ent then
					    ent.player = user
				    end
			    end
		    end
		    return itemstack
	    end,
    })
end
for i = 1, 7 do
    minetest.register_tool("tutorial:superenergygun"..i, {
	    description = "Superenergygun lv."..i.."\nGun-lv."..(i+63),
	    inventory_image = "tutorial_superenergygun"..i..".png",
	    on_use = function(itemstack, user, pointed_thing)
		    local inv = user:get_inventory()
		    local pos = user:getpos()
		    local dir = user:get_look_dir()
		    local yaw = user:get_look_yaw()
		    if pos and dir and yaw then
			    pos.y = pos.y + 1.6
			    local obj = minetest.add_entity(pos, "tutorial:tb_"..(i+63))
			    if obj then
				    minetest.sound_play("shot", {object=obj})
				    obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				    obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				    obj:setyaw(yaw + math.pi)
				    local ent = obj:get_luaentity()
				    if ent then
					    ent.player = user
				    end
			    end
		    end
		    return itemstack
	    end,
    })
end
for i = 1, 5 do
    minetest.register_tool("tutorial:kristallgun"..i, {
	    description = "Crystalgun lv."..i.."\nGun-lv."..(i+70),
	    inventory_image = "tutorial_kristallgun"..i..".png",
	    on_use = function(itemstack, user, pointed_thing)
		    local inv = user:get_inventory()
		    local pos = user:getpos()
		    local dir = user:get_look_dir()
		    local yaw = user:get_look_yaw()
		    if pos and dir and yaw then
			    pos.y = pos.y + 1.6
			    local obj = minetest.add_entity(pos, "tutorial:tb_"..(i+70))
			    if obj then
				    minetest.sound_play("shot", {object=obj})
				    obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				    obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				    obj:setyaw(yaw + math.pi)
				    local ent = obj:get_luaentity()
				    if ent then
					    ent.player = user
				    end
			    end
		    end
		    return itemstack
	    end,
    })
end
for i = 1, 25 do
    minetest.register_tool("tutorial:ultragun"..i, {
	    description = "Ultragun lv."..i.."\nGun-lv."..(i+75),
	    inventory_image = "tutorial_ultragun"..i..".png",
	    on_use = function(itemstack, user, pointed_thing)
		    local inv = user:get_inventory()
		    local pos = user:getpos()
		    local dir = user:get_look_dir()
		    local yaw = user:get_look_yaw()
		    if pos and dir and yaw then
			    pos.y = pos.y + 1.6
			    local obj = minetest.add_entity(pos, "tutorial:tb_"..(i+75))
			    if obj then
				    minetest.sound_play("shot", {object=obj})
				    obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				    obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				    obj:setyaw(yaw + math.pi)
				    local ent = obj:get_luaentity()
				    if ent then
					    ent.player = user
				    end
			    end
		    end
		    return itemstack
	    end,
    })
end
minetest.register_tool("tutorial:ultragun", {
	    description = "Superultragun\nGun-lv.101",
	    inventory_image = "tutorial_superultragun.png",
	    on_use = function(itemstack, user, pointed_thing)
		    local inv = user:get_inventory()
		    local pos = user:getpos()
		    local dir = user:get_look_dir()
		    local yaw = user:get_look_yaw()
		    if pos and dir and yaw then
			    pos.y = pos.y + 1.6
			    local obj = minetest.add_entity(pos, "tutorial:tb_101")
			    if obj then
				    minetest.sound_play("shot", {object=obj})
				    obj:setvelocity({x=dir.x * 60, y=dir.y * 60, z=dir.z * 60})
				    obj:setacceleration({x=dir.x * -0, y=-0, z=dir.z * -0})
				    obj:setyaw(yaw + math.pi)
				    local ent = obj:get_luaentity()
				    if ent then
					    ent.player = user
				    end
			    end
		    end
		    return itemstack
	    end,
    })
local mine = {}
mine.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    player_inv:set_size("mine1", 1)
    player_inv:set_size("mine2", 8)
	formspec = "size[10,8.3]"
        .."background[10,8.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
	    .."button[0,0;2,0.5;cr;Back]"
	    .."button[2,0;2,0.5;main;Main]"
        .."list[current_player;mine1;0,1.25;5,1;]"
        .."list[current_player;mine2;1.5,1.25;8,1;]"
        .."label[0,2.2;Mining laser/drill]"
        .."button[4,3;2,0.5;craftmine;Craft]"
        .."label[5,2.2;Green Coins]"
        .."list[current_player;main;1,4.25;8,1;]"
	    .."list[current_player;main;1,5.5;8,3;8]"
	return formspec		
end
local recraft = {}
recraft.get_formspec = function(player,pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    local lv = {
	    {1,     "normal",   5,  "tutorial:obsidian4",           "tutorial:obsidian4",           "tutorial:obsidian4",           "tutorial:obsidian4",           "",     "tutorial:obsidian4",               "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {2,     "normal",   5,  "tutorial:obsidian4",           "tutorial:obsidian4",           "tutorial:obsidian4",           "tutorial:obsidian4",           "",     "tutorial:obsidian4",               "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {3,     "normal",   5,  "tutorial:obsidian5",           "tutorial:obsidian5",           "tutorial:obsidian5",           "tutorial:obsidian5",           "",     "tutorial:obsidian5",               "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {4,     "normal",   5,  "tutorial:obsidian6",           "tutorial:obsidian6",           "tutorial:obsidian6",           "tutorial:obsidian6",           "",     "tutorial:obsidian6",               "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {5,     "normal",   5,  "tutorial:dunklematerie4",      "tutorial:dunklematerie4",      "tutorial:dunklematerie4",      "tutorial:dunklematerie4",      "",     "tutorial:dunklematerie4",          "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {6,     "normal",   5,  "tutorial:dunklematerie4",      "tutorial:dunklematerie4",      "tutorial:dunklematerie4",      "tutorial:dunklematerie4",      "",     "tutorial:dunklematerie4",          "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {7,     "normal",   5,  "tutorial:dunklematerie5",      "tutorial:dunklematerie5",      "tutorial:dunklematerie5",      "tutorial:dunklematerie5",      "",     "tutorial:dunklematerie5",          "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {8,     "normal",   5,  "tutorial:dunklematerie6",      "tutorial:dunklematerie6",      "tutorial:dunklematerie6",      "tutorial:dunklematerie6",      "",     "tutorial:dunklematerie6",          "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {9,     "normal",   5,  "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "",     "tutorial:diamondblock2",           "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {10,    "normal",   5,  "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "",     "tutorial:diamondblock2",           "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {11,    "normal",   5,  "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "",     "tutorial:diamondblock2",           "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {12,    "normal",   5,  "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "tutorial:diamondblock2",       "",     "tutorial:diamondblock2",           "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {13,    "normal",   5,  "default:goldblock",            "default:goldblock",            "default:goldblock",            "default:goldblock",            "",     "default:goldblock",                "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {14,    "normal",   5,  "default:nyancat_rainbow",      "default:nyancat_rainbow",      "default:nyancat_rainbow",      "default:nyancat_rainbow",      "",     "default:nyancat_rainbow",          "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {15,    "normal",   5,  "default:nyancat_rainbow",      "default:nyancat_rainbow",      "default:nyancat_rainbow",      "default:nyancat_rainbow",      "",     "default:nyancat_rainbow",          "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {16,    "normal",   5,  "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "",     "tutorial:megablock1",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {17,    "normal",   5,  "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "",     "tutorial:megablock1",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {18,    "normal",   5,  "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "",     "tutorial:megablock1",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {19,    "normal",   5,  "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "",     "tutorial:megablock1",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {20,    "normal",   5,  "tutorial:megablock2",          "tutorial:megablock2",          "tutorial:megablock2",          "tutorial:megablock2",          "",     "tutorial:megablock2",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {21,    "normal",   2,  "tutorial:cloudentverner21",    "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {22,    "normal",   5,  "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "",     "tutorial:superblock5",             "tutorial:superblock5", "tutorial:superblock5", "tutorial:superblock5", 0},
        {23,    "normal",   5,  "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "",     "tutorial:superblock5",             "tutorial:superblock5", "tutorial:superblock5", "tutorial:superblock5", 0},
        {24,    "normal",   5,  "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "",     "tutorial:superblock5",             "tutorial:superblock5", "tutorial:superblock5", "tutorial:superblock5", 0},
        {25,    "normal",   5,  "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "tutorial:superblock5",         "",     "tutorial:superblock5",             "tutorial:superblock5", "tutorial:superblock5", "tutorial:superblock5", 0},
        {26,    "normal",   5,  "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "",     "tutorial:superblock6",             "tutorial:superblock6", "tutorial:superblock6", "tutorial:superblock6", 0},
        {27,    "normal",   5,  "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "",     "tutorial:superblock6",             "tutorial:superblock6", "tutorial:superblock6", "tutorial:superblock6", 0},
        {28,    "normal",   5,  "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "",     "tutorial:superblock6",             "tutorial:superblock6", "tutorial:superblock6", "tutorial:superblock6", 0},
        {29,    "normal",   5,  "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "",     "tutorial:superblock6",             "tutorial:superblock6", "tutorial:superblock6", "tutorial:superblock6", 0},
        {30,    "normal",   5,  "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "tutorial:superblock6",         "",     "tutorial:superblock6",             "tutorial:superblock6", "tutorial:superblock6", "tutorial:superblock6", 0},
        {31,    "normal",   5,  "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "",     "tutorial:superblock7",             "tutorial:superblock7", "tutorial:superblock7", "tutorial:superblock7", 0},
        {32,    "normal",   5,  "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "",     "tutorial:superblock7",             "tutorial:superblock7", "tutorial:superblock7", "tutorial:superblock7", 0},
        {33,    "normal",   5,  "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "",     "tutorial:superblock7",             "tutorial:superblock7", "tutorial:superblock7", "tutorial:superblock7", 0},
        {34,    "normal",   5,  "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "",     "tutorial:superblock7",             "tutorial:superblock7", "tutorial:superblock7", "tutorial:superblock7", 0},
        {35,    "normal",   5,  "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "tutorial:superblock7",         "",     "tutorial:superblock7",             "tutorial:superblock7", "tutorial:superblock7", "tutorial:superblock7", 0},
        {36,    "normal",   5,  "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "",     "tutorial:superblock8",             "tutorial:superblock8", "tutorial:superblock8", "tutorial:superblock8", 0},
        {37,    "normal",   5,  "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "",     "tutorial:superblock8",             "tutorial:superblock8", "tutorial:superblock8", "tutorial:superblock8", 0},
        {38,    "normal",   5,  "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "",     "tutorial:superblock8",             "tutorial:superblock8", "tutorial:superblock8", "tutorial:superblock8", 0},
        {39,    "normal",   5,  "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "",     "tutorial:superblock8",             "tutorial:superblock8", "tutorial:superblock8", "tutorial:superblock8", 0},
        {40,    "normal",   5,  "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "tutorial:superblock8",         "",     "tutorial:superblock8",             "tutorial:superblock8", "tutorial:superblock8", "tutorial:superblock8", 0},
        {41,    "normal",   5,  "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "",     "tutorial:superblock9",             "tutorial:superblock9", "tutorial:superblock9", "tutorial:superblock9", 0},
        {42,    "normal",   5,  "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "",     "tutorial:superblock9",             "tutorial:superblock9", "tutorial:superblock9", "tutorial:superblock9", 0},
        {43,    "normal",   5,  "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "",     "tutorial:superblock9",             "tutorial:superblock9", "tutorial:superblock9", "tutorial:superblock9", 0},
        {44,    "normal",   5,  "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "",     "tutorial:superblock9",             "tutorial:superblock9", "tutorial:superblock9", "tutorial:superblock9", 0},
        {45,    "normal",   5,  "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "tutorial:superblock9",         "",     "tutorial:superblock9",             "tutorial:superblock9", "tutorial:superblock9", "tutorial:superblock9", 0},
        {46,    "normal",   2,  "tutorial:zauberstab9",         "",                             "tutorial:swored_zauber9",      "",                             "",     "",                                 "",                     "",                     "",                     0},
        {47,    "normal",   5,  "tutorial:whiteblock5",         "tutorial:thunder",             "tutorial:blackblock5",         "tutorial:whiteblock5",         "",     "tutorial:blackblock5",             "tutorial:whiteblock5", "tutorial:thunder",     "tutorial:blackblock5", 0},
        {48,    "normal",   5,  "tutorial:whiteblock6",         "tutorial:thunder",             "tutorial:blackblock6",         "tutorial:whiteblock6",         "",     "tutorial:blackblock6",             "tutorial:whiteblock6", "tutorial:thunder",     "tutorial:blackblock6", 0},
        {49,    "normal",   5,  "tutorial:whiteblock6",         "tutorial:thunder",             "tutorial:blackblock6",         "tutorial:whiteblock6",         "",     "tutorial:blackblock6",             "tutorial:whiteblock6", "tutorial:thunder",     "tutorial:blackblock6", 0},
        {50,    "normal",   5,  "tutorial:uranium8",            "tutorial:uranium8",            "tutorial:uranium8",            "tutorial:uranium8",            "",     "tutorial:uranium8",                "tutorial:uranium8",    "tutorial:uranium8",    "tutorial:uranium8",    0},
        {51,    "normal",   5,  "tutorial:uranium9",            "tutorial:uranium9",            "tutorial:uranium9",            "tutorial:uranium9",            "",     "tutorial:uranium9",                "tutorial:uranium9",    "tutorial:uranium9",    "tutorial:uranium9",    0},
        {52,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     100},
        {53,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     100},
        {54,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     200},
        {55,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     300},
        {56,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     400},
        {57,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     500},
        {58,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     600},
        {59,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     700},
        {60,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     800},
        {61,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     900},
        {62,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1000},
        {63,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1500},
        {64,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1000},
        {65,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1200},
        {66,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1400},
        {67,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1600},
        {68,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1800},
        {69,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2000},
        {70,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2500},
        {71,    "normal",   5,  "gems:ruby_block",              "tutorial:thunder",             "gems:sapphire_block",          "gems:ruby_block",              "",     "gems:sapphire_block",              "gems:ruby_block",      "tutorial:thunder",     "gems:sapphire_block",  0},
        {72,    "normal",   5,  "gems:amethyst_block",          "tutorial:thunder",             "gems:amethyst_block",          "gems:amethyst_block",          "",     "gems:amethyst_block",              "gems:amethyst_block",  "tutorial:thunder",     "gems:amethyst_block",  0},
        {73,    "normal",   5,  "gems:pearl_block",             "tutorial:thunder",             "gems:shadow_block",            "gems:pearl_block",             "",     "gems:shadow_block",                "gems:pearl_block",     "tutorial:thunder",     "gems:shadow_block",    0},
        {74,    "normal",   5,  "gems:emerald_block",           "tutorial:thunder",             "gems:emerald_block",           "gems:emerald_block",           "",     "gems:emerald_block",               "gems:emerald_block",   "tutorial:thunder",     "gems:emerald_block",   0},
        {75,    "normal",   5,  "tutorial:admin",               "tutorial:thunder",             "tutorial:admin",               "tutorial:admin",               "",     "tutorial:admin",                   "tutorial:admin",       "tutorial:thunder",     "tutorial:admin",       0},
        {76,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     200},
        {77,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     400},
        {78,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     600},
        {79,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     800},
        {80,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1000},
        {81,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1200},
        {82,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1400},
        {83,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1600},
        {84,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1800},
        {85,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2000},
        {86,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2200},
        {87,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2400},
        {88,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2600},
        {89,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2800},
        {90,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3000},
        {91,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3200},
        {92,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3400},
        {93,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3600},
        {94,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3800},
        {95,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4000},
        {96,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4200},
        {97,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4400},
        {98,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4600},
        {99,    "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4800},
        {100,   "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     5000},
        {101,   "cooking",  1,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     10000},
        {102,   "normal",   5,  "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "",     "tutorial:arena_block",             "tutorial:arena_block", "tutorial:arena_block", "tutorial:arena_block", 0},
        {103,   "normal",   5,  "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "",     "tutorial:arena_block",             "tutorial:arena_block", "tutorial:arena_block", "tutorial:arena_block", 0},
        {104,   "normal",   5,  "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "",     "tutorial:arena_block",             "tutorial:arena_block", "tutorial:arena_block", "tutorial:arena_block", 0},
        {105,   "normal",   5,  "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "",     "tutorial:arena_block",             "tutorial:arena_block", "tutorial:arena_block", "tutorial:arena_block", 0},
        {106,   "normal",   5,  "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "",     "tutorial:titan",                   "tutorial:titan",       "tutorial:titan",       "tutorial:titan",       0},
        {107,   "normal",   5,  "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "",     "tutorial:titan",                   "tutorial:titan",       "tutorial:titan",       "tutorial:titan",       0},
        {108,   "normal",   5,  "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "",     "tutorial:titan",                   "tutorial:titan",       "tutorial:titan",       "tutorial:titan",       0},
        {109,   "normal",   5,  "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "",     "tutorial:titan",                   "tutorial:titan",       "tutorial:titan",       "tutorial:titan",       0},
        {110,   "normal",   5,  "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "",     "tutorial:titan",                   "tutorial:titan",       "tutorial:titan",       "tutorial:titan",       0},
        {111,   "normal",   5,  "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "",     "tutorial:titan",                   "tutorial:titan",       "tutorial:titan",       "tutorial:titan",       0},
        {112,   "normal",   5,  "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "",     "tutorial:titan",                   "tutorial:titan",       "tutorial:titan",       "tutorial:titan",       0},
        {113,   "normal",   5,  "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "",     "tutorial:titan",                   "tutorial:titan",       "tutorial:titan",       "tutorial:titan",       0},
        {114,   "normal",   5,  "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "",     "tutorial:titan",                   "tutorial:titan",       "tutorial:titan",       "tutorial:titan",       0},
        {115,   "normal",   5,  "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "tutorial:titan",               "",     "tutorial:titan",                   "tutorial:titan",       "tutorial:titan",       "tutorial:titan",       0},
        {116,   "normal",   1,  "tutorial:bottle5",             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {117,   "normal",   1,  "tutorial:bottle7",             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {118,   "normal",   1,  "tutorial:bottle9",             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {119,   "normal",   1,  "tutorial:bottle11",            "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {120,   "normal",   1,  "tutorial:bottleS1",            "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {121,   "normal",   1,  "tutorial:bottleS3",            "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {122,   "normal",   2,  "tutorial:lilabattleaxe2",      "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {123,   "normal",   0,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
    }
    player_inv:set_size("recr", 1)
    local re = player_inv:get_stack("recr", 1):get_count()
    player_inv:set_size("recr2", 1)
    local re2 = player_inv:get_stack("recr2", 1):get_count()
	formspec = "size[16,12.5]"
		.."button[0,0;2,0.5;zcg;Back]"
		.."button[2,0;2,0.5;main;Main]"
        .."background[16,12.5;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
        if re ~= 0 then
            local pr = ""
            if re2 == 0 then
                pr = "regnum:battleaxe_"
            elseif re2 == 1 then
                pr = "regnum:helmet_"
            elseif re2 == 2 then
                pr = "regnum:chestplate_"
            elseif re2 == 3 then
                pr = "regnum:leggings_"
            elseif re2 == 4 then
                pr = "regnum:boots_"
            elseif re2 == 5 then
                pr = "regnum:shield_"
            elseif re2 == 6 then
                pr = "regnum:gun_"
            end
            local can = 0
            if re2 == 6 and lv[re][1] > 101 then
                can = 1
            end
            if can ~= 1 then
                if lv[re][1] > 115 and lv[re][1] ~= 122 and lv[re][1] ~= 123 then
                    formspec = formspec 
                    .."item_image_button[5,0;1,1;"..pr..""..(lv[re][1]-1)..";;]"
                    .."item_image_button[6,0;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[7,0;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[8,0;1,1;"..lv[re][4]..";zcg:"..lv[re][4]..";]"
                    .."item_image_button[5,1;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[6,1;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[7,1;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[8,1;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[5,2;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[6,2;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[7,2;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[8,2;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[5,3;1,1;"..lv[re][4]..";zcg:"..lv[re][4]..";]"
                    .."item_image_button[6,3;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[7,3;1,1;default:grass_1;zcg:default:grass_1;]"
                    .."item_image_button[8,3;1,1;"..lv[re][4]..";zcg:"..lv[re][4]..";]"
                    .."item_image_button[11,1;1,1;"..pr..""..lv[re][1]..";;]"
                elseif lv[re][1] == 123 then
                    formspec = formspec 
                    .."item_image_button[7,0;1,1;tutorial:regnum;zcg:tutorial:regnum;]"
                    .."item_image_button[7,1;1,1;tutorial:bottleSS;zcg:tutorial:bottleSS;]"
                    .."item_image_button[5,2;1,1;tutorial:regnum;zcg:tutorial:regnum;]"
                    .."item_image_button[6,2;1,1;tutorial:bottleSS;zcg:tutorial:bottleSS;]"
                    .."item_image_button[7,2;1,1;"..pr..""..(lv[re][1]-1)..";;]"
                    .."item_image_button[8,2;1,1;tutorial:bottleSS;zcg:tutorial:bottleSS;]"
                    .."item_image_button[9,2;1,1;tutorial:regnum;zcg:tutorial:regnum;]"
                    .."item_image_button[7,3;1,1;tutorial:bottleSS;zcg:tutorial:bottleSS;]"
                    .."item_image_button[7,4;1,1;tutorial:regnum;zcg:tutorial:regnum;]"
                    .."item_image_button[11,1;1,1;"..pr..""..lv[re][1]..";;]"
                else
                    if lv[re][4] ~= "" or lv[re][3] == 1 then
                        if lv[re][3]  == 1 then
                            formspec = formspec .."item_image_button[5,0;1,1;"..pr..""..(lv[re][1]-1)..";fia;]"
                        else
                            formspec = formspec .."item_image_button[5,0;1,1;"..lv[re][4]..";zcg:"..lv[re][4]..";]"
                        end
                    end
                    if lv[re][5] ~= "" or lv[re][3] == 2 then
                        if lv[re][3]  == 2 then
                            formspec = formspec .."item_image_button[6,0;1,1;"..pr..""..(lv[re][1]-1)..";fib;]"
                        else
                            formspec = formspec .."item_image_button[6,0;1,1;"..lv[re][5]..";zcg:"..lv[re][5]..";]"
                        end
                    end
                    if lv[re][6] ~= "" or lv[re][3] == 3 then
                        if lv[re][3]  == 3 then
                            formspec = formspec .."item_image_button[7,0;1,1;"..pr..""..(lv[re][1]-1)..";fic;]"
                        else
                            formspec = formspec .."item_image_button[7,0;1,1;"..lv[re][6]..";zcg:"..lv[re][6]..";]"
                        end
                    end
                    if lv[re][7] ~= "" or lv[re][3] == 4 then
                        if lv[re][3]  == 4 then
                            formspec = formspec .."item_image_button[5,1;1,1;"..pr..""..(lv[re][1]-1)..";fid;]"
                        else
                            formspec = formspec .."item_image_button[5,1;1,1;"..lv[re][7]..";zcg:"..lv[re][7]..";]"
                        end
                    end
                    if lv[re][8] ~= "" or lv[re][3] == 5 then
                        if lv[re][3]  == 5 then
                            formspec = formspec .."item_image_button[6,1;1,1;"..pr..""..(lv[re][1]-1)..";fie;]"
                        else
                            formspec = formspec .."item_image_button[6,1;1,1;"..lv[re][8]..";zcg:"..lv[re][8]..";]"
                        end
                    end
                    if lv[re][9] ~= "" or lv[re][3] == 6 then
                        if lv[re][3]  == 6 then
                            formspec = formspec .."item_image_button[7,1;1,1;"..pr..""..(lv[re][1]-1)..";fif;]"
                        else
                            formspec = formspec .."item_image_button[7,1;1,1;"..lv[re][9]..";zcg:"..lv[re][9]..";]"
                        end
                    end
                    if lv[re][10] ~= "" or lv[re][3] == 7 then
                        if lv[re][3]  == 7 then
                            formspec = formspec .."item_image_button[5,2;1,1;"..pr..""..(lv[re][1]-1)..";fig;]"
                        else
                            formspec = formspec .."item_image_button[5,2;1,1;"..lv[re][10]..";zcg:"..lv[re][10]..";]"
                        end
                    end
                    if lv[re][11] ~= "" or lv[re][3] == 8 then
                        if lv[re][3]  == 8 then
                            formspec = formspec .."item_image_button[6,2;1,1;"..pr..""..(lv[re][1]-1)..";fih;]"
                        else
                            formspec = formspec .."item_image_button[6,2;1,1;"..lv[re][11]..";zcg:"..lv[re][11]..";]"
                        end
                    end
                    if lv[re][12] ~= "" or lv[re][3] == 9 then
                        if lv[re][3]  == 9 then
                            formspec = formspec .."item_image_button[7,2;1,1;"..pr..""..(lv[re][1]-1)..";fii;]"
                        else
                            formspec = formspec .."item_image_button[7,2;1,1;"..lv[re][12]..";zcg:"..lv[re][12]..";]"
                        end
                    end
                    formspec = formspec .."item_image_button[11,1;1,1;"..pr..""..lv[re][1]..";;]"
                end
                formspec = formspec .."image[10,2;1,1;zcg_method_"..lv[re][2]..".png]"
                .."image[10,1;1,1;zcg_craft_arrow.png]"
                if lv[re][13] ~= 0 then
                    formspec = formspec .."label[10.1.4,2.7i;"..lv[re][13].."s]"
                end
                
            end
        end
        formspec = formspec
        .."item_image_button[0,1;1,1;regnum:battleaxe_0;reg1;]"
        .."item_image_button[1,1;1,1;regnum:helmet_0;reg2;]"
        .."item_image_button[2,1;1,1;regnum:chestplate_0;reg3;]"
        .."item_image_button[0,2;1,1;regnum:leggings_0;reg4;]"
        .."item_image_button[1,2;1,1;regnum:boots_0;reg5;]"
        .."item_image_button[2,2;1,1;regnum:shield_0;reg6;]"
        .."item_image_button[0,3;1,1;regnum:gun_0;reg7;]"
        .."button[0,5;1,1;recrafta;1]"
        .."button[1,5;1,1;recraftb;2]"
        .."button[2,5;1,1;recraftc;3]"
        .."button[3,5;1,1;recraftd;4]"
        .."button[4,5;1,1;recrafte;5]"
        .."button[5,5;1,1;recraftf;6]"
        .."button[6,5;1,1;recraftg;7]"
        .."button[7,5;1,1;recrafth;8]"
        .."button[8,5;1,1;recrafti;9]"
        .."button[9,5;1,1;recraftj;10]"
        .."button[10,5;1,1;recraftk;11]"
        .."button[11,5;1,1;recraftl;12]"
        .."button[12,5;1,1;recraftm;13]"
        .."button[13,5;1,1;recraftn;14]"
        .."button[14,5;1,1;recrafto;15]"
        .."button[15,5;1,1;recraftp;16]"
        .."button[0,6;1,1;recraftq;17]"
        .."button[1,6;1,1;recraftr;18]"
        .."button[2,6;1,1;recrafts;19]"
        .."button[3,6;1,1;recraftt;20]"
        .."button[4,6;1,1;recraftaa;21]"
        .."button[5,6;1,1;recraftab;22]"
        .."button[6,6;1,1;recraftac;23]"
        .."button[7,6;1,1;recraftad;24]"
        .."button[8,6;1,1;recraftae;25]"
        .."button[9,6;1,1;recraftaf;26]"
        .."button[10,6;1,1;recraftag;27]"
        .."button[11,6;1,1;recraftah;28]"
        .."button[12,6;1,1;recraftai;29]"
        .."button[13,6;1,1;recraftaj;30]"
        .."button[14,6;1,1;recraftak;31]"
        .."button[15,6;1,1;recraftal;32]"
        .."button[0,7;1,1;recraftam;33]"
        .."button[1,7;1,1;recraftan;34]"
        .."button[2,7;1,1;recraftao;35]"
        .."button[3,7;1,1;recraftap;36]"
        .."button[4,7;1,1;recraftaq;37]"
        .."button[5,7;1,1;recraftar;38]"
        .."button[6,7;1,1;recraftas;39]"
        .."button[7,7;1,1;recraftat;40]"
        .."button[8,7;1,1;recraftau;41]"
        .."button[9,7;1,1;recraftav;42]"
        .."button[10,7;1,1;recraftaw;43]"
        .."button[11,7;1,1;recraftax;44]"
        .."button[12,7;1,1;recraftay;45]"
        .."button[13,7;1,1;recraftba;46]"
        .."button[14,7;1,1;recraftbb;47]"
        .."button[15,7;1,1;recraftbc;48]"
        .."button[0,8;1,1;recraftbd;49]"
        .."button[1,8;1,1;recraftca;50]"
        .."button[2,8;1,1;recraftcb;51]"
        .."button[3,8;1,1;recraftda;52]"
        .."button[4,8;1,1;recraftdb;53]"
        .."button[5,8;1,1;recraftdc;54]"
        .."button[6,8;1,1;recraftdd;55]"
        .."button[7,8;1,1;recraftde;56]"
        .."button[8,8;1,1;recraftdf;57]"
        .."button[9,8;1,1;recraftdg;58]"
        .."button[10,8;1,1;recraftdh;59]"
        .."button[11,8;1,1;recraftdi;60]"
        .."button[12,8;1,1;recraftdj;61]"
        .."button[13,8;1,1;recraftdk;62]"
        .."button[14,8;1,1;recraftdl;63]"
        .."button[15,8;1,1;recraftea;64]"
        .."button[0,9;1,1;recrafteb;65]"
        .."button[1,9;1,1;recraftec;66]"
        .."button[2,9;1,1;recrafted;67]"
        .."button[3,9;1,1;recraftee;68]"
        .."button[4,9;1,1;recraftef;69]"
        .."button[5,9;1,1;recrafteg;70]"
        .."button[6,9;1,1;recraftfa;71]"
        .."button[7,9;1,1;recraftfb;72]"
        .."button[8,9;1,1;recraftfc;73]"
        .."button[9,9;1,1;recraftfd;74]"
        .."button[10,9;1,1;recraftfe;75]"
        .."button[11,9;1,1;recraftga;76]"
        .."button[12,9;1,1;recraftgb;77]"
        .."button[13,9;1,1;recraftgc;78]"
        .."button[14,9;1,1;recraftgd;79]"
        .."button[15,9;1,1;recraftge;80]"
        .."button[0,10;1,1;recraftgf;81]"
        .."button[1,10;1,1;recraftgg;82]"
        .."button[2,10;1,1;recraftgh;83]"
        .."button[3,10;1,1;recraftgi;84]"
        .."button[4,10;1,1;recraftgj;85]"
        .."button[5,10;1,1;recraftgk;86]"
        .."button[6,10;1,1;recraftgl;87]"
        .."button[7,10;1,1;recraftgm;88]"
        .."button[8,10;1,1;recraftgn;89]"
        .."button[9,10;1,1;recraftgo;90]"
        .."button[10,10;1,1;recraftgp;91]"
        .."button[11,10;1,1;recraftgq;92]"
        .."button[12,10;1,1;recraftgr;93]"
        .."button[13,10;1,1;recraftgs;94]"
        .."button[14,10;1,1;recraftgt;95]"
        .."button[15,10;1,1;recraftgu;96]"
        .."button[0,11;1,1;recraftgv;97]"
        .."button[1,11;1,1;recraftgw;98]"
        .."button[2,11;1,1;recraftgx;99]"
        .."button[3,11;1,1;recraftgy;100]"
        .."button[4,11;1,1;recraftha;101]"
        if re2 ~= 6 then
            formspec = formspec
            .."button[5,11;1,1;recraftia;102]"
            .."button[6,11;1,1;recraftib;103]"
            .."button[7,11;1,1;recraftic;104]"
            .."button[8,11;1,1;recraftid;105]"
            .."button[9,11;1,1;recraftja;106]"
            .."button[10,11;1,1;recraftjb;107]"
            .."button[11,11;1,1;recraftjc;108]"
            .."button[12,11;1,1;recraftjd;109]"
            .."button[13,11;1,1;recraftje;110]"
            .."button[14,11;1,1;recraftjf;111]"
            .."button[15,11;1,1;recraftjg;112]"
            .."button[0,12;1,1;recraftjh;113]"
            .."button[1,12;1,1;recraftji;114]"
            .."button[2,12;1,1;recraftjj;115]"
            .."button[3,12;1,1;recraftka;116]"
            .."button[4,12;1,1;recraftkb;117]"
            .."button[5,12;1,1;recraftkc;118]"
            .."button[6,12;1,1;recraftkd;119]"
            .."button[7,12;1,1;recraftke;120]"
            .."button[8,12;1,1;recraftkf;121]"
            .."button[9,12;1,1;recraftla;122]"
            .."button[10,12;1,1;recraftma;MAX]"
        end
	return formspec
end
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    if fields.artifacts then
		inventory_plus.set_inventory_formspec(player, artifacts.get_formspec(player))
	end
    if fields.crafting6 then
		inventory_plus.set_inventory_formspec(player, crafting6.get_formspec(player))
	end
    if fields.crafting7 then
		inventory_plus.set_inventory_formspec(player, crafting7.get_formspec(player))
	end
    if fields.crafting8 then
		inventory_plus.set_inventory_formspec(player, crafting8.get_formspec(player))
	end
    if fields.meda1 then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medallion", 1)
        player_inv:set_stack("medallion", 1, "default:dirt")
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.meda2 then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medallion", 1)
        player_inv:set_stack("medallion", 1, "default:dirt 2")
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.meda3 then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medallion", 1)
        player_inv:set_stack("medallion", 1, "default:dirt 3")
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.meda4 then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medallion", 1)
        player_inv:set_stack("medallion", 1, "default:dirt 4")
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.meda5 then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medallion", 1)
        player_inv:set_stack("medallion", 1, "default:dirt 5")
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.meda6 then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medallion", 1)
        player_inv:set_stack("medallion", 1, "default:dirt 6")
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.meda7 then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medallion", 1)
        player_inv:set_stack("medallion", 1, "default:dirt 7")
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.mecraft then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medall", 1)
        local medall = player_inv:get_stack("medall", 1):get_count()
        local medall2 = player_inv:get_stack("medall", 1):get_name()
        if medall > 0 and medall2 == "tutorial:medallion" then
            player_inv:set_size("medall", 1)
            local med = player_inv:get_stack("medallion", 1):get_count()
            local x = ""
            if med == 1 then
                x = "red"
            elseif med == 2 then
                x = "blue"
            elseif med == 3 then
                x = "green"
            elseif med == 4 then
                x = "yellow"
            elseif med == 5 then
                x = "purple"
            elseif med == 6 then
                x = "cyan"
            elseif med == 7 then
                x = "gray"
            end
            local z = math.random(1,2)
            if z == 2 then
                local zz = math.random(1,9)
                player_inv:set_size("medallion"..x, 9)
                player_inv:set_stack("medallion"..x, zz, "default:dirt")
            end
            player_inv:remove_item("medall", "tutorial:medallion")
        end
		inventory_plus.set_inventory_formspec(player, meda.get_formspec(player))
	end
    if fields.rg21 then
		inventory_plus.set_inventory_formspec(player, rg21.get_formspec(player))
	end
    if fields.rg22 then
		inventory_plus.set_inventory_formspec(player, rg22.get_formspec(player))
	end
    if fields.medallion then
		inventory_plus.set_inventory_formspec(player, medallion.get_formspec(player))
	end
    if fields.artrew then
		if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("artrew", 1)
        local artrew = player_inv:get_stack("artrew", 1):get_count()
        if artrew == 0 then
            if player_inv:room_for_item("main", "tutorial:knight_schluessel") == true then
                player_inv:add_item("main", "tutorial:knight_schluessel")
                player_inv:add_item("artrew", "default:dirt")
            end
        end
	end
    if fields.medrew then
		if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("medrew", 1)
        local medrew = player_inv:get_stack("medrew", 1):get_count()
        if medrew == 0 then
            if player_inv:room_for_item("main", "tutorial:crystal_schluessel") == true then
                player_inv:add_item("main", "tutorial:crystal_schluessel")
                player_inv:add_item("medrew", "default:dirt")
            end
        end
	end
    if fields.craftmine then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("mine1", 1)
        player_inv:set_size("mine2", 8)
        local gem = player_inv:get_stack("gem0", 1):get_count()
	    local g1 = player_inv:get_stack("mine2", 1):get_name()
        local g2 = player_inv:get_stack("mine2", 2):get_name()
        local g3 = player_inv:get_stack("mine2", 3):get_name()
        local g4 = player_inv:get_stack("mine2", 4):get_name()
        local g5 = player_inv:get_stack("mine2", 5):get_name()
        local g6 = player_inv:get_stack("mine2", 6):get_name()
        local g7 = player_inv:get_stack("mine2", 7):get_name()
        local g8 = player_inv:get_stack("mine2", 8):get_name()
        local y1 = player_inv:get_stack("mine2", 1):get_count()
		local y2 = player_inv:get_stack("mine2", 2):get_count()
		local y3 = player_inv:get_stack("mine2", 3):get_count()
		local y4 = player_inv:get_stack("mine2", 4):get_count()
		local y5 = player_inv:get_stack("mine2", 5):get_count()
		local y6 = player_inv:get_stack("mine2", 6):get_count()
		local y7 = player_inv:get_stack("mine2", 7):get_count()
		local y8 = player_inv:get_stack("mine2", 8):get_count()
        local k = 0
        local d = 0
        if g1 == g2 and g2 == g3 and g3 == g4 and g4 == g5 and g5 == g6 and g6 == g7 and g7 == g8 then
            if g1 == "tutorial:coin" then
                k = k+1
            end
            if g1 == "tutorial:coin2" then
                k = k+2
            end
        end
        if k == 1 then
            for i = 1, 149 do
                if player_inv:get_stack("mine1", 1):get_name() == "technic:laser_mkS"..i and player_inv:room_for_item("main", "technic:laser_mkS"..(i+1)) == true then
                    player_inv:add_item("main", "technic:laser_mkS"..(i+1))
                    player_inv:set_stack("mine2", 1, "tutorial:coin "..(y1-1))
                    player_inv:set_stack("mine2", 2, "tutorial:coin "..(y2-1))
                    player_inv:set_stack("mine2", 3, "tutorial:coin "..(y3-1))
                    player_inv:set_stack("mine2", 4, "tutorial:coin "..(y4-1))
                    player_inv:set_stack("mine2", 5, "tutorial:coin "..(y5-1))
                    player_inv:set_stack("mine2", 6, "tutorial:coin "..(y6-1))
                    player_inv:set_stack("mine2", 7, "tutorial:coin "..(y7-1))
                    player_inv:set_stack("mine2", 8, "tutorial:coin "..(y8-1))
                    player_inv:set_stack("mine1", 1, "")
                end
            end
        end
        if k == 2 then
            for i = 1, 149 do
                local m = player_inv:get_stack("mine1", 1):get_name()
                if m == "technic:drill_mkS"..i.."_1" or m == "technic:drill_mkS"..i.."_2" or m == "technic:drill_mkS"..i.."_3" or m == "technic:drill_mkS"..i.."_4" or m == "technic:drill_mkS"..i.."_5" or m == "technic:drill_mkS"..i.."" then
                    if player_inv:room_for_item("main", "technic:drill_mkS"..(i+1)) == true then
                        player_inv:add_item("main", "technic:drill_mkS"..(i+1))
                        player_inv:set_stack("mine2", 1, "tutorial:coin2 "..(y1-1))
                        player_inv:set_stack("mine2", 2, "tutorial:coin2 "..(y2-1))
                        player_inv:set_stack("mine2", 3, "tutorial:coin2 "..(y3-1))
                        player_inv:set_stack("mine2", 4, "tutorial:coin2 "..(y4-1))
                        player_inv:set_stack("mine2", 5, "tutorial:coin2 "..(y5-1))
                        player_inv:set_stack("mine2", 6, "tutorial:coin2 "..(y6-1))
                        player_inv:set_stack("mine2", 7, "tutorial:coin2 "..(y7-1))
                        player_inv:set_stack("mine2", 8, "tutorial:coin2 "..(y8-1))
                        player_inv:set_stack("mine1", 1, "")
                    end
                end
            end
        end
		inventory_plus.set_inventory_formspec(player, mine.get_formspec(player))
	end
    if fields.xpi4 then
		inventory_plus.set_inventory_formspec(player, xpi4.get_formspec(player))
	end
    if fields.mine then
		inventory_plus.set_inventory_formspec(player, mine.get_formspec(player))
	end
	if fields.recraft then
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.reg1 then
        player_inv:set_size("recr2", 1)
        player_inv:set_stack("recr2", 1, "")
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.reg2 then
        player_inv:set_size("recr2", 1)
        player_inv:set_stack("recr2", 1, "default:dirt "..1)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.reg3 then
        player_inv:set_size("recr2", 2)
        player_inv:set_stack("recr2", 1, "default:dirt "..2)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.reg4 then
        player_inv:set_size("recr2", 2)
        player_inv:set_stack("recr2", 1, "default:dirt "..3)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.reg5 then
        player_inv:set_size("recr2", 2)
        player_inv:set_stack("recr2", 1, "default:dirt "..4)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.reg6 then
        player_inv:set_size("recr2", 2)
        player_inv:set_stack("recr2", 1, "default:dirt "..5)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.reg7 then
        player_inv:set_size("recr2", 2)
        player_inv:set_stack("recr2", 1, "default:dirt "..6)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafta then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..1)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..2)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftc then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..3)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftd then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..4)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafte then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..5)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftf then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..6)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftg then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..7)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafth then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..8)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafti then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..9)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftj then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..10)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftk then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..11)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftl then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..12)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftm then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..13)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftn then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..14)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafto then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..15)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftp then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..16)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftq then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..17)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftr then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..18)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafts then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..19)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftt then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..20)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftaa then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..21)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftab then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..22)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftac then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..23)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftad then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..24)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftae then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..25)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftaf then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..26)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftag then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..27)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftah then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..28)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftai then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..29)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftaj then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..30)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftak then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..31)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftal then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..32)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftam then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..33)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftan then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..34)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftao then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..35)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftap then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..36)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftaq then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..37)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftar then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..38)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftas then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..39)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftat then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..40)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftau then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..41)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftav then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..42)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftaw then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..43)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftax then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..44)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftay then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..45)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftba then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..46)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftbb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..47)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftbc then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..48)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftbd then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..49)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftca then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..50)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftcb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..51)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftda then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..52)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..53)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdc then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..54)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdd then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..55)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftde then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..56)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdf then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..57)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdg then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..58)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdh then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..59)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdi then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..60)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdj then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..61)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdk then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..62)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftdl then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..63)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftea then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..64)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafteb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..65)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftec then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..66)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafted then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..67)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftee then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..68)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftef then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..69)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recrafteg then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..70)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftfa then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..71)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftfb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..72)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftfc then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..73)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftfd then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..74)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftfe then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..75)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftga then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..76)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..77)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgc then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..78)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgd then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..79)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftge then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..80)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgf then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..81)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgg then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..82)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgh then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..83)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgi then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..84)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgj then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..85)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgk then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..86)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgl then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..87)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgm then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..88)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgn then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..89)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgo then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..90)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgp then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..91)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgq then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..92)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgr then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..93)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgs then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..94)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgt then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..95)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgu then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..96)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgv then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..97)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgw then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..98)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgx then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..99)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftgy then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..100)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftha then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..101)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftia then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..102)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftib then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..103)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftic then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..104)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftid then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..105)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftja then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..106)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftjb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..107)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftjc then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..108)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftjd then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..109)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftje then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..110)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftjf then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..111)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftjg then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..112)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftjh then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..113)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftji then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..114)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftjj then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..115)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftka then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..116)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftkb then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..117)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftkc then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..118)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftkd then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..119)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftke then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..120)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftkf then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..121)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftla then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..122)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
    if fields.recraftma then
        player_inv:set_size("recr", 1)
        player_inv:set_stack("recr", 1, "default:dirt "..123)
		inventory_plus.set_inventory_formspec(player, recraft.get_formspec(player))
	end
end)
minetest.register_craft({
    output = 'tutorial:adminbattleaxe',
    recipe = {
        {'tutorial:adminbattleaxe3'},
    }
})
minetest.register_tool("tutorial:adminbattleaxe3", {
	description = "Admin tool 3: Admin battleaxe Mode 3. Only for hunting mobs",
	inventory_image = "tutorial_adminbattleaxe.png^technic_tool_mode3.png",
    wield_image = "tutorial_adminbattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=4000}
	},
	liquids_pointable = false,
})
minetest.register_tool("tutorial:superlegendenbattleaxe3", {
	description = "Superlegendbattleaxe Mode 3. Only for hunting mobs\nBattleaxe-lv.122",
	inventory_image = "tutorial_superlegendenbattleaxe.png^technic_tool_mode3.png",
    wield_image = "tutorial_superlegendenbattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=244}
	},
	liquids_pointable = false,
})
minetest.register_craft({
    output = 'tutorial:superlegendenbattleaxe1',
    recipe = {
        {'tutorial:superlegendenbattleaxe3'},
    }
})
minetest.register_craft({
    output = 'tutorial:regnumbattleaxe1',
    recipe = {
        {'tutorial:regnumbattleaxe3'},
    }
})
minetest.register_tool("tutorial:regnumbattleaxe3", {
	description = "Regnumbattleaxe Mode 3. Only for hunting mobs\nBattleaxe-lv.MAX",
	inventory_image = "tutorial_regnumbattleaxe.png^technic_tool_mode3.png",
    wield_image = "tutorial_regnumbattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.0,
		max_drop_level=1,
		groupcaps={
		},
		damage_groups = {fleshy=2000}
	},
	liquids_pointable = false,
})
minetest.register_craft({
    output = 'tutorial:bottleSS',
    recipe = {
        {'', 'tutorial:admin', ''},
        {'tutorial:admin', 'tutorial:bottleS3', 'tutorial:admin'},
        {'', 'tutorial:admin', ''},
    }
})
minetest.register_node("tutorial:bottleSS", {
	description = "Ultra magic bottle",
	drawtype = "plantlike",
	tiles = {"tutorial_bottleSS.png"},
	wield_image = "tutorial_bottleSS.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1},
})