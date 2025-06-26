-- TODO: refactor on_exp_gain code

-- XP REGISTRATION

experience.registered_xp_types = {}
experience.register_xp_type = function(name, def)
	def.name = name
	experience.registered_xp_types[name] = def
end


-- XP TRACKING

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

-- add experience points of selected type and call xp gain callbacks
experience.add = function(player, xp_type, value)
	local current_xp = experience.get(player, xp_type)
	local new_xp = current_xp + value
	experience.set(player, xp_type, new_xp)

	local xp_def = experience.registered_xp_types[xp_type]
	if xp_def then
		xp_def.on_xp_gain(player, new_xp, current_xp)
	end
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

-- spawn xp orb at given location
experience.add_orb = function(pos, xp_type)
	local obj = core.add_entity(pos, "experience:xp_orb", xp_type)
end

-- unified xp orb object
core.register_entity("experience:xp_orb", {
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
		local nn = core.get_node(p).name
		if not core.registered_nodes[nn] or core.registered_nodes[nn].walkable then
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

-- accelerate xp orbs towards close players and pick them up
core.register_globalstep(function(dtime)
	for _, player in ipairs(core.get_connected_players()) do
		local player_pos = player:get_pos()
		local coll = player:get_properties().collisionbox
		local middle_height = (coll[2] + coll[5]) / 2
		player_pos.y = player_pos.y + middle_height

		for object in core.objects_inside_radius(player_pos, 3) do
			if experience.is_xp_orb(object) then
				local orb_pos = object:get_pos()
				local vec = player_pos - orb_pos

				if vec:length() <= 1.1 then -- pick orb up
					local xp_type = object:get_luaentity().xp_type
					local xp_def = xp_type and experience.registered_xp_types[xp_type]

					if xp_def then
						object:remove()
						experience.add(player, xp_type, 1)
						core.sound_play("orb", {
							to_player = player:get_player_name(),
						})
					end
				else -- accelerate orbs towards player
					vec = vec * 3
					object:set_velocity(vec)
				end
			end
		end
	end
end)


-- DEBUG COMMAND

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
