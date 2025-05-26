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
					local all_objects = minetest.get_objects_inside_radius({x=tonumber(player_meta:get(m[1].."x")), y=tonumber(player_meta:get(m[1].."y")), z=tonumber(player_meta:get(m[1].."z"))}, 30)
					local is_player = false
					for _,obj in ipairs(all_objects) do
						if obj:is_player() then
							is_player = true
						end
					end
					local set_animal = true
					if is_player then
						for _,obj in ipairs(all_objects) do
							local lua_ent = obj:get_luaentity()
							if lua_ent and lua_ent.name == "mobs:"..m[3] and lua_ent.owner == player:get_player_name() then
								if set_animal == false then
									obj:remove()
								end
								set_animal = false
							end
						end
					end
					if set_animal and is_player then
						local obj2 =  minetest.add_entity({x=tonumber(player_meta:get(m[1].."x")), y=tonumber(player_meta:get(m[1].."y")), z=tonumber(player_meta:get(m[1].."z"))},"mobs:"..m[3])
						local ent = obj2:get_luaentity()
						ent.owner = player:get_player_name()
						ent.npc_name = player:get_player_name().."'s "..m[2]
						obj2:set_properties({infotext=player:get_player_name().."'s "..m[2]})
						if player_meta:contains(m[1].."_meta1") then
							ent.metadata = tonumber(player_meta:get(m[1].."_meta1"))
							ent.metadata2 = tonumber(player_meta:get(m[1].."_meta2"))
							update_meta(player,m[1],obj2,ent)
						end
					end
				end
			end
		end
	end
end)

minetest.register_on_player_receive_fields(function(player, formname, fields)
	for _,ref in pairs(minetest.luaentities) do
		if ref.object and ref.type and ref.npc_name then
			if ref.type == "npc" and ("npcf_"..ref.npc_name) == formname then
				ref.on_receive_fields(ref, fields, player)
			end
		end
	end
end)

function update_meta(player,animal,obj,ent)
	local player_meta = player:get_meta()
	if animal == "dog" then
		if tonumber(player_meta:get("dog_meta1")) == 2 then
			obj:set_properties({textures={"mobs_dog2.png"}})
		elseif tonumber(player_meta:get("dog_meta1")) == 1 then
			obj:set_properties({textures={"mobs_dog.png"}})
		end
	elseif animal == "cat" then
		if tonumber(player_meta:get("cat_meta1")) == 1 then
			obj:set_properties({textures={"mobs_kitten.png"}})
		elseif tonumber(player_meta:get("cat_meta1")) == 2 then
			obj:set_properties({textures={"mobs_kitten2.png"}})
		elseif tonumber(player_meta:get("cat_meta1")) == 3 then
			obj:set_properties({textures={"mobs_kitten3.png"}})
		elseif tonumber(player_meta:get("cat_meta1")) == 4 then
			obj:set_properties({textures={"mobs_kitten4.png"}})
		elseif tonumber(player_meta:get("cat_meta1")) == 5 then
			obj:set_properties({textures={"mobs_kitten5.png"}})
		end
	elseif animal == "dragon" then
		if tonumber(player_meta:get("dragon_meta1")) == 2 then
			obj:set_properties({textures={"mobs_dragon_yellow.png"}})
		elseif tonumber(player_meta:get("dragon_meta1")) == 3 then
			obj:set_properties({textures={"mobs_dragon_blue.png"}})
		elseif tonumber(player_meta:get("dragon_meta1")) == 4 then
			obj:set_properties({textures={"mobs_dragon_green.png"}})
		elseif tonumber(player_meta:get("dragon_meta1")) == 5 then
			obj:set_properties({textures={"mobs_dragon_black.png"}})
		elseif tonumber(player_meta:get("dragon_meta1")) == 6 then
			obj:set_properties({textures={"mobs_dragon_great.png"}})
		elseif tonumber(player_meta:get("dragon_meta1")) == 1 then
			obj:set_properties({textures={"mobs_dragon_red.png"}})
		end
	elseif animal == "fox" then
		if tonumber(player_meta:get("fox_meta1")) == 2 then
			obj:set_properties({textures={"mobs_fox1.png"}})
		elseif tonumber(player_meta:get("fox_meta1")) == 1 then
			obj:set_properties({textures={"mobs_fox.png"}})
		end
	end
	if tonumber(player_meta:get(animal.."_meta2")) == 2 then
		ent.walk_velocity = 0
		ent.run_velocity = 0
		ent.walk_chance = 0
		ent.attack_chance = 0
		ent.jump = false
		ent.attack_monsters = false
	elseif tonumber(player_meta:get(animal.."_meta2")) == 1 then
		ent.walk_velocity = 1
		ent.run_velocity = 3
		ent.walk_chance = 50
		ent.attack_chance = 5
		ent.jump = true
		if ent.name == "mobs:dog" or ent.name == "mobs:cat" then
			ent.attack_monsters = true
		end
	end
