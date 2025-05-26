local other_sub_page = {}
local awards_idx = {}
local player_scroll_positions = {}
local remove_list = true

minetest.register_on_mods_loaded(function()
    local old_pages = sfinv.pages_unordered
    sfinv.pages_unordered = {}
	table.insert(sfinv.pages_unordered, old_pages[1])
	table.insert(sfinv.pages_unordered, old_pages[2])
	table.insert(sfinv.pages_unordered, old_pages[5])
	table.insert(sfinv.pages_unordered, old_pages[8])
	table.insert(sfinv.pages_unordered, old_pages[4])
	table.insert(sfinv.pages_unordered, old_pages[6])
	table.insert(sfinv.pages_unordered, old_pages[7])
	table.insert(sfinv.pages_unordered, old_pages[3])
end)


minetest.register_on_joinplayer(function(player)
	local name = player:get_player_name()
	other_sub_page[name] = 1
	awards_idx[name] = 1
end)
sfinv.register_page("tutorial:other", {
	title = "Other",
	get = function(self, player, context)
		local name = player:get_player_name()
        if other_sub_page[name] == 1 then
			local player_inv = player:get_inventory()
			local colreward = player_inv:get_stack("colreward", 1):get_count()
			local tata = player_inv:get_stack("tata", 1):get_count()
			local afaf = player_inv:get_stack("afaf", 1):get_count()
			local trtr = player_inv:get_stack("trtr", 1):get_count()
			local meme = player_inv:get_stack("meme", 1):get_count()
			local rew = tata+afaf+trtr+meme
			if rew == 108 then
				if colreward == 0 then
					if player_inv:room_for_item("main", "tutorial:colorstick_broken") == true then
						player_inv:add_item("main", "tutorial:colorstick_broken")
						player_inv:add_item("colreward", "default:dirt")
						minetest.chat_send_player(player:get_player_name(), "You have all color items and get the 'Broken Color Stick'.")
					end
				end
			end
            return sfinv.make_formspec(player, context, [[
                label[0.55,0;Quests]
                button[0.1,0.6;1.8,0.5;aw;Awards]
                button[0.1,1.4;1.8,0.5;achc;Anniversary]
                label[0.5,2.4;Settings]
				button[0.1,3.0;1.8,0.5;skins;Skins]
                button[0.1,3.8;1.8,0.5;inv_music;Music]
                label[2.55,0;Help]
                button[2.1,0.6;1.8,0.5;xp_gui;Xp Guide]
                button[2.1,1.4;1.8,0.5;recraft;Regnum Crafts]
                button[2.1,2.2;1.8,0.5;mobpos;Mob Positions]
                label[4.55,0;Spezial]
                button[4.1,0.6;1.8,0.5;kri;Crystals]
                button[4.1,1.4;1.8,0.5;gem;Gems]
                button[4.1,2.2;1.8,0.5;xpi_page1;Xp Items]
                label[6.35,0;Color Items]
                button[6.1,0.6;1.8,0.5;artifacts;Artifacts]
                button[6.1,1.4;1.8,0.5;medallion;Medallion]
                button[6.1,2.2;1.8,0.5;treasures;Treasures]
                button[6.1,3;1.8,0.5;trophys;Trophys]
            ]], false)
        elseif other_sub_page[name] == 2 then
            local name = player:get_player_name()
			return sfinv.make_formspec(player, context,"label[7,0;"..get_awards_number(name).."/42]"
			    .."button[0,0;2,0.5;back;Back]"
                .."container[0,0.7]"
                ..awards.get_formspec(name, name, awards_idx[name])
                .."container_end[]",
				false)
		elseif other_sub_page[name] == 3 then
			return sfinv.make_formspec(player, context, trophys_formspec(player), false)
		elseif other_sub_page[name] == 4 then
			return sfinv.make_formspec(player, context, treasures_formspec(player), false)
		elseif other_sub_page[name] == 5 then
			return sfinv.make_formspec(player, context, medallions_formspec(player), false)
		elseif other_sub_page[name] == 6 then
			return sfinv.make_formspec(player, context, artifacts_formspec(player), false)
		elseif other_sub_page[name] == 7 then
			return sfinv.make_formspec(player, context, gems_formspec(player), true)
		elseif other_sub_page[name] == 8 then
			return sfinv.make_formspec(player, context, mobs_positions_formspec(player), false)
		elseif other_sub_page[name] == 9 then
			return sfinv.make_formspec(player, context, anniversarys_formspec(player), false)
		elseif other_sub_page[name] == 10 then
			return sfinv.make_formspec(player, context, xp_guide_formspec(player), true)
		elseif other_sub_page[name] == 11 then
			return sfinv.make_formspec(player, context, skins.formspec.main(player:get_player_name()), true)
		elseif other_sub_page[name] == 12 then
			return sfinv.make_formspec(player, context, inventory_music.get_formspec(player), false)
		elseif other_sub_page[name] == 13 then
			return sfinv.make_formspec(player, context, xp_guide_formspec_gru(player), false)
		elseif other_sub_page[name] == 14 then
			return sfinv.make_formspec(player, context, xp_guide_formspec_r_b(player), false)
		elseif other_sub_page[name] == 15 then
			return sfinv.make_formspec(player, context, xp_guide_formspec_gra(player), false)
		elseif other_sub_page[name] == 16 then
			return sfinv.make_formspec(player, context, xp_guide_formspec_gel(player), false)
		elseif other_sub_page[name] == 17 then
			return sfinv.make_formspec(player, context, xp_guide_formspec_cya(player), false)
		elseif other_sub_page[name] == 18 then
			return sfinv.make_formspec(player, context, xp_guide_formspec_bro(player), false)
		elseif other_sub_page[name] == 19 then
			return sfinv.make_formspec(player, context, xp_guide_formspec_sil(player), false)
		elseif other_sub_page[name] == 20 then
			return sfinv.make_formspec(player, context, regnum_craft_formspec(player), false)
		elseif other_sub_page[name] == 21 then
			return sfinv.make_formspec(player, context, xp_items_formspec1(player), true)
		elseif other_sub_page[name] == 22 then
			return sfinv.make_formspec(player, context, xp_items_formspec2(player), true)
		elseif other_sub_page[name] == 23 then
			return sfinv.make_formspec(player, context, xp_items_formspec3(player), true)
		elseif other_sub_page[name] == 24 then
			return sfinv.make_formspec(player, context, xp_items_formspec4(player), true)
		elseif other_sub_page[name] == 25 then
			return sfinv.make_formspec(player, context, xp_items_formspec5(player), true)
		elseif other_sub_page[name] == 26 then
			return sfinv.make_formspec(player, context, xp_items_formspec6(player), true)
		elseif other_sub_page[name] == 27 then
			return sfinv.make_formspec(player, context, xp_items_formspec7(player), true)
		elseif other_sub_page[name] == 28 then
			return sfinv.make_formspec(player, context, xp_items_formspec8(player), true)
		elseif other_sub_page[name] == 29 then
			return sfinv.make_formspec(player, context, xp_items_formspec9(player), true)
		elseif other_sub_page[name] == 30 then
			return sfinv.make_formspec(player, context, crystals_formspec(player), true)
        end
	end,
    is_in_nav = function(self, player, context)
		local name = player:get_player_name()
        if other_sub_page[name] == 2 then
            local data = awards.player(player:get_player_name())
            return not data.disabled
        else
            return true
        end
    end,
    on_player_receive_fields = function(self, player, context, fields)
		local name = player:get_player_name()
		local player_inv = player:get_inventory()
		if fields.scrbar then
			local event = minetest.explode_textlist_event(fields.scrbar)
			if event.type == "CHG" then
				player_scroll_positions[name] = tonumber(event.index)
            end
		end
        if fields.awards then
            local event = minetest.explode_textlist_event(fields.awards)
            if event.type == "CHG" then
                awards_idx[name] = event.index
            end
        elseif fields.aw then
            other_sub_page[name] = 2
        elseif fields.back then
            other_sub_page[name] = 1
		elseif fields.trophys then
			other_sub_page[name] = 3
		elseif fields.treasures then
			other_sub_page[name] = 4
		elseif fields.medallion then
			other_sub_page[name] = 5
		elseif fields.artifacts then
			other_sub_page[name] = 6
		elseif fields.gem then
			other_sub_page[name] = 7
		elseif fields.mobpos then
			other_sub_page[name] = 8
		elseif fields.achc then
			other_sub_page[name] = 9
			player_inv:set_size("year", 9)
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
			if player:get_inventory():contains_item("main", "tutorial:trophy_year5") then
				player_inv:set_stack("year", 5,"tutorial:dirt")
			end
			if player:get_inventory():contains_item("main", "tutorial:trophy_year6") then
				player_inv:set_stack("year", 6,"tutorial:dirt")
			end
			if player:get_inventory():contains_item("main", "tutorial:trophy_year7") then
				player_inv:set_stack("year", 7,"tutorial:dirt")
			end
			if player:get_inventory():contains_item("main", "tutorial:trophy_year8") then
				player_inv:set_stack("year", 8,"tutorial:dirt")
			end
			if player:get_inventory():contains_item("main", "tutorial:trophy_year9") then
				player_inv:set_stack("year", 9,"tutorial:dirt")
			end
		elseif fields.xp_gui then
			other_sub_page[name] = 10
		elseif fields.skins then
			other_sub_page[name] = 11
		elseif fields.skins_set_125 then
			player_inv:set_size("knightskin", 1)
			local artrew = player_inv:set_stack("knightskin", 1, "default:dirt")
		elseif fields.skins_set_126 then
			player_inv:set_size("knightskin", 1)
			local artrew = player_inv:set_stack("knightskin", 1, "default:dirt 2")
		elseif fields.skins_set_127 then
			player_inv:set_size("knightskin", 1)
			local artrew = player_inv:set_stack("knightskin", 1, "default:dirt 3")
		elseif fields.skins_set_128 then
			player_inv:set_size("knightskin", 1)
			local artrew = player_inv:set_stack("knightskin", 1, "default:dirt 4")
		elseif fields.skins_set_129 then
			player_inv:set_size("knightskin", 1)
			local artrew = player_inv:set_stack("knightskin", 1, "")
		elseif fields.inv_music then
			other_sub_page[name] = 12
		elseif fields.inst1 then
			local inst = player_inv:get_stack("inst", 1):get_count()
			if inst == 0 then
				player_inv:set_stack("inst", 1, "default:dirt")
			else
				player_inv:set_stack("inst", 1, nil)
			end
			local inst1 = player_inv:get_stack("inst", 1):get_count()
			local inst2 = player_inv:get_stack("inst", 2):get_count()
			if inst1 == 0 and inst2 == 0 then
				player_inv:set_stack("music", 1, nil)
				if inventory_music.sound_play_regnum[player:get_player_name()] ~= nil then
					minetest.sound_stop(inventory_music.sound_play_regnum[player:get_player_name()])
				end
			end
		elseif fields.inst2 then
			local inst = player_inv:get_stack("inst", 2):get_count()
			if inst == 0 then
				player_inv:set_stack("inst", 2, "default:dirt")
			else
				player_inv:set_stack("inst", 2, nil)
			end
			local inst1 = player_inv:get_stack("inst", 1):get_count()
			local inst2 = player_inv:get_stack("inst", 2):get_count()
			if inst1 == 0 and inst2 == 0 then
				player_inv:set_stack("music", 1, nil)
				if inventory_music.sound_play_regnum[player:get_player_name()] ~= nil then
					minetest.sound_stop(inventory_music.sound_play_regnum[player:get_player_name()])
				end
			end
		elseif fields.music then
			local music = player_inv:get_stack("music", 1):get_count()
			if music == 0 then
				player_inv:set_stack("music", 1, "default:dirt")
				player_inv:set_stack("inst", 1, "default:dirt")
				player_inv:set_stack("inst", 2, nil)
			else
				player_inv:set_stack("music", 1, nil)
				if inventory_music.sound_play_regnum[player:get_player_name()] ~= nil then
					minetest.sound_stop(inventory_music.sound_play_regnum[player:get_player_name()])
				end
			end
		elseif fields.xp_gru then
			local feld2_name = player:get_inventory():get_stack("feld2",1):get_name()
			if feld2_name == "tutorial:level_schluessel" then
				other_sub_page[name] = 13
			end
		elseif fields.xp_r_b then
			local feld2_name = player:get_inventory():get_stack("feld2",1):get_name()
			if feld2_name == "tutorial:level_schluessel" then
				other_sub_page[name] = 14
			end
		elseif fields.xp_gra then
			local feld2_name = player:get_inventory():get_stack("feld2",1):get_name()
			if feld2_name == "tutorial:level_schluessel" then
				other_sub_page[name] = 15
			end
		elseif fields.xp_gel then
			local feld2_name = player:get_inventory():get_stack("feld2",1):get_name()
			if feld2_name == "tutorial:level_schluessel" then
				other_sub_page[name] = 16
			end
		elseif fields.xp_cya then
			local feld2_name = player:get_inventory():get_stack("feld2",1):get_name()
			if feld2_name == "tutorial:level_schluessel" then
				other_sub_page[name] = 17
			end
		elseif fields.xp_bro then
			local feld2_name = player:get_inventory():get_stack("feld2",1):get_name()
			if feld2_name == "tutorial:level_schluessel" then
				other_sub_page[name] = 18
			end
		elseif fields.xp_sil then
			local feld2_name = player:get_inventory():get_stack("feld2",1):get_name()
			if feld2_name == "tutorial:level_schluessel" then
				other_sub_page[name] = 19
			end
		elseif fields.recraft then
			other_sub_page[name] = 20
		elseif fields.xpi_page1 then
			other_sub_page[name] = 21
		elseif fields.xpi_page2 then
			other_sub_page[name] = 22
		elseif fields.xpi_page3 then
			other_sub_page[name] = 23
		elseif fields.xpi_page4 then
			other_sub_page[name] = 24
		elseif fields.xpi_page5 then
			other_sub_page[name] = 25
		elseif fields.xpi_page6 then
			other_sub_page[name] = 26
		elseif fields.xpi_page7 then
			other_sub_page[name] = 27
		elseif fields.xpi_page8 then
			other_sub_page[name] = 28
		elseif fields.xpi_page9 then
			other_sub_page[name] = 29
		elseif fields.kri then
			other_sub_page[name] = 30
		elseif fields.recrafta then
			player_inv:set_stack("recr", 1, "default:dirt "..1)
		elseif fields.recraftb then
			player_inv:set_stack("recr", 1, "default:dirt "..2)
		elseif fields.recraftc then
			player_inv:set_stack("recr", 1, "default:dirt "..3)
		elseif fields.recraftd then
			player_inv:set_stack("recr", 1, "default:dirt "..4)
		elseif fields.recrafte then
			player_inv:set_stack("recr", 1, "default:dirt "..5)
		elseif fields.recraftf then
			player_inv:set_stack("recr", 1, "default:dirt "..6)
		elseif fields.recraftg then
			player_inv:set_stack("recr", 1, "default:dirt "..7)
		elseif fields.recrafth then
			player_inv:set_stack("recr", 1, "default:dirt "..8)
		elseif fields.recrafti then
			player_inv:set_stack("recr", 1, "default:dirt "..9)
		elseif fields.recraftj then
			player_inv:set_stack("recr", 1, "default:dirt "..10)
		elseif fields.recraftk then
			player_inv:set_stack("recr", 1, "default:dirt "..11)
		elseif fields.recraftl then
			player_inv:set_stack("recr", 1, "default:dirt "..12)
		elseif fields.recraftm then
			player_inv:set_stack("recr", 1, "default:dirt "..13)
		elseif fields.recraftn then
			player_inv:set_stack("recr", 1, "default:dirt "..14)
		elseif fields.recrafto then
			player_inv:set_stack("recr", 1, "default:dirt "..15)
		elseif fields.recraftp then
			player_inv:set_stack("recr", 1, "default:dirt "..16)
		elseif fields.recraftq then
			player_inv:set_stack("recr", 1, "default:dirt "..17)
		elseif fields.recraftr then
			player_inv:set_stack("recr", 1, "default:dirt "..18)
		elseif fields.recrafts then
			player_inv:set_stack("recr", 1, "default:dirt "..19)
		elseif fields.recraftt then
			player_inv:set_stack("recr", 1, "default:dirt "..20)
		elseif fields.recraftaa then
			player_inv:set_stack("recr", 1, "default:dirt "..21)
		elseif fields.recraftab then
			player_inv:set_stack("recr", 1, "default:dirt "..22)
		elseif fields.recraftac then
			player_inv:set_stack("recr", 1, "default:dirt "..23)
		elseif fields.recraftad then
			player_inv:set_stack("recr", 1, "default:dirt "..24)
		elseif fields.recraftae then
			player_inv:set_stack("recr", 1, "default:dirt "..25)
		elseif fields.recraftaf then
			player_inv:set_stack("recr", 1, "default:dirt "..26)
		elseif fields.recraftag then
			player_inv:set_stack("recr", 1, "default:dirt "..27)
		elseif fields.recraftah then
			player_inv:set_stack("recr", 1, "default:dirt "..28)
		elseif fields.recraftai then
			player_inv:set_stack("recr", 1, "default:dirt "..29)
		elseif fields.recraftaj then
			player_inv:set_stack("recr", 1, "default:dirt "..30)
		elseif fields.recraftak then
			player_inv:set_stack("recr", 1, "default:dirt "..31)
		elseif fields.recraftal then
			player_inv:set_stack("recr", 1, "default:dirt "..32)
		elseif fields.recraftam then
			player_inv:set_stack("recr", 1, "default:dirt "..33)
		elseif fields.recraftan then
			player_inv:set_stack("recr", 1, "default:dirt "..34)
		elseif fields.recraftao then
			player_inv:set_stack("recr", 1, "default:dirt "..35)
		elseif fields.recraftap then
			player_inv:set_stack("recr", 1, "default:dirt "..36)
		elseif fields.recraftaq then
			player_inv:set_stack("recr", 1, "default:dirt "..37)
		elseif fields.recraftar then
			player_inv:set_stack("recr", 1, "default:dirt "..38)
		elseif fields.recraftas then
			player_inv:set_stack("recr", 1, "default:dirt "..39)
		elseif fields.recraftat then
			player_inv:set_stack("recr", 1, "default:dirt "..40)
		elseif fields.recraftau then
			player_inv:set_stack("recr", 1, "default:dirt "..41)
		elseif fields.recraftav then
			player_inv:set_stack("recr", 1, "default:dirt "..42)
		elseif fields.recraftaw then
			player_inv:set_stack("recr", 1, "default:dirt "..43)
		elseif fields.recraftax then
			player_inv:set_stack("recr", 1, "default:dirt "..44)
		elseif fields.recraftay then
			player_inv:set_stack("recr", 1, "default:dirt "..45)
		elseif fields.recraftba then
			player_inv:set_stack("recr", 1, "default:dirt "..46)
		elseif fields.recraftbb then
			player_inv:set_stack("recr", 1, "default:dirt "..47)
		elseif fields.recraftbc then
			player_inv:set_stack("recr", 1, "default:dirt "..48)
		elseif fields.recraftbd then
			player_inv:set_stack("recr", 1, "default:dirt "..49)
		elseif fields.recraftca then
			player_inv:set_stack("recr", 1, "default:dirt "..50)
		elseif fields.recraftcb then
			player_inv:set_stack("recr", 1, "default:dirt "..51)
		elseif fields.recraftda then
			player_inv:set_stack("recr", 1, "default:dirt "..52)
		elseif fields.recraftdb then
			player_inv:set_stack("recr", 1, "default:dirt "..53)
		elseif fields.recraftdc then
			player_inv:set_stack("recr", 1, "default:dirt "..54)
		elseif fields.recraftdd then
			player_inv:set_stack("recr", 1, "default:dirt "..55)
		elseif fields.recraftde then
			player_inv:set_stack("recr", 1, "default:dirt "..56)
		elseif fields.recraftdf then
			player_inv:set_stack("recr", 1, "default:dirt "..57)
		elseif fields.recraftdg then
			player_inv:set_stack("recr", 1, "default:dirt "..58)
		elseif fields.recraftdh then
			player_inv:set_stack("recr", 1, "default:dirt "..59)
		elseif fields.recraftdi then
			player_inv:set_stack("recr", 1, "default:dirt "..60)
		elseif fields.recraftdj then
			player_inv:set_stack("recr", 1, "default:dirt "..61)
		elseif fields.recraftdk then
			player_inv:set_stack("recr", 1, "default:dirt "..62)
		elseif fields.recraftdl then
			player_inv:set_stack("recr", 1, "default:dirt "..63)
		elseif fields.recraftea then
			player_inv:set_stack("recr", 1, "default:dirt "..64)
		elseif fields.recrafteb then
			player_inv:set_stack("recr", 1, "default:dirt "..65)
		elseif fields.recraftec then
			player_inv:set_stack("recr", 1, "default:dirt "..66)
		elseif fields.recrafted then
			player_inv:set_stack("recr", 1, "default:dirt "..67)
		elseif fields.recraftee then
			player_inv:set_stack("recr", 1, "default:dirt "..68)
		elseif fields.recraftef then
			player_inv:set_stack("recr", 1, "default:dirt "..69)
		elseif fields.recrafteg then
			player_inv:set_stack("recr", 1, "default:dirt "..70)
		elseif fields.recraftfa then
			player_inv:set_stack("recr", 1, "default:dirt "..71)
		elseif fields.recraftfb then
			player_inv:set_stack("recr", 1, "default:dirt "..72)
		elseif fields.recraftfc then
			player_inv:set_stack("recr", 1, "default:dirt "..73)
		elseif fields.recraftfd then
			player_inv:set_stack("recr", 1, "default:dirt "..74)
		elseif fields.recraftfe then
			player_inv:set_stack("recr", 1, "default:dirt "..75)
		elseif fields.recraftga then
			player_inv:set_stack("recr", 1, "default:dirt "..76)
		elseif fields.recraftgb then
			player_inv:set_stack("recr", 1, "default:dirt "..77)
		elseif fields.recraftgc then
			player_inv:set_stack("recr", 1, "default:dirt "..78)
		elseif fields.recraftgd then
			player_inv:set_stack("recr", 1, "default:dirt "..79)
		elseif fields.recraftge then
			player_inv:set_stack("recr", 1, "default:dirt "..80)
		elseif fields.recraftgf then
			player_inv:set_stack("recr", 1, "default:dirt "..81)
		elseif fields.recraftgg then
			player_inv:set_stack("recr", 1, "default:dirt "..82)
		elseif fields.recraftgh then
			player_inv:set_stack("recr", 1, "default:dirt "..83)
		elseif fields.recraftgi then
			player_inv:set_stack("recr", 1, "default:dirt "..84)
		elseif fields.recraftgj then
			player_inv:set_stack("recr", 1, "default:dirt "..85)
		elseif fields.recraftgk then
			player_inv:set_stack("recr", 1, "default:dirt "..86)
		elseif fields.recraftgl then
			player_inv:set_stack("recr", 1, "default:dirt "..87)
		elseif fields.recraftgm then
			player_inv:set_stack("recr", 1, "default:dirt "..88)
		elseif fields.recraftgn then
			player_inv:set_stack("recr", 1, "default:dirt "..89)
		elseif fields.recraftgo then
			player_inv:set_stack("recr", 1, "default:dirt "..90)
		elseif fields.recraftgp then
			player_inv:set_stack("recr", 1, "default:dirt "..91)
		elseif fields.recraftgq then
			player_inv:set_stack("recr", 1, "default:dirt "..92)
		elseif fields.recraftgr then
			player_inv:set_stack("recr", 1, "default:dirt "..93)
		elseif fields.recraftgs then
			player_inv:set_stack("recr", 1, "default:dirt "..94)
		elseif fields.recraftgt then
			player_inv:set_stack("recr", 1, "default:dirt "..95)
		elseif fields.recraftgu then
			player_inv:set_stack("recr", 1, "default:dirt "..96)
		elseif fields.recraftgv then
			player_inv:set_stack("recr", 1, "default:dirt "..97)
		elseif fields.recraftgw then
			player_inv:set_stack("recr", 1, "default:dirt "..98)
		elseif fields.recraftgx then
			player_inv:set_stack("recr", 1, "default:dirt "..99)
		elseif fields.recraftgy then
			player_inv:set_stack("recr", 1, "default:dirt "..100)
		elseif fields.recraftha then
			player_inv:set_stack("recr", 1, "default:dirt "..101)
		elseif fields.recraftia then
			player_inv:set_stack("recr", 1, "default:dirt "..102)
		elseif fields.recraftib then
			player_inv:set_stack("recr", 1, "default:dirt "..103)
		elseif fields.recraftic then
			player_inv:set_stack("recr", 1, "default:dirt "..104)
		elseif fields.recraftid then
			player_inv:set_stack("recr", 1, "default:dirt "..105)
		elseif fields.recraftja then
			player_inv:set_stack("recr", 1, "default:dirt "..106)
		elseif fields.recraftjb then
			player_inv:set_stack("recr", 1, "default:dirt "..107)
		elseif fields.recraftjc then
			player_inv:set_stack("recr", 1, "default:dirt "..108)
		elseif fields.recraftjd then
			player_inv:set_stack("recr", 1, "default:dirt "..109)
		elseif fields.recraftje then
			player_inv:set_stack("recr", 1, "default:dirt "..110)
		elseif fields.recraftjf then
			player_inv:set_stack("recr", 1, "default:dirt "..111)
		elseif fields.recraftjg then
			player_inv:set_stack("recr", 1, "default:dirt "..112)
		elseif fields.recraftjh then
			player_inv:set_stack("recr", 1, "default:dirt "..113)
		elseif fields.recraftji then
			player_inv:set_stack("recr", 1, "default:dirt "..114)
		elseif fields.recraftjj then
			player_inv:set_stack("recr", 1, "default:dirt "..115)
		elseif fields.recraftka then
			player_inv:set_stack("recr", 1, "default:dirt "..116)
		elseif fields.recraftkb then
			player_inv:set_stack("recr", 1, "default:dirt "..117)
		elseif fields.recraftkc then
			player_inv:set_stack("recr", 1, "default:dirt "..118)
		elseif fields.recraftkd then
			player_inv:set_stack("recr", 1, "default:dirt "..119)
		elseif fields.recraftke then
			player_inv:set_stack("recr", 1, "default:dirt "..120)
		elseif fields.recraftkf then
			player_inv:set_stack("recr", 1, "default:dirt "..121)
		elseif fields.recraftla then
			player_inv:set_stack("recr", 1, "default:dirt "..122)
		elseif fields.recraftma then
			player_inv:set_stack("recr", 1, "default:dirt "..123)
		elseif fields.reg1 then
			player_inv:set_stack("recr2", 1, "")
		elseif fields.reg2 then
			player_inv:set_stack("recr2", 1, "default:dirt "..1)
		elseif fields.reg3 then
			player_inv:set_stack("recr2", 1, "default:dirt "..2)
		elseif fields.reg4 then
			player_inv:set_stack("recr2", 1, "default:dirt "..3)
		elseif fields.reg5 then
			player_inv:set_stack("recr2", 1, "default:dirt "..4)
		elseif fields.reg6 then
			player_inv:set_stack("recr2", 1, "default:dirt "..5)
		elseif fields.reg7 then
			player_inv:set_stack("recr2", 1, "default:dirt "..6)
		elseif fields.reg8 then
			player_inv:set_stack("recr2", 1, "default:dirt "..7)
		elseif fields.reg9 then
			player_inv:set_stack("recr2", 1, "default:dirt "..8)
		elseif fields.cre then
			local player_inv = player:get_inventory()
			local dl = player_inv:get_stack("de", 1):get_count()
			local tdl = player_inv:get_stack("td", 1):get_count()
			local tll = player_inv:get_stack("tl", 1):get_count()
			local time = 0
			time = time+(dl*35)
			time = time+(tdl*15)
			time = time+(tll*10)
			player_inv:set_stack("t", 1, nil)
			if player_inv:get_stack("krit", 1):get_name() == "tutorial:crystal_schluessel" then
				time = time/2
			end
			minetest.after(time, function()
				local player_inv = player:get_inventory()
				player_inv:add_item("main","tutorial:legendball_"..tdl.."_"..tll.."_"..dl)
				player_inv:set_stack("t", 1, "default:dirt")
				sfinv.set_player_inventory_formspec(player, context)
			end)
		end
		if fields.drop1 then
			player_inv:set_stack("de", 1,"tutorial:dirt "..fields.drop1)
		end
		if fields.drop2 then
			player_inv:set_stack("td", 1,"tutorial:dirt "..fields.drop2)
		end
		if fields.drop3 then
			player_inv:set_stack("tl", 1,"tutorial:dirt "..fields.drop3)
		end
		local num_fields = 0
		for field, _ in pairs(fields) do
			num_fields = num_fields + 1
			if string.sub(field,0,string.len("skins_set_")) == "skins_set_" then
				skins.skins[player:get_player_name()] = skins.list[tonumber(string.sub(field,string.len("skins_set_")+1))]
				skins.update_player_skin(player)
			end
			if string.sub(field,0,string.len("skins_page_")) == "skins_page_" then
				skins.pages[player:get_player_name()] = tonumber(string.sub(field,string.len("skins_page_")+1))
			end
		end
		if (not fields.scrbar and not fields.scrbar2) or num_fields > 1 then
			sfinv.set_player_inventory_formspec(player, context)
		end
    end
})

