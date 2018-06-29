--v.1.0.0
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
    --use_texture_alpha = true,
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
	local dig2 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","default:clay"}
	local dig3 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","default:clay"}
	local dig4 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","default:clay"}
	local dig5 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","tutorial:stone_with_titan","default:clay"}
    local dig6 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","tutorial:stone_with_titan","tutorial:stone_with_rot","tutorial:stone_with_blau","default:clay"}
    local dig7 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","tutorial:stone_with_titan","tutorial:stone_with_rot","tutorial:stone_with_blau","default:lava_source","default:water_source","default:clay"}
	local dig8 = {"default:stone_with_coal","default:stone_with_iron","default:stone_with_copper","default:stone_with_gold","default:stone_with_mese","default:stone_with_diamond","moreores:silver","moreores:mineral_tin","moreores:mineral_mithril","moreores:mineral_silver","technic:mineral_chromium","technic:mineral_zinc","technic:mineral_uranium","tutorial:stone_with_white","tutorial:stone_with_black","tutorial:stone_with_uranium","gems:ruby_ore","gems:sapphire_ore","gems:amethyst_ore","gems:pearl_ore","gems:shadow_ore","gems:emerald_ore","tutorial:stone_with_admin","tutorial:stone_with_titan","tutorial:stone_with_rot","tutorial:stone_with_blau","default:lava_source","default:water_source","default:cobble","default:stone","default:dirt","default:sand","default:desert_sand","default:desert_stone","default:clay","default:dirt_with_grass","default:gravel"}	
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
		for _,node_name in ipairs(dig7) do
			if drops == node_name then
				droping = minetest.get_node_drops(node.name)
				for _, itemname in ipairs(droping) do
					inv:add_item("main", itemname)
				end
			end
		end
	end
	if tool == "tutorial:regnumbattleaxe1" or tool == "tutorial:regnumbattleaxe2" then
		for _,node_name in ipairs(dig8) do
			if drops == node_name then
				droping = minetest.get_node_drops(node.name)
				for _, itemname in ipairs(droping) do
					inv:add_item("main", itemname)
				end
			end
		end
	end
end)
--v.0.23.3
local old_entities = {"mobs:zombie", "mobs:grass_monster", "mobs:geist", "mobs:tree_monster", "mobs:spider", "mobs:dungeon_master", "mobs:lava_flan", "mobs:mese_monster", "mobs:oerkki","mobs:rat","mobs_crocs:crocodile_swim","mobs:cow","mobs:chicken","mobs:pumba","mobs:sheep_white","mobs:kitten",""}
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
--v.0.23.2
--v.0.23.1
local xp_gui = {}
local xp_gru = {}
local xp_r_b = {}
local xp_gra = {}
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
	formspec = "size[8,11.3]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."button[6,3.5;2,0.5;cra3;Craft]"
		.."list[current_player;main;0,7.25;8,1;]"
		.."list[current_player;main;0,8.5;8,3;8]"
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
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."button[5,2.5;2,0.5;cra;Craft]"
		.."list[current_player;main;0,5.25;8,1;]"
		.."list[current_player;main;0,6.5;8,3;8]"
		.."list[current_player;crvier;1,1;4,4;]"
		.."listring[current_player;main]"
		.."listring[current_player;crvier]"
	
	return formspec		
