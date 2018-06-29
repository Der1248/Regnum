--v.1.0.0
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
--v.0.23.3
--v.0.23.2
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
--v.0.23.1
--v.0.23.0
--v.0.22.1
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
--v.0.22.0
--v.0.21.0
--v.0.20.0
--v.0.19.1
minetest.register_craftitem("tutorial:level_schluessel", {
	description = "Levelkey lv.MAX",
	inventory_image = "tutorial_level_schluessel.png",
})
minetest.register_craftitem("tutorial:titan", {
	description = "Titanium",
	inventory_image = "tutorial_titan.png",
})
--v.0.18.0
--v.0.17.0
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
})
minetest.register_craftitem("tutorial:admin", {
	description = "Admin",
	inventory_image = "tutorial_admin_ore.png",
})
minetest.register_craftitem("tutorial:geschenkpapier", {
    description = "Wrapping paper",
	inventory_image = "tutorial_geschenkpapier.png",
})
--v.0.16.0
--v.0.15.0
--v.0.14.0
--v.0.13.0
--v.0.12.0
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
--v.0.11.0
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
--v.0.10.1
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
--v.0.10.0
minetest.register_craftitem("tutorial:white", {
	description = "White",
	inventory_image = "tutorial_white.png",
})
minetest.register_craftitem("tutorial:black", {
	description = "Black",
	inventory_image = "tutorial_black.png",
})
--v.0.9.0
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
--v.0.8.0
--v.0.7.2
--v.0.7.1
--v.0.7.0
--v.0.6.6
--v.0.6.5
--v.0.6.4
--v.0.6.3
--v.0.6.2
--v.0.6.1
--v.0.6.0
minetest.register_craftitem("tutorial:food_1", {
	description = "Chicken (1 live)",
    groups = {},
    inventory_image = "tutorial_food_1.png",
	on_use = minetest.item_eat(2),
})
minetest.register_craftitem("tutorial:food_2", {
	description = "Spider (2 live)",
    groups = {},
    inventory_image = "tutorial_food_2.png",
	on_use = minetest.item_eat(4),
})
minetest.register_craftitem("tutorial:food_3", {
	description = "Pizza (3 live)",
    groups = {},
    inventory_image = "tutorial_food_3.png",
	on_use = minetest.item_eat(6),
})
minetest.register_craftitem("tutorial:food_4", {
	description = "Little cake (4 live)",
    groups = {},
    inventory_image = "tutorial_food_4.png",
	on_use = minetest.item_eat(8),
})
minetest.register_craftitem("tutorial:food_5", {
	description = "Tomato (5 live)",
    groups = {},
    inventory_image = "tutorial_food_5.png",
	on_use = minetest.item_eat(10),
})
minetest.register_craftitem("tutorial:food_6", {
	description = "Hamburger (6 live)",
    groups = {},
    inventory_image = "tutorial_food_6.png",
	on_use = minetest.item_eat(12),
})
minetest.register_craftitem("tutorial:food_7", {
	description = "Carrot (7 live)",
    groups = {},
    inventory_image = "tutorial_food_7.png",
	on_use = minetest.item_eat(14),
})
--v.0.5.2
--v.0.5.1
--v.0.5.0
--v.0.4.0
--v.0.3.0
--v.0.2.0
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
		--minetest.env:add_entity(pointed_thing.under, "helicopter:heliModel")
		--minetest.env:add_entity(pointed_thing.under, "helicopter:motor")
		itemstack:take_item()
		return itemstack
	end,
})
--v.0.1.0
minetest.register_craftitem( "tutorial:rot", {
	description = "Red lump",
	inventory_image = "tutorial_rot.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:blau", {
	description = "Blue lump",
	inventory_image = "tutorial_blau.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:gelb", {
	description = "Yellow lump",
	inventory_image = "tutorial_gelb.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:gruen", {
	description = "Green lump",
	inventory_image = "tutorial_gruen.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:rosa", {
	description = "Pink lump",
	inventory_image = "tutorial_rosa.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:turkis", {
	description = "Turquoise lump",
	inventory_image = "tutorial_turkis.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:rot_gebrant", {
	description = "Cooked red lump",
	inventory_image = "tutorial_rot_gebrant.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:blau_gebrant", {
	description = "Cooked blue lump",
	inventory_image = "tutorial_blau_gebrant.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:gelb_gebrant", {
	description = "Cooked yellow lump",
	inventory_image = "tutorial_gelb_gebrant.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:gruen_gebrant", {
	description = "Cooked green lump",
	inventory_image = "tutorial_gruen_gebrant.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:rosa_gebrant", {
	description = "Cooked pink lump",
	inventory_image = "tutorial_rosa_gebrant.png",
	on_place_on_ground = minetest.craftitem_place_item,
})
minetest.register_craftitem( "tutorial:turkis_gebrant", {
	description = "Cooked turquoise lump",
	inventory_image = "tutorial_turkis_gebrant.png",
	on_place_on_ground = minetest.craftitem_place_item,
})