function get_awards_number(playername)
    local states = awards.get_award_states(playername)
    local num = 0
    for _, award in pairs(states) do
        if award.unlocked then
            num = num + 1
        end
    end
    return num
end

function trophys_formspec(player)
	local player_inv = player:get_inventory()
    local red = player_inv:get_stack("tearred", 1):get_count()
    local blue = player_inv:get_stack("tearblue", 1):get_count()
    local yellow = player_inv:get_stack("tearyellow", 1):get_count()
    local purple = player_inv:get_stack("tearpurple", 1):get_count()
    local cyan = player_inv:get_stack("tearcyan", 1):get_count()
    local green = player_inv:get_stack("teargreen", 1):get_count()
    player_inv:set_size("trtr", 1)
	local formspec = "button[0,0;2,0.5;back;Back]"
	local d = 0
	local red_max = 10
	local blue_max = 10
	local green_max = 10
	local yellow_max = 10
	local purple_max = 10
	local cyan_max = 10
	if green > 9 then
		green_max = 20
		formspec = formspec .."image[2,1;1,1;trophy_green_bronze.png]"
		d = d+1
	else
		formspec = formspec .."image[2,1;1,1;tutorial_0.png]"
	end
	if green > 19 then
		green_max = 50
		formspec = formspec .."image[3,1;1,1;trophy_green_silver.png]"
		d = d+1
	else
		formspec = formspec .."image[3,1;1,1;tutorial_0.png]"
	end
	if green > 49 then
		green_max = 100
		formspec = formspec .."image[4,1;1,1;trophy_green_gold.png]"
		d = d+1
	else
		formspec = formspec .."image[4,1;1,1;tutorial_0.png]"
	end
	if green > 99 then
		formspec = formspec .."image[5,1;1,1;trophy_green_platin.png]"
		d = d+1
	else
		formspec = formspec .."image[5,1;1,1;tutorial_0.png]"
	end
	if blue > 9 then
		blue_max = 20
		formspec = formspec .."image[2,2.3;1,1;trophy_blue_bronze.png]"
		d = d+1
	else
		formspec = formspec .."image[2,2.3;1,1;tutorial_0.png]"
	end
	if blue > 19 then
		blue_max = 50
		formspec = formspec .."image[3,2.3;1,1;trophy_blue_silver.png]"
		d = d+1
	else
		formspec = formspec .."image[3,2.3;1,1;tutorial_0.png]"
	end
	if blue > 49 then
		blue_max = 100
		formspec = formspec .."image[4,2.3;1,1;trophy_blue_gold.png]"
		d = d+1
	else
		formspec = formspec .."image[4,2.3;1,1;tutorial_0.png]"
	end
	if blue > 99 then
		formspec = formspec .."image[5,2.3;1,1;trophy_blue_platin.png]"
		d = d+1
	else
		formspec = formspec .."image[5,2.3;1,1;tutorial_0.png]"
	end
	if yellow > 9 then
		yellow_max = 20
		formspec = formspec .."image[2,3.6;1,1;trophy_yellow_bronze.png]"
		d = d+1
	else
		formspec = formspec .."image[2,3.6;1,1;tutorial_0.png]"
	end
	if yellow > 19 then
		yellow_max = 50
		formspec = formspec .."image[3,3.6;1,1;trophy_yellow_silver.png]"
		d = d+1
	else
		formspec = formspec .."image[3,3.6;1,1;tutorial_0.png]"
	end
	if yellow > 49 then
		yellow_max = 100
		formspec = formspec .."image[4,3.6;1,1;trophy_yellow_gold.png]"
		d = d+1
	else
		formspec = formspec .."image[4,3.6;1,1;tutorial_0.png]"
	end
	if yellow > 99 then
		formspec = formspec .."image[5,3.6;1,1;trophy_yellow_platin.png]"
		d = d+1
	else
		formspec = formspec .."image[5,3.6;1,1;tutorial_0.png]"
	end
	if red > 9 then
		red_max = 20
		formspec = formspec .."image[2,4.9;1,1;trophy_red_bronze.png]"
		d = d+1
	else
		formspec = formspec .."image[2,4.9;1,1;tutorial_0.png]"
	end
	if red > 19 then
		red_max = 50
		formspec = formspec .."image[3,4.9;1,1;trophy_red_silver.png]"
		d = d+1
	else
		formspec = formspec .."image[3,4.9;1,1;tutorial_0.png]"
	end
	if red > 49 then
		red_max = 100
		formspec = formspec .."image[4,4.9;1,1;trophy_red_gold.png]"
		d = d+1
	else
		formspec = formspec .."image[4,4.9;1,1;tutorial_0.png]"
	end
	if red > 99 then
		formspec = formspec .."image[5,4.9;1,1;trophy_red_platin.png]"
		d = d+1
	else
		formspec = formspec .."image[5,4.9;1,1;tutorial_0.png]"
	end
	if purple > 9 then
		purple_max = 20
		formspec = formspec .."image[2,6.2;1,1;trophy_purple_bronze.png]"
		d = d+1
	else
		formspec = formspec .."image[2,6.2;1,1;tutorial_0.png]"
	end
	if purple > 19 then
		purple_max = 50
		formspec = formspec .."image[3,6.2;1,1;trophy_purple_silver.png]"
		d = d+1
	else
		formspec = formspec .."image[3,6.2;1,1;tutorial_0.png]"
	end
	if purple > 49 then
		purple_max = 100
		formspec = formspec .."image[4,6.2;1,1;trophy_purple_gold.png]"
		d = d+1
	else
		formspec = formspec .."image[4,6.2;1,1;tutorial_0.png]"
	end
	if purple > 99 then
		formspec = formspec .."image[5,6.2;1,1;trophy_purple_platin.png]"
		d = d+1
	else
		formspec = formspec .."image[5,6.2;1,1;tutorial_0.png]"
	end
	if cyan > 9 then
		cyan_max = 20
		formspec = formspec .."image[2,7.5;1,1;trophy_cyan_bronze.png]"
		d = d+1
	else
		formspec = formspec .."image[2,7.5;1,1;tutorial_0.png]"
	end
	if cyan > 19 then
		cyan_max = 50
		formspec = formspec .."image[3,7.5;1,1;trophy_cyan_silver.png]"
		d = d+1
	else
		formspec = formspec .."image[3,7.5;1,1;tutorial_0.png]"
	end
	if cyan > 49 then
		cyan_max = 100
		formspec = formspec .."image[4,7.5;1,1;trophy_cyan_gold.png]"
		d = d+1
	else
		formspec = formspec .."image[4,7.5;1,1;tutorial_0.png]"
	end
	if cyan > 99 then
		formspec = formspec .."image[5,7.5;1,1;trophy_cyan_platin.png]"
		d = d+1
	else
		formspec = formspec .."image[5,7.5;1,1;tutorial_0.png]"
	end
	if d == 24 then
		local trorew = player_inv:get_stack("trorew", 1):get_count()
        if trorew == 0 then
            if player_inv:room_for_item("main", "tutorial:protection_schluessel1") == true then
                player_inv:add_item("main", "tutorial:protection_schluessel1")
                player_inv:add_item("trorew", "default:dirt")
				minetest.chat_send_player(player:get_player_name(), "You have 24 trophys and get the 'Protection Key Lv.1'.")
            end
        end
	end
	formspec = formspec
	.."label[0,1.2;Green Trophys]"
	.."label[0,2.5;Blue Trophys]"
	.."label[0,3.8;Yellow Trophys]"
	.."label[0,5.1;Red Trophys]"
	.."label[0,6.4;Purple Trophys]"
	.."label[0,7.7;Cyan Trophys]"
	.."label[6.5,1.2;"..green.."/"..green_max.."]"
	.."label[6.5,2.5;"..blue.."/"..blue_max.."]"
	.."label[6.5,3.8;"..yellow.."/"..yellow_max.."]"
	.."label[6.5,5.1;"..red.."/"..red_max.."]"
	.."label[6.5,6.4;"..purple.."/"..purple_max.."]"
	.."label[6.5,7.7;"..cyan.."/"..cyan_max.."]"
	.."label[7,0;"..d.."/24]"
	player_inv:set_stack("trtr", 1 , "default:dirt "..d)
	return formspec
