minetest.register_craftitem("tutorial:magic_gem1", {
    description = "Magic Gem 1",
	inventory_image = "tutorial_gem1.png",
})
minetest.register_craftitem("tutorial:magic_gem2", {
    description = "Magic Gem 2",
	inventory_image = "tutorial_gem2.png",
})
minetest.register_craftitem("tutorial:magic_gem3", {
    description = "Magic Gem 3",
	inventory_image = "tutorial_gem3.png",
})
minetest.register_craftitem("tutorial:magic_gem4", {
    description = "Magic Gem 4",
	inventory_image = "tutorial_gem4.png",
})
minetest.register_craftitem("tutorial:magic_gem5", {
    description = "Magic Gem 5",
	inventory_image = "tutorial_gem5.png",
})
minetest.register_craftitem("tutorial:gem_fragment", {
    description = "Dragon Gem Fragment",
	inventory_image = "tutorial_gem_fragment.png",
})
minetest.register_craftitem("tutorial:dragon_crystal", {
    description = "Regnum Crystal",
	inventory_image = "tutorial_dragon_crystal.png",
})
minetest.register_craftitem("tutorial:dragon_schluessel", {
	description = "Dragon Key",
	inventory_image = "tutorial_dragon_schluessel.png",
})
minetest.register_craftitem("tutorial:coin2", {
    description = "Green Drill Coin",
	inventory_image = "tutorial_coin.png",
    stack_max = 9999,
})
minetest.register_craftitem("tutorial:monster_remover", {
	description = "Monster Remover",
	inventory_image = "tutorial_monster_entverner.png",
	stack_max = 1,
	on_use = function(itemstack, user, pointed_thing)
		local pos = user:get_pos()
		for _,object in ipairs(minetest.get_objects_inside_radius(pos, 15)) do
			if not object:is_player() then
				local entity_name = object:get_luaentity().name
				local monster_list = {
					"mobs:red_monster",
					"mobs:blue_monster",
					"mobs:cyan_monster",
					"mobs:green2_monster",
					"mobs:yellow_monster",
					"mobs:purple_monster",
					"mobs:stone_monster",
					"mobs:dirt_monster",
					"mobs:sand_monster",
					"mobs:silver_sand_monster",
					"mobs:desert_sand_monster",
					"mobs:desert_stone_monster",
					"mobs:snow_monster",
					"mobs:ice_monster",
					"mobs:grass_monster",
					"mobs:dry_dirt_monster",
					"mobs:clay_monster",
					"mobs:gravel_monster",
					"mobs:coniferous_litter_monster",
					"mobs:moss_monster",
					"mobs:permafrost_monster",
					"mobs:dry_grass_monster",
					"mobs:rainforest_litter_monster",
					"mobs:obsidian_monster"
				}
				for _, v in ipairs(monster_list) do
					if v == entity_name then
					object:remove()
					end
				end
			end
		end
	end,
})
minetest.register_craftitem("tutorial:dna_string", {
	description = "DNA String",
	inventory_image = "tutorial_dna_string.png",
	groups = {regnum_dna=1},
})
minetest.register_craftitem("tutorial:armor_key", {
	description = "Armor Key",
	inventory_image = "tutorial_armor_schluessel.png",
})

