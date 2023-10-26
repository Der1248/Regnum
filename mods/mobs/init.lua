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
	{"knight","1248 Knight","knight_1248"},
	{"fox","Fox","fox"},
	{"dragon","Dragon","dragon"},
}
local timer = 0
minetest.register_globalstep(function(dtime)
	timer = timer + dtime;
	if timer >= 1 then
		local players = minetest.get_connected_players()
		for _,player in ipairs(players) do
			local player_meta = player:get_meta()
			for _, m in pairs(animals) do
				if player_meta:contains(m[1].."x") then
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

function first_activate(self)
	if self.name == "mobs:dog" then
        self.object:set_properties({infotext=self.owner.."'s Dog"})
		if self.metadata == 1 then
			self.object:set_properties({textures={"mobs_dog.png"}})
		end
		if self.metadata == 2 then
			self.object:set_properties({textures={"mobs_dog2.png"}})
		end
		if self.metadata2 == 1 then
			self.walk_velocity = 1
			self.run_velocity = 3
            self.jump = true
		end
		if self.metadata2 == 2 then
			self.walk_velocity = 0
			self.run_velocity = 0
            self.jump = false
		end
    end
    if self.name == "mobs:dragon" then
        self.object:set_properties({infotext=self.owner.."'s Dragon"})
		if self.metadata == 1 then
			self.object:set_properties({textures={"mobs_dragon_red.png"}})
		end
		if self.metadata == 2 then
			self.object:set_properties({textures={"mobs_dragon_yellow.png"}})
		end
		if self.metadata == 3 then
			self.object:set_properties({textures={"mobs_dragon_blue.png"}})
		end
		if self.metadata == 4 then
			self.object:set_properties({textures={"mobs_dragon_green.png"}})
		end
		if self.metadata == 5 then
			self.object:set_properties({textures={"mobs_dragon_black.png"}})
		end
		if self.metadata == 6 then
			self.object:set_properties({textures={"mobs_dragon_great.png"}})
		end
		if self.metadata2 == 1 then
			self.walk_velocity = 1
			self.run_velocity = 3
            self.jump = true
		end
		if self.metadata2 == 2 then
			self.walk_velocity = 0
			self.run_velocity = 0
            self.jump = false
		end
    end
    if self.name == "mobs:cat" then
        self.object:set_properties({infotext=self.owner.."'s Cat"})
		if self.metadata == 1 then
			self.object:set_properties({textures={"mobs_kitten4.png"}})
		end
		if self.metadata == 2 then
			self.object:set_properties({textures={"mobs_kitten.png"}})
		end
		if self.metadata == 3 then
			self.object:set_properties({textures={"mobs_kitten2.png"}})
		end
		if self.metadata == 4 then
			self.object:set_properties({textures={"mobs_kitten3.png"}})
		end
		if self.metadata2 == 1 then
			self.walk_velocity = 1
			self.run_velocity = 3
            self.jump = true
		end
		if self.metadata2 == 2 then
			self.walk_velocity = 0
			self.run_velocity = 0
            self.jump = false
		end
    end
    if self.name == "mobs:sheep" then
        if self.owner then
            self.object:set_properties({infotext=self.owner.."'s Sheep"})
            if minetest.get_player_by_name(self.owner) then
				if self.metadata2 == 1 then
					self.walk_velocity = 1
					self.run_velocity = 3
                    self.jump = true

				end
				if self.metadata2 == 2 then
					self.walk_velocity = 0
					self.run_velocity = 0
                    self.jump = false
				end
            end
        end
    end
    if self.name == "mobs:knight_1248" then
        self.object:set_properties({infotext=self.owner.."'s 1248 Knight"})
        if self.owner then
            if self.metadata2 == 1 then
				self.walk_velocity = 1
				self.run_velocity = 3
                self.jump = true

			end
			if self.metadata2 == 2 then
				self.walk_velocity = 0
				self.run_velocity = 0
                self.jump = false
			end
        end
    end
    if self.name == "mobs:fox" then
        self.object:set_properties({infotext=self.owner.."'s Fox"})
		if self.metadata == 1 then
			self.object:set_properties({textures={"mobs_fox.png"}})
		end
		if self.metadata == 2 then
			self.object:set_properties({textures={"mobs_fox1.png"}})
		end
		if self.metadata2 == 1 then
			self.walk_velocity = 1
			self.run_velocity = 3
            self.jump = true
		end
		if self.metadata2 == 2 then
			self.walk_velocity = 0
			self.run_velocity = 0
            self.jump = false
		end
    end
    if self.name == "mobs:tortoise" then
        self.object:set_properties({infotext=self.owner.."'s Tortoise"})
		if self.metadata2 == 1 then
			self.walk_velocity = 1
			self.run_velocity = 3
            self.jump = true
		end
		if self.metadata2 == 2 then
			self.walk_velocity = 0
			self.run_velocity = 0
            self.jump = false
		end
    end
end

function first_step(self,dtime)
	self.metadata3 = self.metadata3 + dtime
    if self.metadata3 > 1 then
        self.metadata3 = 0
        if self.name == "mobs:dog" then
		    local pos = self.object:get_pos()
            if minetest.get_player_by_name(self.owner) then
			    local inv = minetest.get_player_by_name(self.owner):get_inventory()
			    inv:set_size("dog",8)
			    for _,object in ipairs(minetest.get_objects_inside_radius(pos, 15)) do
				    if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "__builtin:item" then
					    if inv and inv:room_for_item("dog", ItemStack(object:get_luaentity().itemstring)) then
						    if ItemStack(object:get_luaentity().itemstring):get_name() == "tutorial:geschenkpapier" or ItemStack(object:get_luaentity().itemstring):get_name() == "tutorial:geschenkpapier_death" or ItemStack(object:get_luaentity().itemstring):get_name() == "tutorial:dna_string" then
							    inv:add_item("dog", ItemStack(object:get_luaentity().itemstring))
								object:remove()
						    end
					    end
				    end
			    end
            end
	    end
	    if self.name == "mobs:cat" then
		    local pos = self.object:get_pos()
            if minetest.get_player_by_name(self.owner) then
			    local inv = minetest.get_player_by_name(self.owner):get_inventory()
			    inv:set_size("cat",8)
			    for _,object in ipairs(minetest.get_objects_inside_radius(pos, 15)) do
				    if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "__builtin:item" then
					    if inv and inv:room_for_item("cat", ItemStack(object:get_luaentity().itemstring)) then
						    if ItemStack(object:get_luaentity().itemstring):get_name() == "tutorial:geschenkpapier" or ItemStack(object:get_luaentity().itemstring):get_name() == "tutorial:geschenkpapier_death" or ItemStack(object:get_luaentity().itemstring):get_name() == "tutorial:dna_string" then
							    inv:add_item("cat", ItemStack(object:get_luaentity().itemstring))
								object:remove()
						    end
					    end
				    end
			    end
            end
	    end

		if self.name == "mobs:dragon" then
			if self.owner and minetest.get_player_by_name(self.owner) then
				minetest.get_player_by_name(self.owner):set_attribute("dragonx", ""..math.floor(self.object:get_pos().x+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("dragony", ""..math.floor(self.object:get_pos().y+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("dragonz", ""..math.floor(self.object:get_pos().z+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("dragon_meta1", ""..self.metadata)
				minetest.get_player_by_name(self.owner):set_attribute("dragon_meta2", ""..self.metadata2)
			end
		end
		if self.name == "mobs:sheep" then
			if self.owner and minetest.get_player_by_name(self.owner) then
				minetest.get_player_by_name(self.owner):set_attribute("sheepx", ""..math.floor(self.object:get_pos().x+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("sheepy", ""..math.floor(self.object:get_pos().y+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("sheepz", ""..math.floor(self.object:get_pos().z+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("sheep_meta1", ""..self.metadata)
				minetest.get_player_by_name(self.owner):set_attribute("sheep_meta2", ""..self.metadata2)

			end
		end
		if self.name == "mobs:fox" then
			if self.owner and minetest.get_player_by_name(self.owner) then
				minetest.get_player_by_name(self.owner):set_attribute("foxx", ""..math.floor(self.object:get_pos().x+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("foxy", ""..math.floor(self.object:get_pos().y+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("foxz", ""..math.floor(self.object:get_pos().z+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("fox_meta1", ""..self.metadata)
				minetest.get_player_by_name(self.owner):set_attribute("fox_meta2", ""..self.metadata2)
			end
		end
		if self.name == "mobs:tortoise" then
			if self.owner and minetest.get_player_by_name(self.owner) then
				minetest.get_player_by_name(self.owner):set_attribute("tortoisex", ""..math.floor(self.object:get_pos().x+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("tortoisey", ""..math.floor(self.object:get_pos().y+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("tortoisez", ""..math.floor(self.object:get_pos().z+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("tortoise_meta1", ""..self.metadata)
				minetest.get_player_by_name(self.owner):set_attribute("tortoise_meta2", ""..self.metadata2)
			end
		end
		if self.name == "mobs:knight_1248" then
			if self.owner and minetest.get_player_by_name(self.owner) then
				minetest.get_player_by_name(self.owner):set_attribute("knightx", ""..math.floor(self.object:get_pos().x+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("knighty", ""..math.floor(self.object:get_pos().y+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("knightz", ""..math.floor(self.object:get_pos().z+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("knight_meta1", ""..self.metadata)
				minetest.get_player_by_name(self.owner):set_attribute("knight_meta2", ""..self.metadata2)
			end
		end
		if self.name == "mobs:dog" then
			if self.owner and minetest.get_player_by_name(self.owner) then
				minetest.get_player_by_name(self.owner):set_attribute("dogx", ""..math.floor(self.object:get_pos().x+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("dogy", ""..math.floor(self.object:get_pos().y+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("dogz", ""..math.floor(self.object:get_pos().z+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("dog_meta1", ""..self.metadata)
				minetest.get_player_by_name(self.owner):set_attribute("dog_meta2", ""..self.metadata2)
			end
		end
		if self.name == "mobs:cat" then
			if self.owner and minetest.get_player_by_name(self.owner) then
				minetest.get_player_by_name(self.owner):set_attribute("catx", ""..math.floor(self.object:get_pos().x+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("caty", ""..math.floor(self.object:get_pos().y+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("catz", ""..math.floor(self.object:get_pos().z+0.5))
				minetest.get_player_by_name(self.owner):set_attribute("cat_meta1", ""..self.metadata)
				minetest.get_player_by_name(self.owner):set_attribute("cat_meta2", ""..self.metadata2)
			end
		end

		if self.name == "mobs:dog" and self.metadata2 == 1 then
			local pos = self.object:get_pos()
			local all_objects = minetest.get_objects_inside_radius(pos, 15)
			local players = {}
			local k = 0
			local _,obj
			for _,obj in ipairs(all_objects) do
				if obj:is_player() then
					if self.owner == obj:get_player_name() then
						k = 1
					end
				end
			end
			if k == 0 then
				if minetest.get_player_by_name(self.owner) then
					self.object:setpos({x = minetest.get_player_by_name(self.owner):get_pos().x, y = minetest.get_player_by_name(self.owner):get_pos().y+1, z = minetest.get_player_by_name(self.owner):get_pos().z+1})
				end
			end
		end
		if self.name == "mobs:cat" and self.metadata2 == 1 then
			local pos = self.object:get_pos()
			local all_objects = minetest.get_objects_inside_radius(pos, 15)
			local players = {}
			local k = 0
			local _,obj
			for _,obj in ipairs(all_objects) do
				if obj:is_player() then
					if self.owner == obj:get_player_name() then
						k = 1
					end
				end
			end
			if k == 0 then
				if minetest.get_player_by_name(self.owner) then
					self.object:setpos({x = minetest.get_player_by_name(self.owner):get_pos().x, y = minetest.get_player_by_name(self.owner):get_pos().y+1, z = minetest.get_player_by_name(self.owner):get_pos().z+1})
				end
			end
		end
		if self.name == "mobs:dragon" and self.metadata2 == 1 then
			local pos = self.object:get_pos()
			local all_objects = minetest.get_objects_inside_radius(pos, 15)
			local players = {}
			local k = 0
			local _,obj
			for _,obj in ipairs(all_objects) do
				if obj:is_player() then
					if self.owner == obj:get_player_name() then
						k = 1
					end
				end
			end
			if k == 0 then
				if self.owner then
					if minetest.get_player_by_name(self.owner) then
						minetest.get_player_by_name(self.owner):get_inventory():set_size("dragon2",1)
						self.object:setpos({x = minetest.get_player_by_name(self.owner):get_pos().x, y = minetest.get_player_by_name(self.owner):get_pos().y+1, z = minetest.get_player_by_name(self.owner):get_pos().z+1})
						local numd = minetest.get_player_by_name(self.owner):get_inventory():get_stack("dragon2", 1):get_count()
						if numd > 25 then
							if minetest.get_player_by_name(self.owner):get_inventory():get_stack("dragon", 1):get_name() == "tutorial:dragon_crystal" then
								minetest.get_player_by_name(self.owner):get_inventory():add_item("main", "tutorial:geschenk_gem")
							else
								minetest.get_player_by_name(self.owner):get_inventory():add_item("main", "tutorial:geschenk_dragon")
							end
							minetest.get_player_by_name(self.owner):get_inventory():set_stack("dragon2", 1, "")
						else
							minetest.get_player_by_name(self.owner):get_inventory():set_stack("dragon2", 1, "default:dirt "..1+numd)
						end
					end
				end
			end
		end
		if self.name == "mobs:sheep" and self.metadata2 == 1 then
			local pos = self.object:get_pos()
			local all_objects = minetest.get_objects_inside_radius(pos, 15)
			local players = {}
			local k = 0
			local _,obj
			for _,obj in ipairs(all_objects) do
				if obj:is_player() then
					if self.owner == obj:get_player_name() then
						k = 1
					end
				end
			end
			if k == 0 then
				if self.owner then
					if minetest.get_player_by_name(self.owner) then
						minetest.get_player_by_name(self.owner):get_inventory():set_size("sheep2",1)
						minetest.get_player_by_name(self.owner):get_inventory():set_size("sheep3",1)
						self.object:setpos({x = minetest.get_player_by_name(self.owner):get_pos().x, y = minetest.get_player_by_name(self.owner):get_pos().y+1, z = minetest.get_player_by_name(self.owner):get_pos().z+1})
						local numd = minetest.get_player_by_name(self.owner):get_inventory():get_stack("sheep2", 1):get_count()
						if numd > 25 then
							minetest.get_player_by_name(self.owner):get_inventory():add_item("main", minetest.get_player_by_name(self.owner):get_inventory():get_stack("sheep3", 1))
							minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep2", 1, "")
						else
							minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep2", 1, "default:dirt "..1+numd)
						end
					end
				end
			end
		end
		if self.name == "mobs:knight_1248" and self.metadata2 == 1 then
			local pos = self.object:get_pos()
			local all_objects = minetest.get_objects_inside_radius(pos, 15)
			local players = {}
			local k = 0
			local _,obj
			for _,obj in ipairs(all_objects) do
				if obj:is_player() then
					if self.owner == obj:get_player_name() then
						k = 1
					end
				end
			end
			if k == 0 then
				if minetest.get_player_by_name(self.owner) then
					self.object:setpos({x = minetest.get_player_by_name(self.owner):get_pos().x, y = minetest.get_player_by_name(self.owner):get_pos().y+1, z = minetest.get_player_by_name(self.owner):get_pos().z+1})
				end
			end
		end
		if self.name == "mobs:fox" and self.metadata2 == 1 then
			local pos = self.object:get_pos()
			local all_objects = minetest.get_objects_inside_radius(pos, 15)
			local players = {}
			local k = 0
			local _,obj
			for _,obj in ipairs(all_objects) do
				if obj:is_player() then
					if self.owner == obj:get_player_name() then
						k = 1
					end
				end
			end
			if k == 0 then
				if self.owner then
					if minetest.get_player_by_name(self.owner) then
						minetest.get_player_by_name(self.owner):get_inventory():set_size("fox",1)
						minetest.get_player_by_name(self.owner):get_inventory():set_size("foxfox",1)
						minetest.get_player_by_name(self.owner):get_inventory():set_size("r1248",6)
						self.object:setpos({x = minetest.get_player_by_name(self.owner):get_pos().x, y = minetest.get_player_by_name(self.owner):get_pos().y+1, z = minetest.get_player_by_name(self.owner):get_pos().z+1})
						local numd = minetest.get_player_by_name(self.owner):get_inventory():get_stack("fox", 1):get_count()
						if numd == 50 then
							minetest.get_player_by_name(self.owner):get_inventory():add_item("main", "tutorial:fox_schluessel")
							minetest.get_player_by_name(self.owner):get_inventory():set_stack("fox", 1, "default:dirt 80")
						elseif numd == 80 then
						else
							minetest.get_player_by_name(self.owner):get_inventory():set_stack("fox", 1, "default:dirt "..1+numd)
						end
						local numdd = minetest.get_player_by_name(self.owner):get_inventory():get_stack("foxfox", 1):get_count()
						if numdd == 256 then
							local ra = math.random(6)
							if ra == 1 then
								minetest.get_player_by_name(self.owner):get_inventory():set_stack("r1248", 1, "default:dirt")
							elseif ra == 2 then
								minetest.get_player_by_name(self.owner):get_inventory():set_stack("r1248", 2, "default:dirt")
							elseif ra == 3 then
								minetest.get_player_by_name(self.owner):get_inventory():set_stack("r1248", 3, "default:dirt")
							elseif ra == 4 then
								minetest.get_player_by_name(self.owner):get_inventory():set_stack("r1248", 4, "default:dirt")
							elseif ra == 5 then
								minetest.get_player_by_name(self.owner):get_inventory():set_stack("r1248", 5, "default:dirt")
							elseif ra == 6 then
								minetest.get_player_by_name(self.owner):get_inventory():set_stack("r1248", 6, "default:dirt")
							end
							minetest.get_player_by_name(self.owner):get_inventory():set_stack("foxfox", 1, "")
						else
							minetest.get_player_by_name(self.owner):get_inventory():set_stack("foxfox", 1, "default:dirt "..1+numdd)
						end
					end
				end
			end
		end
		if self.name == "mobs:tortoise" and self.metadata2 == 1 then
			local pos = self.object:get_pos()
			local all_objects = minetest.get_objects_inside_radius(pos, 15)
			local players = {}
			local k = 0
			local _,obj
			for _,obj in ipairs(all_objects) do
				if obj:is_player() then
					if self.owner == obj:get_player_name() then
						k = 1
					end
				end
			end
			if k == 0 then
				if minetest.get_player_by_name(self.owner) then
					self.object:setpos({x = minetest.get_player_by_name(self.owner):get_pos().x, y = minetest.get_player_by_name(self.owner):get_pos().y+1, z = minetest.get_player_by_name(self.owner):get_pos().z+1})
					minetest.get_player_by_name(self.owner):get_inventory():set_size("tortoise2",1)
					local numd = minetest.get_player_by_name(self.owner):get_inventory():get_stack("tortoise2", 1):get_count()
					if numd > 25 then
						if minetest.get_player_by_name(self.owner):get_inventory():get_stack("tortoise", 1):get_name() == "tutorial:dragon_crystal" then
							minetest.get_player_by_name(self.owner):get_inventory():add_item("main", "tutorial:geschenk_gem2")
						else
							minetest.get_player_by_name(self.owner):get_inventory():add_item("main", "tutorial:geschenk_tortoise")
						end
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("tortoise2", 1, "")
					else
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("tortoise2", 1, "default:dirt "..1+numd)
					end
				end
			end
		end
		if self.name == "mobs:sheep" then
			if self.owner then
				self.object:set_properties({infotext=self.owner.."'s Sheep"})
				if minetest.get_player_by_name(self.owner) then
					local col = minetest.get_player_by_name(self.owner):get_inventory():get_stack("sheep", 1):get_name()
					if col == "dye:white" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:white")
						self.object:set_properties({textures={"mobs_sheep_white.png"}})
					elseif col == "dye:grey" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:grey")
						self.object:set_properties({textures={"mobs_sheep_grey.png"}})
					elseif col == "dye:dark_grey" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:dark_grey")
						self.object:set_properties({textures={"mobs_sheep_dark_grey.png"}})
					elseif col == "dye:black" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:black")
						self.object:set_properties({textures={"mobs_sheep_black.png"}})
					elseif col == "dye:violet" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:violet")
						self.object:set_properties({textures={"mobs_sheep_violet.png"}})
					elseif col == "dye:blue" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:blue")
						self.object:set_properties({textures={"mobs_sheep_blue.png"}})
					elseif col == "dye:cyan" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:cyan")
						self.object:set_properties({textures={"mobs_sheep_cyan.png"}})
					elseif col == "dye:dark_green" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:dark_green")
						self.object:set_properties({textures={"mobs_sheep_dark_green.png"}})
					elseif col == "dye:green" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:green")
						self.object:set_properties({textures={"mobs_sheep_green.png"}})
					elseif col == "dye:yellow" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:yellow")
						self.object:set_properties({textures={"mobs_sheep_yellow.png"}})
					elseif col == "dye:brown" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:brown")
						self.object:set_properties({textures={"mobs_sheep_brown.png"}})
					elseif col == "dye:orange" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:orange")
						self.object:set_properties({textures={"mobs_sheep_orange.png"}})
					elseif col == "dye:red" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:red")
						self.object:set_properties({textures={"mobs_sheep_red.png"}})
					elseif col == "dye:magenta" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:magenta")
						self.object:set_properties({textures={"mobs_sheep_magenta.png"}})
					elseif col == "dye:pink" then
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"wool:pink")
						self.object:set_properties({textures={"mobs_sheep_pink.png"}})
					else
						minetest.get_player_by_name(self.owner):get_inventory():set_stack("sheep3", 1,"")
						self.object:set_properties({textures={"mobs_sheep.png"}})
					end
				end
			end
		end
	end
end

function update(self, clicker)
    if self.name == "mobs:dog" then
		if self.owner ~= clicker:get_player_name() then
			local player_name = clicker:get_player_name()
			local formspec = "size[3,1]"
			.."label[0,0;You are not the owner!!]"
            .."background[3,1;1,1;gui_formbg.png;true]"
            .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
            .."bgcolor[#080808BB;true]"
			minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Dog", formspec)
		else
			local inv = minetest.get_player_by_name(self.owner):get_inventory()
			inv:set_size("dog",8)
			local player_name = clicker:get_player_name()
			local formspec = "size[8,8.5]"
			.."list[current_player;dog;0,2;8,1]"
			.."list[current_player;main;0,4.5;8,4]"
            .."listring[current_player;dog]"
            .."listring[current_player;main]"
            .."background[8,8.5;1,1;gui_formbg.png;true]"
            .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
            .."bgcolor[#080808BB;true]"
			if self.metadata == 1 then
			formspec = formspec .."button[0,0;2.0,0.5;texture11;Texture:brown]"
			end
			if self.metadata == 2 then
			formspec = formspec .."button[0,0;2.0,0.5;texture12;Texture:grey]"
			end
			if self.metadata2 == 1 then
			formspec = formspec .."button[3,0;2.0,0.5;move1;Move:stand]"
			end
			if self.metadata2 == 2 then
			formspec = formspec .."button[3,0;2.0,0.5;move2;Move:follow]"
			end
			minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Dog", formspec)
		end
	end
	if self.name == "mobs:cat" then
		if self.owner ~= clicker:get_player_name() then
			local player_name = clicker:get_player_name()
			local formspec = "size[3,1]"
			.."label[0,0;You are not the owner!!]"
            .."background[3,1;1,1;gui_formbg.png;true]"
            .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
            .."bgcolor[#080808BB;true]"
            .."background[8,8.5;1,1;gui_formbg.png;true]"
            .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
            .."bgcolor[#080808BB;true]"
			minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Cat", formspec)
		else
			local inv = minetest.get_player_by_name(self.owner):get_inventory()
			inv:set_size("cat",8)
			local player_name = clicker:get_player_name()
			local formspec = "size[8,8.5]"
			.."list[current_player;cat;0,2;8,1]"
			.."list[current_player;main;0,4.5;8,4]"
            .."listring[current_player;cat]"
            .."listring[current_player;main]"
            .."background[8,8.5;1,1;gui_formbg.png;true]"
            .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
            .."bgcolor[#080808BB;true]"
			if self.metadata == 1 then
			formspec = formspec .."button[0,0;2.0,0.5;texture21;Texture:ginger]"
			end
			if self.metadata == 2 then
			formspec = formspec .."button[0,0;2.0,0.5;texture22;Texture:sandy]"
			end
			if self.metadata == 3 then
			formspec = formspec .."button[0,0;2.0,0.5;texture23;Texture:splotchy]"
			end
			if self.metadata == 4 then
			formspec = formspec .."button[0,0;2.0,0.5;texture24;Texture:striped]"
			end
			if self.metadata2 == 1 then
			formspec = formspec .."button[3,0;2.0,0.5;move1;Move:stand]"
			end
			if self.metadata2 == 2 then
			formspec = formspec .."button[3,0;2.0,0.5;move2;Move:follow]"
			end
			minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Cat", formspec)
		end
	end
    if self.name == "mobs:dragon" then
		if self.owner ~= clicker:get_player_name() then
			local player_name = clicker:get_player_name()
			local formspec = "size[3,1]"
			.."label[0,0;You are not the owner!!]"
            .."background[3,1;1,1;gui_formbg.png;true]"
            .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
            .."bgcolor[#080808BB;true]"
			minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Dragon", formspec)
		else
			local inv = minetest.get_player_by_name(self.owner):get_inventory()
			local player_name = clicker:get_player_name()
            inv:set_size("dragon", 1)
            local formspec = "size[8,8.5]"
			.."list[current_player;dragon;3.5,2.5;1,1]"
            .."label[1,1;Dragon produce a dragon gift/gem gift lv.1 after some time]"
            .."label[2.4,3.5;Regnum crystal for gem gift]"
			.."list[current_player;main;0,4.5;8,4]"
            .."listring[current_player;dragon]"
            .."listring[current_player;main]"
            .."background[8,8.5;1,1;gui_formbg.png;true]"
            .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
            .."bgcolor[#080808BB;true]"
			if self.metadata == 1 then
			formspec = formspec .."button[0,0;2.0,0.5;texture31;Texture:yellow]"
			end
			if self.metadata == 2 then
			formspec = formspec .."button[0,0;2.0,0.5;texture32;Texture:blue]"
			end
			if self.metadata == 3 then
			formspec = formspec .."button[0,0;2.0,0.5;texture33;Texture:green]"
			end
			if self.metadata == 4 then
			formspec = formspec .."button[0,0;2.0,0.5;texture34;Texture:black]"
			end
            if self.metadata == 5 then
			formspec = formspec .."button[0,0;2.0,0.5;texture35;Texture:great]"
			end
            if self.metadata == 6 then
			formspec = formspec .."button[0,0;2.0,0.5;texture36;Texture:red]"
			end
			if self.metadata2 == 1 then
			formspec = formspec .."button[3,0;2.0,0.5;move1;Move:stand]"
			end
			if self.metadata2 == 2 then
			formspec = formspec .."button[3,0;2.0,0.5;move2;Move:follow]"
			end
			minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Dragon", formspec)
		end
	end
    if self.name == "mobs:sheep" then
		if self.owner ~= clicker:get_player_name() then
			local player_name = clicker:get_player_name()
			local formspec = "size[3,1]"
			.."label[0,0;You are not the owner!!]"
            .."background[3,1;1,1;gui_formbg.png;true]"
            .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
            .."bgcolor[#080808BB;true]"
			minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Sheep", formspec)
		else
			local inv = minetest.get_player_by_name(self.owner):get_inventory()
                inv:set_size("sheep",1)
                inv:set_size("sheep2",1)
                inv:set_size("sheep3",1)
			local player_name = clicker:get_player_name()
			local formspec = "size[8,8.5]"
			.."list[current_player;main;0,3.5;8,4]"
            .."list[current_player;sheep;3.5,1;1,1]"
            .."label[3.5,2;Set Color]"
            .."listring[current_player;sheep]"
            .."listring[current_player;main]"
            .."background[8,8.5;1,1;gui_formbg.png;true]"
            .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
            .."bgcolor[#080808BB;true]"
			if self.metadata2 == 1 then
			formspec = formspec .."button[0,0;2.0,0.5;move1;Move:stand]"
			end
			if self.metadata2 == 2 then
			formspec = formspec .."button[0,0;2.0,0.5;move2;Move:follow]"
			end
			minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Sheep", formspec)
		end
	end
    if self.name == "mobs:fox" then
		if self.owner ~= clicker:get_player_name() then
			local player_name = clicker:get_player_name()
			local formspec = "size[3,1]"
			.."label[0,0;You are not the owner!!]"
			minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Fox", formspec)
		else
			local inv = minetest.get_player_by_name(self.owner):get_inventory()

			local player_name = clicker:get_player_name()
			local formspec = "size[8,8.5]"
            .."label[0,1.2;Fox produce a Foxkey and Treasures after some time]"
            .."background[8,8.5;1,1;gui_formbg.png;true]"
            .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
            .."bgcolor[#080808BB;true]"
			if self.metadata == 1 then
			formspec = formspec .."button[0,0;2.0,0.5;texture41;Texture:light]"
			end
			if self.metadata == 2 then
			formspec = formspec .."button[0,0;2.0,0.5;texture42;Texture:dark]"
			end
			if self.metadata2 == 1 then
			formspec = formspec .."button[3,0;2.0,0.5;move1;Move:stand]"
			end
			if self.metadata2 == 2 then
			formspec = formspec .."button[3,0;2.0,0.5;move2;Move:follow]"
			end
			minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Fox", formspec)
		end
	end
    if self.name == "mobs:tortoise" then
		if self.owner ~= clicker:get_player_name() then
			local player_name = clicker:get_player_name()
			local formspec = "size[3,1]"
			.."label[0,0;You are not the owner!!]"
            .."background[3,1;1,1;gui_formbg.png;true]"
            .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
            .."bgcolor[#080808BB;true]"
			minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Tortoise", formspec)
		else
			local inv = minetest.get_player_by_name(self.owner):get_inventory()
			inv:set_size("tortoise", 1)
			local player_name = clicker:get_player_name()
			local formspec = "size[8,8.5]"
            .."label[1,1;Tortoise produce a tortoise gift/gem gift lv.2 after some time]"
            .."label[2.4,3.5;Regnum crystal for gem gift]"
            .."list[current_player;main;0,4.5;8,4]"
			.."list[current_player;tortoise;3.5,2.5;1,1]"
            .."listring[current_player;tortoise]"
            .."listring[current_player;main]"
            .."background[8,8.5;1,1;gui_formbg.png;true]"
            .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
            .."bgcolor[#080808BB;true]"
			if self.metadata2 == 1 then
			formspec = formspec .."button[0,0;2.0,0.5;move1;Move:stand]"
			end
			if self.metadata2 == 2 then
			formspec = formspec .."button[0,0;2.0,0.5;move2;Move:follow]"
			end
			minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Tortoise", formspec)
		end
	end
    if self.name == "mobs:knight_1248" then
		if self.owner ~= clicker:get_player_name() then
			local player_name = clicker:get_player_name()
			local formspec = "size[3,1]"
			.."label[0,0;You are not the owner!!]"
            .."background[3,1;1,1;gui_formbg.png;true]"
            .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
            .."bgcolor[#080808BB;true]"
			minetest.show_formspec(player_name, "npcf_"..self.owner.."'s 1248 Knight", formspec)
		else
			local player_name = clicker:get_player_name()
			local formspec = "size[8,8.5]"
            .."background[8,8.5;1,1;gui_formbg.png;true]"
            .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
            .."bgcolor[#080808BB;true]"
			if self.metadata2 == 1 then
			formspec = formspec .."button[0,0;2.0,0.5;move1;Move:stand]"
			end
			if self.metadata2 == 2 then
			formspec = formspec .."button[0,0;2.0,0.5;move2;Move:follow]"
			end
            formspec = formspec .."label[0,1;Hello my name is 1248]"
            .."label[0,1.3;Bring me an empty color stick and we can leave this world]"
            formspec = formspec .."button[3,4;2.0,0.5;leave;I've got color stick]"
			minetest.show_formspec(player_name, "npcf_"..self.owner.."'s 1248 Knight", formspec)
		end
	end
end

function receive_fields(self, fields, sender)
	if self.owner == sender:get_player_name() then
		if fields.leave then
			local player_name = sender:get_player_name()
			if minetest.get_player_by_name(self.owner):get_inventory():contains_item("main", "tutorial:colorstick_empty") then
				local formspec = "size[4,2.5]"
					.."label[0,0;You have won Regnum]"
					.."label[0,0.3;You have enough technology to leave this world]"
					.."label[0,0.6;and to go to another.....]"
					.."label[0,0.9;Thank you for playing Regnum]"
					.."label[0,1.2;your 1248]"
					.."background[4,2.5;1,1;gui_formbg.png;true]"
					.."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
					.."bgcolor[#080808BB;true]"
				minetest.show_formspec(player_name, "npcf_"..self.owner.."'s 1248 Knight", formspec)
			end
		else
			if fields.texture11 then
				self.object:set_properties({textures={"mobs_dog2.png"}})
				self.metadata = 2
				update(self, sender)
			elseif fields.texture12 then
				self.object:set_properties({textures={"mobs_dog.png"}})
				self.metadata = 1
				update(self, sender)
			elseif fields.texture21 then
				self.object:set_properties({textures={"mobs_kitten.png"}})
				self.metadata = 2
				update(self, sender)
			elseif fields.texture22 then
				self.object:set_properties({textures={"mobs_kitten2.png"}})
				self.metadata = 3
				update(self, sender)
			elseif fields.texture23 then
				self.object:set_properties({textures={"mobs_kitten3.png"}})
				self.metadata = 4
				update(self, sender)
			elseif fields.texture24 then
				self.object:set_properties({textures={"mobs_kitten4.png"}})
				self.metadata = 1
				update(self, sender)
			elseif fields.texture31 then
				self.object:set_properties({textures={"mobs_dragon_yellow.png"}})
				self.metadata = 2
				update(self, sender)
			elseif fields.texture32 then
				self.object:set_properties({textures={"mobs_dragon_blue.png"}})
				self.metadata = 3
				update(self, sender)
			elseif fields.texture33 then
				self.object:set_properties({textures={"mobs_dragon_green.png"}})
				self.metadata = 4
				update(self, sender)
			elseif fields.texture34 then
				self.object:set_properties({textures={"mobs_dragon_black.png"}})
				self.metadata = 5
				update(self, sender)
			elseif fields.texture35 then
				self.object:set_properties({textures={"mobs_dragon_great.png"}})
				self.metadata = 6
				update(self, sender)
			elseif fields.texture36 then
				self.object:set_properties({textures={"mobs_dragon_red.png"}})
				self.metadata = 1
				update(self, sender)
			elseif fields.texture41 then
				self.object:set_properties({textures={"mobs_fox1.png"}})
				self.metadata = 2
				update(self, sender)
			elseif fields.texture42 then
				self.object:set_properties({textures={"mobs_fox.png"}})
				self.metadata = 1
				update(self, sender)
			elseif fields.move1 then
				self.walk_velocity = 0
				self.run_velocity = 0
				self.metadata2 = 2
				update(self, sender)
			elseif fields.move2 then
				self.walk_velocity = 1
				self.run_velocity = 3
				self.metadata2 = 1
				update(self, sender)
			end
		end
	end
end
minetest.register_on_player_receive_fields(function(player, formname, fields)
	for _,ref in pairs(minetest.luaentities) do
		if ref.object and ref.type and ref.npc_name then
			if ref.type == "npc" and ("npcf_"..ref.npc_name) == formname then
				ref.on_receive_fields(ref, fields, player)
			end
		end
	end
end)

--[[
	~100  metadata3 = 0,								in mob_class = ...
	~1120 check for animals								after nodef.damage_per_second ~= 0
	~2890 deactivate punch_interval						after add weapon wear
	~2920 deactivate hitter:set_wielded_item(weapon)	after mobs.is_creative ...
	~2960 check for animals								after 'do damage'
	~3270 activate immortal								after 'Armor groups (immortal = 1 for custom damage handling)'
	~3290 first activate(self) 							after 'set anything changed above' and self.object:set_properties(self)
	~3360 first_step(self)								after 'main mob function' and function mob_class:on_step(dtime, moveresult)
	~3660 metadata = def.metadata,						in minetest.register_entity ...
	~3660 metadata2 = def.metadata2,					in minetest.register_entity ...
	~3680 on_rightclick = ...							in minetest.register_entity ...
	~3680 on_receive_fields = ...						in minetest.register_entity ...
--]]
