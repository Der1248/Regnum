local remove_list = true
minetest.register_on_mods_loaded(function()
	armor.formspec = "image[2,0.5;2,4;armor_preview]"
		.."label[6.45,3.4;Armor Key]"
		.."label[6.25,1.4;Protection Key]"
		.."label[4,0.5;Reduction:  armor_level%]"
		.."label[4,1;Probability:  armor_attr_heal%]"
		.."label[4,1.5;Maximum Hp:  max_hp]"
		.."label[4,2;Speed boost:]"
		.."label[4,2.5;Jump boost:]"
		.."label[4,3;Fire protect:  armor_attr_fire]"
		.."label[4,3.5;Water protect:  armor_attr_water]"
		.."label[4,4;Feather fall:  armor_attr_feather]"
		.."image[0,0.5;1,1;3d_armor_inv_helmet_background.png]"
		.."image[0,1.5;1,1;3d_armor_inv_chestplate_background.png]"
		.."image[0,2.5;1,1;3d_armor_inv_leggings_background.png]"
		.."image[0,3.5;1,1;3d_armor_inv_boots_background.png]"
		.."image[1,1.5;1,1;shields_inv_shield_background.png]"
		.."image[1,2.5;1,1;3d_armor_inv_heart_background.png]"
	armor.config.drop = false
	
	armor.get_armor_formspec = function(self, name, listring)
		
		
		local formspec = armor.formspec..
		"list[detached:"..name.."_armor;armor;0,0.5;1,4;]"..
		"list[detached:"..name.."_armor;armor;1,1.5;1,2;4]"
		
		local player = minetest.get_player_by_name(name)
		local player_inv = player:get_inventory()
		local arm_name = player_inv:get_stack("arm", 1):get_name()
		local arm2_name = player_inv:get_stack("arm2", 1):get_name()
		local am = player_inv:get_stack("am", 1):get_count()
		if am == 1 then
			formspec = formspec .."button[6,3.9;2,0.5;armon;armor on]"
		else
			formspec = formspec .."button[6,3.9;2,0.5;armoff;armor off]"

		end
		if listring == true then
			formspec = formspec.."listring[current_player;main]"
				.."listring[detached:"..name.."_armor;armor]"
		end

		if arm2_name == "tutorial:protection_schluessel3" and remove_list then
			formspec = formspec.."image[6.5,0.5;1,1;tutorial_protection_schluessel3.png]"
		else
			formspec = formspec.."image[6.5,0.5;1,1;tutorial_background_schluessel.png]"
			.."list[detached:"..name.."_armor;arm2;6.5,0.5;1,1;]"
			.."listring[current_player;main]"
			.."listring[detached:"..name.."_armor;arm2]"
		end
		if arm_name == "tutorial:armor_key" and remove_list then
			formspec = formspec.."image[6.5,2.5;1,1;tutorial_armor_schluessel.png]"
		else
			formspec = formspec.."image[6.5,2.5;1,1;tutorial_background_schluessel.png]"
			.."list[current_player;arm;6.5,2.5;1,1;]"
			.."listring[current_player;main]"
			.."listring[current_player;arm]"
		end
		local speed_count = player_inv:get_stack("armor_speed", 1):get_count()
		local jump_count = player_inv:get_stack("armor_jump", 1):get_count()
		speed_count = 1+speed_count*0.25
		jump_count = 1+jump_count*0.25


		if jump_count > armor.def[name]["jump"] then
			jump_count = armor.def[name]["jump"]
			player_inv:set_stack("armor_jump", 1, "tutorial:dirt "..tonumber((armor.def[name]["jump"]-1)/0.25))
		end
		if speed_count > armor.def[name]["speed"] then
			speed_count = armor.def[name]["speed"]
			player_inv:set_stack("armor_speed", 1, "tutorial:dirt "..tonumber((armor.def[name]["speed"]-1)/0.25))
		end


		formspec = formspec.."image_button[5.3,2;0.8,0.6;;armor_speed;"..speed_count.."x]"
		.."image_button[5.3,2.5;0.8,0.6;;armor_jump;"..jump_count.."x]"

		formspec = formspec:gsub("max_hp", set_new_hp(player))
		formspec = formspec:gsub("armor_preview", armor.textures[name].preview)
		if armor.def[name].level > 100 then
			armor.def[name].level = 100
		end
		formspec = formspec:gsub("armor_level", armor.def[name].level)
		for _, attr in pairs(self.attributes) do
			if attr == "water" or attr == "feather" or attr == "fire" then
				if armor.def[name][attr] == 1 then
					formspec = formspec:gsub("armor_attr_"..attr, "true")
				else
					formspec = formspec:gsub("armor_attr_"..attr, "false")
				end
			else
				if armor.def[name][attr] > 100 then
					armor.def[name][attr] = 100
				end
				formspec = formspec:gsub("armor_attr_"..attr, armor.def[name][attr])
			end
		end
		for _, attr in pairs(self.physics) do
			formspec = formspec:gsub("armor_physics_"..attr, armor.def[name][attr])
		end
		for group, _ in pairs(self.registered_groups) do
			formspec = formspec:gsub("armor_group_"..group,
				armor.def[name].groups[group])
		end
		return formspec
	end
	sfinv.override_page("3d_armor:armor", {
		title = "Armor",
		get = function(self, player, context)
			local name = player:get_player_name()
			local formspec = armor:get_armor_formspec(name, true)
			return sfinv.make_formspec(player, context, formspec, true)
		end,
		on_player_receive_fields = function(self, player, context, fields)
			local name = player:get_player_name()
			local player_inv = player:get_inventory()
			if fields.armoff then
				local type = player:get_inventory():get_stack("arm",1):get_name()
				if type == "tutorial:armor_key" then
					player_inv:set_stack("am", 1, "default:dirt")
				else
				end
				armor:set_player_armor(player)
				armor:update_inventory(player)
			end
			if fields.armon then
				player_inv:set_stack("am", 1, nil)
				armor:set_player_armor(player)
				armor:update_inventory(player)
			end
			if fields.armor_speed then
				local speed_count = player_inv:get_stack("armor_speed", 1):get_count()
				if speed_count == tonumber((armor.def[name]["speed"]-1)/0.25) then
					player_inv:set_stack("armor_speed", 1, nil)
				else
					player_inv:set_stack("armor_speed", 1, "tutorial:dirt "..speed_count+1)
				end
				armor:set_player_armor(player)
				armor:update_inventory(player)
			end
			if fields.armor_jump then
				local jump_count = player_inv:get_stack("armor_jump", 1):get_count()
				if jump_count == tonumber((armor.def[name]["jump"]-1)/0.25) then
					player_inv:set_stack("armor_jump", 1, nil)
				else
					player_inv:set_stack("armor_jump", 1, "tutorial:dirt "..jump_count+1)
				end
				armor:set_player_armor(player)
				armor:update_inventory(player)
			end
		end
	})
end)