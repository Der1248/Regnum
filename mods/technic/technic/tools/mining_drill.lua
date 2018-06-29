local max_charge = {50000, 200000, 650000,1}
local power_usage_per_node = {1000, 2000, 3000,0}

local S = technic.getter

minetest.register_craft({
	output = 'technic:mining_drill',
	recipe = {
		{'gems:amethyst_gem', 'gems:emerald_gem', 'gems:amethyst_gem'},
		{'gems:amethyst_gem', 'gems:emerald_gem', 'gems:amethyst_gem'},
		{'gems:amethyst_gem', 'gems:emerald_gem', 'gems:amethyst_gem'},
	}
})
minetest.register_craft({
	output = 'technic:mining_drill_mk2',
	recipe = {
		{'gems:amethyst_gem', 'gems:amethyst_gem', 'gems:amethyst_gem'},
		{'gems:amethyst_gem', 'technic:mining_drill', 'gems:amethyst_gem'},
		{'gems:amethyst_gem', 'gems:amethyst_gem', 'gems:amethyst_gem'},
	}
})
minetest.register_craft({
	output = 'technic:mining_drill_mk3',
	recipe = {
		{'gems:emerald_gem', 'gems:emerald_gem', 'gems:emerald_gem'},
		{'gems:emerald_gem', 'technic:mining_drill_mk2', 'gems:emerald_gem'},
		{'gems:emerald_gem', 'gems:emerald_gem', 'gems:emerald_gem'},
	}
})


local mining_drill_mode_text = {
	{S("Single node.")},
	{S("3 nodes deep.")},
	{S("3 nodes wide.")},
	{S("3 nodes tall.")},
	{S("3x3 nodes.")},
}

local function drill_dig_it0 (pos,player)
	if minetest.is_protected(pos, player:get_player_name()) then
		minetest.record_protection_violation(pos, player:get_player_name())
		return
	end
	local node=minetest.get_node(pos)
	if node.name == "air" or node.name == "ignore" then return end
	if node.name == "default:lava_source" then return end
	if node.name == "default:lava_flowing" then return end
	if node.name == "tutorial:stone_with_titan" then return end
	if node.name == "default:water_source" then minetest.remove_node(pos) return end
	if node.name == "default:water_flowing" then minetest.remove_node(pos) return end
	minetest.node_dig(pos,node,player)
end

local function drill_dig_it1 (player)
	local dir=player:get_look_dir()
	if math.abs(dir.x)>math.abs(dir.z) then 
		if dir.x>0 then return 0 end
		return 1
	end
	if dir.z>0 then return 2 end
	return 3
end

local function drill_dig_it2 (pos,player)
	drill_dig_it0 (pos,player)
	pos.z=pos.z+1
	drill_dig_it0 (pos,player)
	pos.z=pos.z-2
	drill_dig_it0 (pos,player)
	pos.z=pos.z+1
	pos.y=pos.y+1
	drill_dig_it0 (pos,player)
	pos.z=pos.z+1
	drill_dig_it0 (pos,player)
	pos.z=pos.z-2
	drill_dig_it0 (pos,player)
	pos.z=pos.z+1
	pos.y=pos.y-2
	drill_dig_it0 (pos,player)
	pos.z=pos.z+1
	drill_dig_it0 (pos,player)
	pos.z=pos.z-2
	drill_dig_it0 (pos,player)
end

local function drill_dig_it3 (pos,player)
	drill_dig_it0 (pos,player)
	pos.x=pos.x+1
	drill_dig_it0 (pos,player)
	pos.x=pos.x-2
	drill_dig_it0 (pos,player)
	pos.x=pos.x+1
	pos.y=pos.y+1
	drill_dig_it0 (pos,player)
	pos.x=pos.x+1
	drill_dig_it0 (pos,player)
	pos.x=pos.x-2
	drill_dig_it0 (pos,player)
	pos.x=pos.x+1
	pos.y=pos.y-2
	drill_dig_it0 (pos,player)
	pos.x=pos.x+1
	drill_dig_it0 (pos,player)
	pos.x=pos.x-2
	drill_dig_it0 (pos,player)
end