end

function first_activate(self)
	if self.type == "npc" then
		if self.metadata2 == 1 then
			self.walk_velocity = 1
			self.run_velocity = 3
			self.walk_chance = 50
			self.attack_chance = 5
			self.jump = true
			if self.name == "mobs:dog" or self.name == "mobs:cat" then
				self.attack_monsters = true
			end
		end
		if self.metadata2 == 2 then
			self.walk_velocity = 0
			self.run_velocity = 0
			self.walk_chance = 0
			self.attack_chance = 0
			self.jump = false
			self.attack_monsters = false
		end
	end
	if self.name == "mobs:dog" then
        self.object:set_properties({infotext=self.owner.."'s Dog"})
		if self.metadata == 1 then
			self.object:set_properties({textures={"mobs_dog.png"}})
		end
		if self.metadata == 2 then
			self.object:set_properties({textures={"mobs_dog2.png"}})
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
    end
    if self.name == "mobs:cat" then
        self.object:set_properties({infotext=self.owner.."'s Cat"})
		if self.metadata == 1 then
			self.object:set_properties({textures={"mobs_kitten.png"}})
		end
		if self.metadata == 2 then
			self.object:set_properties({textures={"mobs_kitten2.png"}})
		end
		if self.metadata == 3 then
			self.object:set_properties({textures={"mobs_kitten3.png"}})
		end
		if self.metadata == 4 then
			self.object:set_properties({textures={"mobs_kitten4.png"}})
		end
		if self.metadata == 5 then
			self.object:set_properties({textures={"mobs_kitten5.png"}})
		end
    end
    if self.name == "mobs:sheep" then
        if self.owner then
            self.object:set_properties({infotext=self.owner.."'s Sheep"})
        end
    end
    if self.name == "mobs:knight_1248" then
        self.object:set_properties({infotext=self.owner.."'s 1248 Knight"})
    end
    if self.name == "mobs:fox" then
        self.object:set_properties({infotext=self.owner.."'s Fox"})
		if self.metadata == 1 then
			self.object:set_properties({textures={"mobs_fox.png"}})
		end
		if self.metadata == 2 then
			self.object:set_properties({textures={"mobs_fox1.png"}})
		end
    end
    if self.name == "mobs:tortoise" then
        self.object:set_properties({infotext=self.owner.."'s Tortoise"})
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

		local owner = minetest.get_player_by_name(self.owner)
		if self.owner and owner then
			local owner_meta = owner:get_meta()
			local animals = {
				{"dog","dog"},
				{"cat","cat"},
				{"sheep","sheep"},
				{"tortoise","tortoise"},
				{"knight","knight_1248"},
				{"fox","fox"},
				{"dragon","dragon"},
			}
			for _, animal in ipairs(animals) do
				if self.name == "mobs:" .. animal[2] then
					owner_meta:set_string(animal[1] .. "x", "" .. math.floor(self.object:get_pos().x+0.5))
					owner_meta:set_string(animal[1] .. "y", "" .. math.floor(self.object:get_pos().y+0.5))
					owner_meta:set_string(animal[1] .. "z", "" .. math.floor(self.object:get_pos().z+0.5))
					owner_meta:set_string(animal[1] .. "_meta1", "" .. self.metadata)
					owner_meta:set_string(animal[1] .. "_meta2", "" .. self.metadata2)
				end
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
					self.object:set_pos({x = minetest.get_player_by_name(self.owner):get_pos().x, y = minetest.get_player_by_name(self.owner):get_pos().y+1, z = minetest.get_player_by_name(self.owner):get_pos().z+1})
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
					self.object:set_pos({x = minetest.get_player_by_name(self.owner):get_pos().x, y = minetest.get_player_by_name(self.owner):get_pos().y+1, z = minetest.get_player_by_name(self.owner):get_pos().z+1})
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
						self.object:set_pos({x = minetest.get_player_by_name(self.owner):get_pos().x, y = minetest.get_player_by_name(self.owner):get_pos().y+1, z = minetest.get_player_by_name(self.owner):get_pos().z+1})
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
						self.object:set_pos({x = minetest.get_player_by_name(self.owner):get_pos().x, y = minetest.get_player_by_name(self.owner):get_pos().y+1, z = minetest.get_player_by_name(self.owner):get_pos().z+1})
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
					self.object:set_pos({x = minetest.get_player_by_name(self.owner):get_pos().x, y = minetest.get_player_by_name(self.owner):get_pos().y+1, z = minetest.get_player_by_name(self.owner):get_pos().z+1})
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
						self.object:set_pos({x = minetest.get_player_by_name(self.owner):get_pos().x, y = minetest.get_player_by_name(self.owner):get_pos().y+1, z = minetest.get_player_by_name(self.owner):get_pos().z+1})
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
							sfinv.set_player_inventory_formspec(minetest.get_player_by_name(self.owner))
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
					self.object:set_pos({x = minetest.get_player_by_name(self.owner):get_pos().x, y = minetest.get_player_by_name(self.owner):get_pos().y+1, z = minetest.get_player_by_name(self.owner):get_pos().z+1})
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
	local player_name = clicker:get_player_name()
	local formspec = "size[8,9.1]"
	.."list[current_player;main;0,5.2;8,1;]"
	.."list[current_player;main;0,6.35;8,3;8]"
	.."image[0,5.2;1,1;gui_hb_bg.png]"
	.."image[1,5.2;1,1;gui_hb_bg.png]"
	.."image[2,5.2;1,1;gui_hb_bg.png]"
	.."image[3,5.2;1,1;gui_hb_bg.png]"
	.."image[4,5.2;1,1;gui_hb_bg.png]"
	.."image[5,5.2;1,1;gui_hb_bg.png]"
	.."image[6,5.2;1,1;gui_hb_bg.png]"
	.."image[7,5.2;1,1;gui_hb_bg.png]"
    if self.name == "mobs:dog" then
		if self.owner ~= clicker:get_player_name() then
			formspec = formspec.."label[0,1;You are not the owner!!]"
			.."tabheader[0,0;dog;Dog Inventory;1;true;false]"
		else
			formspec = formspec.."list[current_player;dog;0,2;8,1]"
            .."listring[current_player;dog]"
            .."listring[current_player;main]"
			.."tabheader[0,0;dog;Dog Inventory;1;true;false]"
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
		end
		minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Dog", formspec)
	end
	if self.name == "mobs:cat" then
		if self.owner ~= clicker:get_player_name() then
			formspec = formspec.."label[0,1;You are not the owner!!]"
			.."tabheader[0,0;cat;Cat Inventory;1;true;false]"
		else
			formspec = formspec.."list[current_player;cat;0,2;8,1]"
            .."listring[current_player;cat]"
            .."listring[current_player;main]"
			.."tabheader[0,0;cat;Cat Inventory;1;true;false]"
			if self.metadata == 1 then
				formspec = formspec .."button[0,0;2.0,0.5;texture21;Texture:sandy]"
			end
			if self.metadata == 2 then
				formspec = formspec .."button[0,0;2.0,0.5;texture22;Texture:splotchy]"
			end
			if self.metadata == 3 then
				formspec = formspec .."button[0,0;2.0,0.5;texture23;Texture:striped]"
			end
			if self.metadata == 4 then
				formspec = formspec .."button[0,0;2.0,0.5;texture24;Texture:black]"
			end
			if self.metadata == 5 then
				formspec = formspec .."button[0,0;2.0,0.5;texture25;Texture:ginger]"
			end
			if self.metadata2 == 1 then
				formspec = formspec .."button[3,0;2.0,0.5;move1;Move:stand]"
			end
			if self.metadata2 == 2 then
				formspec = formspec .."button[3,0;2.0,0.5;move2;Move:follow]"
			end
		end
		minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Cat", formspec)
	end
    if self.name == "mobs:dragon" then
		if self.owner ~= clicker:get_player_name() then
			formspec = formspec.."label[0,1;You are not the owner!!]"
			.."tabheader[0,0;dragon;Dragon Inventory;1;true;false]"
		else
			formspec = formspec.."list[current_player;dragon;3.5,2.5;1,1]"
			.."image[3.5,2.5;1,1;tutorial_regnum_crystal_background.png]"
            .."label[0,1;The Dragon produces a Dragon Gift without the Regnum Crystal]"
			.."label[0,1.3;and a Dragon Gem Gift with the Regnum Crystal.]"
            .."label[3.1,3.3;Regnum Crystal]"
            .."listring[current_player;dragon]"
            .."listring[current_player;main]"
			.."tabheader[0,0;dragon;Dragon Inventory;1;true;false]"
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
		end
		minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Dragon", formspec)
	end
    if self.name == "mobs:sheep" then
		if self.owner ~= clicker:get_player_name() then
			formspec = formspec.."label[0,1;You are not the owner!!]"
			.."tabheader[0,0;sheep;Sheep Inventory;1;true;false]"
		else
			formspec = formspec.."list[current_player;sheep;3.5,2.5;1,1]"
			.."image[3.5,2.5;1,1;tutorial_dye_background.png]"
			.."label[0,1;The Sheep produces some wool based on the given Dye.]"
            .."label[3.7,3.3;Dye]"
            .."listring[current_player;sheep]"
            .."listring[current_player;main]"
			.."tabheader[0,0;sheep;Sheep Inventory;1;true;false]"
			if self.metadata2 == 1 then
			formspec = formspec .."button[0,0;2.0,0.5;move1;Move:stand]"
			end
			if self.metadata2 == 2 then
			formspec = formspec .."button[0,0;2.0,0.5;move2;Move:follow]"
			end
		end
		minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Sheep", formspec)
	end
    if self.name == "mobs:fox" then
		if self.owner ~= clicker:get_player_name() then
			formspec = formspec.."label[0,1;You are not the owner!!]"
			.."tabheader[0,0;fox;Fox Inventory;1;true;false]"
		else
			formspec = formspec.."label[0,1;The Fox produces a Foxkey and Treasures after some time.]"
			.."tabheader[0,0;fox;Fox Inventory;1;true;false]"
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
		end
		minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Fox", formspec)
	end
    if self.name == "mobs:tortoise" then
		if self.owner ~= clicker:get_player_name() then
			formspec = formspec.."label[0,1;You are not the owner!!]"
			.."tabheader[0,0;tortoise;Tortoise Inventory;1;true;false]"
		else
			formspec = formspec.."list[current_player;tortoise;3.5,2.5;1,1]"
			.."image[3.5,2.5;1,1;tutorial_regnum_crystal_background.png]"
            .."label[0,1;The Tortoise produces a Tortoise Gift without the Regnum Crystal]"
			.."label[0,1.3;and a Tortoise Gem Gift with the Regnum Crystal.]"
            .."label[3.1,3.3;Regnum Crystal]"
            .."listring[current_player;tortoise]"
            .."listring[current_player;main]"
			.."tabheader[0,0;tortoise;Tortoise Inventory;1;true;false]"
			if self.metadata2 == 1 then
			formspec = formspec .."button[0,0;2.0,0.5;move1;Move:stand]"
			end
			if self.metadata2 == 2 then
			formspec = formspec .."button[0,0;2.0,0.5;move2;Move:follow]"
			end
		end
		minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Tortoise", formspec)
	end
    if self.name == "mobs:knight_1248" then
		if self.owner ~= clicker:get_player_name() then
			formspec = formspec.."label[0,1;You are not the owner!!]"
			.."tabheader[0,0;knight;Knight Inventory;1;true;false]"
		else
			local inv = minetest.get_player_by_name(self.owner):get_inventory()
			local count = 0
			for i = 1, 54 do
				local inventory = "a" .. i
				if inv:get_stack("a"..i, 1):get_count() > 0 then
					count = count + 1
				end
			end
			formspec = formspec.."tabheader[0,0;knight;Knight Inventory;1;true;false]"
			if count < 54 then
				formspec = formspec.."label[0,1;Hello my name is 1248]"
				.."label[0,1.3;I’m glad you’ve made it this far.]"
				.."label[0,1.6;You’ve already completed "..count.." Achievements.]"
				.."label[0,1.9;But you’re not there yet.]"
				.."label[0,2.2;Complete the remaining "..(54-count).." Achievements]"
				.."label[0,2.5;to fully master the game.]"
				.."label[0,2.8;Good luck on your journey ahead!]"
			else
				formspec = formspec.."label[0,1.0;Congratulations!!]"
				.."label[0,1.3;You have earned all 54 Achievements.]"
				.."label[0,1.6;The game is now officially complete.]"
				.."label[0,1.9;Of course, you are free to continue exploring]"
				.."label[0,2.2;the world with the technologies you’ve gained,]"
				.."label[0,2.5;and who knows, maybe in the future]"
				.."label[0,2.8;I’ll find more challenges for you...]"
			end	
			if self.metadata2 == 1 then
			formspec = formspec .."button[0,0;2.0,0.5;move1;Move:stand]"
			end
			if self.metadata2 == 2 then
			formspec = formspec .."button[0,0;2.0,0.5;move2;Move:follow]"
			end
		end
		minetest.show_formspec(player_name, "npcf_"..self.owner.."'s Knight", formspec)
	end
