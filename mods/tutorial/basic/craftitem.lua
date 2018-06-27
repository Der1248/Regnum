minetest.register_craftitem("tutorial:magic_gem1", {
    description = "Magic gem 1",
	inventory_image = "tutorial_gem1.png",
})
minetest.register_craftitem("tutorial:magic_gem2", {
    description = "Magic gem 2",
	inventory_image = "tutorial_gem2.png",
})
minetest.register_craftitem("tutorial:magic_gem3", {
    description = "Magic gem 3",
	inventory_image = "tutorial_gem3.png",
})
minetest.register_craftitem("tutorial:magic_gem4", {
    description = "Magic gem 4",
	inventory_image = "tutorial_gem4.png",
})
minetest.register_craftitem("tutorial:magic_gem5", {
    description = "Magic gem 5",
	inventory_image = "tutorial_gem5.png",
})
minetest.register_craftitem("tutorial:gem_fragment", {
    description = "Gem fragment lv.2",
	inventory_image = "tutorial_gem_fragment.png",
})
minetest.register_craftitem("tutorial:dragon_crystal", {
    description = "Regnum crystal",
	inventory_image = "tutorial_dragon_crystal.png",
})
minetest.register_craftitem("tutorial:dragon_schluessel", {
	description = "Dragonkey",
	inventory_image = "tutorial_dragon_schluessel.png",
})
minetest.register_craftitem("tutorial:coin2", {
    description = "Coin green (drill edition, very rare)",
	inventory_image = "tutorial_coin.png",
    stack_max = 1500,
})
minetest.register_craftitem("tutorial:monster_remover", {
	description = "Admin tool 7: Monster Remover",
	inventory_image = "tutorial_monster_entverner.png",
	groups = {not_in_creative_inventory=1},
	stack_max = 1,
	on_use = function(itemstack, user, pointed_thing)
		local pos = user:getpos()
		for _,object in ipairs(minetest.env:get_objects_inside_radius(pos, 15)) do
			if not object:is_player() then
				if object:get_entity_name() then
					if object:get_entity_name() == "mobs:dirt_monster" or object:get_entity_name() == "mobs:stone_monster" or object:get_entity_name() == "mobs:sand_monster" or object:get_entity_name() == "mobs:silver_sand_monster" or object:get_entity_name() == "mobs:desert_sand_monster" or object:get_entity_name() == "mobs:desert_stone_monster" or object:get_entity_name() == "mobs:snow_monster" or object:get_entity_name() == "mobs:ice_monster" or object:get_entity_name() == "mobs:green_monster" or object:get_entity_name() == "mobs:dry_grass_monster" or object:get_entity_name() == "mobs:rainforest_litter_monster" then
				        object:remove()
					end
				end
			end
		end
	end,
})
minetest.register_craftitem("tutorial:dna_string", {
	description = "DNA string",
	inventory_image = "tutorial_dna_string.png",
})
minetest.register_craftitem("tutorial:armor_key", {
	description = "Armor key",
	inventory_image = "tutorial_armor_schluessel.png",
})

