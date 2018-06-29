--[[

Bags for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-particles
License: GPLv3

]]--


-- get_formspec
local get_formspec = function(player,page)
	if page=="bags" then
		local player_inv = player:get_inventory()
		player_inv:set_size("b", 1)
		local type = player:get_inventory():get_stack("b",1):get_name()
		if type == "tutorial:bag_schluessel1" then
			ba5 = "bag5"
			ba6 = "bags"
			ba7 = "bags"
			ba8 = "bags"
		elseif type == "tutorial:bag_schluessel2" then
		    ba5 = "bag5"
			ba6 = "bag6"
			ba7 = "bags"
			ba8 = "bags"
		elseif type == "tutorial:bag_schluessel3" then
		    ba5 = "bag5"
			ba6 = "bag6"
			ba7 = "bag7"
			ba8 = "bags"
		elseif type == "tutorial:bag_schluessel4" then
		    ba5 = "bag5"
			ba6 = "bag6"
			ba7 = "bag7"
			ba8 = "bag8"
		else
			ba5 = "bags"
			ba6 = "bags"
			ba7 = "bags"
			ba8 = "bags"
		end
		return "size[12.5,11.3]"
			.."list[current_player;main;2,7.5;8,4;]"
			.."button[0,0;2,0.5;inven;Back]"
			.."button[2,0;2,0.5;main;Main]"
			.."button[2,2;2,0.5;bag1;Bag 1]"
			.."button[4,2;2,0.5;bag2;Bag 2]"
			.."button[6,2;2,0.5;bag3;Bag 3]"
			.."button[8,2;2,0.5;bag4;Bag 4]"
			.."button[2,5;2,0.5;"..ba5..";Bag 5]"
			.."button[4,5;2,0.5;"..ba6..";Bag 6]"
			.."button[6,5;2,0.5;"..ba7..";Bag 7]"
			.."button[8,5;2,0.5;"..ba8..";Bag 8]"
			.."list[detached:"..player:get_player_name().."_bags;bag1;2.5,1;1,1;]"
			.."list[detached:"..player:get_player_name().."_bags;bag2;4.5,1;1,1;]"
			.."list[detached:"..player:get_player_name().."_bags;bag3;6.5,1;1,1;]"
			.."list[detached:"..player:get_player_name().."_bags;bag4;8.5,1;1,1;]"
			.."list[detached:"..player:get_player_name().."_bags;bag5;2.5,4;1,1;]"
			.."list[detached:"..player:get_player_name().."_bags;bag6;4.5,4;1,1;]"
			.."list[detached:"..player:get_player_name().."_bags;bag7;6.5,4;1,1;]"
			.."list[detached:"..player:get_player_name().."_bags;bag8;8.5,4;1,1;]"
			.."list[current_player;b;0.5,4;1,1;]"
			.."label[0.5,4.8;Bagkey]"
	end
	for i=1,8 do
		if page=="bag"..i then
			local image = player:get_inventory():get_stack("bag"..i, 1):get_definition().inventory_image
			return "size[8,11.25]"
				.."list[current_player;main;0,7.5;8,4;]"
				.."button[0,0;2,0.75;bags;Back]"
				.."button[2,0;2,0.75;main;Main]"
				.."image[7,0;1,1;"..image.."]"
				.."list[current_player;bag"..i.."contents;0,1;8,8;]"
				.."listring[current_player;bag"..i.."contents]" 
				.."listring[current_player;main]"
		end
	end
end


-- register_on_player_receive_fields
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if fields.bags then
		inventory_plus.set_inventory_formspec(player, get_formspec(player,"bags"))
		return
	end
	for i=1,8 do
		local page = "bag"..i
		if fields[page] then
			if player:get_inventory():get_stack(page, 1):get_definition().groups.bagslots==nil then
				page = "bags"
			end
			inventory_plus.set_inventory_formspec(player, get_formspec(player,page))
			return
		end
	end
end)

