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
		file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/"..player:get_player_name().."_experience_blau") == true then
	else
		file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_blau", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/"..player:get_player_name().."_experience_rot") == true then
	else
		file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_rot", "w")
		file:write("0")
		file:close()
	end
	if file_check(minetest.get_worldpath().."/"..player:get_player_name().."_experience_grau") == true then
	else
		file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_grau", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/"..player:get_player_name().."_experience_gelb") == true then
	else
		file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_gelb", "w")
		file:write("0")
		file:close()
	end
    if file_check(minetest.get_worldpath().."/"..player:get_player_name().."_experience_cyan") == true then
	else
		file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_cyan", "w")
		file:write("0")
		file:close()
	end
end)
dofile(path.."/Xp1_gruen.lua")
dofile(path.."/Xp2_rot.lua")
dofile(path.."/Xp2_blau.lua")
dofile(path.."/Xp3_grau.lua")
dofile(path.."/Xp4_gelb.lua")
dofile(path.."/Xp5_cyan.lua")