minetest.register_craftitem("tutorial:regnum_pixeled", {
	description = "Dark Regnum",
	inventory_image = "tutorial_regnum_dark.png",
})
minetest.register_craftitem("tutorial:regnum_key_pixeled", {
	description = "Dark Regnum Key",
	inventory_image = "tutorial_regnum_schluessel_dark.png",
})
minetest.register_craftitem("tutorial:regnum_key", {
	description = "Regnum Key",
	inventory_image = "tutorial_regnum_schluessel.png",
})
minetest.register_craftitem("tutorial:regnum_pixel_gold", {
	description = "Dark Green Pixel",
	inventory_image = "tutorial_regnum_pixel_gold.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:regnum_pixel_red", {
	description = "Dark Red Pixel",
	inventory_image = "tutorial_regnum_pixel_rot.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:regnum_pixel_blue", {
	description = "Dark Blue Pixel",
	inventory_image = "tutorial_regnum_pixel_blau.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:regnum_pixel_green", {
	description = "Dark Cyan Pixel",
	inventory_image = "tutorial_regnum_pixel_gruen.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:regnum_pixel_purple", {
	description = "Dark Black Pixel",
	inventory_image = "tutorial_regnum_pixel_lila.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:legenden_kristall_1", {
	description = "the first legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:legenden_kristall_2", {
	description = "the second legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:legenden_kristall_3", {
	description = "the third legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:legenden_kristall_4", {
	description = "the fourth legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:legenden_kristall_5", {
	description = "the fifth legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:legenden_kristall_6", {
	description = "the sixth legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:legenden_kristall_7", {
	description = "the seventh legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:legenden_kristall_8", {
	description = "the eighth legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:regnum_part", {
	description = "Part of Regnum",
	inventory_image = "tutorial_regnum_part.png",
})
minetest.register_craftitem("tutorial:geschenkpapier_death", {
    description = "Death Wrapping Paper",
	inventory_image = "tutorial_geschenkpapier_death.png",
})
minetest.register_craftitem("tutorial:regnum", {
	description = "Regnum",
	inventory_image = "tutorial_regnum.png",
})
minetest.register_craftitem("tutorial:lavabattleaxe", {
	description = "Lava Battleaxe",
	inventory_image = "tutorial_lavabattleaxe.png",
	stack_max = 1,
	liquids_pointable = true,
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if pointed_thing.type ~= "node" then
			return
		end
		local nodes = minetest.get_node(pointed_thing.under)
		local name = nodes.name
		if name == "default:lava_source" then
		    minetest.add_node(pointed_thing.under, {name="air"})
		    inv:add_item("main", "default:lava_source")
		end
	end,
})
minetest.register_craftitem("tutorial:lila_erz1", {
	description = "Purple Lv.1",
	inventory_image = "tutorial_lila_erz1.png",
})
minetest.register_craftitem("tutorial:lila_erz2", {
	description = "Purple Lv.2",
	inventory_image = "tutorial_lila_erz2.png",
})
minetest.register_craftitem("tutorial:lila_erz3", {
	description = "Purple Lv.MAX",
	inventory_image = "tutorial_lila_erz3.png",
})
minetest.register_craftitem("tutorial:legenden_schluessel", {
	description = "Legend Key",
	inventory_image = "tutorial_legenden_schluessel.png",
})
minetest.register_craftitem("tutorial:bag_schluessel4", {
	description = "Bag Key Lv.MAX",
	inventory_image = "tutorial_bag_schluessel4.png",
})
minetest.register_craftitem("tutorial:bag_schluessel3", {
	description = "Bag Key Lv.3",
	inventory_image = "tutorial_bag_schluessel3.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:bag_schluessel2", {
	description = "Bag Key Lv.2",
	inventory_image = "tutorial_bag_schluessel2.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:bag_schluessel1", {
	description = "Bag Key Lv.1",
	inventory_image = "tutorial_bag_schluessel1.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:craft_schluessel7", {
	description = "Craft Key Lv.MAX",
	inventory_image = "tutorial_craft_schluessel7.png",
})
minetest.register_craftitem("tutorial:craft_schluessel6", {
	description = "Craft Key Lv.6",
	inventory_image = "tutorial_craft_schluessel6.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:craft_schluessel5", {
	description = "Craft Key Lv.5",
	inventory_image = "tutorial_craft_schluessel5.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:craft_schluessel4", {
	description = "Craft Key Lv.4",
	inventory_image = "tutorial_craft_schluessel4.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:craft_schluessel3", {
	description = "Craft Key Lv.3",
	inventory_image = "tutorial_craft_schluessel3.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:craft_schluessel2", {
	description = "Craft Key Lv.2",
	inventory_image = "tutorial_craft_schluessel2.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:craft_schluessel1", {
	description = "Craft Key Lv.1",
	inventory_image = "tutorial_craft_schluessel1.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:xp_blau", {
	description = "Blue Xp Block Part",
	inventory_image = "tutorial_xp_blau.png",
})
minetest.register_craftitem("tutorial:xp_rot", {
	description = "Red Xp Block Part",
	inventory_image = "tutorial_xp_rot.png",
})
minetest.register_craftitem("tutorial:blau_erz", {
    description = "Blue",
	inventory_image = "tutorial_blau_erz.png",
})
minetest.register_craftitem("tutorial:rot_erz", {
    description = "Red",
	inventory_image = "tutorial_rot_erz.png",
})
minetest.register_craftitem("tutorial:level_schluessel", {
	description = "Level Key",
	inventory_image = "tutorial_level_schluessel.png",
})
minetest.register_craftitem("tutorial:titan", {
	description = "Titanium",
	inventory_image = "tutorial_titan.png",
})
minetest.register_craftitem("tutorial:coin_lila", {
	description = "Purple Coin",
	inventory_image = "tutorial_coin_lila.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:coin_rot", {
	description = "Red Coin",
	inventory_image = "tutorial_coin_rot.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:coin_blau", {
    description = "Blue Coin blue",
	inventory_image = "tutorial_coin_blau.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:coin_grau", {
    description = "Grey Coin",
	inventory_image = "tutorial_coin_grau.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:coin_grau1", {
    description = "Spezial Grey Coin Lv.1",
	inventory_image = "tutorial_coin_grau1.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau2", {
    description = "Spezial Grey Coin Lv.2",
	inventory_image = "tutorial_coin_grau2.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau3", {
    description = "Spezial Grey Coin Lv.3",
	inventory_image = "tutorial_coin_grau3.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau4", {
    description = "Spezial Grey Coin Lv.4",
	inventory_image = "tutorial_coin_grau4.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau5", {
    description = "Spezial Grey Coin Lv.5",
	inventory_image = "tutorial_coin_grau5.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau6", {
    description = "Spezial Grey Coin Lv.6",
	inventory_image = "tutorial_coin_grau6.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau7", {
    description = "Spezial Grey Coin Lv.7",
	inventory_image = "tutorial_coin_grau7.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau8", {
    description = "Spezial Grey Coin Lv.8",
	inventory_image = "tutorial_coin_grau8.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau9", {
    description = "Spezial Grey Coin Lv.9",
	inventory_image = "tutorial_coin_grau9.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau10", {
    description = "Spezial Grey Coin Lv.10",
	inventory_image = "tutorial_coin_grau10.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau11", {
    description = "Spezial Grey Coin Lv.11",
	inventory_image = "tutorial_coin_grau11.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau12", {
    description = "Spezial Grey Coin Lv.12",
	inventory_image = "tutorial_coin_grau12.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau13", {
    description = "Spezial Grey Coin Lv.13",
	inventory_image = "tutorial_coin_grau13.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau14", {
    description = "Spezial Grey Coin Lv.14",
	inventory_image = "tutorial_coin_grau14.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau15", {
    description = "Spezial Grey Coin Lv.15",
	inventory_image = "tutorial_coin_grau15.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau16", {
    description = "Spezial Grey Coin Lv.16",
	inventory_image = "tutorial_coin_grau16.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau17", {
    description = "Spezial Grey Coin Lv.17",
	inventory_image = "tutorial_coin_grau17.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau18", {
    description = "Spezial Grey Coin Lv.18",
	inventory_image = "tutorial_coin_grau18.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau19", {
    description = "Spezial Grey Coin Lv.19",
	inventory_image = "tutorial_coin_grau19.png",
	groups = {not_in_creative_inventory=1},
})
minetest.register_craftitem("tutorial:coin_grau20", {
    description = "Spezial Grey Coin Lv.MAX",
	inventory_image = "tutorial_coin_grau20.png",
})
minetest.register_craftitem("tutorial:coin", {
    description = "Green Laser Coin",
	inventory_image = "tutorial_coin.png",
    stack_max = 9999,
})
minetest.register_craftitem("tutorial:admin", {
	description = "Admin",
	inventory_image = "tutorial_admin_ore.png",
})
minetest.register_craftitem("tutorial:geschenkpapier", {
    description = "Wrapping Paper",
	inventory_image = "tutorial_geschenkpapier.png",
})
minetest.register_craftitem("tutorial:geld", {
	inventory_image = "tutorial_geld.png",
	description = "Super Material",
})
minetest.register_craftitem("tutorial:XP", {
	inventory_image = "tutorial_XP.png",
})
minetest.register_craftitem("tutorial:stone_coal_lump", {
	description = "Stone Coal Lump",
	inventory_image = "tutorial_stone_coal_lump.png",
})
minetest.register_craftitem("tutorial:uranium1", {
	description = "Uranium Lv.1",
	inventory_image = "tutorial_uranium1.png",
	groups = {uranium_item=1},
})
minetest.register_craftitem("tutorial:uranium2", {
	description = "Uranium Lv.2",
	inventory_image = "tutorial_uranium2.png",
	groups = {uranium_item=1},
})
minetest.register_craftitem("tutorial:uranium3", {
	description = "Uranium Lv.3",
	inventory_image = "tutorial_uranium3.png",
	groups = {uranium_item=1},
})
minetest.register_craftitem("tutorial:uranium4", {
	description = "Uranium Lv.4",
	inventory_image = "tutorial_uranium4.png",
	groups = {uranium_item=1},
})
minetest.register_craftitem("tutorial:uranium5", {
	description = "Uranium Lv.5",
	inventory_image = "tutorial_uranium5.png",
	groups = {uranium_item=1},
})
minetest.register_craftitem("tutorial:uranium6", {
	description = "Uranium Lv.6",
	inventory_image = "tutorial_uranium6.png",
	groups = {uranium_item=1},
})
minetest.register_craftitem("tutorial:uranium7", {
	description = "Uranium Lv.7",
	inventory_image = "tutorial_uranium7.png",
	groups = {uranium_item=1},
})
minetest.register_craftitem("tutorial:uranium8", {
	description = "Uranium Lv.8",
	inventory_image = "tutorial_uranium8.png",
	groups = {uranium_item=1},
})
minetest.register_craftitem("tutorial:uranium9", {
	description = "Uranium Lv.MAX",
	inventory_image = "tutorial_uranium9.png",
	groups = {uranium_item=1},
})
minetest.register_craftitem( "tutorial:blackblock1", {
	description = "Black Item Lv.1",
	inventory_image = "tutorial_blackblock1.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:blackblock2", {
	description = "Black Item Lv.2",
	inventory_image = "tutorial_blackblock2.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:blackblock3", {
	description = "Black Item Lv.3",
	inventory_image = "tutorial_blackblock3.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:blackblock4", {
	description = "Black Item Lv.4",
	inventory_image = "tutorial_blackblock4.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:blackblock5", {
	description = "Black Item Lv.5",
	inventory_image = "tutorial_blackblock5.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:blackblock6", {
	description = "Black Item Lv.MAX",
	inventory_image = "tutorial_blackblock6.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:whiteblock1", {
	description = "White Item Lv.1",
	inventory_image = "tutorial_whiteblock1.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:whiteblock2", {
	description = "White Item Lv.2",
	inventory_image = "tutorial_whiteblock2.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:whiteblock3", {
	description = "White Item Lv.3",
	inventory_image = "tutorial_whiteblock3.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:whiteblock4", {
	description = "White Item Lv.4",
	inventory_image = "tutorial_whiteblock4.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:whiteblock5", {
	description = "White Item Lv.5",
	inventory_image = "tutorial_whiteblock5.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:whiteblock6", {
	description = "White Item Lv.MAX",
	inventory_image = "tutorial_whiteblock6.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem("tutorial:white", {
	description = "White",
	inventory_image = "tutorial_white.png",
})
minetest.register_craftitem("tutorial:black", {
	description = "Black",
	inventory_image = "tutorial_black.png",
})
minetest.register_craftitem( "tutorial:superblock1", {
	description = "Super Item Lv.1",
	inventory_image = "tutorial_superblock1.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock2", {
	description = "Super Item Lv.2",
	inventory_image = "tutorial_superblock2.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock3", {
	description = "Super Item Lv.3",
	inventory_image = "tutorial_superblock3.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock4", {
	description = "Super Item Lv.4",
	inventory_image = "tutorial_superblock4.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock5", {
	description = "Super Item Lv.5",
	inventory_image = "tutorial_superblock5.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock6", {
	description = "Super Item Lv.6",
	inventory_image = "tutorial_superblock6.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock7", {
	description = "Super Item Lv.7",
	inventory_image = "tutorial_superblock7.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock8", {
	description = "Super Item Lv.8",
	inventory_image = "tutorial_superblock8.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock9", {
	description = "Super Item Lv.MAX",
	inventory_image = "tutorial_superblock9.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem("tutorial:blades",{
	description = "Helicopter Blades",
	inventory_image = "helicopter_blades_inv.png",
})
-- cabin
minetest.register_craftitem("tutorial:cabin",{
	description = "Cabin for Helicopter",
	inventory_image = "helicopter_cabin_inv.png",
})
-- heli
minetest.register_craftitem("tutorial:heli", {
	description = "Helicopter",
	inventory_image = "helicopter_heli_inv.png",

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" then
			return
		end
		if minetest.get_node(pointed_thing.above).name ~= "air" then
			return
		end
		minetest.add_entity(pointed_thing.above, "helicopter:heli")
		if not (creative_exists and placer and
				creative.is_enabled_for(placer:get_player_name())) then
			itemstack:take_item()
		end
		return itemstack
	end,
})