local function drill_dig_it4 (pos,player)
	drill_dig_it0 (pos,player)
	pos.x=pos.x+1
	drill_dig_it0 (pos,player)
	pos.x=pos.x-2
	drill_dig_it0 (pos,player)
	pos.x=pos.x+1
	pos.z=pos.z+1
	drill_dig_it0 (pos,player)
	pos.x=pos.x+1
	drill_dig_it0 (pos,player)
	pos.x=pos.x-2
	drill_dig_it0 (pos,player)
	pos.x=pos.x+1
	pos.z=pos.z-2
	drill_dig_it0 (pos,player)
	pos.x=pos.x+1
	drill_dig_it0 (pos,player)
	pos.x=pos.x-2
	drill_dig_it0 (pos,player)
end
local function drill_dig_it(pos, player, mode)
	if mode == 1 then
		drill_dig_it0(pos, player)
	end
	
	if mode == 2 then -- 3 deep
		dir = drill_dig_it1(player)
		if dir == 0 then -- x+
			drill_dig_it0(pos, player)
			pos.x = pos.x + 1
			drill_dig_it0(pos, player)
			pos.x = pos.x + 1
			drill_dig_it0(pos, player)
		end
		if dir == 1 then  -- x-
			drill_dig_it0(pos, player)
			pos.x=pos.x-1
			drill_dig_it0 (pos,player)
			pos.x=pos.x-1
			drill_dig_it0 (pos,player)
		end
		if dir==2 then  -- z+
			drill_dig_it0 (pos,player)
			pos.z=pos.z+1
			drill_dig_it0 (pos,player)
			pos.z=pos.z+1
			drill_dig_it0 (pos,player)
		end
		if dir==3 then  -- z-
			drill_dig_it0 (pos,player)
			pos.z=pos.z-1
			drill_dig_it0 (pos,player)
			pos.z=pos.z-1
			drill_dig_it0 (pos,player)
		end
	end
	
	if mode==3 then -- 3 wide
		dir=drill_dig_it1(player)
		if dir==0 or dir==1 then -- x
			drill_dig_it0 (pos,player)
			pos.z=pos.z+1
			drill_dig_it0 (pos,player)
			pos.z=pos.z-2
			drill_dig_it0 (pos,player)
		end
		if dir==2 or dir==3 then  -- z
			drill_dig_it0 (pos,player)
			pos.x=pos.x+1
			drill_dig_it0 (pos,player)
			pos.x=pos.x-2
			drill_dig_it0 (pos,player)
		end
	end
	
	if mode==4 then -- 3 tall, selected in the middle
		drill_dig_it0 (pos,player)
		pos.y=pos.y-1
		drill_dig_it0 (pos,player)
		pos.y=pos.y-1
		drill_dig_it0 (pos,player)
	end

	if mode==5 then -- 3 x 3
		local dir=player:get_look_dir()
		if math.abs(dir.y)<0.5 then
			dir=drill_dig_it1(player)
				if dir==0 or dir==1 then -- x
					drill_dig_it2(pos,player)
				end
				if dir==2 or dir==3 then  -- z
					drill_dig_it3(pos,player)
				end
		else
		drill_dig_it4(pos,player)
		end
	end
	
	minetest.sound_play("mining_drill", {pos = pos, gain = 1.0, max_hear_distance = 10,})
end

local function pos_is_pointable(pos)
	local node = minetest.get_node(pos)
	local nodedef = minetest.registered_nodes[node.name]
	return nodedef and nodedef.pointable
end


local function mining_drill_setmode(user,itemstack)
	local player_name=user:get_player_name()
	local item=itemstack:to_table()
	local meta=minetest.deserialize(item["metadata"])
	if meta==nil then
		meta={}
		mode=0
	end
    
	if meta["mode"]==nil then
		minetest.chat_send_player(player_name, S("Use while sneaking to change Mining Drill Mk%d modes."):format(3))
		meta["mode"]=0
		mode=0
	end
	mode=(meta["mode"])
    local mode2 = mode
	mode=mode+1
	if mode>=6 then mode=1 end
	minetest.chat_send_player(player_name, S("Mining Drill Mk%d Mode %d"):format(3, mode)..": "..mining_drill_mode_text[mode][1])
	local items = user:get_wielded_item():get_name()
    if mode2 == 0 then
	  item["name"]=items.."_"..mode
    else
      text = items:sub(1, -3)
      item["name"]=text.."_"..mode
    end
	meta["mode"]=mode
	item["metadata"]=minetest.serialize(meta)
	itemstack:replace(item)
	return itemstack
