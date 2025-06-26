--[[
TODO: refactor on_exp_gain code
TODO: code cleanup and documentation
TODO: mesh orbs

experience.get(player, "experience")
experience.set(player, "experience", 0)

experience.add_orb(pos, "experience")
experience.is_xp_orb(object, "experience")

experience.register_xp_type("experience", {
	description = "",
	texture = "orb.png",
	on_xp_gain = function(player, new_xp)
	end,
})

]]

-- get player experience value, returns 0 if experience type not found
experience.get = function(player, xp_type)
	local meta = player:get_meta()
	local experience = meta:get_int(xp_type)
	return experience
end

-- sets players experience value to 'value' or 0 if no 'value' is provided
experience.set = function(player, xp_type, value)
	local meta = player:get_meta()
	meta:set_int(xp_type, value or 0)
end

-- add experience points to selected type and call xp gain callbacks
experience.add = function(player, xp_type, value)
	local current_xp = experience.get(player, xp_type)
	local new_xp = current_xp + value
	experience.set(player, xp_type, new_xp)

	local xp_def = experience.registered_xp_types[xp_type]
	if xp_def then
		xp_def.on_xp_gain(player, new_xp)
	end
end


experience.registered_xp_types = {}
experience.register_xp_type = function(name, def)
	def.name = name
	experience.registered_xp_types[name] = def
end

-- return center pos of players collision box
experience.get_player_center = function(player)
	local col = player:get_properties().collisionbox
	local minp = vector.new(col[1], col[2], col[3])
	local maxp = vector.new(col[4], col[5], col[6])

	local center = (minp + maxp) * 0.5

	return center
end


-- EXPERIENCE ORBS

-- checks wheter an object is an xp orb
-- optionally checks for xp type as well
experience.is_xp_orb = function(obj, xp_type)
	local ent = obj:get_luaentity()
	if ent and ent.name == "experience:xp_orb" then
		if xp_type then
			if xp_type == ent.xp_type then
				return true
			else
				return false
			end
		end
		return true
	else
		return false
	end
end

experience.add_orb = function(pos, xp_type)
	local obj = core.add_entity(pos, "experience:xp_orb", xp_type)
end

-- unified xp orb object
minetest.register_entity("experience:xp_orb", {
	initial_properties = {
		physical = true,
		collisionbox = {-0.17, -0.17, -0.17, 0.17, 0.17, 0.17},
		visual = "sprite",
		visual_size = {x = 0.3, y = 0.3},
		textures = {},

	},
	timer = 0,
	collect = true,
	physical_state = nil,
	xp_type = nil,

	on_activate = function(self, staticdata, dtime_s)
		self.object:set_armor_groups({immortal = 1})
		self.object:set_velocity({x = 0, y = 1, z = 0})
		self.object:set_acceleration({x = 0, y = -10, z = 0})

		if staticdata then
			self.xp_type = staticdata

			local xp_def = experience.registered_xp_types[self.xp_type]
			if xp_def then
				self.object:set_properties({
					textures = {xp_def.texture},
				})
			end
		end
	end,

	get_staticdata = function(self)
		return self.xp_type
	end,

	on_step = function(self, dtime)
		-- remove orb after some time has passed
		self.timer = self.timer + dtime
		if (self.timer > 300) then
			self.object:remove()
		end

		-- disable physics while resting on a solid node
		local p = self.object:get_pos()
		p.y = p.y - 0.3
		local nn = minetest.get_node(p).name
		if not minetest.registered_nodes[nn] or minetest.registered_nodes[nn].walkable then
			if self.physical_state then
				self.object:set_velocity({x=0, y=0, z=0})
				self.object:set_acceleration({x=0, y=0, z=0})
				self.physical_state = false
				self.object:set_properties({
					physical = false
				})
			end
		else
			if not self.physical_state then
				self.object:set_velocity({x=0,y=0,z=0})
				self.object:set_acceleration({x=0, y=-10, z=0})
				self.physical_state = true
				self.object:set_properties({
					physical = true
				})
			end
		end

	end,
})

-- accelerate xp orbs towards close players
core.register_globalstep(function(dtime)
	for _, player in ipairs(core.get_connected_players()) do
		local player_pos = player:get_pos()
		-- local player_height = player:get_properties().collisionbox[5]

		-- player_pos = player_pos + experience.get_player_center(player)
		player_pos.y = player_pos.y + 0.5

		for object in core.objects_inside_radius(player_pos, 3) do
			if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "experience:xp_orb" then
				player_pos.y = player_pos.y + 0.2
				local orb_pos = object:get_pos()

				local vec = player_pos - orb_pos
				vec = vec * 3

				object:set_velocity(vec)
			end
		end
	end
end)

-- pick up xp orbs
core.register_globalstep(function(dtime)
	for _, player in ipairs(core.get_connected_players()) do
		local player_pos = player:get_pos()
		-- local player_height = player:get_properties().collisionbox[5]

		-- player_pos = player_pos + experience.get_player_center(player)
		player_pos.y = player_pos.y + 0.5

		for object in core.objects_inside_radius(player_pos, 1) do
			if experience.is_xp_orb(object) then
				local xp_type = object:get_luaentity().xp_type
				local xp_def = xp_type and experience.registered_xp_types[xp_type]

				if xp_def then
					object:remove()
					experience.add(player, xp_type, 1)
					minetest.sound_play("orb", {
						to_player = player:get_player_name(),
					})
				end
			end
		end
	end
end)






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
