local path = minetest.get_modpath("mobs")

dofile(path.."/api.lua")
dofile(path.."/animal.lua")
dofile(path.."/egg.lua")




dofile(path.."/monsterx1.lua")
--dofile(path.."/monsterx2.lua")
--dofile(path.."/monsterx4.lua")
--dofile(path.."/monsterx8.lua")
--dofile(path.."/monsterx16.lua")
--dofile(path.."/monsterx32.lua")
--dofile(path.."/monsterx64.lua")



if minetest.setting_get("log_mods") then
	minetest.log("action", "mobs loaded")
end
