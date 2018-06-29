minetest.register_on_dignode(function(pos, oldnode, digger)
	namer = oldnode.name
	see_if_mineral = minetest.get_item_group(namer, "xpg")
	if see_if_mineral > 0 then
		minetest.env:add_entity(pos, "experience:orb_grau")
	end
end)

minetest.register_on_newplayer(function(player)
	file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_grau", "w")
	file:write("0")
	file:close()
end)

grau_level1 = 5
grau_level1_drop = "tutorial:coin_grau 1"
grau_level1S = 5
grau_level1S_drop = "tutorial:level1_grau"


grau_level2 = 10
grau_level2_drop = "tutorial:coin_grau 1"
grau_level2S = 10
grau_level2S_drop = "tutorial:level2_grau"


grau_level3 = 15
grau_level3_drop = "tutorial:coin_grau 1"
grau_level3S = 15
grau_level3S_drop = "tutorial:level3_grau"


grau_level4 = 20
grau_level4_drop = "tutorial:coin_grau 1"
grau_level4S = 20
grau_level4S_drop = "tutorial:level4_grau"


grau_level5 = 25
grau_level5_drop = "tutorial:coin_grau 1"
grau_level5S = 25
grau_level5S_drop = "tutorial:level5_grau"


grau_level6 = 30
grau_level6_drop = "tutorial:coin_grau 1"
grau_level6S = 30
grau_level6S_drop = "tutorial:level6_grau"


grau_level7 = 35
grau_level7_drop = "tutorial:coin_grau 1"
grau_level7S = 35
grau_level7S_drop = "tutorial:level7_grau"


grau_level8 = 40
grau_level8_drop = "tutorial:coin_grau 1"
grau_level8S = 40
grau_level8S_drop = "tutorial:level8_grau"


grau_level9 = 45
grau_level9_drop = "tutorial:coin_grau 1"
grau_level9S = 45
grau_level9S_drop = "tutorial:level9_grau"


grau_level10 = 50
grau_level10_drop = "tutorial:coin_grau 1"
grau_level10S = 50
grau_level10S_drop = "tutorial:level10_grau"
grau_level10SS = 50
grau_level10SS_drop = "tutorial:xp_block"


grau_level11 = 60
grau_level11_drop = "tutorial:coin_grau 2"
grau_level11S = 60
grau_level11S_drop = "tutorial:level11_grau"


grau_level12 = 70
grau_level12_drop = "tutorial:coin_grau 2"
grau_level12S = 70
grau_level12S_drop = "tutorial:level12_grau"


grau_level13 = 80
grau_level13_drop = "tutorial:coin_grau 2"
grau_level13S = 80
grau_level13S_drop = "tutorial:level13_grau"


grau_level14 = 90
grau_level14_drop = "tutorial:coin_grau 2"
grau_level14S = 90
grau_level14S_drop = "tutorial:level14_grau"


grau_level15 = 100
grau_level15_drop = "tutorial:coin_grau 2"
grau_level15S = 100
grau_level15S_drop = "tutorial:level15_grau"


grau_level16 = 110
grau_level16_drop = "tutorial:coin_grau 2"
grau_level16S = 110
grau_level16S_drop = "tutorial:level16_grau"


grau_level17 = 120
grau_level17_drop = "tutorial:coin_grau 2"
grau_level17S = 120
grau_level17S_drop = "tutorial:level17_grau"


grau_level18 = 130
grau_level18_drop = "tutorial:coin_grau 2"
grau_level18S = 130
grau_level18S_drop = "tutorial:level18_grau"


grau_level19 = 140
grau_level19_drop = "tutorial:coin_grau 2"
grau_level19S = 140
grau_level19S_drop = "tutorial:level19_grau"


grau_level20 = 150
grau_level20_drop = "tutorial:coin_grau 2"
grau_level20S = 150
grau_level20S_drop = "tutorial:level20_grau"
grau_level20SS = 150
grau_level20SS_drop = "tutorial:xp_block"


grau_level21 = 165
grau_level21_drop = "tutorial:coin_grau 3"
grau_level21S = 165
grau_level21S_drop = "tutorial:level21_grau"


grau_level22 = 180
grau_level22_drop = "tutorial:coin_grau 3"
grau_level22S = 180
grau_level22S_drop = "tutorial:level22_grau"


grau_level23 = 195
grau_level23_drop = "tutorial:coin_grau 3"
grau_level23S = 195
grau_level23S_drop = "tutorial:level23_grau"


