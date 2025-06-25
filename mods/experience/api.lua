--[[
experience.get(player, "experience")
experience.set(player, "experience", 0)
]]

-- get player experience value, returns 0 if experience typ not found
experience.get = function(player, exp_type)
	local player_name = player:get_player_name()
	local file_path = experience.worldpath .. "/" .. player_name .. "_" .. exp_type

	local xp_file = io.open(file_path, "r")
	if xp_file then
		local experience = xp_file:read("*n")
		xp_file:close()
		return experience
	end

	return 0
end

-- sets players experience value to 'value' or 0 if no 'value' is provided
experience.set = function(player, exp_type, value)
	local player_name = player:get_player_name()
	local file_path = experience.worldpath .. "/" .. player_name .. "_" .. exp_type

	local xp_file = io.open(file_path, "w")
	xp_file:write(value or 0)
	xp_file:close()
end


-- debug chat command for testing the new API
core.register_chatcommand("exp", {
	params = "set/get [exp_type] <value>" ,
	description = "Manipulation of experience values. For debuging purposes only!",
	privs = {debug = true},
	func = function(player_name, params)
		local args = string.split(params, " ", false, -1, false)
		local player = core.get_player_by_name(player_name)

		if args[1] == "set" then
			if args[2] then
				experience.set(player, args[2], args[3] or 0)
				return
			end
		elseif args[1] == "get" then
			if args[2] then
				local exp_value = experience.get(player, args[2])
				core.chat_send_player(player_name, string.format("%s: %s", args[2], exp_value))
				return
			end
		end
		core.chat_send_player(player_name, "Improper command usage")
	end,
})
