local max_charge_list = {50000, 200000, 650000}
local power_usage_per_node_list = {200, 500, 800}

local no_destroy = {
	["tutorial:stone_with_rot"] = true,
	["tutorial:stone_with_blau"] = true,
	["tutorial:stone_with_titan"] = true,
	["tutorial:stone_with_regnum"] = true,
	["tutorial:stone_with_admin"] = true,
	["gems:ruby_ore"] = true,
	["gems:sapphire_ore"] = true,
	["gems:amethyst_ore"] = true,
	["gems:pearl_ore"] = true,
	["gems:shadow_ore"] = true,
	["gems:emerald_ore"] = true,
}

local S = technic.getter

local mining_drill_mode_text = {
	{S("single node")},
	{S("3 nodes deep")},
	{S("3 nodes wide")},
	{S("3 nodes tall")},
	{S("3x3 nodes")},
}

local function drill_dig_it0(pos, player)
	if minetest.is_protected(pos, player:get_player_name()) then
		minetest.record_protection_violation(pos, player:get_player_name())
		return
	end
	local node = minetest.get_node(pos)
	for key, _ in pairs(no_destroy) do
        if key == node.name then
            return
        end
    end
	local ndef = minetest.registered_nodes[node.name]
	if not ndef or ndef.drawtype == "airlike" then
		-- Covers "air", "ignore", unknown nodes and more.
		return
	end
	local groups = ndef and ndef.groups or {}

	if groups.lava then
		return
	end
	if groups.water then
		minetest.remove_node(pos)
		return
	end
	ndef.on_dig(pos, node, player)
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
	pos.y=pos.y+1
	drill_dig_it0 (pos,player)
	pos.z=pos.z+1
	drill_dig_it0 (pos,player)
	pos.z=pos.z-2
	drill_dig_it0 (pos,player)
	pos.z=pos.z+1
	pos.y=pos.y-1
	drill_dig_it0 (pos,player)
	pos.z=pos.z+1
	drill_dig_it0 (pos,player)
	pos.z=pos.z-2
	drill_dig_it0 (pos,player)
	pos.z=pos.z+1
	pos.y=pos.y-1
	drill_dig_it0 (pos,player)
	pos.z=pos.z+1
	drill_dig_it0 (pos,player)
	pos.z=pos.z-2
	drill_dig_it0 (pos,player)
end

local function drill_dig_it3 (pos,player)
	pos.y=pos.y+1
	drill_dig_it0 (pos,player)
	pos.x=pos.x+1
	drill_dig_it0 (pos,player)
	pos.x=pos.x-2
	drill_dig_it0 (pos,player)
	pos.x=pos.x+1
	pos.y=pos.y-1
	drill_dig_it0 (pos,player)
	pos.x=pos.x+1
	drill_dig_it0 (pos,player)
	pos.x=pos.x-2
	drill_dig_it0 (pos,player)
	pos.x=pos.x+1
	pos.y=pos.y-1
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

local function cost_to_use(drill_type, mode, power_usage_per_node)
	local mult
	if mode == 1 then
		mult = 1
	elseif mode <= 4 then
		mult = 3
	else
		mult = 9
	end
	return power_usage_per_node[drill_type] * mult
end

local function drill_dig_it(pos, player, mode)
	if mode == 1 then
		drill_dig_it0(pos, player)
	end

	if mode == 2 then -- 3 deep
		local dir = drill_dig_it1(player)
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
		local dir = drill_dig_it1(player)
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

local function mining_drill_mkX_setmode(user, itemstack, drill_type, max_modes, pre)
	local player_name = user:get_player_name()
	local meta = technic.get_stack_meta(itemstack)

	if not meta:contains("mode") then
		minetest.chat_send_player(player_name,
			S("Use while sneaking to change Mining Drill modes."))
	end
	local mode = meta:get_int("mode") + 1
	if mode > max_modes then mode = 1 end

	minetest.chat_send_player(player_name,
		S("Mining Drill Mode %d"):format(mode)..
		": "..mining_drill_mode_text[mode][1]..".")
    itemstack:set_name(("technic:drill_mk%s_%s"):format(pre..drill_type, mode))
	meta:set_int("mode", mode)
	return itemstack