grau_level24 = 210
grau_level24_drop = "tutorial:coin_grau 3"
grau_level24S = 210
grau_level24S_drop = "tutorial:level24_grau"


grau_level25 = 225
grau_level25_drop = "tutorial:coin_grau 3"
grau_level25S = 225
grau_level25S_drop = "tutorial:level25_grau"


grau_level26 = 240
grau_level26_drop = "tutorial:coin_grau 3"
grau_level26S = 240
grau_level26S_drop = "tutorial:level26_grau"


grau_level27 = 255
grau_level27_drop = "tutorial:coin_grau 3"
grau_level27S = 255
grau_level27S_drop = "tutorial:level27_grau"


grau_level28 = 270
grau_level28_drop = "tutorial:coin_grau 3"
grau_level28S = 270
grau_level28S_drop = "tutorial:level28_grau"


grau_level29 = 285
grau_level29_drop = "tutorial:coin_grau 3"
grau_level29S = 285
grau_level29S_drop = "tutorial:level29_grau"


grau_level30 = 300
grau_level30_drop = "tutorial:coin_grau 3"
grau_level30S = 300
grau_level30S_drop = "tutorial:level30_grau"
grau_level30SS = 300
grau_level30SS_drop = "tutorial:xp_block"

grau_level31 = 320
grau_level31_drop = "tutorial:coin_grau 4"
grau_level31S = 320
grau_level31S_drop = "tutorial:level31_grau"

grau_level32 = 340
grau_level32_drop = "tutorial:coin_grau 4"
grau_level32S = 340
grau_level32S_drop = "tutorial:level32_grau"

grau_level33 = 360
grau_level33_drop = "tutorial:coin_grau 4"
grau_level33S = 360
grau_level33S_drop = "tutorial:level33_grau"

grau_level34 = 380
grau_level34_drop = "tutorial:coin_grau 4"
grau_level34S = 380
grau_level34S_drop = "tutorial:level34_grau"

grau_level35 = 400
grau_level35_drop = "tutorial:coin_grau 4"
grau_level35S = 400
grau_level35S_drop = "tutorial:level35_grau"

grau_level36 = 420
grau_level36_drop = "tutorial:coin_grau 4"
grau_level36S = 420
grau_level36S_drop = "tutorial:level36_grau"

grau_level37 = 440
grau_level37_drop = "tutorial:coin_grau 4"
grau_level37S = 440
grau_level37S_drop = "tutorial:level37_grau"

grau_level38 = 460
grau_level38_drop = "tutorial:coin_grau 4"
grau_level38S = 460
grau_level38S_drop = "tutorial:level38_grau"

grau_level39 = 480
grau_level39_drop = "tutorial:coin_grau 4"
grau_level39S = 480
grau_level39S_drop = "tutorial:level39_grau"

grau_level40 = 500
grau_level40_drop = "tutorial:coin_grau 4"
grau_level40S = 500
grau_level40S_drop = "tutorial:level40_grau"
grau_level40SS = 500
grau_level40SS_drop = "tutorial:xp_block"

grau_level41 = 525
grau_level41_drop = "tutorial:coin_grau 5"
grau_level41S = 525
grau_level41S_drop = "tutorial:level41_grau"

grau_level42 = 550
grau_level42_drop = "tutorial:coin_grau 5"
grau_level42S = 550
grau_level42S_drop = "tutorial:level42_grau"

grau_level43 = 575
grau_level43_drop = "tutorial:coin_grau 5"
grau_level43S = 575
grau_level43S_drop = "tutorial:level43_grau"

grau_level44 = 600
grau_level44_drop = "tutorial:coin_grau 5"
grau_level44S = 600
grau_level44S_drop = "tutorial:level44_grau"

grau_level45 = 625
grau_level45_drop = "tutorial:coin_grau 5"
grau_level45S = 625
grau_level45S_drop = "tutorial:level45_grau"

grau_level46 = 650
grau_level46_drop = "tutorial:coin_grau 5"
grau_level46S = 650
grau_level46S_drop = "tutorial:level46_grau"

grau_level47 = 675
grau_level47_drop = "tutorial:coin_grau 5"
grau_level47S = 675
grau_level47S_drop = "tutorial:level47_grau"

grau_level48 = 700
grau_level48_drop = "tutorial:coin_grau 5"
grau_level48S = 700
grau_level48S_drop = "tutorial:level48_grau"

