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
        {'', 'default:cobble', ''},
        {'default:cobble', 'default:cobble', 'default:cobble'},
        {'', 'default:cobble', ''},
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
    output = 'tutorial:megablock1',
    recipe = {
        {'default:cactus', 'default:cactus', 'default:cactus'},
        {'default:cactus', 'default:cactus', 'default:cactus'},
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
