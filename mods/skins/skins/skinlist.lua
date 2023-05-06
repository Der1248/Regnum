skins.list = {}
skins.add = function(skin)
	table.insert(skins.list,skin)
end

for id=1,180 do
	local f = io.open(minetest.get_modpath("skins").."/textures/player_"..id..".png")
	if f then 
		f:close()
		skins.add("player_"..id)
	end
end

for id=1,180 do
	local f = io.open(minetest.get_modpath("skins").."/textures/character_"..id..".png")
	if f then 
		f:close()
		skins.add("character_"..id)
	end
end