end
--v.0.23.0
cr.get_formspec = function(player,pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
	player_inv:set_size("feld", 1)
	player_inv:set_size("feld3", 1)
	player_inv:set_size("feld4", 1)
    player_inv:set_size("feld5", 1)
	local type = player:get_inventory():get_stack("feld",1):get_name()
	local type3 = player:get_inventory():get_stack("feld3",1):get_name()
	local type4 = player:get_inventory():get_stack("feld4",1):get_name()
    local type5 = player:get_inventory():get_stack("feld5",1):get_name()
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
	formspec = "size[10,7.55]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."button[0,2.5;2,0.5;"..image..";4x4 craft]"
		.."button[2,2.5;2,0.5;"..image3..";5x5 craft]"
		.."button[4,2.5;2,0.5;"..image4..";Regnum craft]"
        .."button[8,2.5;2,0.5;"..image5..";Gem craft]"
		.."button[6,2.5;2,0.5;dna;DNA craft]"
		.."label[0.5,1.8;Craftkey]"
		.."label[2.4,1.8;Legendkey]"
		.."label[4.35,1.8;Regnumkey]"
        .."label[8.35,1.8;Dragonkey]"
		.."list[current_player;feld;0.5,1;1,1;]"
		.."list[current_player;feld3;2.5,1;1,1;]"
		.."list[current_player;feld4;4.5,1;1,1;]"
        .."list[current_player;feld5;8.5,1;1,1;]"
		.."list[current_player;main;1,3.5;8,1;]"
		.."list[current_player;main;1,4.75;8,3;8]"
	return formspec
end
xp_gra.get_formspec = function(player)
	formspec = "size[6.2,5.95]button[0,0;2,0.5;xp_gui;Back]"
		.."button[2.5,0;2,0.5;main;Main]"
		.."textlist[0,1;6,5;xp_gra;Lv.1 = 5xp,Lv.2 = 10xp,Lv.3 = 15xp,Lv.4 = 20xp,Lv.5 = 25xp,Lv.6 = 30xp,Lv.7 = 35xp,Lv.8 = 40xp,Lv.9 = 45xp,Lv.10 = 50xp,Lv.11 = 60xp,Lv.12 = 70xp,Lv.13 = 80xp,Lv.14 = 90xp,Lv.15 = 100xp,Lv.16 = 110xp,Lv.17 = 120xp,Lv.18 = 130xp,Lv.19 = 140xp,Lv.20 = 150xp,Lv.21 = 165xp,Lv.22 = 180xp,Lv.23 = 195xp,Lv.24 = 210xp,Lv.25 = 225xp,Lv.26 = 240xp,Lv.27 = 255xp,Lv.28 = 270xp,Lv.29 = 285xp,Lv.30 = 300xp,Lv.31 = 320xp,Lv.32 = 340xp,Lv.33 = 360xp,Lv.34 = 380xp,Lv.35 = 400xp,Lv.36 = 420xp,Lv.37 = 440xp,Lv.38 = 460xp,Lv.39 = 480xp,Lv.40 = 500xp,Lv.41 = 525xp,Lv.42 = 550xp,Lv.43 = 575xp,Lv.44 = 600xp,Lv.45 = 625xp,Lv.46 = 650xp,Lv.47 = 675xp,Lv.48 = 700xp,Lv.49 = 725xp,Lv.50 = 750xp,Lv.51 = 780xp,Lv.52 = 810xp,Lv.53 = 840xp,Lv.54 = 870xp,Lv.55 = 900xp,Lv.56 = 930xp,Lv.57 = 960xp,Lv.58 = 990xp,Lv.59 = 1020xp,Lv.60 = 1050xp,Lv.61 = 1085xp,Lv.62 = 1120xp,Lv.63 = 1155xp,Lv.64 = 1190xp,Lv.65 = 1225xp,Lv.66 = 1260xp,Lv.67 = 1295xp,Lv.68 = 1330xp,Lv.69 = 1365xp,Lv.70 = 1400xp,Lv.71 = 1440xp,Lv.72 = 1480xp,Lv.73 = 1520xp,Lv.74 = 1560xp,Lv.75 = 1600xp,Lv.76 = 1640xp,Lv.77 = 1680xp,Lv.78 = 1720xp,Lv.79 = 1760xp,Lv.80 = 1800xp,Lv.81 = 1845xp,Lv.82 = 1890xp,Lv.83 = 1935xp,Lv.84 = 1980xp,Lv.85 = 2025xp,Lv.86 = 2070xp,Lv.87 = 2115xp,Lv.88 = 2160xp,Lv.89 = 2205xp,Lv.90 = 2250xp,Lv.91 = 2300xp,Lv.92 = 2350xp,Lv.93 = 2400xp,Lv.94 = 2450xp,Lv.95 = 2500xp,Lv.96 = 2550xp,Lv.97 = 2600xp,Lv.98 = 2650xp,Lv.99 = 2700xp,Lv.100 = 2750xp,Lv.MAX = 3200xp]"
	return formspec
end
xp_r_b.get_formspec = function(player)
	formspec = "size[6.2,5.95]button[0,0;2,0.5;xp_gui;Back]"
		.."button[2.5,0;2,0.5;main;Main]"
		.."textlist[0,1;6,5;xp_r_b;Lv.1 = 1xp,Lv.2 = 3xp,Lv.3 = 6xp,Lv.4 = 10xp,Lv.5 = 15xp,Lv.6 = 21xp,Lv.7 = 28xp,Lv.8 = 36xp,Lv.9 = 45xp,Lv.10 = 55xp,Lv.11 = 66xp,Lv.12 = 78xp,Lv.13 = 91xp,Lv.14 = 105xp,Lv.15 = 120xp,Lv.16 = 136xp,Lv.17 = 153xp,Lv.18 = 171xp,Lv.19 = 190xp,Lv.20 = 210xp,Lv.MAX = 250xp]"
	return formspec
end
xp_gru.get_formspec = function(player)
	formspec = "size[6.2,5.95]button[0,0;2,0.5;xp_gui;Back]"
		.."button[2.5,0;2,0.5;main;Main]"
		.."textlist[0,1;6,5;xp_gru;Lv.1 = 10xp,Lv.2 = 20xp,Lv.3 = 30xp,Lv.4 = 40xp,Lv.5 = 50xp,Lv.6 = 70xp,Lv.7 = 90xp,Lv.8 = 110xp,Lv.9 = 130xp,Lv.10 = 150xp,Lv.11 = 180xp,Lv.12 = 210xp,Lv.13 = 240xp,Lv.14 = 270xp,Lv.15 = 300xp,Lv.16 = 340xp,Lv.17 = 380xp,Lv.18 = 420xp,Lv.19 = 460xp,Lv.20 = 500xp,Lv.21 = 550xp,Lv.22 = 600xp,Lv.23 = 650xp,Lv.24 = 700xp,Lv.25 = 750xp,Lv.26 = 810xp,Lv.27 = 870xp,Lv.28 = 930xp,Lv.29 = 990xp,Lv.30 = 1050xp,Lv.31 = 1120xp,Lv.32 = 1190xp,Lv.33 = 1260xp,Lv.34 = 1330xp,Lv.35 = 1400xp,Lv.36 = 1480xp,Lv.37 = 1560xp,Lv.38 = 1640xp,Lv.39 = 1720xp,Lv.40 = 1800xp,Lv.41 = 1890xp,Lv.42 = 1980xp,Lv.43 = 2070xp,Lv.44 = 2160xp,Lv.45 = 2250xp,Lv.45 = 2250xp,Lv.46 = 2350xp,Lv.47 = 2450xp,Lv.48 = 2550xp,Lv.49 = 2650xp,Lv.50 = 2750xp,Lv.51 = 2860xp,Lv.52 = 2970xp,Lv.53 = 3080xp,Lv.54 = 3190xp,Lv.55 = 3300xp,Lv.56 = 3420xp,Lv.57 = 3540xp,Lv.58 = 3660xp,Lv.59 = 3780xp,Lv.60 = 3900xp,Lv.61 = 4030xp,Lv.62 = 4160xp,Lv.63 = 4290xp,Lv.64 = 4420xp,Lv.65 = 4550xp,Lv.66 = 4690xp,Lv.67 = 4830xp,Lv.68 = 4970xp,Lv.69 = 5110xp,Lv.70 = 5250xp,Lv.71 = 5400xp,Lv.72 = 5550xp,Lv.73 = 5700xp,Lv.74 = 5850xp,Lv.75 = 6000xp,Lv.76 = 6160xp,Lv.77 = 6320xp,Lv.78 = 6480xp,Lv.79 = 6640xp,Lv.80 = 6800xp,Lv.81 = 6970xp,Lv.82 = 7140xp,Lv.83 = 7310xp,Lv.84 = 7480xp,Lv.85 = 7650xp,Lv.86 = 7830xp,Lv.87 = 8010xp,Lv.88 = 8190xp,Lv.89 = 8370xp,Lv.90 = 8550xp,Lv.91 = 8740xp,Lv.92 = 8930xp,Lv.93 = 9120xp,Lv.94 = 9310xp,Lv.95 = 9500xp,Lv.96 = 9700xp,Lv.97 = 9900xp,Lv.98 = 10100xp,Lv.99 = 10300xp,Lv.100 = 10500xp,Lv.MAX = 11950xp]"
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
	player_inv:set_size("feld2", 1)
	local type = player:get_inventory():get_stack("feld2",1):get_name()
	if type == "tutorial:level_schluessel" then
		image1 = "xp_gru"
		image2 = "xp_r_b"
		image3 = "xp_gra"
	else
		image1 = "xp_gui"
		image2 = "xp_gui"
		image3 = "xp_gui"
	end
	formspec = "size[8,8.3]button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;Xp green (Part1) : "..xp_gruen.."xp]"
		.."label[0,1.5;Xp red     (Part2) : "..xp_rot.."xp]"
		.."label[0,2;Xp blue   (Part2) : "..xp_blau.."xp]"
		.."label[0,2.5;Xp gray   (Part3) : "..xp_grau.."xp]"
		.."list[current_player;main;0,4.2.5;8,1;]"
		.."list[current_player;main;0,5.5;8,3;8]"
		.."list[current_player;feld2;5,0;1,1;]"
		.."label[5,0.9;Xp key]"
		.."button[4,1.5;3.0,0.5;"..image1..";Xp green you need]"
		.."button[4,2.4;3.0,0.5;"..image2..";Xp red/blue you need]"
		.."button[4,3.3;3.0,0.5;"..image3..";Xp gray you need]"
	return formspec
end	
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if player == nil then
        return
    end
	if fields.xp_gui then
		inventory_plus.set_inventory_formspec(player, xp_gui.get_formspec(player))
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
			k = 1
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
--v.0.22.1
--v.0.22.0
--v.0.21.0
--v.0.20.0
--v.0.19.1
--v.0.19.0
--v.0.18.0
--v.0.17.0
--v.0.16.0
--v.0.15.0
--v.0.14.0
--v.0.13.0
--v.0.12.0
--v.0.11.0
local function has_locked_chest_privilege(meta, player)
	if player:get_player_name() ~= meta:get_string("owner") then
		return false
	end
	return true
end
--v.0.10.1
--v.0.10.0
--v.0.9.0
--v.0.8.0
--v.0.7.2
--v.0.7.1
--v.0.7.0
--v.0.6.6
--v.0.6.5
--v.0.6.4
--v.0.6.3
--v.0.6.2
--v.0.6.1
--v.0.6.0
--v.0.5.2
--v.0.5.1
--v.0.5.0
--v.0.4.0
--v.0.3.0
tutorial = {}
local function add_spawner(pos)
	minetest.set_node(pos, {name="tutorial:spawner_mummy"})
	if not minetest.setting_getbool("only_peaceful_mobs") then tutorial.spawn_mummy({x=pos.x,y=pos.y,z=pos.z-2},2) end
end
local function can_replace(pos)
	local n = minetest.get_node_or_nil(pos)
	if n and n.name and minetest.registered_nodes[n.name] and not minetest.registered_nodes[n.name].walkable then
		return true
	elseif not n then
		return true
	else
		return false
	end
end
--v.0.2.0
local function get_sign(i)
	if i == 0 then
		return 0
	else
		return i/math.abs(i)
	end
end
local function get_velocity(vx, vy, vz, yaw)
	local x = math.cos(yaw)*vx+math.cos(math.pi/2+yaw)*vz
	local z = math.sin(yaw)*vx+math.sin(math.pi/2+yaw)*vz
	return {x=x, y=vy, z=z}
end
local function get_v(v)
	return math.sqrt(vx^2+vz^2)
end
local heli = {
	physical = true,
	collisionbox = {-1,-0.6,-1, 1,0.3,1},
	collide_with_objects = true,
	weight = 5,	
	visual = "mesh",
	mesh = "root.x",
	driver = nil,
	model = nil,
	motor = nil,
	left = true,
	timer=0,
	yaw=0,
	prev_y=0,
	vx=0,
	vy=0,
	vz=0
}
local heliModel = {
	visual = "mesh",
	mesh = "heli.x",
	textures = {"bladest.png","bladest.png","helit.png","Glasst.png"},
}	
local motor = {
	physical = true,
	collisionbox = {-2,0.5,-1, 1,1,1},
	visual = "mesh",
	mesh = "motor.x",
	textures = {"motort.png"},
	driver = nil,
	left = true,
	timer=0,
	vx = 0,--Velo. for/back-ward
	vy = 0,--Velo. up/down
	vz = 0--Velo. side
}
function heli:on_rightclick(clicker)
	if not clicker or not clicker:is_player() then
		return
	end
	if self.driver and clicker == self.driver then
		clicker:set_attach(self.model, "Root", {x=0,y=0,z=0}, {x=0,y=0,z=0})
		self.driver = nil
		clicker:set_detach()
		self.model:set_animation({x=0,y=1},0, 0)
	elseif not self.driver then
		self.model:set_animation({x=0,y=10},10, 0)
		self.driver = clicker
		clicker:set_attach(self.model, "Root", {x=0,y=0,z=-10}, {x=-90,y=0,z=-90})
	end
end
function heliModel:on_activate(staticdata, dtime_s)
	self.object:set_armor_groups({immortal=1})
	local is_attached = false
	for _,object in ipairs(minetest.env:get_objects_inside_radius(self.object:getpos(), 2)) do
		if object and object:get_luaentity() and object:get_luaentity().name=="tutorial:heli" then
			if object:get_luaentity().model == nil then
				object:get_luaentity().model = self
			end
			if object:get_luaentity().model == self then
				is_attached = true
			end
		end
	end
	if is_attached == false then
		self.object:remove()
	end
end
function heli:on_activate(staticdata, dtime_s)
	self.object:set_armor_groups({immortal=1})
	self.prev_y=self.object:getpos()
	if self.model == nil then
		self.model = minetest.env:add_entity(self.object:getpos(), "tutorial:heliModel")
		self.model:set_attach(self.object, "Root", {x=0,y=0,z=2}, {x=0,y=0,z=0})	
	end
end
function heli:get_staticdata(self)	
end
function heli:on_punch(puncher, time_from_last_punch, tool_capabilities, direction)
	if self.model ~= nil then
		self.model:remove()
	end
	self.object:remove()
	if puncher and puncher:is_player() then
		puncher:get_inventory():add_item("main", "tutorial:heli")
	end
end
function heliModel:on_punch(puncher, time_from_last_punch, tool_capabilities, direction)
	self.object:remove()
end
function heli:on_step(dtime)
	if self.driver and ( math.abs(self.driver:getpos().x-self.object:getpos().x)>10*dtime or math.abs(self.driver:getpos().y-self.object:getpos().y)>10*dtime or math.abs(self.driver:getpos().z-self.object:getpos().z)>10*dtime) then
		self.driver = nil
	end
	if self.driver then
		--self.driver:set_animation({ x= 81, y=160, },10,0)
		self.yaw = self.driver:get_look_yaw()
		v = self.object:getvelocity()
		local ctrl = self.driver:get_player_control()
		--Forward/backward
		if ctrl.up then
			self.vx = self.vx + math.cos(self.driver:get_look_yaw())*0.1
			self.vz = self.vz + math.sin(self.driver:get_look_yaw())*0.1
		end
		if ctrl.down then
			self.vx = self.vx-math.cos(self.driver:get_look_yaw())*0.1
			self.vz = self.vz-math.sin(self.driver:get_look_yaw())*0.1
		end
		if ctrl.left then
			self.vz = self.vz+math.cos(self.driver:get_look_yaw())*0.1
			self.vx = self.vx+math.sin(math.pi+self.driver:get_look_yaw())*0.1
		end
		if ctrl.right then
			self.vz = self.vz-math.cos(self.driver:get_look_yaw())*0.1
			self.vx = self.vx-math.sin(math.pi+self.driver:get_look_yaw())*0.1
		end
		if ctrl.jump then
			if self.vy<1.5 then
				self.vy = self.vy+0.2
			end
		end
		if ctrl.sneak then
			if self.vy>-1.5 then
				self.vy = self.vy-0.2
			end
		end
		if math.abs(self.vx) > 4.5 then
			self.vx = 4.5*get_sign(self.vx)
		end
		if math.abs(self.vz) > 4.5 then
			self.vz = 4.5*get_sign(self.vz)
		end
		
	end
	local sx=get_sign(self.vx)
	self.vx = self.vx - 0.02*sx
	local sz=get_sign(self.vz)
	self.vz = self.vz - 0.02*sz
	local sy=get_sign(self.vy)
	self.vy = self.vy-0.01*sy
	if sx ~= get_sign(self.vx) then
		self.vx = 0
	end
	if sz ~= get_sign(self.vz) then
		self.vz = 0
	end
	if math.abs(self.vx) > 4.5 then
		self.vx = 4.5*get_sign(self.vx)
	end
	if math.abs(self.vz) > 4.5 then
		self.vz = 4.5*get_sign(self.vz)
	end
	if math.abs(self.vy) > 4.5 then
		self.vz = 4.5*get_sign(self.vz)
	end
	self.object:setvelocity({x=self.vx, y=self.vy,z=self.vz})
	if self.model then
		self.model:set_attach(self.object,"Root", {x=0,y=0,z=0}, {
			x=-90+self.vz*4*math.cos(self.yaw)-self.vx*4*math.sin(self.yaw), 
			y=0-self.vz*4*math.sin(self.yaw)-self.vx*4*math.cos(self.yaw), 
			z=self.yaw*57})
	end
end
minetest.register_entity("tutorial:heli", heli)
minetest.register_entity("tutorial:heliModel", heliModel)
minetest.register_entity("tutorial:motor", motor)
--v.0.1.0