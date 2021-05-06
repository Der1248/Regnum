-- Copyright (c) 2013-18 rubenwardy. MIT.

local S = awards.gettext

function awards.get_formspec(name, to, sid)
	local formspec = ""
	local awards_list = awards.get_award_states(name)

	if #awards_list == 0 then
		formspec = formspec .. "label[3.9,1.5;"..minetest.formspec_escape(S("Error: No achivements available.")).."]"
		formspec = formspec .. "button_exit[4.2,2.3;3,1;close;"..minetest.formspec_escape(S("OK")).."]"
		return formspec
	end
	sid = awards_list[sid] and sid or 1

	-- Sidebar
	local sitem = awards_list[sid]
	local sdef = sitem.def
	if sdef and sdef.secret and not sitem.unlocked then
		formspec = formspec .. "label[1,3.85;"..
				minetest.formspec_escape(S("(Secret Award)")).."]"..
				"image[0.45,0.75;3.5,3.5;awards_unknown.png]"
		if sdef and sdef.description then
			formspec = formspec	.. "textarea[0.25,4.35;4.8,1.7;;"..
					minetest.formspec_escape(
							S("Unlock this award to find out what it is."))..";]"
		end
	else
		local title = sitem.name
		if sdef and sdef.title then
			title = sdef.title
		end
		local status = "%s"
		if sitem.unlocked then
			status = S("%s (unlocked)")
		end

		formspec = formspec .. "textarea[0.5,3.85;4.8,1.45;;" ..
			string.format(status, minetest.formspec_escape(title)) ..
			";]"

		if sdef and sdef.icon then
			formspec = formspec .. "image[0.45,0.75;3.5,3.5;" .. sdef.icon .. "]"  -- adjusted values from 0.6,0;3,3
		end

		if sitem.progress then
			local barwidth = 3.95
			local perc = sitem.progress.current / sitem.progress.target
			local label = sitem.progress.label
			if perc > 1 then
				perc = 1
			end
			formspec = formspec .. "background[0,8.99;" .. barwidth ..",0.4;awards_progress_gray.png;false]"
			formspec = formspec .. "background[0,8.99;" .. (barwidth * perc) ..",0.4;awards_progress_green.png;false]"
			if label then
				formspec = formspec .. "label[1.6,8.90;" .. minetest.formspec_escape(label) .. "]"
			end
		end

		if sdef and sdef.description then
			formspec = formspec .. "box[-0.05,4.5;3.9,4.2;#000]"
			formspec = formspec	.. "textarea[0.25,4.5;3.9,4.2;;" ..
					minetest.formspec_escape(sdef.description) .. ";]"
		end
	end
	local total_awards = 0
	-- Create list box
	formspec = formspec .. "textlist[4,0.75;3.8,8.6;awards;"
	local first = true
	for _, award in pairs(awards_list) do
		local def = award.def
		if def then
			if not first then
				formspec = formspec .. ","
			end
			first = false

			if def.secret and not award.unlocked then
				formspec = formspec .. "#707070"..minetest.formspec_escape(S("(Secret Award)"))
			else
				local title = award.name
				if def and def.title then
					title = def.title
				end
				-- title = title .. " [" .. award.score .. "]"
				if award.unlocked then
					total_awards = total_awards + 1
					formspec = formspec .. minetest.formspec_escape(title)
				elseif award.started then
					formspec = formspec .. "#c0c0c0".. minetest.formspec_escape(title)
				else
					formspec = formspec .. "#a0a0a0".. minetest.formspec_escape(title)
				end
			end
		end
	end
	if total_awards == 42 then
		local player_inv = minetest.get_player_by_name(name):get_inventory()
		player_inv:set_size("a20", 1)
		player_inv:set_stack("a20", 1, "default:dirt")
	else
		local player_inv = minetest.get_player_by_name(name):get_inventory()
		player_inv:set_size("a20", 1)
		player_inv:set_stack("a20", 1, "")
	end
	formspec = formspec .. ";"..sid.."]"
	formspec = formspec .. "label[5.6,0;"..total_awards.."/42]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
	return formspec
end


function awards.show_to(name, to, sid, text)
	if name == "" or name == nil then
		name = to
	end
	local data = awards.player(to)
	if name == to and data.disabled then
		minetest.chat_send_player(name, S("You've disabled awards. Type /awards enable to reenable."))
		return
	end
	if text then
		local awards_list = awards.get_award_states(name)
		if #awards_list == 0 then
			minetest.chat_send_player(to, S("Error: No award available."))
			return
		elseif not data or not data.unlocked  then
			minetest.chat_send_player(to, S("You have not unlocked any awards."))
			return
		end
		minetest.chat_send_player(to, string.format(S("%s’s awards:"), name))

		for str, _ in pairs(data.unlocked) do
			local def = awards.registered_awards[str]
			if def then
				if def.title then
					if def.description then
						minetest.chat_send_player(to, string.format(S("%s: %s"), def.title, def.description))
					else
						minetest.chat_send_player(to, def.title)
					end
				else
					minetest.chat_send_player(to, str)
				end
			end
		end
	else
		local deco = ""
		if minetest.global_exists("default") then
			deco = default.gui_bg .. default.gui_bg_img
		end
		-- Show formspec to user
		minetest.get_player_by_name(to):set_inventory_formspec("size[8,9.35]" .. deco .. awards.get_formspec(name, to, sid))
	end
end

minetest.register_on_player_receive_fields(function(player, formname, fields)
	local name = player:get_player_name()
	if fields.aw then
		awards.show_to(name, name, nil, false)
	end

	
	if fields.awards then
		local event = minetest.explode_textlist_event(fields.awards)
		if event.type == "CHG" then
			awards.show_to(name, name, event.index, false)
		end
	end
end)
--[[
if minetest.get_modpath("sfinv") then
	sfinv.register_page("awards:awards", {
		title = S("Awards"),
		on_enter = function(self, player, context)
			context.awards_idx = 1
		end,
		is_in_nav = function(self, player, context)
			local data = awards.player(player:get_player_name())
			return not data.disabled
		end,
		get = function(self, player, context)
			local name = player:get_player_name()
			return sfinv.make_formspec(player, context,
				awards.get_formspec(name, name, context.awards_idx),
				false)
		end,
		on_player_receive_fields = function(self, player, context, fields)
			if fields.awards then
				local event = minetest.explode_textlist_event(fields.awards)
				if event.type == "CHG" then
					context.awards_idx = event.index
					sfinv.set_player_inventory_formspec(player, context)
				end
			end
		end
	})

	local function check_and_reshow(name)
		local player = minetest.get_player_by_name(name)
		if not player then
			return
		end

		local context = sfinv.get_or_create_context(player)
		if context.page ~= "awards:awards" then
			return
		end

		sfinv.set_player_inventory_formspec(player, context)
	end

	awards.register_on_unlock(check_and_reshow)
end
--]]
if minetest.get_modpath("unified_inventory") ~= nil then
	unified_inventory.register_button("awards", {
		type = "image",
		image = "awards_ui_icon.png",
		tooltip = S("Awards"),
		action = function(player)
			local name = player:get_player_name()
			awards.show_to(name, name, nil, false)
		end,
	})
end
