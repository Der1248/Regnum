
-- load settings

local ENABLE_GULLS = minetest.settings:get_bool("mobs_birds.enable_gulls") ~= false
local ENABLE_LARGE = minetest.settings:get_bool("mobs_birds.enable_large_birds") ~= false
local ENABLE_SMALL = minetest.settings:get_bool("mobs_birds.enable_small_birds") ~= false

-- Custom spawn examples

if ENABLE_GULL then

	mobs:spawn({
		name = "mobs_birds:gull",
		nodes = {"air"},
		neighbors = {"group:water"},
		max_light = 5,
		interval = 30,
		chance = 24000,
		min_height = 0,
		max_height = 200
	})
end

if ENABLE_SMALL then

	mobs:spawn({
		name = "mobs_birds:bird_sm",
		nodes = {"air"},
		neighbors = {
			"group:leaves" , (mod_mcl and "mcl_core:cactus" or "default:cactus")
		},
		max_light = 5,
		interval = 30,
		chance = 18000,
		min_height = 0,
		max_height = 200
	})
end

if ENABLE_LARGE then

	mobs:spawn({
		name = "mobs_birds:bird_lg",
		nodes = {"air"},
		neighbors = {
			"group:leaves" , (mod_mcl and "mcl_core:cactus" or "default:cactus")
		},
		max_light = 5,
		interval = 30,
		chance = 18000,
		min_height = 0,
		max_height = 200
	})
end
