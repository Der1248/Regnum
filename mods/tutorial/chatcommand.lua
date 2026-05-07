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
	privs = {privs=true},
	func = function(name, param)
		local player = minetest.get_player_by_name(name)
		local inv = player:get_inventory()
        awards.unlock(name, "award_ruby_bronze")
        awards.unlock(name, "award_ruby_silber")
        awards.unlock(name, "award_ruby_gold")
        awards.unlock(name, "award_ruby_platin")
        awards.unlock(name, "award_sapphire_bronze")
        awards.unlock(name, "award_sapphire_silber")
        awards.unlock(name, "award_sapphire_gold")
        awards.unlock(name, "award_sapphire_platin")
        awards.unlock(name, "award_amethyst_bronze")
        awards.unlock(name, "award_amethyst_silber")
        awards.unlock(name, "award_amethyst_Gold")
        awards.unlock(name, "award_amethyst_platin")
        awards.unlock(name, "award_shadow_bronze")
        awards.unlock(name, "award_shadow_silber")
        awards.unlock(name, "award_shadow_gold")
        awards.unlock(name, "award_shadow_platin")
        awards.unlock(name, "award_pearl_bronze")
        awards.unlock(name, "award_pearl_silber")
        awards.unlock(name, "award_pearl_gold")
        awards.unlock(name, "award_pearl_platin")
        awards.unlock(name, "award_emerald_bronze")
        awards.unlock(name, "award_emerald_silber")
        awards.unlock(name, "award_emerald_gold")
        awards.unlock(name, "award_emerald_platin")
        awards.unlock(name, "award_admin_ore_bronze")
        awards.unlock(name, "award_admin_ore_silber")
        awards.unlock(name, "award_admin_ore_gold")
        awards.unlock(name, "award_admin_ore_platin")
        awards.unlock(name, "award_titan_ore_bronze")
        awards.unlock(name, "award_titan_ore_silber")
        awards.unlock(name, "award_titan_ore_gold")
        awards.unlock(name, "award_titan_ore_platin")
        awards.unlock(name, "award_regnum_ore_bronze")
        awards.unlock(name, "award_regnum_ore_silber")
        awards.unlock(name, "award_regnum_ore_gold")
        awards.unlock(name, "award_regnum_ore_platin")
        awards.unlock(name, "award_???_bronze")
        awards.unlock(name, "award_???_silber")
        awards.unlock(name, "award_???_gold")
        awards.unlock(name, "award_???_platin")
		awards.unlock(name, "award_???_regnum")
        awards.unlock(name, "award_???_nyancat")
		inv:add_item("dgon", "default:dirt")
        inv:add_item("ttoise", "default:dirt")
        inv:add_item("artrew", "default:dirt")
        inv:add_item("medrew", "default:dirt")
        inv:add_item("trerew", "default:dirt")
        inv:add_item("trorew", "default:dirt")
        inv:add_item("colreward", "default:dirt")
        inv:add_item("dragon", "tutorial:dragon_crystal")
        inv:add_item("tortoise", "tutorial:dragon_crystal")
		inv:add_item("main", "tutorial:regnumbattleaxe1")
        inv:add_item("main", "tutorial:regnumgun1")
        inv:add_item("main", "tutorial:regnumwings1")
        inv:add_item("main", "tutorial:wallplacer5_1")
        inv:add_item("main", "tutorial:legendstick9")
        inv:add_item("main", "technic:laser_mkS150")
        inv:add_item("main", "technic:drill_mkS150_1")
        inv:add_item("main", "tutorial:colorstick1")
        inv:add_item("main", "tutorial:molestick5")
        inv:add_item("main", "tutorial:xraystick3")
        inv:add_item("armor", "3d_armor:regnumhelmet")
        inv:add_item("armor", "3d_armor:regnumchestplate")
        inv:add_item("armor", "3d_armor:regnumleggings")
        inv:add_item("armor", "3d_armor:regnumboots")
        inv:add_item("armor", "shields:regnumshield")
        inv:add_item("armor", "tutorial:energyheart12")
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

        inv:set_stack("arm2", 1, "tutorial:protection_schluessel3")
        inv:set_stack("fox", 1, "default:dirt 80")
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
        inv:add_item("bronze_key", "tutorial:bronzekey")
        minetest.chat_send_all(player:get_player_name().." has 25 Regnum things and is able to spawn a 1248 Knight")
        minetest.chat_send_all(player:get_player_name().." has 50 Regnum things and is able to repair the color stick")
		for i=1,8 do
			inv:set_stack("bag",i, "bags:trolley_admin")
			inv:set_stack("kri",i,"tutorial:legenden_kristall_"..i)
		end
        for i=1,20 do
            inv:set_stack("xpi2",i,"tutorial:level"..i.."_rot")
            inv:set_stack("xpi3",i,"tutorial:level"..i.."_blau")
		end
        for i=1,25 do
            inv:set_stack("xpi6",i,"tutorial:level"..i.."_cyan")
		end
        for i=1,40 do
            inv:set_stack("xpi8",i,"tutorial:level"..i.."_silver")
		end
        for i=1,100 do
            inv:set_stack("xpi1",i,"tutorial:level"..i)
            inv:set_stack("xpi4",i,"tutorial:level"..i.."_grau")
            inv:set_stack("xpi5",i,"tutorial:level"..i.."_gelb")
            inv:set_stack("xpi7",i,"tutorial:level"..i.."_bronze")
		end
        inv:set_stack("xpi1", 101, "tutorial:levelMAX")
		inv:set_stack("xpi2", 21, "tutorial:levelMAX_rot")
		inv:set_stack("xpi3", 21, "tutorial:levelMAX_blau")
		inv:set_stack("xpi4", 101, "tutorial:levelMAX_grau")
        inv:set_stack("xpi5", 101, "tutorial:levelMAX_gelb")
        inv:set_stack("xpi6", 26, "tutorial:levelMAX_cyan")
        inv:set_stack("xpi7", 101, "tutorial:levelMAX_bronze")

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
        local armor_inv = minetest.get_inventory({type="detached", name=name.."_armor"})
        armor_inv:set_stack("armor", 1, "3d_armor:regnumhelmet")
        armor_inv:set_stack("armor", 2, "3d_armor:regnumchestplate")
        armor_inv:set_stack("armor", 3, "3d_armor:regnumleggings")
        armor_inv:set_stack("armor", 4, "3d_armor:regnumboots")
        armor_inv:set_stack("armor", 5, "shields:regnumshield")
        armor_inv:set_stack("armor", 6, "tutorial:energyheart12")

		experience.set(player, "experience_green", 11950)
		experience.set(player, "experience_blue", 250)
		experience.set(player, "experience_red", 250)
		experience.set(player, "experience_grey", 3200)
		experience.set(player, "experience_yellow", 600)
		experience.set(player, "experience_cyan", 900)
		experience.set(player, "experience_bronze", 1500)
		experience.set(player, "experience_silver", 400)

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
        for i=1,54,1 do
		    player_inv:set_stack("a"..i, 1, "default:dirt")
        end
        set_new_hp(player)
        armor:save_armor_inventory(player)
		armor:set_player_armor(player)
	end,
})
--v.1.5.0
minetest.register_chatcommand("rank", {
	params = "",
	description = "Show your Rank",
	privs = {},
	func = function(name, param)
		pri = minetest.get_player_privs(name)
        if pri.privs then
			minetest.chat_send_player(name, "Your Rank: Admin")
		elseif pri.shout and pri.ban and pri.kick and pri.interact and pri.basic_privs and pri.settime then
			minetest.chat_send_player(name, "Your Rank: Moderator")
		elseif pri.interact and pri.shout then
			minetest.chat_send_player(name, "Your Rank: Member")
		else
			minetest.chat_send_player(name, "Your Rank: Outsider")
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
	privs = {privs=true},
	func = function(name, param)
		local player = minetest.get_player_by_name(name)
		local inv = player:get_inventory()
		inv:add_item("main", "tutorial:adminbattleaxe")
        inv:add_item("main", "tutorial:gun_admin1")
        inv:add_item("main", "tutorial:adminwallplacer_1")
        inv:add_item("main", "tutorial:legendstick_admin")
		inv:add_item("main", "technic:laser_mkA1")
        inv:add_item("main", "technic:mining_drill_mkA1_1")
        inv:add_item("main", "tutorial:molestick_admin")
        inv:add_item("main", "tutorial:xraystick_admin")
		inv:add_item("main", "tutorial:server_hammer1")
		inv:add_item("main", "tutorial:monster_remover")
		inv:add_item("main", "3d_armor:helmet_admin")
		inv:add_item("main", "3d_armor:chestplate_admin")
		inv:add_item("main", "3d_armor:leggings_admin")
		inv:add_item("main", "3d_armor:boots_admin")
		inv:add_item("main", "shields:shield_admin")
        inv:add_item("main", "tutorial:adminheart")
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
