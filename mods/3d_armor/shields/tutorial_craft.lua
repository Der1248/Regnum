minetest.register_craft({
    output = 'shields:shield',
    recipe = {
        {'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
		{'', 'group:wood', ''},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega1',
    recipe = {
        {'tutorial:obsidian4', 'tutorial:obsidian4', 'tutorial:obsidian4'},
        {'tutorial:obsidian4', 'shields:shield', 'tutorial:obsidian4'},
        {'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega2',
    recipe = {
        {'tutorial:obsidian4', 'tutorial:obsidian4', 'tutorial:obsidian4'},
        {'tutorial:obsidian4','shields:shield_mega1','tutorial:obsidian4'},
        {'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega3',
    recipe = {
        {'tutorial:obsidian5', 'tutorial:obsidian5', 'tutorial:obsidian5'},
        {'tutorial:obsidian5','shields:shield_mega2','tutorial:obsidian5'},
        {'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega4',
    recipe = {
        {'tutorial:obsidian6', 'tutorial:obsidian6', 'tutorial:obsidian6'},
        {'tutorial:obsidian6','shields:shield_mega3','tutorial:obsidian6'},
        {'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega5',
    recipe = {
		{'tutorial:dunklematerie4','tutorial:dunklematerie4', 'tutorial:dunklematerie4'},
		{'tutorial:dunklematerie4','shields:shield_mega4','tutorial:dunklematerie4'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega6',
    recipe = {
		{'tutorial:dunklematerie4','tutorial:dunklematerie4', 'tutorial:dunklematerie4'},
		{'tutorial:dunklematerie4','shields:shield_mega5','tutorial:dunklematerie4'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega7',
    recipe = {
		{'tutorial:dunklematerie5','tutorial:dunklematerie5', 'tutorial:dunklematerie5'},
		{'tutorial:dunklematerie5','shields:shield_mega6','tutorial:dunklematerie5'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega8',
    recipe = {
		{'tutorial:dunklematerie6','tutorial:dunklematerie6', 'tutorial:dunklematerie6'},
		{'tutorial:dunklematerie6','shields:shield_mega7','tutorial:dunklematerie6'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega9',
    recipe = {
		{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
		{'tutorial:diamondblock2','shields:shield_mega8','tutorial:diamondblock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega10',
    recipe = {
		{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
		{'tutorial:diamondblock2','shields:shield_mega9','tutorial:diamondblock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega11',
    recipe = {
		{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
		{'tutorial:diamondblock2','shields:shield_mega10','tutorial:diamondblock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega12',
    recipe = {
		{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
		{'tutorial:diamondblock2','shields:shield_mega11','tutorial:diamondblock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega13',
    recipe = {
		{'default:goldblock','default:goldblock', 'default:goldblock'},
		{'default:goldblock','shields:shield_mega12','default:goldblock'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega14',
    recipe = {
		{'default:nyancat_rainbow','default:nyancat_rainbow', 'default:nyancat_rainbow'},
		{'default:nyancat_rainbow','shields:shield_mega13','default:nyancat_rainbow'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega15',
    recipe = {
		{'default:nyancat_rainbow','default:nyancat_rainbow', 'default:nyancat_rainbow'},
		{'default:nyancat_rainbow','shields:shield_mega14','default:nyancat_rainbow'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega16',
    recipe = {
		{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
		{'tutorial:megablock1','shields:shield_mega15','tutorial:megablock1'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega17',
    recipe = {
		{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
		{'tutorial:megablock1','shields:shield_mega16','tutorial:megablock1'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega18',
    recipe = {
		{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
		{'tutorial:megablock1','shields:shield_mega17','tutorial:megablock1'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega19',
    recipe = {
		{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
		{'tutorial:megablock1','shields:shield_mega18','tutorial:megablock1'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:shield_mega20',
    recipe = {
		{'tutorial:megablock2','tutorial:megablock2', 'tutorial:megablock2'},
		{'tutorial:megablock2','shields:shield_mega19','tutorial:megablock2'},
		{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega25',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'shields:cloudshield_mega24', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega24',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'shields:cloudshield_mega23', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega23',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'shields:cloudshield_mega22', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega22',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'shields:cloudshield_mega21', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega21',
    recipe = {
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'shields:cloudshield_mega20', 'tutorial:superblock9'},
        {'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega20',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'shields:cloudshield_mega19', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega19',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'shields:cloudshield_mega18', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega18',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'shields:cloudshield_mega17', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega17',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'shields:cloudshield_mega16', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega16',
    recipe = {
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'shields:cloudshield_mega15', 'tutorial:superblock8'},
        {'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega15',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'shields:cloudshield_mega14', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega14',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'shields:cloudshield_mega13', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega13',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'shields:cloudshield_mega12', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega12',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'shields:cloudshield_mega11', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega11',
    recipe = {
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'shields:cloudshield_mega10', 'tutorial:superblock7'},
        {'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega10',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'shields:cloudshield_mega9', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega9',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'shields:cloudshield_mega8', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega8',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'shields:cloudshield_mega7', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega7',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'shields:cloudshield_mega6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega6',
    recipe = {
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'shields:cloudshield_mega5', 'tutorial:superblock6'},
        {'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega5',
    recipe = {
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'shields:cloudshield_mega4', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega4',
    recipe = {
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'shields:cloudshield_mega3', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega3',
    recipe = {
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'shields:cloudshield_mega2', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega2',
    recipe = {
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'shields:cloudshield_mega1', 'tutorial:superblock5'},
        {'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
    }
})
minetest.register_craft({
    output = 'shields:cloudshield_mega1',
    recipe = {
        {'tutorial:cloudentverner21', 'shields:shield_mega20'},
    }
})
minetest.register_craft({
    output = 'shields:supershield4',
    recipe = {
        {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
        {'tutorial:whiteblock6', 'shields:supershield3', 'tutorial:blackblock6'},
        {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
    }
})
minetest.register_craft({
    output = 'shields:supershield3',
    recipe = {
        {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
        {'tutorial:whiteblock6', 'shields:supershield2', 'tutorial:blackblock6'},
        {'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
    }
})
minetest.register_craft({
    output = 'shields:supershield2',
    recipe = {
        {'tutorial:whiteblock5', 'tutorial:thunder', 'tutorial:blackblock5'},
        {'tutorial:whiteblock5', 'shields:supershield1', 'tutorial:blackblock5'},
        {'tutorial:whiteblock5', 'tutorial:thunder', 'tutorial:blackblock5'},
    }
})
minetest.register_craft({
    output = 'shields:supershield1',
    recipe = {
        {'tutorial:zauberstab9', 'shields:cloudshield_mega25', 'tutorial:swored_zauber9'},
    }
})
minetest.register_craft({
    output = 'shields:uraniumshield1',
    recipe = {
        {'tutorial:uranium8', 'tutorial:uranium8', 'tutorial:uranium8'},
        {'tutorial:uranium8', 'shields:supershield4', 'tutorial:uranium8'},
        {'tutorial:uranium8', 'tutorial:uranium8', 'tutorial:uranium8'},
    }
})
minetest.register_craft({
    output = 'shields:uraniumshield2',
    recipe = {
        {'tutorial:uranium9', 'tutorial:uranium9', 'tutorial:uranium9'},
        {'tutorial:uranium9', 'shields:uraniumshield1', 'tutorial:uranium9'},
        {'tutorial:uranium9', 'tutorial:uranium9', 'tutorial:uranium9'},
    }
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:uraniumshield2',
    cooktime = 100,
	output = 'shields:energyshield1',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:energyshield1',
    cooktime = 100,
	output = 'shields:energyshield2',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:energyshield2',
    cooktime = 200,
	output = 'shields:energyshield3',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:energyshield3',
    cooktime = 300,
	output = 'shields:energyshield4',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:energyshield4',
    cooktime = 400,
	output = 'shields:energyshield5',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:energyshield5',
    cooktime = 500,
	output = 'shields:energyshield6',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:energyshield6',
    cooktime = 600,
	output = 'shields:energyshield7',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:energyshield7',
    cooktime = 700,
	output = 'shields:energyshield8',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:energyshield8',
    cooktime = 800,
	output = 'shields:energyshield9',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:energyshield9',
    cooktime = 900,
	output = 'shields:energyshield10',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:energyshield10',
    cooktime = 1000,
	output = 'shields:energyshield11',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:energyshield11',
    cooktime = 1500,
	output = 'shields:energyshield12',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:energyshield12',
    cooktime = 1000,
	output = 'shields:superenergyshield1',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:superenergyshield1',
    cooktime = 1200,
	output = 'shields:superenergyshield2',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:superenergyshield2',
    cooktime = 1400,
	output = 'shields:superenergyshield3',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:superenergyshield3',
    cooktime = 1600,
	output = 'shields:superenergyshield4',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:superenergyshield4',
    cooktime = 1800,
	output = 'shields:superenergyshield5',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:superenergyshield5',
    cooktime = 2000,
	output = 'shields:superenergyshield6',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:superenergyshield6',
    cooktime = 2500,
	output = 'shields:superenergyshield7',
})
minetest.register_craft({
    output = 'shields:kristallshield5',
    recipe = {
        {'tutorial:admin', 'tutorial:thunder', 'tutorial:admin'},
        {'tutorial:admin', 'shields:kristallshield4', 'tutorial:admin'},
        {'tutorial:admin', 'tutorial:thunder', 'tutorial:admin'},
    }
})
minetest.register_craft({
    output = 'shields:kristallshield4',
    recipe = {
        {'gems:emerald_block', 'tutorial:thunder', 'gems:emerald_block'},
        {'gems:emerald_block', 'shields:kristallshield3', 'gems:emerald_block'},
        {'gems:emerald_block', 'tutorial:thunder', 'gems:emerald_block'},
    }
})
minetest.register_craft({
    output = 'shields:kristallshield3',
    recipe = {
        {'gems:pearl_block', 'tutorial:thunder', 'gems:shadow_block'},
        {'gems:pearl_block', 'shields:kristallshield2', 'gems:shadow_block'},
        {'gems:pearl_block', 'tutorial:thunder', 'gems:shadow_block'},
    }
})
minetest.register_craft({
    output = 'shields:kristallshield2',
    recipe = {
        {'gems:amethyst_block', 'tutorial:thunder', 'gems:amethyst_block'},
        {'gems:amethyst_block', 'shields:kristallshield1', 'gems:amethyst_block'},
        {'gems:amethyst_block', 'tutorial:thunder', 'gems:amethyst_block'},
    }
})
minetest.register_craft({
    output = 'shields:kristallshield1',
    recipe = {
        {'gems:ruby_block', 'tutorial:thunder', 'gems:sapphire_block'},
        {'gems:ruby_block', 'shields:superenergyshield7', 'gems:sapphire_block'},
        {'gems:ruby_block', 'tutorial:thunder', 'gems:sapphire_block'},
    }
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield24',
    cooktime = 5000,
	output = 'shields:ultrashield25',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield23',
    cooktime = 4800,
	output = 'shields:ultrashield24',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield22',
    cooktime = 4600,
	output = 'shields:ultrashield23',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield21',
    cooktime = 4400,
	output = 'shields:ultrashield22',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield20',
    cooktime = 4200,
	output = 'shields:ultrashield21',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield19',
    cooktime = 4000,
	output = 'shields:ultrashield20',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield18',
    cooktime = 3800,
	output = 'shields:ultrashield19',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield17',
    cooktime = 3600,
	output = 'shields:ultrashield18',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield16',
    cooktime = 3400,
	output = 'shields:ultrashield17',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield15',
    cooktime = 3200,
	output = 'shields:ultrashield16',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield14',
    cooktime = 3000,
	output = 'shields:ultrashield15',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield13',
    cooktime = 2800,
	output = 'shields:ultrashield14',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield12',
    cooktime = 2600,
	output = 'shields:ultrashield13',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield11',
    cooktime = 2400,
	output = 'shields:ultrashield12',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield10',
    cooktime = 2200,
	output = 'shields:ultrashield11',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield9',
    cooktime = 2000,
	output = 'shields:ultrashield10',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield8',
    cooktime = 1800,
	output = 'shields:ultrashield9',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield7',
    cooktime = 1600,
	output = 'shields:ultrashield8',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield6',
    cooktime = 1400,
	output = 'shields:ultrashield7',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield5',
    cooktime = 1200,
	output = 'shields:ultrashield6',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield4',
    cooktime = 1000,
	output = 'shields:ultrashield5',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield3',
    cooktime = 800,
	output = 'shields:ultrashield4',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield2',
    cooktime = 600,
	output = 'shields:ultrashield3',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield1',
    cooktime = 400,
	output = 'shields:ultrashield2',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:kristallshield5',
    cooktime = 200,
	output = 'shields:ultrashield1',
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield25',
 cooktime = 10000,
	output = 'shields:superultrashield',
})
minetest.register_craft({
    output = 'shields:arenashield4',
    recipe = {
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'shields:arenashield3', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
    }
})
minetest.register_craft({
    output = 'shields:arenashield3',
    recipe = {
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'shields:arenashield2', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
    }
})
minetest.register_craft({
    output = 'shields:arenashield2',
    recipe = {
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'shields:arenashield1', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
    }
})
minetest.register_craft({
    output = 'shields:arenashield1',
    recipe = {
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'shields:superultrashield', 'tutorial:arena_block'},
        {'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
    }
})
minetest.register_craft({
    output = 'shields:titanshield10',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'shields:titanshield9', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'shields:titanshield9',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'shields:titanshield8', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'shields:titanshield8',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'shields:titanshield7', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'shields:titanshield7',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'shields:titanshield6', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'shields:titanshield6',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'shields:titanshield5', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'shields:titanshield5',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'shields:titanshield4', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'shields:titanshield4',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'shields:titanshield3', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'shields:titanshield3',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'shields:titanshield2', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'shields:titanshield2',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'shields:titanshield1', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'shields:titanshield1',
    recipe = {
        {'', 'tutorial:titan', ''},
        {'tutorial:titan', 'shields:arenashield4', 'tutorial:titan'},
        {'', 'tutorial:titan', ''},
    }
})
minetest.register_craft({
    output = 'shields:legendenshield1',
    recipe = {
        {'shields:titanshield10', 'default:grass_1', 'default:grass_1', 'tutorial:bottle5'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'tutorial:bottle5', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
    }
})
minetest.register_craft({
    output = 'shields:legendenshield2',
    recipe = {
        {'shields:legendenshield1', 'default:grass_1', 'default:grass_1', 'tutorial:bottle7'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'tutorial:bottle7', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
    }
})
minetest.register_craft({
    output = 'shields:legendenshield3',
    recipe = {
        {'shields:legendenshield2', 'default:grass_1', 'default:grass_1', 'tutorial:bottle9'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'tutorial:bottle9', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
    }
})
minetest.register_craft({
    output = 'shields:legendenshield4',
    recipe = {
        {'shields:legendenshield3', 'default:grass_1', 'default:grass_1', 'tutorial:bottle11'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'tutorial:bottle11', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
    }
})
minetest.register_craft({
    output = 'shields:legendenshield5',
    recipe = {
        {'shields:legendenshield4', 'default:grass_1', 'default:grass_1', 'tutorial:bottleS1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'tutorial:bottleS1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
    }
})
minetest.register_craft({
    output = 'shields:legendenshield6',
    recipe = {
        {'shields:legendenshield5', 'default:grass_1', 'default:grass_1', 'tutorial:bottleS3'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'tutorial:bottleS3', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
    }
})
minetest.register_craft({
    output = 'shields:superlegendenshield',
    recipe = {
        {'tutorial:lilabattleaxe2', 'shields:legendenshield6'},
    }
})

minetest.register_craft({
    output = 'shields:regnumshield',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'shields:superlegendenshield', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})

minetest.register_craft({
    output = 'shields:regnumshield2',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'shields:superlegendenshield2', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})

minetest.register_craft({
    output = 'shields:regnumshield3',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'shields:superlegendenshield3', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})

minetest.register_craft({
    output = 'shields:regnumshield4',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'shields:superlegendenshield4', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})