minetest.register_craftitem("mobs:stone_monster_egg", {
	description = "Stone monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:stone_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})
minetest.register_craftitem("mobs:random_monster_egg", {
	description = "??? monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
        if pointed_thing.type == "node" then
            local x = math.random(1,6)
            if x == 1 then
			    minetest.add_entity(pointed_thing.above,"mobs:red_monster")
            elseif x == 2 then
                minetest.add_entity(pointed_thing.above,"mobs:blue_monster")
            elseif x == 3 then
                minetest.add_entity(pointed_thing.above,"mobs:green2_monster")
            elseif x == 4 then
                minetest.add_entity(pointed_thing.above,"mobs:yellow_monster")
            elseif x == 5 then
                minetest.add_entity(pointed_thing.above,"mobs:purple_monster")
            elseif x == 6 then
                minetest.add_entity(pointed_thing.above,"mobs:cyan_monster")
            end
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:dirt_monster_egg", {
	description = "Dirt monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:dirt_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:sand_monster_egg", {
	description = "Sand monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:sand_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:snow_monster_egg", {
	description = "Snow monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:snow_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:ice_monster_egg", {
	description = "Ice monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:ice_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:grass_monster_egg", {
	description = "Grass monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:green_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:rainforest_litter_monster_egg", {
	description = "Rainforest litter monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:rainforest_litter_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:dry_grass_monster_egg", {
	description = "Dry grass monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:dry_grass_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:silver_sand_monster_egg", {
	description = "Silver sand monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:silver_sand_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})
minetest.register_craftitem("mobs:desert_sand_monster_egg", {
	description = "Desert sand monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:desert_sand_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:desert_stone_monster_egg", {
	description = "Desert stone monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:desert_stone_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:dry_dirt_monster_egg", {
	description = "Dry dirt monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:dry_dirt_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:clay_monster_egg", {
	description = "Clay monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:clay_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:gravel_monster_egg", {
	description = "Gravel monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:gravel_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:coniferous_litter_monster_egg", {
	description = "Coniferous litter monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:coniferous_litter_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:moss_monster_egg", {
	description = "Moss monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:moss_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:permafrost_monster_egg", {
	description = "Permafrost monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs:permafrost_monster")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:dog_egg", {
	description = "Dog spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local obj = minetest.add_entity(pointed_thing.above,"mobs:dog")
			local name = placer:get_player_name()
			local ent = obj:get_luaentity()
			ent.owner = placer:get_player_name()
			ent.npc_name = placer:get_player_name().."'s Dog"
			obj:set_properties({infotext=name.."'s Dog"})
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})
minetest.register_craftitem("mobs:cat_egg", {
	description = "Cat spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local obj = minetest.add_entity(pointed_thing.above,"mobs:cat")
			local name = placer:get_player_name()
			local ent = obj:get_luaentity()
			ent.owner = placer:get_player_name()
			ent.npc_name = placer:get_player_name().."'s Cat"
			obj:set_properties({infotext=name.."'s Cat"})
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})
minetest.register_craftitem("mobs:sheep_egg", {
	description = "Sheep spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local obj = minetest.add_entity(pointed_thing.above,"mobs:sheep")
			local name = placer:get_player_name()
			local ent = obj:get_luaentity()
			ent.owner = placer:get_player_name()
			ent.npc_name = placer:get_player_name().."'s Sheep"
			obj:set_properties({infotext=name.."'s Sheep"})
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})
minetest.register_craftitem("mobs:dragon_egg", {
	description = "Dragon spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local obj = minetest.add_entity(pointed_thing.above,"mobs:dragon")
			local name = placer:get_player_name()
			local ent = obj:get_luaentity()
			ent.owner = placer:get_player_name()
			ent.npc_name = placer:get_player_name().."'s Dragon"
			obj:set_properties({infotext=name.."'s Dragon"})
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})
minetest.register_craftitem("mobs:fox_egg", {
	description = "Fox spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local obj = minetest.add_entity(pointed_thing.above,"mobs:fox")
			local name = placer:get_player_name()
			local ent = obj:get_luaentity()
			ent.owner = placer:get_player_name()
			ent.npc_name = placer:get_player_name().."'s Fox"
			obj:set_properties({infotext=name.."'s Fox"})
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})
minetest.register_craftitem("mobs:tortoise_egg", {
	description = "Tortoise spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local obj = minetest.add_entity(pointed_thing.above,"mobs:tortoise")
			local name = placer:get_player_name()
			local ent = obj:get_luaentity()
			ent.owner = placer:get_player_name()
			ent.npc_name = placer:get_player_name().."'s Tortoise"
			obj:set_properties({infotext=name.."'s Tortoise"})
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})
minetest.register_craftitem("mobs:knight_1248_egg", {
	description = "1248 Knight spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			local obj = minetest.add_entity(pointed_thing.above,"mobs:knight_1248")
			local name = placer:get_player_name()
			local ent = obj:get_luaentity()
			ent.owner = placer:get_player_name()
			ent.npc_name = placer:get_player_name().."'s Knight"
			obj:set_properties({infotext=name.."'s Knight"})
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})


minetest.register_craftitem("mobs:watermob_crocodile_lg_egg", {
	description = "Crocodile large (watermob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_crocs:crocodile_lg")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:watermob_crocodile_md_egg", {
	description = "Crocodile medium (watermob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_crocs:crocodile_md")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:watermob_crocodile_sm_egg", {
	description = "Crocodile small (watermob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_crocs:crocodile_sm")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:watermob_clownfish_egg", {
	description = "Clownfish (watermob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_fish:clownfish")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:watermob_tropical_fish_egg", {
	description = "Tropical fish (watermob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_fish:tropical")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:watermob_jellyfish_egg", {
	description = "Jellyfish (watermob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_jellyfish:jellyfish")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:watermob_shark_sm_egg", {
	description = "Shark small (watermob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_sharks:shark_sm")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:watermob_shark_md_egg", {
	description = "Shark medium (watermob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_sharks:shark_md")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:watermob_shark_lg_egg", {
	description = "Shark large (watermob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_sharks:shark_lg")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:watermob_turtle_lg_egg", {
	description = "Turtle large (watermob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_turtles:turtle_lg")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:watermob_turtle_sm_egg", {
	description = "Turtle small (watermob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_turtles:turtle_sm")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:skymob_butterfly_egg", {
	description = "Butterfly (skymob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_butterfly:butterfly")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:skymob_gull_egg", {
	description = "Gull (skymob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_birds:gull")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:skymob_bird_sm_egg", {
	description = "Bird small (skymob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_birds:bird_sm")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:skymob_bird_lg_egg", {
	description = "Bird large (skymob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_birds:bird_lg")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})

minetest.register_craftitem("mobs:skymob_bat_egg", {
	description = "Bat (skymob) spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.add_entity(pointed_thing.above,"mobs_bat:bat")
			if not minetest.is_creative_enabled(placer:get_player_name()) then itemstack:take_item() end
			return itemstack
		end
	end,
})
