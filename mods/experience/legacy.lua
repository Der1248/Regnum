-- load xp values from old file format and store them in metadata, storage

local xp_conversion = {
	["experience"] = "experience_green",
	["experience_rot"] = "experience_red",
	["experience_blau"] = "experience_blue",
	["experience_grau"] = "experience_grey",
	["experience_gelb"] = "experience_yellow",
	["experience_cyan"] = "experience_cyan",
	["experience_bronze"] = "experience_bronze",
	["experience_silver"] = "experience_silver",
}

local transition_log = "Found old xp file: '%s'. Storing xp value of %d to meta storage '%s' and deleting file."
local function update_xp_storage(player)
	for old_xp_name, new_xp_name in pairs(xp_conversion) do
		local player_name = player:get_player_name()
		local file_path = experience.worldpath .. "/" .. player_name .. "_" .. old_xp_name

		local xp_file = io.open(file_path, "r")
		if xp_file then
			local xp_value = xp_file:read("*n")
			xp_file:close()
			experience.set(player, new_xp_name, xp_value)

			core.rmdir(file_path, false)

			core.log("action", transition_log:format(file_path, xp_value, new_xp_name))
		end
	end
end
core.register_on_joinplayer(update_xp_storage)


--[[
-- old, file based, set and get functions

-- get player experience value, returns 0 if experience type not found
experience.get = function(player, xp_type)
	local player_name = player:get_player_name()
	local file_path = experience.worldpath .. "/" .. player_name .. "_" .. xp_type

	local xp_file = io.open(file_path, "r")
	if xp_file then
		local experience = xp_file:read("*n")
		xp_file:close()
		return experience
	end

	return 0
end

-- sets players experience value to 'value' or 0 if no 'value' is provided
experience.set = function(player, xp_type, value)
	local player_name = player:get_player_name()
	local file_path = experience.worldpath .. "/" .. player_name .. "_" .. xp_type

	local xp_file = io.open(file_path, "w")
	xp_file:write(value or 0)
	xp_file:close()
end
--]]
