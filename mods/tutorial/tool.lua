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
	description = "Regnumbattleaxe Mode 1 (dig no water and lava)\nBattleaxe-lv.MAX",
	inventory_image = "tutorial_regnumbattleaxe.png^technic_tool_mode1.png",
    wield_image = "tutorial_regnumbattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=5.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=150}
	},
	liquids_pointable = false,
})
minetest.register_tool("tutorial:regnumbattleaxe2", {
	description = "Regnumbattleaxe Mode 2 (dig water and lava)\nBattleaxe-lv.MAX",
	inventory_image = "tutorial_regnumbattleaxe.png^technic_tool_mode2.png",
    wield_image = "tutorial_regnumbattleaxe.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=5.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=150}
	},
	liquids_pointable = true,
})
minetest.register_tool("tutorial:superlegendenbattleaxe1", {
	description = "Superlegendbattleaxe Mode 1 (dig water and lava)\nBattleaxe-lv.122",
	inventory_image = "tutorial_superlegendenbattleaxe.png^technic_tool_mode1.png",
    wield_image = "tutorial_superlegendenbattleaxe.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=122}
	},
	liquids_pointable = true,
})
minetest.register_tool("tutorial:superlegendenbattleaxe2", {
	description = "Superlegendbattleaxe Mode 2 (dig no water and lava)\nBattleaxe-lv.122",
	inventory_image = "tutorial_superlegendenbattleaxe.png^technic_tool_mode2.png",
    wield_image = "tutorial_superlegendenbattleaxe.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={               		
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			choppy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky	=	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=20.0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=122}
	},
	liquids_pointable = false,
})
minetest.register_tool("tutorial:lilabattleaxe2", {
	description = "Purplebattleaxe Lv.MAX",
	inventory_image = "tutorial_lilabattleaxe2.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={	
			cracky  = {times={[13]=0,[14]=0}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=10}
	},
	liquids_pointable = true,
})
minetest.register_tool("tutorial:legendenbattleaxe1", {
	description = "Legendbattleaxe Lv.1\nBattleaxe-lv.116",
	inventory_image = "tutorial_legendenbattleaxe1.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Legendbattleaxe Lv.2\nBattleaxe-lv.117",
	inventory_image = "tutorial_legendenbattleaxe2.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Legendbattleaxe Lv.3\nBattleaxe-lv.118",
	inventory_image = "tutorial_legendenbattleaxe3.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Legendbattleaxe Lv.4\nBattleaxe-lv.119",
	inventory_image = "tutorial_legendenbattleaxe4.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Legendbattleaxe Lv.5\nBattleaxe-lv.120",
	inventory_image = "tutorial_legendenbattleaxe5.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Legendbattleaxe Lv.6\nBattleaxe-lv.121",
	inventory_image = "tutorial_legendenbattleaxe6.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Titanium remover",
	inventory_image = "tutorial_titanentverner.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={cracky  = {times={[12]=75.0,}, uses=1, maxlevel=3},},
		damage_groups = {fleshy=3}
	},
})
minetest.register_tool("tutorial:titanbattleaxe10", {
	description = "Titaniumbattleaxe lv.10\nBattleaxe-lv.115",
	inventory_image = "tutorial_titanbattleaxe10.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Titaniumbattleaxe lv.9\nBattleaxe-lv.114",
	inventory_image = "tutorial_titanbattleaxe9.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Titaniumbattleaxe lv.8\nBattleaxe-lv.113",
	inventory_image = "tutorial_titanbattleaxe8.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Titaniumbattleaxe lv.7\nBattleaxe-lv.112",
	inventory_image = "tutorial_titanbattleaxe7.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Titaniumbattleaxe lv.6\nBattleaxe-lv.111",
	inventory_image = "tutorial_titanbattleaxe6.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Titaniumbattleaxe lv.5\nBattleaxe-lv.110",
	inventory_image = "tutorial_titanbattleaxe5.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Titaniumbattleaxe lv.4\nBattleaxe-lv.109",
	inventory_image = "tutorial_titanbattleaxe4.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Titaniumbattleaxe lv.3\nBattleaxe-lv.108",
	inventory_image = "tutorial_titanbattleaxe3.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Titaniumbattleaxe lv.2\nBattleaxe-lv.107",
	inventory_image = "tutorial_titanbattleaxe2.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Titaniumbattleaxe lv.1\nBattleaxe-lv.106",
	inventory_image = "tutorial_titanbattleaxe1.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Purplebattleaxe Lv.1 (only for red and blue ores)",
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
	description = "Arenabattleaxe lv.4\nBattleaxe-lv.105",
	inventory_image = "tutorial_arenabattleaxe4.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Arenabattleaxe lv.3\nBattleaxe-lv.104",
	inventory_image = "tutorial_arenabattleaxe3.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Arenabattleaxe lv.2\nBattleaxe-lv.103",
	inventory_image = "tutorial_arenabattleaxe2.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Arenabattleaxe lv.1\nBattleaxe-lv.102",
	inventory_image = "tutorial_arenabattleaxe1.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Admin tool 3: Admin battleaxe Mode 1 (dig water and lava)",
	inventory_image = "tutorial_adminbattleaxe.png^technic_tool_mode1.png",
    wield_image = "tutorial_adminbattleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},                      
			choppy  =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},			
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},		
			cracky  =	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=0, [0]=0,}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=2000}
	},
	liquids_pointable = false,
})
minetest.register_tool("tutorial:adminbattleaxe2", {
	description = "Admin tool 3: Admin battleaxe Mode 2 (dig no water and lava)",
	inventory_image = "tutorial_adminbattleaxe.png^technic_tool_mode2.png",
    wield_image = "tutorial_adminbattleaxe.png",
	groups = {not_in_creative_inventory=1},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={	
			snappy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},	
			snappy  =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},                      
			choppy  =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},			
			crumbly =	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			fleshy	=	{times={[1]=0, [2]=0, [3]=0}, uses=0, maxlevel=3},
			cracky  =	{times={[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0, [9]=0, [10]=0, [11]=0, [12]=0, [13]=0, [14]=0, [15]=0, [0]=0,}, uses=0, maxlevel=3},
		},
		damage_groups = {fleshy=2000}
	},
	liquids_pointable = true,
})
--v.0.17.0
--v.0.16.0
minetest.register_tool("tutorial:ultrabattleaxe", {
	description = "Superultrabattleaxe\nBattleaxe-lv.101",
	inventory_image = "tutorial_super_ultrabattleaxe.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.25\nBattleaxe-lv.100",
	inventory_image = "tutorial_ultrabattleaxe25.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.24\nBattleaxe-lv.99",
	inventory_image = "tutorial_ultrabattleaxe24.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.23\nBattleaxe-lv.98",
	inventory_image = "tutorial_ultrabattleaxe23.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.22\nBattleaxe-lv.97",
	inventory_image = "tutorial_ultrabattleaxe22.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.21\nBattleaxe-lv.96",
	inventory_image = "tutorial_ultrabattleaxe21.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.20\nBattleaxe-lv.95",
	inventory_image = "tutorial_ultrabattleaxe20.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.19\nBattleaxe-lv.94",
	inventory_image = "tutorial_ultrabattleaxe19.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.18\nBattleaxe-lv.93",
	inventory_image = "tutorial_ultrabattleaxe18.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.17\nBattleaxe-lv.92",
	inventory_image = "tutorial_ultrabattleaxe17.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.16\nBattleaxe-lv.91",
	inventory_image = "tutorial_ultrabattleaxe16.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.15\nBattleaxe-lv.90",
	inventory_image = "tutorial_ultrabattleaxe15.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.14\nBattleaxe-lv.89",
	inventory_image = "tutorial_ultrabattleaxe14.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.13\nBattleaxe-lv.88",
	inventory_image = "tutorial_ultrabattleaxe13.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.12\nBattleaxe-lv.87",
	inventory_image = "tutorial_ultrabattleaxe12.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.11\nBattleaxe-lv.86",
	inventory_image = "tutorial_ultrabattleaxe11.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.10\nBattleaxe-lv.85",
	inventory_image = "tutorial_ultrabattleaxe10.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.9\nBattleaxe-lv.84",
	inventory_image = "tutorial_ultrabattleaxe9.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.8\nBattleaxe-lv.83",
	inventory_image = "tutorial_ultrabattleaxe8.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.7\nBattleaxe-lv.82",
	inventory_image = "tutorial_ultrabattleaxe7.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.6\nBattleaxe-lv.81",
	inventory_image = "tutorial_ultrabattleaxe6.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.5\nBattleaxe-lv.80",
	inventory_image = "tutorial_ultrabattleaxe5.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.4\nBattleaxe-lv.79",
	inventory_image = "tutorial_ultrabattleaxe4.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.3\nBattleaxe-lv.78",
	inventory_image = "tutorial_ultrabattleaxe3.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.2\nBattleaxe-lv.77",
	inventory_image = "tutorial_ultrabattleaxe2.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Ultrabattleaxe lv.1\nBattleaxe-lv.76",
	inventory_image = "tutorial_ultrabattleaxe1.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Crystalbattleaxe lv.5\nBattleaxe-lv.75",
	inventory_image = "tutorial_kristallbattleaxe5.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Crystalbattleaxe lv.4\nBattleaxe-lv.74",
	inventory_image = "tutorial_kristallbattleaxe4.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Crystalbattleaxe lv.3\nBattleaxe-lv.73",
	inventory_image = "tutorial_kristallbattleaxe3.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Crystalbattleaxe lv.2\nBattleaxe-lv.72",
	inventory_image = "tutorial_kristallbattleaxe2.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Crystalbattleaxe lv.1\nBattleaxe-lv.71",
	inventory_image = "tutorial_kristallbattleaxe1.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Superenergybattleaxe lv.7\nBattleaxe-lv.70",
	inventory_image = "tutorial_superenergybattleaxe7.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Superenergybattleaxe lv.6\nBattleaxe-lv.69",
	inventory_image = "tutorial_superenergybattleaxe6.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Superenergybattleaxe lv.5\nBattleaxe-lv.68",
	inventory_image = "tutorial_superenergybattleaxe5.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Superenergybattleaxe lv.4\nBattleaxe-lv.67",
	inventory_image = "tutorial_superenergybattleaxe4.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Superenergybattleaxe lv.3\nBattleaxe-lv.66",
	inventory_image = "tutorial_superenergybattleaxe3.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Superenergybattleaxe lv.2\nBattleaxe-lv.65",
	inventory_image = "tutorial_superenergybattleaxe2.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Superenergybattleaxe lv.1\nBattleaxe-lv.64",
	inventory_image = "tutorial_superenergybattleaxe1.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Energybattleaxe lv.12\nBattleaxe-lv.63",
	inventory_image = "tutorial_energybattleaxe12.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Energybattleaxe lv.11\nBattleaxe-lv.62",
	inventory_image = "tutorial_energybattleaxe11.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Energybattleaxe lv.10\nBattleaxe-lv.61",
	inventory_image = "tutorial_energybattleaxe10.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Energybattleaxe lv.9\nBattleaxe-lv.60",
	inventory_image = "tutorial_energybattleaxe9.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Energybattleaxe lv.8\nBattleaxe-lv.59",
	inventory_image = "tutorial_energybattleaxe8.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Energybattleaxe lv.7\nBattleaxe-lv.58",
	inventory_image = "tutorial_energybattleaxe7.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Energybattleaxe lv.6\nBattleaxe-lv.57",
	inventory_image = "tutorial_energybattleaxe6.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Energybattleaxe lv.5\nBattleaxe-lv.56",
	inventory_image = "tutorial_energybattleaxe5.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Energybattleaxe lv.4\nBattleaxe-lv.55",
	inventory_image = "tutorial_energybattleaxe4.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Energybattleaxe lv.3\nBattleaxe-lv.54",
	inventory_image = "tutorial_energybattleaxe3.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Energybattleaxe lv.2\nBattleaxe-lv.53",
	inventory_image = "tutorial_energybattleaxe2.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Energybattleaxe lv.1\nBattleaxe-lv.52",
	inventory_image = "tutorial_energybattleaxe1.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Uraniumbattleaxe lv.2\nBattleaxe-lv.51",
	inventory_image = "tutorial_uraniumbattleaxe2.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Battleaxe\nBattleaxe-lv.0",
	inventory_image = "tutorial_battleaxe.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Uraniumbattleaxe lv.1\nBattleaxe-lv.50",
	inventory_image = "tutorial_uraniumbattleaxe1.png",
	groups = {not_in_creative_inventory=1},
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
minetest.register_tool("tutorial:pistole", {
	description = "Admin tool 2: Rocket Gun",
	inventory_image = "tutorial_rocket_gun.png",
	on_use = function(itemstack, placer, pointed_thing)
		local dir = placer:get_look_dir();
		local playerpos = placer:get_pos();
		local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:patrone")
		local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
		obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 2,
})
minetest.register_tool("tutorial:superbattleaxe4", {
	description = "Superbattleaxe lv.4\nBattleaxe-lv.49",
	inventory_image = "tutorial_superbattleaxe4.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Superbattleaxe lv.3\nBattleaxe-lv.48",
	inventory_image = "tutorial_superbattleaxe3.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Superbattleaxe lv.2\nBattleaxe-lv.47",
	inventory_image = "tutorial_superbattleaxe2.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Superbattleaxe lv.1\nBattleaxe-lv.46",
	inventory_image = "tutorial_superbattleaxe1.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Magic stick",
	inventory_image = "tutorial_zauberstab.png",
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab9", {
	description = "Magic stick lv.MAX",
	inventory_image = "tutorial_zauberstab9.png",
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab8", {
	description = "Magic stick lv.8",
	inventory_image = "tutorial_zauberstab8.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab7", {
	description = "Magic stick lv.7",
	inventory_image = "tutorial_zauberstab7.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab6", {
	description = "Magic stick lv.6",
	inventory_image = "tutorial_zauberstab6.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab5", {
	description = "Magic stick lv.5",
	inventory_image = "tutorial_zauberstab5.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 12,
})
--v.0.10.0
--v.0.9.0
minetest.register_tool("tutorial:cloudbattleaxe_mega1", {
	description = "Cloudbattleaxe lv.1\nBattleaxe-lv.21",
	inventory_image = "tutorial_cloudbattleaxe_mega1.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.2\nBattleaxe-lv.22",
	inventory_image = "tutorial_cloudbattleaxe_mega2.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.3\nBattleaxe-lv.23",
	inventory_image = "tutorial_cloudbattleaxe_mega3.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.4\nBattleaxe-lv.24",
	inventory_image = "tutorial_cloudbattleaxe_mega4.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.5\nBattleaxe-lv.25",
	inventory_image = "tutorial_cloudbattleaxe_mega5.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.6\nBattleaxe-lv.26",
	inventory_image = "tutorial_cloudbattleaxe_mega6.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.7\nBattleaxe-lv.27",
	inventory_image = "tutorial_cloudbattleaxe_mega7.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.8\nBattleaxe-lv.28",
	inventory_image = "tutorial_cloudbattleaxe_mega8.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.9\nBattleaxe-lv.29",
	inventory_image = "tutorial_cloudbattleaxe_mega9.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.10\nBattleaxe-lv.30",
	inventory_image = "tutorial_cloudbattleaxe_mega10.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.11\nBattleaxe-lv.31",
	inventory_image = "tutorial_cloudbattleaxe_mega11.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.12\nBattleaxe-lv.32",
	inventory_image = "tutorial_cloudbattleaxe_mega12.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.13\nBattleaxe-lv.33",
	inventory_image = "tutorial_cloudbattleaxe_mega13.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.14\nBattleaxe-lv.34",
	inventory_image = "tutorial_cloudbattleaxe_mega14.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.15\nBattleaxe-lv.35",
	inventory_image = "tutorial_cloudbattleaxe_mega15.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.16\nBattleaxe-lv.36",
	inventory_image = "tutorial_cloudbattleaxe_mega16.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.17\nBattleaxe-lv.37",
	inventory_image = "tutorial_cloudbattleaxe_mega17.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.18\nBattleaxe-lv.38",
	inventory_image = "tutorial_cloudbattleaxe_mega18.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.19\nBattleaxe-lv.39",
	inventory_image = "tutorial_cloudbattleaxe_mega19.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.20\nBattleaxe-lv.40",
	inventory_image = "tutorial_cloudbattleaxe_mega20.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.21\nBattleaxe-lv.41",
	inventory_image = "tutorial_cloudbattleaxe_mega21.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.22\nBattleaxe-lv.42",
	inventory_image = "tutorial_cloudbattleaxe_mega22.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.23\nBattleaxe-lv.43",
	inventory_image = "tutorial_cloudbattleaxe_mega23.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.24\nBattleaxe-lv.44",
	inventory_image = "tutorial_cloudbattleaxe_mega24.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Cloudbattleaxe lv.25\nBattleaxe-lv.45",
	inventory_image = "tutorial_cloudbattleaxe_mega25.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Clouds remover lv.1",
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
	description = "Clouds remover lv.2",
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
	description = "Clouds remover lv.3",
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
	description = "Clouds remover lv.4",
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
	description = "Clouds remover lv.5",
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
	description = "Clouds remover lv.6",
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
	description = "Clouds remover lv.7",
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
	description = "Clouds remover lv.8",
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
	description = "Clouds remover lv.9",
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
	description = "Clouds remover lv.10",
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
	description = "Clouds remover lv.11",
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
	description = "Clouds remover lv.12",
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
	description = "Clouds remover lv.13",
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
	description = "Clouds remover lv.14",
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
	description = "Clouds remover lv.15",
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
	description = "Clouds remover lv.16",
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
	description = "Clouds remover lv.17",
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
	description = "Clouds remover lv.18",
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
	description = "Clouds remover lv.19",
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
	description = "Clouds remover lv.20",
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
	description = "Clouds remover lv.MAX",
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
	description = "Magic stick lv.4",
	inventory_image = "tutorial_zauberstab4.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab3", {
	description = "Magic stick lv.3",
	inventory_image = "tutorial_zauberstab3.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)	
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab2", {
	description = "Magic stick lv.2",
	inventory_image = "tutorial_zauberstab2.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)	
	end,
	light_source = 12,
})
minetest.register_tool("tutorial:zauberstab1", {
	description = "Magic stick lv.1",
	inventory_image = "tutorial_zauberstab1.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 12,
})
--v.0.7.0
minetest.register_tool("tutorial:swored_zauber1", {
	description = "Magic sword lv.1",
	inventory_image = "tutorial_zauberschwert1.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber2", {
	description = "Magic sword lv.2",
	inventory_image = "tutorial_zauberschwert2.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber3", {
	description = "Magic sword lv.3",
	inventory_image = "tutorial_zauberschwert3.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber4", {
	description = "Magic sword lv.4",
	inventory_image = "tutorial_zauberschwert4.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber5", {
	description = "Magic sword lv.5",
	inventory_image = "tutorial_zauberschwert5.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber6", {
	description = "Magic sword lv.6",
	inventory_image = "tutorial_zauberschwert6.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber7", {
	description = "Magic sword lv.7",
	inventory_image = "tutorial_zauberschwert7.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber8", {
	description = "Magic sword lv.8",
	inventory_image = "tutorial_zauberschwert8.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 2,
})
minetest.register_tool("tutorial:swored_zauber9", {
	description = "Magic sword lv.MAX",
	inventory_image = "tutorial_zauberschwert9.png",
	on_use = function(itemstack, placer, pointed_thing)
	end,
	light_source = 2,
})
--v.0.6.6
minetest.register_tool("tutorial:battleaxe_mega16", {
	description = "Mega Battleaxe lv.16\nBattleaxe-lv.16",
	inventory_image = "tutorial_battleaxe_mega16.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.17\nBattleaxe-lv.17",
	inventory_image = "tutorial_battleaxe_mega17.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.18\nBattleaxe-lv.18",
	inventory_image = "tutorial_battleaxe_mega18.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.19\nBattleaxe-lv.19",
	inventory_image = "tutorial_battleaxe_mega19.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.20\nBattleaxe-lv.20",
	inventory_image = "tutorial_battleaxe_mega20.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.13\nBattleaxe-lv.13",
	inventory_image = "tutorial_battleaxe_mega13.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.14\nBattleaxe-lv.14",
	inventory_image = "tutorial_battleaxe_mega14.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.15\nBattleaxe-lv.15",
	inventory_image = "tutorial_battleaxe_mega15.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.9\nBattleaxe-lv.9",
	inventory_image = "tutorial_battleaxe_mega9.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.10\nBattleaxe-lv.10",
	inventory_image = "tutorial_battleaxe_mega10.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.11\nBattleaxe-lv.11",
	inventory_image = "tutorial_battleaxe_mega11.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.12\nBattleaxe-lv.12",
	inventory_image = "tutorial_battleaxe_mega12.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.5\nBattleaxe-lv.5",
	inventory_image = "tutorial_battleaxe_mega5.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.6\nBattleaxe-lv.6",
	inventory_image = "tutorial_battleaxe_mega6.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.7\nBattleaxe-lv.7",
	inventory_image = "tutorial_battleaxe_mega7.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.8\nBattleaxe-lv.8",
	inventory_image = "tutorial_battleaxe_mega8.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.4\nBattleaxe-lv.4",
	inventory_image = "tutorial_battleaxe_mega4.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.3\nBattleaxe-lv.3",
	inventory_image = "tutorial_battleaxe_mega3.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.2\nBattleaxe-lv.2",
	inventory_image = "tutorial_battleaxe_mega2.png",
	groups = {not_in_creative_inventory=1},
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
	description = "Mega Battleaxe lv.1\nBattleaxe-lv.1",
	inventory_image = "tutorial_battleaxe_mega1.png",
	groups = {not_in_creative_inventory=1},
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