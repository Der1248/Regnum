minetest.register_tool("shields:shield", {
	description = "Shield",
	inventory_image = "shields_inv_shield.png",
	groups = {armor_shield=5, armor_heal=0, armor_use=2000},
	wear = 0,
})
minetest.register_tool("shields:shield_mega1", {
	description = "Megashield Lv.1",
	inventory_image = "shields_inv_shield_mega1.png",
	groups = {armor_shield=20, armor_heal=5, armor_use=0, armor_fire=1},
	wear = 0,
})
minetest.register_tool("shields:shield_mega2", {
	description = "Megashield Lv.2",
	inventory_image = "shields_inv_shield_mega2.png",
	groups = {armor_shield=40, armor_heal=10, armor_use=0, armor_fire=2},
	wear = 0,
})
minetest.register_tool("shields:shield_mega3", {
	description = "Megashield Lv.3",
	inventory_image = "shields_inv_shield_mega3.png",
	groups = {armor_shield=60, armor_heal=15, armor_use=0, armor_fire=3},
	wear = 0,
})
minetest.register_tool("shields:shield_mega4", {
	description = "Megashield Lv.4",
	inventory_image = "shields_inv_shield_mega4.png",
	groups = {armor_shield=80, armor_heal=20, armor_use=0, armor_fire=4},
	wear = 0,
})
minetest.register_tool("shields:shield_mega5", {
	description = "Megashield Lv.5",
	inventory_image = "shields_inv_shield_mega5.png",
	groups = {armor_shield=100, armor_heal=25, armor_use=0, armor_fire=5},
	wear = 0,
})
minetest.register_tool("shields:shield_mega6", {
	description = "Megashield Lv.6",
	inventory_image = "shields_inv_shield_mega6.png",
	groups = {armor_shield=120, armor_heal=30, armor_use=0, armor_fire=6},
	wear = 0,
})
minetest.register_tool("shields:shield_mega7", {
	description = "Megashield Lv.7",
	inventory_image = "shields_inv_shield_mega7.png",
	groups = {armor_shield=140, armor_heal=35, armor_use=0, armor_fire=7},
	wear = 0,
})
minetest.register_tool("shields:shield_mega8", {
	description = "Megashield Lv.8",
	inventory_image = "shields_inv_shield_mega8.png",
	groups = {armor_shield=160, armor_heal=40, armor_use=0, armor_fire=8},
	wear = 0,
})
minetest.register_tool("shields:shield_mega9", {
	description = "Megashield Lv.9",
	inventory_image = "shields_inv_shield_mega9.png",
	groups = {armor_shield=180, armor_heal=45, armor_use=0, armor_fire=9},
	wear = 0,
})
minetest.register_tool("shields:shield_mega10", {
	description = "Megashield Lv.10",
	inventory_image = "shields_inv_shield_mega10.png",
	groups = {armor_shield=200, armor_heal=50, armor_use=0, armor_fire=10},
	wear = 0,
})
minetest.register_tool("shields:shield_mega11", {
	description = "Megashield Lv.11",
	inventory_image = "shields_inv_shield_mega11.png",
	groups = {armor_shield=220, armor_heal=55, armor_use=0, armor_fire=11},
	wear = 0,
})
minetest.register_tool("shields:shield_mega12", {
	description = "Megashield Lv.12",
	inventory_image = "shields_inv_shield_mega12.png",
	groups = {armor_shield=240, armor_heal=60, armor_use=0, armor_fire=12},
	wear = 0,
})
minetest.register_tool("shields:shield_mega13", {
	description = "Megashield Lv.13",
	inventory_image = "shields_inv_shield_mega13.png",
	groups = {armor_shield=260, armor_heal=65, armor_use=0, armor_fire=13},
	wear = 0,
})
minetest.register_tool("shields:shield_mega14", {
	description = "Megashield Lv.14",
	inventory_image = "shields_inv_shield_mega14.png",
	groups = {armor_shield=280, armor_heal=70, armor_use=0, armor_fire=14},
	wear = 0,
})
minetest.register_tool("shields:shield_mega15", {
	description = "Megashield Lv.15",
	inventory_image = "shields_inv_shield_mega15.png",
	groups = {armor_shield=300, armor_heal=75, armor_use=0, armor_fire=15},
	wear = 0,
})
minetest.register_tool("shields:shield_mega16", {
	description = "Megashield Lv.16",
	inventory_image = "shields_inv_shield_mega16.png",
	groups = {armor_shield=320, armor_heal=80, armor_use=0, armor_fire=16},
	wear = 0,
})
minetest.register_tool("shields:shield_mega17", {
	description = "Megashield Lv.17",
	inventory_image = "shields_inv_shield_mega17.png",
	groups = {armor_shield=340, armor_heal=85, armor_use=0, armor_fire=17},
	wear = 0,
})
minetest.register_tool("shields:shield_mega18", {
	description = "Megashield Lv.18",
	inventory_image = "shields_inv_shield_mega18.png",
	groups = {armor_shield=360, armor_heal=90, armor_use=0, armor_fire=18},
	wear = 0,
})
minetest.register_tool("shields:shield_mega19", {
	description = "Megashield Lv.19",
	inventory_image = "shields_inv_shield_mega19.png",
	groups = {armor_shield=380, armor_heal=95, armor_use=0, armor_fire=19},
	wear = 0,
})
minetest.register_tool("shields:shield_mega20", {
	description = "Megashield Lv.20",
	inventory_image = "shields_inv_shield_mega20.png",
	groups = {armor_shield=400, armor_heal=100, armor_use=0, armor_fire=20},
	wear = 0,
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

minetest.register_tool("shields:cloudshield_mega1", {
	description = "Cloudshield Lv.1",
	inventory_image = "shields_inv_cloudshield_mega1.png",
	groups = {armor_shield=420, armor_heal=105, armor_use=0, armor_fire=21},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega2", {
	description = "Cloudshield Lv.2",
	inventory_image = "shields_inv_cloudshield_mega2.png",
	groups = {armor_shield=440, armor_heal=110, armor_use=0, armor_fire=22},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega3", {
	description = "Cloudshield Lv.3",
	inventory_image = "shields_inv_cloudshield_mega3.png",
	groups = {armor_shield=460, armor_heal=115, armor_use=0, armor_fire=23},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega4", {
	description = "Cloudshield Lv.4",
	inventory_image = "shields_inv_cloudshield_mega4.png",
	groups = {armor_shield=480, armor_heal=120, armor_use=0, armor_fire=24},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega5", {
	description = "Cloudshield Lv.5",
	inventory_image = "shields_inv_cloudshield_mega5.png",
	groups = {armor_shield=500, armor_heal=125, armor_use=0, armor_fire=25},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega6", {
	description = "Cloudshield Lv.6",
	inventory_image = "shields_inv_cloudshield_mega6.png",
	groups = {armor_shield=520, armor_heal=130, armor_use=0, armor_fire=26},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega7", {
	description = "Cloudshield Lv.7",
	inventory_image = "shields_inv_cloudshield_mega7.png",
	groups = {armor_shield=540, armor_heal=135, armor_use=0, armor_fire=27},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega8", {
	description = "Cloudshield Lv.8",
	inventory_image = "shields_inv_cloudshield_mega8.png",
	groups = {armor_shield=560, armor_heal=140, armor_use=0, armor_fire=28},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega9", {
	description = "Cloudshield Lv.9",
	inventory_image = "shields_inv_cloudshield_mega9.png",
	groups = {armor_shield=580, armor_heal=145, armor_use=0, armor_fire=29},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega10", {
	description = "Cloudshield Lv.10",
	inventory_image = "shields_inv_cloudshield_mega10.png",
	groups = {armor_shield=600, armor_heal=150, armor_use=0, armor_fire=30},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega11", {
	description = "Cloudshield Lv.11",
	inventory_image = "shields_inv_cloudshield_mega11.png",
	groups = {armor_shield=620, armor_heal=155, armor_use=0, armor_fire=31},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega12", {
	description = "Cloudshield Lv.12",
	inventory_image = "shields_inv_cloudshield_mega12.png",
	groups = {armor_shield=640, armor_heal=160, armor_use=0, armor_fire=32},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega13", {
	description = "Cloudshield Lv.13",
	inventory_image = "shields_inv_cloudshield_mega13.png",
	groups = {armor_shield=660, armor_heal=165, armor_use=0, armor_fire=33},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega14", {
	description = "Cloudshield Lv.14",
	inventory_image = "shields_inv_cloudshield_mega14.png",
	groups = {armor_shield=680, armor_heal=170, armor_use=0, armor_fire=34},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega15", {
	description = "Cloudshield Lv.15",
	inventory_image = "shields_inv_cloudshield_mega15.png",
	groups = {armor_shield=700, armor_heal=175, armor_use=0, armor_fire=35},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega16", {
	description = "Cloudshield Lv.16",
	inventory_image = "shields_inv_cloudshield_mega16.png",
	groups = {armor_shield=720, armor_heal=180, armor_use=0, armor_fire=36},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega17", {
	description = "Cloudshield Lv.17",
	inventory_image = "shields_inv_cloudshield_mega17.png",
	groups = {armor_shield=740, armor_heal=185, armor_use=0, armor_fire=37},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega18", {
	description = "Cloudshield Lv.18",
	inventory_image = "shields_inv_cloudshield_mega18.png",
	groups = {armor_shield=760, armor_heal=190, armor_use=0, armor_fire=38},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega19", {
	description = "Cloudshield Lv.19",
	inventory_image = "shields_inv_cloudshield_mega19.png",
	groups = {armor_shield=780, armor_heal=195, armor_use=0, armor_fire=39},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega20", {
	description = "Cloudshield Lv.20",
	inventory_image = "shields_inv_cloudshield_mega20.png",
	groups = {armor_shield=800, armor_heal=200, armor_use=0, armor_fire=40},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega21", {
	description = "Cloudshield Lv.21",
	inventory_image = "shields_inv_cloudshield_mega21.png",
	groups = {armor_shield=820, armor_heal=205, armor_use=0, armor_fire=41},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega22", {
	description = "Cloudshield Lv.22",
	inventory_image = "shields_inv_cloudshield_mega22.png",
	groups = {armor_shield=840, armor_heal=210, armor_use=0, armor_fire=42},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega23", {
	description = "Cloudshield Lv.23",
	inventory_image = "shields_inv_cloudshield_mega23.png",
	groups = {armor_shield=860, armor_heal=215, armor_use=0, armor_fire=43},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega24", {
	description = "Cloudshield Lv.24",
	inventory_image = "shields_inv_cloudshield_mega24.png",
	groups = {armor_shield=880, armor_heal=220, armor_use=0, armor_fire=44},
	wear = 0,
})
minetest.register_tool("shields:cloudshield_mega25", {
	description = "Cloudshield Lv.25",
	inventory_image = "shields_inv_cloudshield_mega25.png",
	groups = {armor_shield=900, armor_heal=225, armor_use=0, armor_fire=45},
	wear = 0,
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

minetest.register_tool("shields:supershield1", {
	description = "Supershield Lv.1",
	inventory_image = "shields_inv_supershield1.png",
	groups = {armor_shield=920, armor_heal=230, armor_use=0, armor_fire=46},
	wear = 0,
})
minetest.register_tool("shields:supershield2", {
	description = "Supershield Lv.2",
	inventory_image = "shields_inv_supershield2.png",
	groups = {armor_shield=940, armor_heal=235, armor_use=0, armor_fire=47},
	wear = 0,
})
minetest.register_tool("shields:supershield3", {
	description = "Supershield Lv.3",
	inventory_image = "shields_inv_supershield3.png",
	groups = {armor_shield=960, armor_heal=240, armor_use=0, armor_fire=48},
	wear = 0,
})
minetest.register_tool("shields:supershield4", {
	description = "Supershield Lv.4",
	inventory_image = "shields_inv_supershield4.png",
	groups = {armor_shield=980, armor_heal=245, armor_use=0, armor_fire=49},
	wear = 0,
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

minetest.register_tool("shields:uraniumshield1", {
	description = "Uraniumshield Lv.1",
	inventory_image = "shields_inv_uraniumshield1.png",
	groups = {armor_shield=1000, armor_heal=250, armor_use=0, armor_fire=50},
	wear = 0,
})
minetest.register_tool("shields:uraniumshield2", {
	description = "Uraniumshield Lv.2",
	inventory_image = "shields_inv_uraniumshield2.png",
	groups = {armor_shield=1020, armor_heal=255, armor_use=0, armor_fire=51},
	wear = 0,
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

minetest.register_tool("shields:energyshield1", {
	description = "Energyshields Lv.1",
	inventory_image = "shields_inv_energyshield1.png",
	groups = {armor_shield=1040, armor_heal=260, armor_use=0,armor_fire=52},
	wear = 0,
})
minetest.register_tool("shields:energyshield2", {
	description = "Energyshields Lv.2",
	inventory_image = "shields_inv_energyshield2.png",
	groups = {armor_shield=1060, armor_heal=265, armor_use=0,armor_fire=53},
	wear = 0,
})
minetest.register_tool("shields:energyshield3", {
	description = "Energyshields Lv.3",
	inventory_image = "shields_inv_energyshield3.png",
	groups = {armor_shield=1080, armor_heal=270, armor_use=0,armor_fire=54},
	wear = 0,
})
minetest.register_tool("shields:energyshield4", {
	description = "Energyshield Lv.4",
	inventory_image = "shields_inv_energyshield4.png",
	groups = {armor_shield=1100, armor_heal=275, armor_use=0,armor_fire=55},
	wear = 0,
})
minetest.register_tool("shields:energyshield5", {
	description = "Energyshield Lv.5",
	inventory_image = "shields_inv_energyshield5.png",
	groups = {armor_shield=1120, armor_heal=280, armor_use=0,armor_fire=56},
	wear = 0,
})
minetest.register_tool("shields:energyshield6", {
	description = "Energyshield Lv.6",
	inventory_image = "shields_inv_energyshield6.png",
	groups = {armor_shield=1140, armor_heal=285, armor_use=0,armor_fire=57},
	wear = 0,
})
minetest.register_tool("shields:energyshield7", {
	description = "Energyshield Lv.7",
	inventory_image = "shields_inv_energyshield7.png",
	groups = {armor_shield=1160, armor_heal=290, armor_use=0,armor_fire=58},
	wear = 0,
})
minetest.register_tool("shields:energyshield8", {
	description = "Energyshield Lv.8",
	inventory_image = "shields_inv_energyshield8.png",
	groups = {armor_shield=1180, armor_heal=295, armor_use=0,armor_fire=59},
	wear = 0,
})
minetest.register_tool("shields:energyshield9", {
	description = "Energyshield Lv.9",
	inventory_image = "shields_inv_energyshield9.png",
	groups = {armor_shield=1200, armor_heal=300, armor_use=0,armor_fire=60},
	wear = 0,
})
minetest.register_tool("shields:energyshield10", {
	description = "Energyshield Lv.10",
	inventory_image = "shields_inv_energyshield10.png",
	groups = {armor_shield=1220, armor_heal=305, armor_use=0,armor_fire=61},
	wear = 0,
})
minetest.register_tool("shields:energyshield11", {
	description = "Energyshield Lv.11",
	inventory_image = "shields_inv_energyshield11.png",
	groups = {armor_shield=1240, armor_heal=310, armor_use=0,armor_fire=62},
	wear = 0,
})
minetest.register_tool("shields:energyshield12", {
	description = "Energyshield Lv.12",
	inventory_image = "shields_inv_energyshield12.png",
	groups = {armor_shield=1260, armor_heal=315, armor_use=0,armor_fire=63},
	wear = 0,
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

minetest.register_tool("shields:superenergyshield1", {
	description = "Superenergyshield Lv.1",
	inventory_image = "shields_inv_superenergyshield1.png",
	groups = {armor_shield=1280, armor_heal=320, armor_use=0,armor_fire=64},
	wear = 0,
})
minetest.register_tool("shields:superenergyshield2", {
	description = "Superenergyshield Lv.2",
	inventory_image = "shields_inv_superenergyshield2.png",
	groups = {armor_shield=1300, armor_heal=325, armor_use=0,armor_fire=65},
	wear = 0,
})
minetest.register_tool("shields:superenergyshield3", {
	description = "Superenergyshield Lv.3",
	inventory_image = "shields_inv_superenergyshield3.png",
	groups = {armor_shield=1320, armor_heal=330, armor_use=0,armor_fire=66},
	wear = 0,
})
minetest.register_tool("shields:superenergyshield4", {
	description = "Superenergyshield Lv.4",
	inventory_image = "shields_inv_superenergyshield4.png",
	groups = {armor_shield=1340, armor_heal=335, armor_use=0,armor_fire=67},
	wear = 0,
})
minetest.register_tool("shields:superenergyshield5", {
	description = "Superenergyshield Lv.5",
	inventory_image = "shields_inv_superenergyshield5.png",
	groups = {armor_shield=1360, armor_heal=340, armor_use=0,armor_fire=68},
	wear = 0,
})
minetest.register_tool("shields:superenergyshield6", {
	description = "Superenergyshield Lv.6",
	inventory_image = "shields_inv_superenergyshield6.png",
	groups = {armor_shield=1380, armor_heal=345, armor_use=0,armor_fire=69},
	wear = 0,
})
minetest.register_tool("shields:superenergyshield7", {
	description = "Superenergyshield Lv.7",
	inventory_image = "shields_inv_superenergyshield7.png",
	groups = {armor_shield=1400, armor_heal=350, armor_use=0,armor_fire=70},
	wear = 0,
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

minetest.register_tool("shields:kristallshield1", {
	description = "Crystalshield Lv.1",
	inventory_image = "shields_inv_kristallshield1.png",
	groups = {armor_shield=1420, armor_heal=355, armor_use=0,armor_fire=71},
	wear = 0,
})
minetest.register_tool("shields:kristallshield2", {
	description = "Crystalshield Lv.2",
	inventory_image = "shields_inv_kristallshield2.png",
	groups = {armor_shield=1440, armor_heal=360, armor_use=0,armor_fire=72},
	wear = 0,
})
minetest.register_tool("shields:kristallshield3", {
	description = "Crystalshield Lv.3",
	inventory_image = "shields_inv_kristallshield3.png",
	groups = {armor_shield=1460, armor_heal=365, armor_use=0,armor_fire=73},
	wear = 0,
})
minetest.register_tool("shields:kristallshield4", {
	description = "Crystalshield Lv.4",
	inventory_image = "shields_inv_kristallshield4.png",
	groups = {armor_shield=1480, armor_heal=370, armor_use=0,armor_fire=74},
	wear = 0,
})
minetest.register_tool("shields:kristallshield5", {
	description = "Crystalshield Lv.5",
	inventory_image = "shields_inv_kristallshield5.png",
	groups = {armor_shield=1500, armor_heal=375, armor_use=0,armor_fire=75},
	wear = 0,
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

minetest.register_tool("shields:ultrashield1", {
	description = "Ultrashield Lv.1",
	inventory_image = "shields_inv_ultrashield1.png",
	groups = {armor_shield=1520, armor_heal=380, armor_use=0,armor_fire=76},
	wear = 0,
})
minetest.register_tool("shields:ultrashield2", {
	description = "Ultrashield Lv.2",
	inventory_image = "shields_inv_ultrashield2.png",
	groups = {armor_shield=1540, armor_heal=385, armor_use=0,armor_fire=77},
	wear = 0,
})
minetest.register_tool("shields:ultrashield3", {
	description = "Ultrashield Lv.3",
	inventory_image = "shields_inv_ultrashield3.png",
	groups = {armor_shield=1560, armor_heal=390, armor_use=0,armor_fire=78},
	wear = 0,
})
minetest.register_tool("shields:ultrashield4", {
	description = "Ultrashield Lv.4",
	inventory_image = "shields_inv_ultrashield4.png",
	groups = {armor_shield=1580, armor_heal=395, armor_use=0,armor_fire=79},
	wear = 0,
})
minetest.register_tool("shields:ultrashield5", {
	description = "Ultrashield Lv.5",
	inventory_image = "shields_inv_ultrashield5.png",
	groups = {armor_shield=1600, armor_heal=400, armor_use=0,armor_fire=80},
	wear = 0,
})
minetest.register_tool("shields:ultrashield6", {
	description = "Ultrashield Lv.6",
	inventory_image = "shields_inv_ultrashield6.png",
	groups = {armor_shield=1620, armor_heal=405, armor_use=0,armor_fire=81},
	wear = 0,
})
minetest.register_tool("shields:ultrashield7", {
	description = "Ultrashield Lv.7",
	inventory_image = "shields_inv_ultrashield7.png",
	groups = {armor_shield=1640, armor_heal=410, armor_use=0,armor_fire=82},
	wear = 0,
})
minetest.register_tool("shields:ultrashield8", {
	description = "Ultrashield Lv.8",
	inventory_image = "shields_inv_ultrashield8.png",
	groups = {armor_shield=1660, armor_heal=415, armor_use=0,armor_fire=83},
	wear = 0,
})
minetest.register_tool("shields:ultrashield9", {
	description = "Ultrashield Lv.9",
	inventory_image = "shields_inv_ultrashield9.png",
	groups = {armor_shield=1680, armor_heal=420, armor_use=0,armor_fire=84},
	wear = 0,
})
minetest.register_tool("shields:ultrashield10", {
	description = "Ultrashield Lv.10",
	inventory_image = "shields_inv_ultrashield10.png",
	groups = {armor_shield=1700, armor_heal=425, armor_use=0,armor_fire=85},
	wear = 0,
})
minetest.register_tool("shields:ultrashield11", {
	description = "Ultrashield Lv.11",
	inventory_image = "shields_inv_ultrashield11.png",
	groups = {armor_shield=1720, armor_heal=430, armor_use=0,armor_fire=86},
	wear = 0,
})
minetest.register_tool("shields:ultrashield12", {
	description = "Ultrashield Lv.12",
	inventory_image = "shields_inv_ultrashield12.png",
	groups = {armor_shield=1740, armor_heal=435, armor_use=0,armor_fire=87},
	wear = 0,
})
minetest.register_tool("shields:ultrashield13", {
	description = "Ultrashield Lv.13",
	inventory_image = "shields_inv_ultrashield13.png",
	groups = {armor_shield=1760, armor_heal=440, armor_use=0,armor_fire=88},
	wear = 0,
})
minetest.register_tool("shields:ultrashield14", {
	description = "Ultrashield Lv.14",
	inventory_image = "shields_inv_ultrashield14.png",
	groups = {armor_shield=1780, armor_heal=445, armor_use=0,armor_fire=89},
	wear = 0,
})
minetest.register_tool("shields:ultrashield15", {
	description = "Ultrashield Lv.15",
	inventory_image = "shields_inv_ultrashield15.png",
	groups = {armor_shield=1800, armor_heal=450, armor_use=0,armor_fire=90},
	wear = 0,
})
minetest.register_tool("shields:ultrashield16", {
	description = "Ultrashield Lv.16",
	inventory_image = "shields_inv_ultrashield16.png",
	groups = {armor_shield=1820, armor_heal=455, armor_use=0,armor_fire=91},
	wear = 0,
})
minetest.register_tool("shields:ultrashield17", {
	description = "Ultrashield Lv.17",
	inventory_image = "shields_inv_ultrashield17.png",
	groups = {armor_shield=1840, armor_heal=460, armor_use=0,armor_fire=92},
	wear = 0,
})
minetest.register_tool("shields:ultrashield18", {
	description = "Ultrashield Lv.18",
	inventory_image = "shields_inv_ultrashield18.png",
	groups = {armor_shield=1860, armor_heal=465, armor_use=0,armor_fire=93},
	wear = 0,
})
minetest.register_tool("shields:ultrashield19", {
	description = "Ultrashield Lv.19",
	inventory_image = "shields_inv_ultrashield19.png",
	groups = {armor_shield=1880, armor_heal=470, armor_use=0,armor_fire=94},
	wear = 0,
})
minetest.register_tool("shields:ultrashield20", {
	description = "Ultrashield Lv.20",
	inventory_image = "shields_inv_ultrashield20.png",
	groups = {armor_shield=1900, armor_heal=475, armor_use=0,armor_fire=95},
	wear = 0,
})
minetest.register_tool("shields:ultrashield21", {
	description = "Ultrashield Lv.21",
	inventory_image = "shields_inv_ultrashield21.png",
	groups = {armor_shield=1920, armor_heal=480, armor_use=0,armor_fire=96},
	wear = 0,
})
minetest.register_tool("shields:ultrashield22", {
	description = "Ultrashield Lv.22",
	inventory_image = "shields_inv_ultrashield22.png",
	groups = {armor_shield=1940, armor_heal=485, armor_use=0,armor_fire=97},
	wear = 0,
})
minetest.register_tool("shields:ultrashield23", {
	description = "Ultrashield Lv.23",
	inventory_image = "shields_inv_ultrashield23.png",
	groups = {armor_shield=1960, armor_heal=490, armor_use=0,armor_fire=98},
	wear = 0,
})
minetest.register_tool("shields:ultrashield24", {
	description = "Ultrashield Lv.24",
	inventory_image = "shields_inv_ultrashield24.png",
	groups = {armor_shield=1980, armor_heal=495, armor_use=0,armor_fire=99},
	wear = 0,
})
minetest.register_tool("shields:ultrashield25", {
	description = "Ultrashield Lv.25",
	inventory_image = "shields_inv_ultrashield25.png",
	groups = {armor_shield=2000, armor_heal=500, armor_use=0,armor_fire=100},
	wear = 0,
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
minetest.register_tool("shields:superultrashield", {
	description = "Superultrashield",
	inventory_image = "shields_inv_superultrashield.png",
	groups = {armor_shield=2020, armor_heal=505, armor_use=0,armor_fire=101},
	wear = 0,
})
minetest.register_craft({
	type = 'cooking',
	recipe = 'shields:ultrashield25',
 cooktime = 10000,
	output = 'shields:superultrashield',
})

minetest.register_tool("shields:arenashield1", {
	description = "Arenashield lv.1",
	inventory_image = "shields_inv_arenashield1.png",
	groups = {armor_shield=2040, armor_heal=510, armor_use=0,armor_fire=102},
	wear = 0,
})
minetest.register_tool("shields:arenashield2", {
	description = "Arenashield lv.2",
	inventory_image = "shields_inv_arenashield2.png",
	groups = {armor_shield=2060, armor_heal=515, armor_use=0,armor_fire=103},
	wear = 0,
})
minetest.register_tool("shields:arenashield3", {
	description = "Arenashield lv.3",
	inventory_image = "shields_inv_arenashield3.png",
	groups = {armor_shield=2080, armor_heal=520, armor_use=0,armor_fire=104},
	wear = 0,
})
minetest.register_tool("shields:arenashield4", {
	description = "Arenashield lv.4",
	inventory_image = "shields_inv_arenashield4.png",
	groups = {armor_shield=2100, armor_heal=525, armor_use=0,armor_fire=105},
	wear = 0,
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

minetest.register_tool("shields:titanshield1", {
	description = "Titanshield lv.1",
	inventory_image = "shields_inv_titanshield1.png",
	groups = {armor_shield=2120, armor_heal=530, armor_use=0,armor_fire=106},
	wear = 0,
})
minetest.register_tool("shields:titanshield2", {
	description = "Titanshield lv.2",
	inventory_image = "shields_inv_titanshield2.png",
	groups = {armor_shield=2140, armor_heal=535, armor_use=0,armor_fire=107},
	wear = 0,
})
minetest.register_tool("shields:titanshield3", {
	description = "Titanshield lv.3",
	inventory_image = "shields_inv_titanshield3.png",
	groups = {armor_shield=2160, armor_heal=540, armor_use=0,armor_fire=108},
	wear = 0,
})
minetest.register_tool("shields:titanshield4", {
	description = "Titanshield lv.4",
	inventory_image = "shields_inv_titanshield4.png",
	groups = {armor_shield=2180, armor_heal=545, armor_use=0,armor_fire=109},
	wear = 0,
})
minetest.register_tool("shields:titanshield5", {
	description = "Titanshield lv.5",
	inventory_image = "shields_inv_titanshield5.png",
	groups = {armor_shield=2200, armor_heal=550, armor_use=0,armor_fire=110},
	wear = 0,
})
minetest.register_tool("shields:titanshield6", {
	description = "Titanshield lv.6",
	inventory_image = "shields_inv_titanshield6.png",
	groups = {armor_shield=2220, armor_heal=555, armor_use=0,armor_fire=111},
	wear = 0,
})
minetest.register_tool("shields:titanshield7", {
	description = "Titanshield lv.7",
	inventory_image = "shields_inv_titanshield7.png",
	groups = {armor_shield=2240, armor_heal=560, armor_use=0,armor_fire=112},
	wear = 0,
})
minetest.register_tool("shields:titanshield8", {
	description = "Titanshield lv.8",
	inventory_image = "shields_inv_titanshield8.png",
	groups = {armor_shield=2260, armor_heal=565, armor_use=0,armor_fire=113},
	wear = 0,
})
minetest.register_tool("shields:titanshield9", {
	description = "Titanshield lv.9",
	inventory_image = "shields_inv_titanshield9.png",
	groups = {armor_shield=2280, armor_heal=570, armor_use=0,armor_fire=114},
	wear = 0,
})
minetest.register_tool("shields:titanshield10", {
	description = "Titanshield lv.10",
	inventory_image = "shields_inv_titanshield10.png",
	groups = {armor_shield=2300, armor_heal=575, armor_use=0,armor_fire=115},
	wear = 0,
})

minetest.register_craft({
    output = 'shields:titanshield10',
    recipe = {
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        {'tutorial:titan', 'shields:titanshield9', 'tutorial:titan'},
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
    }
})
minetest.register_craft({
    output = 'shields:titanshield9',
    recipe = {
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        {'tutorial:titan', 'shields:titanshield8', 'tutorial:titan'},
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
    }
})
minetest.register_craft({
    output = 'shields:titanshield8',
    recipe = {
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        {'tutorial:titan', 'shields:titanshield7', 'tutorial:titan'},
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
    }
})
minetest.register_craft({
    output = 'shields:titanshield7',
    recipe = {
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        {'tutorial:titan', 'shields:titanshield6', 'tutorial:titan'},
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
    }
})
minetest.register_craft({
    output = 'shields:titanshield6',
    recipe = {
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        {'tutorial:titan', 'shields:titanshield5', 'tutorial:titan'},
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
    }
})
minetest.register_craft({
    output = 'shields:titanshield5',
    recipe = {
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        {'tutorial:titan', 'shields:titanshield4', 'tutorial:titan'},
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
    }
})
minetest.register_craft({
    output = 'shields:titanshield4',
    recipe = {
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        {'tutorial:titan', 'shields:titanshield3', 'tutorial:titan'},
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
    }
})
minetest.register_craft({
    output = 'shields:titanshield3',
    recipe = {
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        {'tutorial:titan', 'shields:titanshield2', 'tutorial:titan'},
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
    }
})
minetest.register_craft({
    output = 'shields:titanshield2',
    recipe = {
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        {'tutorial:titan', 'shields:titanshield1', 'tutorial:titan'},
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
    }
})
minetest.register_craft({
    output = 'shields:titanshield1',
    recipe = {
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
        {'tutorial:titan', 'shields:arenashield4', 'tutorial:titan'},
        {'tutorial:titan', 'tutorial:titan', 'tutorial:titan'},
    }
})

minetest.register_tool("shields:legendenshield1", {
	description = "Legendshield lv.1",
	inventory_image = "shields_inv_legendenshield1.png",
	groups = {armor_shield=2320, armor_heal=580, armor_use=0,armor_fire=116},
	wear = 0,
})
minetest.register_tool("shields:legendenshield2", {
	description = "Legendshield lv.2",
	inventory_image = "shields_inv_legendenshield2.png",
	groups = {armor_shield=2340, armor_heal=585, armor_use=0,armor_fire=117},
	wear = 0,
})
minetest.register_tool("shields:legendenshield3", {
	description = "Legendshield lv.3",
	inventory_image = "shields_inv_legendenshield3.png",
	groups = {armor_shield=2360, armor_heal=590, armor_use=0,armor_fire=118},
	wear = 0,
})
minetest.register_tool("shields:legendenshield4", {
	description = "Legendshield lv.4",
	inventory_image = "shields_inv_legendenshield4.png",
	groups = {armor_shield=2380, armor_heal=595, armor_use=0,armor_fire=119},
	wear = 0,
})
minetest.register_tool("shields:legendenshield5", {
	description = "Legendshield lv.5",
	inventory_image = "shields_inv_legendenshield5.png",
	groups = {armor_shield=2400, armor_heal=600, armor_use=0,armor_fire=120},
	wear = 0,
})
minetest.register_tool("shields:legendenshield6", {
	description = "Legendshield lv.6",
	inventory_image = "shields_inv_legendenshield6.png",
	groups = {armor_shield=2420, armor_heal=605, armor_use=0,armor_fire=121},
	wear = 0,
})

minetest.register_craft({
    output = 'shields:legendenshield1',
    recipe = {
        {'shields:titanshield10', 'tutorial:bottle5', 'tutorial:bottle5', 'tutorial:bottle5'},
		{'tutorial:bottle5', 'tutorial:bottle5', 'tutorial:bottle5', 'tutorial:bottle5'},
		{'tutorial:bottle5', 'tutorial:bottle5', 'tutorial:bottle5', 'tutorial:bottle5'},
		{'tutorial:bottle5', 'tutorial:bottle5', 'tutorial:bottle5', 'tutorial:bottle5'},
    }
})
minetest.register_craft({
    output = 'tutorial:legendenshield2',
    recipe = {
        {'shields:legendenshield1', 'tutorial:bottle7', 'tutorial:bottle7', 'tutorial:bottle7'},
		{'tutorial:bottle7', 'tutorial:bottle7', 'tutorial:bottle7', 'tutorial:bottle7'},
		{'tutorial:bottle7', 'tutorial:bottle7', 'tutorial:bottle7', 'tutorial:bottle7'},
		{'tutorial:bottle7', 'tutorial:bottle7', 'tutorial:bottle7', 'tutorial:bottle7'},
    }
})
minetest.register_craft({
    output = 'shields:legendenshield3',
    recipe = {
        {'shields:legendenshield2', 'tutorial:bottle9', 'tutorial:bottle9', 'tutorial:bottle9'},
		{'tutorial:bottle9', 'tutorial:bottle9', 'tutorial:bottle9', 'tutorial:bottle9'},
		{'tutorial:bottle9', 'tutorial:bottle9', 'tutorial:bottle9', 'tutorial:bottle9'},
		{'tutorial:bottle9', 'tutorial:bottle9', 'tutorial:bottle9', 'tutorial:bottle9'},
    }
})
minetest.register_craft({
    output = 'shields:legendenshield4',
    recipe = {
        {'shields:legendenshield3', 'tutorial:bottle11', 'tutorial:bottle11', 'tutorial:bottle11'},
		{'tutorial:bottle11', 'tutorial:bottle11', 'tutorial:bottle11', 'tutorial:bottle11'},
		{'tutorial:bottle11', 'tutorial:bottle11', 'tutorial:bottle11', 'tutorial:bottle11'},
		{'tutorial:bottle11', 'tutorial:bottle11', 'tutorial:bottle11', 'tutorial:bottle11'},
    }
})
minetest.register_craft({
    output = 'shields:legendenshield5',
    recipe = {
        {'shields:legendenshield4', 'tutorial:bottleS1', 'tutorial:bottleS1', 'tutorial:bottleS1'},
		{'tutorial:bottleS1', 'tutorial:bottleS1', 'tutorial:bottleS1', 'tutorial:bottleS1'},
		{'tutorial:bottleS1', 'tutorial:bottleS1', 'tutorial:bottleS1', 'tutorial:bottleS1'},
		{'tutorial:bottleS1', 'tutorial:bottleS1', 'tutorial:bottleS1', 'tutorial:bottleS1'},
    }
})
minetest.register_craft({
    output = 'shields:legendenshield6',
    recipe = {
        {'shields:legendenshield5', 'tutorial:bottleS3', 'tutorial:bottleS3', 'tutorial:bottleS3'},
		{'tutorial:bottleS3', 'tutorial:bottleS3', 'tutorial:bottleS3', 'tutorial:bottleS3'},
		{'tutorial:bottleS3', 'tutorial:bottleS3', 'tutorial:bottleS3', 'tutorial:bottleS3'},
		{'tutorial:bottleS3', 'tutorial:bottleS3', 'tutorial:bottleS3', 'tutorial:bottleS3'},
    }
})

minetest.register_tool("shields:superlegendenshield", {
	description = "Superlegendshield Mode 1 (no speed and no jump)",
	inventory_image = "shields_inv_superlegendenshield.png^technic_tool_mode1.png",
	groups = {armor_shield=2440, armor_heal=610, armor_use=0,armor_fire=122},
	wear = 0,
    wield_image = "shields_inv_superlegendenshield.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("shields:superlegendenshield2")
        end
        return itemstack
    end,
})
minetest.register_tool("shields:superlegendenshield2", {
	description = "Superlegendshield Mode 2 (speed and no jump)",
	inventory_image = "shields_inv_superlegendenshield.png^technic_tool_mode2.png",
	groups = {armor_shield=2440, armor_heal=610, armor_use=0,armor_fire=122, physics_speed=0.25},
	wear = 0,
    wield_image = "shields_inv_superlegendenshield.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("shields:superlegendenshield3")
        end
        return itemstack
    end,
})
minetest.register_tool("shields:superlegendenshield3", {
	description = "Superlegendshield Mode 3 (no speed and jump)",
	inventory_image = "shields_inv_superlegendenshield.png^technic_tool_mode3.png",
	groups = {armor_shield=2440, armor_heal=610, armor_use=0,armor_fire=122, physics_jump=0.25},
	wear = 0,
    wield_image = "shields_inv_superlegendenshield.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("shields:superlegendenshield4")
        end
        return itemstack
    end,
})
minetest.register_tool("shields:superlegendenshield4", {
	description = "Superlegendshield Mode 4 (speed and jump)",
	inventory_image = "shields_inv_superlegendenshield.png^technic_tool_mode4.png",
	groups = {armor_shield=2440, armor_heal=610, armor_use=0,armor_fire=122, physics_jump=0.25, physics_speed=0.25},
	wear = 0,
    wield_image = "shields_inv_superlegendenshield.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("shields:superlegendenshield")
        end
        return itemstack
    end,
})

minetest.register_craft({
    output = 'shields:superlegendenshield',
    recipe = {
        {'tutorial:lilabattleaxe2', 'shields:legendenshield6'},
    }
})

minetest.register_tool("shields:regnumshield", {
	description = "Regnumshield Mode 1 (no speed and no jump)",
	inventory_image = "shields_inv_regnumshield.png^technic_tool_mode1.png",
	groups = {armor_shield=2500, armor_heal=1250, armor_use=0,armor_fire=1000},
	wear = 0,
    wield_image = "shields_inv_regnumshield.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("shields:regnumshield2")
        end
        return itemstack
    end,
})
minetest.register_tool("shields:regnumshield2", {
	description = "Regnumshield Mode 2 (speed and no jump)",
	inventory_image = "shields_inv_regnumshield.png^technic_tool_mode2.png",
	groups = {armor_shield=2500, armor_heal=1250, armor_use=0,armor_fire=1000, physics_speed=0.25},
	wear = 0,
    wield_image = "shields_inv_regnumshield.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("shields:regnumshield3")
        end
        return itemstack
    end,
})
minetest.register_tool("shields:regnumshield3", {
	description = "Regnumshield Mode 3 (no speed and jump)",
	inventory_image = "shields_inv_regnumshield.png^technic_tool_mode3.png",
	groups = {armor_shield=2500, armor_heal=1250, armor_use=0,armor_fire=1000, physics_jump=0.25},
	wear = 0,
    wield_image = "shields_inv_regnumshield.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("shields:regnumshield4")
        end
        return itemstack
    end,
})
minetest.register_tool("shields:regnumshield4", {
	description = "Regnumshield Mode 4 (speed and jump)",
	inventory_image = "shields_inv_regnumshield.png^technic_tool_mode4.png",
	groups = {armor_shield=2500, armor_heal=1250, armor_use=0,armor_fire=1000, physics_jump=0.25, physics_speed=0.25},
	wear = 0,
    wield_image = "shields_inv_regnumshield.png",
    on_use = function(itemstack, user, pointed_thing)
        local keys = user:get_player_control()
        if keys["sneak"] == true then
            itemstack:set_name("shields:regnumshield")
        end
        return itemstack
    end,
})