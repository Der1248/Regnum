--[[

Inventory Plus+ for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Copyright (c) 2013 Zeg9 <dazeg9@gmail.com>
Source Code: https://github.com/Zeg9/minetest-inventory_plus
License: GPLv3

]]--

--[[
TODO:
 * Include a few button textures, especially for "abandoned" mods
   -> Done: bags
   -> Todo: home GUI, mobf settings (if it still exists),...
 * Limit the number of buttons displayed, and then:
 * Multiple button pages (inventory can only display 9 buttons, and creative 6)
 * Fallback to text if no image is present ?
]]--


local inven = {}
inven.get_formspec = function(player, pos)
	local player_inv = player:get_inventory()

	formspec = "size[10,8.3]"
        .."background[10,8.3;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."button[4,0;2,0.5;main;Back]"
		.."button[0,2;2,0.5;xp_gui;Xp Guide]"
		.."button[0,1;2,0.5;zcg;Craft Guide]"
        .."button[0,0;2,0.5;rg;Regnum Guide]"
		.."button[8,0;2,0.5;ach;Achievements]"
        .."button[8,1;2,0.5;aw;Awards]"
		.."button[4,4;2,0.5;bags;Bags]"
		.."button[6,4;2,0.5;armor;Armor]"
		.."button[3,2;2,0.5;cr;Crafting]"
        .."button[5,2;2,0.5;set;Music]"
		.."button[2,4;2,0.5;skins;Skins]"
		.."button[2,5.5;2,0.5;kri;Crystals]"
        .."button[4,5.5;2,0.5;xpi0;Xp Items]"
        .."button[6,5.5;2,0.5;gem;Gems]"
        .."button[0,7;2,0.5;artifacts;Artifacts]"
        .."button[2,7;2,0.5;medallion;Medallion]"
        .."button[4,7;2,0.5;treasures;Treasures]"
        .."button[6,7;2,0.5;trophys;Trophys]"
        .."button[8,7;2,0.5;colreward;Reward]"
        .."label[0.65,2.6;Help]"
        .."label[8.6,1.6;Quests]"
        .."label[4.5,4.6;Equipment]"
        .."label[4.6,6.1;Spezial]"
        .."label[4.6,6.1;Spezial]"
        .."label[4.45,7.6;Color Items]"
	    return formspec
end
minetest.register_on_joinplayer(function(player)
		inventory_plus.register_button(player,"inven","Inventory")
end)
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if fields.inven then
		inventory_plus.set_inventory_formspec(player, inven.get_formspec(player))
	end
end)








-- expose api
inventory_plus = {}

-- tell that we are inventory++, not inventory_plus
-- ...so mods know if they can use our functions like remove_button
inventory_plus.plusplus = true

-- define buttons
inventory_plus.buttons = {}

-- default inventory page
inventory_plus.default = minetest.settings:get("inventory_default") or "main"

-- original inventory formspec, per player
inventory_plus.inventory = {}

-- register_button
inventory_plus.register_button = function(player,name,...)
	local player_name = player:get_player_name()
	if inventory_plus.buttons[player_name] == nil then
		inventory_plus.buttons[player_name] = {}
	end
	for _, i in ipairs(inventory_plus.buttons[player_name]) do
		if i == name then return end -- only register buttons once
	end
	table.insert(inventory_plus.buttons[player_name], name)
end

inventory_plus.remove_button = function(player,name)
	local player_name = player:get_player_name()
	if inventory_plus.buttons[player_name] == nil then
		inventory_plus.buttons[player_name] = {}
	end
	local index = nil
	for i, n in ipairs(inventory_plus.buttons[player_name]) do
		if n == name then
			index = i
		end
	end
	table.remove(inventory_plus.buttons[player_name], index)
end

-- set_inventory_formspec
inventory_plus.set_inventory_formspec = function(player,formspec)
	minetest.after(0.05,function()
		player:set_inventory_formspec(formspec)
	end)
end

-- get_formspec
inventory_plus.get_formspec = function(player,page)
	local get_buttons = function(ox,oy,mx) -- origin x, origin y, max x
		if not inventory_plus.buttons[player:get_player_name()] then
			return ""
		end
		local formspec = ""
		local x,y=ox,oy
		for _, i in ipairs(inventory_plus.buttons[player:get_player_name()]) do
			--formspec = formspec --.. "image_button[0,0;1.6,1.6;inventory_plus_inven.png;inven;]"
			x=x+1
			if x >= ox+mx then
				y = y+1
				x = ox
			end
		end
    --formspec = formspec .. "label[0.3,1.5;selection]"
		return formspec
	end
	-- craft page
	if page=="main" or page==""then
		local pri = minetest.get_player_privs(player:get_player_name())
		if minetest.is_creative_enabled(player:get_player_name()) or pri.creative then
			sfinv.set_player_inventory_formspec(player)
			return player:get_inventory_formspec()
				--.. get_buttons(6,0,2)
		else
			return inventory_plus.inventory[player:get_player_name()]
				--.. get_buttons(0,0,3)
		end
	end
end

-- register_on_joinplayer
minetest.register_on_joinplayer(function(player)
	if inventory_plus.inventory[player:get_player_name()] == nil then
		inventory_plus.inventory[player:get_player_name()] = player:get_inventory_formspec()
	end
	minetest.after(1,function()
		inventory_plus.set_inventory_formspec(player,inventory_plus.get_formspec(player, inventory_plus.default))
	end)
end)

-- register_on_player_receive_fields
minetest.register_on_player_receive_fields(function(player, formname, fields)
	-- main
	if fields.main then
		local pri = minetest.get_player_privs(player:get_player_name())
		if minetest.is_creative_enabled(player:get_player_name()) or pri.creative then
			minetest.after(0.01,function()
				inventory_plus.set_inventory_formspec(player, inventory_plus.get_formspec(player,"main"))
			end)
		else
			inventory_plus.set_inventory_formspec(player, inventory_plus.get_formspec(player,"main"))
		end
		return
	end
	if fields.creative_prev or fields.creative_next then
		minetest.after(0.01,function()
			inventory_plus.set_inventory_formspec(player, inventory_plus.get_formspec(player,"main"))
		end)
		return
	end
end)

-- log that we started
minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- loaded from "..minetest.get_modpath(minetest.get_current_modname()))