end

function receive_fields(self, fields, sender)
	if self.owner == sender:get_player_name() then
		if fields.texture11 then
			self.object:set_properties({textures={"mobs_dog2.png"}})
			self.metadata = 2
			update(self, sender)
		elseif fields.texture12 then
			self.object:set_properties({textures={"mobs_dog.png"}})
			self.metadata = 1
			update(self, sender)
		elseif fields.texture21 then
			self.object:set_properties({textures={"mobs_kitten2.png"}})
			self.metadata = 2
			update(self, sender)
		elseif fields.texture22 then
			self.object:set_properties({textures={"mobs_kitten3.png"}})
			self.metadata = 3
			update(self, sender)
		elseif fields.texture23 then
			self.object:set_properties({textures={"mobs_kitten4.png"}})
			self.metadata = 4
			update(self, sender)
		elseif fields.texture24 then
			self.object:set_properties({textures={"mobs_kitten5.png"}})
			self.metadata = 5
			update(self, sender)
		elseif fields.texture25 then
			self.object:set_properties({textures={"mobs_kitten.png"}})
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
			self.walk_chance = 0
			self.attack_chance = 0
			self.jump = false
			self.attack_monsters = false
			self.metadata2 = 2
			update(self, sender)
		elseif fields.move2 then
			self.walk_velocity = 1
			self.run_velocity = 3
			self.walk_chance = 50
			self.attack_chance = 5
			self.jump = true
			if self.name == "mobs:dog" or self.name == "mobs:cat" then
				self.attack_monsters = true
			end
			self.metadata2 = 1
			update(self, sender)
		end
	end
end