end


local function mining_drill_mk_handler(itemstack, user, pointed_thing)
	local keys = user:get_player_control()
	local player_name = user:get_player_name()
	local meta = minetest.deserialize(itemstack:get_metadata())
	if not meta or not meta.mode or keys.sneak then
		return mining_drill_setmode(user, itemstack)
	end
	if pointed_thing.type ~= "node" or not pos_is_pointable(pointed_thing.under) or not meta.charge then
		return
	end
    local items = user:get_wielded_item():get_name()
    local text = items:sub(24, 24)
	local charge_to_take = power_usage_per_node[tonumber(text)]
	if meta.charge >= charge_to_take then
		local pos = minetest.get_pointed_thing_position(pointed_thing, above)
		drill_dig_it(pos, user, meta.mode)
		meta.charge = meta.charge - charge_to_take
		itemstack:set_metadata(minetest.serialize(meta))
		technic.set_RE_wear(itemstack, meta.charge, max_charge[tonumber(text)])
        print(max_charge[tonumber(text)])
        print(power_usage_per_node[tonumber(text)])
        print(meta.charge)
	end
	return itemstack
end

local function mining_drill_mk1_handler(itemstack, user, pointed_thing)
	local keys = user:get_player_control()
	local player_name = user:get_player_name()
	local meta = minetest.deserialize(itemstack:get_metadata())
	if not meta or not meta.mode or keys.sneak then
		return mining_drill_setmode(user, itemstack)
	end
	if pointed_thing.type ~= "node" or not pos_is_pointable(pointed_thing.under) or not meta.charge then
		return
	end
    local items = user:get_wielded_item():get_name()
    local text = items:sub(24, 24)
	local charge_to_take = power_usage_per_node[1]
	if meta.charge >= charge_to_take then
		local pos = minetest.get_pointed_thing_position(pointed_thing, above)
		drill_dig_it(pos, user, meta.mode)
		meta.charge = meta.charge - charge_to_take
		itemstack:set_metadata(minetest.serialize(meta))
		technic.set_RE_wear(itemstack, meta.charge, max_charge[1])
        print(max_charge[1])
        print(power_usage_per_node[1])
        print(meta.charge)
	end
	return itemstack
end
local function mining_drill_mkA_handler(itemstack, user, pointed_thing)
	local keys = user:get_player_control()
	local player_name = user:get_player_name()
	local meta = minetest.deserialize(itemstack:get_metadata())
	if not meta or not meta.mode or keys.sneak then
		return mining_drill_setmode(user, itemstack)
	end
	if pointed_thing.type ~= "node" or not pos_is_pointable(pointed_thing.under) or not meta.charge then
		return
	end
    local items = user:get_wielded_item():get_name()
    local text = items:sub(24, 24)
	local charge_to_take = power_usage_per_node[4]
	if meta.charge >= charge_to_take then
		local pos = minetest.get_pointed_thing_position(pointed_thing, above)
		drill_dig_it(pos, user, meta.mode)
		meta.charge = meta.charge - charge_to_take
		itemstack:set_metadata(minetest.serialize(meta))
		technic.set_RE_wear(itemstack, meta.charge, max_charge[4])
        print(max_charge[4])
        print(power_usage_per_node[4])
        print(meta.charge)
	end
	return itemstack
end
minetest.register_tool("technic:mining_drill", {
	description = S("Mining Drill Mk%d"):format(1),
	inventory_image = "technic_mining_drill.png",
	wear_represents = "technic_RE_charge",
	on_refill = technic.refill_RE_charge,
	on_use = function(itemstack, user, pointed_thing)
		mining_drill_mk1_handler(itemstack, user, pointed_thing)
		return itemstack
	end,
})

technic.register_power_tool("technic:mining_drill", max_charge[1])

for i = 1, 5 do
	technic.register_power_tool("technic:mining_drill_"..i, max_charge[1])
	minetest.register_tool("technic:mining_drill_"..i, {
		description = S("Mining Drill Mk%d Mode %d"):format(1, i),
		inventory_image = "technic_mining_drill.png^technic_tool_mode"..i..".png",
		wield_image = "technic_mining_drill_mk2.png",
		wear_represents = "technic_RE_charge",
		on_refill = technic.refill_RE_charge,
		groups = {not_in_creative_inventory=1},
		on_use = function(itemstack, user, pointed_thing)
			mining_drill_mk1_handler(itemstack, user, pointed_thing)
			return itemstack
		end,
	})
