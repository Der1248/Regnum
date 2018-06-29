minetest.register_on_dignode(function(pos, oldnode, digger)
	namer = oldnode.name
	see_if_mineral = minetest.get_item_group(namer, "xpb")
	if see_if_mineral > 0 then
		minetest.env:add_entity(pos, "experience:orb_blau")
	end
end)

minetest.register_on_newplayer(function(player)
	file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_blau", "w")
	file:write("0")
	file:close()
end)

blau_level1 = 1
blau_level1_drop = "tutorial:coin_blau 1"
blau_level1S = 1
blau_level1S_drop = "tutorial:level1_blau"


blau_level2 = 3
blau_level2_drop = "tutorial:coin_blau 1"
blau_level2S = 3
blau_level2S_drop = "tutorial:level2_blau"


blau_level3 = 6
blau_level3_drop = "tutorial:coin_blau 1"
blau_level3S = 6
blau_level3S_drop = "tutorial:level3_blau"


blau_level4 = 10
blau_level4_drop = "tutorial:coin_blau 1"
blau_level4S = 10
blau_level4S_drop = "tutorial:level4_blau"


blau_level5 = 15
blau_level5_drop = "tutorial:coin_blau 1"
blau_level5S = 15
blau_level5S_drop = "tutorial:level5_blau"


blau_level6 = 21
blau_level6_drop = "tutorial:coin_blau 2"
blau_level6S = 21
blau_level6S_drop = "tutorial:level6_blau"


blau_level7 = 28
blau_level7_drop = "tutorial:coin_blau 2"
blau_level7S = 28
blau_level7S_drop = "tutorial:level7_blau"


blau_level8 = 36
blau_level8_drop = "tutorial:coin_blau 2"
blau_level8S = 36
blau_level8S_drop = "tutorial:level8_blau"


blau_level9 = 45
blau_level9_drop = "tutorial:coin_blau 2"
blau_level9S = 45
blau_level9S_drop = "tutorial:level9_blau"


blau_level10 = 55
blau_level10_drop = "tutorial:coin_blau 2"
blau_level10S = 55
blau_level10S_drop = "tutorial:level10_blau"


blau_level11 = 66
blau_level11_drop = "tutorial:coin_blau 3"
blau_level11S = 66
blau_level11S_drop = "tutorial:level11_blau"


blau_level12 = 78
blau_level12_drop = "tutorial:coin_blau 3"
blau_level12S = 78
blau_level12S_drop = "tutorial:level12_blau"


blau_level13 = 91
blau_level13_drop = "tutorial:coin_blau 3"
blau_level13S = 91
blau_level13S_drop = "tutorial:level13_blau"


blau_level14 = 105
blau_level14_drop = "tutorial:coin_blau 3"
blau_level14S = 105
blau_level14S_drop = "tutorial:level14_blau"


blau_level15 = 120
blau_level15_drop = "tutorial:coin_blau 3"
blau_level15S = 120
blau_level15S_drop = "tutorial:level15_blau"


blau_level16 = 136
blau_level16_drop = "tutorial:coin_blau 4"
blau_level16S = 136
blau_level16S_drop = "tutorial:level16_blau"


blau_level17 = 153
blau_level17_drop = "tutorial:coin_blau 4"
blau_level17S = 153
blau_level17S_drop = "tutorial:level17_blau"


blau_level18 = 171
blau_level18_drop = "tutorial:coin_blau 4"
blau_level18S = 171
blau_level18S_drop = "tutorial:level18_blau"


blau_level19 = 190
blau_level19_drop = "tutorial:coin_blau 4"
blau_level19S = 190
blau_level19S_drop = "tutorial:level19_blau"


blau_level20 = 210
blau_level20_drop = "tutorial:coin_blau 4"
blau_level20S = 210
blau_level20S_drop = "tutorial:level20_blau"
blau_level20SS = 210
blau_level20SS_drop = "tutorial:xp_blau"

blau_levelMAX = 250
blau_levelMAX_drop = "tutorial:coin_blau 5"
blau_levelMAXS = 250
blau_levelMAXS_drop = "tutorial:levelMAX_blau"



