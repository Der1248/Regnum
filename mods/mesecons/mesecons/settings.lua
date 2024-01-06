-- SETTINGS
function mesecon.setting(setting, default)
	if type(default) == "bool" then
		return minetest.settings:get_bool("mesecon."..setting) or default
	elseif type(default) == "string" then
		return minetest.settings:get("mesecon."..setting) or default
	elseif type(default) == "number" then
		return tonumber(minetest.settings:get("mesecon."..setting) or default)
	end
end