end
minetest.register_tool("technic:mining_drill_mk2", {
	description = S("Mining Drill Mk%d"):format(2),
	inventory_image = "technic_mining_drill_mk2.png",
	wear_represents = "technic_RE_charge",
	on_refill = technic.refill_RE_charge,
	on_use = function(itemstack, user, pointed_thing)
		mining_drill_mk_handler(itemstack, user, pointed_thing)
		return itemstack
	end,
})

technic.register_power_tool("technic:mining_drill_mk2", max_charge[2])

for i = 1, 5 do
	technic.register_power_tool("technic:mining_drill_mk2_"..i, max_charge[2])
	minetest.register_tool("technic:mining_drill_mk2_"..i, {
		description = S("Mining Drill Mk%d Mode %d"):format(2, i),
		inventory_image = "technic_mining_drill_mk2.png^technic_tool_mode"..i..".png",
		wield_image = "technic_mining_drill_mk2.png",
		wear_represents = "technic_RE_charge",
		on_refill = technic.refill_RE_charge,
		groups = {not_in_creative_inventory=1},
		on_use = function(itemstack, user, pointed_thing)
			mining_drill_mk_handler(itemstack, user, pointed_thing)
			return itemstack
		end,
	})
end

minetest.register_tool("technic:mining_drill_mk3", {
	description = S("Mining Drill Mk%d"):format(3),
	inventory_image = "technic_mining_drill_mk3.png",
	wear_represents = "technic_RE_charge",
	on_refill = technic.refill_RE_charge,
	on_use = function(itemstack, user, pointed_thing)
	mining_drill_mk_handler(itemstack,user,pointed_thing)
	return itemstack
	end,
})

technic.register_power_tool("technic:mining_drill_mk3", max_charge[3])

for i=1,5,1 do
	technic.register_power_tool("technic:mining_drill_mk3_"..i, max_charge[3])
	minetest.register_tool("technic:mining_drill_mk3_"..i, {
		description = S("Mining Drill Mk%d Mode %d"):format(3, i),
		inventory_image = "technic_mining_drill_mk3.png^technic_tool_mode"..i..".png",
		wield_image = "technic_mining_drill_mk3.png",
		wear_represents = "technic_RE_charge",
		on_refill = technic.refill_RE_charge,
		groups = {not_in_creative_inventory=1},
		on_use = function(itemstack, user, pointed_thing)
		mining_drill_mk_handler(itemstack,user,pointed_thing)
		return itemstack
		end,
	})
end


minetest.register_tool("technic:mining_drill_mkA1", {
	description = "Admin tool 8: Mining drill",
	inventory_image = "technic_mining_drill_Admin1.png",
	wear_represents = "technic_RE_charge",
	on_refill = technic.refill_RE_charge,
	on_use = function(itemstack, user, pointed_thing)
	mining_drill_mkA_handler(itemstack,user,pointed_thing)
	return itemstack
	end,
})

technic.register_power_tool("technic:mining_drill_mkA1", max_charge[4])

for i=1,5,1 do
	technic.register_power_tool("technic:mining_drill_mkA1_"..i, max_charge[4])
	minetest.register_tool("technic:mining_drill_mkA1_"..i, {
		description = "Admin tool 8: Mining drill Mode "..i,
		inventory_image = "technic_mining_drill_Admin1.png^technic_tool_mode"..i..".png",
		wield_image = "technic_mining_drill_Admin1.png",
		wear_represents = "technic_RE_charge",
		on_refill = technic.refill_RE_charge,
		groups = {not_in_creative_inventory=1},
		on_use = function(itemstack, user, pointed_thing)
		    mining_drill_mkA_handler(itemstack,user,pointed_thing)
		return itemstack
		end,
	})
end