end

local function mining_drill_mkX_handler(itemstack, user, pointed_thing, drill_type, max_modes, max_charge, power_usage_per_node, pre)
	local keys = user:get_player_control()
	local meta = technic.get_stack_meta(itemstack)

	-- Mode switching (if possible)
	if max_modes > 1 then
		if not meta:contains("mode") or keys.sneak then
			--return mining_drill_mkX_setmode(user, itemstack, drill_type, max_modes, pre)
		end
	end
	if pointed_thing.type ~= "node" or not pos_is_pointable(pointed_thing.under) then
		return
	end

	local charge = meta:get_int("technic:charge")
	local mode = meta:contains("mode") and meta:get_int("mode") or 1
	
	-- Check whether the tool has enough charge
	local charge_to_take = cost_to_use(drill_type, mode, power_usage_per_node)
	if charge < charge_to_take and pre ~= "A" then
		return
	end
	-- Do the actual shoorting action
	local pos = minetest.get_pointed_thing_position(pointed_thing, false)
	drill_dig_it(pos, user, mode)
	if not technic.creative_mode then
		if pre ~= "A" then
			charge = charge - charge_to_take
		end
		meta:set_int("technic:charge", charge)
		technic.set_RE_wear(itemstack, charge, max_charge[drill_type])
	end
	return itemstack
end

-- Simple mining drill registration

technic.register_power_tool("technic:mining_drill", max_charge_list[1])

minetest.register_tool(":technic:mining_drill", {
	description = S("Mining Drill Mk%d"):format(1),
	inventory_image = "technic_mining_drill.png",
	stack_max = 1,
	wear_represents = "technic_RE_charge",
	on_refill = technic.refill_RE_charge,
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		mining_drill_mkX_handler(itemstack, user, pointed_thing, 1, 1, max_charge_list, power_usage_per_node_list, "")
		return itemstack
	end,
})

-- Mk2 registration

minetest.register_tool(":technic:mining_drill_mk2", {
	description = S("Mining Drill Mk%d"):format(2),
	inventory_image = "technic_mining_drill_mk2.png",
	wear_represents = "technic_RE_charge",
	on_refill = technic.refill_RE_charge,
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		mining_drill_mkX_handler(itemstack, user, pointed_thing, 2, 4, max_charge_list, power_usage_per_node_list, "")
		return itemstack
	end,
})

technic.register_power_tool("technic:mining_drill_mk2", max_charge_list[2])

for i = 1, 4 do
	technic.register_power_tool("technic:mining_drill_mk2_"..i, max_charge_list[2])
	minetest.register_tool(":technic:mining_drill_mk2_"..i, {
		description = S("Mining Drill Mk%d Mode %d"):format(2, i),
		inventory_image = "technic_mining_drill_mk2.png^technic_tool_mode"..i..".png",
		wield_image = "technic_mining_drill_mk2.png",
		wear_represents = "technic_RE_charge",
		on_refill = technic.refill_RE_charge,
		groups = {not_in_creative_inventory=1},
		on_use = function(itemstack, user, pointed_thing)
			mining_drill_mkX_handler(itemstack, user, pointed_thing, 2, 4, max_charge_list, power_usage_per_node_list, "")
			return itemstack
		end,
	})
end

-- Mk3 registration

minetest.register_tool(":technic:mining_drill_mk3", {
	description = S("Mining Drill Mk%d"):format(3),
	inventory_image = "technic_mining_drill_mk3.png",
	wear_represents = "technic_RE_charge",
	on_refill = technic.refill_RE_charge,
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		mining_drill_mkX_handler(itemstack, user, pointed_thing, 3, 5, max_charge_list, power_usage_per_node_list, "")
		return itemstack
	end,
})

technic.register_power_tool("technic:mining_drill_mk3", max_charge_list[3])

