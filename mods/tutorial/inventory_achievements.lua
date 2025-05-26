local achievements_sub_page = {}

minetest.register_on_joinplayer(function(player)
	local name = player:get_player_name()
	achievements_sub_page[name] = 1
end)


local arch_list = {
	{1, "Regnum Battleaxe"},
	{49, "Regnum Gun"},
	{24, "Regnum Helmet"},
	{25, "Regnum Chestplate"},
	{26, "Regnum Leggings"},
	{27, "Regnum Boots"},
	{28, "Regnum Shield"},
	{51, "Regnum Wings"},
	{15, "Dog"},
	{16, "Cat"},
	{17, "Sheep"},
	{18, "Dragon"},
	{29, "Fox"},
	{30, "Tortoise"},
	{11, "Green Lv.MAX"},
	{12, "Red Lv.MAX"},
	{13, "Blue Lv.MAX"},
	{14, "Grey Lv.MAX"},
	{34, "Yellow Lv.MAX"},
	{53, "Bronze Lv.MAX"},
	{42, "Cyan Lv.MAX"},
	{20, "All Awards"},
	{35, "All Artifacts"},
	{38, "All Medallions"},
	{47, "All Treasures"},
	{45, "All Trophys"},
	{7, "Regnum Key"},
	{8, "Dark Regnum Key"},
	{44, "2 Dark Regnum Keys"},
	{22, "Dragon Key"},
	{31, "Fox Key"},
	{36, "Tortoise Key"},
	{4, "Level Key"},
	{5, "Craft Key Lv.MAX"},
	{6, "Legend Key"},
	{2, "Bag Key Lv.MAX"},
	{41, "Golden Key"},
	{43, "Cooking Key Lv.MAX"},
	{52, "Bronze Key"},
	{3, "Armor Key"},
	{39, "Crystal Key"},
	{37, "Knight Key"},
	{46, "Protection Key Lv.MAX"},
	{40, "2 Regnum crystal"},
	{9, "8 Regnum Trolleys"},
	{10, "8 Legend Crystals"},
	{32, "5 Magic Gems"},
	{23, "10 Magic Gems"},
	{19, "Mining Laser Lv.MAX"},
	{21, "Mining Drill Lv.MAX"},
	{33, "Wall Placer Lv.MAX"},
	{48, "Legend Stick Lv.MAX"},
	{54, "Mole Stick Lv.MAX"},
	{50, "Broken Color Stick"},
}

sfinv.register_page("tutorial:achievements", {
	title = "Achievements",
	get = function(self, player, context)
		local player_inv = player:get_inventory()
		local num_ach = 0
		local ach_array = {}
		local name = player:get_player_name()
		
		update_arch(player)
		for i=1, 54 do
			local a = player_inv:get_stack("a"..i, 1):get_count()
			if a == 1 then
				num_ach = num_ach+1
				ach_array[i] = 1
			else
				ach_array[i] = 0
			end
		end
    	local rew = player_inv:get_stack("rew", 1):get_count()
    	local rewb = player_inv:get_stack("rewb", 1):get_count()
		if num_ach > 24 and rew == 0 and player_inv:room_for_item("main", "mobs:knight_1248_egg") then
			player_inv:add_item("main", "mobs:knight_1248_egg")
			player_inv:add_item("rew", "default:dirt")
			minetest.chat_send_all(player:get_player_name().." has 25 Regnum things and is able to spawn a 1248 Knight")
		end
		if num_ach > 49 and rewb == 0 and player_inv:room_for_item("main", "tutorial:hammer") then
			player_inv:add_item("main", "tutorial:hammer")
			player_inv:add_item("rewb", "default:dirt")
			minetest.chat_send_all(player:get_player_name().." has 50 Regnum things and is able to repair the color stick")
		end
		local formspec = "label[7,0;"..num_ach.."/54]"
		if achievements_sub_page[name] == 1 then
			for index, arch in ipairs(arch_list) do
				local number = arch[1]
				local text = arch[2]
				if index < 19 then
					local row = 0
					if index > 9 then
						index = index-9
						row = 4
					end
					formspec = formspec.."image["..row..","..(0.2+0.8*index)..";0.8,0.8;tutorial_"..ach_array[number]..".png]"
					.."label["..(row+0.8)..","..(0.3+0.8*index)..";"..text.."]"
				end
			end
			formspec = formspec.."label[3.4,8.6;Page 1/3]"
		elseif achievements_sub_page[name] == 2 then
			for index, arch in ipairs(arch_list) do
				local number = arch[1]
				local text = arch[2]
				if index > 18 and index < 37 then
					local row = 0
					if index > 27 then
						index = index-27
						row = 4
					else
						index = index-18
					end
					formspec = formspec.."image["..row..","..(0.2+0.8*index)..";0.8,0.8;tutorial_"..ach_array[number]..".png]"
					.."label["..(row+0.8)..","..(0.3+0.8*index)..";"..text.."]"
				end
			end
			formspec = formspec.."label[3.4,8.6;Page 2/3]"
		elseif achievements_sub_page[name] == 3 then
			for index, arch in ipairs(arch_list) do
				local number = arch[1]
				local text = arch[2]
				if index > 36 and index < 55 then
					local row = 0
					if index > 45 then
						index = index-45
						row = 4
					else
						index = index-36
					end
					formspec = formspec.."image["..row..","..(0.2+0.8*index)..";0.8,0.8;tutorial_"..ach_array[number]..".png]"
					.."label["..(row+0.8)..","..(0.3+0.8*index)..";"..text.."]"
				end
			end
			formspec = formspec.."label[3.4,8.6;Page 3/3]"
		elseif achievements_sub_page[name] == 4 then
			formspec = formspec 
			.."label[3.4,8.6;Page 4/4]"
		end
		if achievements_sub_page[name] > 1 then
			formspec = formspec.."image_button[2.4,8.5;0.8,0.8;craftguide_prev_icon.png;ach_prev;]"
		end
		if achievements_sub_page[name] < 3 then
			formspec = formspec.."image_button[4.8,8.5;0.8,0.8;craftguide_next_icon.png;ach_next;]"
		end
		return sfinv.make_formspec(player, context, formspec)
	end,
	on_player_receive_fields = function(self, player, context, fields)
		local name = player:get_player_name()
		if fields.ach_next then
			if achievements_sub_page[name] < 3 then
				achievements_sub_page[name] = achievements_sub_page[name] + 1
				sfinv.set_player_inventory_formspec(player)
			end
		elseif fields.ach_prev then
			if achievements_sub_page[name] > 1 then
				achievements_sub_page[name] = achievements_sub_page[name] - 1
				sfinv.set_player_inventory_formspec(player)
			end
		end
	end
})