local mining_drill_list = {
--	{<num>, <max_charge>, <charge_per_shot>},
	{"1",     10000,  5000},
	{"2",     20000,  5000},
	{"3",     30000,  5000},
    {"4",     40000,  5000},
	{"5",     50000,  5000},
	{"6",     60000,  4500},
	{"7",     70000,  4500},
	{"8",     80000,  4500},
	{"9",     90000,  4500},
	{"10",   100000,  4500},
	{"11",   120000,  4000},
	{"12",   140000,  4000},
	{"13",   160000,  4000},
	{"14",   180000,  4000},
	{"15",   200000,  4000},
	{"16",   220000,  3500},
 	{"17",   240000,  3500},
	{"18",   260000,  3500},
	{"19",   280000,  3500},
	{"20",   300000,  3500},
 	{"21",   330000,  3000},
	{"22",   360000,  3000},
	{"23",   390000,  3000},
	{"24",   420000,  3000},
	{"25",   450000,  3000},
	{"26",   480000,  2500},
	{"27",   510000,  2500},
	{"28",   540000,  2500},
	{"29",   570000,  2500},
	{"30",   600000,  2500},
    {"31",   640000,  2000},
	{"32",   680000,  2000},
	{"33",   720000,  2000},
	{"34",   760000,  2000},
	{"35",   800000,  2000},
	{"36",   840000,  1500},
	{"37",   880000,  1500},
	{"38",   920000,  1500},
	{"39",   960000,  1500},
	{"40",   1000000, 1500},
	{"41",   1050000, 1000},
	{"42",   1100000, 1000},
	{"43",   1150000, 1000},
	{"44",   1200000, 1000},
	{"45",   1250000, 1000},
	{"46",   1300000, 500},
	{"47",   1350000, 500},
	{"48",   1400000, 500},
	{"49",   1450000, 500},
	{"50",   1500000, 500},
	{"51",   1500000, 490},
	{"52",   1500000, 480},
	{"53",   1500000, 470},
	{"54",   1500000, 460},
	{"55",   1500000, 450},
	{"56",   1500000, 440},
	{"57",   1500000, 430},
	{"58",   1500000, 420},
	{"59",   1500000, 410},
	{"60",   1500000, 400},
	{"61",   1500000, 390},
	{"62",   1500000, 380},
	{"63",   1500000, 370},
	{"64",   1500000, 360},
	{"65",   1500000, 350},
	{"66",   1500000, 340},
	{"67",   1500000, 330},
	{"68",   1500000, 320},
	{"69",   1500000, 310},
	{"70",   1500000, 300},
	{"71",   1500000, 290},
	{"72",   1500000, 280},
	{"73",   1500000, 270},
	{"74",   1500000, 260},
	{"75",   1500000, 250},
	{"76",   1500000, 240},
	{"77",   1500000, 230},
	{"78",   1500000, 220},
	{"79",   1500000, 210},
	{"80",   1500000, 200},
	{"81",   1500000, 190},
	{"82",   1500000, 180},
	{"83",   1500000, 170},
	{"84",   1500000, 160},
	{"85",   1500000, 150},
    {"86",   1500000, 140},
	{"87",   1500000, 130},
	{"88",   1500000, 120},
	{"89",   1500000, 110},
	{"90",   1500000, 100},
	{"91",   1500000, 90},
	{"92",   1500000, 80},
	{"93",   1500000, 70},
	{"94",   1500000, 60},
	{"95",   1500000, 50},
	{"96",   1500000, 40},
	{"97",   1500000, 30},
	{"98",   1500000, 20},
	{"99",   1500000, 10},
	{"100",  1500000, 10},
	{"101",  1500000, 10},
	{"102",  1500000, 10},
	{"103",  1500000, 10},
	{"104",  1500000, 10},
	{"105",  1500000, 10},
	{"106",  1500000, 10},
	{"107",  1500000, 10},
	{"108",  1500000, 10},
	{"109",  1500000, 10},
	{"110",  1500000, 10},
	{"111",  1500000, 10},
	{"112",  1500000, 10},
	{"113",  1500000, 10},
	{"114",  1500000, 10},
	{"115",  1500000, 10},
	{"116",  1500000, 10},
	{"117",  1500000, 10},
	{"118",  1500000, 10},
	{"119",  1500000, 10},
	{"120",  1500000, 10},
	{"121",  1500000, 10},
	{"122",  1500000, 10},
	{"123",  1500000, 10},
	{"124",  1500000, 10},
	{"125",  1500000, 10},
	{"126",  1500000, 10},
	{"127",  1500000, 10},
	{"128",  1500000, 10},
	{"129",  1500000, 10},
	{"130",  1500000, 10},
	{"131",  1500000, 10},
	{"132",  1500000, 10},
	{"133",  1500000, 10},
	{"134",  1500000, 10},
	{"135",  1500000, 10},
	{"136",  1500000, 10},
	{"137",  1500000, 10},
	{"138",  1500000, 10},
	{"139",  1500000, 10},
	{"140",  1500000, 10},
	{"141",  1500000, 9},
	{"142",  1500000, 8},
	{"143",  1500000, 7},
	{"144",  1500000, 6},
	{"145",  1500000, 5},
	{"146",  1600000, 4},
	{"147",  1700000, 3},
	{"148",  1800000, 2},
	{"149",  1900000, 1},
	{"150",  2000000, 1},
} 
for _, m in pairs(mining_drill_list) do
    technic.register_power_tool("technic:drill_mkS"..m[1], m[2])
    minetest.register_tool("technic:drill_mkS"..m[1], {
	    description = "Spezial Mining drill lv."..m[1],
	    inventory_image = "technic_mining_drill_mkS"..m[1]..".png",
	    wear_represents = "technic_RE_charge",
	    on_refill = technic.refill_RE_charge,
	    on_use = function(itemstack, user, pointed_thing)
	        local keys = user:get_player_control()
	            local player_name = user:get_player_name()
	            local meta = minetest.deserialize(itemstack:get_metadata())
	            if not meta or not meta.mode or keys.sneak then
		            return mining_drill_setmode(user, itemstack)
	            end
	            if pointed_thing.type ~= "node" or not pos_is_pointable(pointed_thing.under) or not meta.charge then
		            return
	            end
                local items = user:get_wielded_item():get_name()
	            local charge_to_take = m[3]
	            if meta.charge >= charge_to_take then
		            local pos = minetest.get_pointed_thing_position(pointed_thing, above)
		            drill_dig_it(pos, user, meta.mode)
		            meta.charge = meta.charge - charge_to_take
		            itemstack:set_metadata(minetest.serialize(meta))
		            technic.set_RE_wear(itemstack, meta.charge, m[2])
                    print(m[2])
                    print(m[3])
                    print(meta.charge)
	            end
	        return itemstack
	    end,
    })
    for i=1,5,1 do
	    technic.register_power_tool("technic:drill_mkS"..m[1].."_"..i, m[2])
	    minetest.register_tool("technic:drill_mkS"..m[1].."_"..i, {
		    description = "Spezial Mining drill lv."..m[1].." Mode "..i,
		    inventory_image = "technic_mining_drill_mkS"..m[1]..".png^technic_tool_mode"..i..".png",
		    wield_image = "technic_mining_drill_mkS"..m[1]..".png",
		    wear_represents = "technic_RE_charge",
		    on_refill = technic.refill_RE_charge,
		    groups = {not_in_creative_inventory=1},
		    on_use = function(itemstack, user, pointed_thing)
		        local keys = user:get_player_control()
	            local player_name = user:get_player_name()
	            local meta = minetest.deserialize(itemstack:get_metadata())
	            if not meta or not meta.mode or keys.sneak then
		            return mining_drill_setmode(user, itemstack)
	            end
	            if pointed_thing.type ~= "node" or not pos_is_pointable(pointed_thing.under) or not meta.charge then
		            return
	            end
                local items = user:get_wielded_item():get_name()
	            local charge_to_take = m[3]
	            if meta.charge >= charge_to_take then
		            local pos = minetest.get_pointed_thing_position(pointed_thing, above)
		            drill_dig_it(pos, user, meta.mode)
		            meta.charge = meta.charge - charge_to_take
		            itemstack:set_metadata(minetest.serialize(meta))
		            technic.set_RE_wear(itemstack, meta.charge, m[2])
                    print(m[2])
                    print(m[3])
                    print(meta.charge)
	            end
		        return itemstack
		    end,
	    })
    end
end

minetest.register_craft({
	output = 'technic:drill_mkS1',
	recipe = {
		{'tutorial:coin2', 'tutorial:coin2', 'tutorial:coin2'},
		{'', 'moreores:mithril_ingot', 'tutorial:admin'},
		{'', '', 'moreores:mithril_ingot'},
	}
})