end

function treasures_formspec(player)
	local player_inv = player:get_inventory()
    player_inv:set_size("tata", 1)
    local a = player_inv:get_stack("r1248", 1):get_count()
    local b = player_inv:get_stack("r1248", 2):get_count()
    local c = player_inv:get_stack("r1248", 3):get_count()
    local e = player_inv:get_stack("r1248", 4):get_count()
    local f = player_inv:get_stack("r1248", 5):get_count()
    local g = player_inv:get_stack("r1248", 6):get_count()
    local d = 0
	formspec = "button[0,0;2,0.5;back;Back]"
	.."label[2.3,1.2;Green Treasure]"
	.."label[2.3,2.5;Blue Treasure]"
	.."label[2.3,3.8;Yellow Treasure]"
	.."label[2.3,5.1;Red Treasure]"
	.."label[2.3,6.4;Purple Treasure]"
	.."label[2.3,7.7;Cyan Treasure]"
	if e == 1 then
		formspec = formspec .."image[4.3,1;1,1;tutorial_1248_helmet_green.png]"
		d = d+1
	else
		formspec = formspec .."image[4.3,1;1,1;tutorial_0.png]"
	end
	if b == 1 then
		formspec = formspec .."image[4.3,2.3;1,1;tutorial_1248_helmet_blue.png]"
		d = d+1
	else
		formspec = formspec .."image[4.3,2.3;1,1;tutorial_0.png]"
	end
	if f == 1 then
		formspec = formspec .."image[4.3,3.6;1,1;tutorial_1248_helmet_yellow.png]"
		d = d+1
	else
		formspec = formspec .."image[4.3,3.6;1,1;tutorial_0.png]"
	end
	if a == 1 then
		formspec = formspec .."image[4.3,4.9;1,1;tutorial_1248_helmet_rot.png]"
		d = d+1
	else
		formspec = formspec .."image[4.3,4.9;1,1;tutorial_0.png]"
	end
	if g == 1 then
		formspec = formspec .."image[4.3,6.2;1,1;tutorial_1248_helmet_purple.png]"
		d = d+1
	else
		formspec = formspec .."image[4.3,6.2;1,1;tutorial_0.png]"
	end
	if c == 1 then
		formspec = formspec .."image[4.3,7.5;1,1;tutorial_1248_helmet_cyan.png]"
		d = d+1
	else
		formspec = formspec .."image[4.3,7.5;1,1;tutorial_0.png]"
	end
	formspec = formspec .."label[7,0;"..d.."/6]"
	if d == 6 then
        local trerew = player_inv:get_stack("trerew", 1):get_count()
        if trerew == 0 then
            if player_inv:room_for_item("main", "tutorial:legendstick") == true then
                player_inv:add_item("main", "tutorial:legendstick")
                player_inv:add_item("trerew", "default:dirt")
				minetest.chat_send_player(player:get_player_name(), "You have 6 treasures and get the 'Legend Stick'.")
            end
        end
	end
	player_inv:set_stack("tata", 1 , "default:dirt "..d)
	return formspec
end

