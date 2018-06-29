-- AWARDS
--    by Rubenwardy changed by 1248
-------------------------------------------------------
-- this is the init file for the award mod
-------------------------------------------------------
local intllib = nil
local S
if (intllib) then
	dofile(minetest.get_modpath("intllib").."/intllib.lua")
	S = intllib.Getter(minetest.get_current_modname())
else
	S = function ( s ) return s end
end

dofile(minetest.get_modpath("awards").."/api.lua")

awards.register_achievement("award_ruby_bronze",{
	title = S("Ruby (Bronze)"),
	description = S("Dig 25 Ruby Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:ruby_ore",
		target = 25
	}
})

awards.register_achievement("award_ruby_silber",{
	title = S("Ruby (Silber)"),
	description = S("Dig 50 Ruby Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:ruby_ore",
		target = 50
	}
})

awards.register_achievement("award_ruby_gold",{
	title = S("Ruby (Gold)"),
	description = S("Dig 100 Ruby Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:ruby_ore",
		target = 100
	}
})

awards.register_achievement("award_ruby_platin",{
	title = S("Ruby (Platin)"),
	description = S("Dig 200 Ruby Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:ruby_ore",
		target = 200
	}
})

awards.register_achievement("award_sapphire_bronze",{
	title = S("Sapphire (Bronze)"),
	description = S("Dig 25 Sapphire Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:sapphire_ore",
		target = 25
	}
})

awards.register_achievement("award_sapphire_silber",{
	title = S("Sapphire (Silber)"),
	description = S("Dig 50 Sapphire Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:sapphire_ore",
		target = 50
	}
})

awards.register_achievement("award_sapphire_gold",{
	title = S("Sapphire (Gold)"),
	description = S("Dig 100 Sapphire Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:sapphire_ore",
		target = 100
	}
})
	
awards.register_achievement("award_sapphire_platin",{
	title = S("Sapphire (Platin)"),
	description = S("Dig 200 Sapphire Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:sapphire_ore",
		target = 200
	}
})
	
awards.register_achievement("award_amethyst_bronze",{
	title = S("Amethyst (Bronze)"),
	description = S("Dig 25 Amethyst Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:amethyst_ore",
		target = 25
	}
})

awards.register_achievement("award_amethyst_silber",{
	title = S("Amethyst (Silber)"),
	description = S("Dig 50 Amethyst Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:amethyst_ore",
		target = 50
	}
})

awards.register_achievement("award_amethyst_Gold",{
	title = S("Amethyst (Gold)"),
	description = S("Dig 100 Amethyst Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:amethyst_ore",
		target = 100
	}
})
	
awards.register_achievement("award_amethyst_platin",{
	title = S("Amethyst (Platin)"),
	description = S("Dig 200 Amethyst Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:amerhyst_ore",
		target = 200
	}
})

awards.register_achievement("award_shadow_bronze",{
	title = S("Shadow (Bronze)"),
	description = S("Dig 25 Shadow Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:shadow_ore",
		target = 25
	}
})

awards.register_achievement("award_shadow_silber",{
	title = S("Shadow (Silber)"),
	description = S("Dig 50 Shadow Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:shadow_ore",
		target = 50
	}
})

awards.register_achievement("award_shadow_gold",{
	title = S("Shadow (Gold)"),
	description = S("Dig 100 Shadow Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:shadow_ore",
		target = 100
	}
})

awards.register_achievement("award_shadow_platin",{
	title = S("Shadow (Platin)"),
	description = S("Dig 200 Shadow Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:shadow_ore",
		target = 200
	}
})

awards.register_achievement("award_pearl_bronze",{
	title = S("Pearl (Bronze)"),
	description = S("Dig 25 Pearl Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:pearl_ore",
		target = 25
	}
})

awards.register_achievement("award_pearl_silber",{
	title = S("Pearl (Silber)"),
	description = S("Dig 50 Pearl Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:pearl_ore",
		target = 50
	}
})

awards.register_achievement("award_pearl_gold",{
	title = S("Pearl (Gold)"),
	description = S("Dig 100 Pearl Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:pearl_ore",
		target = 100
	}
})

awards.register_achievement("award_pearl_platin",{
	title = S("Pearl (Platin)"),
	description = S("Dig 200 Pearl Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:pearl_ore",
		target = 200
	}
})

awards.register_achievement("award_emerald_bronze",{
	title = S("Emerald (Bronze)"),
	description = S("Dig 25 Emerald Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:emerald_ore",
		target = 25
	}
})