for i=1,5,1 do
	technic.register_power_tool("technic:mining_drill_mk3_"..i, max_charge_list[3])
	minetest.register_tool(":technic:mining_drill_mk3_"..i, {
		description = S("Mining Drill Mk%d Mode %d"):format(3, i),
		inventory_image = "technic_mining_drill_mk3.png^technic_tool_mode"..i..".png",
		wield_image = "technic_mining_drill_mk3.png",
		wear_represents = "technic_RE_charge",
		on_refill = technic.refill_RE_charge,
		groups = {not_in_creative_inventory=1},
		on_use = function(itemstack, user, pointed_thing)
			mining_drill_mkX_handler(itemstack, user, pointed_thing, 3, 5, max_charge_list, power_usage_per_node_list, "")
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

local max_chargeS_list = {}
local power_usage_per_nodeS_list = {}
for i = 1, #mining_drill_list do
    table.insert(max_chargeS_list, mining_drill_list[i][2])
	table.insert(power_usage_per_nodeS_list, mining_drill_list[i][3])
end

for _, m in pairs(mining_drill_list) do
	for i=1,5,1 do
		technic.register_power_tool("technic:drill_mkS"..m[1].."_"..i, m[2])
		if tonumber(m[1]) < 150 then
			minetest.register_tool(":technic:drill_mkS"..m[1].."_"..i, {
				description = "Mining Drill Lv."..m[1].." Mode "..i.." ("..mining_drill_mode_text[i][1]..")",
				inventory_image = "technic_mining_drill_mkS"..m[1]..".png^technic_tool_mode"..i..".png",
				wield_image = "technic_mining_drill_mkS"..m[1]..".png",
				wear_represents = "technic_RE_charge",
				on_refill = technic.refill_RE_charge,
				groups = {not_in_creative_inventory=1},
				on_use = function(itemstack, user, pointed_thing)
					mining_drill_mkX_handler(itemstack, user, pointed_thing, tonumber(m[1]), 5, max_chargeS_list, power_usage_per_nodeS_list, "S")
					return itemstack
				end,
			})
		else
			local group = {not_in_creative_inventory=1}
			if i == 1 then
				group = {}
			end
			minetest.register_tool(":technic:drill_mkS"..m[1].."_"..i, {
				description = "Mining Drill Lv.MAX Mode "..i.." ("..mining_drill_mode_text[i][1]..")",
				inventory_image = "technic_mining_drill_mkS"..m[1]..".png^technic_tool_mode"..i..".png",
				wield_image = "technic_mining_drill_mkS"..m[1]..".png",
				wear_represents = "technic_RE_charge",
				on_refill = technic.refill_RE_charge,
				groups = group,
				on_use = function(itemstack, user, pointed_thing)
					mining_drill_mkX_handler(itemstack, user, pointed_thing, 150, 5, max_chargeS_list, power_usage_per_nodeS_list, "S")
					return itemstack
				end,
			})
		end
	end
end

for i=1,5,1 do
	local group = {not_in_creative_inventory=1}
	if i == 1 then
		group = {}
	end
	minetest.register_tool(":technic:mining_drill_mkA1_"..i, {
		description = "Admin Mining Drill Mode "..i.." ("..mining_drill_mode_text[i][1]..")",
		inventory_image = "technic_mining_drill_Admin1.png^technic_tool_mode"..i..".png",
		wield_image = "technic_mining_drill_Admin1.png",
		wear_represents = "technic_RE_charge",
		on_refill = technic.refill_RE_charge,
		groups = group,
		on_use = function(itemstack, user, pointed_thing)
			mining_drill_mkX_handler(itemstack, user, pointed_thing, 1, 5, max_chargeS_list, power_usage_per_nodeS_list, "A")
			return itemstack
		end,
	})
end

minetest.register_craft({
	output = 'technic:drill_mkS1_1',
	recipe = {
		{'tutorial:coin2', 'tutorial:coin2', 'tutorial:coin2'},
		{'', 'moreores:mithril_ingot', 'tutorial:admin'},
		{'', '', 'moreores:mithril_ingot'},
	}
})