grau_level49 = 725
grau_level49_drop = "tutorial:coin_grau 5"
grau_level49S = 725
grau_level49S_drop = "tutorial:level49_grau"

grau_level50 = 750
grau_level50_drop = "tutorial:coin_grau 5"
grau_level50S = 750
grau_level50S_drop = "tutorial:level50_grau"
grau_level50SS = 750
grau_level50SS_drop = "tutorial:xp_block"

grau_level51 = 780
grau_level51_drop = "tutorial:coin_grau 6"
grau_level51S = 780
grau_level51S_drop = "tutorial:level51_grau"

grau_level52 = 810
grau_level52_drop = "tutorial:coin_grau 6"
grau_level52S = 810
grau_level52S_drop = "tutorial:level52_grau"

grau_level53 = 840
grau_level53_drop = "tutorial:coin_grau 6"
grau_level53S = 840
grau_level53S_drop = "tutorial:level53_grau"

grau_level54 = 870
grau_level54_drop = "tutorial:coin_grau 6"
grau_level54S = 870
grau_level54S_drop = "tutorial:level54_grau"

grau_level55 = 900
grau_level55_drop = "tutorial:coin_grau 6"
grau_level55S = 900
grau_level55S_drop = "tutorial:level55_grau"

grau_level56 = 930
grau_level56_drop = "tutorial:coin_grau 6"
grau_level56S = 930
grau_level56S_drop = "tutorial:level56_grau"

grau_level57 = 960
grau_level57_drop = "tutorial:coin_grau 6"
grau_level57S = 960
grau_level57S_drop = "tutorial:level57_grau"

grau_level58 = 990
grau_level58_drop = "tutorial:coin_grau 6"
grau_level58S = 990
grau_level58S_drop = "tutorial:level58_grau"

grau_level59 = 1020
grau_level59_drop = "tutorial:coin_grau 6"
grau_level59S = 1020
grau_level59S_drop = "tutorial:level59_grau"

grau_level60 = 1050
grau_level60_drop = "tutorial:coin_grau 6"
grau_level60S = 1050
grau_level60S_drop = "tutorial:level60_grau"
grau_level60SS = 1050
grau_level60SS_drop = "tutorial:xp_block"

grau_level61 = 1085
grau_level61_drop = "tutorial:coin_grau 7"
grau_level61S = 1085
grau_level61S_drop = "tutorial:level61_grau"

grau_level62 = 1120
grau_level62_drop = "tutorial:coin_grau 7"
grau_level62S = 1120
grau_level62S_drop = "tutorial:level62_grau"

grau_level63 = 1155
grau_level63_drop = "tutorial:coin_grau 7"
grau_level63S = 1155
grau_level63S_drop = "tutorial:level63_grau"

grau_level64 = 1190
grau_level64_drop = "tutorial:coin_grau 7"
grau_level64S = 1190
grau_level64S_drop = "tutorial:level64_grau"

grau_level65 = 1225
grau_level65_drop = "tutorial:coin_grau 7"
grau_level65S = 1225
grau_level65S_drop = "tutorial:level65_grau"

grau_level66 = 1260
grau_level66_drop = "tutorial:coin_grau 7"
grau_level66S = 1260
grau_level66S_drop = "tutorial:level66_grau"

grau_level67 = 1295
grau_level67_drop = "tutorial:coin_grau 7"
grau_level67S = 1295
grau_level67S_drop = "tutorial:level67_grau"

grau_level68 = 1330
grau_level68_drop = "tutorial:coin_grau 7"
grau_level68S = 1330
grau_level68S_drop = "tutorial:level68_grau"

grau_level69 = 1365
grau_level69_drop = "tutorial:coin_grau 7"
grau_level69S = 1365
grau_level69S_drop = "tutorial:level69_grau"

grau_level70 = 1400
grau_level70_drop = "tutorial:coin_grau 7"
grau_level70S = 1400
grau_level70S_drop = "tutorial:level70_grau"
grau_level70SS = 1400
grau_level70SS_drop = "tutorial:xp_block"

grau_level71 = 1440
grau_level71_drop = "tutorial:coin_grau 8"
grau_level71S = 1440
grau_level71S_drop = "tutorial:level71_grau"

grau_level72 = 1480
grau_level72_drop = "tutorial:coin_grau 8"
grau_level72S = 1480
grau_level72S_drop = "tutorial:level72_grau"