function medallions_formspec(player)
    local player_inv = player:get_inventory()
    player_inv:set_size("medallionred", 9)
    player_inv:set_size("meme", 1)
    local k = 0
    local p = 0
	formspec = "button[0,0;2,0.5;back;Back]"
		.."label[2.3,1.2;Green Medallion]"
        .."label[2.3,2.4;Blue Medallion]"
        .."label[2.3,3.6;Yellow Medallion]"
		.."label[2.3,4.8;Red Medallion]"
        .."label[2.3,6.0;Purple Medallion]"
        .."label[2.3,7.2;Cyan Medallion]"
        .."label[2.3,8.4;Gray Medallion]"
	for i=1,9,1 do
        if player_inv:get_stack("medalliongreen", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[4.3,1;1,1;medallion_green.png]"
    else
        formspec = formspec .."image[4.3,1;1,1;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medallionblue", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[4.3,2.2;1,1;medallion_blue.png]"
    else
        formspec = formspec .."image[4.3,2.2;1,1;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medallionyellow", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[4.3,3.4;1,1;medallion_yellow.png]"
    else
        formspec = formspec .."image[4.3,3.4;1,1;tutorial_0.png]"
    end
	k = 0
	for i=1,9,1 do
        if player_inv:get_stack("medallionred", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[4.3,4.6;1,1;medallion_red.png]"
    else
        formspec = formspec .."image[4.3,4.6;1,1;tutorial_0.png]"
    end
	k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medallionpurple", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[4.3,5.8;1,1;medallion_purple.png]"
    else
        formspec = formspec .."image[4.3,5.8;1,1;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medallioncyan", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[4.3,7;1,1;medallion_cyan.png]"
    else
        formspec = formspec .."image[4.3,7;1,1;tutorial_0.png]"
    end
    k = 0
    for i=1,9,1 do
        if player_inv:get_stack("medalliongray", i):get_count() == 0 then
            k = 1
        end
    end
    if k == 0 then
        p = p+1
        formspec = formspec .."image[4.3,8.2;1,1;medallion_gray.png]"
    else
        formspec = formspec .."image[4.3,8.2;1,1;tutorial_0.png]"
    end
    formspec = formspec .."label[7,0;"..p.."/7]"
    if p == 7 then
        local medrew = player_inv:get_stack("medrew", 1):get_count()
        if medrew == 0 then
            if player_inv:room_for_item("main", "tutorial:crystal_schluessel") == true then
                player_inv:add_item("main", "tutorial:crystal_schluessel")
                player_inv:add_item("medrew", "default:dirt")
				minetest.chat_send_player(player:get_player_name(), "You have 7 medallions and get the 'Crystal Key'.")
            end
        end
    end
    player_inv:set_stack("meme", 1 , "default:dirt "..p)
	return formspec
end


function artifacts_formspec(player)
	local player_inv = player:get_inventory()
    player_inv:set_size("afaf", 5)
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
	formspec = "button[0,0;2,0.5;back;Back]"
		.."label[3.1,3.6;Green Artifacts]"
        .."label[3.1,2.4;Blue Artifacts]"
        .."label[3.1,4.8;Yellow Artifacts]"
		.."label[3.1,1.2;Red Artifacts]"
        .."label[3.1,6.0;Purple Artifacts]"
        .."label[3.1,7.2;Cyan Artifacts]"
        .."label[3.1,8.7;Grey Artifacts]"
	for j=1,12,1 do
		for i=1,5,1 do
			local ar = player_inv:get_stack("art"..j, i):get_count()
			if ar == 1 and j == 1 then
				formspec = formspec .."image["..(-0.6+i*0.6)..",1.2;0.6,0.6;artifacts_gruen1.png]"
				af = af+1
			elseif ar == 1 and j == 2 then
				formspec = formspec .."image["..(4.2+i*0.6)..",1.2;0.6,0.6;artifacts_gruen2.png]"
				af = af+1
			elseif ar == 1 and j == 3 then
				formspec = formspec .."image["..(-0.6+i*0.6)..",2.4;0.6,0.6;artifacts_blau1.png]"
				af = af+1
			elseif ar == 1 and j == 4 then
				formspec = formspec .."image["..(4.2+i*0.6)..",2.4;0.6,0.6;artifacts_blau2.png]"
				af = af+1
			elseif ar == 1 and j == 5 then
				formspec = formspec .."image["..(-0.6+i*0.6)..",3.6;0.6,0.6;artifacts_gelb1.png]"
				af = af+1
			elseif ar == 1 and j == 6 then
				formspec = formspec .."image["..(4.2+i*0.6)..",3.6;0.6,0.6;artifacts_gelb2.png]"
				af = af+1
			elseif ar == 1 and j == 7 then
				formspec = formspec .."image["..(-0.6+i*0.6)..",4.8;0.6,0.6;artifacts_rot1.png]"
				af = af+1
			elseif ar == 1 and j == 8 then
				formspec = formspec .."image["..(4.2+i*0.6)..",4.8;0.6,0.6;artifacts_rot2.png]"
				af = af+1
			elseif ar == 1 and j == 9 then
				formspec = formspec .."image["..(-0.6+i*0.6)..",6;0.6,0.6;artifacts_lila1.png]"
				af = af+1
			elseif ar == 1 and j == 10 then
				formspec = formspec .."image["..(4.2+i*0.6)..",6;0.6,0.6;artifacts_lila2.png]"
				af = af+1
			elseif ar == 1 and j == 11 then
				formspec = formspec .."image["..(-0.6+i*0.6)..",7.2;0.6,0.6;artifacts_cyan1.png]"
				af = af+1
			elseif ar == 1 and j == 12 then
				formspec = formspec .."image["..(4.2+i*0.6)..",7.2;0.6,0.6;artifacts_cyan2.png]"
				af = af+1
			else
				if j == 1 or j == 3 or j == 5 or j == 7 or j == 9 or j == 11 then
					formspec = formspec .."image["..(-0.6+i*0.6)..","..(math.ceil((j/2))*1.2)..";0.6,0.6;tutorial_0.png]"
				else
					formspec = formspec .."image["..(4.2+i*0.6)..","..(math.ceil((j/2))*1.2)..";0.6,0.6;tutorial_0.png]"
				end
			end
		end
	end
	for i=1,11,1 do
		local ar = player_inv:get_stack("art13", i):get_count()
		if ar == 1 then
			formspec = formspec .."image["..(i*0.6)..",8.2;0.6,0.6;artifacts_grau"..i..".png]"
			af = af+1
		else
			formspec = formspec .."image["..(i*0.6)..",8.2;0.6,0.6;tutorial_0.png]"
		end
	end
	formspec = formspec .."label[7,0;"..af.."/71]"
	if af == 71 then
		local artrew = player_inv:get_stack("artrew", 1):get_count()
		if artrew == 0 then
			if player_inv:room_for_item("main", "tutorial:knight_schluessel") == true then
				player_inv:add_item("main", "tutorial:knight_schluessel")
				player_inv:add_item("artrew", "default:dirt")
				minetest.chat_send_player(player:get_player_name(), "You have 71 artifacts and get the 'Knight Key'.")
			end
		end
	end
	player_inv:set_stack("afaf", 1 , "default:dirt "..af)
	return formspec
end

function gems_formspec(player)
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
	formspec = "button[0,0;2,0.5;back;Back]"
		.."label[0,1.4;Home privilege:]"
		.."label[0,2.4;Fast privilege:]"
        if g1 == "tutorial:magic_gem1" then
			formspec = formspec.."image[2.5,1.25;1,1;tutorial_gem1.png]"
		else
			formspec = formspec.."list[current_player;gem;2.5,1.25;1,1;]"
			.."image[2.5,1.25;1,1;tutorial_gem1_background.png]"
		end
		if g2 == "tutorial:magic_gem2" then
			formspec = formspec.."image[3.5,1.25;1,1;tutorial_gem2.png]"
		else
			formspec = formspec.."list[current_player;gem;3.5,1.25;1,1;1]"
			.."image[3.5,1.25;1,1;tutorial_gem2_background.png]"
		end
		if g3 == "tutorial:magic_gem3" then
			formspec = formspec.."image[4.5,1.25;1,1;tutorial_gem3.png]"
		else
			formspec = formspec.."list[current_player;gem;4.5,1.25;1,1;2]"
			.."image[4.5,1.25;1,1;tutorial_gem3_background.png]"
		end
		if g4 == "tutorial:magic_gem4" then
			formspec = formspec.."image[5.5,1.25;1,1;tutorial_gem4.png]"
		else
			formspec = formspec.."list[current_player;gem;5.5,1.25;1,1;3]"
			.."image[5.5,1.25;1,1;tutorial_gem4_background.png]"
		end
		if g5 == "tutorial:magic_gem5" then
			formspec = formspec.."image[6.5,1.25;1,1;tutorial_gem5.png]"
		else
			formspec = formspec.."list[current_player;gem;6.5,1.25;1,1;4]"
			.."image[6.5,1.25;1,1;tutorial_gem5_background.png]"
		end
        if g1 == "tutorial:magic_gem1" and g2 == "tutorial:magic_gem2" and g3 == "tutorial:magic_gem3" and g4 == "tutorial:magic_gem4" and g5 == "tutorial:magic_gem5" then
			if g21 == "tutorial:magic_gem1" then
				formspec = formspec.."image[2.5,2.25;1,1;tutorial_gem1.png]"
			else
				formspec = formspec.."list[current_player;2gem;2.5,2.25;1,1;]"
				.."image[2.5,2.25;1,1;tutorial_gem1_background.png]"
			end
			if g22 == "tutorial:magic_gem2" then
				formspec = formspec.."image[3.5,2.25;1,1;tutorial_gem2.png]"
			else
				formspec = formspec.."list[current_player;2gem;3.5,2.25;1,1;1]"
				.."image[3.5,2.25;1,1;tutorial_gem2_background.png]"
			end
			if g23 == "tutorial:magic_gem3" then
				formspec = formspec.."image[4.5,2.25;1,1;tutorial_gem3.png]"
			else
				formspec = formspec.."list[current_player;2gem;4.5,2.25;1,1;2]"
				.."image[4.5,2.25;1,1;tutorial_gem3_background.png]"
			end
			if g24 == "tutorial:magic_gem4" then
				formspec = formspec.."image[5.5,2.25;1,1;tutorial_gem4.png]"
			else
				formspec = formspec.."list[current_player;2gem;5.5,2.25;1,1;3]"
				.."image[5.5,2.25;1,1;tutorial_gem4_background.png]"
			end
			if g25 == "tutorial:magic_gem5" then
				formspec = formspec.."image[6.5,2.25;1,1;tutorial_gem5.png]"
			else
				formspec = formspec.."list[current_player;2gem;6.5,2.25;1,1;4]"
				.."image[6.5,2.25;1,1;tutorial_gem5_background.png]"
			end

			formspec = formspec.."listring[current_player;main]"
			.."listring[current_player;2gem]"
		else
			formspec = formspec.."listring[current_player;main]"
			.."listring[current_player;gem]"
        end
	return formspec
end

function mobs_positions_formspec(player)
    local player_inv = player:get_inventory()
	local player_meta = player:get_meta()
    local dog = ""
    local cat = ""
    local sheep = ""
    local dragon = ""
    local fox = ""
    local tortoise = ""
    local knight = ""
    if player_meta:contains("dogx") then
        dog = player_meta:get("dogx")..", "..player_meta:get("dogy")..", "..player_meta:get("dogz")
    end
    if player_meta:contains("catx") then
        cat = player_meta:get("catx")..", "..player_meta:get("caty")..", "..player_meta:get("catz")
    end
    if player_meta:contains("sheepx") then
        sheep = player_meta:get("sheepx")..", "..player_meta:get("sheepy")..", "..player_meta:get("sheepz")
    end
    if player_meta:contains("dragonx") then
        dragon = player_meta:get("dragonx")..", "..player_meta:get("dragony")..", "..player_meta:get("dragonz")
    end
    if player_meta:contains("foxx") then
        fox = player_meta:get("foxx")..", "..player_meta:get("foxy")..", "..player_meta:get("foxz")
    end
    if player_meta:contains("tortoisex") then
        tortoise = player_meta:get("tortoisex")..", "..player_meta:get("tortoisey")..", "..player_meta:get("tortoisez")
    end
    if player_meta:contains("knightx") then
        knight = player_meta:get("knightx")..", "..player_meta:get("knighty")..", "..player_meta:get("knightz")
    end
	formspec = "button[0,0;2,0.5;back;Back]"
        .."label[0,1;Dog pos: "..dog.."]"
        .."label[0,1.5;Cat pos: "..cat.."]"
        .."label[0,2.0;Sheep pos: "..sheep.."]"
        .."label[0,2.5;Dragon pos: "..dragon.."]"
        .."label[0,3.0;Fox pos: "..fox.."]"
        .."label[0,3.5;Tortoise pos: "..tortoise.."]"
        .."label[0,4.0;1248 Knight pos: "..knight.."]"
	return formspec
end

function anniversarys_formspec(player)
	local player_inv = player:get_inventory()
	local year = player_inv:get_stack("year", 1):get_count()
    local year2 = player_inv:get_stack("year", 2):get_count()
	local year3 = player_inv:get_stack("year", 3):get_count()
	local year4 = player_inv:get_stack("year", 4):get_count()
	local year5 = player_inv:get_stack("year", 5):get_count()
	local year6 = player_inv:get_stack("year", 6):get_count()
	local year7 = player_inv:get_stack("year", 7):get_count()
	local year8 = player_inv:get_stack("year", 8):get_count()
	local year9 = player_inv:get_stack("year", 9):get_count()
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
	if year5 == 1 then
        d = d+1
    end
	if year6 == 1 then
        d = d+1
    end
	if year7 == 1 then
        d = d+1
    end
	if year8 == 1 then
        d = d+1
    end
	if year9 == 1 then
        d = d+1
    end
    formspec = "button[0,0;2,0.5;back;Back]"
        .."label[0.8,1.1;One Year Trophy]"
        .."label[0.8,1.9;Two Year Trophy]"
		.."label[0.8,2.7;Three Year Trophy]"
		.."label[0.8,3.5;Four Year Trophy]"
		.."label[0.8,4.3;Five Year Trophy]"
		.."label[0.8,5.1;Six Year Trophy]"
		.."label[0.8,5.9;Seven Year Trophy]"
		.."label[0.8,6.7;Eight Year Trophy]"
		.."label[0.8,7.5;Nine Year Trophy]"
        .."label[7,0;"..d.."/9]"
        .."image[0,1;0.8,0.8;tutorial_"..year..".png]"
        .."image[0,1.8;0.8,0.8;tutorial_"..year2..".png]"
		.."image[0,2.6;0.8,0.8;tutorial_"..year3..".png]"
		.."image[0,3.4;0.8,0.8;tutorial_"..year4..".png]"
		.."image[0,4.2;0.8,0.8;tutorial_"..year5..".png]"
		.."image[0,5.0;0.8,0.8;tutorial_"..year6..".png]"
		.."image[0,5.8;0.8,0.8;tutorial_"..year7..".png]"
		.."image[0,6.6;0.8,0.8;tutorial_"..year8..".png]"
		.."image[0,7.4;0.8,0.8;tutorial_"..year9..".png]"
	return formspec
end

function xp_guide_formspec(player)
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
	local xp_bronze_o = io.open(minetest.get_worldpath().."/"..name.."_experience_bronze", "r")
	local xp_bronze = xp_bronze_o:read("*l")
	local xp_silver_o = io.open(minetest.get_worldpath().."/"..name.."_experience_silver", "r")
	local xp_silver = xp_silver_o:read("*l")
	player_inv:set_size("feld2", 1)
	player_inv:set_size("bronze_key", 1)
	local feld2_name = player:get_inventory():get_stack("feld2",1):get_name()
	local bronze_key_name = player:get_inventory():get_stack("bronze_key",1):get_name()
	formspec = "button[0,0;2,0.5;back;Back]"
		.."label[0.7,1.05;Green: "..xp_gruen.."xp]"
		.."label[0.7,1.65;Red: "..xp_rot.."xp]"
		.."label[0.7,2.25;Blue: "..xp_blau.."xp]"
		.."label[0.7,2.85;Gray: "..xp_grau.."xp]"
        .."label[3.7,1.05;Yellow: "..xp_gelb.."xp]"
        .."label[3.7,1.65;Cyan: "..xp_cyan.."xp]"
		.."label[3.7,2.25;Bronze: "..xp_bronze.."xp]"
		.."label[3.7,2.85;Silver: "..xp_silver.."xp]"
		.."label[6,1.8;Level Key]"
		.."label[5.9,3.2;Bronze Key]"
		.."image_button[0,1;0.7,0.7;tutorial_info.png;xp_gru;]"
		.."image_button[0,1.6;0.7,0.7;tutorial_info.png;xp_r_b;]"
		.."image_button[0,2.2;0.7,0.7;tutorial_info.png;xp_r_b;]"
		.."image_button[0,2.8;0.7,0.7;tutorial_info.png;xp_gra;]"
		.."image_button[3,1;0.7,0.7;tutorial_info.png;xp_gel;]"
		.."image_button[3,1.6;0.7,0.7;tutorial_info.png;xp_cya;]"
		.."image_button[3,2.2;0.7,0.7;tutorial_info.png;xp_bro;]"
		.."image_button[3,2.8;0.7,0.7;tutorial_info.png;xp_sil;]"
		if feld2_name == "tutorial:level_schluessel" and remove_list then
			formspec = formspec.."image[6,1;1,1;tutorial_level_schluessel.png]"
		else
			formspec = formspec.."image[6,1;1,1;tutorial_background_schluessel.png]"
			.."list[current_player;feld2;6,1;1,1;]"
			.."listring[current_player;main]"
        	.."listring[current_player;feld2]"
		end
		if bronze_key_name == "tutorial:bronzekey" and remove_list then
			formspec = formspec.."image[6,2.4;1,1;tutorial_bronze_schluessel.png]"
		else
			formspec = formspec.."image[6,2.4;1,1;tutorial_background_schluessel.png]"
			.."list[current_player;bronze_key;6,2.4;1,1;]"
			.."listring[current_player;main]"
        	.."listring[current_player;bronze_key]"
		end

	return formspec
end

function xp_guide_formspec_gra(player)
	formspec = "button[0,0;2,0.5;xp_gui;Back]"
		.."textlist[0.9,1;6,7.3;xp_gra;Lv.1 = 5xp,Lv.2 = 10xp,Lv.3 = 15xp,Lv.4 = 20xp,Lv.5 = 25xp,Lv.6 = 30xp,Lv.7 = 35xp,Lv.8 = 40xp,Lv.9 = 45xp,Lv.10 = 50xp,Lv.11 = 60xp,Lv.12 = 70xp,Lv.13 = 80xp,Lv.14 = 90xp,Lv.15 = 100xp,Lv.16 = 110xp,Lv.17 = 120xp,Lv.18 = 130xp,Lv.19 = 140xp,Lv.20 = 150xp,Lv.21 = 165xp,Lv.22 = 180xp,Lv.23 = 195xp,Lv.24 = 210xp,Lv.25 = 225xp,Lv.26 = 240xp,Lv.27 = 255xp,Lv.28 = 270xp,Lv.29 = 285xp,Lv.30 = 300xp,Lv.31 = 320xp,Lv.32 = 340xp,Lv.33 = 360xp,Lv.34 = 380xp,Lv.35 = 400xp,Lv.36 = 420xp,Lv.37 = 440xp,Lv.38 = 460xp,Lv.39 = 480xp,Lv.40 = 500xp,Lv.41 = 525xp,Lv.42 = 550xp,Lv.43 = 575xp,Lv.44 = 600xp,Lv.45 = 625xp,Lv.46 = 650xp,Lv.47 = 675xp,Lv.48 = 700xp,Lv.49 = 725xp,Lv.50 = 750xp,Lv.51 = 780xp,Lv.52 = 810xp,Lv.53 = 840xp,Lv.54 = 870xp,Lv.55 = 900xp,Lv.56 = 930xp,Lv.57 = 960xp,Lv.58 = 990xp,Lv.59 = 1020xp,Lv.60 = 1050xp,Lv.61 = 1085xp,Lv.62 = 1120xp,Lv.63 = 1155xp,Lv.64 = 1190xp,Lv.65 = 1225xp,Lv.66 = 1260xp,Lv.67 = 1295xp,Lv.68 = 1330xp,Lv.69 = 1365xp,Lv.70 = 1400xp,Lv.71 = 1440xp,Lv.72 = 1480xp,Lv.73 = 1520xp,Lv.74 = 1560xp,Lv.75 = 1600xp,Lv.76 = 1640xp,Lv.77 = 1680xp,Lv.78 = 1720xp,Lv.79 = 1760xp,Lv.80 = 1800xp,Lv.81 = 1845xp,Lv.82 = 1890xp,Lv.83 = 1935xp,Lv.84 = 1980xp,Lv.85 = 2025xp,Lv.86 = 2070xp,Lv.87 = 2115xp,Lv.88 = 2160xp,Lv.89 = 2205xp,Lv.90 = 2250xp,Lv.91 = 2300xp,Lv.92 = 2350xp,Lv.93 = 2400xp,Lv.94 = 2450xp,Lv.95 = 2500xp,Lv.96 = 2550xp,Lv.97 = 2600xp,Lv.98 = 2650xp,Lv.99 = 2700xp,Lv.100 = 2750xp,Lv.MAX = 3200xp]"
	return formspec
end
function xp_guide_formspec_r_b(player)
	formspec = "button[0,0;2,0.5;xp_gui;Back]"
		.."textlist[0.9,1;6,7.3;xp_r_b;Lv.1 = 1xp,Lv.2 = 3xp,Lv.3 = 6xp,Lv.4 = 10xp,Lv.5 = 15xp,Lv.6 = 21xp,Lv.7 = 28xp,Lv.8 = 36xp,Lv.9 = 45xp,Lv.10 = 55xp,Lv.11 = 66xp,Lv.12 = 78xp,Lv.13 = 91xp,Lv.14 = 105xp,Lv.15 = 120xp,Lv.16 = 136xp,Lv.17 = 153xp,Lv.18 = 171xp,Lv.19 = 190xp,Lv.20 = 210xp,Lv.MAX = 250xp]"
	return formspec
end
function xp_guide_formspec_gru(player)
	formspec = "button[0,0;2,0.5;xp_gui;Back]"
		.."textlist[0.9,1;6,7.3;xp_gru;Lv.1 = 10xp,Lv.2 = 20xp,Lv.3 = 30xp,Lv.4 = 40xp,Lv.5 = 50xp,Lv.6 = 70xp,Lv.7 = 90xp,Lv.8 = 110xp,Lv.9 = 130xp,Lv.10 = 150xp,Lv.11 = 180xp,Lv.12 = 210xp,Lv.13 = 240xp,Lv.14 = 270xp,Lv.15 = 300xp,Lv.16 = 340xp,Lv.17 = 380xp,Lv.18 = 420xp,Lv.19 = 460xp,Lv.20 = 500xp,Lv.21 = 550xp,Lv.22 = 600xp,Lv.23 = 650xp,Lv.24 = 700xp,Lv.25 = 750xp,Lv.26 = 810xp,Lv.27 = 870xp,Lv.28 = 930xp,Lv.29 = 990xp,Lv.30 = 1050xp,Lv.31 = 1120xp,Lv.32 = 1190xp,Lv.33 = 1260xp,Lv.34 = 1330xp,Lv.35 = 1400xp,Lv.36 = 1480xp,Lv.37 = 1560xp,Lv.38 = 1640xp,Lv.39 = 1720xp,Lv.40 = 1800xp,Lv.41 = 1890xp,Lv.42 = 1980xp,Lv.43 = 2070xp,Lv.44 = 2160xp,Lv.45 = 2250xp,Lv.46 = 2350xp,Lv.47 = 2450xp,Lv.48 = 2550xp,Lv.49 = 2650xp,Lv.50 = 2750xp,Lv.51 = 2860xp,Lv.52 = 2970xp,Lv.53 = 3080xp,Lv.54 = 3190xp,Lv.55 = 3300xp,Lv.56 = 3420xp,Lv.57 = 3540xp,Lv.58 = 3660xp,Lv.59 = 3780xp,Lv.60 = 3900xp,Lv.61 = 4030xp,Lv.62 = 4160xp,Lv.63 = 4290xp,Lv.64 = 4420xp,Lv.65 = 4550xp,Lv.66 = 4690xp,Lv.67 = 4830xp,Lv.68 = 4970xp,Lv.69 = 5110xp,Lv.70 = 5250xp,Lv.71 = 5400xp,Lv.72 = 5550xp,Lv.73 = 5700xp,Lv.74 = 5850xp,Lv.75 = 6000xp,Lv.76 = 6160xp,Lv.77 = 6320xp,Lv.78 = 6480xp,Lv.79 = 6640xp,Lv.80 = 6800xp,Lv.81 = 6970xp,Lv.82 = 7140xp,Lv.83 = 7310xp,Lv.84 = 7480xp,Lv.85 = 7650xp,Lv.86 = 7830xp,Lv.87 = 8010xp,Lv.88 = 8190xp,Lv.89 = 8370xp,Lv.90 = 8550xp,Lv.91 = 8740xp,Lv.92 = 8930xp,Lv.93 = 9120xp,Lv.94 = 9310xp,Lv.95 = 9500xp,Lv.96 = 9700xp,Lv.97 = 9900xp,Lv.98 = 10100xp,Lv.99 = 10300xp,Lv.100 = 10500xp,Lv.MAX = 11950xp]"
	return formspec
end
function xp_guide_formspec_gel(player)
	formspec = "button[0,0;2,0.5;xp_gui;Back]"
		.."textlist[0.9,1;6,7.3;xp_gel;Lv.1 = 1xp,Lv.2 = 2xp,Lv.3 = 3xp,Lv.4 = 4xp,Lv.5 = 5xp,Lv.6 = 6xp,Lv.7 = 7xp,Lv.8 = 8xp,Lv.9 = 9xp,Lv.10 = 10xp,Lv.11 = 12xp,Lv.12 = 14xp,Lv.13 = 16xp,Lv.14 = 18xp,Lv.15 = 20xp,Lv.16 = 22xp,Lv.17 = 24xp,Lv.18 = 26xp,Lv.19 = 28xp,Lv.20 = 30xp,Lv.21 = 33xp,Lv.22 = 36xp,Lv.23 = 39xp,Lv.24 = 42xp,Lv.25 = 45xp,Lv.26 = 48xp,Lv.27 = 51xp,Lv.28 = 54xp,Lv.29 = 57xp,Lv.30 = 60xp,Lv.31 = 64xp,Lv.32 = 68xp,Lv.33 = 72xp,Lv.34 = 76xp,Lv.35 = 80xp,Lv.36 = 84xp,Lv.37 = 88xp,Lv.38 = 92xp,Lv.39 = 96xp,Lv.40 = 100xp,Lv.41 = 105xp,Lv.42 = 110xp,Lv.43 = 115xp,Lv.44 = 120xp,Lv.45 = 125xp,Lv.46 = 130xp,Lv.47 = 135xp,Lv.48 = 140xp,Lv.49 = 145xp,Lv.50 = 150xp,Lv.51 = 156xp,Lv.52 = 162xp,Lv.53 = 168xp,Lv.54 = 174xp,Lv.55 = 180xp,Lv.56 = 186xp,Lv.57 = 192xp,Lv.58 = 198xp,Lv.59 = 204xp,Lv.60 = 210xp,Lv.61 = 217xp,Lv.62 = 224xp,Lv.63 = 231xp,Lv.64 = 238xp,Lv.65 = 245xp,Lv.66 = 252xp,Lv.67 = 259xp,Lv.68 = 266xp,Lv.69 = 273xp,Lv.70 = 280xp,Lv.71 = 288xp,Lv.72 = 296xp,Lv.73 = 304xp,Lv.74 = 312xp,Lv.75 = 320xp,Lv.76 = 328xp,Lv.77 = 336xp,Lv.78 = 344xp,Lv.79 = 352xp,Lv.80 = 360xp,Lv.81 = 369xp,Lv.82 = 378xp,Lv.83 = 387xp,Lv.84 = 396xp,Lv.85 = 405xp,Lv.86 = 414xp,Lv.87 = 423xp,Lv.88 = 432xp,Lv.89 = 441xp,Lv.90 = 450xp,Lv.91 = 460xp,Lv.92 = 470xp,Lv.93 = 480xp,Lv.94 = 490xp,Lv.95 = 500xp,Lv.96 = 510xp,Lv.97 = 520xp,Lv.98 = 530xp,Lv.99 = 540xp,Lv.100 = 550xp,Lv.MAX = 600xp]"
	return formspec
end
function xp_guide_formspec_cya(player)
	formspec = "button[0,0;2,0.5;xp_gui;Back]"
		.."textlist[0.9,1;6,7.3;xp_cya;Lv.1 = 1xp,Lv.2 = 4xp,Lv.3 = 9xp,Lv.4 = 16xp,Lv.5 = 25xp,Lv.6 = 36xp,Lv.7 = 49xp,Lv.8 = 64xp,Lv.9 = 81xp,Lv.10 = 100xp,Lv.11 = 121xp,Lv.12 = 144xp,Lv.13 = 169xp,Lv.14 = 196xp,Lv.15 = 225xp,Lv.16 = 256xp,Lv.17 = 289xp,Lv.18 = 324xp,Lv.19 = 361xp,Lv.20 = 400xp,Lv.21 = 441xp,Lv.22 = 484xp,Lv.23 = 529xp,Lv.24 = 576xp,Lv.25 = 625xp,Lv.MAX = 900xp]"
	return formspec
end

function xp_guide_formspec_bro(player)
	formspec = "button[0,0;2,0.5;xp_gui;Back]"
		.."textlist[0.9,1;6,7.3;xp;Lv.1 = 2xp,Lv.2 = 4xp,Lv.3 = 6xp,Lv.4 = 8xp,Lv.5 = 10xp,Lv.6 = 12xp,Lv.7 = 14xp,Lv.8 = 16xp,Lv.9 = 18xp,Lv.10 = 20xp,Lv.11 = 24xp,Lv.12 = 28xp,Lv.13 = 32xp,Lv.14 = 36xp,Lv.15 = 40xp,Lv.16 = 44xp,Lv.17 = 48xp,Lv.18 = 52xp,Lv.19 = 56xp,Lv.20 = 60xp,Lv.21 = 66xp,Lv.22 = 72xp,Lv.23 = 78xp,Lv.24 = 84xp,Lv.25 = 90xp,Lv.26 = 96xp,Lv.27 = 102xp,Lv.28 = 108xp,Lv.29 = 114xp,Lv.30 = 120xp,Lv.31 = 128xp,Lv.32 = 136xp,Lv.33 = 144xp,Lv.34 = 152xp,Lv.35 = 160xp,Lv.36 = 168xp,Lv.37 = 176xp,Lv.38 = 184xp,Lv.39 = 192xp,Lv.40 = 200xp,Lv.41 = 210xp,Lv.42 = 220xp,Lv.43 = 230xp,Lv.44 = 240xp,Lv.45 = 250xp,Lv.46 = 260xp,Lv.47 = 270xp,Lv.48 = 280xp,Lv.49 = 290xp,Lv.50 = 300xp,Lv.51 = 312xp,Lv.52 = 324xp,Lv.53 = 336xp,Lv.54 = 348xp,Lv.55 = 360xp,Lv.56 = 372xp,Lv.57 = 384xp,Lv.58 = 396xp,Lv.59 = 408xp,Lv.60 = 420xp,Lv.61 = 434xp,Lv.62 = 448xp,Lv.63 = 462xp,Lv.64 = 476xp,Lv.65 = 490xp,Lv.66 = 504xp,Lv.67 = 518xp,Lv.68 = 532xp,Lv.69 = 546xp,Lv.70 = 560xp,Lv.71 = 576xp,Lv.72 = 592xp,Lv.73 = 608xp,Lv.74 = 624xp,Lv.75 = 640xp,Lv.76 = 656xp,Lv.77 = 672xp,Lv.78 = 688xp,Lv.79 = 704xp,Lv.80 = 720xp,Lv.81 = 738xp,Lv.82 = 756xp,Lv.83 = 774xp,Lv.84 = 792xp,Lv.85 = 810xp,Lv.86 = 828xp,Lv.87 = 846xp,Lv.88 = 864xp,Lv.89 = 882xp,Lv.90 = 900xp,Lv.91 = 920xp,Lv.92 = 940xp,Lv.93 = 960xp,Lv.94 = 980xp,Lv.95 = 1000xp,Lv.96 = 1020xp,Lv.97 = 1040xp,Lv.98 = 1060xp,Lv.99 = 1080xp,Lv.100 = 1100xp,Lv.MAX = 1500xp]"
	return formspec
end
function xp_guide_formspec_sil(player)
	formspec = "button[0,0;2,0.5;xp_gui;Back]"
		.."textlist[0.9,1;6,7.3;xp;Lv.1 = 4xp,Lv.2 = 8xp,Lv.3 = 12xp,Lv.4 = 16xp,Lv.5 = 20xp,Lv.6 = 24xp,Lv.7 = 28xp,Lv.8 = 32xp,Lv.9 = 36xp,Lv.10 = 40xp,Lv.11 = 48xp,Lv.12 = 56xp,Lv.13 = 64xp,Lv.14 = 72xp,Lv.15 = 80xp,Lv.16 = 88xp,Lv.17 = 96xp,Lv.18 = 104xp,Lv.19 = 112xp,Lv.20 = 120xp,Lv.21 = 132xp,Lv.22 = 144xp,Lv.23 = 156xp,Lv.24 = 168xp,Lv.25 = 180xp,Lv.26 = 192xp,Lv.27 = 204xp,Lv.28 = 216xp,Lv.29 = 228xp,Lv.30 = 240xp,Lv.31 = 256xp,Lv.32 = 272xp,Lv.33 = 288xp,Lv.34 = 304xp,Lv.35 = 320xp,Lv.36 = 336xp,Lv.37 = 352xp,Lv.38 = 368xp,Lv.39 = 384xp,Lv.40 = 400xp]"--,Lv.41 = 210xp,Lv.42 = 220xp,Lv.43 = 230xp,Lv.44 = 240xp,Lv.45 = 250xp,Lv.46 = 260xp,Lv.47 = 270xp,Lv.48 = 280xp,Lv.49 = 290xp,Lv.50 = 300xp,Lv.51 = 312xp,Lv.52 = 324xp,Lv.53 = 336xp,Lv.54 = 348xp,Lv.55 = 360xp,Lv.56 = 372xp,Lv.57 = 384xp,Lv.58 = 396xp,Lv.59 = 408xp,Lv.60 = 420xp,Lv.61 = 434xp,Lv.62 = 448xp,Lv.63 = 462xp,Lv.64 = 476xp,Lv.65 = 490xp,Lv.66 = 504xp,Lv.67 = 518xp,Lv.68 = 532xp,Lv.69 = 546xp,Lv.70 = 560xp,Lv.71 = 576xp,Lv.72 = 592xp,Lv.73 = 608xp,Lv.74 = 624xp,Lv.75 = 640xp,Lv.76 = 656xp,Lv.77 = 672xp,Lv.78 = 688xp,Lv.79 = 704xp,Lv.80 = 720xp,Lv.81 = 738xp,Lv.82 = 756xp,Lv.83 = 774xp,Lv.84 = 792xp,Lv.85 = 810xp,Lv.86 = 828xp,Lv.87 = 846xp,Lv.88 = 864xp,Lv.89 = 882xp,Lv.90 = 900xp,Lv.91 = 920xp,Lv.92 = 940xp,Lv.93 = 960xp,Lv.94 = 980xp,Lv.95 = 1000xp,Lv.96 = 1020xp,Lv.97 = 1040xp,Lv.98 = 1060xp,Lv.99 = 1080xp,Lv.100 = 1100xp,Lv.MAX = 1500xp]"
	return formspec
end

function regnum_craft_formspec(player)
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
        {14,    "normal",   5,  "nyancat:nyancat_rainbow",      "nyancat:nyancat_rainbow",      "nyancat:nyancat_rainbow",      "nyancat:nyancat_rainbow",      "",     "nyancat:nyancat_rainbow",          "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {15,    "normal",   5,  "nyancat:nyancat_rainbow",      "nyancat:nyancat_rainbow",      "nyancat:nyancat_rainbow",      "nyancat:nyancat_rainbow",      "",     "nyancat:nyancat_rainbow",          "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {16,    "normal",   5,  "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "",     "tutorial:megablock1",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {17,    "normal",   5,  "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "",     "tutorial:megablock1",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {18,    "normal",   5,  "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "",     "tutorial:megablock1",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {19,    "normal",   5,  "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "tutorial:megablock1",          "",     "tutorial:megablock1",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {20,    "normal",   5,  "tutorial:megablock2",          "tutorial:megablock2",          "tutorial:megablock2",          "tutorial:megablock2",          "",     "tutorial:megablock2",              "tutorial:thunder",     "tutorial:thunder",     "tutorial:thunder",     0},
        {21,    "normal",   6,  "",                             "",                             "",                             "",                             "tutorial:cloudentverner21",     "",                                 "",                     "",                     "",                     0},
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
        {46,    "normal",   5,  "",                             "",                             "",                             "tutorial:zauberstab9",         "",     "tutorial:swored_zauber9",                                 "",                     "",                     "",                     0},
        {47,    "normal",   5,  "tutorial:whiteblock5",         "tutorial:thunder",             "tutorial:blackblock5",         "tutorial:whiteblock5",         "",     "tutorial:blackblock5",             "tutorial:whiteblock5", "tutorial:thunder",     "tutorial:blackblock5", 0},
        {48,    "normal",   5,  "tutorial:whiteblock6",         "tutorial:thunder",             "tutorial:blackblock6",         "tutorial:whiteblock6",         "",     "tutorial:blackblock6",             "tutorial:whiteblock6", "tutorial:thunder",     "tutorial:blackblock6", 0},
        {49,    "normal",   5,  "tutorial:whiteblock6",         "tutorial:thunder",             "tutorial:blackblock6",         "tutorial:whiteblock6",         "",     "tutorial:blackblock6",             "tutorial:whiteblock6", "tutorial:thunder",     "tutorial:blackblock6", 0},
        {50,    "normal",   5,  "tutorial:uranium8",            "tutorial:uranium8",            "tutorial:uranium8",            "tutorial:uranium8",            "",     "tutorial:uranium8",                "tutorial:uranium8",    "tutorial:uranium8",    "tutorial:uranium8",    0},
        {51,    "normal",   5,  "tutorial:uranium9",            "tutorial:uranium9",            "tutorial:uranium9",            "tutorial:uranium9",            "",     "tutorial:uranium9",                "tutorial:uranium9",    "tutorial:uranium9",    "tutorial:uranium9",    0},
        {52,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     100},
        {53,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     100},
        {54,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     200},
        {55,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     300},
        {56,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     400},
        {57,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     500},
        {58,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     600},
        {59,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     700},
        {60,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     800},
        {61,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     900},
        {62,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1000},
        {63,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1500},
        {64,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1000},
        {65,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1200},
        {66,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1400},
        {67,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1600},
        {68,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1800},
        {69,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2000},
        {70,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2500},
        {71,    "normal",   5,  "gems:ruby_block",              "tutorial:thunder",             "gems:sapphire_block",          "gems:ruby_block",              "",     "gems:sapphire_block",              "gems:ruby_block",      "tutorial:thunder",     "gems:sapphire_block",  0},
        {72,    "normal",   5,  "gems:amethyst_block",          "tutorial:thunder",             "gems:amethyst_block",          "gems:amethyst_block",          "",     "gems:amethyst_block",              "gems:amethyst_block",  "tutorial:thunder",     "gems:amethyst_block",  0},
        {73,    "normal",   5,  "gems:pearl_block",             "tutorial:thunder",             "gems:shadow_block",            "gems:pearl_block",             "",     "gems:shadow_block",                "gems:pearl_block",     "tutorial:thunder",     "gems:shadow_block",    0},
        {74,    "normal",   5,  "gems:emerald_block",           "tutorial:thunder",             "gems:emerald_block",           "gems:emerald_block",           "",     "gems:emerald_block",               "gems:emerald_block",   "tutorial:thunder",     "gems:emerald_block",   0},
        {75,    "normal",   5,  "tutorial:admin",               "tutorial:thunder",             "tutorial:admin",               "tutorial:admin",               "",     "tutorial:admin",                   "tutorial:admin",       "tutorial:thunder",     "tutorial:admin",       0},
        {76,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     200},
        {77,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     400},
        {78,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     600},
        {79,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     800},
        {80,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1000},
        {81,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1200},
        {82,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1400},
        {83,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1600},
        {84,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     1800},
        {85,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2000},
        {86,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2200},
        {87,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2400},
        {88,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2600},
        {89,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     2800},
        {90,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3000},
        {91,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3200},
        {92,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3400},
        {93,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3600},
        {94,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     3800},
        {95,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4000},
        {96,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4200},
        {97,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4400},
        {98,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4600},
        {99,    "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     4800},
        {100,   "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     5000},
        {101,   "cooking",  6,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     10000},
        {102,   "normal",   5,  "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "",     "tutorial:arena_block",             "tutorial:arena_block", "tutorial:arena_block", "tutorial:arena_block", 0},
        {103,   "normal",   5,  "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "",     "tutorial:arena_block",             "tutorial:arena_block", "tutorial:arena_block", "tutorial:arena_block", 0},
        {104,   "normal",   5,  "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "",     "tutorial:arena_block",             "tutorial:arena_block", "tutorial:arena_block", "tutorial:arena_block", 0},
        {105,   "normal",   5,  "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "tutorial:arena_block",         "",     "tutorial:arena_block",             "tutorial:arena_block", "tutorial:arena_block", "tutorial:arena_block", 0},
        {106,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{107,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{108,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{109,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{110,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{111,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{112,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{113,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
        {114,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{115,   "normal",   5,  "",               				"tutorial:titan",               "",               				"tutorial:titan",               "",     "tutorial:titan",                   "",       				"tutorial:titan",       "",       				0},
		{116,   "normal",   1,  "tutorial:bottle5",             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {117,   "normal",   1,  "tutorial:bottle7",             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {118,   "normal",   1,  "tutorial:bottle9",             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {119,   "normal",   1,  "tutorial:bottle11",            "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {120,   "normal",   1,  "tutorial:bottleS1",            "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {121,   "normal",   1,  "tutorial:bottleS3",            "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
        {122,   "normal",   6,  "",                             "",                             "",                             "",                             "tutorial:lilabattleaxe2",     "",                                 "",                     "",                     "",                     0},
        {123,   "normal",   0,  "",                             "",                             "",                             "",                             "",     "",                                 "",                     "",                     "",                     0},
    }
    local re = player_inv:get_stack("recr", 1):get_count()
    local re2 = player_inv:get_stack("recr2", 1):get_count()
	local max_hight = 166
	formspec = "button[0,0;2,0.5;back;Back]"
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
	elseif re2 == 7 then 
		pr = "regnum:wings_"  
	elseif re2 == 8 then 
		pr = "regnum:heart_" 
		max_hight = 21
		if re > 51 then
			re = 51
		end
	end
	if re ~= 0 then
		if lv[re][1] > 115 and lv[re][1] ~= 122 and lv[re][1] ~= 123 then
			formspec = formspec
			.."item_image_button[1.5,0.8;0.8,0.8;"..pr..""..(lv[re][1]-1)..";craft_guide:"..pr..(re-1)..";]"
			.."item_image_button[2.2333,0.8;0.8,0.8;default:grass_1;craft_guide:default:grass_1;]"
			.."item_image_button[2.9666,0.8;0.8,0.8;default:grass_1;craft_guide:default:grass_1;]"
			.."item_image_button[3.7,0.8;0.8,0.8;"..lv[re][4]..";craft_guide:"..lv[re][4]..";]"
			.."item_image_button[1.5,1.5333;0.8,0.8;default:grass_1;craft_guide:default:grass_1;]"
			.."item_image_button[2.2333,1.5333;0.8,0.8;default:grass_1;craft_guide:default:grass_1;]"
			.."item_image_button[2.9666,1.5333;0.8,0.8;default:grass_1;craft_guide:default:grass_1;]"
			.."item_image_button[3.7,1.5333;0.8,0.8;default:grass_1;craft_guide:default:grass_1;]"
			.."item_image_button[1.5,2.2666;0.8,0.8;default:grass_1;craft_guide:default:grass_1;]"
			.."item_image_button[2.2333,2.2666;0.8,0.8;default:grass_1;craft_guide:default:grass_1;]"
			.."item_image_button[2.9666,2.2666;0.8,0.8;default:grass_1;craft_guide:default:grass_1;]"
			.."item_image_button[3.7,2.2666;0.8,0.8;default:grass_1;craft_guide:default:grass_1;]"
			.."item_image_button[1.5,3.00;0.8,0.8;"..lv[re][4]..";craft_guide:"..lv[re][4]..";]"
			.."item_image_button[2.2333,3.00;0.8,0.8;default:grass_1;craft_guide:default:grass_1;]"
			.."item_image_button[2.9666,3.00;0.8,0.8;default:grass_1;craft_guide:default:grass_1;]"
			.."item_image_button[3.7,3.00;0.8,0.8;default:grass_1;craft_guide:default:grass_1;]"
			.."item_image_button[5.5,1.8;1,1;"..pr..""..lv[re][1]..";;]"
		elseif lv[re][1] == 123 then
			formspec = formspec
			.."item_image_button[2.65,0.8;0.7,0.7;tutorial:regnum;craft_guide:tutorial:regnum;]"
			.."item_image_button[2.65,1.375;0.7,0.7;tutorial:bottleSS;craft_guide:tutorial:bottleSS;]"
			.."item_image_button[1.5,1.95;0.7,0.7;tutorial:regnum;craft_guide:tutorial:regnum;]"
			.."item_image_button[2.075,1.95;0.7,0.7;tutorial:bottleSS;craft_guide:tutorial:bottleSS;]"
			.."item_image_button[2.65,1.95;0.7,0.7;"..pr..""..(lv[re][1]-1)..";craft_guide:"..pr..(re-1)..";]"
			.."item_image_button[3.225,1.95;0.7,0.7;tutorial:bottleSS;craft_guide:tutorial:bottleSS;]"
			.."item_image_button[3.8,1.95;0.7,0.7;tutorial:regnum;craft_guide:tutorial:regnum;]"
			.."item_image_button[2.65,2.525;0.7,0.7;tutorial:bottleSS;craft_guide:tutorial:bottleSS;]"
			.."item_image_button[2.65,3.1;0.7,0.7;tutorial:regnum;craft_guide:tutorial:regnum;]"
			.."item_image_button[5.5,1.8;1,1;"..pr..""..lv[re][1]..";;]"
		else
			if lv[re][4] ~= "" or lv[re][3] == 1 then
				if lv[re][3]  == 1 then
					formspec = formspec .."item_image_button[1.5,0.8;1,1;"..pr..""..(lv[re][1]-1)..";craft_guide:"..pr..(re-1)..";]"
				else
					formspec = formspec .."item_image_button[1.5,0.8;1,1;"..lv[re][4]..";craft_guide:"..lv[re][4]..";]"
				end
			end
			if lv[re][5] ~= "" or lv[re][3] == 2 then
				if lv[re][3]  == 2 then
					formspec = formspec .."item_image_button[2.5,0.8;1,1;"..pr..""..(lv[re][1]-1)..";craft_guide:"..pr..(re-1)..";]"
				else
					formspec = formspec .."item_image_button[2.5,0.8;1,1;"..lv[re][5]..";craft_guide:"..lv[re][5]..";]"
				end
			end
			if lv[re][6] ~= "" or lv[re][3] == 3 then
				if lv[re][3]  == 3 then
					formspec = formspec .."item_image_button[3.5,0.8;1,1;"..pr..""..(lv[re][1]-1)..";craft_guide:"..pr..(re-1)..";]"
				else
					formspec = formspec .."item_image_button[3.5,0.8;1,1;"..lv[re][6]..";craft_guide:"..lv[re][6]..";]"
				end
			end
			if lv[re][7] ~= "" or lv[re][3] == 4 then
				if lv[re][3]  == 4 then
					formspec = formspec .."item_image_button[1.5,1.8;1,1;"..pr..""..(lv[re][1]-1)..";craft_guide:"..pr..(re-1)..";]"
				else
					formspec = formspec .."item_image_button[1.5,1.8;1,1;"..lv[re][7]..";craft_guide:"..lv[re][7]..";]"
				end
			end
			if lv[re][8] ~= "" or lv[re][3] == 5 then
				if lv[re][3]  == 5 then
					formspec = formspec .."item_image_button[2.5,1.8;1,1;"..pr..""..(lv[re][1]-1)..";craft_guide:"..pr..(re-1)..";]"
				else
					formspec = formspec .."item_image_button[2.5,1.8;1,1;"..lv[re][8]..";craft_guide:"..lv[re][8]..";]"
				end
			end
			if lv[re][9] ~= "" or lv[re][3] == 6 then
				if lv[re][3]  == 6 then
					formspec = formspec .."item_image_button[3.5,1.8;1,1;"..pr..""..(lv[re][1]-1)..";craft_guide:"..pr..(re-1)..";]"
				else
					formspec = formspec .."item_image_button[3.5,1.8;1,1;"..lv[re][9]..";craft_guide:"..lv[re][9]..";]"
				end
			end
			if lv[re][10] ~= "" or lv[re][3] == 7 then
				if lv[re][3]  == 7 then
					formspec = formspec .."item_image_button[1.5,2.8;1,1;"..pr..""..(lv[re][1]-1)..";craft_guide:"..pr..(re-1)..";]"
				else
					formspec = formspec .."item_image_button[1.5,2.8;1,1;"..lv[re][10]..";craft_guide:"..lv[re][10]..";]"
				end
			end
			if lv[re][11] ~= "" or lv[re][3] == 8 then
				if lv[re][3]  == 8 then
					formspec = formspec .."item_image_button[2.5,2.8;1,1;"..pr..""..(lv[re][1]-1)..";craft_guide:"..pr..(re-1)..";]"
				else
					formspec = formspec .."item_image_button[2.5,2.8;1,1;"..lv[re][11]..";craft_guide:"..lv[re][11]..";]"
				end
			end
			if lv[re][12] ~= "" or lv[re][3] == 9 then
				if lv[re][3]  == 9 then
					formspec = formspec .."item_image_button[3.5,2.8;1,1;"..pr..""..(lv[re][1]-1)..";craft_guide:"..pr..(re-1)..";]"
				else
					formspec = formspec .."item_image_button[3.5,2.8;1,1;"..lv[re][12]..";craft_guide:"..lv[re][12]..";]"
				end
			end
			formspec = formspec .."item_image_button[5.5,1.8;1,1;"..pr..""..lv[re][1]..";;]"
		end
		formspec = formspec .."image[4.5,1.8;1,1;sfinv_crafting_arrow.png]"
		if lv[re][13] ~= 0 then
			formspec = formspec .."image[4.6,1.3;0.5,0.5;craftguide_furnace.png]"
			.."tooltip[4.6,1.3;0.5,0.5;".."Cooking time: "..minetest.colorize("yellow", lv[re][13]).."]"
		end
	end
	local name = player:get_player_name()
	local scroll_value = player_scroll_positions[name] or 0
	formspec = formspec
	.."item_image_button[0,3.9;0.8,0.8;regnum:battleaxe_0;reg1;]"
	.."item_image_button[0.8,3.9;0.8,0.8;regnum:helmet_0;reg2;]"
	.."item_image_button[1.6,3.9;0.8,0.8;regnum:chestplate_0;reg3;]"
	.."item_image_button[2.4,3.9;0.8,0.8;regnum:leggings_0;reg4;]"
	.."item_image_button[3.2,3.9;0.8,0.8;regnum:boots_0;reg5;]"
	.."item_image_button[4,3.9;0.8,0.8;regnum:shield_0;reg6;]"
	.."item_image_button[4.8,3.9;0.8,0.8;regnum:gun_0;reg7;]"
	.."item_image_button[5.6,3.9;0.8,0.8;regnum:wings_0;reg8;]"
	.."item_image_button[6.4,3.9;0.8,0.8;regnum:heart_0;reg9;]"

	.."scrollbaroptions[min=0;max="..max_hight..";smallstep=10]"
	.."scrollbar[7.8,5;0.2,4.2;vertical;scrbar;"..scroll_value.."]"
	.."scroll_container[0,6.1;10.3,4.9;scrbar;vertical;0.05]"
	.."image_button[0,-0.334;0.8,0.8;;recrafta;1]"
	.."image_button[0.8,-0.334;0.8,0.8;;recraftb;2]"
	.."image_button[1.6,-0.334;0.8,0.8;;recraftc;3]"
	.."image_button[2.4,-0.334;0.8,0.8;;recraftd;4]"
	.."image_button[3.2,-0.334;0.8,0.8;;recrafte;5]"
	.."image_button[4.0,-0.334;0.8,0.8;;recraftf;6]"
	.."image_button[4.8,-0.334;0.8,0.8;;recraftg;7]"
	.."image_button[5.6,-0.334;0.8,0.8;;recrafth;8]"
	.."image_button[6.4,-0.334;0.8,0.8;;recrafti;9]"
	.."image_button[7.2,-0.334;0.8,0.8;;recraftj;10]"
	.."image_button[0,0.566;0.8,0.8;;recraftk;11]"
	.."image_button[0.8,0.566;0.8,0.8;;recraftl;12]"
	.."image_button[1.6,0.566;0.8,0.8;;recraftm;13]"
	.."image_button[2.4,0.566;0.8,0.8;;recraftn;14]"
	.."image_button[3.2,0.566;0.8,0.8;;recrafto;15]"
	.."image_button[4,0.566;0.8,0.8;;recraftp;16]"
	.."image_button[4.8,0.566;0.8,0.8;;recraftq;17]"
	.."image_button[5.6,0.566;0.8,0.8;;recraftr;18]"
	.."image_button[6.4,0.566;0.8,0.8;;recrafts;19]"
	.."image_button[7.2,0.566;0.8,0.8;;recraftt;20]"
	.."image_button[0,1.466;0.8,0.8;;recraftaa;21]"
	.."image_button[0.8,1.466;0.8,0.8;;recraftab;22]"
	.."image_button[1.6,1.466;0.8,0.8;;recraftac;23]"
	.."image_button[2.4,1.466;0.8,0.8;;recraftad;24]"
	.."image_button[3.2,1.466;0.8,0.8;;recraftae;25]"
	.."image_button[4,1.466;0.8,0.8;;recraftaf;26]"
	.."image_button[4.8,1.466;0.8,0.8;;recraftag;27]"
	.."image_button[5.6,1.466;0.8,0.8;;recraftah;28]"
	.."image_button[6.4,1.466;0.8,0.8;;recraftai;29]"
	.."image_button[7.2,1.466;0.8,0.8;;recraftaj;30]"
	.."image_button[0,2.366;0.8,0.8;;recraftak;31]"
	.."image_button[0.8,2.366;0.8,0.8;;recraftal;32]"
	.."image_button[1.6,2.366;0.8,0.8;;recraftam;33]"
	.."image_button[2.4,2.366;0.8,0.8;;recraftan;34]"
	.."image_button[3.2,2.366;0.8,0.8;;recraftao;35]"
	.."image_button[4,2.366;0.8,0.8;;recraftap;36]"
	.."image_button[4.8,2.366;0.8,0.8;;recraftaq;37]"
	.."image_button[5.6,2.366;0.8,0.8;;recraftar;38]"
	.."image_button[6.4,2.366;0.8,0.8;;recraftas;39]"
	.."image_button[7.2,2.366;0.8,0.8;;recraftat;40]"
	.."image_button[0,3.266;0.8,0.8;;recraftau;41]"
	.."image_button[0.8,3.266;0.8,0.8;;recraftav;42]"
	.."image_button[1.6,3.266;0.8,0.8;;recraftaw;43]"
	.."image_button[2.4,3.266;0.8,0.8;;recraftax;44]"
	.."image_button[3.2,3.266;0.8,0.8;;recraftay;45]"
	.."image_button[4,3.266;0.8,0.8;;recraftba;46]"
	.."image_button[4.8,3.266;0.8,0.8;;recraftbb;47]"
	.."image_button[5.6,3.266;0.8,0.8;;recraftbc;48]"
	.."image_button[6.4,3.266;0.8,0.8;;recraftbd;49]"
	.."image_button[7.2,3.266;0.8,0.8;;recraftca;50]"
	.."image_button[0,4.166;0.8,0.8;;recraftcb;51]"
	if re2 < 8 then
		formspec = formspec
		.."image_button[0.8,4.166;0.8,0.8;;recraftda;52]"
		.."image_button[1.6,4.166;0.8,0.8;;recraftdb;53]"
		.."image_button[2.4,4.166;0.8,0.8;;recraftdc;54]"
		.."image_button[3.2,4.166;0.8,0.8;;recraftdd;55]"
		.."image_button[4,4.166;0.8,0.8;;recraftde;56]"
		.."image_button[4.8,4.166;0.8,0.8;;recraftdf;57]"
		.."image_button[5.6,4.166;0.8,0.8;;recraftdg;58]"
		.."image_button[6.4,4.166;0.8,0.8;;recraftdh;59]"
		.."image_button[7.2,4.166;0.8,0.8;;recraftdi;60]"
		.."image_button[0,5.066;0.8,0.8;;recraftdj;61]"
		.."image_button[0.8,5.066;0.8,0.8;;recraftdk;62]"
		.."image_button[1.6,5.066;0.8,0.8;;recraftdl;63]"
		.."image_button[2.4,5.066;0.8,0.8;;recraftea;64]"
		.."image_button[3.2,5.066;0.8,0.8;;recrafteb;65]"
		.."image_button[4,5.066;0.8,0.8;;recraftec;66]"
		.."image_button[4.8,5.066;0.8,0.8;;recrafted;67]"
		.."image_button[5.6,5.066;0.8,0.8;;recraftee;68]"
		.."image_button[6.4,5.066;0.8,0.8;;recraftef;69]"
		.."image_button[7.2,5.066;0.8,0.8;;recrafteg;70]"
		.."image_button[0,5.966;0.8,0.8;;recraftfa;71]"
		.."image_button[0.8,5.966;0.8,0.8;;recraftfb;72]"
		.."image_button[1.6,5.966;0.8,0.8;;recraftfc;73]"
		.."image_button[2.4,5.966;0.8,0.8;;recraftfd;74]"
		.."image_button[3.2,5.966;0.8,0.8;;recraftfe;75]"
		.."image_button[4,5.966;0.8,0.8;;recraftga;76]"
		.."image_button[4.8,5.966;0.8,0.8;;recraftgb;77]"
		.."image_button[5.6,5.966;0.8,0.8;;recraftgc;78]"
		.."image_button[6.4,5.966;0.8,0.8;;recraftgd;79]"
		.."image_button[7.2,5.966;0.8,0.8;;recraftge;80]"
		.."image_button[0,6.866;0.8,0.8;;recraftgf;81]"
		.."image_button[0.8,6.866;0.8,0.8;;recraftgg;82]"
		.."image_button[1.6,6.866;0.8,0.8;;recraftgh;83]"
		.."image_button[2.4,6.866;0.8,0.8;;recraftgi;84]"
		.."image_button[3.2,6.866;0.8,0.8;;recraftgj;85]"
		.."image_button[4,6.866;0.8,0.8;;recraftgk;86]"
		.."image_button[4.8,6.866;0.8,0.8;;recraftgl;87]"
		.."image_button[5.6,6.866;0.8,0.8;;recraftgm;88]"
		.."image_button[6.4,6.866;0.8,0.8;;recraftgn;89]"
		.."image_button[7.2,6.866;0.8,0.8;;recraftgo;90]"
		.."image_button[0,7.766;0.8,0.8;;recraftgp;91]"
		.."image_button[0.8,7.766;0.8,0.8;;recraftgq;92]"
		.."image_button[1.6,7.766;0.8,0.8;;recraftgr;93]"
		.."image_button[2.4,7.766;0.8,0.8;;recraftgs;94]"
		.."image_button[3.2,7.766;0.8,0.8;;recraftgt;95]"
		.."image_button[4,7.766;0.8,0.8;;recraftgu;96]"
		.."image_button[4.8,7.766;0.8,0.8;;recraftgv;97]"
		.."image_button[5.6,7.766;0.8,0.8;;recraftgw;98]"
		.."image_button[6.4,7.766;0.8,0.8;;recraftgx;99]"
		.."image_button[7.2,7.766;0.8,0.8;;recraftgy;100]"
		.."image_button[0,8.666;0.8,0.8;;recraftha;101]"
		.."image_button[0.8,8.666;0.8,0.8;;recraftia;102]"
		.."image_button[1.6,8.666;0.8,0.8;;recraftib;103]"
		.."image_button[2.4,8.666;0.8,0.8;;recraftic;104]"
		.."image_button[3.2,8.666;0.8,0.8;;recraftid;105]"
		.."image_button[4,8.666;0.8,0.8;;recraftja;106]"
		.."image_button[4.8,8.666;0.8,0.8;;recraftjb;107]"
		.."image_button[5.6,8.666;0.8,0.8;;recraftjc;108]"
		.."image_button[6.4,8.666;0.8,0.8;;recraftjd;109]"
		.."image_button[7.2,8.666;0.8,0.8;;recraftje;110]"
		.."image_button[0,9.566;0.8,0.8;;recraftjf;111]"
		.."image_button[0.8,9.566;0.8,0.8;;recraftjg;112]"
		.."image_button[1.6,9.566;0.8,0.8;;recraftjh;113]"
		.."image_button[2.4,9.566;0.8,0.8;;recraftji;114]"
		.."image_button[3.2,9.566;0.8,0.8;;recraftjj;115]"
		.."image_button[4,9.566;0.8,0.8;;recraftka;116]"
		.."image_button[4.8,9.566;0.8,0.8;;recraftkb;117]"
		.."image_button[5.6,9.566;0.8,0.8;;recraftkc;118]"
		.."image_button[6.4,9.566;0.8,0.8;;recraftkd;119]"
		.."image_button[7.2,9.566;0.8,0.8;;recraftke;120]"
		.."image_button[0,10.466;0.8,0.8;;recraftkf;121]"
		.."image_button[0.8,10.466;0.8,0.8;;recraftla;122]"
		.."image_button[1.6,10.466;0.8,0.8;;recraftma;MAX]"
	end
	formspec = formspec.."scroll_container_end[]"
	return formspec
end

function xp_items_formspec1(player)
    local player_inv = player:get_inventory()
	player_inv:set_size("xpi01", 24)
	player_inv:set_size("xpi02", 15)
	player_inv:set_size("xpi03", 15)
	player_inv:set_size("xpi04", 15)
	player_inv:set_size("xpi05", 15)
	player_inv:set_size("xpi06", 15)
    for i=1, 15 do
        local stack = player_inv:get_stack("xpi02", i)
		player_inv:add_item("xpi01", stack)
        local stack = player_inv:get_stack("xpi03", i)
		player_inv:add_item("xpi01", stack)
        local stack = player_inv:get_stack("xpi04", i)
		player_inv:add_item("xpi01", stack)
        local stack = player_inv:get_stack("xpi05", i)
		player_inv:add_item("xpi01", stack)
        local stack = player_inv:get_stack("xpi06", i)
		player_inv:add_item("xpi01", stack)

		player_inv:set_stack("xpi02", i, "")
		player_inv:set_stack("xpi03", i, "")
		player_inv:set_stack("xpi04", i, "")
		player_inv:set_stack("xpi05", i, "")
		player_inv:set_stack("xpi06", i, "")
    end
	formspec = "button[0,0;2,0.5;back;Back]"
        .."list[current_player;xpi01;0,1.15;8,3]"
        .."listring[current_player;main]"
	    .."listring[current_player;xpi01]"
        .."label[3.0,0.7;Level Reward Items]"
		.."image_button[4.8,4.45;0.8,0.8;craftguide_next_icon.png;xpi_page2;]"
		.. "label[3.4,4.55;Page 1/9]"
	return formspec
end

function xp_items_formspec2(player)
    local player_inv = player:get_inventory()
	formspec = "button[0,0;2,0.5;back;Back]"
		.."scrollbaroptions[min=0;max=230;smallstep=10]"
		.."scrollbar[7.85,1.15;0.2,2.9;vertical;scrbar2;0]"
		.."scroll_container[0,1.68;10.3,3.35;scrbar2;vertical;0.05]"
		.."list[current_player;xpi1;0,-0.29;8,13]"
		.."scroll_container_end[]"
        .."listring[current_player;main]"
	    .."listring[current_player;xpi1]"
        .."label[3,0.7;Green Level Blocks]"
		.."image_button[4.8,4.45;0.8,0.8;craftguide_next_icon.png;xpi_page3;]"
		.."image_button[2.4,4.45;0.8,0.8;craftguide_prev_icon.png;xpi_page1;]"
		.."label[3.4,4.55;Page 2/9]"
	return formspec
end

function xp_items_formspec3(player)
    local player_inv = player:get_inventory()
	formspec = "button[0,0;2,0.5;back;Back]"
		.."list[current_player;xpi2;0,1.15;8,3]"
		.."listring[current_player;main]"
		.."listring[current_player;xpi2]"
		.."label[3,0.7;Red Level Blocks]"
		.."image_button[4.8,4.45;0.8,0.8;craftguide_next_icon.png;xpi_page4;]"
		.."image_button[2.4,4.45;0.8,0.8;craftguide_prev_icon.png;xpi_page2;]"
		.."label[3.4,4.55;Page 3/9]"
	return formspec
end

function xp_items_formspec4(player)
    local player_inv = player:get_inventory()
	formspec = "button[0,0;2,0.5;back;Back]"
		.."list[current_player;xpi3;0,1.15;8,3]"
		.."listring[current_player;main]"
		.."listring[current_player;xpi3]"
		.."label[3,0.7;Blue Level Blocks]"
		.."image_button[4.8,4.45;0.8,0.8;craftguide_next_icon.png;xpi_page5;]"
		.."image_button[2.4,4.45;0.8,0.8;craftguide_prev_icon.png;xpi_page3;]"
		.."label[3.4,4.55;Page 4/9]"
	return formspec
end

function xp_items_formspec5(player)
    local player_inv = player:get_inventory()
	formspec = "button[0,0;2,0.5;back;Back]"
		.."scrollbaroptions[min=0;max=230;smallstep=10]"
		.."scrollbar[7.85,1.15;0.2,2.9;vertical;scrbar2;0]"
		.."scroll_container[0,1.68;10.3,3.35;scrbar2;vertical;0.05]"
		.."list[current_player;xpi4;0,-0.29;8,13]"
		.."scroll_container_end[]"
        .."listring[current_player;main]"
	    .."listring[current_player;xpi4]"
        .."label[3,0.7;Grey Level Blocks]"
		.."image_button[4.8,4.45;0.8,0.8;craftguide_next_icon.png;xpi_page6;]"
		.."image_button[2.4,4.45;0.8,0.8;craftguide_prev_icon.png;xpi_page4;]"
		.."label[3.4,4.55;Page 5/9]"
	return formspec
end

function xp_items_formspec6(player)
    local player_inv = player:get_inventory()
	formspec = "button[0,0;2,0.5;back;Back]"
		.."scrollbaroptions[min=0;max=230;smallstep=10]"
		.."scrollbar[7.85,1.15;0.2,2.9;vertical;scrbar2;0]"
		.."scroll_container[0,1.68;10.3,3.35;scrbar2;vertical;0.05]"
		.."list[current_player;xpi5;0,-0.29;8,13]"
		.."scroll_container_end[]"
        .."listring[current_player;main]"
	    .."listring[current_player;xpi5]"
        .."label[3,0.7;Yellow Level Blocks]"
		.."image_button[4.8,4.45;0.8,0.8;craftguide_next_icon.png;xpi_page7;]"
		.."image_button[2.4,4.45;0.8,0.8;craftguide_prev_icon.png;xpi_page5;]"
		.."label[3.4,4.55;Page 6/9]"
	return formspec
end

function xp_items_formspec7(player)
    local player_inv = player:get_inventory()
	formspec = "button[0,0;2,0.5;back;Back]"
		.."scrollbaroptions[min=0;max=23;smallstep=10]"
		.."scrollbar[7.85,1.15;0.2,2.9;vertical;scrbar2;0]"
		.."scroll_container[0,1.68;10.3,3.35;scrbar2;vertical;0.05]"
		.."list[current_player;xpi6;0,-0.29;8,13]"
		.."scroll_container_end[]"
        .."listring[current_player;main]"
	    .."listring[current_player;xpi6]"
        .."label[3,0.7;Cyan Level Blocks]"
		.."image_button[4.8,4.45;0.8,0.8;craftguide_next_icon.png;xpi_page8;]"
		.."image_button[2.4,4.45;0.8,0.8;craftguide_prev_icon.png;xpi_page6;]"
		.."label[3.4,4.55;Page 7/9]"
	return formspec
end

function xp_items_formspec8(player)
    local player_inv = player:get_inventory()
	formspec = "button[0,0;2,0.5;back;Back]"
		.."scrollbaroptions[min=0;max=230;smallstep=10]"
		.."scrollbar[7.85,1.15;0.2,2.9;vertical;scrbar2;0]"
		.."scroll_container[0,1.68;10.3,3.35;scrbar2;vertical;0.05]"
		.."list[current_player;xpi7;0,-0.29;8,13]"
		.."scroll_container_end[]"
        .."listring[current_player;main]"
	    .."listring[current_player;xpi7]"
        .."label[3,0.7;Bronze Level Blocks]"
		.."image_button[4.8,4.45;0.8,0.8;craftguide_next_icon.png;xpi_page9;]"
		.."image_button[2.4,4.45;0.8,0.8;craftguide_prev_icon.png;xpi_page7;]"
		.."label[3.4,4.55;Page 8/9]"
	return formspec
end

function xp_items_formspec9(player)
    local player_inv = player:get_inventory()
	formspec = "button[0,0;2,0.5;back;Back]"
		.."image_button[2.4,4.45;0.8,0.8;craftguide_prev_icon.png;xpi_page8;]"
		.."scrollbaroptions[min=0;max=46;smallstep=10]"
		.."scrollbar[7.85,1.15;0.2,2.9;vertical;scrbar2;0]"
		.."scroll_container[0,1.68;10.3,3.35;scrbar2;vertical;0.05]"
		.."list[current_player;xpi8;0,-0.29;8,5]"
		.."scroll_container_end[]"
		.."label[3,0.7;Silver Level Blocks]"
		.."listring[current_player;main]"
	    .."listring[current_player;xpi8]"
		.."label[3.4,4.55;Page 9/9]"
	return formspec
end

function get_level_string(num)
	local level_string = ""
	if num ~= 0 and num ~= "nil" then
		for i=1, num do
			level_string = level_string..i..","
		end
	end
	level_string = string.sub(level_string, 1, -2)
	return level_string
end
function crystals_formspec(player)
	local player_inv = player:get_inventory()
	player_inv:set_size("kri", 8)
	player_inv:set_size("de", 1)
	player_inv:set_size("td", 1)
	player_inv:set_size("tl", 1)
	player_inv:set_size("time", 1)
	player_inv:set_size("t", 1)
    player_inv:set_size("krit", 1)
	local krit_name = player_inv:get_stack("krit", 1):get_name()
	local dl = player_inv:get_stack("de", 1):get_count()
	local tdl = player_inv:get_stack("td", 1):get_count()
	local tll = player_inv:get_stack("tl", 1):get_count()
	local tes = player_inv:get_stack("t", 1):get_count()
	local k = 0
	for i=1, 8 do
		if not player_inv:get_stack("kri", i):is_empty() then
			k = k+1
		end
	end
	if dl == 0 then
		if k == 0 then
			dl = ""
		else
			dl = 1
		end
	end
	if tdl == 0 then
		if k == 0 then
			tdl = ""
		else
			tdl = 1
		end
	end
	if tll == 0 or k == 0 then
		if k == 0 then
			tll = ""
		else
			tll = 1
		end
	end
	local time = 0
	if dl ~= "" and tdl ~= "" and tll ~= "" then
		time = time+(dl*35)
		time = time+(tdl*15)
		time = time+(tll*10)
        if player_inv:get_stack("krit", 1):get_name() == "tutorial:crystal_schluessel" then
		    time = time/2
        end
	else
		time = "nil"
	end
	formspec = "button[0,0;2,0.5;back;Back]"
        .."label[2.9,4.5;Crystal Key]"
		.."label[7,0;"..k.."/8]"
		.."image[5.1,1.8;2,2;tutorial_legendenkristall.png]"
		.."label[0,1;Ball damage level:]"
		.."label[0,1.8;Thunder damage level:]"
		.."label[0,2.6;Thunder damage level:]"
		.."label[0,3.4;Time in s: "..time.."]"
		.."dropdown[2.3,0.9;1,1;drop1;"..get_level_string(k)..";"..dl..";true]"
		.."dropdown[2.3,1.7;1,1;drop2;"..get_level_string(k)..";"..tdl..";true]"
		.."dropdown[2.3,2.5;1,1;drop3;"..get_level_string(k)..";"..tll..";true]"
	if player_inv:get_stack("kri", 1):is_empty() then
		formspec = formspec.."image[5,0.7;1,1;tutorial_legendenkristall_background.png]"
	else
		formspec = formspec.."image[5,0.7;1,1;tutorial_legendenkristall.png]"
	end
	if player_inv:get_stack("kri", 2):is_empty() then
		formspec = formspec.."image[6,0.7;1,1;tutorial_legendenkristall_background.png]"
	else
		formspec = formspec.."image[6,0.7;1,1;tutorial_legendenkristall.png]"
	end
	if player_inv:get_stack("kri", 3):is_empty() then
		formspec = formspec.."image[7,1.7;1,1;tutorial_legendenkristall_background.png]"
	else
		formspec = formspec.."image[7,1.7;1,1;tutorial_legendenkristall.png]"
	end
	if player_inv:get_stack("kri", 4):is_empty() then
		formspec = formspec.."image[7,2.7;1,1;tutorial_legendenkristall_background.png]"
	else
		formspec = formspec.."image[7,2.7;1,1;tutorial_legendenkristall.png]"
	end
	if player_inv:get_stack("kri", 5):is_empty() then
		formspec = formspec.."image[6,3.7;1,1;tutorial_legendenkristall_background.png]"
	else
		formspec = formspec.."image[6,3.7;1,1;tutorial_legendenkristall.png]"
	end
	if player_inv:get_stack("kri", 6):is_empty() then
		formspec = formspec.."image[5,3.7;1,1;tutorial_legendenkristall_background.png]"
	else
		formspec = formspec.."image[5,3.7;1,1;tutorial_legendenkristall.png]"
	end
	if player_inv:get_stack("kri", 7):is_empty() then
		formspec = formspec.."image[4,2.7;1,1;tutorial_legendenkristall_background.png]"
	else
		formspec = formspec.."image[4,2.7;1,1;tutorial_legendenkristall.png]"
	end
	if player_inv:get_stack("kri", 8):is_empty() then
		formspec = formspec.."image[4,1.7;1,1;tutorial_legendenkristall_background.png]"
	else
		formspec = formspec.."image[4,1.7;1,1;tutorial_legendenkristall.png]"
	end
	if krit_name == "tutorial:crystal_schluessel" and remove_list then
		formspec = formspec.."image[3,3.7;1,1;tutorial_crystal_schluessel.png]"
	else
		formspec = formspec.."image[3,3.7;1,1;tutorial_background_schluessel.png]"
		.."list[current_player;krit;3,3.7;1,1;]"
		.."listring[current_player;main]"
		.."listring[current_player;krit]"
	end
	if time ~= "nil" and tes == 0 then
		formspec = formspec .."label[0,4.2;creating..]"
	end
	if tes > 0  and time ~= "nil" then
		formspec = formspec .."button[0,4.2;2,0.5;cre;create]"
	end
	return formspec
end

minetest.register_on_player_inventory_action(function(player, action, inventory, inventory_info)
	if action == "move" then
		if inventory_info.to_list == "krit" or inventory_info.from_list == "krit"
		or inventory_info.to_list == "skinskey" or inventory_info.from_list == "skinskey" 
		or inventory_info.to_list == "skinskey2" or inventory_info.from_list == "skinskey2" 
		or inventory_info.to_list == "feld" or inventory_info.from_list == "feld" 
		or inventory_info.to_list == "feld3" or inventory_info.from_list == "feld3" then
			sfinv.set_player_inventory_formspec(player)
		end
	end
	if action == "put" or action == "take" then
		if inventory_info.listname == "krit" or inventory_info.listname == "skinskey" or inventory_info.listname == "skinskey2" or inventory_info.listname == "feld" or inventory_info.listname == "feld3" then
			sfinv.set_player_inventory_formspec(player)
		end
	end
end)