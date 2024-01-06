local mining_lasers_list = {
--	{<num>, <range of the laser shots>, <max_charge>, <charge_per_shot>},
	{"1",    7,   50000, 1000},
	{"2",   14, 200000, 2000},
	{"3",   21, 650000, 3000},
        
}

local S = technic.getter

-- Based on code by Uberi: https://gist.github.com/Uberi/3125280
local function rayIter(pos, dir, range)
	local p = vector.round(pos)
	local x_step,      y_step,      z_step      = 0, 0, 0
	local x_component, y_component, z_component = 0, 0, 0
	local x_intersect, y_intersect, z_intersect = 0, 0, 0

	if dir.x == 0 then
		x_intersect = math.huge
	elseif dir.x > 0 then
		x_step = 1
		x_component = 1 / dir.x
		x_intersect = x_component
	else
		x_step = -1
		x_component = 1 / -dir.x
	end
	if dir.y == 0 then
		y_intersect = math.huge
	elseif dir.y > 0 then
		y_step = 1
		y_component = 1 / dir.y
		y_intersect = y_component
	else
		y_step = -1
		y_component = 1 / -dir.y
	end
	if dir.z == 0 then
		z_intersect = math.huge
	elseif dir.z > 0 then
		z_step = 1
		z_component = 1 / dir.z
		z_intersect = z_component
	else
		z_step = -1
		z_component = 1 / -dir.z
	end

	return function()
		if x_intersect < y_intersect then
			if x_intersect < z_intersect then
				p.x = p.x + x_step
				x_intersect = x_intersect + x_component
			else
				p.z = p.z + z_step
				z_intersect = z_intersect + z_component
			end
		elseif y_intersect < z_intersect then
			p.y = p.y + y_step
			y_intersect = y_intersect + y_component
		else
			p.z = p.z + z_step
			z_intersect = z_intersect + z_component
		end
		if vector.distance(pos, p) > range then
			return nil
		end
		return p
	end
end

local function laser_node(pos, node, player)
	local def = minetest.registered_nodes[node.name]
	if def and def.liquidtype ~= "none" then
		minetest.remove_node(pos)
		minetest.add_particle({
			pos = pos,
			vel = {x=0, y=2, z=0},
			acc = {x=0, y=-1, z=0},
			expirationtime = 1.5,
			size = 6 + math.random() * 2,
			texture = "smoke_puff.png^[transform" .. math.random(0, 7),
		})
		return
	end
	minetest.node_dig(pos, node, player)
end

local no_destroy = {
	["air"] = true,
	["default:lava_source"] = true,
	["default:lava_flowing"] = true,
	["tutorial:stone_with_rot"] = true,
	["tutorial:stone_with_blau"] = true,
	["tutorial:stone_with_titan"] = true,
}
local function laser_shoot(player, range, particle_texture, sound)
	local player_pos = player:get_pos()
	local player_name = player:get_player_name()
	local dir = player:get_look_dir()

	local start_pos = vector.new(player_pos)
	-- Adjust to head height
	start_pos.y = start_pos.y + 1.9
	minetest.add_particle({
		pos = startpos,
		vel = dir,
		acc = vector.multiply(dir, 50),
		expirationtime = range / 11,
		size = 1,
		texture = particle_texture .. "^[transform" .. math.random(0, 7),
	})
	minetest.sound_play(sound, {pos = player_pos, max_hear_distance = range})
	for pos in rayIter(start_pos, dir, range) do
		if minetest.is_protected(pos, player_name) then
			minetest.record_protection_violation(pos, player_name)
			break
		end
		local node = minetest.get_node_or_nil(pos)
		if not node then
			break
		end
		if not no_destroy[node.name] then
			laser_node(pos, node, player)
		end
	end
end


for _, m in pairs(mining_lasers_list) do
	technic.register_power_tool("technic:laser_mk"..m[1], m[3])
	minetest.register_tool("technic:laser_mk"..m[1], {
		description = S("Mining Laser Mk%d"):format(m[1]),
		inventory_image = "technic_mining_laser_mk"..m[1]..".png",
		groups = {not_in_creative_inventory=1},
		stack_max = 1,
		wear_represents = "technic_RE_charge",
		on_refill = technic.refill_RE_charge,
		on_use = function(itemstack, user)
			local meta = minetest.deserialize(itemstack:get_metadata())
			if not meta or not meta.charge then
				return
			end

			-- If there's enough charge left, fire the laser
			if meta.charge >= m[4] then
				meta.charge = meta.charge - m[4]
				laser_shoot(user, m[2], "technic_laser_beam_mk"..m[1]..".png", "technic_laser_mk"..m[1])
				technic.set_RE_wear(itemstack, meta.charge, m[3])
				itemstack:set_metadata(minetest.serialize(meta))
			end
			return itemstack
		end,
	})
