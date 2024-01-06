-- Minetest 0.4.7 mod: technic
-- namespace: technic
-- (c) 2012-2013 by RealBadAngel <mk@realbadangel.pl>

technic = rawget(_G, "technic") or {}

technic.tube_inject_item = pipeworks.tube_inject_item or function (pos, start_pos, velocity, item)
	local tubed = pipeworks.tube_item(vector.new(pos), item)
	tubed:get_luaentity().start_pos = vector.new(start_pos)
	tubed:setvelocity(velocity)
	tubed:setacceleration(vector.new(0, 0, 0))
end

local load_start = os.clock()
local modpath = minetest.get_modpath("technic")
technic.modpath = modpath
local intllib = nil
-- Boilerplate to support intllib
if intllib then
	technic.getter = intllib.Getter()
else
	technic.getter = function(s) return s end
end
local S = technic.getter

-- Read configuration file
dofile(modpath.."/config.lua")

-- Helper functions
dofile(modpath.."/helpers.lua")

-- Items
dofile(modpath.."/items.lua")

-- Craft recipes for items
dofile(modpath.."/crafts.lua")

-- Register functions
dofile(modpath.."/register.lua")

-- Machines
dofile(modpath.."/machines/init.lua")

-- Tools
dofile(modpath.."/tools/init.lua")

-- Aliases for legacy node/item names
dofile(modpath.."/legacy.lua")

if minetest.settings:get_bool("log_mods") then
	print(S("[Technic] Loaded in %f seconds"):format(os.clock() - load_start))
end