function get_awards_number(playername)
    states = awards.get_award_states(playername)
    num = 0
    for _, award in pairs(states) do
        if award.unlocked then
            num = num + 1
        end
    end
    return num
end

function update_arch(player)
	local player_inv = player:get_inventory()
	local name = player:get_player_name()
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
	local br = io.open(minetest.get_worldpath().."/"..name.."_experience_bronze", "r")
	local type27 = br:read("*l")
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
	local type28 = player:get_inventory():get_stack("bronze_key",1):get_name()
	
	for i=1,8 do
		if player:get_inventory():get_stack("bag",i):get_name() == "bags:trolley_admin" then
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
	if get_awards_number(name) == 42 then
		player_inv:set_stack("a20", 1,"tutorial:dirt")
	end
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
	if player:get_inventory():contains_item("main", "tutorial:colorstick_broken") or player:get_inventory():contains_item("main", "tutorial:colorstick_empty") or player:get_inventory():contains_item("main", "tutorial:colorstick1") then
		player_inv:set_stack("a50", 1,"tutorial:dirt")
	end
	if player:get_inventory():contains_item("main", "tutorial:regnumgun1") or player:get_inventory():contains_item("main", "tutorial:regnumgun2") then
		player_inv:set_stack("a49", 1,"tutorial:dirt")
	end
	if player:get_inventory():contains_item("main", "technic:drill_mkS150") or player:get_inventory():contains_item("main", "technic:drill_mkS150_1") or player:get_inventory():contains_item("main", "technic:drill_mkS150_2") or player:get_inventory():contains_item("main", "technic:drill_mkS150_3") or player:get_inventory():contains_item("main", "technic:drill_mkS150_4") or player:get_inventory():contains_item("main", "technic:drill_mkS150_5")then
		player_inv:set_stack("a21", 1,"tutorial:dirt")
	end
	if player:get_inventory():contains_item("main", "tutorial:regnumwings1") or player:get_inventory():contains_item("main", "tutorial:regnumwings2") or player:get_inventory():contains_item("main", "tutorial:regnumwings3") then
		player_inv:set_stack("a51", 1,"tutorial:dirt")
	end
	if player:get_inventory():contains_item("main", "tutorial:molestick5") then
		player_inv:set_stack("a54", 1,"tutorial:dirt")
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
	if type28 == "tutorial:bronzekey" then
		player_inv:set_stack("a52", 1, "default:dirt")
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
	if tonumber(type27) > 1499 then
		player_inv:set_stack("a53", 1, "default:dirt")
	end
end