end

local mining_lasers_list2 = {
--	{<num>, <range of the laser shots>, <max_charge>, <charge_per_shot>},
	{"1",     1,   10000,  5000},
	{"2",     2,   20000,  5000},
	{"3",     3,   30000,  5000},
    {"4",     4,   40000,  5000},
	{"5",     5,   50000,  5000},
	{"6",     6,   60000,  4500},
	{"7",     7,   70000,  4500},
	{"8",     8,   80000,  4500},
	{"9",     9,   90000,  4500},
	{"10",   10,  100000,  4500},
	{"11",   11,  120000,  4000},
	{"12",   12,  140000,  4000},
	{"13",   13,  160000,  4000},
	{"14",   14,  180000,  4000},
	{"15",   15,  200000,  4000},
	{"16",   16,  220000,  3500},
 	{"17",   17,  240000,  3500},
	{"18",   18,  260000,  3500},
	{"19",   19,  280000,  3500},
	{"20",   20,  300000,  3500},
 	{"21",   20,  330000,  3000},
	{"22",   20,  360000,  3000},
	{"23",   20,  390000,  3000},
	{"24",   20,  420000,  3000},
	{"25",   20,  450000,  3000},
	{"26",   20,  480000,  2500},
	{"27",   20,  510000,  2500},
	{"28",   20,  540000,  2500},
	{"29",   20,  570000,  2500},
	{"30",   20,  600000,  2500},
	{"31",   20,  640000,  2000},
	{"32",   20,  680000,  2000},
	{"33",   20,  720000,  2000},
	{"34",   20,  760000,  2000},
	{"35",   20,  800000,  2000},
	{"36",   20,  840000,  1500},
	{"37",   20,  880000,  1500},
	{"38",   20,  920000,  1500},
	{"39",   20,  960000,  1500},
	{"40",   20,  1000000, 1500},
	{"41",   20,  1050000, 1000},
	{"42",   20,  1100000, 1000},
	{"43",   20,  1150000, 1000},
	{"44",   20,  1200000, 1000},
	{"45",   20,  1250000, 1000},
	{"46",   20,  1300000, 500},
	{"47",   20,  1350000, 500},
	{"48",   20,  1400000, 500},
	{"49",   20,  1450000, 500},
	{"50",   20,  1500000, 500},
	{"51",   20,  1500000, 490},
	{"52",   20,  1500000, 480},
	{"53",   20,  1500000, 470},
	{"54",   20,  1500000, 460},
	{"55",   20,  1500000, 450},
	{"56",   20,  1500000, 440},
	{"57",   20,  1500000, 430},
	{"58",   20,  1500000, 420},
	{"59",   20,  1500000, 410},
	{"60",   20,  1500000, 400},
	{"61",   20,  1500000, 390},
	{"62",   20,  1500000, 380},
	{"63",   20,  1500000, 370},
	{"64",   20,  1500000, 360},
	{"65",   20,  1500000, 350},
	{"66",   20,  1500000, 340},
	{"67",   20,  1500000, 330},
	{"68",   20,  1500000, 320},
	{"69",   20,  1500000, 310},
	{"70",   20,  1500000, 300},
	{"71",   20,  1500000, 290},
	{"72",   20,  1500000, 280},
	{"73",   20,  1500000, 270},
	{"74",   20,  1500000, 260},
	{"75",   20,  1500000, 250},
	{"76",   20,  1500000, 240},
	{"77",   20,  1500000, 230},
	{"78",   20,  1500000, 220},
	{"79",   20,  1500000, 210},
	{"80",   20,  1500000, 200},
	{"81",   20,  1500000, 190},
	{"82",   20,  1500000, 180},
	{"83",   20,  1500000, 170},
	{"84",   20,  1500000, 160},
	{"85",   20,  1500000, 150},
	{"86",   20,  1500000, 140},
	{"87",   20,  1500000, 130},
	{"88",   20,  1500000, 120},
	{"89",   20,  1500000, 110},
	{"90",   20,  1500000, 100},
	{"91",   20,  1500000, 90},
	{"92",   20,  1500000, 80},
	{"93",   20,  1500000, 70},
	{"94",   20,  1500000, 60},
	{"95",   20,  1500000, 50},
	{"96",   20,  1500000, 40},
	{"97",   20,  1500000, 30},
	{"98",   20,  1500000, 20},
	{"99",   20,  1500000, 10},
	{"100",  20,  1500000, 10},
	{"101",  21,  1500000, 10},
	{"102",  21,  1500000, 10},
	{"103",  21,  1500000, 10},
	{"104",  21,  1500000, 10},
	{"105",  21,  1500000, 10},
	{"106",  22,  1500000, 10},
	{"107",  22,  1500000, 10},
	{"108",  22,  1500000, 10},
	{"109",  22,  1500000, 10},
	{"110",  22,  1500000, 10},
	{"111",  23,  1500000, 10},
	{"112",  23,  1500000, 10},
	{"113",  23,  1500000, 10},
	{"114",  23,  1500000, 10},
	{"115",  23,  1500000, 10},
	{"116",  24,  1500000, 10},
	{"117",  24,  1500000, 10},
	{"118",  24,  1500000, 10},
	{"119",  24,  1500000, 10},
	{"120",  24,  1500000, 10},
	{"121",  25,  1500000, 10},
	{"122",  25,  1500000, 10},
	{"123",  25,  1500000, 10},
	{"124",  25,  1500000, 10},
	{"125",  25,  1500000, 10},
	{"126",  26,  1500000, 10},
	{"127",  26,  1500000, 10},
	{"128",  26,  1500000, 10},
	{"129",  26,  1500000, 10},
	{"130",  26,  1500000, 10},
	{"131",  27,  1500000, 10},
	{"132",  27,  1500000, 10},
	{"133",  27,  1500000, 10},
	{"134",  27,  1500000, 10},
	{"135",  27,  1500000, 10},
	{"136",  28,  1500000, 10},
	{"137",  28,  1500000, 10},
	{"138",  28,  1500000, 10},
	{"139",  28,  1500000, 10},
	{"140",  28,  1500000, 10},
	{"141",  29,  1500000, 9},
	{"142",  29,  1500000, 8},
	{"143",  29,  1500000, 7},
	{"144",  29,  1500000, 6},
	{"145",  29,  1500000, 5},
	{"146",  30,  1600000, 4},
	{"147",  30,  1700000, 3},
	{"148",  30,  1800000, 2},
	{"149",  30,  1900000, 1},
	{"150",  30,  2000000, 1},
} 


