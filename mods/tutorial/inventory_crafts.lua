local craft_sub_page = {}
local remove_list = true
minetest.register_on_joinplayer(function(player)
	local name = player:get_player_name()
	craft_sub_page[name] = 1
end)

local S = minetest.get_translator("sfinv")
sfinv.override_page("sfinv:crafting", {
	title = S("Crafting"),
	get = function(self, player, context)
		local name = player:get_player_name()
		if craft_sub_page[name] == 2 then
			return sfinv.make_formspec(player, context, other_craft(player), true)
		elseif craft_sub_page[name] == 3 then
			return sfinv.make_formspec(player, context, dna_craft(player), true)
		elseif craft_sub_page[name] == 4 then
			return sfinv.make_formspec(player, context, trophy_craft(player), true)
		elseif craft_sub_page[name] == 5 then
			return sfinv.make_formspec(player, context, backward_craft(player), true)
		elseif craft_sub_page[name] == 6 then
			return sfinv.make_formspec(player, context, mine_craft(player), true)
		elseif craft_sub_page[name] == 7 then
			return sfinv.make_formspec(player, context, regnum_craft(player), true)
		elseif craft_sub_page[name] == 8 then
			return sfinv.make_formspec(player, context, gem_craft(player), true)
		elseif craft_sub_page[name] == 9 then
			return sfinv.make_formspec(player, context, cooking_craft(player), true)
		elseif craft_sub_page[name] == 10 then
			return sfinv.make_formspec(player, context, medallion_craft(player), true)
		elseif craft_sub_page[name] == 11 then
			return sfinv.make_formspec(player, context, crystal_craft(player), true)
		elseif craft_sub_page[name] == 12 then
			return sfinv.make_formspec(player, context, medallion2_craft(player), true)
		elseif craft_sub_page[name] == 13 then
			return sfinv.make_formspec(player, context, color_craft(player), true)
		else
			return sfinv.make_formspec(player, context, main_craft(player), true)
		end
	end,
	on_player_receive_fields = function(self, player, context, fields)
		local name = player:get_player_name()
		if fields.back then
			craft_sub_page[name] = 1
			sfinv.set_player_inventory_formspec(player)
		elseif fields.other then
			craft_sub_page[name] = 2
			sfinv.set_player_inventory_formspec(player)
		elseif fields.dna then
			craft_sub_page[name] = 3
			sfinv.set_player_inventory_formspec(player)
		elseif fields.troph then
			craft_sub_page[name] = 4
			sfinv.set_player_inventory_formspec(player)
		elseif fields.backward then
			craft_sub_page[name] = 5
			sfinv.set_player_inventory_formspec(player)
		elseif fields.mine then
			craft_sub_page[name] = 6
			sfinv.set_player_inventory_formspec(player)
		elseif fields.regnum then
			local type4 = player:get_inventory():get_stack("feld4",1):get_name()
			if type4 == "tutorial:regnum_key" then
				craft_sub_page[name] = 7
				sfinv.set_player_inventory_formspec(player)
			end
		elseif fields.gem then
			local type5 = player:get_inventory():get_stack("feld5",1):get_name()
			if type5 == "tutorial:dragon_schluessel" then
				craft_sub_page[name] = 8
				sfinv.set_player_inventory_formspec(player)
			end
		elseif fields.cooking then
			local type6 = player:get_inventory():get_stack("feld6",1):get_name()
			if type6 == "tutorial:fox_schluessel" then
				craft_sub_page[name] = 9
				sfinv.set_player_inventory_formspec(player)
			end
		elseif fields.medallion then
			local type7 = player:get_inventory():get_stack("feld7",1):get_name()
			if type7 == "tutorial:tortoise_schluessel" then
				craft_sub_page[name] = 10
				sfinv.set_player_inventory_formspec(player)
			end
		elseif fields.crystal then
			local type8 = player:get_inventory():get_stack("feld8",1):get_name()
			if type8 == "tutorial:golden_schluessel" then
				craft_sub_page[name] = 11
				sfinv.set_player_inventory_formspec(player)
			end
		elseif fields.color then
			craft_sub_page[name] = 13
				sfinv.set_player_inventory_formspec(player)
		elseif fields.dnab then
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
			sfinv.set_player_inventory_formspec(player)
		elseif fields.trophcra then
			local player_inv = player:get_inventory()
			local name = player_inv:get_stack("trophcr", 1):get_name()
			if name == "tutorial:red_tear" then
				player_inv:remove_item("trophcr", "tutorial:red_tear")
				player_inv:add_item("tearred", "tutorial:medallion")
			end
			if name == "tutorial:blue_tear" then
				player_inv:remove_item("trophcr", "tutorial:blue_tear")
				player_inv:add_item("tearblue", "tutorial:medallion")
			end
			if name == "tutorial:green_tear" then
				player_inv:remove_item("trophcr", "tutorial:green_tear")
				player_inv:add_item("teargreen", "tutorial:medallion")
			end
			if name == "tutorial:yellow_tear" then
				player_inv:remove_item("trophcr", "tutorial:yellow_tear")
				player_inv:add_item("tearyellow", "tutorial:medallion")
			end
			if name == "tutorial:purple_tear" then
				player_inv:remove_item("trophcr", "tutorial:purple_tear")
				player_inv:add_item("tearpurple", "tutorial:medallion")
			end
			if name == "tutorial:cyan_tear" then
				player_inv:remove_item("trophcr", "tutorial:cyan_tear")
				player_inv:add_item("tearcyan", "tutorial:medallion")
			end
			sfinv.set_player_inventory_formspec(player)
		elseif fields.backwardcra then
			local player_inv = player:get_inventory()
			local name = player_inv:get_stack("backward", 1):get_name()
			local item_list = {
				{"3d_armor:superlegendenboots", 		"3d_armor:legendenboots6", 			"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenboots2", 		"3d_armor:legendenboots6", 			"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenboots3", 		"3d_armor:legendenboots6", 			"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenboots4", 		"3d_armor:legendenboots6", 			"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenchestplate", 	"3d_armor:legendenchestplate6", 	"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenchestplate2", 	"3d_armor:legendenchestplate6", 	"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenchestplate3", 	"3d_armor:legendenchestplate6", 	"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenchestplate4", 	"3d_armor:legendenchestplate6", 	"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenhelmet", 		"3d_armor:legendenhelmet6", 		"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenhelmet2", 		"3d_armor:legendenhelmet6", 		"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenhelmet3", 		"3d_armor:legendenhelmet6", 		"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenhelmet4", 		"3d_armor:legendenhelmet6", 		"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenleggings", 		"3d_armor:legendenleggings6", 		"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenleggings2", 	"3d_armor:legendenleggings6", 		"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenleggings3", 	"3d_armor:legendenleggings6", 		"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenleggings4", 	"3d_armor:legendenleggings6", 		"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenshield", 		"3d_armor:legendenshield6", 		"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenshield2", 		"3d_armor:legendenshield6", 		"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenshield3", 		"3d_armor:legendenshield6", 		"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendenshield4", 		"3d_armor:legendenshield6", 		"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendengun1", 			"3d_armor:legendengun6", 			"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendengun2", 			"3d_armor:legendengun6", 			"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:superlegendengun3", 			"3d_armor:legendengun6_2", 			"tutorial:lilabattleaxe2",		"",							""},
				{"3d_armor:regnumboots", 				"3d_armor:legendenboots6", 			"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumboots2", 				"3d_armor:legendenboots6", 			"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumboots3", 				"3d_armor:legendenboots6", 			"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumboots4", 				"3d_armor:legendenboots6", 			"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumhelmet", 				"3d_armor:legendenhelmet6", 		"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumhelmet2", 				"3d_armor:legendenhelmet6", 		"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumhelmet3", 				"3d_armor:legendenhelmet6", 		"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumhelmet4", 				"3d_armor:legendenhelmet6", 		"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumleggings", 			"3d_armor:legendenleggings6", 		"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumleggings2", 			"3d_armor:legendenleggings6", 		"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumleggings3", 			"3d_armor:legendenleggings6", 		"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumleggings4", 			"3d_armor:legendenleggings6", 		"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumchestplate", 			"3d_armor:legendenchestplate6", 	"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumchestplate2", 			"3d_armor:legendenchestplate6", 	"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumchestplate3", 			"3d_armor:legendenchestplate6", 	"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumchestplate4", 			"3d_armor:legendenchestplate6", 	"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumshield", 				"3d_armor:legendenshield6", 		"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumshield2", 				"3d_armor:legendenshield6", 		"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumshield3", 				"3d_armor:legendenshield6", 		"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumshield4", 				"3d_armor:legendenshield6", 		"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumgun1", 				"3d_armor:legendengun6", 			"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumgun2", 				"3d_armor:legendengun6", 			"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"3d_armor:regnumgun3", 				"3d_armor:legendengun6_2", 			"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"tutorial:bag_schluessel1", 			"tutorial:coin_grau 160", 			"tutorial:obsidian6", 			"default:stick 2", 			""},
				{"tutorial:bag_schluessel2", 			"tutorial:coin_grau 320", 			"tutorial:obsidian6 2", 		"default:stick 2", 			""},
				{"tutorial:bag_schluessel3", 			"tutorial:coin_grau 480", 			"tutorial:obsidian6 3", 		"default:stick 2", 			""},
				{"tutorial:cooking_schluessel1", 		"tutorial:coin_cyan 6", 			"", 							"", 						""},
				{"tutorial:cooking_schluessel2", 		"tutorial:coin_cyan 14", 			"", 							"", 						""},
				{"tutorial:cooking_schluessel3", 		"tutorial:coin_cyan 22", 			"", 							"", 						""},
				{"tutorial:craft_schluessel1", 			"tutorial:coin_lila 7", 			"default:stick 2", 				"", 						""},
				{"tutorial:craft_schluessel2", 			"tutorial:coin_lila 15", 			"default:stick 2", 				"", 						""},
				{"tutorial:craft_schluessel3", 			"tutorial:coin_lila 23", 			"default:stick 2", 				"", 						""},
				{"tutorial:craft_schluessel4", 			"tutorial:coin_lila 31", 			"default:stick 2", 				"", 						""},
				{"tutorial:craft_schluessel5", 			"tutorial:coin_lila 39", 			"default:stick 2", 				"", 						""},
				{"tutorial:craft_schluessel6", 			"tutorial:coin_lila 47", 			"default:stick 2", 				"", 						""},
				{"tutorial:molestick1", 				"tutorial:coin_bronze 8", 			"tutorial:cloudentverner21",	"", 						""},
				{"tutorial:molestick2", 				"tutorial:coin_bronze 32", 			"tutorial:cloudentverner21", 	"", 						""},
				{"tutorial:molestick3", 				"tutorial:coin_bronze 56", 			"tutorial:cloudentverner21", 	"", 						""},
				{"tutorial:molestick4", 				"tutorial:coin_bronze 80", 			"tutorial:cloudentverner21", 	"", 						""},
				{"tutorial:xraystick1", 				"tutorial:coin_silver 8", 			"tutorial:cloudentverner21", 	"", 						""},
				{"tutorial:xraystick2", 				"tutorial:coin_silver 32", 			"tutorial:cloudentverner21", 	"", 						""},
				{"tutorial:superlegendwings1", 			"tutorial:legendwings6", 			"tutorial:lilabattleaxe2",		"",							""},
				{"tutorial:superlegendwings2", 			"tutorial:legendwings6", 			"tutorial:lilabattleaxe2",		"",							""},
				{"tutorial:superlegendwings3", 			"tutorial:legendwings6", 			"tutorial:lilabattleaxe2",		"",							""},
				{"tutorial:regnumwings1", 				"tutorial:legendwings6", 			"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"tutorial:regnumwings2", 				"tutorial:legendwings6", 			"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
				{"tutorial:regnumwings3", 				"tutorial:legendwings6", 			"tutorial:lilabattleaxe2", 		"tutorial:bottleSS 4", 		"tutorial:regnum 4"},
			}
			for i = 1, 149 do
				table.insert(item_list, {"technic:laser_mkS"..i, "tutorial:coin "..(i-1)*8+3, "tutorial:admin", "moreores:mithril_ingot 2", ""})
				table.insert(item_list, {"technic:drill_mkS"..i, "tutorial:coin2 "..(i-1)*8+3, "tutorial:admin", "moreores:mithril_ingot 2", ""})
				table.insert(item_list, {"technic:drill_mkS"..i.."_1", "tutorial:coin2 "..(i-1)*8+3, "tutorial:admin", "moreores:mithril_ingot 2", ""})
				table.insert(item_list, {"technic:drill_mkS"..i.."_2", "tutorial:coin2 "..(i-1)*8+3, "tutorial:admin", "moreores:mithril_ingot 2", ""})
				table.insert(item_list, {"technic:drill_mkS"..i.."_3", "tutorial:coin2 "..(i-1)*8+3, "tutorial:admin", "moreores:mithril_ingot 2", ""})
				table.insert(item_list, {"technic:drill_mkS"..i.."_4", "tutorial:coin2 "..(i-1)*8+3, "tutorial:admin", "moreores:mithril_ingot 2", ""})
				table.insert(item_list, {"technic:drill_mkS"..i.."_5", "tutorial:coin2 "..(i-1)*8+3, "tutorial:admin", "moreores:mithril_ingot 2", ""})
			end
			for i = 1, 4 do
				table.insert(item_list, {"tutorial:wallplacer"..i.."_1", "tutorial:coin_gelb "..(i-1)*24+8, "", "", ""})
				table.insert(item_list, {"tutorial:wallplacer"..i.."_2", "tutorial:coin_gelb "..(i-1)*24+8, "", "", ""})
				table.insert(item_list, {"tutorial:wallplacer"..i.."_3", "tutorial:coin_gelb "..(i-1)*24+8, "", "", ""})
				table.insert(item_list, {"tutorial:wallplacer"..i.."_4", "tutorial:coin_gelb "..(i-1)*24+8, "", "", ""})
				table.insert(item_list, {"tutorial:wallplacer"..i.."_5", "tutorial:coin_gelb "..(i-1)*24+8, "", "", ""})
			end
			for i = 1, 19 do
				table.insert(item_list, {"tutorial:coin_grau"..i, "tutorial:coin_grau "..(i)*8, "tutorial:obsidian6", "", ""})
			end
			for i = 1, #item_list do
				if item_list[i][1] == name then
					local added = 0
					for j = 2, 5 do
						if player_inv:room_for_item("main", item_list[i][j]) then
							player_inv:add_item("main", item_list[i][j])
							added = added + 1
						elseif added == (j-2) then
							for k = 1, added  do
								player_inv:remove_item("main", item_list[i][k+1])
							end
							break
						end
					end
					if added == 4 then
						player_inv:remove_item("backward", name)
					end
				end
			end
			sfinv.set_player_inventory_formspec(player)
		elseif fields.craftmine then
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
				local p = 0
				for i = 1, 149 do
					if player_inv:get_stack("mine1", 1):get_name() == "technic:laser_mkS"..i and p == 0 then
						p = 1
						player_inv:set_stack("mine2", 1, "tutorial:coin "..(y1-1))
						player_inv:set_stack("mine2", 2, "tutorial:coin "..(y2-1))
						player_inv:set_stack("mine2", 3, "tutorial:coin "..(y3-1))
						player_inv:set_stack("mine2", 4, "tutorial:coin "..(y4-1))
						player_inv:set_stack("mine2", 5, "tutorial:coin "..(y5-1))
						player_inv:set_stack("mine2", 6, "tutorial:coin "..(y6-1))
						player_inv:set_stack("mine2", 7, "tutorial:coin "..(y7-1))
						player_inv:set_stack("mine2", 8, "tutorial:coin "..(y8-1))
						player_inv:set_stack("mine1", 1, "technic:laser_mkS"..(i+1))
					end
				end
			end
			if k == 2 then
				local p = 0
				for i = 1, 149 do
					local m = player_inv:get_stack("mine1", 1):get_name()
					if p == 0 then
						if m == "technic:drill_mkS"..i.."_1" or m == "technic:drill_mkS"..i.."_2" or m == "technic:drill_mkS"..i.."_3" or m == "technic:drill_mkS"..i.."_4" or m == "technic:drill_mkS"..i.."_5" or m == "technic:drill_mkS"..i then
							p = 1
							player_inv:set_stack("mine2", 1, "tutorial:coin2 "..(y1-1))
							player_inv:set_stack("mine2", 2, "tutorial:coin2 "..(y2-1))
							player_inv:set_stack("mine2", 3, "tutorial:coin2 "..(y3-1))
							player_inv:set_stack("mine2", 4, "tutorial:coin2 "..(y4-1))
							player_inv:set_stack("mine2", 5, "tutorial:coin2 "..(y5-1))
							player_inv:set_stack("mine2", 6, "tutorial:coin2 "..(y6-1))
							player_inv:set_stack("mine2", 7, "tutorial:coin2 "..(y7-1))
							player_inv:set_stack("mine2", 8, "tutorial:coin2 "..(y8-1))
							player_inv:set_stack("mine1", 1, "technic:drill_mkS"..(i+1).."_1")
						end
					end
				end
			end
			sfinv.set_player_inventory_formspec(player)
		elseif fields.cra4 then
			local player_inv = player:get_inventory()
			local crafted = nil
			local table_dec = nil
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
			sfinv.set_player_inventory_formspec(player)
		elseif fields.craftgem then
			local player_inv = player:get_inventory()
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
				if g21 == "moreores:mithril_ingot" then
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
					player_inv:set_stack("gem2", 1, "moreores:mithril_ingot "..(yy1-1))
					player_inv:set_stack("gem2", 2, "moreores:mithril_ingot "..(yy2-1))
					player_inv:set_stack("gem2", 3, "moreores:mithril_ingot "..(yy3-1))
					player_inv:set_stack("gem2", 4, "moreores:mithril_ingot "..(yy4-1))
					player_inv:set_stack("gem2", 5, "moreores:mithril_ingot "..(yy5-1))
					player_inv:set_stack("gem2", 6, "moreores:mithril_ingot "..(yy6-1))
					player_inv:set_stack("gem2", 7, "moreores:mithril_ingot "..(yy7-1))
					player_inv:set_stack("gem2", 8, "moreores:mithril_ingot "..(yy8-1))
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
					player_inv:set_stack("gem2", 1, "moreores:mithril_ingot "..(yy1-1))
					player_inv:set_stack("gem2", 2, "moreores:mithril_ingot "..(yy2-1))
					player_inv:set_stack("gem2", 3, "moreores:mithril_ingot "..(yy3-1))
					player_inv:set_stack("gem2", 4, "moreores:mithril_ingot "..(yy4-1))
					player_inv:set_stack("gem2", 5, "moreores:mithril_ingot "..(yy5-1))
					player_inv:set_stack("gem2", 6, "moreores:mithril_ingot "..(yy6-1))
					player_inv:set_stack("gem2", 7, "moreores:mithril_ingot "..(yy7-1))
					player_inv:set_stack("gem2", 8, "moreores:mithril_ingot "..(yy8-1))
				end
			end
			sfinv.set_player_inventory_formspec(player)
		elseif fields.fuel then
			local player_inv = player:get_inventory()
			local uran = player_inv:get_stack("uranin", 1):get_name()
			local key = player_inv:get_stack("cookkey", 1):get_name()
			fuel2 = 4
			if key == "tutorial:cooking_schluessel1" then
				fuel2 = 5
			elseif key == "tutorial:cooking_schluessel2" then
				fuel2 = 6
			elseif key == "tutorial:cooking_schluessel3" then
				fuel2 = 7
			elseif key == "tutorial:cooking_schluessel4" then
				fuel2 = 8
			end
			local fuel = 0
			if uran == "tutorial:uranium1" then
				fuel = fuel2
			elseif uran == "tutorial:uranium2" then
				fuel = fuel2*2
			elseif uran == "tutorial:uranium3" then
				fuel = fuel2*4
			elseif uran == "tutorial:uranium4" then
				fuel = fuel2*8
			elseif uran == "tutorial:uranium5" then
				fuel = fuel2*16
			elseif uran == "tutorial:uranium6" then
				fuel = fuel2*32
			elseif uran == "tutorial:uranium7" then
				fuel = fuel2*64
			elseif uran == "tutorial:uranium8" then
				fuel = fuel2*128
			elseif uran == "tutorial:uranium9" then
				fuel = fuel2*256
			end
			if (player_inv:get_stack("fuel", 1):get_count()+fuel) > 60000 then
			else
				if fuel > 0 then
					player_inv:set_stack("uranin", 1, uran.." "..(player_inv:get_stack("uranin", 1):get_count()-1))
				end
				player_inv:set_stack("fuel", 1, "default:dirt "..(player_inv:get_stack("fuel", 1):get_count()+fuel))
			end
			sfinv.set_player_inventory_formspec(player)
		elseif fields.cook then
			local player_inv = player:get_inventory()
			local count = player_inv:get_stack("cookin", 1):get_count()
			local input = player_inv:get_stack("cookin", 1):get_name()
			local time = minetest.get_craft_result({method="cooking", width=1, items={player_inv:get_stack("cookin", 1)}}).time
			local output = minetest.get_craft_result({method="cooking", width=1, items={player_inv:get_stack("cookin", 1)}})
			for i=1,count do
				if player_inv:room_for_item("main", output.item) and output.item:get_count() ~= 0 then
					if (player_inv:get_stack("fuel", 1):get_count()-time) > -1 then
						 player_inv:set_stack("fuel", 1, "default:dirt "..(player_inv:get_stack("fuel", 1):get_count()-time))
						 player_inv:add_item("main",output.item)
						 player_inv:set_stack("cookin", 1, input.." "..(player_inv:get_stack("cookin", 1):get_count()-1))
					end
				end
			end
			sfinv.set_player_inventory_formspec(player)
		elseif fields.crystalb then
			local player_inv = player:get_inventory()
			local k = 0
			for i=1, 8 do
				if not player_inv:get_stack("kri", i):is_empty() then
					k = k+1
				end
			end
			local time = 500
			player_inv:set_stack("crtime", 1, "default:dirt")
			local name = player_inv:get_stack("pixkey", 1):get_name()
			if name == "tutorial:regnum_key_pixeled" then
				time = time/2
			end
			sfinv.set_player_inventory_formspec(player)
			minetest.after(time, function()
				if player == nil then
					return
				end
				local player_inv = player:get_inventory()
				player_inv:set_stack("crtime", 1, nil)
				player_inv:add_item("main", "tutorial:bottle_crystal "..(k+2))
				sfinv.set_player_inventory_formspec(player)
			end)
		elseif fields.meda1 then
			local player_inv = player:get_inventory()
			player_inv:set_stack("medallion", 1, "default:dirt")
			craft_sub_page[name] = 12
			sfinv.set_player_inventory_formspec(player)
		elseif fields.meda2 then
			local player_inv = player:get_inventory()
			player_inv:set_stack("medallion", 1, "default:dirt 2")
			craft_sub_page[name] = 12
			sfinv.set_player_inventory_formspec(player)
		elseif fields.meda3 then
			local player_inv = player:get_inventory()
			player_inv:set_stack("medallion", 1, "default:dirt 3")
			craft_sub_page[name] = 12
			sfinv.set_player_inventory_formspec(player)
		elseif fields.meda4 then
			local player_inv = player:get_inventory()
			player_inv:set_stack("medallion", 1, "default:dirt 4")
			craft_sub_page[name] = 12
			sfinv.set_player_inventory_formspec(player)
		elseif fields.meda5 then
			local player_inv = player:get_inventory()
			player_inv:set_stack("medallion", 1, "default:dirt 5")
			craft_sub_page[name] = 12
			sfinv.set_player_inventory_formspec(player)
		elseif fields.meda6 then
			local player_inv = player:get_inventory()
			player_inv:set_stack("medallion", 1, "default:dirt 6")
			craft_sub_page[name] = 12
			sfinv.set_player_inventory_formspec(player)
		elseif fields.meda7 then
			local player_inv = player:get_inventory()
			player_inv:set_stack("medallion", 1, "default:dirt 7")
			craft_sub_page[name] = 12
			sfinv.set_player_inventory_formspec(player)
		elseif fields.mecraft then
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
			sfinv.set_player_inventory_formspec(player)
		elseif fields.colordye then
			local player_inv = player:get_inventory()
			local d = 0
			while d == 0 do
				local colordye = player_inv:get_stack("colordye", 1):get_name()
				if colordye == "dye:black" then
					player_inv:set_stack("dye", 1,"default:dirt "..(player_inv:get_stack("dye", 1):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:black "..(player_inv:get_stack("colordye", 1):get_count()-1))
				elseif colordye == "dye:blue" then
					player_inv:set_stack("dye", 2,"default:dirt "..(player_inv:get_stack("dye", 2):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:blue "..(player_inv:get_stack("colordye", 1):get_count()-1))
				elseif colordye == "dye:brown" then
					player_inv:set_stack("dye", 3,"default:dirt "..(player_inv:get_stack("dye", 3):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:brown "..(player_inv:get_stack("colordye", 1):get_count()-1))
				elseif colordye == "dye:cyan" then
					player_inv:set_stack("dye", 4,"default:dirt "..(player_inv:get_stack("dye", 4):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:cyan "..(player_inv:get_stack("colordye", 1):get_count()-1))
				elseif colordye == "dye:dark_green" then
					player_inv:set_stack("dye", 5,"default:dirt "..(player_inv:get_stack("dye", 5):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:dark_green "..(player_inv:get_stack("colordye", 1):get_count()-1))
				elseif colordye == "dye:dark_grey" then
					player_inv:set_stack("dye", 6,"default:dirt "..(player_inv:get_stack("dye", 6):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:dark_grey "..(player_inv:get_stack("colordye", 1):get_count()-1))
				elseif colordye == "dye:green" then
					player_inv:set_stack("dye", 7,"default:dirt "..(player_inv:get_stack("dye", 7):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:green "..(player_inv:get_stack("colordye", 1):get_count()-1))
				elseif colordye == "dye:grey" then
					player_inv:set_stack("dye", 8,"default:dirt "..(player_inv:get_stack("dye", 8):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:grey "..(player_inv:get_stack("colordye", 1):get_count()-1))
				elseif colordye == "dye:magenta" then
					player_inv:set_stack("dye", 9,"default:dirt "..(player_inv:get_stack("dye", 9):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:magenta "..(player_inv:get_stack("colordye", 1):get_count()-1))
				elseif colordye == "dye:orange" then
					player_inv:set_stack("dye", 10,"default:dirt "..(player_inv:get_stack("dye", 10):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:orange "..(player_inv:get_stack("colordye", 1):get_count()-1))
				elseif colordye == "dye:pink" then
					player_inv:set_stack("dye", 11,"default:dirt "..(player_inv:get_stack("dye", 11):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:pink "..(player_inv:get_stack("colordye", 1):get_count()-1))
				elseif colordye == "dye:red" then
					player_inv:set_stack("dye", 12,"default:dirt "..(player_inv:get_stack("dye", 12):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:red "..(player_inv:get_stack("colordye", 1):get_count()-1))
				elseif colordye == "dye:violet" then
					player_inv:set_stack("dye", 13,"default:dirt "..(player_inv:get_stack("dye", 13):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:violet "..(player_inv:get_stack("colordye", 1):get_count()-1))
				elseif colordye == "dye:white" then
					player_inv:set_stack("dye", 14,"default:dirt "..(player_inv:get_stack("dye", 14):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:white "..(player_inv:get_stack("colordye", 1):get_count()-1))
				elseif colordye == "dye:yellow" then
					player_inv:set_stack("dye", 15,"default:dirt "..(player_inv:get_stack("dye", 15):get_count()+1))
					player_inv:set_stack("colordye", 1,"dye:yellow "..(player_inv:get_stack("colordye", 1):get_count()-1))
				else
					d = 1
				end
			end
			sfinv.set_player_inventory_formspec(player)
		elseif fields.stickdye then
			local player_inv = player:get_inventory()
			local black = player_inv:get_stack("dye", 1):get_count()
			local blue = player_inv:get_stack("dye", 2):get_count()
			local brown = player_inv:get_stack("dye", 3):get_count()
			local cyan = player_inv:get_stack("dye", 4):get_count()
			local dgreen = player_inv:get_stack("dye", 5):get_count()
			local dgrey = player_inv:get_stack("dye", 6):get_count()
			local green = player_inv:get_stack("dye", 7):get_count()
			local grey = player_inv:get_stack("dye", 8):get_count()
			local magenta = player_inv:get_stack("dye", 9):get_count()
			local orange = player_inv:get_stack("dye", 10):get_count()
			local pink = player_inv:get_stack("dye", 11):get_count()
			local red = player_inv:get_stack("dye", 12):get_count()
			local violet = player_inv:get_stack("dye", 13):get_count()
			local white = player_inv:get_stack("dye", 14):get_count()
			local yellow = player_inv:get_stack("dye", 15):get_count()
			local stickdye = player_inv:get_stack("stickdye", 1):get_name()
			if black > 9 and blue > 9 and brown > 9 and cyan > 9 and dgreen > 9 and dgrey > 9 and green > 9 and grey > 9 and magenta > 9 and orange > 9 and pink > 9 and red > 9 and violet > 9 and white > 9 and yellow > 9 then
				local d = 0
				local get = ""
				if stickdye == "tutorial:colorstick_empty" then
					get = "tutorial:colorstick_empty1"
					d = 1
				end
				for i=1,28 do
					if stickdye == "tutorial:colorstick_empty"..i then
						get = "tutorial:colorstick_empty"..(i+1)
						d = 1
					end
				end
				if stickdye == "tutorial:colorstick_empty29" then
					get = "tutorial:colorstick1"
					d = 1
				end
				if d == 1 then
					player_inv:set_stack("dye", 1,"default:dirt "..(player_inv:get_stack("dye", 1):get_count()-10))
					player_inv:set_stack("dye", 2,"default:dirt "..(player_inv:get_stack("dye", 2):get_count()-10))
					player_inv:set_stack("dye", 3,"default:dirt "..(player_inv:get_stack("dye", 3):get_count()-10))
					player_inv:set_stack("dye", 4,"default:dirt "..(player_inv:get_stack("dye", 4):get_count()-10))
					player_inv:set_stack("dye", 5,"default:dirt "..(player_inv:get_stack("dye", 5):get_count()-10))
					player_inv:set_stack("dye", 6,"default:dirt "..(player_inv:get_stack("dye", 6):get_count()-10))
					player_inv:set_stack("dye", 7,"default:dirt "..(player_inv:get_stack("dye", 7):get_count()-10))
					player_inv:set_stack("dye", 8,"default:dirt "..(player_inv:get_stack("dye", 8):get_count()-10))
					player_inv:set_stack("dye", 9,"default:dirt "..(player_inv:get_stack("dye", 9):get_count()-10))
					player_inv:set_stack("dye", 10,"default:dirt "..(player_inv:get_stack("dye", 10):get_count()-10))
					player_inv:set_stack("dye", 11,"default:dirt "..(player_inv:get_stack("dye", 11):get_count()-10))
					player_inv:set_stack("dye", 12,"default:dirt "..(player_inv:get_stack("dye", 12):get_count()-10))
					player_inv:set_stack("dye", 13,"default:dirt "..(player_inv:get_stack("dye", 13):get_count()-10))
					player_inv:set_stack("dye", 14,"default:dirt "..(player_inv:get_stack("dye", 14):get_count()-10))
					player_inv:set_stack("dye", 15,"default:dirt "..(player_inv:get_stack("dye", 15):get_count()-10))
					player_inv:set_stack("stickdye", 1,get)
				end
			end
			sfinv.set_player_inventory_formspec(player)
		end
	end
})

function main_craft(player)
	local player_inv = player:get_inventory()
	local name = player:get_player_name()
	local formspec = ""
	local feld_name = player_inv:get_stack("feld", 1):get_name()
	local feld3_name = player_inv:get_stack("feld3", 1):get_name()
	if feld_name == "tutorial:craft_schluessel7" and feld3_name == "tutorial:legenden_schluessel" then
		player_inv:set_width("craft", 5)
		formspec = formspec.."list[current_player;craft;0,0;5,5;]"
	elseif feld_name == "tutorial:craft_schluessel7" then
		player_inv:set_width("craft", 4)
		formspec = formspec.."list[current_player;craft;1,0.5;4,4;]"
	else
		player_inv:set_width("craft", 3)
		formspec = formspec.."list[current_player;craft;2,1;3,3;]"
	end
	formspec = formspec.."list[current_player;craftpreview;6,2;1,1;]"
		.."image[5,2;1,1;sfinv_crafting_arrow.png]"
		.."listring[current_player;main]"
		.."listring[current_player;craft]"
		.."image_button[5.98,3;0.6,0.6;;craft10;10]"
		.."image_button[6.45,3;0.6,0.6;;craft99;99]"
		.."label[7,1.8;Craft Key]"
		.."label[6.9,3.8;Legend Key]"
		.."button[6.6,0;1.5,0.5;other;Other]"
		if feld_name == "tutorial:craft_schluessel7" and remove_list then
			formspec = formspec.."image[7,1;1,1;tutorial_craft_schluessel7.png]"
		else
			formspec = formspec.."image[7,1;1,1;tutorial_background_schluessel.png]"
			.."list[current_player;feld;7,1;1,1;]"
			.."listring[current_player;main]"
			.."listring[current_player;feld]"
		end
		if feld3_name == "tutorial:legenden_schluessel" and remove_list then
			formspec = formspec.."image[7,3;1,1;tutorial_legenden_schluessel.png]"
		else
			formspec = formspec.."image[7,3;1,1;tutorial_background_schluessel.png]"
			.."list[current_player;feld3;7,3;1,1;]"
			.."listring[current_player;main]"
			.."listring[current_player;feld3]"
		end
	return formspec
end

function other_craft(player)
	local player_inv = player:get_inventory()
	local feld4_name = player_inv:get_stack("feld4", 1):get_name()
	local feld5_name = player_inv:get_stack("feld5", 1):get_name()
	local feld6_name = player_inv:get_stack("feld6", 1):get_name()
	local feld7_name = player_inv:get_stack("feld7", 1):get_name()
	local feld8_name = player_inv:get_stack("feld8", 1):get_name()
	local formspec = "button[0,0;2,0.5;back;Back]"
		.."button[0.25,2.5;1.5,0.5;regnum;Regnum]"
		.."button[1.75,2.5;1.5,0.5;gem;Gem]"
		.."button[3.25,2.5;1.5,0.5;cooking;Cooking]"
		.."button[4.75,2.5;1.5,0.5;medallion;Medallion]"
		.."button[6.25,2.5;1.5,0.5;crystal;Crystal]"
		.."button[0,4;1.6,0.5;dna;DNA]"
		.."button[1.6,4;1.6,0.5;mine;Mining]"
		.."button[3.2,4;1.6,0.5;troph;Trophy]"
		.."button[4.8,4;1.6,0.5;backward;Backward]"
		.."button[6.4,4;1.6,0.5;color;Color]"
		.."label[0.28,1.8;Regnum Key]"
		.."label[1.85,1.8;Dragon Key]"
		.."label[3.5,1.8;Fox Key]"
		.."label[4.9,1.8;Tortoise Key]"
		.."label[6.4,1.8;Golden Key]"
		
		if feld4_name == "tutorial:regnum_key" and remove_list then
			formspec = formspec.."image[0.5,1;1,1;tutorial_regnum_schluessel.png]"
		else
			formspec = formspec.."image[0.5,1;1,1;tutorial_background_schluessel.png]"
			.."list[current_player;feld4;0.5,1;1,1;]"
			.."listring[current_player;main]"
			.."listring[current_player;feld4]"
		end
		if feld5_name == "tutorial:dragon_schluessel" and remove_list then
			formspec = formspec.."image[2.0,1;1,1;tutorial_dragon_schluessel.png]"
		else
			formspec = formspec.."image[2.0,1;1,1;tutorial_background_schluessel.png]"
			.."list[current_player;feld5;2.0,1;1,1;]"
			.."listring[current_player;main]"
			.."listring[current_player;feld5]"
		end
		if feld6_name == "tutorial:fox_schluessel" and remove_list then
			formspec = formspec.."image[3.5,1;1,1;tutorial_fox_schluessel.png]"
		else
			formspec = formspec.."image[3.5,1;1,1;tutorial_background_schluessel.png]"
			.."list[current_player;feld6;3.5,1;1,1;]"
			.."listring[current_player;main]"
			.."listring[current_player;feld6]"
		end
		if feld7_name == "tutorial:tortoise_schluessel" and remove_list then
			formspec = formspec.."image[5.0,1;1,1;tutorial_tortoise_schluessel.png]"
		else
			formspec = formspec.."image[5.0,1;1,1;tutorial_background_schluessel.png]"
			.."list[current_player;feld7;5,1;1,1;]"
			.."listring[current_player;main]"
			.."listring[current_player;feld7]"
		end
		if feld8_name == "tutorial:golden_schluessel" and remove_list then
			formspec = formspec.."image[6.5,1;1,1;tutorial_golden_schluessel.png]"
		else
			formspec = formspec.."image[6.5,1;1,1;tutorial_background_schluessel.png]"
			.."list[current_player;feld8;6.5,1;1,1;]"
			.."listring[current_player;main]"
			.."listring[current_player;feld8]"
		end


	return formspec
end

function dna_craft(player)
	local player_inv = player:get_inventory()
	local dog = player_inv:get_stack("dogdna", 1):get_count()
	local cat = player_inv:get_stack("catdna", 1):get_count()
    local sheep = player_inv:get_stack("sheepdna", 1):get_count()
    local dragon = player_inv:get_stack("dragondna", 1):get_count()
    local fox = player_inv:get_stack("foxdna", 1):get_count()
    local tortoise = player_inv:get_stack("tortoisedna", 1):get_count()
	local percat = ""
	local perdog = ""
	local persheep = ""
	local perdragon = ""
	local perfox = ""
	local pertortoise = ""
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
	formspec = "button[0,0;2,0.5;other;Back]"
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
		.."image[0,3.6;1,1;tutorial_dna_string_background.png]"
		.."image[1,3.6;1,1;tutorial_dna_string_background.png]"
		.."image[2,3.6;1,1;tutorial_dna_string_background.png]"
		.."image[3,3.6;1,1;tutorial_dna_string_background.png]"
		.."image[4,3.6;1,1;tutorial_dna_string_background.png]"
		.."image[5,3.6;1,1;tutorial_dna_string_background.png]"
		.."image[6,3.6;1,1;tutorial_dna_string_background.png]"
		.."image[7,3.6;1,1;tutorial_dna_string_background.png]"
		.."button[5,2.3;2,0.5;dnab;build DNA]"
		.."label[3.5,4.4;DNA String]"
        .."listring[current_player;main]"
		.."listring[current_player;dna]"
	return formspec
end

function trophy_craft(player)
	formspec = "button[0,0;2,0.5;other;Back]"
        .."button[3,2.5;2,0.5;trophcra;Use]"
        .."list[current_player;trophcr;3.5,1;1,1;]"
        .."listring[current_player;main]"
		.."listring[current_player;trophcr]"
        .."label[3.65,1.8;Tears]"
		.."image[3.5,1;1,1;tutorial_background_tear.png]"
	return formspec
end

function backward_craft(player)
	formspec = "button[0,0;2,0.5;other;Back]"
        .."button[1.75,2.5;1.5,0.5;backwardcra;Get items]"
        .."list[current_player;backward;2,1;1,1;]"
        .."listring[current_player;main]"
		.."listring[current_player;backward]"
		.."label[4,0.8;You can get your items back from:]"
		.."label[4,1.1;Super Legendary Armor/Gun/Wings]"
		.."label[4,1.4;Regnum Armor/Gun/Wings]"
		.."label[4,1.7;Mining Laser/Drill Lv.1-149]"
		.."label[4,2.0;Craft Key Lv.1-6]"
		.."label[4,2.3;Spezial Grey Coin Lv.1-19]"
		.."label[4,2.6;Bag Key Lv.1-3]"
		.."label[4,2.9;Wall Placer Lv.1-4]"
		.."label[4,3.2;Cooking Key Lv.1-3]"
		.."label[4,3.5;Xray Stick Lv.1-2]"
	return formspec
end

function mine_craft(player)
	formspec = "button[0,0;2,0.5;other;Back]"
        .."list[current_player;mine1;2.5,1;5,1;]"
        .."list[current_player;mine2;0,3;8,1;]"
        .."label[2.1,1.8;Mining Laser/Drill]"
        .."button[3.5,1.2;2,0.5;craftmine;Craft]"
        .."label[3.2,3.8;Green Coins]"
		.."image[0,3;1,1;tutorial_coin_background.png]"
		.."image[1,3;1,1;tutorial_coin_background.png]"
		.."image[2,3;1,1;tutorial_coin_background.png]"
		.."image[3,3;1,1;tutorial_coin_background.png]"
		.."image[4,3;1,1;tutorial_coin_background.png]"
		.."image[5,3;1,1;tutorial_coin_background.png]"
		.."image[6,3;1,1;tutorial_coin_background.png]"
		.."image[7,3;1,1;tutorial_coin_background.png]"
		.."listring[current_player;main]"
		.."listring[current_player;mine1]"
		.."listring[current_player;main]"
		.."listring[current_player;mine2]"
	return formspec
end

function regnum_craft(player)
	formspec = "button[0,0;2,0.5;other;Back]"
		.."button[4,3.2;2,0.5;cra4;Craft]"
		.."label[0.9,1.2;352 Dark Green Pixel]"
		.."label[0.9,2.2;352 Dark Cyan Pixel]"
		.."label[0.9,3.2;1120 Dark Black Pixel]"
		.."label[4.9,1.2;3696 Dark Red Pixel]"
		.."label[4.9,2.2;3696 Dark Blue Pixel]"
		.."list[current_player;crvier4;0,1;1,3;]"
		.."list[current_player;crvier4;4,1;1,2;3]"
		.."image[0,1;1,1;tutorial_regnum_pixel_background.png]"
		.."image[0,2;1,1;tutorial_regnum_pixel_background.png]"
		.."image[0,3;1,1;tutorial_regnum_pixel_background.png]"
		.."image[4,1;1,1;tutorial_regnum_pixel_background.png]"
		.."image[4,2;1,1;tutorial_regnum_pixel_background.png]"
		.."listring[current_player;main]"
		.."listring[current_player;crvier4]"
	return formspec
end

function gem_craft(player)
	formspec = "button[0,0;2,0.5;other;Back]"
        .."list[current_player;gem1;0,1;8,1;]"
        .."label[2.3,1.9;Dragon/Tortoise Gem Fragment]"
        .."list[current_player;gem2;0,2.5;8,1;]"
        .."label[3.3,3.4;Mithril Ingot]"
        .."button[3,4;2,0.5;craftgem;Craft]"
		.."image[0,1;1,1;tutorial_gem_fragment_background.png]"
		.."image[1,1;1,1;tutorial_gem_fragment_background.png]"
		.."image[2,1;1,1;tutorial_gem_fragment_background.png]"
		.."image[3,1;1,1;tutorial_gem_fragment_background.png]"
		.."image[4,1;1,1;tutorial_gem_fragment_background.png]"
		.."image[5,1;1,1;tutorial_gem_fragment_background.png]"
		.."image[6,1;1,1;tutorial_gem_fragment_background.png]"
		.."image[7,1;1,1;tutorial_gem_fragment_background.png]"
		.."image[0,2.5;1,1;tutorial_mithril_ingot_background.png]"
		.."image[1,2.5;1,1;tutorial_mithril_ingot_background.png]"
		.."image[2,2.5;1,1;tutorial_mithril_ingot_background.png]"
		.."image[3,2.5;1,1;tutorial_mithril_ingot_background.png]"
		.."image[4,2.5;1,1;tutorial_mithril_ingot_background.png]"
		.."image[5,2.5;1,1;tutorial_mithril_ingot_background.png]"
		.."image[6,2.5;1,1;tutorial_mithril_ingot_background.png]"
		.."image[7,2.5;1,1;tutorial_mithril_ingot_background.png]"
		.."listring[current_player;main]"
		.."listring[current_player;gem1]"
		.."listring[current_player;main]"
		.."listring[current_player;gem2]"
	return formspec
end

function cooking_craft(player)
    local player_inv = player:get_inventory()
    local fuel = player_inv:get_stack("fuel", 1):get_count()
	local cookkey_name = player_inv:get_stack("cookkey", 1):get_name()
	formspec = "button[0,0;2,0.5;other;Back]"
        .."label[0.2,2.3;Fuel: "..fuel.."]"
        .."list[current_player;uranin;2,2;1,1]"
        .."button[3.5,3.5;2,0.5;cook;Craft]"
        .."list[current_player;cookin;4,2;1,1]"
        .."label[2,2.8;Uranium]"
        .."button[1.5,3.5;2,0.5;fuel;Get Fuel]"
		.."listring[current_player;main]"
		.."listring[current_player;cookin]"
		.."listring[current_player;main]"
		.."listring[current_player;uranin]"
        .."label[5.8,2.8;Cooking Key]"

		if cookkey_name == "tutorial:cooking_schluessel4" and remove_list then
			formspec = formspec.."image[6,2;1,1;tutorial_cooking_schluessel4.png]"
		else
			formspec = formspec.."image[6,2;1,1;tutorial_background_schluessel.png]"
			.."list[current_player;cookkey;6,2;1,1]"
			.."listring[current_player;main]"
			.."listring[current_player;cookkey]"
		end
	return formspec
end


function medallion_craft(player)
	formspec = "button[0,0;2,0.5;other;Back]"
		.."button[1,2;2,0.5;meda3;Green]"
        .."button[3,2;2,0.5;meda2;Blue]"
		.."button[5,2;2,0.5;meda4;Yellow]"
		.."button[1,3;2,0.5;meda1;Red]"
        .."button[3,3;2,0.5;meda5;Purple]"
        .."button[5,3;2,0.5;meda6;Cyan]"
        .."button[3,4;2,0.5;meda7;Gray]"
	return formspec
end

function crystal_craft(player)
	local player_inv = player:get_inventory()
	local pixkey_name = player_inv:get_stack("pixkey", 1):get_name()
    local time = player_inv:get_stack("crtime", 1):get_count()
	local k = 0
	for i=1, 8 do
		if not player_inv:get_stack("kri", i):is_empty() then
			k = k+1
		end
	end
	formspec = "button[0,0;2,0.5;other;Back]"
		.."label[5.5,0;You have "..k.."/8 crystals]"
        .."label[4.5,2.8;Dark Regnum Key]"
	if time == 0 then
		formspec = formspec .."button[2,2.2;2,0.5;crystalb;Crystalbottle]"
	else
		formspec = formspec .."label[2.4,2.2;creating..]"
	end
	if pixkey_name == "tutorial:regnum_key_pixeled" and remove_list then
		formspec = formspec.."image[5,2;1,1;tutorial_regnum_schluessel_dark.png]"
	else
		formspec = formspec.."image[5,2;1,1;tutorial_background_schluessel.png]"
		.."list[current_player;pixkey;5,2;1,1;]"
		.."listring[current_player;main]"
		.."listring[current_player;pixkey]"
	end
	return formspec
end

function medallion2_craft(player)
	local player_inv = player:get_inventory()
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
	formspec = "button[0,0;2,0.5;medallion;Back]"
        .."button[5,3;2,0.5;mecraft;Craft]"
		.."label[5.1,2.5;Medallion Piece]"
        .."list[current_player;medall;5.5,1.7;1,1;]"
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

function color_craft(player)
	local player_inv = player:get_inventory()
    local black = player_inv:get_stack("dye", 1):get_count()
    local blue = player_inv:get_stack("dye", 2):get_count()
    local brown = player_inv:get_stack("dye", 3):get_count()
    local cyan = player_inv:get_stack("dye", 4):get_count()
    local dgreen = player_inv:get_stack("dye", 5):get_count()
    local dgrey = player_inv:get_stack("dye", 6):get_count()
    local green = player_inv:get_stack("dye", 7):get_count()
    local grey = player_inv:get_stack("dye", 8):get_count()
    local magenta = player_inv:get_stack("dye", 9):get_count()
    local orange = player_inv:get_stack("dye", 10):get_count()
    local pink = player_inv:get_stack("dye", 11):get_count()
    local red = player_inv:get_stack("dye", 12):get_count()
    local violet = player_inv:get_stack("dye", 13):get_count()
    local white = player_inv:get_stack("dye", 14):get_count()
    local yellow = player_inv:get_stack("dye", 15):get_count()
	formspec = "button[0,0;2,0.5;other;Back]"
		.."label[0,1;Black:]"
        .."label[0,1.3;Blue:]"
        .."label[0,1.6;Brown:]"
        .."label[0,1.9;Cyan:]"
        .."label[0,2.2;Dark Green:]"
        .."label[2,1;"..black.."]"
        .."label[2,1.3;"..blue.."]"
        .."label[2,1.6;"..brown.."]"
        .."label[2,1.9;"..cyan.."]"
        .."label[2,2.2;"..dgreen.."]"
        .."label[2.5,1;Dark Grey:]"
        .."label[2.5,1.3;Green:]"
        .."label[2.5,1.6;Grey:]"
        .."label[2.5,1.9;Magenta:]"
        .."label[2.5,2.2;Orange:]"
        .."label[4.5,1;"..dgrey.."]"
        .."label[4.5,1.3;"..green.."]"
        .."label[4.5,1.6;"..grey.."]"
        .."label[4.5,1.9;"..magenta.."]"
        .."label[4.5,2.2;"..orange.."]"
        .."label[5,1;Pink:]"
        .."label[5,1.3;Red:]"
        .."label[5,1.6;Violet:]"
        .."label[5,1.9;White:]"
        .."label[5,2.2;Yellow:]"
        .."label[7,1;"..pink.."]"
        .."label[7,1.3;"..red.."]"
        .."label[7,1.6;"..violet.."]"
        .."label[7,1.9;"..white.."]"
        .."label[7,2.2;"..yellow.."]"
		.."image[2,2.8;1,1;tutorial_dye_background.png]"
		.."image[5,2.8;1,1;tutorial_colorstick_background.png]"
        .."list[current_player;colordye;2,2.8;1,1;]"
        .."list[current_player;stickdye;5,2.8;1,1;]"
		.."label[2.2,3.7;Dye]"
		.."label[4.5,3.7;Empty Color Stick]"
        .."button[1.5,4.3;2,0.5;colordye;Add]"
        .."button[4.5,4.3;2,0.5;stickdye;Fill]"
		.."listring[current_player;main]"
        .."listring[current_player;colordye]"
		.."listring[current_player;main]"
        .."listring[current_player;stickdye]"
	return formspec
end