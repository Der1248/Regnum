local path = minetest.get_modpath("mobs")

dofile(path.."/api.lua")
dofile(path.."/egg.lua")
dofile(path.."/dog.lua")
dofile(path.."/cat.lua")
dofile(path.."/sheep.lua")
dofile(path.."/dragon.lua")
dofile(path.."/knight.lua")
local dmg = minetest.setting_get("monster_paper")
local dmgg = minetest.setting_get("monster")
if dmg == "1" then 
	dofile(path.."/monsterx1.lua")
elseif dmg == "2" then
	dofile(path.."/monsterx2.lua")
elseif dmg == "4" then
	dofile(path.."/monsterx4.lua")
elseif dmg == "8" then
	dofile(path.."/monsterx8.lua")
elseif dmg == "16" then
	dofile(path.."/monsterx16.lua")
elseif dmg == "32" then
	dofile(path.."/monsterx32.lua")
else
	minetest.setting_set("monster_paper", "1")
	dofile(path.."/monsterx1.lua")
end

if dmgg == "1" then 
elseif dmgg == "0" then
	dofile(path.."/monsteroff.lua")
else
	minetest.setting_set("monster", "1")
end

minetest.register_on_dignode(function(pos, oldnode, digger)
	local dmgg = minetest.setting_get("monster")
end)



if minetest.setting_get("log_mods") then
	minetest.log("action", "mobs loaded")
end
