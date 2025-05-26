--[[

Bags for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-particles
License: GPLv3

]]--




local bag_data = {}

minetest.register_on_joinplayer(function(player)
	local name = player:get_player_name()
	local info = minetest.get_player_information(name)
	bag_data[name] = {
		page = "bags",
		scroll = 0
	}
end)

-- get_formspec
local remove_list = true
local get_formspec = function(player)
	local name = player:get_player_name()
	local data = bag_data[name]
	if data.page=="bags" then
		local player_inv = player:get_inventory()
		player_inv:set_size("b", 1)
		local b_name = player_inv:get_stack("b", 1):get_name()
		player_inv:set_size("bag", 8)
		local b1_name = player_inv:get_stack("bag", 1):get_name()
		local b2_name = player_inv:get_stack("bag", 2):get_name()
		local b3_name = player_inv:get_stack("bag", 3):get_name()
		local b4_name = player_inv:get_stack("bag", 4):get_name()
		local b5_name = player_inv:get_stack("bag", 5):get_name()
		local b6_name = player_inv:get_stack("bag", 6):get_name()
		local b7_name = player_inv:get_stack("bag", 7):get_name()
		local b8_name = player_inv:get_stack("bag", 8):get_name()

		

		local bag_empty = 0
		for i = 1, 8 do
			if not player_inv:get_stack("bag", i):is_empty() then
				bag_empty = bag_empty + 1
			end
		end
		if bag_empty == 0 then
			local items = {}
			for i = 1, 8 do
				local list_name = "bag" .. i
				local stack = player_inv:get_stack(list_name, 1)
				table.insert(items, stack)
				player_inv:set_stack(list_name, 1, nil)
			end
			for i, stack in ipairs(items) do
				player_inv:set_stack("bag", i, stack)
			end
		end

		local key_listring = true
		local formspec_return = "button[1.6,1.5;1.6,0.5;bag1;Bag 1]"
			.."button[3.2,1.5;1.6,0.5;bag2;Bag 2]"
			.."button[4.8,1.5;1.6,0.5;bag3;Bag 3]"
			.."button[6.4,1.5;1.6,0.5;bag4;Bag 4]"
			.."button[1.6,4;1.6,0.5;bag5;Bag 5]"
			.."button[3.2,4;1.6,0.5;bag6;Bag 6]"
			.."button[4.8,4;1.6,0.5;bag7;Bag 7]"
			.."button[6.4,4;1.6,0.5;bag8;Bag 8]"
			.."label[0.53,1.3;Bag Key]"
		if bag_empty < 8 then
			formspec_return = formspec_return.."listring[current_player;main]"
			.."listring[current_player;bag]"
		end

		if b1_name == "bags:trolley_admin" and remove_list then
			formspec_return = formspec_return.."image[1.9,0.5;1,1;bags_trolley_admin.png]"
		else
			formspec_return = formspec_return.."list[current_player;bag;1.9,0.5;1,1;]"
		end
		if b2_name == "bags:trolley_admin" and remove_list then
			formspec_return = formspec_return.."image[3.5,0.5;1,1;bags_trolley_admin.png]"
		else
			formspec_return = formspec_return.."list[current_player;bag;3.5,0.5;1,1;1]"
		end
		if b3_name == "bags:trolley_admin" and remove_list then
			formspec_return = formspec_return.."image[5.1,0.5;1,1;bags_trolley_admin.png]"
		else
			formspec_return = formspec_return.."list[current_player;bag;5.1,0.5;1,1;2]"
		end
		if b4_name == "bags:trolley_admin" and remove_list then
			formspec_return = formspec_return.."image[6.7,0.5;1,1;bags_trolley_admin.png]"
		else
			formspec_return = formspec_return.."list[current_player;bag;6.7,0.5;1,1;3]"
		end
		if b5_name == "bags:trolley_admin" and remove_list then
			formspec_return = formspec_return.."image[1.9,3;1,1;bags_trolley_admin.png]"
		else
			formspec_return = formspec_return.."list[current_player;bag;1.9,3;1,1;4]"
		end
		if b6_name == "bags:trolley_admin" and remove_list then
			formspec_return = formspec_return.."image[3.5,3;1,1;bags_trolley_admin.png]"
		else
			formspec_return = formspec_return.."list[current_player;bag;3.5,3;1,1;5]"
		end
		if b7_name == "bags:trolley_admin" and remove_list then
			formspec_return = formspec_return.."image[5.1,3;1,1;bags_trolley_admin.png]"
		else
			formspec_return = formspec_return.."list[current_player;bag;5.1,3;1,1;6]"
		end
		if b8_name == "bags:trolley_admin" and remove_list then
			formspec_return = formspec_return.."image[6.7,3;1,1;bags_trolley_admin.png]"
		else
			formspec_return = formspec_return.."list[current_player;bag;6.7,3;1,1;7]"
		end

		if b_name == "tutorial:bag_schluessel4" and remove_list then
			formspec_return = formspec_return.."image[0.5,0.5;1,1;tutorial_bag_schluessel4.png]"
		else
			formspec_return = formspec_return.."image[0.5,0.5;1,1;tutorial_background_schluessel.png]"
			.."list[current_player;b;0.5,0.5;1,1;]"
			.."listring[current_player;main]"
			.."listring[current_player;b]"
		end
		formspec_return = formspec_return.."listring[current_player;main]"
			.."listring[current_player;bag]"
		
		return formspec_return
	end
	for i=1,8 do
		if data.page=="bag"..i then

			local image = player:get_inventory():get_stack("bag", i):get_definition().inventory_image
			local size = player:get_inventory():get_size("bag"..i.."contents")
			local extra_rows = 0
			local formspec = "button[0,0;2,0.75;bags;Back]"
				.."image[7,0;1,1;"..image.."]"
				.."scroll_container[0,1.5;10.2,4.5;bag_bar;vertical;0.05]"
				.."list[current_player;bag"..i.."contents;0,-0.3;8,6;]"
				.."scroll_container_end[]"
				.."listring[current_player;bag"..i.."contents]"
				.."listring[current_player;main]"
			if size > 40 then
				extra_rows = 2
				formspec = formspec.."scrollbaroptions[min=0;max=45;smallstep=10]"
				.."scrollbar[7.85,0.99;0.2,3.88;vertical;bag_bar;]"
			elseif size > 32 then
				extra_rows = 1
				formspec = formspec.."scrollbaroptions[min=0;max=23;smallstep=10]"
				.."scrollbar[7.85,0.99;0.2,3.88;vertical;bag_bar;]"
			end
			return formspec
		end
	end
