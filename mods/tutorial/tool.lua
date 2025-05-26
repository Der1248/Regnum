--v.2.0.0
--v.1.13.0
--v.1.12.0
--v.1.11.1
--v.1.11.0
--v.1.10.0
--v.1.9.2
--v.1.9.1
--v.1.9.0
--v.1.8.0
--v.1.7.5
--v.1.7.4
--v.1.7.3
--v.1.7.2
--v.1.7.1
--v.1.7.0
--v.1.6.0
--v.1.5.0
--v.1.4.4
--v.1.4.3
--v.1.4.2
--v.1.4.1
--v.1.4.0
--v.1.3.3
--v.1.3.2
--v.1.3.1
--v.1.3.0
--v.1.2.4
--v.1.2.3
--v.1.2.2
--v.1.2.1
--v.1.2.0
--v.1.1.5
--v.1.1.4
--v.1.1.3
--v.1.1.2
--v.1.1.1
--v.1.1.0
--v.1.0.10
--v.1.0.9
--v.1.0.8
--v.1.0.7
--v.1.0.6
--v.1.0.5
--v.1.0.4
--v.1.0.3
--v.1.0.2
--v.1.0.1
--v.1.0.0
minetest.register_tool("tutorial:regnumbattleaxe1", {
	description = "Regnum Battleaxe Mode 1 (dig no water and lava)\nBattleaxe-Lv.MAX",
	inventory_image = "tutorial_regnumbattleaxe.png^technic_tool_mode1.png",
    wield_image = "tutorial_regnumbattleaxe.png",
	groups = {battleaxe_level=15},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=5.0, [16]=0, [17]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=150}
	},
	liquids_pointable = false,
})
minetest.register_tool("tutorial:regnumbattleaxe2", {
	description = "Regnum Battleaxe Mode 2 (dig water and lava)\nBattleaxe-Lv.MAX",
	inventory_image = "tutorial_regnumbattleaxe.png^technic_tool_mode2.png",
    wield_image = "tutorial_regnumbattleaxe.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=15},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=5.0, [16]=0, [17]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=150}
	},
	liquids_pointable = true,
})
minetest.register_tool("tutorial:superlegendenbattleaxe1", {
	description = "Super Legendary Battleaxe Mode 1 (dig water and lava)\nBattleaxe-Lv.122",
	inventory_image = "tutorial_superlegendenbattleaxe.png^technic_tool_mode1.png",
    wield_image = "tutorial_superlegendenbattleaxe.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=15},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=20.0, [16]=0, [17]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=122}
	},
	liquids_pointable = true,
})
minetest.register_tool("tutorial:superlegendenbattleaxe2", {
	description = "Super Legendary Battleaxe Mode 2 (dig no water and lava)\nBattleaxe-Lv.122",
	inventory_image = "tutorial_superlegendenbattleaxe.png^technic_tool_mode2.png",
    wield_image = "tutorial_superlegendenbattleaxe.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=15},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=20.0, [16]=0, [17]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=122}
	},
	liquids_pointable = false,
})
minetest.register_tool("tutorial:lilabattleaxe2", {
	description = "Purple Battleaxe Lv.MAX",
	inventory_image = "tutorial_lilabattleaxe2.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={	
			cracky  = {times={[13]=0, [14]=0, [17]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=10}
	},
	liquids_pointable = true,
})
minetest.register_tool("tutorial:legendenbattleaxe1", {
	description = "Legendary Battleaxe Lv.1\nBattleaxe-Lv.116",
	inventory_image = "tutorial_legendenbattleaxe1.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=12},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=5.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=116}
	},
})
minetest.register_tool("tutorial:legendenbattleaxe2", {
	description = "Legendary Battleaxe Lv.2\nBattleaxe-Lv.117",
	inventory_image = "tutorial_legendenbattleaxe2.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=12},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=4.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=117}
	},
})
minetest.register_tool("tutorial:legendenbattleaxe3", {
	description = "Legendary Battleaxe Lv.3\nBattleaxe-Lv.118",
	inventory_image = "tutorial_legendenbattleaxe3.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=12},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=3.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=118}
	},
})
minetest.register_tool("tutorial:legendenbattleaxe4", {
	description = "Legendary Battleaxe Lv.4\nBattleaxe-Lv.119",
	inventory_image = "tutorial_legendenbattleaxe4.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=12},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=2.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=119}
	},
})
minetest.register_tool("tutorial:legendenbattleaxe5", {
	description = "Legendary Battleaxe Lv.5\nBattleaxe-Lv.120",
	inventory_image = "tutorial_legendenbattleaxe5.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=12},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=1.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=120}
	},
})
minetest.register_tool("tutorial:legendenbattleaxe6", {
	description = "Legendary Battleaxe Lv.6\nBattleaxe-Lv.121",
	inventory_image = "tutorial_legendenbattleaxe6.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=12},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=121}
	},
})
--v.0.23.3
--v.0.23.2
--v.0.23.1
--v.0.23.0
--v.0.22.1
--v.0.22.0
minetest.register_tool("tutorial:titanentverner", {
	description = "Titanium Remover",
	inventory_image = "tutorial_titanentverner.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={cracky  = {times={[12]=75.0,}, uses=1, maxlevel=3},},
		damage_groups = {fleshy=3}
	},
})
minetest.register_tool("tutorial:titanbattleaxe10", {
	description = "Titanium Battleaxe Lv.10\nBattleaxe-Lv.115",
	inventory_image = "tutorial_titanbattleaxe10.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=12},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=115}
	},
})
minetest.register_tool("tutorial:titanbattleaxe9", {
	description = "Titanium Battleaxe Lv.9\nBattleaxe-Lv.114",
	inventory_image = "tutorial_titanbattleaxe9.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=12},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=1.0, [12]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=114}
	},
})
minetest.register_tool("tutorial:titanbattleaxe8", {
	description = "Titanium Battleaxe Lv.8\nBattleaxe-Lv.113",
	inventory_image = "tutorial_titanbattleaxe8.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=12},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=2.0, [12]=30.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=113}
	},
})
minetest.register_tool("tutorial:titanbattleaxe7", {
	description = "Titanium Battleaxe Lv.7\nBattleaxe-Lv.112",
	inventory_image = "tutorial_titanbattleaxe7.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=12},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=3.0, [12]=40.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=112}
	},
})
minetest.register_tool("tutorial:titanbattleaxe6", {
	description = "Titanium Battleaxe Lv.6\nBattleaxe-Lv.111",
	inventory_image = "tutorial_titanbattleaxe6.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=12},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=4.0, [12]=50.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=111}
	},
})
minetest.register_tool("tutorial:titanbattleaxe5", {
	description = "Titanium Battleaxe Lv.5\nBattleaxe-Lv.110",
	inventory_image = "tutorial_titanbattleaxe5.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=12},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=5.0, [12]=60.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=110}
	},
})
minetest.register_tool("tutorial:titanbattleaxe4", {
	description = "Titanium Battleaxe Lv.4\nBattleaxe-Lv.109",
	inventory_image = "tutorial_titanbattleaxe4.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=11},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=6.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=109}
	},
})
minetest.register_tool("tutorial:titanbattleaxe3", {
	description = "Titanium Battleaxe Lv.3\nBattleaxe-Lv.108",
	inventory_image = "tutorial_titanbattleaxe3.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=11},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=7.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=108}
	},
})
minetest.register_tool("tutorial:titanbattleaxe2", {
	description = "Titanium Battleaxe Lv.2\nBattleaxe-Lv.107",
	inventory_image = "tutorial_titanbattleaxe2.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=11},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=8.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=107}
	},
})
minetest.register_tool("tutorial:titanbattleaxe1", {
	description = "Titanium Battleaxe Lv.1\nBattleaxe-Lv.106",
	inventory_image = "tutorial_titanbattleaxe1.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=11},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=9.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=106}
	},
})
--v.0.21.0
--v.0.20.0
minetest.register_tool("tutorial:lilabattleaxe", {
	description = "Purple Battleaxe Lv.1 (only for red and blue ores)",
	inventory_image = "tutorial_lilabattleaxe.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={			
			cracky  = {times={[13]=0,}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=10}
	},
})
--v.0.19.1
minetest.register_tool("tutorial:arena_battleaxe4", {
	description = "Arena Battleaxe Lv.4\nBattleaxe-Lv.105",
	inventory_image = "tutorial_arenabattleaxe4.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=11},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=105}
	},
})
minetest.register_tool("tutorial:arena_battleaxe3", {
	description = "Arena Battleaxe Lv.3\nBattleaxe-Lv.104",
	inventory_image = "tutorial_arenabattleaxe3.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=11},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=104}
	},
})
minetest.register_tool("tutorial:arena_battleaxe2", {
	description = "Arena Battleaxe Lv.2\nBattleaxe-Lv.103",
	inventory_image = "tutorial_arenabattleaxe2.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=11},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=30.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=103}
	},
})
minetest.register_tool("tutorial:arena_battleaxe1", {
	description = "Arena Battleaxe Lv.1\nBattleaxe-Lv.102",
	inventory_image = "tutorial_arenabattleaxe1.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=11},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=40.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=102}
	},
})
--v.0.18.0
minetest.register_tool("tutorial:adminbattleaxe", {
	description = "Admin Battleaxe Mode 1 (dig water and lava)",
	inventory_image = "tutorial_adminbattleaxe.png^technic_tool_mode1.png",
    wield_image = "tutorial_adminbattleaxe.png",
	groups = {battleaxe_level=15},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},                      
			choppy  =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},			
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},		
			cracky  =	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=0, [16]=0, [17]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=2000}
	},
	liquids_pointable = false,
})
minetest.register_tool("tutorial:adminbattleaxe2", {
	description = "Admin Battleaxe Mode 2 (dig no water and lava)",
	inventory_image = "tutorial_adminbattleaxe.png^technic_tool_mode2.png",
    wield_image = "tutorial_adminbattleaxe.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=15},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={	
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},	
			snappy  =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},                      
			choppy  =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},			
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky  =	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=0, [16]=0, [17]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=2000}
	},
	liquids_pointable = true,
})
--v.0.17.0
--v.0.16.0
minetest.register_tool("tutorial:ultrabattleaxe", {
	description = "Super Ultra Battleaxe\nBattleaxe-Lv.101",
	inventory_image = "tutorial_super_ultrabattleaxe.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=1.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=101}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe25", {
	description = "Ultra Battleaxe Lv.25\nBattleaxe-Lv.100",
	inventory_image = "tutorial_ultrabattleaxe25.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=4.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=100}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe24", {
	description = "Ultra Battleaxe Lv.24\nBattleaxe-Lv.99",
	inventory_image = "tutorial_ultrabattleaxe24.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=8.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=99}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe23", {
	description = "Ultra Battleaxe Lv.23\nBattleaxe-Lv.98",
	inventory_image = "tutorial_ultrabattleaxe23.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=12.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=98}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe22", {
	description = "Ultra Battleaxe Lv.22\nBattleaxe-Lv.97",
	inventory_image = "tutorial_ultrabattleaxe22.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=16.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=97}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe21", {
	description = "Ultra Battleaxe Lv.21\nBattleaxe-Lv.96",
	inventory_image = "tutorial_ultrabattleaxe21.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=96}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe20", {
	description = "Ultra Battleaxe Lv.20\nBattleaxe-Lv.95",
	inventory_image = "tutorial_ultrabattleaxe20.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=24.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=95}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe19", {
	description = "Ultra Battleaxe Lv.19\nBattleaxe-Lv.94",
	inventory_image = "tutorial_ultrabattleaxe19.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=28.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=94}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe18", {
	description = "Ultra Battleaxe Lv.18\nBattleaxe-Lv.93",
	inventory_image = "tutorial_ultrabattleaxe18.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=32.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=93}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe17", {
	description = "Ultra Battleaxe Lv.17\nBattleaxe-Lv.92",
	inventory_image = "tutorial_ultrabattleaxe17.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=36.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=92}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe16", {
	description = "Ultra Battleaxe Lv.16\nBattleaxe-Lv.91",
	inventory_image = "tutorial_ultrabattleaxe16.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=40.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=91}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe15", {
	description = "Ultra Battleaxe Lv.15\nBattleaxe-Lv.90",
	inventory_image = "tutorial_ultrabattleaxe15.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=44.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=90}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe14", {
	description = "Ultra Battleaxe Lv.14\nBattleaxe-Lv.89",
	inventory_image = "tutorial_ultrabattleaxe14.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=48.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=89}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe13", {
	description = "Ultra Battleaxe Lv.13\nBattleaxe-Lv.88",
	inventory_image = "tutorial_ultrabattleaxe13.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=52.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=88}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe12", {
	description = "Ultra Battleaxe Lv.12\nBattleaxe-Lv.87",
	inventory_image = "tutorial_ultrabattleaxe12.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=56.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=87}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe11", {
	description = "Ultra Battleaxe Lv.11\nBattleaxe-Lv.86",
	inventory_image = "tutorial_ultrabattleaxe11.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=60.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=86}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe10", {
	description = "Ultra Battleaxe Lv.10\nBattleaxe-Lv.85",
	inventory_image = "tutorial_ultrabattleaxe10.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=64.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=85}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe9", {
	description = "Ultra Battleaxe Lv.9\nBattleaxe-Lv.84",
	inventory_image = "tutorial_ultrabattleaxe9.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=68.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=84}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe8", {
	description = "Ultra Battleaxe Lv.8\nBattleaxe-Lv.83",
	inventory_image = "tutorial_ultrabattleaxe8.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=72.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=83}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe7", {
	description = "Ultra Battleaxe Lv.7\nBattleaxe-Lv.82",
	inventory_image = "tutorial_ultrabattleaxe7.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=76.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=82}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe6", {
	description = "Ultra Battleaxe Lv.6\nBattleaxe-Lv.81",
	inventory_image = "tutorial_ultrabattleaxe6.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=80.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=81}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe5", {
	description = "Ultra Battleaxe Lv.5\nBattleaxe-Lv.80",
	inventory_image = "tutorial_ultrabattleaxe5.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=84.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=80}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe4", {
	description = "Ultra Battleaxe Lv.4\nBattleaxe-Lv.79",
	inventory_image = "tutorial_ultrabattleaxe4.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=88.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=79}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe3", {
	description = "Ultra Battleaxe Lv.3\nBattleaxe-Lv.78",
	inventory_image = "tutorial_ultrabattleaxe3.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=1.0, [10]=92.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=78}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe2", {
	description = "Ultra Battleaxe Lv.2\nBattleaxe-Lv.77",
	inventory_image = "tutorial_ultrabattleaxe2.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=2.0, [10]=96.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=77}
	},
})
minetest.register_tool("tutorial:ultrabattleaxe1", {
	description = "Ultra Battleaxe Lv.1\nBattleaxe-Lv.76",
	inventory_image = "tutorial_ultrabattleaxe1.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=3.0, [10]=100.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=76}
	},
})
--v.0.15.0
minetest.register_tool("tutorial:kristallbattleaxe5", {
	description = "Crystal Battleaxe Lv.5\nBattleaxe-Lv.75",
	inventory_image = "tutorial_kristallbattleaxe5.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=4.0, [10]=110.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=75}
	},
})
minetest.register_tool("tutorial:kristallbattleaxe4", {
	description = "Crystal Battleaxe Lv.4\nBattleaxe-Lv.74",
	inventory_image = "tutorial_kristallbattleaxe4.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=10},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=1.0, [9]=5.0, [10]=120.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=74}
	},
})
minetest.register_tool("tutorial:kristallbattleaxe3", {
	description = "Crystal Battleaxe Lv.3\nBattleaxe-Lv.73",
	inventory_image = "tutorial_kristallbattleaxe3.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=9},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=2.0, [9]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=73}
	},
})
minetest.register_tool("tutorial:kristallbattleaxe2", {
	description = "Crystal Battleaxe Lv.2\nBattleaxe-Lv.72",
	inventory_image = "tutorial_kristallbattleaxe2.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=9},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=3.0, [9]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=72}
	},
})
minetest.register_tool("tutorial:kristallbattleaxe1", {
	description = "Crystal Battleaxe Lv.1\nBattleaxe-Lv.71",
	inventory_image = "tutorial_kristallbattleaxe1.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=9},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=4.0, [9]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=71}
	},
})
--v.0.14.0
minetest.register_tool("tutorial:superenergybattleaxe7", {
	description = "Super Energy Battleaxe Lv.7\nBattleaxe-Lv.70",
	inventory_image = "tutorial_superenergybattleaxe7.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=8},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=1.0, [8]=5.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=70}
	},
})
minetest.register_tool("tutorial:superenergybattleaxe6", {
	description = "Super Energy Battleaxe Lv.6\nBattleaxe-Lv.69",
	inventory_image = "tutorial_superenergybattleaxe6.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=8},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=3.0, [8]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=69}
	},
})
minetest.register_tool("tutorial:superenergybattleaxe5", {
	description = "Super Energy Battleaxe Lv.5\nBattleaxe-Lv.68",
	inventory_image = "tutorial_superenergybattleaxe5.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=8},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=6.0, [8]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=68}
	},
})
minetest.register_tool("tutorial:superenergybattleaxe4", {
	description = "Super Energy Battleaxe Lv.4\nBattleaxe-Lv.67",
	inventory_image = "tutorial_superenergybattleaxe4.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=8},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=9.0, [8]=30.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=67}
	},
})
minetest.register_tool("tutorial:superenergybattleaxe3", {
	description = "Super Energy Battleaxe Lv.3\nBattleaxe-Lv.66",
	inventory_image = "tutorial_superenergybattleaxe3.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=8},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=12.0, [8]=40.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=66}
	},
})
minetest.register_tool("tutorial:superenergybattleaxe2", {
	description = "Super Energy Battleaxe Lv.2\nBattleaxe-Lv.65",
	inventory_image = "tutorial_superenergybattleaxe2.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=8},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=15.0, [8]=50.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=65}
	},
})
minetest.register_tool("tutorial:superenergybattleaxe1", {
	description = "Super Energy Battleaxe Lv.1\nBattleaxe-Lv.64",
	inventory_image = "tutorial_superenergybattleaxe1.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=8},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=20.0, [8]=60.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=64}
	},
})
--v.0.13.0
minetest.register_tool("tutorial:energybattleaxe12", {
	description = "Energy Battleaxe Lv.12\nBattleaxe-Lv.63",
	inventory_image = "tutorial_energybattleaxe12.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=7},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=1.0, [7]=25.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=63}
	},
})
minetest.register_tool("tutorial:energybattleaxe11", {
	description = "Energy Battleaxe Lv.11\nBattleaxe-Lv.62",
	inventory_image = "tutorial_energybattleaxe11.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=7},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=3.0, [7]=50.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=62}
	},
})
minetest.register_tool("tutorial:energybattleaxe10", {
	description = "Energy Battleaxe Lv.10\nBattleaxe-Lv.61",
	inventory_image = "tutorial_energybattleaxe10.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=6},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=5.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=61}
	},
})
minetest.register_tool("tutorial:energybattleaxe9", {
	description = "Energy Battleaxe Lv.9\nBattleaxe-Lv.60",
	inventory_image = "tutorial_energybattleaxe9.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=6},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=60}
	},
})
minetest.register_tool("tutorial:energybattleaxe8", {
	description = "Energy Battleaxe Lv.8\nBattleaxe-Lv.59",
	inventory_image = "tutorial_energybattleaxe8.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=6},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=15.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=59}
	},
})
minetest.register_tool("tutorial:energybattleaxe7", {
	description = "Energy Battleaxe Lv.7\nBattleaxe-Lv.58",
	inventory_image = "tutorial_energybattleaxe7.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=6},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=58}
	},
})
minetest.register_tool("tutorial:energybattleaxe6", {
	description = "Energy Battleaxe Lv.6\nBattleaxe-Lv.57",
	inventory_image = "tutorial_energybattleaxe6.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=6},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=25.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=57}
	},
})
minetest.register_tool("tutorial:energybattleaxe5", {
	description = "Energy Battleaxe Lv.5\nBattleaxe-Lv.56",
	inventory_image = "tutorial_energybattleaxe5.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=6},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=30.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=56}
	},
})
minetest.register_tool("tutorial:energybattleaxe4", {
	description = "Energy Battleaxe Lv.4\nBattleaxe-Lv.55",
	inventory_image = "tutorial_energybattleaxe4.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=6},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=35.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=55}
	},
})
minetest.register_tool("tutorial:energybattleaxe3", {
	description = "Energy Battleaxe Lv.3\nBattleaxe-Lv.54",
	inventory_image = "tutorial_energybattleaxe3.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=6},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=40.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=54}
	},
})
minetest.register_tool("tutorial:energybattleaxe2", {
	description = "Energy Battleaxe Lv.2\nBattleaxe-Lv.53",
	inventory_image = "tutorial_energybattleaxe2.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=6},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=45.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=53}
	},
})
minetest.register_tool("tutorial:energybattleaxe1", {
	description = "Energy Battleaxe Lv.1\nBattleaxe-Lv.52",
	inventory_image = "tutorial_energybattleaxe1.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=6},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=50.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=52}
	},
})
--v.0.12.0
minetest.register_tool("tutorial:uraniumbattleaxe2", {
	description = "Uranium Battleaxe Lv.2\nBattleaxe-Lv.51",
	inventory_image = "tutorial_uraniumbattleaxe2.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=5},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=1.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=51}
	},
})
minetest.register_tool("tutorial:battleaxe", {
	description = "Battleaxe\nBattleaxe-Lv.0",
	inventory_image = "tutorial_battleaxe.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=1},
	},
})
--v.0.11.0
minetest.register_tool("tutorial:uraniumbattleaxe1", {
	description = "Uranium Battleaxe Lv.1\nBattleaxe-Lv.50",
	inventory_image = "tutorial_uraniumbattleaxe1.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=5},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0.5, [5]=2.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=50}
	},
})
minetest.register_tool("tutorial:superbattleaxe4", {
	description = "Super Battleaxe Lv.4\nBattleaxe-Lv.49",
	inventory_image = "tutorial_superbattleaxe4.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=5},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=1.0, [5]=5.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=49}
	},
})
minetest.register_tool("tutorial:superbattleaxe3", {
	description = "Super Battleaxe Lv.3\nBattleaxe-Lv.48",
	inventory_image = "tutorial_superbattleaxe3.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=5},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=2.0, [5]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=48}
	},
})
minetest.register_tool("tutorial:superbattleaxe2", {
	description = "Super Battleaxe Lv.2\nBattleaxe-Lv.47",
	inventory_image = "tutorial_superbattleaxe2.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=5},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=3.0, [5]=15.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=47}
	},
})
minetest.register_tool("tutorial:superbattleaxe1", {
	description = "Super Battleaxe Lv.1\nBattleaxe-Lv.46",
	inventory_image = "tutorial_superbattleaxe1.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=5},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=4.0, [5]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=46}
	},
})
--v.0.10.1
minetest.register_tool("tutorial:zauberstab", {
	description = "Magic Stick",
	inventory_image = "tutorial_zauberstab.png",
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab9", {
	description = "Magic Stick Lv.MAX",
	inventory_image = "tutorial_zauberstab9.png",
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab8", {
	description = "Magic Stick Lv.8",
	inventory_image = "tutorial_zauberstab8.png",
	groups = {not_in_creative_inventory=1},
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab7", {
	description = "Magic Stick Lv.7",
	inventory_image = "tutorial_zauberstab7.png",
	groups = {not_in_creative_inventory=1},
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab6", {
	description = "Magic Stick Lv.6",
	inventory_image = "tutorial_zauberstab6.png",
	groups = {not_in_creative_inventory=1},
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab5", {
	description = "Magic Stick Lv.5",
	inventory_image = "tutorial_zauberstab5.png",
	groups = {not_in_creative_inventory=1},
	light_source = 12,
})
--v.0.10.0
--v.0.9.0
minetest.register_tool("tutorial:cloudbattleaxe_mega1", {
	description = "Cloud Battleaxe Lv.1\nBattleaxe-Lv.21",
	inventory_image = "tutorial_cloudbattleaxe_mega1.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=24.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=21},
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega2", {
	description = "Cloud Battleaxe Lv.2\nBattleaxe-Lv.22",
	inventory_image = "tutorial_cloudbattleaxe_mega2.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=23.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=22},
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega3", {
	description = "Cloud Battleaxe Lv.3\nBattleaxe-Lv.23",
	inventory_image = "tutorial_cloudbattleaxe_mega3.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=22.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=23},
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega4", {
	description = "Cloud Battleaxe Lv.4\nBattleaxe-Lv.24",
	inventory_image = "tutorial_cloudbattleaxe_mega4.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=21.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=24},
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega5", {
	description = "Cloud Battleaxe Lv.5\nBattleaxe-Lv.25",
	inventory_image = "tutorial_cloudbattleaxe_mega5.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=25},
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega6", {
	description = "Cloud Battleaxe Lv.6\nBattleaxe-Lv.26",
	inventory_image = "tutorial_cloudbattleaxe_mega6.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=19.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=26},
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega7", {
	description = "Cloud Battleaxe Lv.7\nBattleaxe-Lv.27",
	inventory_image = "tutorial_cloudbattleaxe_mega7.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=18.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=27},
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega8", {
	description = "Cloud Battleaxe Lv.8\nBattleaxe-Lv.28",
	inventory_image = "tutorial_cloudbattleaxe_mega8.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=17.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=28},
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega9", {
	description = "Cloud Battleaxe Lv.9\nBattleaxe-Lv.29",
	inventory_image = "tutorial_cloudbattleaxe_mega9.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=16.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=29},
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega10", {
	description = "Cloud Battleaxe Lv.10\nBattleaxe-Lv.30",
	inventory_image = "tutorial_cloudbattleaxe_mega10.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=15.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=30},
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega11", {
	description = "Cloud Battleaxe Lv.11\nBattleaxe-Lv.31",
	inventory_image = "tutorial_cloudbattleaxe_mega11.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=14.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=31},
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega12", {
	description = "Cloud Battleaxe Lv.12\nBattleaxe-Lv.32",
	inventory_image = "tutorial_cloudbattleaxe_mega12.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=13.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=32}
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega13", {
	description = "Cloud Battleaxe Lv.13\nBattleaxe-Lv.33",
	inventory_image = "tutorial_cloudbattleaxe_mega13.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=12.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=33}
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega14", {
	description = "Cloud Battleaxe Lv.14\nBattleaxe-Lv.34",
	inventory_image = "tutorial_cloudbattleaxe_mega14.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=11.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=34}
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega15", {
	description = "Cloud Battleaxe Lv.15\nBattleaxe-Lv.35",
	inventory_image = "tutorial_cloudbattleaxe_mega15.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=10.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=35}
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega16", {
	description = "Cloud Battleaxe Lv.16\nBattleaxe-Lv.36",
	inventory_image = "tutorial_cloudbattleaxe_mega16.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=9.5}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=36}
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega17", {
	description = "Cloud Battleaxe Lv.17\nBattleaxe-Lv.37",
	inventory_image = "tutorial_cloudbattleaxe_mega17.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=9.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=37}
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega18", {
	description = "Cloud Battleaxe Lv.18\nBattleaxe-Lv.38",
	inventory_image = "tutorial_cloudbattleaxe_mega18.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=8.5}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=38}
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega19", {
	description = "Cloud Battleaxe Lv.19\nBattleaxe-Lv.39",
	inventory_image = "tutorial_cloudbattleaxe_mega19.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=8.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=39}
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega20", {
	description = "Cloud Battleaxe Lv.20\nBattleaxe-Lv.40",
	inventory_image = "tutorial_cloudbattleaxe_mega20.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=7.5}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=40}
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega21", {
	description = "Cloud Battleaxe Lv.21\nBattleaxe-Lv.41",
	inventory_image = "tutorial_cloudbattleaxe_mega21.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=7.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=41}
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega22", {
	description = "Cloud Battleaxe Lv.22\nBattleaxe-Lv.42",
	inventory_image = "tutorial_cloudbattleaxe_mega22.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=6.5}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=42}
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega23", {
	description = "Cloud Battleaxe Lv.23\nBattleaxe-Lv.43",
	inventory_image = "tutorial_cloudbattleaxe_mega23.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=6.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=43}
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega24", {
	description = "Cloud Battleaxe Lv.24\nBattleaxe-Lv.44",
	inventory_image = "tutorial_cloudbattleaxe_mega24.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=5.5}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=44}
	},
})
minetest.register_tool("tutorial:cloudbattleaxe_mega25", { 
	description = "Cloud Battleaxe Lv.25\nBattleaxe-Lv.45",
	inventory_image = "tutorial_cloudbattleaxe_mega25.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=4},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=5.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=45}
	},
})
--v.0.8.0
--v.0.7.2
minetest.register_tool("tutorial:cloudentverner1", {
	description = "Clouds Remover Lv.1",
	inventory_image = "tutorial_cloudentverner.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=1.0}, uses=50, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner2", {
	description = "Clouds Remover Lv.2",
	inventory_image = "tutorial_cloudentverner2.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.9}, uses=100, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner3", {
	description = "Clouds Remover Lv.3",
	inventory_image = "tutorial_cloudentverner3.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.8}, uses=150, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner4", {
	description = "Clouds Remover Lv.4",
	inventory_image = "tutorial_cloudentverner4.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.7}, uses=200, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner5", {
	description = "Clouds Remover Lv.5",
	inventory_image = "tutorial_cloudentverner5.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.6}, uses=250, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner6", {
	description = "Clouds Remover Lv.6",
	inventory_image = "tutorial_cloudentverner6.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.5}, uses=300, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner7", {
	description = "Clouds Remover Lv.7",
	inventory_image = "tutorial_cloudentverner7.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.4}, uses=350, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner8", {
	description = "Clouds Remover Lv.8",
	inventory_image = "tutorial_cloudentverner8.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.3}, uses=400, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner9", {
	description = "Clouds Remover Lv.9",
	inventory_image = "tutorial_cloudentverner9.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.2}, uses=450, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner10", {
	description = "Clouds Remover Lv.10",
	inventory_image = "tutorial_cloudentverner10.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0.1}, uses=500, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner11", {
	description = "Clouds Remover Lv.11",
	inventory_image = "tutorial_cloudentverner11.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=550, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner12", {
	description = "Clouds Remover Lv.12",
	inventory_image = "tutorial_cloudentverner12.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=600, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner13", {
	description = "Clouds Remover Lv.13",
	inventory_image = "tutorial_cloudentverner13.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=650, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner14", {
	description = "Clouds Remover Lv.14",
	inventory_image = "tutorial_cloudentverner14.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=700, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner15", {
	description = "Clouds Remover Lv.15",
	inventory_image = "tutorial_cloudentverner15.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=750, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner16", {
	description = "Clouds Remover Lv.16",
	inventory_image = "tutorial_cloudentverner16.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=800, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner17", {
	description = "Clouds Remover Lv.17",
	inventory_image = "tutorial_cloudentverner17.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=850, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner18", {
	description = "Clouds Remover Lv.18",
	inventory_image = "tutorial_cloudentverner18.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=900, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner19", {
	description = "Clouds Remover Lv.19",
	inventory_image = "tutorial_cloudentverner19.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=950, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner20", {
	description = "Clouds Remover Lv.20",
	inventory_image = "tutorial_cloudentverner20.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0}, uses=1000, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:cloudentverner21", {
	description = "Clouds Remover Lv.MAX",
	inventory_image = "tutorial_cloudentverner21.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[0]=0, [4]=25.00}, uses=0, maxlevel=3}
		}
	},
})
--v.0.7.1
minetest.register_tool("tutorial:zauberstab4", {
	description = "Magic Stick Lv.4",
	inventory_image = "tutorial_zauberstab4.png",
	groups = {not_in_creative_inventory=1},
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab3", {
	description = "Magic Stick Lv.3",
	inventory_image = "tutorial_zauberstab3.png",
	groups = {not_in_creative_inventory=1},
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab2", {
	description = "Magic Stick Lv.2",
	inventory_image = "tutorial_zauberstab2.png",
	groups = {not_in_creative_inventory=1},
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab1", {
	description = "Magic Stick Lv.1",
	inventory_image = "tutorial_zauberstab1.png",
	groups = {not_in_creative_inventory=1},
	light_source = 12,
})
--v.0.7.0
minetest.register_tool("tutorial:swored_zauber1", {
	description = "Magic Sword Lv.1",
	inventory_image = "tutorial_zauberschwert1.png",
	groups = {not_in_creative_inventory=1},
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber2", {
	description = "Magic Sword Lv.2",
	inventory_image = "tutorial_zauberschwert2.png",
	groups = {not_in_creative_inventory=1},
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber3", {
	description = "Magic Sword Lv.3",
	inventory_image = "tutorial_zauberschwert3.png",
	groups = {not_in_creative_inventory=1},
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber4", {
	description = "Magic Sword Lv.4",
	inventory_image = "tutorial_zauberschwert4.png",
	groups = {not_in_creative_inventory=1},
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber5", {
	description = "Magic Sword Lv.5",
	inventory_image = "tutorial_zauberschwert5.png",
	groups = {not_in_creative_inventory=1},
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber6", {
	description = "Magic Sword Lv.6",
	inventory_image = "tutorial_zauberschwert6.png",
	groups = {not_in_creative_inventory=1},
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber7", {
	description = "Magic Sword Lv.7",
	inventory_image = "tutorial_zauberschwert7.png",
	groups = {not_in_creative_inventory=1},
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber8", {
	description = "Magic Sword Lv.8",
	inventory_image = "tutorial_zauberschwert8.png",
	groups = {not_in_creative_inventory=1},
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber9", {
	description = "Magic Sword Lv.MAX",
	inventory_image = "tutorial_zauberschwert9.png",
	light_source = 2,
})
--v.0.6.6
minetest.register_tool("tutorial:battleaxe_mega16", {
	description = "Mega Battleaxe Lv.16\nBattleaxe-Lv.16",
	inventory_image = "tutorial_battleaxe_mega16.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=16},
	},
})
minetest.register_tool("tutorial:battleaxe_mega17", {
	description = "Mega Battleaxe Lv.17\nBattleaxe-Lv.17",
	inventory_image = "tutorial_battleaxe_mega17.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=17},
	},
})
minetest.register_tool("tutorial:battleaxe_mega18", {
	description = "Mega Battleaxe Lv.18\nBattleaxe-Lv.18",
	inventory_image = "tutorial_battleaxe_mega18.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=18},
	},
})
minetest.register_tool("tutorial:battleaxe_mega19", {
	description = "Mega Battleaxe Lv.19\nBattleaxe-Lv.19",
	inventory_image = "tutorial_battleaxe_mega19.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=19},
	},
})
minetest.register_tool("tutorial:battleaxe_mega20", {
	description = "Mega Battleaxe Lv.20\nBattleaxe-Lv.20",
	inventory_image = "tutorial_battleaxe_mega20.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=20},
	},
})
--v.0.6.5
minetest.register_tool("tutorial:battleaxe_mega13", {
	description = "Mega Battleaxe Lv.13\nBattleaxe-Lv.13",
	inventory_image = "tutorial_battleaxe_mega13.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=13},
	},
})
minetest.register_tool("tutorial:battleaxe_mega14", {
	description = "Mega Battleaxe Lv.14\nBattleaxe-Lv.14",
	inventory_image = "tutorial_battleaxe_mega14.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	},
})
minetest.register_tool("tutorial:battleaxe_mega15", {
	description = "Mega Battleaxe Lv.15\nBattleaxe-Lv.15",
	inventory_image = "tutorial_battleaxe_mega15.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=15},
	},
})
--v.0.6.4
minetest.register_tool("tutorial:battleaxe_mega9", {
	description = "Mega Battleaxe Lv.9\nBattleaxe-Lv.9",
	inventory_image = "tutorial_battleaxe_mega9.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.2, [2]=0.2, [3]=0.2}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.2, [2]=0.2, [3]=0.2}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.2, [2]=0.2, [3]=0.2}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.2, [2]=0.2, [3]=0.2}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.2, [2]=0.2, [3]=0.2}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
})
minetest.register_tool("tutorial:battleaxe_mega10", {
	description = "Mega Battleaxe Lv.10\nBattleaxe-Lv.10",
	inventory_image = "tutorial_battleaxe_mega10.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
})
minetest.register_tool("tutorial:battleaxe_mega11", {
	description = "Mega Battleaxe Lv.11\nBattleaxe-Lv.11",
	inventory_image = "tutorial_battleaxe_mega11.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=11},
	},
})
minetest.register_tool("tutorial:battleaxe_mega12", {
	description = "Mega Battleaxe Lv.12\nBattleaxe-Lv.12",
	inventory_image = "tutorial_battleaxe_mega12.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
})
--v.0.6.3
minetest.register_tool("tutorial:battleaxe_mega5", {
	description = "Mega Battleaxe Lv.5\nBattleaxe-Lv.5",
	inventory_image = "tutorial_battleaxe_mega5.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.6, [2]=0.6, [3]=0.6}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.6, [2]=0.6, [3]=0.6}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.6, [2]=0.6, [3]=0.6}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.6, [2]=0.6, [3]=0.6}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.6, [2]=0.6, [3]=0.6}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})
minetest.register_tool("tutorial:battleaxe_mega6", {
	description = "Mega Battleaxe Lv.6\nBattleaxe-Lv.6",
	inventory_image = "tutorial_battleaxe_mega6.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.5, [2]=0.5, [3]=0.5}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})
minetest.register_tool("tutorial:battleaxe_mega7", {
	description = "Mega Battleaxe Lv.7\nBattleaxe-Lv.7",
	inventory_image = "tutorial_battleaxe_mega7.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.4, [2]=0.4, [3]=0.4}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.4, [2]=0.4, [3]=0.4}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.4, [2]=0.4, [3]=0.4}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.4, [2]=0.4, [3]=0.4}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.4, [2]=0.4, [3]=0.4}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
})
minetest.register_tool("tutorial:battleaxe_mega8", {
	description = "Mega Battleaxe Lv.8\nBattleaxe-Lv.8",
	inventory_image = "tutorial_battleaxe_mega8.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.3, [2]=0.3, [3]=0.3}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.3, [2]=0.3, [3]=0.3}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.3, [2]=0.3, [3]=0.3}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.3, [2]=0.3, [3]=0.3}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.3, [2]=0.3, [3]=0.3}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})
--v.0.6.2
--v.0.6.1
minetest.register_tool("tutorial:battleaxe_mega4", {
	description = "Mega Battleaxe Lv.4\nBattleaxe-Lv.4",
	inventory_image = "tutorial_battleaxe_mega4.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.7, [2]=0.7, [3]=0.7}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.7, [2]=0.7, [3]=0.7}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.7, [2]=0.7, [3]=0.7}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.7, [2]=0.7, [3]=0.7}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.7, [2]=0.7, [3]=0.7}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})
minetest.register_tool("tutorial:battleaxe_mega3", {
	description = "Mega Battleaxe Lv.3\nBattleaxe-Lv.3",
	inventory_image = "tutorial_battleaxe_mega3.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.8, [2]=0.8, [3]=0.8}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.8, [2]=0.8, [3]=0.8}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.8, [2]=0.8, [3]=0.8}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.8, [2]=0.8, [3]=0.8}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.8, [2]=0.8, [3]=0.8}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=3},
	},
})
minetest.register_tool("tutorial:battleaxe_mega2", {
	description = "Mega Battleaxe Lv.2\nBattleaxe-Lv.2",
	inventory_image = "tutorial_battleaxe_mega2.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0.9, [2]=0.9, [3]=0.9}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0.9, [2]=0.9, [3]=0.9}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0.9, [2]=0.9, [3]=0.9}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0.9, [2]=0.9, [3]=0.9}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=0.9, [2]=0.9, [3]=0.9}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=2},
	},
})
minetest.register_tool("tutorial:battleaxe_mega1", {
	description = "Mega Battleaxe Lv.1\nBattleaxe-Lv.1",
	inventory_image = "tutorial_battleaxe_mega1.png",
	groups = {not_in_creative_inventory=1, battleaxe_level=3},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
		    snappy	=	{times={[1]=1.0, [2]=1.0, [3]=1.0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=1.0, [2]=1.0, [3]=1.0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=1.0, [2]=1.0, [3]=1.0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=1.0, [2]=1.0, [3]=1.0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=1.0, [2]=1.0, [3]=1.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=1},
	},
})
minetest.register_tool('tutorial:paxel_super', {
	description = 'Super Paxel',
	inventory_image = 'tutorial_tool_superpaxel.png',
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		full_punch_interval = 0.4,
		max_drop_level=3,
		groupcaps={
			choppy	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
			cracky	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})
--v.0.6.0
minetest.register_tool("tutorial:axe_super", {
	description = "Super Axe",
	inventory_image = "tutorial_tool_cediaxt.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			choppy	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
			fleshy	=	{times={[2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
		}
	},
})
--v.0.5.2
minetest.register_tool("tutorial:shovel_super", {
	description = "Super Shovel",
	inventory_image = "tutorial_tool_cedishovel.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			crumbly =	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
		}
	},
})
--v.0.5.1
--v.0.5.0
minetest.register_tool("tutorial:pick_super", {
	description = "Super Pick",
	inventory_image = "tutorial_tool_cedipick.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=0, maxlevel=3},
		}
	},
})
--v.0.4.0
--v.0.3.0
--v.0.2.0
--v.0.1.0
minetest.register_tool("tutorial:pick_ice", {
	description = "Ice Pick",
	inventory_image = "tutorial_tool_icepick.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=1000, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:shovel_ice", {
	description = "Ice Shovel",
	inventory_image = "tutorial_tool_iceshovel.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			crumbly	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=1000, maxlevel=3}
		}
	},
})
minetest.register_tool("tutorial:axe_ice", {
	description = "Ice Axe",
	inventory_image = "tutorial_tool_iceaxt.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			fleshy	=	{times={[2]=2.0, [3]=2.0}, uses=1000, maxlevel=3},
			choppy	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=1000, maxlevel=3},
		}
	},
})
minetest.register_tool("tutorial:sword_ice", {
	description = "Ice Sword",
	inventory_image = "tutorial_tool_icesword.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			fleshy	=	{times={[2]=2.0, [3]=2.0}, uses=1000, maxlevel=3},
			snappy	=	{times={[2]=2.0, [3]=2.0}, uses=1000, maxlevel=3},
			choppy	=	{times={[1]=2.0, [2]=2.0, [3]=2.0}, uses=1000, maxlevel=3},
		}
	},
})