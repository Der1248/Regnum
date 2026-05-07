
-- peaceful player privilege

minetest.register_privilege("peaceful_player", {
	description = "Prevents Mobs Redo mobs from attacking player",
	give_to_singleplayer = false
})

-- fallback node

minetest.register_node("mobs:fallback_node", {
	description = "Fallback Node",
	tiles = {"mobs_fallback.png"},
	is_ground_content = false,
	groups = {handy = 1, crumbly = 3, not_in_creative_inventory = 1},
	drop = ""
})

local path = minetest.get_modpath("mobs")
dofile(path .. "/added_functions.lua")

dofile(path .. "/api.lua") -- mob API

dofile(path .. "/mount.lua") -- rideable mobs

--dofile(path .. "/crafts.lua") -- items and crafts

--dofile(path .. "/spawner.lua") -- mob spawner

-- Lucky Blocks

if minetest.get_modpath("lucky_block") then
	dofile(path .. "/lucky_block.lua")
end

print("[MOD] Mobs Redo loaded")

--[[
	Changes:
	--add dofile(path .. "/added_functions.lua")
	--remove crafts.lua
	--Changes for api.lua:
		~50   changed few settings 							after 'Load settings'
		~150  metadata3 = 0,								in mob_class = ...
		~620  remove self.infotext							in function mob_class:update_tag
		~740  old nametag									in function mob_class:check_for_death
		~2690 check for animals								after 'do damage'
		~2970 activate immortal								after 'Armor groups (immortal = 1 for custom damage handling)'
		~2990 first activate(self) 							after 'set anything changed above' and self.object:set_properties(self)
		~3090 first_step(self)								after 'main mob function' and function mob_class:on_step(dtime, moveresult)
		~3370 metadata = def.metadata,						in minetest.register_entity ...
		~3370 metadata2 = def.metadata2,					in minetest.register_entity ...
		~3370 remove on_rightclick = def.on_rightclick,		in minetest.register_entity ...
		~3380 on_rightclick = ...							in minetest.register_entity ...
		~3380 on_receive_fields = ...						in minetest.register_entity ...
		~4030 add 2x "_egg"									in function mobs:register_egg		
		~4570 if false then									after 'Is mob hearing enabled'
--]]