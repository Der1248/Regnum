-- Skins mod for minetest
-- Adds a skin gallery to the inventory, using inventory_plus
-- Released by Zeg9 under WTFPL
-- Have fun !

skins = {}
skins.type = { SPRITE=0, MODEL=1 }

skins.skins = {}
skins.default = function()
	return "character_1"
end

skins.get_type = function(texture)
	if not texture then return end
	if string.sub(texture,0,string.len("character")) == "character" then
		return skins.type.MODEL
	end
	if string.sub(texture,0,string.len("player")) == "player" then
		return skins.type.SPRITE
	end
end

skins.modpath = minetest.get_modpath("skins")
dofile(skins.modpath.."/skinlist.lua")
dofile(skins.modpath.."/meta.lua")
dofile(skins.modpath.."/players.lua")

skins.update_player_skin = function(player)
	local name = player:get_player_name()
	if skins.get_type(skins.skins[name]) == skins.type.SPRITE then
		player:set_properties({
			visual = "upright_sprite",
			textures = {skins.skins[name]..".png",skins.skins[name].."_back.png"},
			visual_size = {x=1, y=2},
		})
	elseif skins.get_type(skins.skins[name]) == skins.type.MODEL then
		player:set_properties({
			visual = "mesh",
			textures = {skins.skins[name]..".png"},
			visual_size = {x=1, y=1},
		})
	end
	skins.save()
end

skins.formspec = {}
skins.formspec.main = function(name)
	local page = skins.pages[name]
	if page == nil then page = 0 end
	print (name)
	local remove_list = true
	local player = minetest.get_player_by_name(name)
	local player_inv = player:get_inventory()
	player_inv:set_size("skinskey", 1)
    player_inv:set_size("skinskey2", 1)
    player_inv:set_size("knightskin", 1)
	local skinskey_name = player_inv:get_stack("skinskey", 1):get_name()
	local skinskey2_name = player_inv:get_stack("skinskey2", 1):get_name()
	local formspec = "button[0,0;2,.5;back;Back]"
		.."label[4.7,1.5;Dark Regnum Key]"
        .."label[6.8,1.5;Knight Key]"
	if skinskey_name == "tutorial:regnum_key_pixeled" and remove_list then
		formspec = formspec.."image[5.2,0.6;1,1;tutorial_regnum_schluessel_dark.png]"
	else
		formspec = formspec.."image[5.2,0.6;1,1;tutorial_background_schluessel.png]"
		.."list[current_player;skinskey;5.2,0.6;1,1;]"
		.."listring[current_player;main]"
		.."listring[current_player;skinskey]"
	end
	if skinskey2_name == "tutorial:knight_schluessel" and remove_list then
		formspec = formspec.."image[6.9,0.6;1,1;tutorial_knight_schluessel.png]"
	else
		formspec = formspec.."image[6.9,0.6;1,1;tutorial_background_schluessel.png]"
		.."list[current_player;skinskey2;6.9,0.6;1,1;]"
		.."listring[current_player;main]"
		.."listring[current_player;skinskey2]"
	end
	if skins.get_type(skins.skins[name]) == skins.type.MODEL then
		formspec = formspec
			.. "image[0,.65;1,2;"..skins.skins[name].."_preview.png]"
			.. "image[1,.65;1,2;"..skins.skins[name].."_preview_back.png]"
		
	else
		formspec = formspec
			.. "image[0,.65;1,2;"..skins.skins[name]..".png]"
			.. "image[1,.65;1,2;"..skins.skins[name].."_back.png]"
	end
	local meta = skins.meta[skins.skins[name]]
	if meta then
		if meta.name then
			formspec = formspec .. "label[2,.55;Name: "..meta.name.."]"
		end
		if meta.author then
			formspec = formspec .. "label[2,1.05;Author: "..meta.author.."]"
		end
		if meta.comment then
			formspec = formspec .. "label[2,1.55;"..meta.comment.."]"
		end
        if meta.description then
			formspec = formspec .. "label[2,2.05;"..meta.description.."]"
		end
	end
	local index = 0
	local num = 0
	local skip = 0 -- Skip skins, used for pages
	for i, skin in ipairs(skins.list) do
		if skin == "character_180" and player:get_inventory():get_stack("skinskey",1):get_name() ~= "tutorial:regnum_key_pixeled" then
        elseif (skin == "character_174" or skin == "character_175" or skin == "character_176" or skin == "character_177" or skin == "character_178" or skin == "character_179") and player:get_inventory():get_stack("skinskey2",1):get_name() ~= "tutorial:knight_schluessel" then
		elseif skin == "character_173" and name ~= "1248" and name ~= "The1248" and name ~= "Der1248" then
		else
			num = num+1
		    if skip < page*8 then skip = skip + 1 else
			    if index < 8 then
				    print(skin)
				    formspec = formspec .. "image_button["..(index%8)..",2.5;1,2;"..skin
				    if skins.get_type(skin) == skins.type.MODEL then
					    formspec = formspec .. "_preview"
				    end
				    formspec = formspec .. ".png;skins_set_"..i..";]"
			    end
			    index = index +1
		    end
		end
	end
	if page > 0 then
		formspec = formspec .. "image_button[2.4,4.45;0.8,0.8;craftguide_prev_icon.png;skins_page_"..(page-1)..";]"
	--else
	--	formspec = formspec .. "image_button[2.4,4.45;0.8,0.8;craftguide_prev_icon.png;skins_page_"..(page)..";]"
	end
	formspec = formspec .. "label[3.4,4.55;Page "..(page+1).."/"..math.ceil(num/8).."]" --"button[.75,4.5;6.5,.5;skins_page_"..page..";Page "..(page+1).."/"..math.ceil(#skins.list/8).."]" -- a button is used so text is centered
	if index > 8 then
		formspec = formspec .. "image_button[4.8,4.45;0.8,0.8;craftguide_next_icon.png;skins_page_"..(page+1)..";]"
	else
		--formspec = formspec .. "image_button[4.8,4.45;0.8,0.8;craftguide_next_icon.png;skins_page_"..(page)..";]"
	end
	return formspec
end

skins.pages = {}


minetest.register_on_joinplayer(function(player)
	if not skins.skins[player:get_player_name()] then
		skins.skins[player:get_player_name()] = skins.default()
	end
	skins.update_player_skin(player)
	--inventory_plus.register_button(player,"skins","Skin")
end)