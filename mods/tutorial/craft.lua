minetest.register_craft({
    output = 'tutorial:dragon_crystal',
    recipe = {
        {'gems:sapphire_gem', 'gems:amethyst_gem', 'gems:ruby_gem', 'gems:amethyst_gem', 'gems:sapphire_gem'},
		{'gems:amethyst_gem', 'gems:pearl_gem', 'gems:shadow_gem', 'gems:pearl_gem', 'gems:amethyst_gem'},
		{'gems:ruby_gem', 'gems:shadow_gem', 'gems:emerald_gem', 'gems:shadow_gem', 'gems:ruby_gem'},
		{'gems:amethyst_gem', 'gems:pearl_gem', 'gems:shadow_gem', 'gems:pearl_gem', 'gems:amethyst_gem'},
		{'gems:sapphire_gem', 'gems:amethyst_gem', 'gems:ruby_gem', 'gems:amethyst_gem', 'gems:sapphire_gem'},
    }
})
minetest.register_craft({
    output = 'tutorial:lilabattleaxe',
    recipe = {
        {'tutorial:lila_erz3','tutorial:lila_erz3','tutorial:lila_erz3'},
		{'tutorial:lila_erz3','default:stick','tutorial:lila_erz3'},
	    {'','default:stick',''},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_dna',
    recipe = {
        {'','tutorial:dna_string','tutorial:dna_string',''},
		{'tutorial:dna_string','tutorial:geschenk_gold','tutorial:geschenk_gold','tutorial:dna_string'},
		{'tutorial:dna_string','tutorial:geschenk_gold','tutorial:geschenk_gold','tutorial:dna_string'},
		{'','tutorial:dna_string','tutorial:dna_string',''},
    }
})
minetest.register_craft({
    output = 'tutorial:armor_key',
    recipe = {
        {'tutorial:blau_erz'},
		{'default:stick'},
		{'tutorial:rot_erz'},
    }
})
minetest.register_craft({
    output = 'tutorial:armor_key',
    recipe = {
        {'tutorial:rot_erz'},
		{'default:stick'},
		{'tutorial:blau_erz'},
    }
})
minetest.register_craft({
    output = 'default:sign_wall',
    recipe = {
        {'default:sign_wall_wood','default:sign_wall_wood'},
    }
})
minetest.register_craft({
    output = 'tutorial:regnum_key_pixeled',
    recipe = {
        {'tutorial:regnum_pixeled'},
		{'default:stick'},
		{'default:stick'},
    }
})
minetest.register_craft({
    output = 'tutorial:regnum_key',
    recipe = {
        {'tutorial:regnum'},
		{'default:stick'},
		{'default:stick'},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_regnum',
    recipe = {
		{'tutorial:geschenk_platin','tutorial:geschenk_death_platin','tutorial:geschenk_platin'},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_legend',
    recipe = {
        {'','tutorial:geschenk_platin','tutorial:geschenk_platin',''},
		{'tutorial:geschenk_platin','tutorial:geschenk_death_platin','tutorial:geschenk_death_platin','tutorial:geschenk_platin'},
		{'tutorial:geschenk_platin','tutorial:geschenk_death_platin','tutorial:geschenk_death_platin','tutorial:geschenk_platin'},
		{'','tutorial:geschenk_platin','tutorial:geschenk_platin',''},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_death',
    recipe = {
        {'tutorial:geschenkpapier_death', 'tutorial:geschenkpapier_death'},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_death_platin',
    recipe = {
        {'tutorial:geschenk_death_gold', 'tutorial:geschenk_death_gold'},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_death_gold',
    recipe = {
        {'tutorial:geschenk_death_silber', 'tutorial:geschenk_death_silber'},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_death_silber',
    recipe = {
        {'tutorial:geschenk_death', 'tutorial:geschenk_death'},
    }
})
minetest.register_craft({
    output = 'tutorial:regnum',
    recipe = {
        {'tutorial:regnum_part', 'tutorial:regnum_part', 'tutorial:regnum_part'},
        {'tutorial:regnum_part', 'tutorial:regnum_part', 'tutorial:regnum_part'},
        {'tutorial:regnum_part', 'tutorial:regnum_part', 'tutorial:regnum_part'},
    }
})
minetest.register_craft({
    output = 'tutorial:regnumbattleaxe1',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'tutorial:superlegendenbattleaxe1', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:regnumbattleaxe2',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'tutorial:superlegendenbattleaxe2', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:regnumbattleaxe3',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'tutorial:superlegendenbattleaxe3', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:superlegendenbattleaxe1',
    recipe = {
        {'tutorial:lilabattleaxe2', 'tutorial:legendenbattleaxe6'},
    }
})
minetest.register_craft({
    output = 'tutorial:lilabattleaxe2',
    recipe = {
        {'tutorial:lila_erz3', 'tutorial:lila_erz3', 'tutorial:lila_erz3'},
		{'tutorial:waterbattleaxe', 'tutorial:lilabattleaxe', 'tutorial:lavabattleaxe'},
		{'tutorial:lila_erz3', 'tutorial:lila_erz3', 'tutorial:lila_erz3'},
    }
})
minetest.register_craft({
    output = 'tutorial:lavabattleaxe',
    recipe = {
        {'tutorial:rot_erz', 'tutorial:rot_erz', 'tutorial:rot_erz'},
		{'tutorial:rot_erz', 'default:stick', 'tutorial:rot_erz'},
		{'', 'default:stick', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:waterbattleaxe',
    recipe = {
        {'tutorial:blau_erz', 'tutorial:blau_erz', 'tutorial:blau_erz'},
		{'tutorial:blau_erz', 'default:stick', 'tutorial:blau_erz'},
		{'', 'default:stick', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:lila_erz2',
    recipe = {
        {'tutorial:lila_erz1', 'tutorial:lila_erz1'},
		{'tutorial:lila_erz1', 'tutorial:lila_erz1'},
    }
})
minetest.register_craft({
    output = 'tutorial:lila_erz3',
    recipe = {
        {'tutorial:lila_erz2', 'tutorial:lila_erz2'},
    }
})
minetest.register_craft({
    output = 'tutorial:lila_erz1',
    recipe = {
            {'tutorial:blau_erz', 'tutorial:rot_erz'},
    }
})
minetest.register_craft({
    output = 'tutorial:lila_erz1',
    recipe = {
        {'tutorial:rot_erz', 'tutorial:blau_erz'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendenbattleaxe1',
    recipe = {
        {'tutorial:titanbattleaxe10', 'default:grass_1', 'default:grass_1', 'tutorial:bottle5'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'tutorial:bottle5', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendenbattleaxe2',
    recipe = {
        {'tutorial:legendenbattleaxe1', 'default:grass_1', 'default:grass_1', 'tutorial:bottle7'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'tutorial:bottle7', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendenbattleaxe3',
    recipe = {
        {'tutorial:legendenbattleaxe2', 'default:grass_1', 'default:grass_1', 'tutorial:bottle9'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'tutorial:bottle9', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendenbattleaxe4',
    recipe = {
        {'tutorial:legendenbattleaxe3', 'default:grass_1', 'default:grass_1', 'tutorial:bottle11'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'tutorial:bottle11', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendenbattleaxe5',
    recipe = {
        {'tutorial:legendenbattleaxe4', 'default:grass_1', 'default:grass_1', 'tutorial:bottleS1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'tutorial:bottleS1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendenbattleaxe6',
    recipe = {
        {'tutorial:legendenbattleaxe5', 'default:grass_1', 'default:grass_1', 'tutorial:bottleS3'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'tutorial:bottleS3', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
    }
})
minetest.register_craft({
    output = 'tutorial:craft_schluessel1',
    recipe = {
        {'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
		{'tutorial:coin_lila', 'default:stick', 'tutorial:coin_lila'},
		{'tutorial:coin_lila', 'default:stick', 'tutorial:coin_lila'},
    }
})
minetest.register_craft({
    output = 'tutorial:craft_schluessel2',
    recipe = {
        {'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
		{'tutorial:coin_lila', 'tutorial:craft_schluessel1', 'tutorial:coin_lila'},
		{'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
    }
})
minetest.register_craft({
    output = 'tutorial:craft_schluessel3',
    recipe = {
        {'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
		{'tutorial:coin_lila', 'tutorial:craft_schluessel2', 'tutorial:coin_lila'},
		{'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
    }
})
minetest.register_craft({
    output = 'tutorial:craft_schluessel4',
    recipe = {
        {'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
		{'tutorial:coin_lila', 'tutorial:craft_schluessel3', 'tutorial:coin_lila'},
		{'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
    }
})
minetest.register_craft({
	output = 'tutorial:craft_schluessel5',
	recipe = {
		{'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
		{'tutorial:coin_lila', 'tutorial:craft_schluessel4', 'tutorial:coin_lila'},
		{'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
	}
})
minetest.register_craft({
    output = 'tutorial:craft_schluessel6',
    recipe = {
        {'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
		{'tutorial:coin_lila', 'tutorial:craft_schluessel5', 'tutorial:coin_lila'},
		{'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
    }
})
minetest.register_craft({
    output = 'tutorial:craft_schluessel7',
    recipe = {
        {'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
		{'tutorial:coin_lila', 'tutorial:craft_schluessel6', 'tutorial:coin_lila'},
		{'tutorial:coin_lila', 'tutorial:coin_lila', 'tutorial:coin_lila'},
    }
})
minetest.register_craft({
    output = 'tutorial:bag_schluessel4',
    recipe = {
        {'tutorial:coin_grau20'},
		{'tutorial:bag_schluessel3'},
    }
})
minetest.register_craft({
    output = 'tutorial:bag_schluessel3',
    recipe = {
        {'tutorial:coin_grau20'},
		{'tutorial:bag_schluessel2'},
    }
})
minetest.register_craft({
    output = 'tutorial:bag_schluessel2',
    recipe = {
        {'tutorial:coin_grau20'},
		{'tutorial:bag_schluessel1'},
    }
})
minetest.register_craft({
    output = 'tutorial:bag_schluessel1',
    recipe = {
        {'tutorial:coin_grau20'},
		{'default:stick'},
		{'default:stick'},
    }
})
minetest.register_craft({
    output = 'tutorial:xp_block',
    recipe = {
        {'tutorial:xp_blau', 'tutorial:xp_rot'},
    }
})
minetest.register_craft({
    output = 'tutorial:titanentverner',
    recipe = {
        {'default:gold_ingot', 'tutorial:uranium7', 'default:gold_ingot'},
        {'', 'moreores:silver_ingot', ''},
        {'', 'moreores:silver_ingot', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:titanbattleaxe10',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'tutorial:titanbattleaxe9', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:titanbattleaxe9',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'tutorial:titanbattleaxe8', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:titanbattleaxe8',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'tutorial:titanbattleaxe7', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:titanbattleaxe7',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'tutorial:titanbattleaxe6', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:titanbattleaxe6',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'tutorial:titanbattleaxe5', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:titanbattleaxe5',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'tutorial:titanbattleaxe4', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:titanbattleaxe4',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'tutorial:titanbattleaxe3', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:titanbattleaxe3',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'tutorial:titanbattleaxe2', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:titanbattleaxe2',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'tutorial:titanbattleaxe1', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:titanbattleaxe1',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'tutorial:arena_battleaxe4', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:rainbow_torch 4',
    recipe = {
        {'nyancat:nyancat_rainbow'},
        {'tutorial:titan'},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_wool 16',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'tutorial:geschenk', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_wool1',
    recipe = {
        {'tutorial:geschenk_wool', 'tutorial:geschenk_wool'},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_wool2',
    recipe = {
        {'tutorial:geschenk_wool1', 'tutorial:geschenk_wool1'},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_gold',
    recipe = {
        {'tutorial:geschenk_silber', 'tutorial:geschenk_silber'},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_platin',
    recipe = {
        {'tutorial:geschenk_gold', 'tutorial:geschenk_gold'},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_silber',
    recipe = {
        {'tutorial:geschenk', 'tutorial:geschenk'},
    }
})
minetest.register_craft({
    output = 'tutorial:arena_battleaxe4',
    recipe = {
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'tutorial:arena_battleaxe3', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
    }
})
minetest.register_craft({
    output = 'tutorial:arena_battleaxe3',
    recipe = {
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'tutorial:arena_battleaxe2', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
    }
})
minetest.register_craft({
    output = 'tutorial:arena_battleaxe2',
    recipe = {
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'tutorial:arena_battleaxe1', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
    }
})
minetest.register_craft({
    output = 'tutorial:arena_battleaxe1',
    recipe = {
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'tutorial:ultrabattleaxe', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_lila',
    recipe = {
        {'tutorial:coin_rot', 'tutorial:coin_blau'},
    }
})
minetest.register_craft({
	output = 'tutorial:coin_grau20',
	recipe = {
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau19', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
	}
})
minetest.register_craft({
    output = 'tutorial:coin_grau19',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau18', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau18',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau17', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau17',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau16', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau16',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau15', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau15',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau14', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau14',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau13', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau13',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau12', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau12',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau11', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau11',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau10', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau10',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau9', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau9',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau8', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau8',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau7', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
	output = 'tutorial:coin_grau7',
	recipe = {
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau6', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
	}
})
minetest.register_craft({
    output = 'tutorial:coin_grau6',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau5', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau5',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau4', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau4',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau3', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau3',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau2', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau2',
    recipe = {
        {'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau1', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:coin_grau1',
    recipe = {
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:obsidian6', 'tutorial:coin_grau'},
		{'tutorial:coin_grau', 'tutorial:coin_grau', 'tutorial:coin_grau'},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk',
    recipe = {
        {'tutorial:geschenkpapier', 'tutorial:geschenkpapier'},
    }
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe25',
    cooktime = 10000,
	output = 'tutorial:ultrabattleaxe',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe24',
    cooktime = 5000,
	output = 'tutorial:ultrabattleaxe25',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe23',
    cooktime = 4800,
	output = 'tutorial:ultrabattleaxe24',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe22',
    cooktime = 4600,
	output = 'tutorial:ultrabattleaxe23',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe21',
    cooktime = 4400,
	output = 'tutorial:ultrabattleaxe22',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe20',
    cooktime = 4200,
	output = 'tutorial:ultrabattleaxe21',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe19',
    cooktime = 4000,
	output = 'tutorial:ultrabattleaxe20',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe18',
    cooktime = 3800,
	output = 'tutorial:ultrabattleaxe19',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe17',
    cooktime = 3600,
	output = 'tutorial:ultrabattleaxe18',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe16',
    cooktime = 3400,
	output = 'tutorial:ultrabattleaxe17',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe15',
    cooktime = 3200,
	output = 'tutorial:ultrabattleaxe16',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe14',
    cooktime = 3000,
	output = 'tutorial:ultrabattleaxe15',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe13',
    cooktime = 2800,
	output = 'tutorial:ultrabattleaxe14',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe12',
    cooktime = 2600,
	output = 'tutorial:ultrabattleaxe13',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe11',
    cooktime = 2400,
	output = 'tutorial:ultrabattleaxe12',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe10',
    cooktime = 2200,
	output = 'tutorial:ultrabattleaxe11',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe9',
    cooktime = 2000,
	output = 'tutorial:ultrabattleaxe10',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe8',
    cooktime = 1800,
	output = 'tutorial:ultrabattleaxe9',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe7',
    cooktime = 1600,
	output = 'tutorial:ultrabattleaxe8',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe6',
    cooktime = 1400,
	output = 'tutorial:ultrabattleaxe7',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe5',
    cooktime = 1200,
	output = 'tutorial:ultrabattleaxe6',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe4',
    cooktime = 1000,
	output = 'tutorial:ultrabattleaxe5',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe3',
    cooktime = 800,
	output = 'tutorial:ultrabattleaxe4',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe2',
    cooktime = 600,
	output = 'tutorial:ultrabattleaxe3',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:ultrabattleaxe1',
    cooktime = 400,
	output = 'tutorial:ultrabattleaxe2',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:kristallbattleaxe5',
    cooktime = 200,
	output = 'tutorial:ultrabattleaxe1',
})
minetest.register_craft({
    output = 'tutorial:kristallbattleaxe5',
    recipe = {
        {'tutorial:admin', 'tutorial:thunder', 'tutorial:admin'},
        {'tutorial:admin', 'tutorial:kristallbattleaxe4', 'tutorial:admin'},
        {'tutorial:admin', 'tutorial:thunder', 'tutorial:admin'},
    }
})
minetest.register_craft({
    output = 'tutorial:kristallbattleaxe4',
    recipe = {
        {'gems:emerald_block', 'tutorial:thunder', 'gems:emerald_block'},
        {'gems:emerald_block', 'tutorial:kristallbattleaxe3', 'gems:emerald_block'},
        {'gems:emerald_block', 'tutorial:thunder', 'gems:emerald_block'},
    }
})
minetest.register_craft({
    output = 'tutorial:kristallbattleaxe3',
    recipe = {
        {'gems:pearl_block', 'tutorial:thunder', 'gems:shadow_block'},
        {'gems:pearl_block', 'tutorial:kristallbattleaxe2', 'gems:shadow_block'},
        {'gems:pearl_block', 'tutorial:thunder', 'gems:shadow_block'},
    }
})
minetest.register_craft({
    output = 'tutorial:kristallbattleaxe2',
    recipe = {
        {'gems:amethyst_block', 'tutorial:thunder', 'gems:amethyst_block'},
        {'gems:amethyst_block', 'tutorial:kristallbattleaxe1', 'gems:amethyst_block'},
        {'gems:amethyst_block', 'tutorial:thunder', 'gems:amethyst_block'},
    }
})
minetest.register_craft({
    output = 'tutorial:kristallbattleaxe1',
    recipe = {
        {'gems:ruby_block', 'tutorial:thunder', 'gems:sapphire_block'},
        {'gems:ruby_block', 'tutorial:superenergybattleaxe7', 'gems:sapphire_block'},
        {'gems:ruby_block', 'tutorial:thunder', 'gems:sapphire_block'},
    }
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energybattleaxe12',
    cooktime = 1000,
	output = 'tutorial:superenergybattleaxe1',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:superenergybattleaxe1',
    cooktime = 1200,
	output = 'tutorial:superenergybattleaxe2',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:superenergybattleaxe2',
    cooktime = 1400,
	output = 'tutorial:superenergybattleaxe3',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:superenergybattleaxe3',
    cooktime = 1600,
	output = 'tutorial:superenergybattleaxe4',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:superenergybattleaxe4',
    cooktime = 1800,
	output = 'tutorial:superenergybattleaxe5',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:superenergybattleaxe5',
    cooktime = 2000,
	output = 'tutorial:superenergybattleaxe6',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:superenergybattleaxe6',
    cooktime = 2500,
	output = 'tutorial:superenergybattleaxe7',
})
minetest.register_craft({
    output = 'gems:amethyst_gem',
    recipe = {
        {'gems:sapphire_gem', 'gems:ruby_gem'},
    }
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:uraniumbattleaxe2',
    cooktime = 100,
	output = 'tutorial:energybattleaxe1',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energybattleaxe1',
    cooktime = 100,
	output = 'tutorial:energybattleaxe2',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energybattleaxe2',
    cooktime = 200,
	output = 'tutorial:energybattleaxe3',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energybattleaxe3',
    cooktime = 300,
	output = 'tutorial:energybattleaxe4',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energybattleaxe4',
    cooktime = 400,
	output = 'tutorial:energybattleaxe5',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energybattleaxe5',
    cooktime = 500,
	output = 'tutorial:energybattleaxe6',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energybattleaxe6',
    cooktime = 600,
	output = 'tutorial:energybattleaxe7',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energybattleaxe7',
    cooktime = 700,
	output = 'tutorial:energybattleaxe8',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energybattleaxe8',
    cooktime = 800,
	output = 'tutorial:energybattleaxe9',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energybattleaxe9',
    cooktime = 900,
	output = 'tutorial:energybattleaxe10',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energybattleaxe10',
    cooktime = 1000,
	output = 'tutorial:energybattleaxe11',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:energybattleaxe11',
    cooktime = 1500,
	output = 'tutorial:energybattleaxe12',
})
minetest.register_craft({
    output = 'tutorial:uraniumbattleaxe2',
    recipe = {
        {'tutorial:uranium9', 'tutorial:uranium9', 'tutorial:uranium9'},
        {'tutorial:uranium9', 'tutorial:uraniumbattleaxe1', 'tutorial:uranium9'},
        {'tutorial:uranium9', 'tutorial:uranium9', 'tutorial:uranium9'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe',
    recipe = {
        {'group:wood', 'group:wood', 'group:wood'},
        {'group:wood', 'default:stick', 'group:wood'},
        {'', 'default:stick', ''},
    }
})
minetest.register_tool('tutorial:cloudentverner', {
	description = 'Clouds remover',
	inventory_image = 'tutorial_cloudentvernerg.png',
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky={times={[0]=2.0}, uses=50, maxlevel=0}
		}
	},
})
minetest.register_craft({
    output = 'tutorial:cloudentverner',
    recipe = {
        {'wool:white', 'wool:white', 'wool:white'},
        {'wool:white', 'wool:white', 'wool:white'},
        {'', 'wool:white', ''},
    }
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'default:coal_lump',
    cooktime = 5,
	output = 'default:diamond',
})
minetest.register_craft({
    output = 'default:cactus 4',
    recipe = {
        {'default:dirt', 'default:dirt'},
    }
})
minetest.register_craft({
    output = 'default:cactus',
    recipe = {
        {'default:leaves', 'default:leaves'},
    }
})
minetest.register_craft({
    output = 'default:obsidian 1',
    recipe = {
        {'default:cobble', 'default:cobble', 'default:cobble'},
        {'default:cobble', 'default:cobble', 'default:cobble'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock1 11',
    recipe = {
		{'tutorial:geld'},
    }
})
minetest.register_craft({
    output = 'tutorial:geld 250',
    recipe = {
		{'default:diamond'},
    }
})
minetest.register_craft({
    output = 'tutorial:geld 500',
    recipe = {
		{'default:mese_crystal', 'default:mese_crystal'},
    }
})
minetest.register_craft({
    output = 'tutorial:geld 75',
    recipe = {
		{'default:gold_ingot'},
    }
})
minetest.register_craft({
    output = 'tutorial:geld 50',
    recipe = {
        {'default:bronze_ingot'},
    }
})
minetest.register_craft({
    output = 'tutorial:geld 30',
    recipe = {
        {'default:copper_ingot'},
    }
})
minetest.register_craft({
    output = 'tutorial:geld 25',
    recipe = {
        {'default:steel_ingot'},
    }
})
minetest.register_craft({
    output = 'tutorial:geld 7',
    recipe = {
        {'default:clay_brick'},
    }
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'default:stick',
    cooktime = 1,
	output = 'default:coal_lump',
})
minetest.register_craft({
	type = 'fuel',
	recipe = 'tutorial:stone_coal_lump',
	burntime = 100,
})
minetest.register_craft({
	type = 'fuel',
	recipe = 'tutorial:uranium9',
	burntime = 1000000,
})
minetest.register_craft({
    output = 'tutorial:stone_coal_lump 10',
    recipe = {
        {'default:cobble', 'default:cobble', 'default:cobble'},
        {'default:cobble', 'default:cobble', 'default:cobble'},
        {'default:cobble', 'default:cobble', 'default:cobble'},
    }
})
minetest.register_craft({
    output = 'tutorial:uraniumbattleaxe1',
    recipe = {
        {'tutorial:uranium8', 'tutorial:uranium8', 'tutorial:uranium8'},
        {'tutorial:uranium8', 'tutorial:superbattleaxe4', 'tutorial:uranium8'},
        {'tutorial:uranium8', 'tutorial:uranium8', 'tutorial:uranium8'},
    }
})
minetest.register_craft({
    output = 'tutorial:uranium2',
    recipe = {
        {'tutorial:uranium1', 'tutorial:uranium1'},
    }
})
minetest.register_craft({
    output = 'tutorial:uranium3',
    recipe = {
        {'tutorial:uranium2', 'tutorial:uranium2'},
    }
})
minetest.register_craft({
    output = 'tutorial:uranium4',
    recipe = {
        {'tutorial:uranium3', 'tutorial:uranium3'},
    }
})
minetest.register_craft({
    output = 'tutorial:uranium5',
    recipe = {
        {'tutorial:uranium4', 'tutorial:uranium4'},
    }
})
minetest.register_craft({
    output = 'tutorial:uranium6',
    recipe = {
        {'tutorial:uranium5', 'tutorial:uranium5'},
    }
})
minetest.register_craft({
    output = 'tutorial:uranium7',
    recipe = {
        {'tutorial:uranium6', 'tutorial:uranium6'},
    }
})
minetest.register_craft({
    output = 'tutorial:uranium8',
    recipe = {
        {'tutorial:uranium7', 'tutorial:uranium7'},
    }
})
minetest.register_craft({
    output = 'tutorial:uranium9',
    recipe = {
        {'tutorial:uranium8', 'tutorial:uranium8'},
    }
})
minetest.register_craft({
    output = 'tutorial:superbattleaxe4',
    recipe = {
        {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
        {'tutorial:whiteblock6', 'tutorial:superbattleaxe3', 'tutorial:blackblock6'},
        {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:superbattleaxe3',
    recipe = {
        {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
        {'tutorial:whiteblock6', 'tutorial:superbattleaxe2', 'tutorial:blackblock6'},
        {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:superbattleaxe2',
    recipe = {
        {'tutorial:whiteblock5', 'tutorial:thunder', 'tutorial:blackblock5'},
        {'tutorial:whiteblock5', 'tutorial:superbattleaxe1', 'tutorial:blackblock5'},
        {'tutorial:whiteblock5', 'tutorial:thunder', 'tutorial:blackblock5'},
    }
})
minetest.register_craft({
    output = 'tutorial:superbattleaxe1',
    recipe = {
        {'tutorial:zauberstab9', 'tutorial:cloudbattleaxe_mega25', 'tutorial:swored_zauber9'},
    }
})
minetest.register_craft({
    output = 'tutorial:whiteblock6',
    recipe = {
        {'tutorial:whiteblock5', 'tutorial:whiteblock5'},
    }
})
minetest.register_craft({
    output = 'tutorial:whiteblock5',
    recipe = {
        {'tutorial:whiteblock4', 'tutorial:whiteblock4'},
    }
})
minetest.register_craft({
    output = 'tutorial:whiteblock4',
    recipe = {
        {'tutorial:whiteblock3', 'tutorial:whiteblock3'},
    }
})
minetest.register_craft({
    output = 'tutorial:whiteblock3',
    recipe = {
        {'tutorial:whiteblock2', 'tutorial:whiteblock2'},
    }
})
minetest.register_craft({
    output = 'tutorial:whiteblock2',
    recipe = {
        {'tutorial:whiteblock1', 'tutorial:whiteblock1'},
    }
})
minetest.register_craft({
    output = 'tutorial:whiteblock1',
    recipe = {
        {'tutorial:white', 'tutorial:white'},
    }
})
minetest.register_craft({
    output = 'tutorial:blackblock6',
    recipe = {
        {'tutorial:blackblock5', 'tutorial:blackblock5'},
    }
})
minetest.register_craft({
    output = 'tutorial:blackblock5',
    recipe = {
        {'tutorial:blackblock4', 'tutorial:blackblock4'},
    }
})
minetest.register_craft({
    output = 'tutorial:blackblock4',
    recipe = {
        {'tutorial:blackblock3', 'tutorial:blackblock3'},
    }
})
minetest.register_craft({
    output = 'tutorial:blackblock3',
    recipe = {
        {'tutorial:blackblock2', 'tutorial:blackblock2'},
    }
})
minetest.register_craft({
    output = 'tutorial:blackblock2',
    recipe = {
        {'tutorial:blackblock1', 'tutorial:blackblock1'},
    }
})
minetest.register_craft({
    output = 'tutorial:blackblock1',
    recipe = {
        {'tutorial:black', 'tutorial:black'},
    }
})
minetest.register_craft({
    output = 'tutorial:zauberstab',
    recipe = {
        {'default:dirt'},
        {'default:dirt'},
        {'default:dirt'},
    }
})
minetest.register_craft({
    output = 'tutorial:zauberstab9',
    recipe = {
        {'tutorial:diamondblock2', 'tutorial:dunklematerie6', 'tutorial:diamondblock2'},
        {'tutorial:diamondblock2', 'tutorial:dunklematerie6', 'tutorial:diamondblock2'},
        {'tutorial:diamondblock2', 'tutorial:zauberstab8', 'tutorial:diamondblock2'},
    }
})
minetest.register_craft({
    output = 'tutorial:zauberstab8',
    recipe = {
        {'tutorial:megablock4', 'tutorial:dunklematerie6', 'tutorial:megablock4'},
        {'tutorial:diamondblock2', 'tutorial:dunklematerie5', 'tutorial:diamondblock2'},
        {'tutorial:diamondblock2', 'tutorial:zauberstab7', 'tutorial:diamondblock2'},
    }
})
minetest.register_craft({
    output = 'tutorial:zauberstab7',
    recipe = {
        {'tutorial:megablock4', 'tutorial:dunklematerie5', 'tutorial:megablock4'},
        {'tutorial:megablock4', 'tutorial:dunklematerie5', 'tutorial:megablock4'},
        {'tutorial:megablock4', 'tutorial:zauberstab6', 'tutorial:megablock4'},
    }
})
minetest.register_craft({
    output = 'tutorial:zauberstab6',
    recipe = {
        {'tutorial:megablock4', 'tutorial:dunklematerie5', 'tutorial:megablock4'},
        {'tutorial:megablock4', 'tutorial:dunklematerie5', 'tutorial:megablock4'},
        {'tutorial:megablock4', 'tutorial:zauberstab5', 'tutorial:megablock4'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock9',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock8',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock7',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock6',
    recipe = {
        {'tutorial:superblock5', 'tutorial:superblock5'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock5',
    recipe = {
        {'tutorial:superblock4', 'tutorial:superblock4'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock4 2',
    recipe = {
        {'tutorial:superblock3', 'tutorial:superblock3'},
        {'tutorial:superblock3', 'tutorial:superblock3'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock3 4',
    recipe = {
        {'tutorial:superblock2', 'tutorial:superblock2', 'tutorial:superblock2'},
        {'tutorial:superblock2', '', 'tutorial:superblock2'},
        {'tutorial:superblock2', 'tutorial:superblock2', 'tutorial:superblock2'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock2 4',
    recipe = {
        {'tutorial:superblock1', 'tutorial:superblock1', 'tutorial:superblock1'},
        {'tutorial:superblock1', '', 'tutorial:superblock1'},
        {'tutorial:superblock1', 'tutorial:superblock1', 'tutorial:superblock1'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock1 4',
    recipe = {
        {'default:dirt', 'default:sand', 'default:cobble'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock1 4',
    recipe = {
        {'default:dirt', 'default:cobble', 'default:sand'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock1 4',
    recipe = {
        {'default:cobble', 'default:dirt', 'default:sand'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock1 4',
    recipe = {
        {'default:cobble', 'default:sand', 'default:dirt'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock1 4',
    recipe = {
        {'default:sand', 'default:cobble', 'default:dirt'},
    }
})
minetest.register_craft({
    output = 'tutorial:superblock1 4',
    recipe = {
        {'default:sand', 'default:dirt', 'default:cobble'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega25',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:cloudbattleaxe_mega24', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega24',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:cloudbattleaxe_mega23', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega23',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:cloudbattleaxe_mega22', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega22',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:cloudbattleaxe_mega21', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega21',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:cloudbattleaxe_mega20', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega20',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:cloudbattleaxe_mega19', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega19',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:cloudbattleaxe_mega18', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega18',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:cloudbattleaxe_mega17', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega17',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:cloudbattleaxe_mega16', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega16',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:cloudbattleaxe_mega15', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega15',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:cloudbattleaxe_mega14', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega14',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:cloudbattleaxe_mega13', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega13',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:cloudbattleaxe_mega12', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega12',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:cloudbattleaxe_mega11', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega11',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:cloudbattleaxe_mega10', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega10',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:cloudbattleaxe_mega9', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega9',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:cloudbattleaxe_mega8', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega8',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:cloudbattleaxe_mega7', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega7',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:cloudbattleaxe_mega6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega6',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:cloudbattleaxe_mega5', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega5',
    recipe = {
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:cloudbattleaxe_mega4', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega4',
    recipe = {
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:cloudbattleaxe_mega3', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega3',
    recipe = {
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:cloudbattleaxe_mega2', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega2',
    recipe = {
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:cloudbattleaxe_mega1', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega1',
    recipe = {
        {'tutorial:cloudentverner21', 'tutorial:battleaxe_mega20'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudbattleaxe_mega1',
    recipe = {
        {'tutorial:battleaxe_mega20', 'tutorial:cloudentverner21'},
    }
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:bottle12',
	cooktime = 500,
	output = 'tutorial:bottleS1 4',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:bottleS1',
	cooktime = 1000,
	output = 'tutorial:bottleS2',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:bottleS2',
	cooktime = 2000,
	output = 'tutorial:bottleS3',
})
minetest.register_craft({
    output = 'tutorial:bottle_roh 25',
    recipe = {
        {'', 'vessels:glass_bottle', ''},
        {'vessels:glass_bottle', 'default:grass_1', 'vessels:glass_bottle'},
        {'', 'vessels:glass_bottle', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:bottle_roh 25',
    recipe = {
        {'', 'vessels:glass_bottle', ''},
        {'vessels:glass_bottle', 'default:dry_grass_1', 'vessels:glass_bottle'},
        {'', 'vessels:glass_bottle', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:bottle2',
    recipe = {
        {'tutorial:bottle1', 'tutorial:bottle1'},
    }
})
minetest.register_craft({
    output = 'tutorial:bottle3',
    recipe = {
        {'tutorial:bottle2', 'tutorial:bottle2'},
    }
})
minetest.register_craft({
    output = 'tutorial:bottle4',
    recipe = {
        {'tutorial:bottle3', 'tutorial:bottle3'},
    }
})
minetest.register_craft({
    output = 'tutorial:bottle5',
    recipe = {
        {'tutorial:bottle4', 'tutorial:bottle4'},
    }
})
minetest.register_craft({
    output = 'tutorial:bottle6',
    recipe = {
        {'tutorial:bottle5', 'tutorial:bottle5'},
    }
})
minetest.register_craft({
    output = 'tutorial:bottle7',
    recipe = {
        {'tutorial:bottle6', 'tutorial:bottle6'},
    }
})
minetest.register_craft({
    output = 'tutorial:bottle8',
    recipe = {
        {'tutorial:bottle7', 'tutorial:bottle7'},
    }
})
minetest.register_craft({
    output = 'tutorial:bottle9',
    recipe = {
        {'tutorial:bottle8', 'tutorial:bottle8'},
    }
})
minetest.register_craft({
    output = 'tutorial:bottle10',
    recipe = {
        {'tutorial:bottle9', 'tutorial:bottle9'},
    }
})
minetest.register_craft({
    output = 'tutorial:bottle11',
    recipe = {
        {'tutorial:bottle10', 'tutorial:bottle10'},
    }
})
minetest.register_craft({
    output = 'tutorial:bottle12',
    recipe = {
        {'tutorial:bottle11', 'tutorial:bottle11'},
    }
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'tutorial:bottle_roh',
	cooktime = 1,
	output = 'tutorial:bottle1',
})
minetest.register_craft({
    output = 'default:cloud 50',
    recipe = {
        {'wool:white', 'wool:white'},
        {'wool:white', 'wool:white'},
    }
})
minetest.register_craft({
    output = 'default:cloud 1000',
    recipe = {
        {'tutorial:megablock4', 'tutorial:megablock4', 'tutorial:megablock4'},
        {'tutorial:megablock4', 'tutorial:megablock4', 'tutorial:megablock4'},
        {'tutorial:megablock4', 'tutorial:megablock4', 'tutorial:megablock4'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner1',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner2',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner1', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner3',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner2', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner4',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner3', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner5',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner4', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner6',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner5', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner7',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner6', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner8',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner7', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner9',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner8', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner10',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner9', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner11',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner10', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner12',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner11', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner13',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner12', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner14',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner13', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner15',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner14', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner16',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner15', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner17',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner16', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner18',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner17', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner19',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner18', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner20',
    recipe = {
        {'default:cloud', 'default:cloud', 'default:cloud'},
        {'default:cloud', 'tutorial:cloudentverner19', 'default:cloud'},
        {'default:cloud', 'default:cloud', 'default:cloud'},
    }
})
minetest.register_craft({
    output = 'tutorial:cloudentverner21',
    recipe = { 
		{'tutorial:megablock4','tutorial:megablock4', 'tutorial:megablock4'},
		{'tutorial:megablock4','tutorial:cloudentverner20', 'tutorial:megablock4'},
		{'tutorial:megablock4','tutorial:megablock4', 'tutorial:megablock4'},
    }
})
minetest.register_craft({
    output = 'tutorial:zauberstab1',
    recipe = {
        {'default:stick'},
        {'default:stick'},
        {'default:stick'},
    }
})
minetest.register_craft({
    output = 'tutorial:zauberstab2',
    recipe = {
        {'tutorial:megablock2'},
        {'tutorial:megablock2'},
        {'tutorial:zauberstab1'},
    }
})
minetest.register_craft({
    output = 'tutorial:zauberstab3',
    recipe = {
        {'tutorial:megablock2'},
        {'tutorial:dunklematerie3'},
        {'tutorial:zauberstab2'},
    }
})
minetest.register_craft({
    output = 'tutorial:zauberstab4',
    recipe = {
        {'tutorial:dunklematerie4'},
        {'tutorial:dunklematerie4'},
        {'tutorial:zauberstab3'},
    }
})
minetest.register_craft({
    output = 'tutorial:zauberstab5',
    recipe = {
        {'tutorial:megablock3', 'tutorial:dunklematerie5', 'tutorial:megablock3'},
        {'tutorial:megablock3', 'tutorial:dunklematerie5', 'tutorial:megablock3'},
        {'tutorial:megablock3', 'tutorial:zauberstab4', 'tutorial:megablock3'},
    }
})
minetest.register_craft({
    output = 'tutorial:megablock3',
    recipe = {
        {'tutorial:megablock2', 'tutorial:megablock2'},
    }
})
minetest.register_craft({
    output = 'tutorial:megablock4',
    recipe = {
        {'tutorial:megablock3', 'tutorial:megablock3'},
    }
})
minetest.register_craft({
    output = 'tutorial:swored_zauber1',
    recipe = {
		{'tutorial:thunder','tutorial:megablock2','tutorial:thunder'},
		{'tutorial:thunder','tutorial:megablock2','tutorial:thunder'},
		{'tutorial:thunder','default:stick ','tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:swored_zauber2',
    recipe = {
		{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
		{'tutorial:megablock2','tutorial:swored_zauber1','tutorial:megablock2'},
		{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
    }
})
minetest.register_craft({
    output = 'tutorial:swored_zauber3',
    recipe = {
		{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
		{'tutorial:megablock2','tutorial:swored_zauber2','tutorial:megablock2'},
		{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
    }
})
minetest.register_craft({
    output = 'tutorial:swored_zauber4',
    recipe = {
		{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
		{'tutorial:megablock2','tutorial:swored_zauber3','tutorial:megablock2'},
		{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
    }
})
minetest.register_craft({
    output = 'tutorial:swored_zauber5',
    recipe = {
		{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
		{'tutorial:megablock2','tutorial:swored_zauber4','tutorial:megablock2'},
		{'tutorial:megablock2','tutorial:megablock2 ','tutorial:megablock2'},
    }
})
minetest.register_craft({
    output = 'tutorial:swored_zauber6',
    recipe = {
		{'tutorial:megablock3','tutorial:megablock3', 'tutorial:megablock3'},
		{'tutorial:megablock3','tutorial:swored_zauber5', 'tutorial:megablock3'},
		{'tutorial:megablock3','tutorial:megablock3', 'tutorial:megablock3'},
    }
})
minetest.register_craft({
    output = 'tutorial:swored_zauber7',
    recipe = {
		{'tutorial:megablock3','tutorial:megablock3', 'tutorial:megablock3'},
		{'tutorial:megablock3','tutorial:swored_zauber6', 'tutorial:megablock3'},
		{'tutorial:megablock3','tutorial:megablock3', 'tutorial:megablock3'},
    }
})
minetest.register_craft({
    output = 'tutorial:swored_zauber8',
    recipe = {
		{'tutorial:megablock4','tutorial:megablock4', 'tutorial:megablock4'},
		{'tutorial:megablock4','tutorial:swored_zauber7', 'tutorial:megablock4'},
		{'tutorial:megablock4','tutorial:megablock4', 'tutorial:megablock4'},
    }
})
minetest.register_craft({
    output = 'tutorial:swored_zauber9',
    recipe = {
		{'tutorial:megablock4','tutorial:megablock4', 'tutorial:megablock4'},
		{'tutorial:megablock4','tutorial:swored_zauber8', 'tutorial:megablock4'},
		{'tutorial:megablock4','tutorial:megablock4', 'tutorial:megablock4'},
    }
})
minetest.register_craft({
    output = 'tutorial:megablock2',
    recipe = {
        {'tutorial:megablock1', 'tutorial:megablock1'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega20',
    recipe = {
		{'tutorial:megablock2','tutorial:megablock2', 'tutorial:megablock2'},
		{'tutorial:megablock2','tutorial:battleaxe_mega19','tutorial:megablock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega19',
    recipe = {
		{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
		{'tutorial:megablock1','tutorial:battleaxe_mega18','tutorial:megablock1'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega18',
    recipe = {
		{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
		{'tutorial:megablock1','tutorial:battleaxe_mega17','tutorial:megablock1'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega17',
    recipe = {
		{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
		{'tutorial:megablock1','tutorial:battleaxe_mega16','tutorial:megablock1'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega16',
    recipe = {
		{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
		{'tutorial:megablock1','tutorial:battleaxe_mega15','tutorial:megablock1'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:megablock1',
    recipe = {
        {'default:cactus', 'default:cactus', 'default:cactus'},
        {'default:cactus', 'default:cactus', 'default:cactus'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega13',
    recipe = {
		{'default:goldblock','default:goldblock', 'default:goldblock'},
		{'default:goldblock','tutorial:battleaxe_mega12','default:goldblock'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega14',
    recipe = {
		{'nyancat:nyancat_rainbow','nyancat:nyancat_rainbow', 'nyancat:nyancat_rainbow'},
		{'nyancat:nyancat_rainbow','tutorial:battleaxe_mega13','nyancat:nyancat_rainbow'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega15',
    recipe = {
		{'nyancat:nyancat_rainbow','nyancat:nyancat_rainbow', 'nyancat:nyancat_rainbow'},
		{'nyancat:nyancat_rainbow','tutorial:battleaxe_mega14','nyancat:nyancat_rainbow'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega9',
    recipe = {
		{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
		{'tutorial:diamondblock2','tutorial:battleaxe_mega8','tutorial:diamondblock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega10',
    recipe = {
		{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
		{'tutorial:diamondblock2','tutorial:battleaxe_mega9','tutorial:diamondblock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega11',
    recipe = {
		{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
		{'tutorial:diamondblock2','tutorial:battleaxe_mega10','tutorial:diamondblock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega12',
    recipe = {
		{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
		{'tutorial:diamondblock2','tutorial:battleaxe_mega11','tutorial:diamondblock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:diamondblock2',
    recipe = {
        {'default:diamondblock', 'default:diamondblock'},
    }
})
minetest.register_craft({
    output = 'tutorial:thunder 2',
    recipe = {
        {'default:coalblock', 'default:coalblock'},
    }
})
minetest.register_craft({
    output = 'tutorial:dunklematerie1 2',
    recipe = {
        {'default:coal_lump', 'default:coal_lump', 'default:coal_lump'},
        {'default:coal_lump', 'default:coal_lump', 'default:coal_lump'},
    }
})
minetest.register_craft({
    output = 'tutorial:dunklematerie2',
    recipe = {
        {'tutorial:dunklematerie1', 'tutorial:dunklematerie1'},
    }
})
minetest.register_craft({
    output = 'tutorial:dunklematerie3',
    recipe = {
        {'tutorial:dunklematerie2', 'tutorial:dunklematerie2'},
    }
})
minetest.register_craft({
    output = 'tutorial:dunklematerie4',
    recipe = {
        {'tutorial:dunklematerie3', 'tutorial:dunklematerie3'},
    }
})
minetest.register_craft({
    output = 'tutorial:dunklematerie5',
    recipe = {
        {'tutorial:dunklematerie4', 'tutorial:dunklematerie4'},
    }
})
minetest.register_craft({
    output = 'tutorial:dunklematerie6',
    recipe = {
        {'tutorial:dunklematerie5', 'tutorial:dunklematerie5'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega5',
    recipe = {
		{'tutorial:dunklematerie4','tutorial:dunklematerie4', 'tutorial:dunklematerie4'},
		{'tutorial:dunklematerie4','tutorial:battleaxe_mega4','tutorial:dunklematerie4'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega6',
    recipe = {
		{'tutorial:dunklematerie4','tutorial:dunklematerie4', 'tutorial:dunklematerie4'},
		{'tutorial:dunklematerie4','tutorial:battleaxe_mega5','tutorial:dunklematerie4'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega7',
    recipe = {
		{'tutorial:dunklematerie5','tutorial:dunklematerie5', 'tutorial:dunklematerie5'},
		{'tutorial:dunklematerie5','tutorial:battleaxe_mega6','tutorial:dunklematerie5'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega8',
    recipe = {
		{'tutorial:dunklematerie6','tutorial:dunklematerie6', 'tutorial:dunklematerie6'},
		{'tutorial:dunklematerie6','tutorial:battleaxe_mega7','tutorial:dunklematerie6'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:obsidian2',
    recipe = {
        {'default:obsidian', 'default:obsidian'},
    }
})
minetest.register_craft({
    output = 'tutorial:obsidian3',
    recipe = {
        {'tutorial:obsidian2', 'tutorial:obsidian2'},
    }
})
minetest.register_craft({
    output = 'tutorial:obsidian4',
    recipe = {
        {'tutorial:obsidian3', 'tutorial:obsidian3'},
    }
})
minetest.register_craft({
    output = 'tutorial:obsidian5',
    recipe = {
        {'tutorial:obsidian4', 'tutorial:obsidian4'},
    }
})
minetest.register_craft({
    output = 'tutorial:obsidian6',
    recipe = {
        {'tutorial:obsidian5', 'tutorial:obsidian5'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega1',
    recipe = {
        {'tutorial:obsidian4', 'tutorial:obsidian4', 'tutorial:obsidian4'},
        {'tutorial:obsidian4', 'tutorial:battleaxe', 'tutorial:obsidian4'},
        {'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega2',
    recipe = {
        {'tutorial:obsidian4', 'tutorial:obsidian4', 'tutorial:obsidian4'},
        {'tutorial:obsidian4','tutorial:battleaxe_mega1','tutorial:obsidian4'},
        {'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'tutorial:battleaxe_mega3',
    recipe = {
        {'tutorial:obsidian5', 'tutorial:obsidian5', 'tutorial:obsidian5'},
        {'tutorial:obsidian5','tutorial:battleaxe_mega2','tutorial:obsidian5'},
        {'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = '"tutorial:battleaxe_mega4"',
    recipe = {
        {'tutorial:obsidian6', 'tutorial:obsidian6', 'tutorial:obsidian6'},
        {'tutorial:obsidian6','tutorial:battleaxe_mega3','tutorial:obsidian6'},
        {'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
	output = 'tutorial:blades',
	recipe = {
		{'', 'default:ice', ''},
		{'default:ice', 'default:ice', 'default:ice'},
		{'', 'default:ice', ''},
	}
})
minetest.register_craft({
	output = 'tutorial:cabin',
	recipe = {
		{'default:obsidian','default:obsidian','default:obsidian'},
		{'default:obsidian','','default:ice'},
	        {'default:obsidian','default:obsidian','default:obsidian'},		
	}
})		
minetest.register_craft({
	output = 'tutorial:heli',
	recipe = {
		{'', 'tutorial:blades'},
		{'tutorial:blades', 'tutorial:cabin'},	
	}
})
minetest.register_craft({
    output = 'default:ice',
    recipe = {
        {'bucket:bucket_water', 'bucket:bucket_water'},
        {'bucket:bucket_water', 'bucket:bucket_water'},
    }
})
minetest.register_craft({
    output = 'nyancat:nyancat_rainbow',
    recipe = {
        {'default:cactus', 'default:cactus', 'default:cactus'},
        {'default:cactus', 'default:cactus', 'default:cactus'},
        {'default:cactus', 'default:cactus', 'default:cactus'},
    }
})
minetest.register_craft({
    output = 'tutorial:stampfi_ei',
    recipe = {
        {'default:sandstone', 'default:sandstone', 'default:sandstone'},
        {'default:sandstone', 'default:sandstone', 'default:sandstone'},
        {'default:sandstone', 'default:sandstone', 'default:sandstone'},
    }
})
minetest.register_craft({
    output = 'dye:black',
    recipe = {
        {'default:coal_lump'},
    }
})