for _, m in pairs(mining_lasers_list2) do
	if tonumber(m[1]) < 150 then
		technic.register_power_tool("technic:laser_mkS"..m[1], m[3])
		minetest.register_tool("technic:laser_mkS"..m[1], {
			description = S("Spezial Mining Laser lv.%d"):format(m[1]),
			inventory_image = "technic_mining_laser_mkS"..m[1]..".png",
			stack_max = 1,
			wear_represents = "technic_RE_charge",
			on_refill = technic.refill_RE_charge,
			groups = {not_in_creative_inventory=1},
			on_use = function(itemstack, user)
				local meta = minetest.deserialize(itemstack:get_metadata())
				if not meta or not meta.charge then
					return
				end

				-- If there's enough charge left, fire the laser
				if meta.charge >= m[4] then
					meta.charge = meta.charge - m[4]
					laser_shoot(user, m[2], "technic_laser_beam_mk"..m[1]..".png", "technic_laser_mk"..m[1])
					technic.set_RE_wear(itemstack, meta.charge, m[3])
					itemstack:set_metadata(minetest.serialize(meta))
				end
				return itemstack
			end,
		})
	else
		technic.register_power_tool("technic:laser_mkS"..m[1], m[3])
		minetest.register_tool("technic:laser_mkS"..m[1], {
			description = S("Spezial Mining Laser lv.MAX"),
			inventory_image = "technic_mining_laser_mkS"..m[1]..".png",
			stack_max = 1,
			wear_represents = "technic_RE_charge",
			on_refill = technic.refill_RE_charge,
			on_use = function(itemstack, user)
				laser_shoot(user, 30, "technic_laser_beam_mk1.png", "technic_laser_mk1")
				return itemstack
			end,
		})
	end
end

minetest.register_craft({
	output = 'technic:laser_mkS1',
	recipe = {
		{'tutorial:coin', 'tutorial:coin', 'tutorial:coin'},
		{'', 'moreores:mithril_ingot', 'tutorial:admin'},
		{'', '', 'moreores:mithril_ingot'},
	}
})

technic.register_power_tool("technic:laser_mkA1", 1)
minetest.register_tool("technic:laser_mkA1", {
	description = S("Admin tool 4: Laser Gun"),
	inventory_image = "technic_mining_laser_Admin1.png",
	stack_max = 1,
	on_use = function(itemstack, user)
		laser_shoot(user, 50, "technic_laser_beam_mk1.png", "technic_laser_mk1")
		return itemstack
	end,
})