minetest.register_globalstep(function(dtime)
	for _,player in ipairs(minetest.get_connected_players()) do
		local pos = player:getpos()
		pos.y = pos.y+0.5
		for _,object in ipairs(minetest.env:get_objects_inside_radius(pos, 1)) do
			if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "experience:orb_blau" then
				--RIGHT HERE ADD IN THE CODE TO UPGRADE PLAYERS 
				object:setvelocity({x=0,y=0,z=0})
				object:get_luaentity().name = "STOP"
				minetest.sound_play("orb", {
					to_player = player:get_player_name(),
				})
				xpb = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_blau", "r")
				experience_blau = xpb:read("*l")
				xpb:close()
				if experience_blau ~= nil then
					new_xpb = experience_blau + 1
					xpb_write = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_blau", "w")
					xpb_write:write(new_xpb)
					xpb_write:close()
if new_xpb == blau_level1 then
						minetest.env:add_item(pos, blau_level1_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level1S then
						minetest.env:add_item(pos, blau_level1S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level2 then
						minetest.env:add_item(pos, blau_level2_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level2S then
						minetest.env:add_item(pos, blau_level2S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level3 then
						minetest.env:add_item(pos, blau_level3_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level3S then
						minetest.env:add_item(pos, blau_level3S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level4 then
						minetest.env:add_item(pos, blau_level4_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level4S then
						minetest.env:add_item(pos, blau_level4S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level5 then
						minetest.env:add_item(pos, blau_level5_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level5S then
						minetest.env:add_item(pos, blau_level5S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level6 then
						minetest.env:add_item(pos, blau_level6_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level6S then
						minetest.env:add_item(pos, blau_level6S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level7 then
						minetest.env:add_item(pos, blau_level7_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level7S then
						minetest.env:add_item(pos, blau_level7S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level8 then
						minetest.env:add_item(pos, blau_level8_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level8S then
						minetest.env:add_item(pos, blau_level8S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level9 then
						minetest.env:add_item(pos, blau_level9_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level9S then
						minetest.env:add_item(pos, blau_level9S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level10 then
						minetest.env:add_item(pos, blau_level10_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level10S then
						minetest.env:add_item(pos, blau_level10S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level11 then
						minetest.env:add_item(pos, blau_level11_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level11S then
						minetest.env:add_item(pos, blau_level11S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level12 then
						minetest.env:add_item(pos, blau_level12_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level12S then
						minetest.env:add_item(pos, blau_level12S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level13 then
						minetest.env:add_item(pos, blau_level13_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level13S then
						minetest.env:add_item(pos, blau_level13S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level14 then
						minetest.env:add_item(pos, blau_level14_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level14S then
						minetest.env:add_item(pos, blau_level14S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level15 then
						minetest.env:add_item(pos, blau_level15_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level15S then
						minetest.env:add_item(pos, blau_level15S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level16 then
						minetest.env:add_item(pos, blau_level16_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level16S then
						minetest.env:add_item(pos, blau_level16S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level17 then
						minetest.env:add_item(pos, blau_level17_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level17S then
						minetest.env:add_item(pos, blau_level17S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level18 then
						minetest.env:add_item(pos, blau_level18_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level18S then
						minetest.env:add_item(pos, blau_level18S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level19 then
						minetest.env:add_item(pos, blau_level19_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level19S then
						minetest.env:add_item(pos, blau_level19S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level20 then
						minetest.env:add_item(pos, blau_level20_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level20S then
						minetest.env:add_item(pos, blau_level20S_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_level20SS then
						minetest.env:add_item(pos, blau_level20SS_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_levelMAX then
						minetest.env:add_item(pos, blau_levelMAX_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
if new_xpb == blau_levelMAXS then
						minetest.env:add_item(pos, blau_levelMAXS_drop)
						minetest.sound_play("level_up", {
							to_player = player:get_player_name(),
						})
					end
				end
			object:remove()
		end
	end
for _,object in ipairs(minetest.env:get_objects_inside_radius(pos, 3)) do
			if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "experience:orb_blau" then
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

minetest.register_entity("experience:orb_blau", {
	physical = true,
	timer = 0,
	textures = {"orb_blau.png"},
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














