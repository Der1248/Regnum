minetest.register_on_dignode(function(pos, oldnode, digger)
	local namer = oldnode.name
	local see_if_mineral = minetest.get_item_group(namer, "xpg")
	if see_if_mineral > 0 then
		minetest.env:add_entity(pos, "experience:orb_grau")
	end
end)

minetest.register_on_newplayer(function(player)
	local file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_grau", "w")
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
                    local player_inv = player:get_inventory()
                    local h = 0
                    for i=1,100 do
                        local g = 0
                        local c = 0
                        if i < 11 then
                            g = i*1*5
                        elseif i < 21 then
                            g = 50+(i-10)*2*5
                        elseif i < 31 then
                            g = 150+(i-20)*3*5
                        elseif i < 41 then
                            g = 300+(i-30)*4*5
                        elseif i < 51 then
                            g = 500+(i-40)*5*5
                        elseif i < 61 then
                            g = 750+(i-50)*6*5
                        elseif i < 71 then
                            g = 1050+(i-60)*7*5
                        elseif i < 81 then
                            g = 1400+(i-70)*8*5
                        elseif i < 91 then
                            g = 1800+(i-80)*9*5
                        elseif i < 101 then
                            g = 2250+(i-90)*10*5
                        end
                        print(g)
                        if i < 11 then
                            c = 1
                        elseif i < 21 then
                            c = 2
                        elseif i < 31 then
                            c = 3
                        elseif i < 41 then
                            c = 4
                        elseif i < 51 then
                            c = 5
                        elseif i < 61 then
                            c = 6
                        elseif i < 71 then
                            c = 7
                        elseif i < 81 then
                            c = 8
                        elseif i < 91 then
                            c = 9
                        elseif i < 101 then
                            c = 10
                        end
                        if i == (10 or 20 or 30 or 40 or 50 or 60 or 70 or 80 or 90) then
                            h = 1
                        else
                            h = 0
                        end
                        if new_xpg == g then
                            if h == 1 then
                                player_inv:set_size("xpi04", 10)
                                player_inv:add_item("xpi04", "tutorial:xp_block") 
                            end
                            player_inv:set_size("xpi04", 10)
                            player_inv:add_item("xpi04", "tutorial:coin_grau "..c)
                            player_inv:set_size("xpi4", 100)
                            player_inv:set_stack("xpi4", i, "tutorial:level"..i.."_grau 1")
                            minetest.sound_play("level_up", {
							    to_player = player:get_player_name(),
						    })
                        end 
                    end
                    if new_xpg == 3200 then
						player_inv:set_size("xpi04", 10)
						player_inv:add_item("xpi04", "tutorial:coin_grau 90")
                        player_inv:add_item("xpi04", "tutorial:levelMAX_grau")
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
                    if new_xpg == 2750 then
						player_inv:set_size("xpi04", 10)
						player_inv:add_item("xpi04", "tutorial:legenden_schluessel")
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



