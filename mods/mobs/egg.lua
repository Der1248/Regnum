minetest.register_craftitem("mobs:stone_monster_egg", {
	description = "Stone Monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.env:add_entity(pointed_thing.above,"mobs:stone_monster")
			if not minetest.setting_getbool("creative_mode") then itemstack:take_item() end
			return itemstack
		end
	end,

})


minetest.register_craftitem("mobs:dirt_monster_egg", {
	description = "Dirt Monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.env:add_entity(pointed_thing.above,"mobs:dirt_monster")
			if not minetest.setting_getbool("creative_mode") then itemstack:take_item() end
			return itemstack
		end
	end,

})

minetest.register_craftitem("mobs:sand_monster_egg", {
	description = "Sand Monster spawn-egg",
	inventory_image = "tutorial_mummy_egg.png",
	liquids_pointable = false,
	stack_max = 99,
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type == "node" then
			minetest.env:add_entity(pointed_thing.above,"mobs:sand_monster")
			if not minetest.setting_getbool("creative_mode") then itemstack:take_item() end
			return itemstack
		end
	end,

})