minetest.register_craftitem("tutorial:regnum_pixeled", {
	description = "Pixeled Regnum",
	inventory_image = "tutorial_regnum.png",
	stack_max = 1,
})
minetest.register_craftitem("tutorial:regnum_key_pixeled", {
	description = "Pixeled regnum key",
	inventory_image = "tutorial_regnum_schluessel.png",
})
minetest.register_craftitem("tutorial:regnum_key", {
	description = "Regnum key",
	inventory_image = "tutorial_regnum_schluessel.png",
})
minetest.register_craftitem("tutorial:regnum_pixel_gold", {
	description = "Regnum pixel gold",
	inventory_image = "tutorial_regnum_pixel_gold.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:regnum_pixel_red", {
	description = "Regnum pixel red",
	inventory_image = "tutorial_regnum_pixel_rot.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:regnum_pixel_blue", {
	description = "Regnum pixel blue",
	inventory_image = "tutorial_regnum_pixel_blau.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:regnum_pixel_green", {
	description = "Regnum pixel green",
	inventory_image = "tutorial_regnum_pixel_gruen.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:regnum_pixel_purple", {
	description = "Regnum pixel purple",
	inventory_image = "tutorial_regnum_pixel_lila.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:legenden_kristall_no", {
	description = "this legends crystal is missing",
	inventory_image = "tutorial_legendenkristall_no.png",
	stack_max = 1,
})
minetest.register_craftitem("tutorial:legenden_kristall_1", {
	description = "the first legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:legenden_kristall_2", {
	description = "the second legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:legenden_kristall_3", {
	description = "the third legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:legenden_kristall_4", {
	description = "the fourth legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:legenden_kristall_5", {
	description = "the fifth legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:legenden_kristall_6", {
	description = "the sixth legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:legenden_kristall_7", {
	description = "the seventh legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:legenden_kristall_8", {
	description = "the eighth legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:regnum_part", {
	description = "Regnumpart",
	inventory_image = "tutorial_regnum_part.png",
})
minetest.register_craftitem("tutorial:geschenkpapier_death", {
    description = "Death Wrapping paper",
	inventory_image = "tutorial_geschenkpapier_death.png",
})
minetest.register_craftitem("tutorial:regnum", {
	description = "Regnum",
	inventory_image = "tutorial_regnum.png",
})
minetest.register_craftitem("tutorial:waterbattleaxe", {
	description = "Waterbattleaxe",
	inventory_image = "tutorial_waterbattleaxe.png",
	stack_max = 1,
	liquids_pointable = true,
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if pointed_thing.type ~= "node" then
			return
		end
		local nodes = minetest.get_node(pointed_thing.under)
		local name = nodes.name
		if name == "default:water_source" then
		    minetest.add_node(pointed_thing.under, {name="air"})
		    inv:add_item("main", "default:water_source")
		end
	end,
})
minetest.register_craftitem("tutorial:lavabattleaxe", {
	description = "Lavabattleaxe",
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
	description = "Purple Lv.3",
	inventory_image = "tutorial_lila_erz3.png",
})
minetest.register_craftitem("tutorial:legenden_schluessel", {
	description = "Legendkey Lv.MAX",
	inventory_image = "tutorial_legenden_schluessel.png",
})
minetest.register_craftitem("tutorial:bag_schluessel4", {
	description = "Bagkey Lv.MAX",
	inventory_image = "tutorial_bag_schluessel4.png",
})
minetest.register_craftitem("tutorial:bag_schluessel3", {
	description = "Bagkey Lv.3",
	inventory_image = "tutorial_bag_schluessel3.png",
})
minetest.register_craftitem("tutorial:bag_schluessel2", {
	description = "Bagkey Lv.2",
	inventory_image = "tutorial_bag_schluessel2.png",
})
minetest.register_craftitem("tutorial:bag_schluessel1", {
	description = "Bagkey Lv.1",
	inventory_image = "tutorial_bag_schluessel1.png",
})
minetest.register_craftitem("tutorial:craft_schluessel7", {
	description = "Craftkey Lv.MAX",
	inventory_image = "tutorial_craft_schluessel7.png",
})
minetest.register_craftitem("tutorial:craft_schluessel6", {
	description = "Craftkey Lv.6",
	inventory_image = "tutorial_craft_schluessel6.png",
})
minetest.register_craftitem("tutorial:craft_schluessel5", {
	description = "Craftkey Lv.5",
	inventory_image = "tutorial_craft_schluessel5.png",
})
minetest.register_craftitem("tutorial:craft_schluessel5", {
	description = "Craftkey Lv.5",
	inventory_image = "tutorial_craft_schluessel5.png",
})
minetest.register_craftitem("tutorial:craft_schluessel4", {
	description = "Craftkey Lv.4",
	inventory_image = "tutorial_craft_schluessel4.png",
})
minetest.register_craftitem("tutorial:craft_schluessel3", {
	description = "Craftkey Lv.3",
	inventory_image = "tutorial_craft_schluessel3.png",
})
minetest.register_craftitem("tutorial:craft_schluessel2", {
	description = "Craftkey Lv.2",
	inventory_image = "tutorial_craft_schluessel2.png",
})
minetest.register_craftitem("tutorial:craft_schluessel1", {
	description = "Craftkey Lv.1",
	inventory_image = "tutorial_craft_schluessel1.png",
})
minetest.register_craftitem("tutorial:xp_blau", {
	description = "Blue xp block",
	inventory_image = "tutorial_xp_blau.png",
})
minetest.register_craftitem("tutorial:xp_rot", {
	description = "Red xp block",
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
	description = "Levelkey lv.MAX",
	inventory_image = "tutorial_level_schluessel.png",
})
minetest.register_craftitem("tutorial:titan", {
	description = "Titanium",
	inventory_image = "tutorial_titan.png",
})
minetest.register_craftitem("tutorial:coin_lila", {
	description = "Coin purple (very rare)",
	inventory_image = "tutorial_coin_lila.png",
})
minetest.register_craftitem("tutorial:coin_rot", {
	description = "Coin red (very rare)",
	inventory_image = "tutorial_coin_rot.png",
})
minetest.register_craftitem("tutorial:coin_blau", {
    description = "Coin blue (very rare)",
	inventory_image = "tutorial_coin_blau.png",
})
minetest.register_craftitem("tutorial:coin_grau", {
    description = "Coin gray (very rare)",
	inventory_image = "tutorial_coin_grau.png",
})
minetest.register_craftitem("tutorial:coin_grau1", {
    description = "Spezial gray coin lv.1",
	inventory_image = "tutorial_coin_grau1.png",
})
minetest.register_craftitem("tutorial:coin_grau2", {
    description = "Spezial gray coin lv.2",
	inventory_image = "tutorial_coin_grau2.png",
})
minetest.register_craftitem("tutorial:coin_grau3", {
    description = "Spezial gray coin lv.3",
	inventory_image = "tutorial_coin_grau3.png",
})
minetest.register_craftitem("tutorial:coin_grau4", {
    description = "Spezial gray coin lv.4",
	inventory_image = "tutorial_coin_grau4.png",
})
minetest.register_craftitem("tutorial:coin_grau5", {
    description = "Spezial gray coin lv.5",
	inventory_image = "tutorial_coin_grau5.png",
})
minetest.register_craftitem("tutorial:coin_grau6", {
    description = "Spezial gray coin lv.6",
	inventory_image = "tutorial_coin_grau6.png",
})
minetest.register_craftitem("tutorial:coin_grau7", {
    description = "Spezial gray coin lv.7",
	inventory_image = "tutorial_coin_grau7.png",
})
minetest.register_craftitem("tutorial:coin_grau8", {
    description = "Spezial gray coin lv.8",
	inventory_image = "tutorial_coin_grau8.png",
})
minetest.register_craftitem("tutorial:coin_grau9", {
    description = "Spezial gray coin lv.9",
	inventory_image = "tutorial_coin_grau9.png",
})
minetest.register_craftitem("tutorial:coin_grau10", {
    description = "Spezial gray coin lv.10",
	inventory_image = "tutorial_coin_grau10.png",
})
minetest.register_craftitem("tutorial:coin_grau11", {
    description = "Spezial gray coin lv.11",
	inventory_image = "tutorial_coin_grau11.png",
})
minetest.register_craftitem("tutorial:coin_grau12", {
    description = "Spezial gray coin lv.12",
	inventory_image = "tutorial_coin_grau12.png",
})
minetest.register_craftitem("tutorial:coin_grau13", {
    description = "Spezial gray coin lv.13",
	inventory_image = "tutorial_coin_grau13.png",
})
minetest.register_craftitem("tutorial:coin_grau14", {
    description = "Spezial gray coin lv.14",
	inventory_image = "tutorial_coin_grau14.png",
})
minetest.register_craftitem("tutorial:coin_grau15", {
    description = "Spezial gray coin lv.15",
	inventory_image = "tutorial_coin_grau15.png",
})
minetest.register_craftitem("tutorial:coin_grau16", {
    description = "Spezial gray coin lv.16",
	inventory_image = "tutorial_coin_grau16.png",
})
minetest.register_craftitem("tutorial:coin_grau17", {
    description = "Spezial gray coin lv.17",
	inventory_image = "tutorial_coin_grau17.png",
})
minetest.register_craftitem("tutorial:coin_grau18", {
    description = "Spezial gray coin lv.18",
	inventory_image = "tutorial_coin_grau18.png",
})
minetest.register_craftitem("tutorial:coin_grau19", {
    description = "Spezial gray coin lv.19",
	inventory_image = "tutorial_coin_grau19.png",
})
minetest.register_craftitem("tutorial:coin_grau20", {
    description = "Spezial gray coin lv.20",
	inventory_image = "tutorial_coin_grau20.png",
})
minetest.register_craftitem("tutorial:coin", {
    description = "Coin green (laser edition, very rare)",
	inventory_image = "tutorial_coin.png",
    stack_max = 1500,
})
minetest.register_craftitem("tutorial:admin", {
	description = "Admin",
	inventory_image = "tutorial_admin_ore.png",
})
minetest.register_craftitem("tutorial:geschenkpapier", {
    description = "Wrapping paper",
	inventory_image = "tutorial_geschenkpapier.png",
})
minetest.register_craftitem("tutorial:geld", {
	inventory_image = "tutorial_geld.png",
})
minetest.register_craftitem("tutorial:XP", {
	inventory_image = "tutorial_XP.png",
})
minetest.register_craftitem("tutorial:stone_coal_lump", {
	description = "Stone coal lump",
	inventory_image = "tutorial_stone_coal_lump.png",
})
minetest.register_craftitem("tutorial:uranium1", {
	description = "Uranium lv.1",
	inventory_image = "tutorial_uranium1.png",
})
minetest.register_craftitem("tutorial:uranium2", {
	description = "Uranium lv.2",
	inventory_image = "tutorial_uranium2.png",
})
minetest.register_craftitem("tutorial:uranium3", {
	description = "Uranium lv.3",
	inventory_image = "tutorial_uranium3.png",
})
minetest.register_craftitem("tutorial:uranium4", {
	description = "Uranium lv.4",
	inventory_image = "tutorial_uranium4.png",
})
minetest.register_craftitem("tutorial:uranium5", {
	description = "Uranium lv.5",
	inventory_image = "tutorial_uranium5.png",
})
minetest.register_craftitem("tutorial:uranium6", {
	description = "Uranium lv.6",
	inventory_image = "tutorial_uranium6.png",
})
minetest.register_craftitem("tutorial:uranium7", {
	description = "Uranium lv.7",
	inventory_image = "tutorial_uranium7.png",
})
minetest.register_craftitem("tutorial:uranium8", {
	description = "Uranium lv.8",
	inventory_image = "tutorial_uranium8.png",
})
minetest.register_craftitem("tutorial:uranium9", {
	description = "Uranium lv.9",
	inventory_image = "tutorial_uranium9.png",
})
minetest.register_craftitem( "tutorial:blackblock1", {
	description = "Black item lv.1",
	inventory_image = "tutorial_blackblock1.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:blackblock2", {
	description = "Black item lv.2",
	inventory_image = "tutorial_blackblock2.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:blackblock3", {
	description = "Black item lv.3",
	inventory_image = "tutorial_blackblock3.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:blackblock4", {
	description = "Black item lv.4",
	inventory_image = "tutorial_blackblock4.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:blackblock5", {
	description = "Black item lv.5",
	inventory_image = "tutorial_blackblock5.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:blackblock6", {
	description = "Black item lv.6",
	inventory_image = "tutorial_blackblock6.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:whiteblock1", {
	description = "White item lv.1",
	inventory_image = "tutorial_whiteblock1.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:whiteblock2", {
	description = "White item lv.2",
	inventory_image = "tutorial_whiteblock2.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:whiteblock3", {
	description = "White item lv.3",
	inventory_image = "tutorial_whiteblock3.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:whiteblock4", {
	description = "White item lv.4",
	inventory_image = "tutorial_whiteblock4.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:whiteblock5", {
	description = "White item lv.5",
	inventory_image = "tutorial_whiteblock5.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:whiteblock6", {
	description = "White item lv.6",
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
	description = "Super item lv.1",
	inventory_image = "tutorial_superblock1.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock2", {
	description = "Super item lv.2",
	inventory_image = "tutorial_superblock2.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock3", {
	description = "Super item lv.3",
	inventory_image = "tutorial_superblock3.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock4", {
	description = "Super item lv.4",
	inventory_image = "tutorial_superblock4.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock5", {
	description = "Super item lv.5",
	inventory_image = "tutorial_superblock5.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock6", {
	description = "Super item lv.6",
	inventory_image = "tutorial_superblock6.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock7", {
	description = "Super item lv.7",
	inventory_image = "tutorial_superblock7.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock8", {
	description = "Super item lv.8",
	inventory_image = "tutorial_superblock8.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:superblock9", {
	description = "Super item lv.9",
	inventory_image = "tutorial_superblock9.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem("tutorial:blades",{
	description = "Blades",
	inventory_image = "blades_invt.png",
	wield_image = "blades_inv.png",
})
minetest.register_craftitem("tutorial:cabin",{
	description = "Cabin for heli",
	inventory_image = "cabin_invt.png",
	wield_image = "cabin_inv.png",
})
minetest.register_craftitem("tutorial:heli", {
	description = "Helicopter",
	inventory_image = "heli_invt.png",
	wield_image = "heli_inv.png",
	wield_scale = {x=1, y=1, z=1},
	liquids_pointable = false,
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" then
			return
		end
		pointed_thing.under.y = pointed_thing.under.y+1
		minetest.env:add_entity(pointed_thing.under, "tutorial:heli")
		itemstack:take_item()
		return itemstack
	end,
})