end

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
	description = "Small Regnum Bag ",
	inventory_image = "bags_small_admin.png",
	groups = {bagslots=36},
})

minetest.register_tool("bags:medium_admin", {
	description = "Medium Regnum Bag ",
	inventory_image = "bags_medium_admin.png",
	groups = {bagslots=40},
})

minetest.register_tool("bags:large_admin", {
	description = "Large Regnum Bag ",
	inventory_image = "bags_large_admin.png",
	groups = {bagslots=44},
})

minetest.register_tool("bags:trolley_admin", {
	description = "Regnum Trolley ",
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
	output = "bags:small",
	recipe = {
        {"", "default:stick", ""},
        {"default:junglewood", "default:junglewood", "default:junglewood"},
        {"default:junglewood", "default:junglewood", "default:junglewood"},
    },
})
minetest.register_craft({
	output = "bags:small",
	recipe = {
        {"", "default:stick", ""},
        {"default:pine_wood", "default:pine_wood", "default:pine_wood"},
        {"default:pine_wood", "default:pine_wood", "default:pine_wood"},
    },
})
minetest.register_craft({
	output = "bags:small",
	recipe = {
        {"", "default:stick", ""},
        {"default:acacia_wood", "default:acacia_wood", "default:acacia_wood"},
        {"default:acacia_wood", "default:acacia_wood", "default:acacia_wood"},
    },
})
minetest.register_craft({
	output = "bags:small",
	recipe = {
        {"", "default:stick", ""},
        {"default:aspen_wood", "default:aspen_wood", "default:aspen_wood"},
        {"default:aspen_wood", "default:aspen_wood", "default:aspen_wood"},
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

sfinv.register_page("bags:bags", {
	title = "Bags",
	get = function(self, player, context)
		return sfinv.make_formspec(player, context, get_formspec(player,"bags"), true)
	end,
	on_player_receive_fields = function(self, player, context, fields)
		local name = player:get_player_name()
		for i=1,8 do
			local page = "bag"..i
			if fields[page] then
				if player:get_inventory():get_stack("bag", i):get_definition().groups.bagslots==nil then
					page = "bags"
				else
					player:get_inventory():set_size(page.."contents", player:get_inventory():get_stack("bag", i):get_definition().groups.bagslots)
				end
				local type = player:get_inventory():get_stack("b",1):get_name()
				if i < 5 or (type == "tutorial:bag_schluessel1" and i < 6) or (type == "tutorial:bag_schluessel2" and i < 7) or (type == "tutorial:bag_schluessel3" and i < 8) or type == "tutorial:bag_schluessel4" then
					bag_data[name].page = page
					bag_data[name].scroll = 0
				end
				sfinv.set_player_inventory_formspec(player)
			end
		end
		if fields["bags"] then
			bag_data[name].page = "bags"
			sfinv.set_player_inventory_formspec(player)
		end
		if fields.bag_bar then
			local number = tonumber(string.match(tostring(fields.bag_bar), "%d+"))
			bag_data[name].scroll = number
			--sfinv.set_player_inventory_formspec(player)
		end
	end
})

-- log that we started
minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- loaded from "..minetest.get_modpath(minetest.get_current_modname()))