awards.register_achievement("award_emerald_silber",{
	title = S("Emerald (Silber)"),
	description = S("Dig 50 Emerald Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:emerald_ore",
		target = 50
	}
})

awards.register_achievement("award_emerald_gold",{
	title = S("Emerald (Gold)"),
	description = S("Dig 100 Emerald Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:emerald_ore",
		target = 100
	}
})

awards.register_achievement("award_emerald_platin",{
	title = S("Emerald (Platin)"),
	description = S("Dig 200 Emerald Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "gems:emerald_ore",
		target = 200
	}
})

awards.register_achievement("award_admin_ore_bronze",{
	title = S("Admin Ore (Bronze)"),
	description = S("Dig 1 Admin Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "tutorial:stone_with_admin",
		target = 5
	}
})

awards.register_achievement("award_admin_ore_silber",{
	title = S("Admin Ore (Silber)"),
	description = S("Dig 5 Admin Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "tutorial:stone_with_admin",
		target = 10
	}
})

awards.register_achievement("award_admin_ore_gold",{
	title = S("Admin Ore (Gold)"),
	description = S("Dig 10 Admin Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "tutorial:stone_with_admin",
		target = 20
	}
})

awards.register_achievement("award_admin_ore_platin",{
	title = S("Admin Ore (Platin)"),
	description = S("Dig 25 Admin Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "tutorial:stone_with_admin",
		target = 40
	}
})

awards.register_achievement("award_titan_ore_bronze",{
	title = S("Titan Ore (Bronze)"),
	description = S("Dig 10 Titan Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "tutorial:stone_with_titan",
		target = 10
	}
})
awards.register_achievement("award_titan_ore_silber",{
	title = S("Titan Ore (Silber)"),
	description = S("Dig 20 Titan Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "tutorial:stone_with_titan",
		target = 20
	}
})
awards.register_achievement("award_titan_ore_gold",{
	title = S("Titan Ore (Gold)"),
	description = S("Dig 40 Titan Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "tutorial:stone_with_titan",
		target = 40
	}
})
awards.register_achievement("award_titan_ore_platin",{
	title = S("Titan Ore (Platin)"),
	description = S("Dig 80 Titan Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "tutorial:stone_with_titan",
		target = 80
	}
})
awards.register_achievement("award_regnum_ore_bronze",{
	title = S("Regnum Ore (Bronze)"),
	description = S("Dig 2 Regnum Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "tutorial:stone_with_regnum",
		target = 2
	}
})
awards.register_achievement("award_regnum_ore_silber",{
	title = S("Regnum Ore (Silber)"),
	description = S("Dig 5 Regnum Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "tutorial:stone_with_regnum",
		target = 5
	}
})
awards.register_achievement("award_regnum_ore_gold",{
	title = S("Regnum Ore (Gold)"),
	description = S("Dig 10 Regnum Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "tutorial:stone_with_regnum",
		target = 10
	}
})
awards.register_achievement("award_regnum_ore_platin",{
	title = S("Regnum Ore (Platin)"),
	description = S("Dig 20 Regnum Ore."),
	icon = "novicebuilder.png",
	trigger = {
		type = "dig",
		node = "tutorial:stone_with_regnum",
		target = 20
	}
})
awards.register_achievement("award_???_bronze",{
	title = S("??? (Bronze)"),
	description = S("?")
})
awards.register_onDeath(function(player,data)
	local pos = player:getpos()
	if pos and minetest.find_node_near(pos, 5, "default:mese") ~= nil then
		return "award_???_bronze"
	end	
	return nil
end)


awards.register_achievement("award_???_silber",{
	title = S("??? (Silber)"),
	description = S("?")
})
awards.register_onDeath(function(player,data)
	local pos = player:getpos()
	if pos and minetest.find_node_near(pos, 5, "moreores:mineral_mithril") ~= nil then
		return "award_???_silber"
	end	
	return nil
end)


awards.register_achievement("award_???_gold",{
	title = S("??? (Gold)"),
	description = S("?")
})
awards.register_onDeath(function(player,data)
	local pos = player:getpos()
	if pos and minetest.find_node_near(pos, 5, "tutorial:stone_with_titan") ~= nil then
		return "award_???_gold"
	end	
	return nil
end)

awards.register_achievement("award_???_platin",{
	title = S("??? (Platin)"),
	description = S("?")
})
awards.register_onDeath(function(player,data)
	local pos = player:getpos()
	if pos and minetest.find_node_near(pos, 5, "tutorial:stone_with_admin") ~= nil then
		return "award_???_platin"
	end	
	return nil
end)












