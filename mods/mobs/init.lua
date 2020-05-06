local path = minetest.get_modpath("mobs")
dofile(path.."/api.lua")
dofile(path.."/egg.lua")
dofile(path.."/dog.lua")
dofile(path.."/cat.lua")
dofile(path.."/sheep.lua")
dofile(path.."/dragon.lua")
dofile(path.."/fox.lua")
dofile(path.."/tortoise.lua")
dofile(path.."/knight.lua")
dofile(path.."/monsterx1.lua")
dofile(path.."/mummy.lua")

local animals = {
	{"dog","Dog","dog"},
	{"cat","Cat","cat"},
	{"sheep","Sheep","sheep"},
	{"tortoise","Tortoise","tortoise"},
	{"knight","Knight","knight_1248"},
	{"fox","Fox","fox"},
	{"dragon","Dragon","dragon"},
}

local timer = 0
minetest.register_globalstep(function(dtime)
	timer = timer + dtime;
	if timer >= 1 then
		local players = minetest.get_connected_players()
		for _,player in ipairs(players) do
			for _, m in pairs(animals) do
				if player:get_attribute(m[1].."x") then
					local all_objects = minetest.get_objects_inside_radius({x=tonumber(player:get_attribute(m[1].."x")), y=tonumber(player:get_attribute(m[1].."y")), z=tonumber(player:get_attribute(m[1].."z"))}, 30)
					local is_player = false
					for _,obj in ipairs(all_objects) do
						if obj:is_player() then
							is_player = true
						end
					end
					local set_animal = true
					if is_player then
						for _,obj in ipairs(all_objects) do
							if obj:get_entity_name() == "mobs:"..m[3] and obj:get_luaentity().owner == player:get_player_name() then
								if set_animal == false then
									obj:remove()
								end
								set_animal = false
							end
						end
					end
					if set_animal and is_player then
						local obj2 =  minetest.env:add_entity({x=tonumber(player:get_attribute(m[1].."x")), y=tonumber(player:get_attribute(m[1].."y")), z=tonumber(player:get_attribute(m[1].."z"))},"mobs:"..m[3])
						local ent = obj2:get_luaentity()
						ent.owner = player:get_player_name()
						ent.npc_name = player:get_player_name().."'s "..m[2]
						obj2:set_properties({infotext=player:get_player_name().."'s "..m[2]})
						if player:get_attribute(m[1].."_meta1") then
							ent.metadata = tonumber(player:get_attribute(m[1].."_meta1"))
							ent.metadata2 = tonumber(player:get_attribute(m[1].."_meta2"))
							update_meta(player,m[1],obj2,ent)
						end
					end
				end
			end
		end
	end
end)

function update_meta(player,animal,obj,ent)
	if animal == "dog" then
		if tonumber(player:get_attribute("dog_meta1")) == 2 then
			obj:set_properties({textures={"mobs_dog2.png"}})
		elseif tonumber(player:get_attribute("dog_meta1")) == 1 then
			obj:set_properties({textures={"mobs_dog.png"}})
		end
	elseif animal == "cat" then
		if tonumber(player:get_attribute("cat_meta1")) == 2 then
			obj:set_properties({textures={"mobs_kitten.png"}})
		elseif tonumber(player:get_attribute("cat_meta1")) == 3 then
			obj:set_properties({textures={"mobs_kitten2.png"}})
		elseif tonumber(player:get_attribute("cat_meta1")) == 4 then
			obj:set_properties({textures={"mobs_kitten3.png"}})
		elseif tonumber(player:get_attribute("cat_meta1")) == 1 then
			obj:set_properties({textures={"mobs_kitten4.png"}})
		end
	elseif animal == "dragon" then
		if tonumber(player:get_attribute("dragon_meta1")) == 2 then
			obj:set_properties({textures={"mobs_dragon_yellow.png"}})
		elseif tonumber(player:get_attribute("dragon_meta1")) == 3 then
			obj:set_properties({textures={"mobs_dragon_blue.png"}})
		elseif tonumber(player:get_attribute("dragon_meta1")) == 4 then
			obj:set_properties({textures={"mobs_dragon_green.png"}})
		elseif tonumber(player:get_attribute("dragon_meta1")) == 5 then
			obj:set_properties({textures={"mobs_dragon_black.png"}})
		elseif tonumber(player:get_attribute("dragon_meta1")) == 6 then
			obj:set_properties({textures={"mobs_dragon_great.png"}})
		elseif tonumber(player:get_attribute("dragon_meta1")) == 1 then
			obj:set_properties({textures={"mobs_dragon_red.png"}})
		end
	elseif animal == "fox" then
		if tonumber(player:get_attribute("fox_meta1")) == 2 then
			obj:set_properties({textures={"mobs_fox1.png"}})
		elseif tonumber(player:get_attribute("fox_meta1")) == 1 then
			obj:set_properties({textures={"mobs_fox.png"}})
		end
	end
	if tonumber(player:get_attribute(animal.."_meta2")) == 2 then
		ent.walk_velocity = 0
		ent.run_velocity = 0
	elseif tonumber(player:get_attribute(animal.."_meta2")) == 1 then
		ent.walk_velocity = 1
		ent.run_velocity = 3
	end
end