grau_level73 = 1520
grau_level73_drop = "tutorial:coin_grau 8"
grau_level73S = 1520
grau_level73S_drop = "tutorial:level73_grau"

grau_level74 = 1560
grau_level74_drop = "tutorial:coin_grau 8"
grau_level74S = 1560
grau_level74S_drop = "tutorial:level74_grau"

grau_level75 = 1600
grau_level75_drop = "tutorial:coin_grau 8"
grau_level75S = 1600
grau_level75S_drop = "tutorial:level75_grau"

grau_level76 = 1640
grau_level76_drop = "tutorial:coin_grau 8"
grau_level76S = 1640
grau_level76S_drop = "tutorial:level76_grau"

grau_level77 = 1680
grau_level77_drop = "tutorial:coin_grau 8"
grau_level77S = 1680
grau_level77S_drop = "tutorial:level77_grau"

grau_level78 = 1720
grau_level78_drop = "tutorial:coin_grau 8"
grau_level78S = 1720
grau_level78S_drop = "tutorial:level78_grau"

grau_level79 = 1760
grau_level79_drop = "tutorial:coin_grau 8"
grau_level79S = 1760
grau_level79S_drop = "tutorial:level79_grau"

grau_level80 = 1800
grau_level80_drop = "tutorial:coin_grau 8"
grau_level80S = 1800
grau_level80S_drop = "tutorial:level80_grau"
grau_level80SS = 1800
grau_level80SS_drop = "tutorial:xp_block"

grau_level81 = 1845
grau_level81_drop = "tutorial:coin_grau 9"
grau_level81S = 1845
grau_level81S_drop = "tutorial:level81_grau"

grau_level82 = 1890
grau_level82_drop = "tutorial:coin_grau 9"
grau_level82S = 1890
grau_level82S_drop = "tutorial:level82_grau"

grau_level83 = 1935
grau_level83_drop = "tutorial:coin_grau 9"
grau_level83S = 1935
grau_level83S_drop = "tutorial:level83_grau"

grau_level84 = 1980
grau_level84_drop = "tutorial:coin_grau 9"
grau_level84S = 1980
grau_level84S_drop = "tutorial:level84_grau"

grau_level85 = 2025
grau_level85_drop = "tutorial:coin_grau 9"
grau_level85S = 2025
grau_level85S_drop = "tutorial:level85_grau"

grau_level86 = 2070
grau_level86_drop = "tutorial:coin_grau 9"
grau_level86S = 2070
grau_level86S_drop = "tutorial:level86_grau"

grau_level87 = 2115
grau_level87_drop = "tutorial:coin_grau 9"
grau_level87S = 2115
grau_level87S_drop = "tutorial:level87_grau"

grau_level88 = 2160
grau_level88_drop = "tutorial:coin_grau 9"
grau_level88S = 2160
grau_level88S_drop = "tutorial:level88_grau"

grau_level89 = 2205
grau_level89_drop = "tutorial:coin_grau 9"
grau_level89S = 2205
grau_level89S_drop = "tutorial:level89_grau"

grau_level90 = 2250
grau_level90_drop = "tutorial:coin_grau 9"
grau_level90S = 2250
grau_level90S_drop = "tutorial:level90_grau"
grau_level90SS = 2250
grau_level90SS_drop = "tutorial:xp_block"

grau_level91 = 2300
grau_level91_drop = "tutorial:coin_grau 10"
grau_level91S = 2300
grau_level91S_drop = "tutorial:level91_grau"

grau_level92 = 2350
grau_level92_drop = "tutorial:coin_grau 10"
grau_level92S = 2350
grau_level92S_drop = "tutorial:level92_grau"

grau_level93 = 2400
grau_level93_drop = "tutorial:coin_grau 10"
grau_level93S = 2400
grau_level93S_drop = "tutorial:level93_grau"

grau_level94 = 2450
grau_level94_drop = "tutorial:coin_grau 10"
grau_level94S = 2450
grau_level94S_drop = "tutorial:level94_grau"

grau_level95 = 2500
grau_level95_drop = "tutorial:coin_grau 10"
grau_level95S = 2500
grau_level95S_drop = "tutorial:level95_grau"

grau_level96 = 2550
grau_level96_drop = "tutorial:coin_grau 10"
grau_level96S = 2550
grau_level96S_drop = "tutorial:level96_grau"

grau_level97 = 2600
grau_level97_drop = "tutorial:coin_grau 10"
grau_level97S = 2600
grau_level97S_drop = "tutorial:level97_grau"

