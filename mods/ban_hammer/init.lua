-----------------------------------------------------------------------------------------------
local title = "Ban Hammer"
local version = "0.2.1"
local mname = "ban_hammer"
-----------------------------------------------------------------------------------------------
dofile(minetest.get_modpath("ban_hammer").."/settings.txt")
-----------------------------------------------------------------------------------------------

local mode_text = {
	{"ban punched player"},
	{"kick punched player"},
	{"remove shout privilege of punched player"},
	{"remove fly privilege of punched player"},
	{"remove noclip privilege of punched player"},
}


local function ban_hammer_handler(itemstack, user, pointed_thing, mode)
	local keys = user:get_player_control()
	if pointed_thing.type ~= "object" then
		return
	end
	if not pointed_thing.ref:is_player() then
		return
	end
	local puncher = user:get_player_name()
	local puncher_privs = minetest.get_player_privs(puncher)
	if (puncher_privs["ban"] == false) then
		return
	end
	local punched_player = pointed_thing.ref:get_player_name()
	local punched_player_privs = minetest.get_player_privs(punched_player)
	if mode == 1 then
		if SEND_MESSAGE_TO_ALL == true then
			minetest.chat_send_all("The ban hammer has struck, wielded by "..puncher..", banning "..punched_player.." from the server.")
		end
		minetest.log("action", puncher .. " bans " .. punched_player .. ".")
		minetest.ban_player(punched_player)
	elseif mode == 2 then
		if SEND_MESSAGE_TO_ALL == true then
			minetest.chat_send_all("The ban hammer has struck, wielded by "..puncher..", kicking "..punched_player.." from the server.")
		end
		minetest.log("action", puncher .. " kicked " .. punched_player)
		minetest.kick_player(punched_player)
	elseif mode == 3 then
		punched_player_privs["shout"] = nil
		minetest.set_player_privs(punched_player, punched_player_privs)
		minetest.log(puncher..' revoked (shout) privileges from '..punched_player)
		if SEND_MESSAGE_TO_ALL == true then
			minetest.chat_send_all("The ban hammer has struck, wielded by "..puncher..", revoking shout from "..punched_player)
		end	
		minetest.chat_send_player(punched_player, puncher.." revoked privileges from you: shout")
	elseif mode == 4 then
		punched_player_privs["fly"] = nil
		minetest.set_player_privs(punched_player, punched_player_privs)
		minetest.log(puncher..' revoked (fly) privileges from '..punched_player)
		if SEND_MESSAGE_TO_ALL == true then
			minetest.chat_send_all("The ban hammer has struck, wielded by "..puncher..", revoking fly from "..punched_player)
		end	
		minetest.chat_send_player(punched_player, puncher.." revoked privileges from you: fly")
	elseif mode == 5 then
		punched_player_privs["noclip"] = nil
		minetest.set_player_privs(punched_player, punched_player_privs)
		minetest.log(puncher..' revoked (noclip) privileges from '..punched_player)
		if SEND_MESSAGE_TO_ALL == true then
			minetest.chat_send_all("The ban hammer has struck, wielded by "..puncher..", revoking noclip from "..punched_player)
		end	
		minetest.chat_send_player(punched_player, puncher.." revoked privileges from you: noclip")

	end
	return itemstack
end

for i = 2, 5 do
	minetest.register_craftitem("ban_hammer:hammer"..i, {
		description = "Admin tool 1: Ban Hammer Mode "..i.." ("..mode_text[i][1]..")",
		inventory_image = "ban_hammer.png^technic_tool_mode"..i..".png",
		wield_image = "ban_hammer.png",
		groups = {not_in_creative_inventory=1},
		stack_max = 1,
		on_use = function(itemstack, user, pointed_thing)
			local mode = i
			ban_hammer_handler(itemstack, user, pointed_thing, mode)
			return itemstack
		end,
	})
end

minetest.register_craftitem("ban_hammer:hammer1", {
	description = "Admin tool 1: Ban Hammer Mode 1 ("..mode_text[1][1]..")",
	inventory_image = "ban_hammer.png^technic_tool_mode1.png",
	wield_image = "ban_hammer.png",
	stack_max = 1,
	on_use = function(itemstack, user, pointed_thing)
		ban_hammer_handler(itemstack, user, pointed_thing, 1)
		return itemstack
	end,
})
-----------------------------------------------------------------------------------------------
print("[Mod] "..title.." ["..version.."] ["..mname.."] Loaded...")
-----------------------------------------------------------------------------------------------
