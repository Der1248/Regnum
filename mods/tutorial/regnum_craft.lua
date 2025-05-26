
local array = {"battleaxe", "helmet", "chestplate", "leggings", "boots", "shield", "gun", "gun_2", "wings", "heart"}
for i = 1, #array do
	local item = array[i]
	minetest.register_craft({
		output = 'regnum:'..item..'_1',
		recipe = {
			{'tutorial:obsidian4', 'tutorial:obsidian4', 'tutorial:obsidian4'},
			{'tutorial:obsidian4', 'regnum:'..item..'_0', 'tutorial:obsidian4'},
			{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_2',
		recipe = {
			{'tutorial:obsidian4', 'tutorial:obsidian4', 'tutorial:obsidian4'},
			{'tutorial:obsidian4','regnum:'..item..'_1','tutorial:obsidian4'},
			{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_3',
		recipe = {
			{'tutorial:obsidian5', 'tutorial:obsidian5', 'tutorial:obsidian5'},
			{'tutorial:obsidian5','regnum:'..item..'_2','tutorial:obsidian5'},
			{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_4',
		recipe = {
			{'tutorial:obsidian6', 'tutorial:obsidian6', 'tutorial:obsidian6'},
			{'tutorial:obsidian6','regnum:'..item..'_3','tutorial:obsidian6'},
			{'tutorial:thunder', 'tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_5',
		recipe = {
			{'tutorial:dunklematerie4','tutorial:dunklematerie4', 'tutorial:dunklematerie4'},
			{'tutorial:dunklematerie4','regnum:'..item..'_4','tutorial:dunklematerie4'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_6',
		recipe = {
			{'tutorial:dunklematerie4','tutorial:dunklematerie4', 'tutorial:dunklematerie4'},
			{'tutorial:dunklematerie4','regnum:'..item..'_5','tutorial:dunklematerie4'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_7',
		recipe = {
			{'tutorial:dunklematerie5','tutorial:dunklematerie5', 'tutorial:dunklematerie5'},
			{'tutorial:dunklematerie5','regnum:'..item..'_6','tutorial:dunklematerie5'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_8',
		recipe = {
			{'tutorial:dunklematerie6','tutorial:dunklematerie6', 'tutorial:dunklematerie6'},
			{'tutorial:dunklematerie6','regnum:'..item..'_7','tutorial:dunklematerie6'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_9',
		recipe = {
			{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
			{'tutorial:diamondblock2','regnum:'..item..'_8','tutorial:diamondblock2'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_10',
		recipe = {
			{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
			{'tutorial:diamondblock2','regnum:'..item..'_9','tutorial:diamondblock2'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_11',
		recipe = {
			{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
			{'tutorial:diamondblock2','regnum:'..item..'_10','tutorial:diamondblock2'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_12',
		recipe = {
			{'tutorial:diamondblock2','tutorial:diamondblock2', 'tutorial:diamondblock2'},
			{'tutorial:diamondblock2','regnum:'..item..'_11','tutorial:diamondblock2'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_13',
		recipe = {
			{'default:goldblock','default:goldblock', 'default:goldblock'},
			{'default:goldblock','regnum:'..item..'_12','default:goldblock'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_14',
		recipe = {
			{'nyancat:nyancat_rainbow','nyancat:nyancat_rainbow', 'nyancat:nyancat_rainbow'},
			{'nyancat:nyancat_rainbow','regnum:'..item..'_13','nyancat:nyancat_rainbow'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_15',
		recipe = {
			{'nyancat:nyancat_rainbow','nyancat:nyancat_rainbow', 'nyancat:nyancat_rainbow'},
			{'nyancat:nyancat_rainbow','regnum:'..item..'_14','nyancat:nyancat_rainbow'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_16',
		recipe = {
			{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
			{'tutorial:megablock1','regnum:'..item..'_15','tutorial:megablock1'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_17',
		recipe = {
			{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
			{'tutorial:megablock1','regnum:'..item..'_16','tutorial:megablock1'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_18',
		recipe = {
			{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
			{'tutorial:megablock1','regnum:'..item..'_17','tutorial:megablock1'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_19',
		recipe = {
			{'tutorial:megablock1','tutorial:megablock1', 'tutorial:megablock1'},
			{'tutorial:megablock1','regnum:'..item..'_18','tutorial:megablock1'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_20',
		recipe = {
			{'tutorial:megablock2','tutorial:megablock2', 'tutorial:megablock2'},
			{'tutorial:megablock2','regnum:'..item..'_19','tutorial:megablock2'},
			{'tutorial:thunder','tutorial:thunder', 'tutorial:thunder'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_21',
		recipe = {
			{'tutorial:cloudentverner21', 'regnum:'..item..'_20'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_21',
		recipe = {
			{'regnum:'..item..'_20', 'tutorial:cloudentverner21'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_22',
		recipe = {
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
			{'tutorial:superblock5', 'regnum:'..item..'_21', 'tutorial:superblock5'},
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_23',
		recipe = {
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
			{'tutorial:superblock5', 'regnum:'..item..'_22', 'tutorial:superblock5'},
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_24',
		recipe = {
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
			{'tutorial:superblock5', 'regnum:'..item..'_23', 'tutorial:superblock5'},
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_25',
		recipe = {
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
			{'tutorial:superblock5', 'regnum:'..item..'_24', 'tutorial:superblock5'},
			{'tutorial:superblock5', 'tutorial:superblock5', 'tutorial:superblock5'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_26',
		recipe = {
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'regnum:'..item..'_25', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_27',
		recipe = {
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'regnum:'..item..'_26', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_28',
		recipe = {
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'regnum:'..item..'_27', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_29',
		recipe = {
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'regnum:'..item..'_28', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_30',
		recipe = {
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'regnum:'..item..'_29', 'tutorial:superblock6'},
			{'tutorial:superblock6', 'tutorial:superblock6', 'tutorial:superblock6'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_31',
		recipe = {
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'regnum:'..item..'_30', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_32',
		recipe = {
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'regnum:'..item..'_31', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_33',
		recipe = {
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'regnum:'..item..'_32', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_34',
		recipe = {
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'regnum:'..item..'_33', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_35',
		recipe = {
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'regnum:'..item..'_34', 'tutorial:superblock7'},
			{'tutorial:superblock7', 'tutorial:superblock7', 'tutorial:superblock7'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_36',
		recipe = {
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'regnum:'..item..'_35', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_37',
		recipe = {
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'regnum:'..item..'_36', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_38',
		recipe = {
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'regnum:'..item..'_37', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_39',
		recipe = {
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'regnum:'..item..'_38', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_40',
		recipe = {
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'regnum:'..item..'_39', 'tutorial:superblock8'},
			{'tutorial:superblock8', 'tutorial:superblock8', 'tutorial:superblock8'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_41',
		recipe = {
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'regnum:'..item..'_40', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_42',
		recipe = {
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'regnum:'..item..'_41', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_43',
		recipe = {
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'regnum:'..item..'_42', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_44',
		recipe = {
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'regnum:'..item..'_43', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_45',
		recipe = {
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'regnum:'..item..'_44', 'tutorial:superblock9'},
			{'tutorial:superblock9', 'tutorial:superblock9', 'tutorial:superblock9'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_46',
		recipe = {
			{'tutorial:zauberstab9', 'regnum:'..item..'_45', 'tutorial:swored_zauber9'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_47',
		recipe = {
			{'tutorial:whiteblock5', 'tutorial:thunder', 'tutorial:blackblock5'},
			{'tutorial:whiteblock5', 'regnum:'..item..'_46', 'tutorial:blackblock5'},
			{'tutorial:whiteblock5', 'tutorial:thunder', 'tutorial:blackblock5'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_48',
		recipe = {
			{'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
			{'tutorial:whiteblock6', 'regnum:'..item..'_47', 'tutorial:blackblock6'},
			{'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_49',
		recipe = {
			{'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
			{'tutorial:whiteblock6', 'regnum:'..item..'_48', 'tutorial:blackblock6'},
			{'tutorial:whiteblock6', 'tutorial:thunder', 'tutorial:blackblock6'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_50',
		recipe = {
			{'tutorial:uranium8', 'tutorial:uranium8', 'tutorial:uranium8'},
			{'tutorial:uranium8', 'regnum:'..item..'_49', 'tutorial:uranium8'},
			{'tutorial:uranium8', 'tutorial:uranium8', 'tutorial:uranium8'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_51',
		recipe = {
			{'tutorial:uranium9', 'tutorial:uranium9', 'tutorial:uranium9'},
			{'tutorial:uranium9', 'regnum:'..item..'_50', 'tutorial:uranium9'},
			{'tutorial:uranium9', 'tutorial:uranium9', 'tutorial:uranium9'},
		}
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_51',
		cooktime = 100,
		output = 'regnum:'..item..'_52',
	})

	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_52',
		cooktime = 100,
		output = 'regnum:'..item..'_53',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_53',
		cooktime = 200,
		output = 'regnum:'..item..'_54',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_54',
		cooktime = 300,
		output = 'regnum:'..item..'_55',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_55',
		cooktime = 400,
		output = 'regnum:'..item..'_56',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_56',
		cooktime = 500,
		output = 'regnum:'..item..'_57',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_57',
		cooktime = 600,
		output = 'regnum:'..item..'_58',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_58',
		cooktime = 700,
		output = 'regnum:'..item..'_59',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_59',
		cooktime = 800,
		output = 'regnum:'..item..'_60',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_60',
		cooktime = 900,
		output = 'regnum:'..item..'_61',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_61',
		cooktime = 1000,
		output = 'regnum:'..item..'_62',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_62',
		cooktime = 1500,
		output = 'regnum:'..item..'_63',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_63',
		cooktime = 1000,
		output = 'regnum:'..item..'_64',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_64',
		cooktime = 1200,
		output = 'regnum:'..item..'_65',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_65',
		cooktime = 1400,
		output = 'regnum:'..item..'_66',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_66',
		cooktime = 1600,
		output = 'regnum:'..item..'_67',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_67',
		cooktime = 1800,
		output = 'regnum:'..item..'_68',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_68',
		cooktime = 2000,
		output = 'regnum:'..item..'_69',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_69',
		cooktime = 2500,
		output = 'regnum:'..item..'_70',
	})

	minetest.register_craft({
		output = 'regnum:'..item..'_71',
		recipe = {
			{'gems:ruby_block', 'tutorial:thunder', 'gems:sapphire_block'},
			{'gems:ruby_block', 'regnum:'..item..'_70', 'gems:sapphire_block'},
			{'gems:ruby_block', 'tutorial:thunder', 'gems:sapphire_block'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_72',
		recipe = {
			{'gems:amethyst_block', 'tutorial:thunder', 'gems:amethyst_block'},
			{'gems:amethyst_block', 'regnum:'..item..'_71', 'gems:amethyst_block'},
			{'gems:amethyst_block', 'tutorial:thunder', 'gems:amethyst_block'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_73',
		recipe = {
			{'gems:pearl_block', 'tutorial:thunder', 'gems:shadow_block'},
			{'gems:pearl_block', 'regnum:'..item..'_72', 'gems:shadow_block'},
			{'gems:pearl_block', 'tutorial:thunder', 'gems:shadow_block'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_74',
		recipe = {
			{'gems:emerald_block', 'tutorial:thunder', 'gems:emerald_block'},
			{'gems:emerald_block', 'regnum:'..item..'_73', 'gems:emerald_block'},
			{'gems:emerald_block', 'tutorial:thunder', 'gems:emerald_block'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_75',
		recipe = {
			{'tutorial:admin', 'tutorial:thunder', 'tutorial:admin'},
			{'tutorial:admin', 'regnum:'..item..'_74', 'tutorial:admin'},
			{'tutorial:admin', 'tutorial:thunder', 'tutorial:admin'},
		}
	})


	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_75',
		cooktime = 200,
		output = 'regnum:'..item..'_76',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_76',
		cooktime = 400,
		output = 'regnum:'..item..'_77',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_77',
		cooktime = 600,
		output = 'regnum:'..item..'_78',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_78',
		cooktime = 800,
		output = 'regnum:'..item..'_79',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_79',
		cooktime = 1000,
		output = 'regnum:'..item..'_80',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_80',
		cooktime = 1200,
		output = 'regnum:'..item..'_81',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_81',
		cooktime = 1400,
		output = 'regnum:'..item..'_82',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_82',
		cooktime = 1600,
		output = 'regnum:'..item..'_83',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_83',
		cooktime = 1800,
		output = 'regnum:'..item..'_84',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_84',
		cooktime = 2000,
		output = 'regnum:'..item..'_85',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_85',
		cooktime = 2200,
		output = 'regnum:'..item..'_86',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_86',
		cooktime = 2400,
		output = 'regnum:'..item..'_87',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_87',
		cooktime = 2600,
		output = 'regnum:'..item..'_88',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_88',
		cooktime = 2800,
		output = 'regnum:'..item..'_89',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_89',
		cooktime = 3000,
		output = 'regnum:'..item..'_90',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_90',
		cooktime = 3200,
		output = 'regnum:'..item..'_91',
	})


	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_91',
		cooktime = 3400,
		output = 'regnum:'..item..'_92',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_92',
		cooktime = 3600,
		output = 'regnum:'..item..'_93',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_93',
		cooktime = 3800,
		output = 'regnum:'..item..'_94',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_94',
		cooktime = 4000,
		output = 'regnum:'..item..'_95',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_95',
		cooktime = 4200,
		output = 'regnum:'..item..'_96',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_96',
		cooktime = 4400,
		output = 'regnum:'..item..'_97',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_97',
		cooktime = 4600,
		output = 'regnum:'..item..'_98',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_98',
		cooktime = 4800,
		output = 'regnum:'..item..'_99',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_99',
		cooktime = 5000,
		output = 'regnum:'..item..'_100',
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = 'regnum:'..item..'_100',
		cooktime = 10000,
		output = 'regnum:'..item..'_101',
	})

	minetest.register_craft({
		output = 'regnum:'..item..'_102',
		recipe = {
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
			{'tutorial:arena_block', 'regnum:'..item..'_101', 'tutorial:arena_block'},
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_103',
		recipe = {
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
			{'tutorial:arena_block', 'regnum:'..item..'_102', 'tutorial:arena_block'},
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_104',
		recipe = {
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
			{'tutorial:arena_block', 'regnum:'..item..'_103', 'tutorial:arena_block'},
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_105',
		recipe = {
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
			{'tutorial:arena_block', 'regnum:'..item..'_104', 'tutorial:arena_block'},
			{'tutorial:arena_block', 'tutorial:arena_block', 'tutorial:arena_block'},
		}
	})

	minetest.register_craft({
		output = 'regnum:'..item..'_106',
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'regnum:'..item..'_105', 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_107',
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'regnum:'..item..'_106', 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_108',
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'regnum:'..item..'_107', 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_109',
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'regnum:'..item..'_108', 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_110',
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'regnum:'..item..'_109', 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_111',
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'regnum:'..item..'_110', 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_112',
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'regnum:'..item..'_111', 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_113',
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'regnum:'..item..'_112', 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_114',
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'regnum:'..item..'_113', 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_115',
		recipe = {
			{'', 'tutorial:titan', ''},
			{'tutorial:titan', 'regnum:'..item..'_114', 'tutorial:titan'},
			{'', 'tutorial:titan', ''},
		}
	})

	minetest.register_craft({
		output = 'regnum:'..item..'_116',
		recipe = {
			{'regnum:'..item..'_115', 'default:grass_1', 'default:grass_1', 'tutorial:bottle5'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'tutorial:bottle5', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_117',
		recipe = {
			{'regnum:'..item..'_116', 'default:grass_1', 'default:grass_1', 'tutorial:bottle7'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'tutorial:bottle7', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_118',
		recipe = {
			{'regnum:'..item..'_117', 'default:grass_1', 'default:grass_1', 'tutorial:bottle9'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'tutorial:bottle9', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_119',
		recipe = {
			{'regnum:'..item..'_118', 'default:grass_1', 'default:grass_1', 'tutorial:bottle11'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'tutorial:bottle11', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_120',
		recipe = {
			{'regnum:'..item..'_119', 'default:grass_1', 'default:grass_1', 'tutorial:bottleS1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'tutorial:bottleS1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_121',
		recipe = {
			{'regnum:'..item..'_120', 'default:grass_1', 'default:grass_1', 'tutorial:bottleS3'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'default:grass_1', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
			{'tutorial:bottleS3', 'default:grass_1', 'default:grass_1', 'default:grass_1'},
		}
	})
	minetest.register_craft({
		output = 'regnum:'..item..'_122',
		recipe = {
			{'tutorial:lilabattleaxe2', 'regnum:'..item..'_121'},
		}
	})
end
minetest.register_craft({
    output = 'tutorial:battleaxe',
    recipe = {
        {'group:wood', 'group:wood', 'group:wood'},
        {'group:wood', 'default:stick', 'group:wood'},
        {'', 'default:stick', ''},
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
    output = '3d_armor:boots',
    recipe = {
        {'', '', ''},
		{'group:wood', '', 'group:wood'},
		{'group:wood', '', 'group:wood'},
    }
})
minetest.register_craft({
    output = '3d_armor:leggings',
    recipe = {
        {'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', '', 'group:wood'},
		{'group:wood', '', 'group:wood'},
    }
})
minetest.register_craft({
    output = '3d_armor:chestplate',
    recipe = {
        {'group:wood', '', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
    }
})
minetest.register_craft({
    output = '3d_armor:helmet',
    recipe = {
        {'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', '', 'group:wood'},
		{'', '', ''},
    }
})
minetest.register_craft({
    output = '3d_armor:regnumboots',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenboots', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = '3d_armor:regnumchestplate',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenchestplate', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = '3d_armor:regnumhelmet',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenhelmet', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = '3d_armor:regnumleggings',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenleggings', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})

minetest.register_craft({
    output = '3d_armor:regnumboots2',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenboots2', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = '3d_armor:regnumchestplate2',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenchestplate2', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = '3d_armor:regnumhelmet2',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenhelmet2', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = '3d_armor:regnumleggings2',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenleggings2', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})

minetest.register_craft({
    output = '3d_armor:regnumboots3',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenboots3', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = '3d_armor:regnumchestplate3',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenchestplate3', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = '3d_armor:regnumhelmet3',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenhelmet3', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = '3d_armor:regnumleggings3',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenleggings3', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})

minetest.register_craft({
    output = '3d_armor:regnumboots4',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenboots4', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = '3d_armor:regnumchestplate4',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenchestplate4', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = '3d_armor:regnumhelmet4',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenhelmet4', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = '3d_armor:regnumleggings4',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', '3d_armor:superlegendenleggings4', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})

minetest.register_craft({
    output = 'shields:shield',
    recipe = {
        {'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
		{'', 'group:wood', ''},
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

minetest.register_craft({
	output = 'tutorial:gun',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'', 'default:stick', 'group:wood'},
		{'', '', 'default:stick'},
	}
})

minetest.register_craft({
	output = 'tutorial:superlegendengun1',
	recipe = {
		{'tutorial:lilabattleaxe2', 'tutorial:legendengun6'},
	}
})
minetest.register_craft({
	output = 'tutorial:superlegendengun2',
	recipe = {
		{'tutorial:lilabattleaxe2', 'tutorial:legendengun6_2'},
	}
})
minetest.register_craft({
	output = 'tutorial:regnumgun1',
	recipe = {
		{'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'tutorial:superlegendengun1', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
	}
})
minetest.register_craft({
	output = 'tutorial:regnumgun2',
	recipe = {
		{'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'tutorial:superlegendengun2', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
	}
})

minetest.register_craft({
    output = 'tutorial:wings',
    recipe = {
        {'group:wood', '', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
		{'', 'group:wood', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:regnumwings1',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'tutorial:superlegendwings1', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:regnumwings2',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'tutorial:superlegendwings2', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:regnumwings3',
    recipe = {
        {'', '', 'tutorial:regnum', '', ''},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'tutorial:regnum', 'tutorial:bottleSS', 'tutorial:superlegendwings3', 'tutorial:bottleSS', 'tutorial:regnum'},
		{'', '', 'tutorial:bottleSS', '', ''},
		{'', '', 'tutorial:regnum', '', ''},
    }
})


minetest.register_craft({
    output = 'tutorial:heart',
    recipe = {
        {'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'default:apple', 'group:wood'},
		{'', 'group:wood', ''},
    }
})