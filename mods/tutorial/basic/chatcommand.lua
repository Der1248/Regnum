--v.2.0.0
--v.1.13.0
--v.1.12.0
--v.1.11.1
--v.1.11.0
--v.1.10.0
--v.1.9.2
--v.1.9.1
--v.1.9.0
--v.1.8.0
--v.1.7.5
--v.1.7.4
--v.1.7.3
--v.1.7.2
--v.1.7.1
--v.1.7.0
--v.1.6.0
minetest.register_chatcommand("regnum", {
	params = "<paper>",
	description = "Gives you all regnum things",
	privs = {give=true},
	func = function(name, param)
		local player = minetest.get_player_by_name(name)
		local inv = player:get_inventory()
        awards.give_achievement(name, "award_ruby_bronze")
        awards.give_achievement(name, "award_ruby_silber")
        awards.give_achievement(name, "award_ruby_gold")
        awards.give_achievement(name, "award_ruby_platin")
        awards.give_achievement(name, "award_sapphire_bronze")
        awards.give_achievement(name, "award_sapphire_silber")
        awards.give_achievement(name, "award_sapphire_gold")
        awards.give_achievement(name, "award_sapphire_platin")
        awards.give_achievement(name, "award_amethyst_bronze")
        awards.give_achievement(name, "award_amethyst_silber")
        awards.give_achievement(name, "award_amethyst_Gold")
        awards.give_achievement(name, "award_amethyst_platin")
        awards.give_achievement(name, "award_shadow_bronze")
        awards.give_achievement(name, "award_shadow_silber")
        awards.give_achievement(name, "award_shadow_gold")
        awards.give_achievement(name, "award_shadow_platin")
        awards.give_achievement(name, "award_pearl_bronze")
        awards.give_achievement(name, "award_pearl_silber")
        awards.give_achievement(name, "award_pearl_gold")
        awards.give_achievement(name, "award_pearl_platin")
        awards.give_achievement(name, "award_emerald_bronze")
        awards.give_achievement(name, "award_emerald_silber")
        awards.give_achievement(name, "award_emerald_gold")
        awards.give_achievement(name, "award_emerald_platin")
        awards.give_achievement(name, "award_admin_ore_bronze")
        awards.give_achievement(name, "award_admin_ore_silber")
        awards.give_achievement(name, "award_admin_ore_gold")
        awards.give_achievement(name, "award_admin_ore_platin")
        awards.give_achievement(name, "award_titan_ore_bronze")
        awards.give_achievement(name, "award_titan_ore_silber")
        awards.give_achievement(name, "award_titan_ore_gold")
        awards.give_achievement(name, "award_titan_ore_platin")
        awards.give_achievement(name, "award_regnum_ore_bronze")
        awards.give_achievement(name, "award_regnum_ore_silber")
        awards.give_achievement(name, "award_regnum_ore_gold")
        awards.give_achievement(name, "award_regnum_ore_platin")
        awards.give_achievement(name, "award_???_bronze")
        awards.give_achievement(name, "award_???_silber")
        awards.give_achievement(name, "award_???_gold")
        awards.give_achievement(name, "award_???_platin")
        inv:set_size("rew", 1)
        inv:set_size("rewb", 1)
		inv:set_size("b", 1)
		inv:set_size("feld2", 1)
		inv:set_size("feld", 1)
		inv:set_size("feld3", 1)
		inv:set_size("feld4", 1)
        inv:set_size("feld5", 1)
        inv:set_size("feld6", 1)
        inv:set_size("feld7", 1)
        inv:set_size("feld8", 1)
        inv:set_size("gem", 5)
        inv:set_size("2gem", 5)
        inv:set_size("armor", 5)
		inv:set_size("skinskey", 1)
        inv:set_size("skinskey2", 1)
        inv:set_size("cookkey", 1)
        inv:set_size("krit", 1)
        inv:set_size("artrew", 1)
        inv:set_size("medrew", 1)
        inv:set_size("trerew", 1)
        inv:set_size("trorew", 1)
        inv:set_size("dragon", 1)
        inv:set_size("tortoise", 1)
        inv:set_size("fox", 1)
        inv:set_size("xpi1", 100)
        inv:set_size("xpi2", 20)
        inv:set_size("xpi3", 20)
        inv:set_size("xpi4", 100)
        inv:set_size("xpi5", 100)
        inv:set_size("xpi6", 25)
        inv:set_size("pixkey", 1)
        inv:set_size("trophcr", 1)
        inv:set_size("tearred", 1)
        inv:set_size("tearblue", 1)
        inv:set_size("teargreen", 1)
        inv:set_size("tearpurple", 1)
        inv:set_size("tearyellow", 1)
        inv:set_size("tearcyan", 1)
        inv:add_item("artrew", "default:dirt")
        inv:add_item("medrew", "default:dirt")
        inv:add_item("trerew", "default:dirt")
        inv:add_item("trorew", "default:dirt")
        inv:add_item("dragon", "tutorial:dragon_crystal")
        inv:add_item("tortoise", "tutorial:dragon_crystal")
		inv:add_item("main", "tutorial:regnumbattleaxe1")
        inv:add_item("main", "tutorial:regnumgun1")
        inv:add_item("main", "tutorial:wallplacer5_1")
        inv:add_item("main", "tutorial:legendstick9")
        inv:add_item("main", "technic:laser_mkS150")
        inv:add_item("main", "technic:drill_mkS150")
        inv:add_item("main", "tutorial:colorstick_empty")
        inv:add_item("gem", "tutorial:magic_gem1")
        inv:add_item("gem", "tutorial:magic_gem2")
        inv:add_item("gem", "tutorial:magic_gem3")
        inv:add_item("gem", "tutorial:magic_gem4")
        inv:add_item("gem", "tutorial:magic_gem5")
        inv:add_item("2gem", "tutorial:magic_gem1")
        inv:add_item("2gem", "tutorial:magic_gem2")
        inv:add_item("2gem", "tutorial:magic_gem3")
        inv:add_item("2gem", "tutorial:magic_gem4")
        inv:add_item("2gem", "tutorial:magic_gem5")
        inv:set_stack("tearred", 1, "tutorial:medallion 100")
        inv:set_stack("tearblue", 1, "tutorial:medallion 100")
        inv:set_stack("teargreen", 1, "tutorial:medallion 100")
        inv:set_stack("tearyellow", 1, "tutorial:medallion 100")
        inv:set_stack("tearcyan", 1, "tutorial:medallion 100")
        inv:set_stack("tearpurple", 1, "tutorial:medallion 100")
        inv:set_stack("armor", 1, "3d_armor:regnumhelmet")
        inv:set_stack("armor", 2, "3d_armor:regnumchestplate")
        inv:set_stack("armor", 3, "3d_armor:regnumleggings")
        inv:set_stack("armor", 4, "3d_armor:regnumboots")
        inv:set_stack("armor", 5, "shields:regnumshield")
        inv:set_stack("arm2", 1, "tutorial:protection_schluessel3")
		inv:add_item("main", "tutorial:levelMAX_rot")
		inv:add_item("main", "tutorial:levelMAX_blau")
		inv:add_item("main", "tutorial:levelMAX_grau")
        inv:add_item("main", "tutorial:levelMAX_gelb")
        inv:add_item("main", "tutorial:levelMAX_cyan")
        inv:set_stack("fox", 1, "default:dirt 80")
		inv:add_item("main", "tutorial:levelMAX")
		inv:add_item("b", "tutorial:bag_schluessel4")
		inv:add_item("arm", "tutorial:armor_key")
		inv:add_item("feld2", "tutorial:level_schluessel")
		inv:add_item("feld", "tutorial:craft_schluessel7")
		inv:add_item("feld3", "tutorial:legenden_schluessel")
		inv:add_item("feld4", "tutorial:regnum_key")
        inv:add_item("feld5", "tutorial:dragon_schluessel")
        inv:add_item("feld6", "tutorial:fox_schluessel")
        inv:add_item("feld7", "tutorial:tortoise_schluessel")
        inv:add_item("feld8", "tutorial:golden_schluessel")
		inv:add_item("skinskey", "tutorial:regnum_key_pixeled")
        inv:add_item("pixkey", "tutorial:regnum_key_pixeled")
        inv:add_item("skinskey2", "tutorial:knight_schluessel")
        inv:add_item("cookkey", "tutorial:cooking_schluessel4")
        inv:add_item("krit", "tutorial:crystal_schluessel")
        inv:add_item("main", "mobs:knight_1248_egg")
        inv:add_item("rew", "default:dirt")
        inv:add_item("rewb", "default:dirt")
        minetest.chat_send_all(player:get_player_name().." has 25 Regnum things and is able to spawn a 1248 Knight")
        minetest.chat_send_all(player:get_player_name().." has 50 Regnum things and is able to repair the color stick")
		for i=1,8 do
			inv:set_size("bag"..i, 1)
			inv:set_size("kri", 8)
			inv:set_stack("bag"..i,1, "bags:trolley_admin")
			inv:set_stack("kri",i,"tutorial:legenden_kristall_"..i)
		end
        for i=1,20 do
            inv:set_stack("xpi2",i,"tutorial:level"..i.."_rot")
            inv:set_stack("xpi3",i,"tutorial:level"..i.."_blau")
		end
        for i=1,25 do
            inv:set_stack("xpi6",i,"tutorial:level"..i.."_cyan")
		end
        for i=1,100 do
            inv:set_stack("xpi1",i,"tutorial:level"..i)
            inv:set_stack("xpi4",i,"tutorial:level"..i.."_grau")
            inv:set_stack("xpi5",i,"tutorial:level"..i.."_gelb")
		end
        inv:set_size("medallionred", 9)
        inv:set_size("medallionblue", 9)
        inv:set_size("medalliongreen", 9)
        inv:set_size("medallionyellow", 9)
        inv:set_size("medallionpurple", 9)
        inv:set_size("medallioncyan", 9)
        inv:set_size("medalliongray", 9)
        for i=1,9 do
			inv:set_stack("medallionred",i,"default:dirt")
            inv:set_stack("medallionblue",i,"default:dirt")
            inv:set_stack("medalliongreen",i,"default:dirt")
            inv:set_stack("medallionyellow",i,"default:dirt")
            inv:set_stack("medallionpurple",i,"default:dirt")
            inv:set_stack("medallioncyan",i,"default:dirt")
            inv:set_stack("medalliongray",i,"default:dirt")
		end
		local player_inv = player:get_inventory()
        local name = player:get_player_name()
	    local player_inv = player:get_inventory()
	    local armor_inv = minetest.create_detached_inventory(name.."_armor", {
		on_put = function(inv, listname, index, stack, player)
			player:get_inventory():set_stack(listname, index, stack)
			armor:set_player_armor(player)
			armor:update_inventory(player)
		end,
		on_take = function(inv, listname, index, stack, player)
			player:get_inventory():set_stack(listname, index, nil)
			armor:set_player_armor(player)
			armor:update_inventory(player)
		end,
		on_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			local plaver_inv = player:get_inventory()
			local stack = inv:get_stack(to_list, to_index)
			player_inv:set_stack(to_list, to_index, stack)
			player_inv:set_stack(from_list, from_index, nil)
			armor:set_player_armor(player)
			armor:update_inventory(player)
		end,
		allow_put = function(inv, listname, index, stack, player)
			if listname == "armor" then
                if index == 1 and stack:get_definition().groups.armor_head then
			      return 1
			    elseif index == 2 and stack:get_definition().groups.armor_torso then
			      return 1
			    elseif index == 3 and stack:get_definition().groups.armor_legs then
			      return 1
			    elseif index == 4 and stack:get_definition().groups.armor_feet then
			      return 1
		        elseif index == 5 and stack:get_definition().groups.armor_shield then
			      return 1
			    else
			      return 0
			    end
            else
                return 1
            end

		end,
		allow_take = function(inv, listname, index, stack, player)
			return stack:get_count()
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			if listname == "armor" then
                if index == 1 and stack:get_definition().groups.armor_head then
			      return 1
			    elseif index == 2 and stack:get_definition().groups.armor_torso then
			      return 1
			    elseif index == 3 and stack:get_definition().groups.armor_legs then
			      return 1
			    elseif index == 4 and stack:get_definition().groups.armor_feet then
			      return 1
		        elseif index == 5 and stack:get_definition().groups.armor_shield then
			      return 1
			    else
			      return 0
			    end
            else
                return 1
            end
		end,
	})
	armor_inv:set_size("armor", 5)
    armor_inv:set_size("arm2", 1)
    player_inv:set_size("arm", 1)
    player_inv:set_size("arm2", 1)
	player_inv:set_size("armor", 5)
    
    local stack = player_inv:get_stack("arm2", 1)
	armor_inv:set_stack("arm2", 1, stack)
	for i=1, 5 do
		local stack = player_inv:get_stack("armor", i)
		armor_inv:set_stack("armor", i, stack)
	end	
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
			player:get_inventory():set_size("bag"..i.."contents", player_inv:get_stack("bag"..i, 1):get_definition().groups.bagslots)
			bags_inv:set_stack(bag,1,player_inv:get_stack(bag,1))
		end
		file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience", "w")
		file:write("11950")
		file:close()
		file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_blau", "w")
		file:write("250")
		file:close()
		file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_rot", "w")
		file:write("250")
		file:close()
		file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_grau", "w")
		file:write("3200")
		file:close()
        file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_gelb", "w")
		file:write("600")
		file:close()
        file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_cyan", "w")
		file:write("900")
		file:close()
		player_inv:set_size("catdna", 1)
		player_inv:set_size("dogdna", 1)
        player_inv:set_size("sheepdna", 1)
        player_inv:set_size("dragondna", 1)
        player_inv:set_size("foxdna", 1)
        player_inv:set_size("tortoisedna", 1)
		player_inv:add_item("catdna","default:dirt 21")
		player_inv:add_item("main","mobs:cat_egg")
		player_inv:add_item("dogdna","default:dirt 21")
		player_inv:add_item("main","mobs:dog_egg")
        player_inv:add_item("sheepdna","default:dirt 21")
        player_inv:add_item("main","mobs:sheep_egg")
        player_inv:add_item("dragondna","default:dirt 26")
        player_inv:add_item("main","mobs:dragon_egg")
        player_inv:add_item("foxdna","default:dirt 26")
        player_inv:add_item("main","mobs:fox_egg")
        player_inv:add_item("tortoisedna","default:dirt 51")
        player_inv:add_item("main","mobs:tortoise_egg")
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
        player_inv:set_size("r1248", 6)
        for j=1,12,1 do
            for i=1,5,1 do
                player_inv:set_stack("art"..j, i, "default:dirt")
            end
        end
        for i=1,11,1 do
            player_inv:set_stack("art13", i, "default:dirt")
        end
        for i=1,6,1 do
            player_inv:set_stack("r1248", i, "default:dirt")
        end
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
		player_inv:set_stack("a1", 1, "default:dirt")
		player_inv:set_stack("a2", 1, "default:dirt")
		player_inv:set_stack("a3", 1, "default:dirt")
		player_inv:set_stack("a4", 1, "default:dirt")
		player_inv:set_stack("a5", 1, "default:dirt")
		player_inv:set_stack("a6", 1, "default:dirt")
		player_inv:set_stack("a7", 1, "default:dirt")
		player_inv:set_stack("a8", 1, "default:dirt")
		player_inv:set_stack("a9", 1, "default:dirt")
		player_inv:set_stack("a10", 1, "default:dirt")
		player_inv:set_stack("a11", 1, "default:dirt")
		player_inv:set_stack("a12", 1, "default:dirt")
		player_inv:set_stack("a13", 1, "default:dirt")
		player_inv:set_stack("a14", 1, "default:dirt")
		player_inv:set_stack("a15", 1, "default:dirt")
		player_inv:set_stack("a16", 1, "default:dirt")
        player_inv:set_stack("a17", 1, "default:dirt")
        player_inv:set_stack("a18", 1, "default:dirt")
        player_inv:set_stack("a19", 1, "default:dirt")
        player_inv:set_stack("a20", 1, "default:dirt")
        player_inv:set_stack("a21", 1, "default:dirt")
        player_inv:set_stack("a22", 1, "default:dirt")
        player_inv:set_stack("a23", 1, "default:dirt")
        player_inv:set_stack("a24", 1, "default:dirt")
        player_inv:set_stack("a25", 1, "default:dirt")
        player_inv:set_stack("a26", 1, "default:dirt")
        player_inv:set_stack("a27", 1, "default:dirt")
        player_inv:set_stack("a28", 1, "default:dirt")
        player_inv:set_stack("a29", 1, "default:dirt")
        player_inv:set_stack("a30", 1, "default:dirt")
        player_inv:set_stack("a31", 1, "default:dirt")
        player_inv:set_stack("a32", 1, "default:dirt")
        player_inv:set_stack("a33", 1, "default:dirt")
        player_inv:set_stack("a34", 1, "default:dirt")
        player_inv:set_stack("a35", 1, "default:dirt")
        player_inv:set_stack("a36", 1, "default:dirt")
        player_inv:set_stack("a37", 1, "default:dirt")
        player_inv:set_stack("a38", 1, "default:dirt")
        player_inv:set_stack("a39", 1, "default:dirt")
        player_inv:set_stack("a40", 1, "default:dirt")
        player_inv:set_stack("a41", 1, "default:dirt")
        player_inv:set_stack("a42", 1, "default:dirt")
        player_inv:set_stack("a43", 1, "default:dirt")
        player_inv:set_stack("a44", 1, "default:dirt")
        player_inv:set_stack("a45", 1, "default:dirt")
        player_inv:set_stack("a46", 1, "default:dirt")
        player_inv:set_stack("a47", 1, "default:dirt")
        player_inv:set_stack("a48", 1, "default:dirt")
        player_inv:set_stack("a49", 1, "default:dirt")
        player_inv:set_stack("a50", 1, "default:dirt")
	end,
})
--v.1.5.0
minetest.register_chatcommand("rank", {
	params = "",
	description = "Show your Rank",
	privs = {},
	func = function(name, param)
		pri = minetest.get_player_privs(name)
        if pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.zoom and pri.teleport and pri.noclip and pri.debug and pri.settime and pri.bring and pri.server and pri.password and pri.delprotect and pri.kick and pri.ban and pri.rollback and pri.privs and pri.basic_privs and pri.give and pri.sign_editor and pri.protection_bypass and pri.travelnet_remove and pri.travelnet_attach and pri.shop_admin then
			minetest.chat_send_player(name, "Your Rank: Admin")
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.zoom and pri.teleport and pri.noclip and pri.debug and pri.settime and pri.bring then
			minetest.chat_send_player(name, "Your Rank: Legend")
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.zoom and pri.teleport and pri.noclip and pri.debug then
			minetest.chat_send_player(name, "Your Rank: Hero")
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.zoom and pri.teleport then
			minetest.chat_send_player(name, "Your Rank: VIP")
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.zoom then
			minetest.chat_send_player(name, "Your Rank: Premium")
		elseif pri.interact and pri.shout then
			minetest.chat_send_player(name, "Your Rank: Member")
		else
			minetest.chat_send_player(name, "Your Rank: Enemy")
		end
	end,
})
--v.1.4.4
--v.1.4.3
--v.1.4.2
--v.1.4.1
--v.1.4.0
--v.1.3.3
--v.1.3.2
--v.1.3.1
--v.1.3.0
--v.1.2.4
--v.1.2.3
--v.1.2.2
--v.1.2.1
--v.1.2.0
minetest.register_chatcommand("admin", {
	params = "",
	description = "Gives you all admin tools",
	privs = {give=true},
	func = function(name, param)
		local player = minetest.get_player_by_name(name)
		local inv = player:get_inventory()
		inv:add_item("main", "ban_hammer:hammer")			--admin tool 1
		inv:add_item("main", "tutorial:pistole")			--admin tool 2
		inv:add_item("main", "tutorial:adminbattleaxe")		--admin tool 3
		inv:add_item("main", "technic:laser_mkA1")			--admin tool 4
		inv:add_item("main", "technic:chainsaw")			--admin tool 5
		inv:add_item("main", "tutorial:server_hammer")		--admin tool 6
		inv:add_item("main", "tutorial:monster_remover")	--admin tool 7
        inv:add_item("main", "technic:mining_drill_mkA1")	--admin tool 8
        inv:add_item("main", "tutorial:adminwallplacer_1")	--admin tool 9
        inv:add_item("main", "tutorial:legendstick_admin")	--admin tool 10
        inv:add_item("main", "tutorial:gun_admin1")	        --admin tool 11
		inv:add_item("main", "3d_armor:helmet_admin")
		inv:add_item("main", "3d_armor:chestplate_admin")
		inv:add_item("main", "3d_armor:leggings_admin")
		inv:add_item("main", "3d_armor:boots_admin")
		inv:add_item("main", "shields:shield_admin")
	end,
})
--v.1.1.5
--v.1.1.4
--v.1.1.3
--v.1.1.2
--v.1.1.1
--v.1.1.0
--v.1.0.10
--v.1.0.9
--v.1.0.8
--v.1.0.7
--v.1.0.6
--v.1.0.5
--v.1.0.4
--v.1.0.3
--v.1.0.2
--v.1.0.1
--v.1.0.0
--v.0.23.3
--v.0.23.2
--v.0.23.1
--v.0.23.0
--v.0.22.1
--v.0.22.0
--v.0.21.0
--v.0.20.0
--v.0.19.1
--v.0.18.0
--v.0.17.0
--v.0.16.0
--v.0.15.0
--v.0.14.0
--v.0.13.0
--v.0.12.0
--v.0.11.0
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
--v.0.2.0
--v.0.1.0