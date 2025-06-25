experience = {}
experience.modname = core.get_current_modname()
experience.modpath = core.get_modpath(experience.modname)
experience.worldpath = core.get_worldpath()

dofile(experience.modpath .. "/api.lua")


local path = minetest.get_modpath("experience")
function file_check(file_name)
	local file_found=io.open(file_name, "r")
	if file_found==nil then
		file_found=false
	else
		file_found=true
	end
	return file_found
end
minetest.register_on_joinplayer(function(player)
	if file_check(minetest.get_worldpath().."/"..player:get_player_name().."_experience") == true then
	else
		experience.set(player, "experience", 0)
	end
	if file_check(minetest.get_worldpath().."/"..player:get_player_name().."_experience_blau") == true then
	else
		experience.set(player, "experience_blau", 0)
	end
	if file_check(minetest.get_worldpath().."/"..player:get_player_name().."_experience_rot") == true then
	else
		experience.set(player, "experience_rot", 0)
	end
	if file_check(minetest.get_worldpath().."/"..player:get_player_name().."_experience_grau") == true then
	else
		experience.set(player, "experience_grau", 0)
	end
    if file_check(minetest.get_worldpath().."/"..player:get_player_name().."_experience_gelb") == true then
	else
		experience.set(player, "experience_gelb", 0)
	end
    if file_check(minetest.get_worldpath().."/"..player:get_player_name().."_experience_cyan") == true then
	else
		experience.set(player, "experience_cyan", 0)
	end
	if file_check(minetest.get_worldpath().."/"..player:get_player_name().."_experience_bronze") == true then
	else
		experience.set(player, "experience_bronze", 0)
	end
	if file_check(minetest.get_worldpath().."/"..player:get_player_name().."_experience_silver") == true then
	else
		experience.set(player, "experience_silver", 0)
	end
end)
dofile(path.."/Xp1_gruen.lua")
dofile(path.."/Xp2_rot.lua")
dofile(path.."/Xp2_blau.lua")
dofile(path.."/Xp3_grau.lua")
dofile(path.."/Xp4_gelb.lua")
dofile(path.."/Xp5_cyan.lua")
dofile(path.."/Xp6_precious_metal.lua")
