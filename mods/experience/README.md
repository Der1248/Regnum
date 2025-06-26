### Experience [experience]

Experience handling mod for the Regnum game.

2025 - Rewritten in large parts by Skamiz,
	to avoid code duplication and increase general code quality.

## API

experience.register_xp_type(xp_name, xp_definition)
- registers a new xp type
- 'xp_name', how this xp type will be reffered to
- 'xp_definition', table like so:
	{
		description = "", -- not currently used
		texture = "orb.png", -- texture applied to xp orbs
		on_xp_gain = function(player, new_xp, old_xp)
			-- callback that triggers every time 'player' gains xp
		end,
	}

experience.get(player, xp_type)
- return xp amount of the given xp_type the player has

experience.set(player, xp_type, value)
- set xp amount of the given xp_type for the player
- this does not call the xp gain callback

experience.add = function(player, xp_type, value)
- adds 'value' xp points to the players specified xp type
- calls xp gain callback


experience.is_xp_orb(obj, xp_type)
- checks whether a given object is an xp orb
- optionally checks whether the orb is of specifiec xp type

experience.add_orb(pos, xp_type)
- spawns an xp orb of given type at 'pos'
- players can pick this orb up to gain 1 xp of the given type
