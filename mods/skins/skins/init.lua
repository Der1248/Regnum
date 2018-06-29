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
	page = skins.pages[name]
	if page == nil then page = 0 end
	print (name)
	local player = minetest.get_player_by_name(name)
	local player_inv = player:get_inventory()
	player_inv:set_size("skinskey", 1)
    player_inv:set_size("skinskey2", 1)
    player_inv:set_size("knightskin", 1)
	local formspec = "size[8,11.75]"
		.. "button[0,0;2,.5;inven;Back]"
		.. "button[2,0;2,.5;main;Main]"
        .."background[8,12;1,1;gui_formbg.png;true]"
        .."listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"
        .."bgcolor[#080808BB;true]"
		.."list[current_player;skinskey;2,6;1,1;]"
        .."list[current_player;skinskey2;4.5,6;1,1;]"
		.."label[1.7,7;Pixeled Regnum Key]"
        .."label[4.5,7;Knight Key]"
		.."list[current_player;main;0,7.75;8,1;]"
		.."list[current_player;main;0,9;8,3;8]"
	if skins.get_type(skins.skins[name]) == skins.type.MODEL then
		formspec = formspec
			.. "image[0,.75;1,2;"..skins.skins[name].."_preview.png]"
			.. "image[1,.75;1,2;"..skins.skins[name].."_preview_back.png]"
			.. "label[6,.5;Raw texture:]"
			.. "image[6,1;2,1;"..skins.skins[name]..".png]"
		
	else
		formspec = formspec
			.. "image[0,.75;1,2;"..skins.skins[name]..".png]"
			.. "image[1,.75;1,2;"..skins.skins[name].."_back.png]"
	end
	local meta = skins.meta[skins.skins[name]]
	if meta then
		if meta.name then
			formspec = formspec .. "label[2,.5;Name: "..meta.name.."]"
		end
		if meta.author then
			formspec = formspec .. "label[2,1;Author: "..meta.author.."]"
		end
		if meta.comment then
			formspec = formspec .. "label[2,1.5;"..meta.comment.."]"
		end
        if meta.description then
			formspec = formspec .. "label[2,2;"..meta.description.."]"
		end
	end
	local index = 0
	local skip = 0 -- Skip skins, used for pages
	for i, skin in ipairs(skins.list) do
		if skin == "character_68" then
			if player:get_inventory():get_stack("skinskey",1):get_name() == "tutorial:regnum_key_pixeled" then
				formspec = formspec .."button[6,5.8;2,1;skins_set_"..i..";see-through skin]"
			end
        elseif skin == "character_171" then
			formspec = formspec .."button[0,5.8;1.5,1;skins_set_"..i..";1248]"
        elseif skin == "character_172" then
			formspec = formspec .."button[0,6.5;1.5,1;skins_set_"..i..";Nightmare]"
        elseif skin == "character_175" or skin == "character_176" or skin == "character_177" or skin == "character_178" or skin == "character_179" then
			if player:get_inventory():get_stack("skinskey2",1):get_name() == "tutorial:knight_schluessel" then
				if player:get_inventory():get_stack("knightskin",1):get_count() == 0 then
                    formspec = formspec .."button[6,6.5;2,1;skins_set_175;Knight (red)]"
                elseif player:get_inventory():get_stack("knightskin",1):get_count() == 1 then
                    formspec = formspec .."button[6,6.5;2,1;skins_set_176;Knight (blue)]"
                elseif player:get_inventory():get_stack("knightskin",1):get_count() == 2 then
                    formspec = formspec .."button[6,6.5;2,1;skins_set_177;Knight (green)]"
                elseif player:get_inventory():get_stack("knightskin",1):get_count() == 3 then
                    formspec = formspec .."button[6,6.5;2,1;skins_set_178;Knight (pink)]"
                elseif player:get_inventory():get_stack("knightskin",1):get_count() == 4 then
                    formspec = formspec .."button[6,6.5;2,1;skins_set_179;Knight (purple)]"
                end
			end
            
		else
		    if skip < page*8 then skip = skip + 1 else
			    if index < 8 then
				    print(skin)
				    formspec = formspec .. "image_button["..(index%8)..",2.7;1,2;"..skin
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
		formspec = formspec .. "button[0,4.7;1,.5;skins_page_"..(page-1)..";<<]"
	else
		formspec = formspec .. "button[0,4.7;1,.5;skins_page_"..page..";<<]"
	end
	formspec = formspec .. "button[.75,4.7;6.5,.5;skins_page_"..page..";Page "..(page+1).."/"..math.floor(#skins.list/8+1).."]" -- a button is used so text is centered
	if index > 8 then
		formspec = formspec .. "button[7,4.7;1,.5;skins_page_"..(page+1)..";>>]"
	else
		formspec = formspec .. "button[7,4.7;1,.5;skins_page_"..page..";>>]"
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

minetest.register_on_player_receive_fields(function(player,formname,fields)
	if fields.skins then
		inventory_plus.set_inventory_formspec(player,skins.formspec.main(player:get_player_name()))
	end
    if fields.skins_set_175 then
		if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("knightskin", 1)
        local artrew = player_inv:set_stack("knightskin", 1, "default:dirt")
	end
    if fields.skins_set_176 then
		if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("knightskin", 1)
        local artrew = player_inv:set_stack("knightskin", 1, "default:dirt 2")
	end
    if fields.skins_set_177 then
		if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("knightskin", 1)
        local artrew = player_inv:set_stack("knightskin", 1, "default:dirt 3")
	end
    if fields.skins_set_178 then
		if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("knightskin", 1)
        local artrew = player_inv:set_stack("knightskin", 1, "default:dirt 4")
	end
    if fields.skins_set_179 then
		if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("knightskin", 1)
        local artrew = player_inv:set_stack("knightskin", 1, "")
	end
	for field, _ in pairs(fields) do
		if string.sub(field,0,string.len("skins_set_")) == "skins_set_" then
			skins.skins[player:get_player_name()] = skins.list[tonumber(string.sub(field,string.len("skins_set_")+1))]
			skins.update_player_skin(player)
			inventory_plus.set_inventory_formspec(player,skins.formspec.main(player:get_player_name()))
		end
		if string.sub(field,0,string.len("skins_page_")) == "skins_page_" then
			skins.pages[player:get_player_name()] = tonumber(string.sub(field,string.len("skins_page_")+1))
			inventory_plus.set_inventory_formspec(player,skins.formspec.main(player:get_player_name()))
		end
	end
end)