-- register_on_joinplayer
minetest.register_on_joinplayer(function(player)
	local player_inv = player:get_inventory()
	local bags_inv = minetest.create_detached_inventory(player:get_player_name().."_bags",{
		on_put = function(inv, listname, index, stack, player)
			player:get_inventory():set_stack(listname, index, stack)
			player:get_inventory():set_size(listname.."contents", stack:get_definition().groups.bagslots)
		end,
		on_take = function(inv, listname, index, stack, player)
			player:get_inventory():set_stack(listname, index, nil)
		end,
		allow_put = function(inv, listname, index, stack, player)
			if stack:get_definition().groups.bagslots then
				return 1
			else
				return 0
			end
		end,
		allow_take = function(inv, listname, index, stack, player)
			if player:get_inventory():is_empty(listname.."contents")==true then
				return stack:get_count()
			else
				return 0
			end
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
	for i=1,8 do
		local bag = "bag"..i
		player_inv:set_size(bag, 1)
		bags_inv:set_size(bag, 1)
		bags_inv:set_stack(bag,1,player_inv:get_stack(bag,1))
	end
end)

-- register bag tools
minetest.register_tool("bags:small", {
	description = "Small Bag",
	inventory_image = "bags_small.png",
	groups = {bagslots=8},
})
minetest.register_tool("bags:medium", {
	description = "Medium Bag",
	inventory_image = "bags_medium.png",
	groups = {bagslots=16},
})
minetest.register_tool("bags:large", {
	description = "Large Bag",
	inventory_image = "bags_large.png",
	groups = {bagslots=24},
})

minetest.register_tool("bags:trolley", {
	description = "Trolley",
	inventory_image = "bags_trolley.png",
	groups = {bagslots=32},
})

minetest.register_tool("bags:small_admin", {
	description = "Small Bag Regnum",
	inventory_image = "bags_small_admin.png",
	groups = {bagslots=36},
})

minetest.register_tool("bags:medium_admin", {
	description = "Medium Bag Regnum",
	inventory_image = "bags_medium_admin.png",
	groups = {bagslots=40},
})

minetest.register_tool("bags:large_admin", {
	description = "Large Bag Regnum",
	inventory_image = "bags_large_admin.png",
	groups = {bagslots=44},
})

minetest.register_tool("bags:trolley_admin", {
	description = "Trolley Regnum",
	inventory_image = "bags_trolley_admin.png",
	groups = {bagslots=48},
})


-- register bag crafts
minetest.register_craft({
	output = "bags:small",
	recipe = {
        {"", "default:stick", ""},
        {"default:wood", "default:wood", "default:wood"},
        {"default:wood", "default:wood", "default:wood"},
    },
})
minetest.register_craft({
	output = "bags:medium",
	recipe = {
        {"", "default:stick", ""},
        {"bags:small", "bags:small", "bags:small"},
        {"bags:small", "bags:small", "bags:small"},
    },
})
minetest.register_craft({
	output = "bags:large",
	recipe = {
        {"", "default:stick", ""},
        {"bags:medium", "bags:medium", "bags:medium"},
        {"bags:medium", "bags:medium", "bags:medium"},
    },
})

minetest.register_craft({
	output = "bags:trolley",
	recipe = {
        {"", "default:stick", ""},
        {"bags:large", "bags:large", "bags:large"},
        {"bags:large", "bags:large", "bags:large"},
    },
})

minetest.register_craft({
	output = "bags:small_admin",
	recipe = {
        {"", "tutorial:regnum", ""},
        {"", "bags:trolley", ""},
        {"", "", ""},
    },
})
minetest.register_craft({
	output = "bags:medium_admin",
	recipe = {
        {"", "tutorial:regnum", ""},
        {"", "bags:small_admin", ""},
        {"", "", ""},
    },
})
minetest.register_craft({
	output = "bags:large_admin",
	recipe = {
        {"", "tutorial:regnum", ""},
        {"", "bags:medium_admin", ""},
        {"", "", ""},
    },
})
minetest.register_craft({
	output = "bags:trolley_admin",
	recipe = {
        {"", "tutorial:regnum", ""},
        {"", "bags:large_admin", ""},
        {"", "", ""},
    },
})
-- log that we started
minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- loaded from "..minetest.get_modpath(minetest.get_current_modname()))