grau_level98 = 2650
grau_level98_drop = "tutorial:coin_grau 10"
grau_level98S = 2650
grau_level98S_drop = "tutorial:level98_grau"

grau_level99 = 2700
grau_level99_drop = "tutorial:coin_grau 10"
grau_level99S = 2700
grau_level99S_drop = "tutorial:level99_grau"

grau_level100 = 2750
grau_level100_drop = "tutorial:coin_grau 10"
grau_level100S = 2750
grau_level100S_drop = "tutorial:level100_grau"
grau_level100SS = 2750
grau_level100SS_drop = "tutorial:legenden_schluessel"

grau_levelMAX = 3200
grau_levelMAX_drop = "tutorial:coin_grau 90"
grau_levelMAXS = 3200
grau_levelMAXS_drop = "tutorial:levelMAX_grau"


minetest.register_globalstep(function(dtime)
	for _,player in ipairs(minetest.get_connected_players()) do
		local pos = player:getpos()
		pos.y = pos.y+0.5
		for _,object in ipairs(minetest.env:get_objects_inside_radius(pos, 1)) do
			if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "experience:orb_grau" then
				--RIGHT HERE ADD IN THE CODE TO UPGRADE PLAYERS 
				object:setvelocity({x=0,y=0,z=0})
				object:get_luaentity().name = "STOP"
				minetest.sound_play("orb", {
					to_player = player:get_player_name(),
				})
				xpg = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_grau", "r")
				experience_grau = xpg:read("*l")
				xpg:close()
				if experience_grau ~= nil then
					new_xpg = experience_grau + 1
					xpg_write = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_grau", "w")
					xpg_write:write(new_xpg)
					xpg_write:close()
if new_xpg == grau_level1 then
						minetest.env:add_item(pos, grau_level1_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level1S then
						minetest.env:add_item(pos, grau_level1S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level2 then
						minetest.env:add_item(pos, grau_level2_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level2S then
						minetest.env:add_item(pos, grau_level2S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level3 then
						minetest.env:add_item(pos, grau_level3_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level3S then
						minetest.env:add_item(pos, grau_level3S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level4 then
						minetest.env:add_item(pos, grau_level4_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level4S then
						minetest.env:add_item(pos, grau_level4S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level5 then
						minetest.env:add_item(pos, grau_level5_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level5S then
						minetest.env:add_item(pos, grau_level5S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level6 then
						minetest.env:add_item(pos, grau_level6_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level6S then
						minetest.env:add_item(pos, grau_level6S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level7 then
						minetest.env:add_item(pos, grau_level7_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level7S then
						minetest.env:add_item(pos, grau_level7S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level8 then
						minetest.env:add_item(pos, grau_level8_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level8S then
						minetest.env:add_item(pos, grau_level8S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level9 then
						minetest.env:add_item(pos, grau_level9_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level9S then
						minetest.env:add_item(pos, grau_level9S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level10 then
						minetest.env:add_item(pos, grau_level10_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level10S then
						minetest.env:add_item(pos, grau_level10S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level10SS then
						minetest.env:add_item(pos, grau_level10SS_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level11 then
						minetest.env:add_item(pos, grau_level11_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level11S then
						minetest.env:add_item(pos, grau_level11S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level12 then
						minetest.env:add_item(pos, grau_level12_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level12S then
						minetest.env:add_item(pos, grau_level12S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level13 then
						minetest.env:add_item(pos, grau_level13_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level13S then
						minetest.env:add_item(pos, grau_level13S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level14 then
						minetest.env:add_item(pos, grau_level14_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level14S then
						minetest.env:add_item(pos, grau_level14S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level15 then
						minetest.env:add_item(pos, grau_level15_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level15S then
						minetest.env:add_item(pos, grau_level15S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level16 then
						minetest.env:add_item(pos, grau_level16_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level16S then
						minetest.env:add_item(pos, grau_level16S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level17 then
						minetest.env:add_item(pos, grau_level17_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level17S then
						minetest.env:add_item(pos, grau_level17S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level18 then
						minetest.env:add_item(pos, grau_level18_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level18S then
						minetest.env:add_item(pos, grau_level18S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level19 then
						minetest.env:add_item(pos, grau_level19_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level19S then
						minetest.env:add_item(pos, grau_level19S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level20 then
						minetest.env:add_item(pos, grau_level20_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level20S then
						minetest.env:add_item(pos, grau_level20S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level20SS then
						minetest.env:add_item(pos, grau_level20SS_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level21 then
						minetest.env:add_item(pos, grau_level21_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level21S then
						minetest.env:add_item(pos, grau_level21S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level22 then
						minetest.env:add_item(pos, grau_level22_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level22S then
						minetest.env:add_item(pos, grau_level22S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level23 then
						minetest.env:add_item(pos, grau_level23_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level23S then
						minetest.env:add_item(pos, grau_level23S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level24 then
						minetest.env:add_item(pos, grau_level24_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level24S then
						minetest.env:add_item(pos, grau_level24S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level25 then
						minetest.env:add_item(pos, grau_level25_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level25S then
						minetest.env:add_item(pos, grau_level25S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level26 then
						minetest.env:add_item(pos, grau_level26_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level26S then
						minetest.env:add_item(pos, grau_level26S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level27 then
						minetest.env:add_item(pos, grau_level27_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level27S then
						minetest.env:add_item(pos, grau_level27S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level28 then
						minetest.env:add_item(pos, grau_level28_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level28S then
						minetest.env:add_item(pos, grau_level28S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level29 then
						minetest.env:add_item(pos, grau_level29_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level29S then
						minetest.env:add_item(pos, grau_level29S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level30 then
						minetest.env:add_item(pos, grau_level30_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level30S then
						minetest.env:add_item(pos, grau_level30S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level30SS then
						minetest.env:add_item(pos, grau_level30SS_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level31 then
						minetest.env:add_item(pos, grau_level31_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level31S then
						minetest.env:add_item(pos, grau_level31S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level32 then
						minetest.env:add_item(pos, grau_level32_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level32S then
						minetest.env:add_item(pos, grau_level32S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level33 then
						minetest.env:add_item(pos, grau_level33_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level33S then
						minetest.env:add_item(pos, grau_level33S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level34 then
						minetest.env:add_item(pos, grau_level34_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level34S then
						minetest.env:add_item(pos, grau_level34S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level35 then
						minetest.env:add_item(pos, grau_level35_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level35S then
						minetest.env:add_item(pos, grau_level35S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level36 then
						minetest.env:add_item(pos, grau_level36_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level36S then
						minetest.env:add_item(pos, grau_level36S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level37 then
						minetest.env:add_item(pos, grau_level37_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level37S then
						minetest.env:add_item(pos, grau_level37S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level38 then
						minetest.env:add_item(pos, grau_level38_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level38S then
						minetest.env:add_item(pos, grau_level38S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level39 then
						minetest.env:add_item(pos, grau_level39_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level39S then
						minetest.env:add_item(pos, grau_level39S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level40 then
						minetest.env:add_item(pos, grau_level40_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level40S then
						minetest.env:add_item(pos, grau_level40S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level40SS then
						minetest.env:add_item(pos, grau_level40SS_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level41 then
						minetest.env:add_item(pos, grau_level41_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level41S then
						minetest.env:add_item(pos, grau_level41S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level42 then
						minetest.env:add_item(pos, grau_level42_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level42S then
						minetest.env:add_item(pos, grau_level42S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level43 then
						minetest.env:add_item(pos, grau_level43_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level43S then
						minetest.env:add_item(pos, grau_level43S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level44 then
						minetest.env:add_item(pos, grau_level44_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level44S then
						minetest.env:add_item(pos, grau_level44S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level45 then
						minetest.env:add_item(pos, grau_level45_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level45S then
						minetest.env:add_item(pos, grau_level45S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level46 then
						minetest.env:add_item(pos, grau_level46_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level46S then
						minetest.env:add_item(pos, grau_level46S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level47 then
						minetest.env:add_item(pos, grau_level47_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level47S then
						minetest.env:add_item(pos, grau_level47S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level48 then
						minetest.env:add_item(pos, grau_level48_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level48S then
						minetest.env:add_item(pos, grau_level48S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level49 then
						minetest.env:add_item(pos, grau_level49_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level49S then
						minetest.env:add_item(pos, grau_level49S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level50 then
						minetest.env:add_item(pos, grau_level50_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level50S then
						minetest.env:add_item(pos, grau_level50S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level50SS then
						minetest.env:add_item(pos, grau_level50SS_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level51 then
						minetest.env:add_item(pos, grau_level51_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level51S then
						minetest.env:add_item(pos, grau_level51S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level52 then
						minetest.env:add_item(pos, grau_level52_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level52S then
						minetest.env:add_item(pos, grau_level52S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level53 then
						minetest.env:add_item(pos, grau_level53_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level53S then
						minetest.env:add_item(pos, grau_level53S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level54 then
						minetest.env:add_item(pos, grau_level54_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level54S then
						minetest.env:add_item(pos, grau_level54S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level55 then
						minetest.env:add_item(pos, grau_level55_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level55S then
						minetest.env:add_item(pos, grau_level55S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level56 then
						minetest.env:add_item(pos, grau_level56_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level56S then
						minetest.env:add_item(pos, grau_level56S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level57 then
						minetest.env:add_item(pos, grau_level57_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level57S then
						minetest.env:add_item(pos, grau_level57S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level58 then
						minetest.env:add_item(pos, grau_level58_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level58S then
						minetest.env:add_item(pos, grau_level58S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level59 then
						minetest.env:add_item(pos, grau_level59_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level59S then
						minetest.env:add_item(pos, grau_level59S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level60 then
						minetest.env:add_item(pos, grau_level60_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level60S then
						minetest.env:add_item(pos, grau_level60S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level60SS then
						minetest.env:add_item(pos, grau_level60SS_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level61 then
						minetest.env:add_item(pos, grau_level61_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level61S then
						minetest.env:add_item(pos, grau_level61S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level62 then
						minetest.env:add_item(pos, grau_level62_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level62S then
						minetest.env:add_item(pos, grau_level62S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level63 then
						minetest.env:add_item(pos, grau_level63_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level63S then
						minetest.env:add_item(pos, grau_level63S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level64 then
						minetest.env:add_item(pos, grau_level64_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level64S then
						minetest.env:add_item(pos, grau_level64S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level65 then
						minetest.env:add_item(pos, grau_level65_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level65S then
						minetest.env:add_item(pos, grau_level65S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level66 then
						minetest.env:add_item(pos, grau_level66_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level66S then
						minetest.env:add_item(pos, grau_level66S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level67 then
						minetest.env:add_item(pos, grau_level67_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level67S then
						minetest.env:add_item(pos, grau_level67S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level68 then
						minetest.env:add_item(pos, grau_level68_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level68S then
						minetest.env:add_item(pos, grau_level68S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level69 then
						minetest.env:add_item(pos, grau_level69_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level69S then
						minetest.env:add_item(pos, grau_level69S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level70 then
						minetest.env:add_item(pos, grau_level70_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level70S then
						minetest.env:add_item(pos, grau_level70S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level70SS then
						minetest.env:add_item(pos, grau_level70SS_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level71 then
						minetest.env:add_item(pos, grau_level71_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level71S then
						minetest.env:add_item(pos, grau_level71S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level72 then
						minetest.env:add_item(pos, grau_level72_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level72S then
						minetest.env:add_item(pos, grau_level72S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level73 then
						minetest.env:add_item(pos, grau_level73_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level73S then
						minetest.env:add_item(pos, grau_level73S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level74 then
						minetest.env:add_item(pos, grau_level74_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level74S then
						minetest.env:add_item(pos, grau_level74S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level75 then
						minetest.env:add_item(pos, grau_level75_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level75S then
						minetest.env:add_item(pos, grau_level75S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level76 then
						minetest.env:add_item(pos, grau_level76_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level76S then
						minetest.env:add_item(pos, grau_level76S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level77 then
						minetest.env:add_item(pos, grau_level77_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level77S then
						minetest.env:add_item(pos, grau_level77S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level78 then
						minetest.env:add_item(pos, grau_level78_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level78S then
						minetest.env:add_item(pos, grau_level78S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level79 then
						minetest.env:add_item(pos, grau_level79_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level79S then
						minetest.env:add_item(pos, grau_level79S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level80 then
						minetest.env:add_item(pos, grau_level80_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level80S then
						minetest.env:add_item(pos, grau_level80S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level80SS then
						minetest.env:add_item(pos, grau_level80SS_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level81 then
						minetest.env:add_item(pos, grau_level81_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level81S then
						minetest.env:add_item(pos, grau_level81S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level82 then
						minetest.env:add_item(pos, grau_level82_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level82S then
						minetest.env:add_item(pos, grau_level82S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level83 then
						minetest.env:add_item(pos, grau_level83_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level83S then
						minetest.env:add_item(pos, grau_level83S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level84 then
						minetest.env:add_item(pos, grau_level84_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level84S then
						minetest.env:add_item(pos, grau_level84S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level85 then
						minetest.env:add_item(pos, grau_level85_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level85S then
						minetest.env:add_item(pos, grau_level85S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level86 then
						minetest.env:add_item(pos, grau_level86_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level86S then
						minetest.env:add_item(pos, grau_level86S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level87 then
						minetest.env:add_item(pos, grau_level87_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level87S then
						minetest.env:add_item(pos, grau_level87S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level88 then
						minetest.env:add_item(pos, grau_level88_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level88S then
						minetest.env:add_item(pos, grau_level88S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level89 then
						minetest.env:add_item(pos, grau_level89_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level89S then
						minetest.env:add_item(pos, grau_level89S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level90 then
						minetest.env:add_item(pos, grau_level90_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level90S then
						minetest.env:add_item(pos, grau_level90S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level90SS then
						minetest.env:add_item(pos, grau_level90SS_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level91 then
						minetest.env:add_item(pos, grau_level91_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level91S then
						minetest.env:add_item(pos, grau_level91S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level92 then
						minetest.env:add_item(pos, grau_level92_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level92S then
						minetest.env:add_item(pos, grau_level92S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level93 then
						minetest.env:add_item(pos, grau_level93_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level93S then
						minetest.env:add_item(pos, grau_level93S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level94 then
						minetest.env:add_item(pos, grau_level94_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level94S then
						minetest.env:add_item(pos, grau_level94S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level95 then
						minetest.env:add_item(pos, grau_level95_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level95S then
						minetest.env:add_item(pos, grau_level95S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level96 then
						minetest.env:add_item(pos, grau_level96_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level96S then
						minetest.env:add_item(pos, grau_level96S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level97 then
						minetest.env:add_item(pos, grau_level97_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level97S then
						minetest.env:add_item(pos, grau_level97S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level98 then
						minetest.env:add_item(pos, grau_level98_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level98S then
						minetest.env:add_item(pos, grau_level98S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level99 then
						minetest.env:add_item(pos, grau_level99_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level99S then
						minetest.env:add_item(pos, grau_level99S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level100 then
						minetest.env:add_item(pos, grau_level100_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level100S then
						minetest.env:add_item(pos, grau_level100S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_level100SS then
						minetest.env:add_item(pos, grau_level100SS_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_levelMAX then
						minetest.env:add_item(pos, grau_levelMAX_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpg == grau_levelMAXS then
						minetest.env:add_item(pos, grau_levelMAXS_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
				end
			object:remove()
		end
	end
for _,object in ipairs(minetest.env:get_objects_inside_radius(pos, 3)) do
			if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "experience:orb_grau" then
				if object:get_luaentity().collect then
					local pos1 = pos
					pos1.y = pos1.y+0.2
					local pos2 = object:getpos()
					local vec = {x=pos1.x-pos2.x, y=pos1.y-pos2.y, z=pos1.z-pos2.z}
					vec.x = vec.x*3
					vec.y = vec.y*3
					vec.z = vec.z*3
					object:setvelocity(vec)
				end
			end
		end
	end
end)

minetest.register_entity("experience:orb_grau", {
	physical = true,
	timer = 0,
	textures = {"orb_grau.png"},
	visual_size = {x=0.3, y=0.3},
	collisionbox = {-0.17,-0.17,-0.17,0.17,0.17,0.17},
	on_activate = function(self, staticdata)
		self.object:set_armor_groups({immortal=1})
		self.object:setvelocity({x=0, y=1, z=0})
		self.object:setacceleration({x=0, y=-10, z=0})
	end,
	collect = true,
	on_step = function(self, dtime)
		self.timer = self.timer + dtime
		if (self.timer > 300) then
			self.object:remove()
		end
		local p = self.object:getpos()
		local nn = minetest.env:get_node(p).name
		noder = minetest.env:get_node(p).name
		p.y = p.y - 0.3
		local nn = minetest.env:get_node(p).name
		if not minetest.registered_nodes[nn] or minetest.registered_nodes[nn].walkable then
			if self.physical_state then
				self.object:setvelocity({x=0, y=0, z=0})
				self.object:setacceleration({x=0, y=0, z=0})
				self.physical_state = false
				self.object:set_properties({
					physical = false
				})
			end
		else
			if not self.physical_state then
				self.object:setvelocity({x=0,y=0,z=0})
				self.object:setacceleration({x=0, y=-10, z=0})
				self.physical_state = true
				self.object:set_properties({
					physical = true
				})
			end
		end
	end,
})



