minetest.register_on_joinplayer(function(player)
	local name = player:get_player_name()
	player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=10},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "Minetest Version	    :  0.4.14",
	})
	player:hud_add({
		hud_elem_type = "text",
		position = {x=0, y=0.85},
		offset = {x=0, y=30},
		alignment = {x=1, y=0},
		number = 0xFFFFFF ,
		text = "Subgame Version	  :  2.0.0",
	})
    
end)
dofile(minetest.get_modpath("tutorial").."/atom.lua")
dofile(minetest.get_modpath("tutorial").."/craft.lua")
dofile(minetest.get_modpath("tutorial").."/node.lua")
dofile(minetest.get_modpath("tutorial").."/tool.lua")
dofile(minetest.get_modpath("tutorial").."/craftitem.lua")
dofile(minetest.get_modpath("tutorial").."/ore.lua")
dofile(minetest.get_modpath("tutorial").."/abm.lua")
dofile(minetest.get_modpath("tutorial").."/entity.lua")
dofile(minetest.get_modpath("tutorial").."/else.lua")
dofile(minetest.get_modpath("tutorial").."/mummy.lua")
--v.1.0.0+

minetest.register_globalstep(function(dtime)
	for _,player in ipairs(minetest.get_connected_players()) do
        local player_inv = player:get_inventory()
        local g1 = player_inv:get_stack("gem", 1):get_name()
        local g2 = player_inv:get_stack("gem", 2):get_name()
        local g3 = player_inv:get_stack("gem", 3):get_name()
        local g4 = player_inv:get_stack("gem", 4):get_name()
        local g5 = player_inv:get_stack("gem", 5):get_name()
        if g1 == "tutorial:magic_gem1" and g2 == "tutorial:magic_gem2" and g3 == "tutorial:magic_gem3" and g4 == "tutorial:magic_gem4" and g5 == "tutorial:magic_gem5" then
            local punched_player_privs = minetest.get_player_privs(player:get_player_name())
		    punched_player_privs["fly"] = true
		    punched_player_privs["fast"] = true
		    minetest.set_player_privs(player:get_player_name(), punched_player_privs)
        end
    end
end)
minetest.register_on_joinplayer(function(player)
	minetest.setting_set("disable_anticheat", "true")
end)

minetest.register_craftitem("tutorial:magic_gem1", {
    description = "Magic gem 1",
	inventory_image = "tutorial_gem1.png",
})
minetest.register_craftitem("tutorial:magic_gem2", {
    description = "Magic gem 2",
	inventory_image = "tutorial_gem2.png",
})
minetest.register_craftitem("tutorial:magic_gem3", {
    description = "Magic gem 3",
	inventory_image = "tutorial_gem3.png",
})
minetest.register_craftitem("tutorial:magic_gem4", {
    description = "Magic gem 4",
	inventory_image = "tutorial_gem4.png",
})
minetest.register_craftitem("tutorial:magic_gem5", {
    description = "Magic gem 5",
	inventory_image = "tutorial_gem5.png",
})

minetest.register_craftitem("tutorial:gem_fragment", {
    description = "Gem fragment",
	inventory_image = "tutorial_gem_fragment.png",
})
local gem = {}
gem.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    player_inv:set_size("gem", 5)
	formspec = "size[8,8.3]"
	.."button[0,0;2,0.5;inven;Back]"
	.."button[2,0;2,0.5;main;Main]"
    .."list[current_player;gem;1.5,2.25;5,1;]"
    .."list[current_player;main;0,4.25;8,1;]"
	.."list[current_player;main;0,5.5;8,3;8]"
    .."image[1.5,1.25;1,1;tutorial_gem1.png]"
    .."image[2.5,1.25;1,1;tutorial_gem2.png]"
    .."image[3.5,1.25;1,1;tutorial_gem3.png]"
    .."image[4.5,1.25;1,1;tutorial_gem4.png]"
    .."image[5.5,1.25;1,1;tutorial_gem5.png]"
	return formspec		
end
local crafting5 = {}
crafting5.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    player_inv:set_size("gem1", 8)
    player_inv:set_size("gem2", 8)
	formspec = "size[10,8.3]"
	.."button[0,0;2,0.5;cr;Back]"
	.."button[2,0;2,0.5;main;Main]"
    .."list[current_player;gem1;2,1;8,1;]"
    .."label[0,1.2;Gem fragment]"
    .."list[current_player;gem2;2,2;8,1;]"
    .."label[0,2.2;Uranium Ingot]"
    .."button[4,3.3;2,0.5;craftgem;craft]"
    .."list[current_player;main;1,4.25;8,1;]"
	.."list[current_player;main;1,5.5;8,3;8]"
	return formspec		
end
minetest.register_on_player_receive_fields(function(player, formname, fields)
    if fields.rew then
        
        local player_inv = player:get_inventory()
        player_inv:set_size("rew", 1)
        local rew = player_inv:get_stack("rew", 1):get_count()
	    player_inv:set_size("a1", 1)
	    player_inv:set_size("a2", 1)
	    player_inv:set_size("a3", 1)
	    player_inv:set_size("a4", 1)
	    player_inv:set_size("a5", 1)
	    player_inv:set_size("a6", 1)
	    player_inv:set_size("a7", 1)
	    player_inv:set_size("a8", 1)
	    player_inv:set_size("a9", 1)
	    player_inv:set_size("a10", 1)
	    player_inv:set_size("a11", 1)
	    player_inv:set_size("a12", 1)
	    player_inv:set_size("a13", 1)
	    player_inv:set_size("a14", 1)
	    player_inv:set_size("a15", 1)
	    player_inv:set_size("a16", 1)
        player_inv:set_size("a17", 1)
        player_inv:set_size("a18", 1)
        player_inv:set_size("a19", 1)
        player_inv:set_size("a20", 1)
        player_inv:set_size("a21", 1)
        player_inv:set_size("a22", 1)
        player_inv:set_size("a23", 1)
        player_inv:set_size("a24", 1)
        player_inv:set_size("a25", 1)
        player_inv:set_size("a26", 1)
        player_inv:set_size("a27", 1)
        player_inv:set_size("a28", 1)
	    local a1 = player_inv:get_stack("a1", 1):get_count()
	    local a2 = player_inv:get_stack("a2", 1):get_count()
	    local a3 = player_inv:get_stack("a3", 1):get_count()
	    local a4 = player_inv:get_stack("a4", 1):get_count()
	    local a5 = player_inv:get_stack("a5", 1):get_count()
	    local a6 = player_inv:get_stack("a6", 1):get_count()
	    local a7 = player_inv:get_stack("a7", 1):get_count()
	    local a8 = player_inv:get_stack("a8", 1):get_count()
	    local a9 = player_inv:get_stack("a9", 1):get_count()
	    local a10 = player_inv:get_stack("a10", 1):get_count()
	    local a11 = player_inv:get_stack("a11", 1):get_count()
	    local a12 = player_inv:get_stack("a12", 1):get_count()
	    local a13 = player_inv:get_stack("a13", 1):get_count()
	    local a14 = player_inv:get_stack("a14", 1):get_count()
	    local a15 = player_inv:get_stack("a15", 1):get_count()
	    local a16 = player_inv:get_stack("a16", 1):get_count()
        local a17 = player_inv:get_stack("a17", 1):get_count()
        local a18 = player_inv:get_stack("a18", 1):get_count()
        local a19 = player_inv:get_stack("a19", 1):get_count()
        local a20 = player_inv:get_stack("a20", 1):get_count()
        local a21 = player_inv:get_stack("a21", 1):get_count()
        local a22 = player_inv:get_stack("a22", 1):get_count()
        local a23 = player_inv:get_stack("a23", 1):get_count()
        local a24 = player_inv:get_stack("a24", 1):get_count()
        local a25 = player_inv:get_stack("a25", 1):get_count()
        local a26 = player_inv:get_stack("a26", 1):get_count()
        local a27 = player_inv:get_stack("a27", 1):get_count()
        local a28 = player_inv:get_stack("a28", 1):get_count()
        local d1 = 0
        local d2 = 0
        local d3 = 0
        local d4 = 0
        local d5 = 0
        local d6 = 0
        local d7 = 0
        if a1 == 1 then
            d1 = d1+1
        end
        if a2 == 1 then
            d1 = d1+1
        end
        if a3 == 1 then
            d1 = d1+1
        end
        if a4 == 1 then
            d1 = d1+1
        end
        if a5 == 1 then
            d1 = d1+1
        end
        if a6 == 1 then
            d1 = d1+1
        end
        if a7 == 1 then
            d1 = d1+1
        end
        if a8 == 1 then
            d1 = d1+1
        end
        if a9 == 1 then
            d1 = d1+1
        end
        if a10 == 1 then
            d1 = d1+1
        end
        if a11 == 1 then
            d1 = d1+1
        end
        if a12 == 1 then
            d1 = d1+1
        end
        if a13 == 1 then
            d1 = d1+1
        end
        if a14 == 1 then
            d1 = d1+1
        end
        if a15 == 1 then
            d1 = d1+1
        end
        if a16 == 1 then
            d1 = d1+1
        end
        if a17 == 1 then
            d1 = d1+1
        end
        if a18 == 1 then
            d1 = d1+1
        end
        if a19 == 1 then
            d1 = d1+1
        end
        if a18 == 1 then
            d1 = d1+1
        end
        if a21 == 1 then
            d1 = d1+1
        end
        if a22 == 1 then
            d1 = d1+1
        end
        if a23 == 1 then
            d1 = d1+1
        end
        if a24 == 1 then
            d1 = d1+1
        end
        if a25 == 1 then
            d1 = d1+1
        end
        if a26 == 1 then
            d1 = d1+1
        end
        if a27 == 1 then
            d1 = d1+1
        end
        if a28 == 1 then
            d1 = d1+1
        end
        if d1 == 28 and rew == 0 then
            player_inv:add_item("main", "mobs:knight_1248_egg")
            player_inv:add_item("rew", "default:dirt")
            minetest.chat_send_all(player:get_player_name().." has all Regnum things and is able to spawn a 1248 Knight")
        end

    end
    if fields.gem then
        inventory_plus.set_inventory_formspec(player, gem.get_formspec(player))
    end
	if fields.craftgem then
        if player == nil then
            return
        end
	    local player_inv = player:get_inventory()
        player_inv:set_size("gem0", 1)
        local gem = player_inv:get_stack("gem0", 1):get_count()
	    local g11 = player_inv:get_stack("gem1", 1):get_name()
        local g12 = player_inv:get_stack("gem1", 2):get_name()
        local g13 = player_inv:get_stack("gem1", 3):get_name()
        local g14 = player_inv:get_stack("gem1", 4):get_name()
        local g15 = player_inv:get_stack("gem1", 5):get_name()
        local g16 = player_inv:get_stack("gem1", 6):get_name()
        local g17 = player_inv:get_stack("gem1", 7):get_name()
        local g18 = player_inv:get_stack("gem1", 8):get_name()
        local g21 = player_inv:get_stack("gem2", 1):get_name()
        local g22 = player_inv:get_stack("gem2", 2):get_name()
        local g23 = player_inv:get_stack("gem2", 3):get_name()
        local g24 = player_inv:get_stack("gem2", 4):get_name()
        local g25 = player_inv:get_stack("gem2", 5):get_name()
        local g26 = player_inv:get_stack("gem2", 6):get_name()
        local g27 = player_inv:get_stack("gem2", 7):get_name()
        local g28 = player_inv:get_stack("gem2", 8):get_name()
        local k = 0
        local d = 0
        if g11 == g12 and g12 == g13 and g13 == g14 and g14 == g15 and g15 == g16 and g16 == g17 and g17 == g18 then
            if g11 == "tutorial:gem_fragment" then
                k = k+1
            end
        end
        print(""..k)
        if g21 == g22 and g22 == g23 and g23 == g24 and g24 == g25 and g25 == g26 and g26 == g27 and g27 == g28 then
            if g21 == "technic:uranium_ingot" then
                k = k+1
            end
        end
        print(""..k)
        if k == 2 then
            if gem == 0 then
                if player_inv:room_for_item("main", "tutorial:magic_gem1") == true then
                    player_inv:add_item("main", "tutorial:magic_gem1")
                    player_inv:add_item("gem0", "default:dirt")
                    d = 1
                end
            elseif gem == 1 then
                if player_inv:room_for_item("main", "tutorial:magic_gem2") == true then
                    player_inv:add_item("main", "tutorial:magic_gem2")
                    player_inv:add_item("gem0", "default:dirt")
                    d = 1
                end
            elseif gem == 2 then
                if player_inv:room_for_item("main", "tutorial:magic_gem3") == true then
                    player_inv:add_item("main", "tutorial:magic_gem3")
                    player_inv:add_item("gem0", "default:dirt")
                    d = 1
                end
            elseif gem == 3 then
                if player_inv:room_for_item("main", "tutorial:magic_gem4") == true then
                    player_inv:add_item("main", "tutorial:magic_gem4")
                    player_inv:add_item("gem0", "default:dirt")
                    d = 1
                end
            elseif gem == 4 then
                if player_inv:room_for_item("main", "tutorial:magic_gem5") == true then
                    player_inv:add_item("main", "tutorial:magic_gem5")
                    player_inv:add_item("gem0", "default:dirt")
                    d = 1
                end
            end
            if d == 1 then
                player_inv:remove_item("gem1", "tutorial:gem_fragment 8")
                player_inv:remove_item("gem2", "technic:uranium_ingot 8")
            end
        end
		inventory_plus.set_inventory_formspec(player, crafting5.get_formspec(player))

	end
end)
minetest.register_craft({
    output = 'tutorial:dragon_crystal',
    recipe = {
        {'gems:sapphire_gem', 'gems:amethyst_gem', 'gems:ruby_gem', 'gems:amethyst_gem', 'gems:sapphire_gem'},
		{'gems:amethyst_gem', 'gems:pearl_gem', 'gems:shadow_gem', 'gems:pearl_gem', 'gems:amethyst_gem'},
		{'gems:ruby_gem', 'gems:shadow_gem', 'gems:emerald_gem', 'gems:shadow_gem', 'gems:ruby_gem'},
		{'gems:amethyst_gem', 'gems:pearl_gem', 'gems:shadow_gem', 'gems:pearl_gem', 'gems:amethyst_gem'},
		{'gems:sapphire_gem', 'gems:amethyst_gem', 'gems:ruby_gem', 'gems:amethyst_gem', 'gems:sapphire_gem'},
    }
})
minetest.register_craftitem("tutorial:dragon_crystal", {
    description = "Dragon crystal",
	inventory_image = "tutorial_dragon_crystal.png",
})
minetest.register_craftitem("tutorial:coin2", {
    description = "Coin green (drill edition, very rare)",
	inventory_image = "tutorial_coin.png",
})
minetest.register_craftitem("tutorial:dragon_schluessel", {
	description = "Dragonkey",
	inventory_image = "tutorial_dragon_schluessel.png",
})
minetest.register_on_dignode(function(pos, node, player)
	if player == nil then
        return
    end	
	local name = player:get_player_name()
	local inv = player:get_inventory()
	if node.name == "tutorial:geschenk_dragon" then
        local x = math.random(0,15)
        if x == 8 then
            inv:set_size("dgon", 1)
            local dgon = inv:get_stack("dgon", 1):get_count()
            if dgon == 0 then
                inv:add_item("main", "tutorial:dragon_schluessel")
                inv:add_item("dgon", "default:dirt")
            end
        else
            inv:add_item("main", "default:coal_lump 20")
        end
	end
    if node.name == "tutorial:geschenk_gem" then
        local x = math.random(0,8)
        if x == 8 then
            inv:add_item("main", "tutorial:gem_fragment")
        elseif x == 5 then
            inv:add_item("main", "tutorial:geschenk_legend")
        elseif x == 4 then
            inv:add_item("main", "tutorial:geschenk_legend")
        end
	end
end)
minetest.register_node("tutorial:geschenk_dragon",{
	description = "Gift (dragon)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_dragon.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})
minetest.register_node("tutorial:geschenk_gem",{
	description = "Gift (gem) (drop comming soon)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_gem.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
    drop = {},
})
minetest.register_craft({
    output = 'tutorial:lilabattleaxe',
    recipe = {
        {'tutorial:lila_erz3','tutorial:lila_erz3','tutorial:lila_erz3'},
		{'tutorial:lila_erz3','default:stick','tutorial:lila_erz3'},
	    {'tutorial:lila_erz3','default:stick','tutorial:lila_erz3'},
    }
})
local xpi0 = {}
xpi0.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    local xpi01_inv = minetest.create_detached_inventory(player:get_player_name().."_xpi01",{
        on_take = function(inv, listname, index, stack, player)
			player:get_inventory():remove_item(listname,stack)
		end,
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return stack:get_count()
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
	xpi01_inv:set_size("xpi01", 15)
	player_inv:set_size("xpi01", 15)
    xpi01_inv:set_size("xpi02", 15)
	player_inv:set_size("xpi02", 15)
    xpi01_inv:set_size("xpi03", 15)
	player_inv:set_size("xpi03", 15)
    xpi01_inv:set_size("xpi04", 15)
	player_inv:set_size("xpi04", 15)
    for i=1, 15 do
		local stack = player_inv:get_stack("xpi01", i)
		xpi01_inv:set_stack("xpi01", i, stack)
        local stack = player_inv:get_stack("xpi02", i)
		xpi01_inv:set_stack("xpi02", i, stack)
        local stack = player_inv:get_stack("xpi03", i)
		xpi01_inv:set_stack("xpi03", i, stack)
        local stack = player_inv:get_stack("xpi04", i)
		xpi01_inv:set_stack("xpi04", i, stack)
    end
	formspec = "size[18,12.3]"
	.."button[0,0;2,0.5;inven;Back]"
	.."button[2,0;2,0.5;main;Main]"
    .."list[current_player;main;4,7.75;8,4;]"
    .."list[detached:"..player:get_player_name().."_xpi01;xpi01;0,1.3;15,1]"
    .."list[detached:"..player:get_player_name().."_xpi01;xpi02;0,2.9;15,1]"
    .."list[detached:"..player:get_player_name().."_xpi01;xpi03;0,4.5;15,1]"
    .."list[detached:"..player:get_player_name().."_xpi01;xpi04;0,6.1;15,1]"
    .."listring[current_player;main]" 
	.."listring[detached:"..player:get_player_name().."_xpi01;xpi01]"
    .."listring[current_player;main]" 
	.."listring[detached:"..player:get_player_name().."_xpi01;xpi02]"
    .."listring[current_player;main]" 
	.."listring[detached:"..player:get_player_name().."_xpi01;xpi03]"
    .."listring[current_player;main]" 
	.."listring[detached:"..player:get_player_name().."_xpi01;xpi04]"
    .."label[0,0.7;Green Xp Items]"
    .."label[0,2.3;Red Xp Items]"
    .."label[0,3.9;Blue Xp Items]"
    .."label[0,5.5;Grey Xp Items]"
    .."button[9,12;2,0.5;xpi;>]"
	return formspec		
end

local xpi = {}
xpi.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    local xpi1_inv = minetest.create_detached_inventory(player:get_player_name().."_xpi1",{
        on_take = function(inv, listname, index, stack, player)
			player:get_inventory():remove_item(listname,stack)
		end,
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return stack:get_count()
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
	xpi1_inv:set_size("xpi1", 100)
	player_inv:set_size("xpi1", 100)
    for i=1, 100 do
		local stack = player_inv:get_stack("xpi1", i)
		xpi1_inv:set_stack("xpi1", i, stack)
    end
	formspec = "size[18,12.3]"
	.."button[0,0;2,0.5;inven;Back]"
	.."button[2,0;2,0.5;main;Main]"
    .."list[current_player;main;4,7.75;8,4;]"
    .."list[detached:"..player:get_player_name().."_xpi1;xpi1;0,1.3;18,6]"
    .."listring[current_player;main]" 
	.."listring[detached:"..player:get_player_name().."_xpi1;xpi1]"
    .."label[0,0.7;Green Level Blocks]"
    .."button[9,12;2,0.5;xpi2;>]"
    .."button[7,12;2,0.5;xpi0;<]"
	return formspec		
end

local xpi2 = {}
xpi2.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    local xpi2_inv = minetest.create_detached_inventory(player:get_player_name().."_xpi2",{
        on_take = function(inv, listname, index, stack, player)
			player:get_inventory():remove_item(listname,stack)
		end,
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return stack:get_count()
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
    local xpi3_inv = minetest.create_detached_inventory(player:get_player_name().."_xpi3",{
        on_take = function(inv, listname, index, stack, player)
			player:get_inventory():remove_item(listname,stack)
		end,
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return 1
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
    xpi2_inv:set_size("xpi2", 20)
	player_inv:set_size("xpi2", 20)
    xpi3_inv:set_size("xpi3", 20)
	player_inv:set_size("xpi3", 20)
    for i=1, 20 do
		local stack = player_inv:get_stack("xpi2", i)
		xpi2_inv:set_stack("xpi2", i, stack)
        local stack2 = player_inv:get_stack("xpi3", i)
		xpi3_inv:set_stack("xpi3", i, stack2)
    end

	xpi2_inv:set_size("xpi2", 20)
	player_inv:set_size("xpi2", 20)
    xpi3_inv:set_size("xpi3", 20)
	player_inv:set_size("xpi3", 20)
	formspec = "size[18,12.3]"
	.."button[0,0;2,0.5;inven;Back]"
	.."button[2,0;2,0.5;main;Main]"
    .."list[current_player;main;4,7.75;8,4;]"
    .."list[detached:"..player:get_player_name().."_xpi2;xpi2;0,1.3;18,2]"
    .."list[detached:"..player:get_player_name().."_xpi3;xpi3;0,3.9;18,2]"
    .."listring[current_player;main]" 
	.."listring[detached:"..player:get_player_name().."_xpi2;xpi2]"
    .."listring[current_player;main]" 
	.."listring[detached:"..player:get_player_name().."_xpi3;xpi3]"
    .."label[0,0.7;Red Level Blocks]"
    .."label[0,3.3;Blue Level Blocks]"
    .."button[7,12;2,0.5;xpi;<]"
    .."button[9,12;2,0.5;xpi3;>]"
	return formspec		
end
local xpi3 = {}
xpi3.get_formspec = function(player, pos)
	if player == nil then
        return
    end
    local player_inv = player:get_inventory()
    local xpi4_inv = minetest.create_detached_inventory(player:get_player_name().."_xpi4",{
        on_take = function(inv, listname, index, stack, player)
			player:get_inventory():remove_item(listname,stack)
		end,
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return stack:get_count()
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
    xpi4_inv:set_size("xpi4", 100)
	player_inv:set_size("xp4", 100)
    for i=1, 100 do
		local stack = player_inv:get_stack("xpi4", i)
		xpi4_inv:set_stack("xpi4", i, stack)
    end
	xpi4_inv:set_size("xpi4", 100)
	player_inv:set_size("xpi4", 100)
	formspec = "size[18,12.3]"
	.."button[0,0;2,0.5;inven;Back]"
	.."button[2,0;2,0.5;main;Main]"
    .."list[current_player;main;4,7.75;8,4;]"
    .."list[detached:"..player:get_player_name().."_xpi4;xpi4;0,1.3;18,6]"
    .."listring[current_player;main]" 
	.."listring[detached:"..player:get_player_name().."_xpi4;xpi4]"
    .."label[0,0.7;Grey Level Blocks]"
    .."button[7,12;2,0.5;xpi2;<]"
	return formspec		
end

local rg = {}
rg.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	formspec = "size[9,10.3]"
	.."button[0,0;2,0.5;inven;Back]"
	.."button[2,0;2,0.5;main;Main]"
	.."label[0,1;This is the first page of the Regnum guide.]"
    .."label[0,1.3;Here you can get some basic informations]"
    .."label[0,1.6;about my subgame:Regnum]"
    .."label[0,1.9;I develop the Regnum subgame over the last 5 years]"
    .."label[0,2.2;Thanks to:]"
    .."label[0,2.5;NightmareLP who build a mod for my subgame]"
    .."label[0,2.8;et77 who had some great ideas]"
    .."label[0,3.1;wuschel1912 who tests the subgame]"
    .."label[0,3.7;In the next version (2.0.0+) there will be:]"
    .."label[0,4.0;????]"
    .."button[4,10;2,0.5;rg2;>]"
	return formspec		
end
local rg2 = {}
rg2.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;                                     CONTENS]"
        .."label[0,1.3; I. Inventory]"
        .."label[0,1.6;   1. Bags]"
        .."label[0,1.9;   2. Armor]"
        .."label[0,2.2;   3. XP Guide]"
        .."label[0,2.5;   4. Crafting]"
        .."label[0,2.8;   5. Skins]"
        .."label[0,3.1;   6. Craft Guide]"
        .."label[0,3.4;   7. Crystals]"
        .."label[0,3.7;   8. Achievements]"
        .."label[0,4.0;   9. Regnum guide]"
        .."label[0,4.3;   10. Awards]"
        .."label[0,4.6;   11. Xp items]"
        .."label[0,4.9;   12. Gems]"
        .."label[0,5.2; II. Game]"
        .."label[0,5.5;   1. Gifts]"
        .."label[0,5.8;   2. Mobs]"
        .."label[0,6.1;   3. Xp & Level]"
        .."label[0,6.4;   4. Ores]"
        .."label[0,6.7;   5. Armor and Battleaxes]"
        .."label[0,7.0;   6. Chat commands]"
        .."button[2,10;   2,0.5;rg1;<]"
        .."button[4,10;   2,0.5;rg3;>]"
	return formspec		
end
local rg3 = {}
rg3.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;I. 1. Bags]"
  .."label[0,1.3;You can use bags to take more things with you.]"
  .."label[0,1.6;You can have up to eight bags, every bag has eight level.]"
  .."label[0,1.9;Every level for a bag give you more space for it.]"
  .."label[0,2.2;If you want more then four bags you need also a bagkey.]"
  .."label[0,2.5;With each new bagkey level you can get one more bag.]"
  .."label[0,2.8;How to use bags:]"
  .."label[0,3.1;1. You have to craft a bag (look in the craft guide how).]"
  .."label[0,3.4;2. Put the bag in one of the fields and use the button below.]"
  .."label[0,3.7;3. You can put your items in the new inventory.]"
  .."label[0,4.0;4. If you put the bag in the lower field and you have no bagkey]"
  .."label[0,4.3;    you can not use it]"
  .."label[0,4.6;5. You can use shift to move items quickly (as you use for chests)]"
  .."button[2,10;   2,0.5;rg2;<]"
  .."button[4,10;   2,0.5;rg4;>]"
	return formspec		
end
local rg4 = {}
rg4.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;I. 2. Armor]"
  .."label[0,1.3;You can use armor to save you from monsters.]"
  .."label[0,1.6;There are 5 differend armor parts.]"
  .."label[0,1.9;Make your armor invisible to other use the armorkey.]"
  .."label[0,2.2;Some armor will also save you from lava, fire]"
  .."label[0,2.5;and there is also armor that regenerate you.]"
  .."label[0,2.8;How to use Armor:]"
  .."label[0,3.1;1. You have to craft some armor (look in the craft guide how).]"
  .."label[0,3.4;2. You can see five fields on the left.]"
  .."label[0,3.7;3. You have to put the helmet at the top and the boots at the bottom.(like in minecraft)]"
  .."label[0,4.0;4. You have to put the shield in the right field]"
  .."label[0,4.3;5. Craft the armor key and than you can press 'armor off']"
  .."button[2,10;   2,0.5;rg3;<]"
  .."button[4,10;   2,0.5;rg5;>]"
	return formspec		
end
local rg5 = {}
rg5.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;I. 3. XP Guide]"
  .."label[0,1.3;If you dig uranium/red ore/blue ore/Xp block you will get xp.]"
  .."label[0,1.6;Use the Xp Guide to see how many xp you have]"
  .."label[0,1.9;If you want to see how many xp you need for the next level]"
  .."label[0,2.2;you have to use the xp key]"
  .."label[0,2.5;There are 4 differend kinds of xp.]"
  .."label[0,2.8;How to use Xp Guide:]"
  .."label[0,3.1;1. On the left you can see how many xp you have]"
  .."label[0,3.4;2. Craft the xp key and than you can press 'xp green/red/blue/grey you need']"
  .."button[2,10;   2,0.5;rg4;<]"
  .."button[4,10;   2,0.5;rg6;>]"
	return formspec		
end
local rg6 = {}
rg6.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;I. 4. Crafting]"
  .."label[0,1.3;There are 5 differend crafts.]"
  .."label[0,1.6;The '4x4 craft' to craft in a 4x4 field]"
  .."label[0,1.9;The '5x5 craft' to craft in a 5x5 field]"
  .."label[0,2.2;The Regnum craft to craft a pixeled regnum]"
  .."label[0,2.5;The DNA craft to get mobs]"
  .."label[0,2.8;The Gem craft to get magic gems]"
  .."label[0,3.1;Look in the Craft Guide which item you can craft in 4x4 and 5x5 craft]"
  .."label[0,3.4;For regnum craft you need regnum pixel.]"
  .."label[0,3.7;You can get them from Regnum gifts.]"
  .."label[0,4.0;For dna craft you need dna strings.]"
  .."label[0,4.3;You can get them from monsters.]"
  .."label[0,4.6;You will get an animal spawn-egg if this animal has 100%.]"
  .."label[0,4.9;For gem craft you need gem fragments and uranium ingots]"
  .."label[0,5.2;How to use Crafting:]"
  .."label[0,5.5;1. For each craft you need a key]"
  .."label[0,5.8;2. Craft the key and put the needed items in the fields]"
  .."label[0,6.1;3. Press 'craft/build DNA']"
  .."button[2,10;   2,0.5;rg5;<]"
  .."button[4,10;   2,0.5;rg7;>]"
	return formspec		
end
local rg7 = {}
rg7.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;I. 5. Skins]"
  .."label[0,1.3;Here you can change your skin]"
  .."label[0,1.6;Click on one skin to change your skin]"
  .."label[0,1.9;If you have the pixeled Regnum key you can use the see-through skin]"
  .."label[0,2.2;How to use Skins:]"
  .."label[0,2.5;1. Click on one skin]"
  .."label[0,2.8;2. Craft the Pixeled Regnum key]"
  .."label[0,3.1;3. Press 'see-through skin']"
  .."button[2,10;   2,0.5;rg6;<]"
  .."button[4,10;   2,0.5;rg8;>]"
	return formspec		
end
local rg8 = {}
rg8.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;I. 6. Craft Guide]"
        .."label[0,1.3;Here you can see how to craft items]"
        .."label[0,1.6;Click on one item to see the crafting]"
        .."label[0,1.9;You can also see 4x4 and 5x5 craftings,]"
        .."label[0,2.2;but no regnum and dna crafting]"
        .."label[0,2.5;How to use Craft guide:]"
        .."label[0,2.8;1. Click on one item and you see the crafting above]"
        .."label[0,3.1;2. Click on the arrows below to switch to an other page]"
        .."label[0,3.4;3. Click on the arrows below 'main' to see the last]"
        .."label[0,3.7;   crafting you use]"
        .."label[0,4.0;4. Click on the arrows above and below the item to see]"
        .."label[0,4.3;   differend craftings for the same things]"
        .."button[2,10;   2,0.5;rg7;<]"
        .."button[4,10;   2,0.5;rg9;>]"
	return formspec		
end
local rg9 = {}
rg9.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;I. 7. Crystals]"
        .."label[0,1.3;Here you can get legendary fire balls]"
        .."label[0,1.6;If you dig a legendary gift you can get a legendary crystal]"
        .."label[0,1.9;With every new cristal you get, get can get better fire balls]"
        .."label[0,2.2;After some time you will get the fire ball]"
        .."label[0,2.5;How to use Cristals:]"
        .."label[0,2.8;1. Craft legendary gifts and dig them]"
        .."label[0,3.1;2. If you have a cristal,click on a]"
        .."label[0,3.4;   ball damage, thunder damage and thunder length level]"
        .."label[0,3.7;3. Click on create]"
        .."label[0,4.0;4. wait (seconds above 'crate') and you will get a fire ball]"
        .."button[2,10;   2,0.5;rg8;<]"
        .."button[4,10;   2,0.5;rg10;>]"
	return formspec		
end
local rg10 = {}
rg10.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;I. 8. Achievements]"
        .."label[0,1.3;Here you can see your achievement]"
        .."label[0,1.6;If you have all achievements, you will have all Regnum things.]"
        .."label[0,1.9;How to use Achievements:]"
        .."label[0,2.2;1. Craft the needed items]"
        .."label[0,2.5;2. Place them at the right place in the inventory]"
        .."button[2,10;   2,0.5;rg9;<]"
        .."button[4,10;   2,0.5;rg11;>]"
	return formspec		
end
local rg11 = {}
rg11.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;I. 9. Regnum Guide]"
        .."label[0,1.3;You can read something about the subgame]"
        .."label[0,1.6;How to use Regnum Guide:]"
        .."label[0,1.9;1. Read]"
        .."button[2,10;   2,0.5;rg10;<]"
        .."button[4,10;   2,0.5;rg12;>]"
	return formspec		
end
local rg12 = {}
rg12.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;I. 10. Awards]"
        .."label[0,1.3;Here you can see your awards]"
        .."label[0,1.6;If you have all awards, you will get the 'all awards' achievement.]"
        .."label[0,1.9;How to use Awards:]"
        .."label[0,2.2;1. Dig for the ores]"
        .."label[0,2.5;2. For the '???' awards you have to die next to a block]"
        .."label[0,2.8;3. Find out which block]"
        .."button[2,10;   2,0.5;rg11;<]"
        .."button[4,10;   2,0.5;rg13;>]"
	return formspec		
end
local rg13 = {}
rg13.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;I. 11. Xp items]"
        .."label[0,1.3;Here you can get you reward if you reach a new level.]"
        .."label[0,1.6;How to use Xp items:]"
        .."label[0,1.9;1. Reach a new level]"
        .."label[0,2.2;2. Take coins/max level blocks/keys/battleaxes/xp blocks from the 1st page]"
        .."label[0,2.5;3. Take green level blocks from the 2nd page]"
        .."label[0,2.8;4. Take red/blue level blocks from the 3rd page]"
        .."label[0,3.1;5. Take grey level blocks from the 4th page]"
        .."button[2,10;   2,0.5;rg12;<]"
        .."button[4,10;   2,0.5;rg14;>]"
	return formspec		
end
local rg14 = {}
rg14.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;I. 12. Gems]"
        .."label[0,1.3;Use the gem inventory to get fly and fast privs.]"
        .."label[0,1.6;How to use Gems:]"
        .."label[0,1.9;1. Craft a dragon in the DNA craft.]"
        .."label[0,2.2;2. Craft a dragon crystal.]"
        .."label[0,2.5;3. Place the drgagon crystal in the dragon inventory.]"
        .."label[0,2.8;4. Collect gifts (gem).]"
        .."label[0,3.1;5. Get gem fragents from then gift (gem).]"
        .."label[0,3.4;6. Craft in the gem craft a magic gem.]"
        .."label[0,3.7;7. Place the magic gems in the right order in the gems inventory.]"
        .."button[2,10;   2,0.5;rg13;<]"
        .."button[4,10;   2,0.5;rg15;>]"
	return formspec		
end
local rg15 = {}
rg15.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;II. 1. Gifts]"
        .."label[0,1.3;Craft gifts to get nice differend things.]"
        .."label[0,1.6;Gift: gift, dark matter Lv.4, ice, mese, lightstone]"
        .."label[0,1.9;Gift (silver): arena glass, arena block, mese, lightstone, gift]"
        .."label[0,2.2;Gift (gold): dirt/sand/stone monster spawn-egg, mese]"
        .."label[0,2.5;Gift (platinum): wool gift, colored wool gift lv.1/2]"
        .."label[0,2.8;Deathgift: mese, lightstone, ice, deathgift, regnum part]"
        .."label[0,3.1;Deathgift (silver): mese, lightstone, ice, deathgift, regnum part]"
        .."label[0,3.4;Deathgift (gold): mese, lightstone, ice, deathgift, regnum part]"
        .."label[0,3.7;Deathgift (platinum): mese, lightstone, ice, deathgift, regnum part]"
        .."label[0,4.0;Gift (DNA): every spawn-egg (but no monsters)]"
        .."label[0,4.3;Gift (legendary): ruby, sapphire, amethyst, pearl, shadow, emerald, legendary crystal]"
        .."label[0,4.6;Gift (regnum): gold/green/purple/red/blue regnum pixel]"
        .."label[0,4.9;Wool gift: white wool]"
        .."label[0,5.2;Colored wool gift lv.1: yellow/white/violetta/red/orange/blue wool]"
        .."label[0,5.5;Colored wool gift lv.2: every wool]"
        .."label[0,5.8;Gift (dragon): coal lump, dragon key]"
        .."label[0,6.1;Gift (gem): gift (legendary), gem fragment]"
        .."button[2,10;   2,0.5;rg14;<]"
        .."button[4,10;   2,0.5;rg16;>]"
	return formspec		
end
local rg16 = {}
rg16.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;II. 2. Mods]"
        .."label[0,1.3;There are monsters, animals and pets in Regnum]"
        .."label[0,1.6;The stone, sand and dirt monster will kill you, but can get wrapping paper]"
        .."label[0,1.9;You can get water and sky animals from the dna gift.]"
        .."label[0,2.2;There are turtles, sharks, gulls and many other.]"
        .."label[0,2.5;If you use the DNA craft you can get pets.]"
        .."label[0,2.8;The dog and the cat will kill monsters and collect the wrapping paper]"
        .."label[0,3.1;The sheep will produce wool.]"
        .."label[0,3.4;The dagon will produce a dragon gift or a gem gift if you have the dragon cristall.]"
        .."label[0,3.7;You can chage the color of the pets and they can folow you.]"
        .."button[2,10;   2,0.5;rg15;<]"
        .."button[4,10;   2,0.5;rg17;>]"
	return formspec		
end
local rg17 = {}
rg17.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;II. 3. Xp & Level]"
        .."label[0,1.3;If you dig some things you can get Xp]"
        .."label[0,1.6;There are 4 differend kind of Xp:]"
        .."label[0,1.9;green, red, blue & grey Xp.]"
        .."label[0,2.2;If you dig uranium you will get 1 green Xp]"
        .."label[0,2.5;If you reach level green 100, you will get the lilabattleaxe.]"
        .."label[0,2.8;With it, you can dig red and blue ore.]"
        .."label[0,3.1;From them you can get red and blue Xp]"
        .."label[0,3.4;If you reach level red/blue 20, you will get a red/blue xp block.]"
        .."label[0,3.7;With them you can craft the xp block]"
        .."label[0,4.0;From the xp block you will get grey xp.]"
        .."label[0,4.3;Look in the xp guide for you xp and how much xp you need.]"
        .."label[0,4.6;If you reach a new level you will get a reward]"
        .."label[0,4.9;Look in Xp items for the reward]"
        .."button[2,10;   2,0.5;rg16;<]"
        .."button[4,10;   2,0.5;rg18;>]"
	return formspec		
end
local rg18 = {}
rg18.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;II. 4. Ores]"
        .."label[0,1.3;You can find ores in the depth.]"
        .."label[0,1.6;Where to find ores:]"
        .."label[0,1.9;Silver: y < -2]"
        .."label[0,2.2;Mithril: y < -512]"
        .."label[0,2.5;Tin: y < 8]"
        .."label[0,2.8;Coal: y < 0]"
        .."label[0,3.1;Iron: y < 2]"
        .."label[0,3.4;Mese: y < -64]"
        .."label[0,3.7;Gold: y < -64]"
        .."label[0,4.0;Diamond: y < -128]"
        .."label[0,4.3;Copper: y < ?]"
        .."label[0,4.6;Black/White: y < 2]"
        .."label[0,4.9;Uranium: y < -128]"
        .."label[0,5.2;Admin: y < -1000]"
        .."label[0,5.5;Titan: y < -800]"
        .."label[0,5.8;Rot/Blau: y < -100]"
        .."label[0,6.1;Regnum: y < -2000]"
        .."label[0,6.4;Technic Uranium: y < -80, y > -300]"
        .."label[0,6.7;Cromium: y < -100]"
        .."label[0,7.0;Zinc: y < 2]"
        .."label[0,7.3;Ruby/Sapphire: y < -300]"
        .."label[0,7.6;Amethyst: y < -600]"
        .."label[0,7.9;Shadow/Pearl: y < -900]"
        .."label[0,8.2;Emerald: y < -1200]"
        .."button[2,10;   2,0.5;rg17;<]"
        .."button[4,10;   2,0.5;rg19;>]"
	return formspec		
end
local rg19 = {}
rg19.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;II. 4. Armor and Battleaxes]"
        .."label[0,1.3;There are over 120 differend battleaxes and armors]"
        .."label[0,1.6;Here you can see witch kind of armor/battleaxe you have to craft:]"
        .."label[0,1.9;(starter)]"
        .."label[0,2.2;mega lv.1-20]"
        .."label[0,2.5;cloud lv.1-20]"
        .."label[0,2.8;super lv.1-4]"
        .."label[0,3.1;uranium lv.1-2]"
        .."label[0,3.4;energie lv.1-12]"
        .."label[0,3.7;superenergy lv.1-7]"
        .."label[0,4.0;crystal lv.1-5]"
        .."label[0,4.3;ultra lv.1-25]"
        .."label[0,4.6;superultra]"
        .."label[0,4.9;arena lv.1-4]"
        .."label[0,5.2;titan lv.1-10]"
        .."label[0,5.5;legendary lv.1-6]"
        .."label[0,5.8;superlegendary]"
        .."label[0,6.1;regnum]"
        .."label[0,6.4;There are differednd modes for the superlegendary armor/battleaxe]"
        .."label[0,6.7;and also for the regnum.]"
        .."label[0,7.0;With the armor you can jump higher and run faster ]"
        .."label[0,7.3;and with the battleaxe you can dig water/lava]"
        .."label[0,7.6;The legendary battleaxe (or higher) will double some ores if you dig them.]"
        .."button[2,10;   2,0.5;rg18;<]"
        .."button[4,10;   2,0.5;rg20;>]"
	return formspec		
end
local rg20 = {}
rg20.get_formspec = function(player, pos)
	if player == nil then
   return
 end
	formspec = "size[9,10.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;II. 6. Chat commands]"
        .."label[0,1.3;For this commands you must restart the server:]"
        .."label[0,1.6;/monster_paper <1,2,4,8,16,32,64> for more wrapping paper]"
        .."label[0,1.9;/monster <0,1> will enable/disable monsters ]"
        .."label[0,2.2;Whithout restart:]"
        .."label[0,2.5;/admin for all admin tools]"
        .."label[0,2.8;/regnum for all regnum things]"
        .."label[0,3.1;/rank to see your rank]"
        .."button[2,10;   2,0.5;rg19;<]"
	return formspec		
end
minetest.register_craftitem("tutorial:monster_remover", {
	description = "Admin tool 7: Monster Remover",
	inventory_image = "tutorial_monster_entverner.png",
	groups = {not_in_creative_inventory=1},
	stack_max = 1,
	on_use = function(itemstack, user, pointed_thing)
		local pos = user:getpos()
		for _,object in ipairs(minetest.env:get_objects_inside_radius(pos, 15)) do
			if not object:is_player() then
				if object:get_entity_name() then
					if object:get_entity_name() == "mobs:dirt_monster" or object:get_entity_name() == "mobs:stone_monster" or object:get_entity_name() == "mobs:sand_monster"then
						object:remove()
					end
				end
			end
		end
	end,
})

minetest.register_craft({
    output = 'tutorial:geschenk_dna',
    recipe = {
        {'','tutorial:dna_string','tutorial:dna_string',''},
		{'tutorial:dna_string','tutorial:geschenk_gold','tutorial:geschenk_gold','tutorial:dna_string'},
		{'tutorial:dna_string','tutorial:geschenk_gold','tutorial:geschenk_gold','tutorial:dna_string'},
		{'','tutorial:dna_string','tutorial:dna_string',''},
    }
})
minetest.register_on_dignode(function(pos, node, player)
	if player == nil then
        return
    end	
	local name = player:get_player_name()
	local inv = player:get_inventory()
	if node.name == "tutorial:geschenk_dna" then
		local x = math.random(0,15)
		print (x)
		if x == 0 then
			inv:add_item("main", "mobs:watermob_crocodile_lg_egg")
		elseif x == 1 then
			inv:add_item("main", "mobs:watermob_crocodile_md_egg")
		elseif x == 2 then
			inv:add_item("main", "mobs:watermob_crocodile_sm_egg")
		elseif x == 3 then
			inv:add_item("main", "mobs:watermob_clownfish_egg")
		elseif x == 4 then
			inv:add_item("main", "mobs:watermob_tropical_fish_egg")
		elseif x == 5 then
			inv:add_item("main", "mobs:watermob_jellyfish_egg")
		elseif x == 6 then
			inv:add_item("main", "mobs:watermob_shark_sm_egg")
		elseif x == 7 then
			inv:add_item("main", "mobs:watermob_shark_md_egg")
		elseif x == 8 then
			inv:add_item("main", "mobs:watermob_shark_lg_egg")
		elseif x == 9 then
			inv:add_item("main", "mobs:watermob_turtle_lg_egg")
		elseif x == 10 then
			inv:add_item("main", "mobs:watermob_turtle_sm_egg")
		elseif x == 11 then
			inv:add_item("main", "mobs:skymob_butterfly_egg")
		elseif x == 12 then
			inv:add_item("main", "mobs:skymob_gull_egg")
		elseif x == 13 then
			inv:add_item("main", "mobs:skymob_bird_sm_egg")
		elseif x == 14 then
			inv:add_item("main", "mobs:skymob_bird_lg_egg")
		elseif x == 15 then
			inv:add_item("main", "mobs:skymob_bat_egg")
		end
	end
end)

minetest.register_node("tutorial:geschenk_dna",{
	description = "Gift (DNA)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_dna.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})

minetest.register_chatcommand("regnum", {
	params = "<paper>",
	description = "Gives you all regnum things",
	privs = {give=true},
	func = function(name, param)
		local player = minetest.get_player_by_name(name)
		local inv = player:get_inventory()
        awards.give_achievement(name, "award_ruby_bronze")
        awards.give_achievement(name, "award_ruby_silber")
        awards.give_achievement(name, "award_ruby_gold")
        awards.give_achievement(name, "award_ruby_platin")
        awards.give_achievement(name, "award_sapphire_bronze")
        awards.give_achievement(name, "award_sapphire_silber")
        awards.give_achievement(name, "award_sapphire_gold")
        awards.give_achievement(name, "award_sapphire_platin")
        awards.give_achievement(name, "award_amethyst_bronze")
        awards.give_achievement(name, "award_amethyst_silber")
        awards.give_achievement(name, "award_amethyst_Gold")
        awards.give_achievement(name, "award_amethyst_platin")
        awards.give_achievement(name, "award_shadow_bronze")
        awards.give_achievement(name, "award_shadow_silber")
        awards.give_achievement(name, "award_shadow_gold")
        awards.give_achievement(name, "award_shadow_platin")
        awards.give_achievement(name, "award_pearl_bronze")
        awards.give_achievement(name, "award_pearl_silber")
        awards.give_achievement(name, "award_pearl_gold")
        awards.give_achievement(name, "award_pearl_platin")
        awards.give_achievement(name, "award_emerald_bronze")
        awards.give_achievement(name, "award_emerald_silber")
        awards.give_achievement(name, "award_emerald_gold")
        awards.give_achievement(name, "award_emerald_platin")
        awards.give_achievement(name, "award_admin_ore_bronze")
        awards.give_achievement(name, "award_admin_ore_silber")
        awards.give_achievement(name, "award_admin_ore_gold")
        awards.give_achievement(name, "award_admin_ore_platin")
        awards.give_achievement(name, "award_titan_ore_bronze")
        awards.give_achievement(name, "award_titan_ore_silber")
        awards.give_achievement(name, "award_titan_ore_gold")
        awards.give_achievement(name, "award_titan_ore_platin")
        awards.give_achievement(name, "award_regnum_ore_bronze")
        awards.give_achievement(name, "award_regnum_ore_silber")
        awards.give_achievement(name, "award_regnum_ore_gold")
        awards.give_achievement(name, "award_regnum_ore_platin")
        awards.give_achievement(name, "award_???_bronze")
        awards.give_achievement(name, "award_???_silber")
        awards.give_achievement(name, "award_???_gold")
        awards.give_achievement(name, "award_???_platin")
		inv:set_size("b", 1)
		inv:set_size("feld2", 1)
		inv:set_size("feld", 1)
		inv:set_size("feld3", 1)
		inv:set_size("feld4", 1)
        inv:set_size("feld5", 1)
        inv:set_size("gem", 5)
        inv:set_size("armor", 5)
		inv:set_size("skinskey", 1)
		inv:add_item("main", "tutorial:regnumbattleaxe1")
        inv:add_item("gem", "tutorial:magic_gem1")
        inv:add_item("gem", "tutorial:magic_gem2")
        inv:add_item("gem", "tutorial:magic_gem3")
        inv:add_item("gem", "tutorial:magic_gem4")
        inv:add_item("gem", "tutorial:magic_gem5")
        inv:set_stack("armor", 1, "3d_armor:regnumhelmet")
        inv:set_stack("armor", 2, "3d_armor:regnumchestplate")
        inv:set_stack("armor", 3, "3d_armor:regnumleggings")
        inv:set_stack("armor", 4, "3d_armor:regnumboots")
        inv:set_stack("armor", 5, "shields:regnumshield")
		inv:add_item("main", "tutorial:levelMAX_rot")
		inv:add_item("main", "tutorial:levelMAX_blau")
		inv:add_item("main", "tutorial:levelMAX_grau")
		inv:add_item("main", "tutorial:levelMAX")
        inv:add_item("main", "technic:laser_mkS150")
        inv:add_item("main", "technic:drill_mkS150")
		inv:add_item("b", "tutorial:bag_schluessel4")
		inv:add_item("arm", "tutorial:armor_key")
		inv:add_item("feld2", "tutorial:level_schluessel")
		inv:add_item("feld", "tutorial:craft_schluessel7")
		inv:add_item("feld3", "tutorial:legenden_schluessel")
		inv:add_item("feld4", "tutorial:regnum_key")
        inv:add_item("feld5", "tutorial:dragon_schluessel")
		inv:add_item("skinskey", "tutorial:regnum_key_pixeled")
        inv:add_item("main", "mobs:knight_1248_egg")
        inv:add_item("rew", "default:dirt")
        minetest.chat_send_all(player:get_player_name().." has all Regnum things and is able to spawn a 1248 Knight")
		for i=1,8 do
			inv:set_size("bag"..i, 1)
			inv:set_size("kri", 8)
			inv:set_stack("bag"..i,1, "bags:trolley_admin")
			inv:set_stack("kri",i,"tutorial:legenden_kristall_"..i)
		end
		local player_inv = player:get_inventory()
        local name = player:get_player_name()
	    local player_inv = player:get_inventory()
	    local armor_inv = minetest.create_detached_inventory(name.."_armor", {
		    on_put = function(inv, listname, index, stack, player)
			    player:get_inventory():set_stack(listname, index, stack)
			    armor:set_player_armor(player)
			    armor:update_inventory(player)
		    end,
		    on_take = function(inv, listname, index, stack, player)
			    player:get_inventory():set_stack(listname, index, nil)
			    armor:set_player_armor(player)
			    armor:update_inventory(player)
		    end,
		    on_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			    local plaver_inv = player:get_inventory()
			    local stack = inv:get_stack(to_list, to_index)
			    player_inv:set_stack(to_list, to_index, stack)
			    player_inv:set_stack(from_list, from_index, nil)
			    armor:set_player_armor(player)
			    armor:update_inventory(player)
		    end,
		    allow_put = function(inv, listname, index, stack, player)
			    if index == 1 and stack:get_definition().groups.armor_head then
			      return 1
			    elseif index == 2 and stack:get_definition().groups.armor_torso then
			      return 1
			    elseif index == 3 and stack:get_definition().groups.armor_legs then
			      return 1
			    elseif index == 4 and stack:get_definition().groups.armor_feet then
			      return 1
		        elseif index == 5 and stack:get_definition().groups.armor_shield then
			      return 1
			    else
			      return 0
			    end
		    end,
		    allow_take = function(inv, listname, index, stack, player)
			    return stack:get_count()
		    end,
		    allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			    if index == 1 and stack:get_definition().groups.armor_head then
			      return 1
			    elseif index == 2 and stack:get_definition().groups.armor_torso then
			      return 1
			    elseif index == 3 and stack:get_definition().groups.armor_legs then
			      return 1
			    elseif index == 4 and stack:get_definition().groups.armor_feet then
			      return 1
		        elseif index == 5 and stack:get_definition().groups.armor_shield then
			      return 1
			    else
			      return 0
			    end
		    end,
	    })
	    armor_inv:set_size("armor", 5)
        player_inv:set_size("arm", 1)
	    player_inv:set_size("armor", 5)
	    for i=1, 5 do
		    local stack = player_inv:get_stack("armor", i)
		    armor_inv:set_stack("armor", i, stack)
	    end	
		local bags_inv = minetest.create_detached_inventory(player:get_player_name().."_bags",{
			on_put = function(inv, listname, index, stack, player)
				player:get_inventory():set_stack(listname, index, stack)
				player:get_inventory():set_size(listname.."contents", stack:get_definition().groups.bagslots)
			end,
			on_take = function(inv, listname, index, stack, player)
				player:get_inventory():set_stack(listname, index, nil)
			end,
			allow_put = function(inv, listname, index, stack, player)
				if stack:get_definition().groups.bagslots then
					return 1
				else
					return 0
				end
			end,
			allow_take = function(inv, listname, index, stack, player)
				if player:get_inventory():is_empty(listname.."contents")==true then
					return stack:get_count()
				else
					return 0
				end
			end,
			allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
				return 0
			end,
		})
		for i=1,8 do
			local bag = "bag"..i
			player_inv:set_size(bag, 1)
			bags_inv:set_size(bag, 1)
			player:get_inventory():set_size("bag"..i.."contents", player_inv:get_stack("bag"..i, 1):get_definition().groups.bagslots)
			bags_inv:set_stack(bag,1,player_inv:get_stack(bag,1))
		end
		file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience", "w")
		file:write("11950")
		file:close()
		file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_blau", "w")
		file:write("250")
		file:close()
		file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_rot", "w")
		file:write("250")
		file:close()
		file = io.open(minetest.get_worldpath().."/"..player:get_player_name().."_experience_grau", "w")
		file:write("3200")
		file:close()
		player_inv:set_size("catdna", 1)
		player_inv:set_size("dogdna", 1)
        player_inv:set_size("sheepdna", 1)
		player_inv:add_item("catdna","default:dirt 21")
		player_inv:add_item("main","mobs:cat_egg")
		player_inv:add_item("dogdna","default:dirt 21")
		player_inv:add_item("main","mobs:dog_egg")
        player_inv:add_item("sheepdna","default:dirt 21")
        player_inv:add_item("main","mobs:sheep_egg")
        player_inv:add_item("dragondna","default:dirt 26")
        player_inv:add_item("main","mobs:dragon_egg")
		player_inv:set_size("a1", 1)
		player_inv:set_size("a2", 1)
		player_inv:set_size("a3", 1)
		player_inv:set_size("a4", 1)
		player_inv:set_size("a5", 1)
		player_inv:set_size("a6", 1)
		player_inv:set_size("a7", 1)
		player_inv:set_size("a8", 1)
		player_inv:set_size("a9", 1)
		player_inv:set_size("a10", 1)
		player_inv:set_size("a11", 1)
		player_inv:set_size("a12", 1)
		player_inv:set_size("a13", 1)
		player_inv:set_size("a14", 1)
		player_inv:set_size("a15", 1)
		player_inv:set_size("a16", 1)
        player_inv:set_size("a17", 1)
        player_inv:set_size("a18", 1)
        player_inv:set_size("a19", 1)
        player_inv:set_size("a20", 1)
        player_inv:set_size("a21", 1)
        player_inv:set_size("a22", 1)
        player_inv:set_size("a23", 1)
        player_inv:set_size("a24", 1)
        player_inv:set_size("a25", 1)
        player_inv:set_size("a26", 1)
        player_inv:set_size("a27", 1)
        player_inv:set_size("a28", 1)
		player_inv:set_stack("a1", 1, "default:dirt")
		player_inv:set_stack("a2", 1, "default:dirt")
		player_inv:set_stack("a3", 1, "default:dirt")
		player_inv:set_stack("a4", 1, "default:dirt")
		player_inv:set_stack("a5", 1, "default:dirt")
		player_inv:set_stack("a6", 1, "default:dirt")
		player_inv:set_stack("a7", 1, "default:dirt")
		player_inv:set_stack("a8", 1, "default:dirt")
		player_inv:set_stack("a9", 1, "default:dirt")
		player_inv:set_stack("a10", 1, "default:dirt")
		player_inv:set_stack("a11", 1, "default:dirt")
		player_inv:set_stack("a12", 1, "default:dirt")
		player_inv:set_stack("a13", 1, "default:dirt")
		player_inv:set_stack("a14", 1, "default:dirt")
		player_inv:set_stack("a15", 1, "default:dirt")
		player_inv:set_stack("a16", 1, "default:dirt")
        player_inv:set_stack("a17", 1, "default:dirt")
        player_inv:set_stack("a18", 1, "default:dirt")
        player_inv:set_stack("a19", 1, "default:dirt")
        player_inv:set_stack("a20", 1, "default:dirt")
        player_inv:set_stack("a21", 1, "default:dirt")
        player_inv:set_stack("a22", 1, "default:dirt")
        player_inv:set_stack("a23", 1, "default:dirt")
        player_inv:set_stack("a24", 1, "default:dirt")
        player_inv:set_stack("a25", 1, "default:dirt")
        player_inv:set_stack("a26", 1, "default:dirt")
        player_inv:set_stack("a27", 1, "default:dirt")
        player_inv:set_stack("a28", 1, "default:dirt")
	end,
})
local dna = {}
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if fields.dna then
		inventory_plus.set_inventory_formspec(player, dna.get_formspec(player))
	end
    if fields.xpi then
		inventory_plus.set_inventory_formspec(player, xpi.get_formspec(player))
	end
    if fields.xpi0 then
		inventory_plus.set_inventory_formspec(player, xpi0.get_formspec(player))
	end
    if fields.xpi2 then
		inventory_plus.set_inventory_formspec(player, xpi2.get_formspec(player))
	end
    if fields.xpi3 then
		inventory_plus.set_inventory_formspec(player, xpi3.get_formspec(player))
	end
    if fields.rg then
		inventory_plus.set_inventory_formspec(player, rg.get_formspec(player))
	end
    if fields.rg1 then
		inventory_plus.set_inventory_formspec(player, rg.get_formspec(player))
	end
    if fields.rg2 then
		inventory_plus.set_inventory_formspec(player, rg2.get_formspec(player))
	end
    if fields.rg3 then
		inventory_plus.set_inventory_formspec(player, rg3.get_formspec(player))
	end
    if fields.rg4 then
		inventory_plus.set_inventory_formspec(player, rg4.get_formspec(player))
	end
    if fields.rg5 then
		inventory_plus.set_inventory_formspec(player, rg5.get_formspec(player))
	end
    if fields.rg6 then
		inventory_plus.set_inventory_formspec(player, rg6.get_formspec(player))
	end
    if fields.rg7 then
		inventory_plus.set_inventory_formspec(player, rg7.get_formspec(player))
	end
    if fields.rg8 then
		inventory_plus.set_inventory_formspec(player, rg8.get_formspec(player))
	end
    if fields.rg9 then
		inventory_plus.set_inventory_formspec(player, rg9.get_formspec(player))
	end
    if fields.rg10 then
		inventory_plus.set_inventory_formspec(player, rg10.get_formspec(player))
	end
    if fields.rg11 then
		inventory_plus.set_inventory_formspec(player, rg11.get_formspec(player))
	end
    if fields.rg12 then
		inventory_plus.set_inventory_formspec(player, rg12.get_formspec(player))
	end
    if fields.rg13 then
		inventory_plus.set_inventory_formspec(player, rg13.get_formspec(player))
	end
    if fields.rg14 then
		inventory_plus.set_inventory_formspec(player, rg14.get_formspec(player))
	end
    if fields.rg15 then
		inventory_plus.set_inventory_formspec(player, rg15.get_formspec(player))
	end
    if fields.rg16 then
		inventory_plus.set_inventory_formspec(player, rg16.get_formspec(player))
	end
    if fields.rg17 then
		inventory_plus.set_inventory_formspec(player, rg17.get_formspec(player))
	end
    if fields.rg18 then
		inventory_plus.set_inventory_formspec(player, rg18.get_formspec(player))
	end
    if fields.rg19 then
		inventory_plus.set_inventory_formspec(player, rg19.get_formspec(player))
	end
    if fields.rg20 then
		inventory_plus.set_inventory_formspec(player, rg20.get_formspec(player))
	end
    if fields.crafting5 then
		inventory_plus.set_inventory_formspec(player, crafting5.get_formspec(player))
	end
	if fields.dnab then
		local player_inv = player:get_inventory()
		local x1 = player_inv:get_stack("dna", 1):get_name()
		local x2 = player_inv:get_stack("dna", 2):get_name()
		local x3 = player_inv:get_stack("dna", 3):get_name()
		local x4 = player_inv:get_stack("dna", 4):get_name()
		local x5 = player_inv:get_stack("dna", 5):get_name()
		local x6 = player_inv:get_stack("dna", 6):get_name()
		local x7 = player_inv:get_stack("dna", 7):get_name()
		local x8 = player_inv:get_stack("dna", 8):get_name()
		local dog = player_inv:get_stack("dogdna", 1):get_count()
		local cat = player_inv:get_stack("catdna", 1):get_count()
        local sheep = player_inv:get_stack("sheepdna", 1):get_count()
        local dragon = player_inv:get_stack("dragondna", 1):get_count()
		if x1 == "tutorial:dna_string" and x2 == "tutorial:dna_string" and x3 == "tutorial:dna_string" and x4 == "tutorial:dna_string" and x5 == "tutorial:dna_string" and x6 == "tutorial:dna_string" and x7 == "tutorial:dna_string" and x8 == "tutorial:dna_string" then
			local y = math.random(4)
			player_inv:remove_item("dna","tutorial:dna_string 8")
			if y == 2 then
				local z = math.random(4)
				if z == 1 then
					if dog < 20 then
						player_inv:add_item("dogdna","default:dirt")
					end
				elseif z == 2 then
					if cat < 20 then
						player_inv:add_item("catdna","default:dirt")
					end
                elseif z == 3 then
                    if sheep < 20 then
						player_inv:add_item("sheepdna","default:dirt")
					end
                elseif z == 4 then
                    if sheep < 25 then
						player_inv:add_item("dragondna","default:dirt")
					end
				end
			end
		end
		inventory_plus.set_inventory_formspec(player, dna.get_formspec(player))
	end
end)

minetest.register_craftitem("tutorial:dna_string", {
	description = "DNA string",
	inventory_image = "tutorial_dna_string.png",
})
dna.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
    player_inv:set_size("dna", 8)
	player_inv:set_size("dogdna", 1)
	player_inv:set_size("catdna", 1)
    player_inv:set_size("sheepdna", 1)
    player_inv:set_size("dragondna", 1)
	local dog = player_inv:get_stack("dogdna", 1):get_count()
	local cat = player_inv:get_stack("catdna", 1):get_count()
    local sheep = player_inv:get_stack("sheepdna", 1):get_count()
    local dragon = player_inv:get_stack("dragondna", 1):get_count()
	if cat == 20 then
		if player_inv:room_for_item("main", "mobs:cat_egg") == true then
			player_inv:add_item("catdna","default:dirt")
			player_inv:add_item("main","mobs:cat_egg")
			player_inv:add_item("a16","default:dirt")
			percat = ""
		else
			percat = "100% "
		end
	elseif cat > 20 then
		percat = ""
	else
		percat = (cat*5).."% " 
	end
	if dog == 20 then
		if player_inv:room_for_item("main", "mobs:dog_egg") == true then
			player_inv:add_item("dogdna","default:dirt")
			player_inv:add_item("main","mobs:dog_egg")
			player_inv:add_item("a15","default:dirt")
			perdog = ""
		else
			perdog = "100% "
		end
	elseif dog > 20 then
		perdog = ""
	else
		perdog = (dog*5).."% " 
	end
    if sheep == 20 then
		if player_inv:room_for_item("main", "mobs:sheep_egg") == true then
			player_inv:add_item("sheepdna","default:dirt")
			player_inv:add_item("main","mobs:sheep_egg")
			player_inv:add_item("a17","default:dirt")
			persheep = ""
		else
			persheep = "100% "
		end
	elseif sheep > 20 then
		persheep = ""
	else
		persheep = (sheep*5).."% " 
	end
    if dragon == 25 then
		if player_inv:room_for_item("main", "mobs:dragon_egg") == true then
			player_inv:add_item("dragondna","default:dirt")
			player_inv:add_item("main","mobs:dragon_egg")
			player_inv:add_item("a18","default:dirt")
			perdragon = ""
		else
			perdragon = "100% "
		end
	elseif dragon > 25 then
		perdragon = ""
	else
		perdragon = (dragon*4).."% " 
	end
	formspec = "size[8,9.5]"
		.."button[0,0;2,0.5;cr;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."label[0,1;loading dog DNA...]"
        .."label[0,1.5;loading cat DNA...]"
		.."label[0,2;loading sheep DNA...]"
        .."label[0,2.5;loading dragon DNA...]"
		.."label[3,1;"..perdog.."complete]"
		.."label[3,1.5;"..percat.."complete]"
        .."label[3,2;"..persheep.."complete]"
        .."label[3,2.5;"..perdragon.."complete]"
		.."list[current_player;dna;0,3.3;8,1;]"
		.."button[5,2.3;2,0.5;dnab;build DNA]"
		.."list[current_player;main;0,5.5;8,1;]"
		.."list[current_player;main;0,6.75;8,3;8]"
        .."listring[current_player;main]"
		.."listring[current_player;dna]"
	return formspec		
end

local ach = {}
ach.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
	player_inv:set_size("a1", 1)
	player_inv:set_size("a2", 1)
	player_inv:set_size("a3", 1)
	player_inv:set_size("a4", 1)
	player_inv:set_size("a5", 1)
	player_inv:set_size("a6", 1)
	player_inv:set_size("a7", 1)
	player_inv:set_size("a8", 1)
	player_inv:set_size("a9", 1)
	player_inv:set_size("a10", 1)
	player_inv:set_size("a11", 1)
	player_inv:set_size("a12", 1)
	player_inv:set_size("a13", 1)
	player_inv:set_size("a14", 1)
	player_inv:set_size("a15", 1)
	player_inv:set_size("a16", 1)
    player_inv:set_size("a17", 1)
    player_inv:set_size("a18", 1)
    player_inv:set_size("a19", 1)
    player_inv:set_size("a20", 1)
    player_inv:set_size("a21", 1)
    player_inv:set_size("a22", 1)
    player_inv:set_size("a23", 1)
    player_inv:set_size("a24", 1)
    player_inv:set_size("a25", 1)
    player_inv:set_size("a26", 1)
    player_inv:set_size("a27", 1)
    player_inv:set_size("a28", 1)
	local a1 = player_inv:get_stack("a1", 1):get_count()
	local a2 = player_inv:get_stack("a2", 1):get_count()
	local a3 = player_inv:get_stack("a3", 1):get_count()
	local a4 = player_inv:get_stack("a4", 1):get_count()
	local a5 = player_inv:get_stack("a5", 1):get_count()
	local a6 = player_inv:get_stack("a6", 1):get_count()
	local a7 = player_inv:get_stack("a7", 1):get_count()
	local a8 = player_inv:get_stack("a8", 1):get_count()
	local a9 = player_inv:get_stack("a9", 1):get_count()
	local a10 = player_inv:get_stack("a10", 1):get_count()
	local a11 = player_inv:get_stack("a11", 1):get_count()
	local a12 = player_inv:get_stack("a12", 1):get_count()
	local a13 = player_inv:get_stack("a13", 1):get_count()
	local a14 = player_inv:get_stack("a14", 1):get_count()
	local a15 = player_inv:get_stack("a15", 1):get_count()
	local a16 = player_inv:get_stack("a16", 1):get_count()
    local a17 = player_inv:get_stack("a17", 1):get_count()
    local a18 = player_inv:get_stack("a18", 1):get_count()
    local a19 = player_inv:get_stack("a19", 1):get_count()
    local a20 = player_inv:get_stack("a20", 1):get_count()
    local a21 = player_inv:get_stack("a21", 1):get_count()
    local a22 = player_inv:get_stack("a22", 1):get_count()
    local a23 = player_inv:get_stack("a23", 1):get_count()
    local a24 = player_inv:get_stack("a24", 1):get_count()
    local a25 = player_inv:get_stack("a25", 1):get_count()
    local a26 = player_inv:get_stack("a26", 1):get_count()
    local a27 = player_inv:get_stack("a27", 1):get_count()
    local a28 = player_inv:get_stack("a28", 1):get_count()
    local d1 = 0
    local d2 = 0
    local d3 = 0
    local d4 = 0
    local d5 = 0
    local d6 = 0
    local d7 = 0
    if a1 == 1 then
        d1 = d1+1
        d6 = d6+1
    end
    if a2 == 1 then
        d1 = d1+1
        d2 = d2+1
    end
    if a3 == 1 then
        d1 = d1+1
        d2 = d2+1
    end
    if a4 == 1 then
        d1 = d1+1
        d2 = d2+1
    end
    if a5 == 1 then
        d1 = d1+1
        d2 = d2+1
    end
    if a6 == 1 then
        d1 = d1+1
        d2 = d2+1
    end
    if a7 == 1 then
        d1 = d1+1
        d2 = d2+1
    end
    if a8 == 1 then
        d1 = d1+1
        d2 = d2+1
    end
    if a9 == 1 then
        d1 = d1+1
        d7 = d7+1
    end
    if a10 == 1 then
        d1 = d1+1
        d7 = d7+1
    end
    if a11 == 1 then
        d1 = d1+1
        d4 = d4+1
    end
    if a12 == 1 then
        d1 = d1+1
        d4 = d4+1
    end
    if a13 == 1 then
        d1 = d1+1
        d4 = d4+1
    end
    if a14 == 1 then
        d1 = d1+1
        d4 = d4+1
    end
    if a15 == 1 then
        d1 = d1+1
        d5 = d5+1
    end
    if a16 == 1 then
        d1 = d1+1
        d5 = d5+1
    end
    if a17 == 1 then
        d1 = d1+1
        d5 = d5+1
    end
    if a18 == 1 then
        d1 = d1+1
        d5 = d5+1
    end
    if a19 == 1 then
        d1 = d1+1
        d3 = d3+1
    end
    if a20 == 1 then
        d1 = d1+1
        d7 = d7+1
    end
    if a21 == 1 then
        d1 = d1+1
        d3 = d3+1
    end
    if a22 == 1 then
        d1 = d1+1
        d2 = d2+1
    end
    if a23 == 1 then
        d1 = d1+1
        d7 = d7+1
    end
    if a24 == 1 then
        d1 = d1+1
        d6 = d6+1
    end
    if a25 == 1 then
        d1 = d1+1
        d6 = d6+1
    end
    if a26 == 1 then
        d1 = d1+1
        d6 = d6+1
    end
    if a27 == 1 then
        d1 = d1+1
        d6 = d6+1
    end
    if a28 == 1 then
        d1 = d1+1
        d6 = d6+1
    end

	formspec = "size[12.5,11.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."image[0,1;1,1;tutorial_"..a1..".png]"
		.."image[0,2;1,1;tutorial_"..a2..".png]"
		.."image[0,3;1,1;tutorial_"..a3..".png]"
		.."image[0,4;1,1;tutorial_"..a4..".png]"
		.."image[0,5;1,1;tutorial_"..a5..".png]"
		.."image[0,6;1,1;tutorial_"..a6..".png]"
		.."image[0,7;1,1;tutorial_"..a7..".png]"
		.."image[0,8;1,1;tutorial_"..a8..".png]"
		.."image[0,9;1,1;tutorial_"..a9..".png]"
		.."image[0,10;1,1;tutorial_"..a10..".png]"
		.."image[3.5,1;1,1;tutorial_"..a11..".png]"
		.."image[3.5,2;1,1;tutorial_"..a12..".png]"
		.."image[3.5,3;1,1;tutorial_"..a13..".png]"
		.."image[3.5,4;1,1;tutorial_"..a14..".png]"
		.."image[3.5,5;1,1;tutorial_"..a15..".png]"
		.."image[3.5,6;1,1;tutorial_"..a16..".png]"
        .."image[3.5,7;1,1;tutorial_"..a17..".png]"
        .."image[3.5,8;1,1;tutorial_"..a18..".png]"
        .."image[3.5,9;1,1;tutorial_"..a19..".png]"
        .."image[3.5,10;1,1;tutorial_"..a20..".png]"
        .."image[7,1;1,1;tutorial_"..a21..".png]"
        .."image[7,2;1,1;tutorial_"..a22..".png]"
        .."image[7,3;1,1;tutorial_"..a23..".png]"
        .."image[7,4;1,1;tutorial_"..a24..".png]"
        .."image[7,5;1,1;tutorial_"..a25..".png]"
        .."image[7,6;1,1;tutorial_"..a26..".png]"
        .."image[7,7;1,1;tutorial_"..a27..".png]"
        .."image[7,8;1,1;tutorial_"..a28..".png]"
		.."label[1,1.25;Regnumbattleaxe]"
		.."label[1,2.25;Bagkey Lv.4]"
		.."label[1,3.25.5;Armorkey]"
		.."label[1,4.25;Xp key]"
		.."label[1,5.25.5;Craftkey Lv.4]"
		.."label[1,6.25;Legendkey]"
		.."label[1,7.25;Regnumkey]"
		.."label[1,8.25;Pixeled Regnumkey]"
		.."label[1,9.25;8 Regnum Trolleys]"
		.."label[1,10.25;8 Legend crystals]"
		.."label[4.5,1.25;Xp green Lv.MAX]"
		.."label[4.5,2.25;Xp red Lv.MAX]"
		.."label[4.5,3.25;Xp blue Lv.MAX]"
		.."label[4.5,4.25;Xp gray Lv.MAX]"
		.."label[4.5,5.25;dog spawn-egg]"
		.."label[4.5,6.25;cat spawn-egg]"
        .."label[4.5,7.25;sheep spawn-egg]"
        .."label[4.5,8.25;dragon spawn-egg]"
        .."label[4.5,9.25;spezial mining laser lv.150]"
        .."label[4.5,10.25;all awards]"
        .."label[8,1.25;spezial mining drill lv.150]"
        .."label[8,2.25;Dragon key]"
        .."label[8,3.25;5 magic gems]"
        .."label[8,4.25;Regnumhelmet]"
        .."label[8,5.25;Regnumchestplate]"
        .."label[8,6.25;Regnumleggings]"
        .."label[8,7.25;Regnumboots]"
        .."label[8,8.25;Regnumshield]"
        .."label[8,9;Achievements:]"
        .."label[8.5,9.3;Keys:]"
        .."label[8.5,9.6;Mining tools:]"
        .."label[8.5,9.9;Level:]"
        .."label[8.5,10.2;Animals:]"
        .."label[8.5,10.5;Armor+Battleaxe:]"
        .."label[8.5,10.8;Other:]"
        .."label[11,9;"..d1.."/28]"
        .."label[11,9.3;"..d2.."/8]"
        .."label[11,9.6;"..d3.."/2]"
        .."label[11,9.9;"..d4.."/4]"
        .."label[11,10.2;"..d5.."/4]"
        .."label[11,10.5;"..d6.."/6]"
        .."label[11,10.8;"..d7.."/4]"
        .."button[10.5,0;2,0.5;rew;Reward]"
	return formspec
end


minetest.register_chatcommand("rank", {
	params = "<paper>",
	description = "Show your Rank",
	privs = {},
	func = function(name, param)
		pri = minetest.get_player_privs(name)
		if pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.settime and pri.bring and pri.server and pri.password and pri.delprotect and pri.kick and pri.worldedit and pri.ban and pri.rollback and pri.privs and pri.basic_privs and pri.give and pri.sign_editor and pri.protection_bypass then
			minetest.chat_send_player(name, "Your Rank: Admin")
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.settime and pri.bring then
			minetest.chat_send_player(name, "Your Rank: Legend")
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip then
			minetest.chat_send_player(name, "Your Rank: Hero")
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport then
			minetest.chat_send_player(name, "Your Rank: VIP")
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home then
			minetest.chat_send_player(name, "Your Rank: Premium")
		elseif pri.interact and pri.shout then
			minetest.chat_send_player(name, "Your Rank: Member")
		else
			minetest.chat_send_player(name, "Your Rank: Enemy")
		end
	end,
})


minetest.register_craftitem("tutorial:armor_key", {
	description = "Armor key",
	inventory_image = "tutorial_armor_schluessel.png",
})

minetest.register_craft({
    output = 'tutorial:armor_key',
    recipe = {
        {'tutorial:blau_erz'},
		{'default:stick'},
		{'tutorial:rot_erz'},
    }
})
minetest.register_craft({
    output = 'tutorial:armor_key',
    recipe = {
        {'tutorial:rot_erz'},
		{'default:stick'},
		{'tutorial:blau_erz'},
    }
})

for j = 1, 8, 1 do
	for i = 1, 8, 1 do
		minetest.register_node("tutorial:legend_thunder_"..i.."_"..j, {
			description = "Legend thunder: damage lv."..i..",lengh lv."..j,
			drawtype = "plantlike",
			tiles = {{
				name="tutorial_legend_thunder.png",
			}},
			light_source = 12,
			walkable = false,
			buildable_to = true,
			damage_per_second = (i*8),
			drop = {},
			groups = {dig_immediate=3},
		})
		minetest.register_abm({
			nodenames = {"tutorial:legend_thunder_"..i.."_"..j},
			interval = (j*3),
			chance = 1,
			action = function(pos)
				minetest.env:remove_node(pos)
			end,
		})
	end
end

for k = 1, 8, 1 do
	for j = 1, 8, 1 do
		for i = 1, 8, 1 do
			minetest.register_entity("tutorial:legendball_"..i.."_"..j.."_"..k, {
				visual = "mesh",
				visual_size = {x=5, y=5},
				mesh = "tutorial_fireball.x",
				textures = {"tutorial_legendball.png"},
				velocity = 5,
				light_source = 12,
				on_step = function(self, dtime)
						local pos = self.object:getpos()
						if minetest.env:get_node(self.object:getpos()).name ~= "air"then
							self.hit_node(self, pos, node)
							self.object:remove()
							return
						end
						pos.y = pos.y-1
						for _,player in pairs(minetest.env:get_objects_inside_radius(pos, 1)) do
							if player:is_player() then
								self.hit_player(self, player)
								self.object:remove()
								return
							end
						end
					end,
				hit_player = function(self, player)
					local hp = player:get_hp()
					if hp > (k*2) then
						player:set_hp(hp-(k*2))
					else
						player:set_hp(0)
					end
					local s = player:getpos()
					local p = player:get_look_dir()
					local vec = {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z}
					local pos = player:getpos()
					for dx=0,1 do
						for dy=0,1 do
							for dz=0,1 do
								local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
								local n = minetest.env:get_node(p).name
								if (n == "air") then
									minetest.env:add_node(p, {name="tutorial:legend_thunder_"..i.."_"..j})
								end
							end
						end
					end
				end,
				hit_node = function(self, pos, node)
					for dx=-1,1 do
						for dy=-2,1 do
							for dz=-1,1 do
								local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
								local n = minetest.env:get_node(p).name
								if (n == "air") then
									minetest.env:add_node(p, {name="tutorial:legend_thunder_"..i.."_"..j})
								end
							end
						end
					end
				end
			})
			minetest.register_tool("tutorial:legendball_"..i.."_"..j.."_"..k, {
				description = "Legend Ball: Ball damage lv."..k..", Thunder damage lv."..i..", Thunder lengh lv."..j,
				inventory_image = "tutorial_legendball.png",
				on_use = function(itemstack, placer, pointed_thing)
						local dir = placer:get_look_dir();
						local inv = placer:get_inventory()
						local playerpos = placer:getpos();
						local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "tutorial:legendball_"..i.."_"..j.."_"..k)
						local vec = {x=dir.x*3,y=dir.y*3,z=dir.z*3}
						if not minetest.setting_getbool("creative_mode") then itemstack:take_item() end
						obj:setvelocity(vec)
					return itemstack
				end,
				light_source = 12,
			})
		end
	end
end


local mode_text = {
	{"Give player Enemy rank. (revoke all privs)"},
	{"Give player Member rank. (interact,shout)"},
	{"Give player Premium rank. (interact,shout,fly,fast,home)"},
	{"Give player VIP rank. (interact,shout,fly,fast,home,teleport)"},
	{"Give player Hero rank. (interact,shout,fly,fast,home,teleport,noclip)"},
	{"Give player Legend rank (interact,shout,fly,fast,home,teleport,bring,noclip,settime)"},
	{"Give player Admin rank (interact,shout,fly,fast,home,teleport,bring,noclip,settime,server,password,delprotect,kick,worldedit,ban,rollback,privs,basic_privs,give,sign_editor)"},
	{"Mark player as a youtuber "},
}
local function server_hammer_setmode(user, itemstack, mode, keys)
	local puncher = user:get_player_name()
	if keys["sneak"] == false and mode == 0 then
		minetest.chat_send_player(puncher, "Hold shift and use to change server hammer modes.")
		return 
	end
	if keys["sneak"] == true then
		mode = mode + 1
		if mode == 9 then 
			mode = 1
		end
		minetest.chat_send_player(puncher, "Ban hammer mode : "..mode.." - "..mode_text[mode][1] )
	end
	itemstack:set_name("tutorial:server_hammer"..mode)
	itemstack:set_metadata(mode)
	return itemstack, mode
end

local function server_hammer_handler(itemstack, user, pointed_thing, mode)
	local keys = user:get_player_control()
	server_hammer_setmode(user, itemstack, mode, keys)
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
		minetest.chat_send_player(punched_player, puncher.." gives you Enemy rank. You have no privs")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		local player = minetest.get_player_by_name(punched_player)
		local player_inv = player:get_inventory()
		player_inv:set_size("youtube", 1)
		local c = player_inv:get_stack("youtube",1):get_count()
		if c == 0 then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 0}, text = "[Enemy]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 0}, text = "[Youtuber][Enemy]"..player:get_player_name()})
		end
	elseif mode == 2 then
		minetest.chat_send_player(punched_player, puncher.." gives you Member rank. You can use interact and shout")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		punched_player_privs["interact"] = true
		punched_player_privs["shout"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)
		local player = minetest.get_player_by_name(punched_player)
		local player_inv = player:get_inventory()
		player_inv:set_size("youtube", 1)
		local c = player_inv:get_stack("youtube",1):get_count()
		if c == 0 then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 255}, text = "[Member]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 255}, text = "[Youtuber][Member]"..player:get_player_name()})
		end
	elseif mode == 3 then
		minetest.chat_send_player(punched_player, puncher.." gives you Premium rank. You can use interact,shout,fast,fly and home")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		punched_player_privs["interact"] = true
		punched_player_privs["shout"] = true
		punched_player_privs["fly"] = true
		punched_player_privs["fast"] = true
		punched_player_privs["home"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)
		local player = minetest.get_player_by_name(punched_player)
		local player_inv = player:get_inventory()
		player_inv:set_size("youtube", 1)
		local c = player_inv:get_stack("youtube",1):get_count()
		if c == 0 then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 0, b = 255}, text = "[Premium]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 0, b = 255}, text = "[Youtuber][Premium]"..player:get_player_name()})
		end
	elseif mode == 4 then
		minetest.chat_send_player(punched_player, puncher.." gives you VIP rank. You can use interact,shout,fast,home,teleport and fly")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		punched_player_privs["interact"] = true
		punched_player_privs["shout"] = true
		punched_player_privs["fly"] = true
		punched_player_privs["fast"] = true
		punched_player_privs["home"] = true
		punched_player_privs["teleport"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)	
		local player = minetest.get_player_by_name(punched_player)
		local player_inv = player:get_inventory()
		player_inv:set_size("youtube", 1)
		local c = player_inv:get_stack("youtube",1):get_count()
		if c == 0 then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 0}, text = "[VIP]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 0}, text = "[Youtuber][VIP]"..player:get_player_name()})
		end
	elseif mode == 5 then
		minetest.chat_send_player(punched_player, puncher.." gives you Hero rank. You can use interact,shout,fast,home,teleport,noclip and fly")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		punched_player_privs["interact"] = true
		punched_player_privs["shout"] = true
		punched_player_privs["fly"] = true
		punched_player_privs["fast"] = true
		punched_player_privs["home"] = true
		punched_player_privs["teleport"] = true
		punched_player_privs["noclip"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)
		local player = minetest.get_player_by_name(punched_player)
		local player_inv = player:get_inventory()
		player_inv:set_size("youtube", 1)
		local c = player_inv:get_stack("youtube",1):get_count()
		if c == 0 then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 255}, text = "[Hero]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 255}, text = "[Youtuber][Hero]"..player:get_player_name()})
		end
	elseif mode == 6 then
		minetest.chat_send_player(punched_player, puncher.." gives you Legend rank. You can use interact,shout,fast,home,teleport,noclip,fly,bring and settime")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		punched_player_privs["interact"] = true
		punched_player_privs["shout"] = true
		punched_player_privs["fly"] = true
		punched_player_privs["fast"] = true
		punched_player_privs["home"] = true
		punched_player_privs["bring"] = true
		punched_player_privs["teleport"] = true
		punched_player_privs["noclip"] = true
		punched_player_privs["settime"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)
		local player = minetest.get_player_by_name(punched_player)
		local player_inv = player:get_inventory()
		player_inv:set_size("youtube", 1)
		local c = player_inv:get_stack("youtube",1):get_count()
		if c == 0 then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 0}, text = "[Legend]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 0}, text = "[Youtuber][Legend]"..player:get_player_name()})
		end
	elseif mode == 7 then
		minetest.chat_send_player(punched_player, puncher.." gives you Admin rank. You can use interact,shout,fast,home,teleport,noclip,fly,bring and settime")
		minetest.set_player_privs(punched_player, {})
		local punched_player_privs = minetest.get_player_privs(punched_player)
		punched_player_privs["interact"] = true
		punched_player_privs["shout"] = true
		punched_player_privs["fly"] = true
		punched_player_privs["fast"] = true
		punched_player_privs["home"] = true
		punched_player_privs["bring"] = true
		punched_player_privs["teleport"] = true
		punched_player_privs["noclip"] = true
		punched_player_privs["settime"] = true
		punched_player_privs["server"] = true
		punched_player_privs["password"] = true
		punched_player_privs["delprotect"] = true
		punched_player_privs["kick"] = true
		punched_player_privs["worldedit"] = true
		punched_player_privs["ban"] = true
		punched_player_privs["rollback"] = true
		punched_player_privs["privs"] = true
		punched_player_privs["basic_privs"] = true
		punched_player_privs["give"] = true
		punched_player_privs["sign_editor"] = true
		punched_player_privs["protection_bypass"] = true
		minetest.set_player_privs(punched_player, punched_player_privs)
		local player = minetest.get_player_by_name(punched_player)
		local player_inv = player:get_inventory()
		player_inv:set_size("youtube", 1)
		local c = player_inv:get_stack("youtube",1):get_count()
		if c == 0 then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 255}, text = "[Admin]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 255}, text = "[Youtuber][Admin]"..player:get_player_name()})
		end
	elseif mode == 8 then
		minetest.chat_send_player(punched_player, puncher.." marks you as a youtuber")
		pri = minetest.get_player_privs(punched_player)
		local player = minetest.get_player_by_name(punched_player)
		if pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.settime and pri.bring and pri.server and pri.password and pri.delprotect and pri.kick and pri.worldedit and pri.ban and pri.rollback and pri.privs and pri.basic_privs and pri.give and pri.sign_editor and pri.protection_bypass then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 255}, text = "[Youtuber][Admin]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.settime and pri.bring then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 0}, text = "[Youtuber][Legend]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 255}, text = "[Youtuber][Hero]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 0}, text = "[Youtuber][VIP]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 0, b = 255}, text = "[Youtuber][Premium]"..player:get_player_name()})
		elseif pri.interact and pri.shout then
			player:set_nametag_attributes({text = "[Youtuber][Member]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 0}, text = "[Youtuber][Enemy]"..player:get_player_name()})
		end
		local inv = player:get_inventory()
		inv:set_size("youtube",1)
		inv:set_stack("youtube",1,"default:dirt")
	end
	return itemstack
end


minetest.register_craftitem("tutorial:server_hammer", {
	description = "Admin tool 6: Server Hammer",
	inventory_image = "ban_hammer.png",
	stack_max = 1,
	on_use = function(itemstack, user, pointed_thing)
		local mode = 0
		server_hammer_handler(itemstack, user, pointed_thing, mode)
		return itemstack
	end,
})

for i = 1, 8 do
	minetest.register_craftitem("tutorial:server_hammer"..i, {
		description = "Admin tool 6: Server Hammer in Mode "..i,
		inventory_image = "ban_hammer.png^technic_tool_mode"..i..".png",
		wield_image = "ban_hammer.png",
		groups = {not_in_creative_inventory=1},
		
		on_use = function(itemstack, user, pointed_thing)
			local mode = i
			server_hammer_handler(itemstack, user, pointed_thing, mode)
			return itemstack
		end,
		})
end
minetest.register_craft({
    output = 'tutorial:regnum_key_pixeled',
    recipe = {
        {'tutorial:regnum_pixeled'},
		{'default:stick'},
		{'default:stick'},
    }
})
minetest.register_craft({
    output = 'tutorial:regnum_key',
    recipe = {
        {'tutorial:regnum'},
		{'default:stick'},
		{'default:stick'},
    }
})
minetest.register_craft({
    output = 'default:sign_wall',
    recipe = {
        {'default:sign_wall_wood','default:sign_wall_wood'},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_regnum',
    recipe = {
        {'','','tutorial:geschenk_platin','',''},
		{'','','tutorial:geschenk_death_platin','',''},
		{'tutorial:geschenk_platin','tutorial:geschenk_death_platin','tutorial:geschenk_wool2','tutorial:geschenk_death_platin','tutorial:geschenk_platin'},
		{'','','tutorial:geschenk_death_platin','',''},
		{'','','tutorial:geschenk_platin','',''},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_legend',
    recipe = {
        {'','tutorial:geschenk_platin','tutorial:geschenk_platin',''},
		{'tutorial:geschenk_platin','tutorial:geschenk_death_platin','tutorial:geschenk_death_platin','tutorial:geschenk_platin'},
		{'tutorial:geschenk_platin','tutorial:geschenk_death_platin','tutorial:geschenk_death_platin','tutorial:geschenk_platin'},
		{'','tutorial:geschenk_platin','tutorial:geschenk_platin',''},
    }
})
minetest.register_node("tutorial:geschenk_legend",{
	description = "Gift (legendary)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_legenden.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
minetest.register_node("tutorial:geschenk_regnum",{
	description = "Gift (regnum)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_regnum.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
minetest.register_on_dignode(function(pos, node, player)
	if player == nil then
        return
    end	
	local name = player:get_player_name()
	local inv = player:get_inventory()
	if node.name == "tutorial:geschenk_legend" then
		local x = math.random(20)
		if x == 16 then
			local y = math.random(8)
			inv:set_stack("kri", y,"tutorial:legenden_kristall_"..y)
        else
        local z = math.random(16)
          if z == 1 then
            inv:add_item("main","gems:emerald_gem 2")
          elseif z < 3 then
            inv:add_item("main","gems:shadow_gem 2")
          elseif z < 5 then
            inv:add_item("main","gems:pearl_gem 2")
          elseif z < 8 then
            inv:add_item("main","gems:amethyst_gem 2")
          elseif z < 12 then
            inv:add_item("main","gems:ruby_gem 2")
          else
            inv:add_item("main","gems:sapphire_gem 2")
          end
		end
	end
	if node.name == "tutorial:geschenk_regnum" then
		local x = math.random(27)
		if x < 2 then
			local y = math.random(20)
			inv:add_item("main", "tutorial:regnum_pixel_gold "..y)
		elseif x < 3 then
			local y = math.random(20)
			inv:add_item("main", "tutorial:regnum_pixel_green "..y)
		elseif x < 6 then
			local y = math.random(20)
			inv:add_item("main", "tutorial:regnum_pixel_purple "..y)
		elseif x < 17 then
			local y = math.random(20)
			inv:add_item("main", "tutorial:regnum_pixel_red "..y)
		elseif x < 28 then
			local y = math.random(20)
			inv:add_item("main", "tutorial:regnum_pixel_blue "..y)
		end
	end
end)
minetest.register_craftitem("tutorial:regnum_pixeled", {
	description = "Pixeled Regnum",
	inventory_image = "tutorial_regnum.png",
	stack_max = 1,
})
minetest.register_craftitem("tutorial:regnum_key_pixeled", {
	description = "Pixeled regnum key",
	inventory_image = "tutorial_regnum_schluessel.png",
})
minetest.register_craftitem("tutorial:regnum_key", {
	description = "Regnum key",
	inventory_image = "tutorial_regnum_schluessel.png",
})
minetest.register_craftitem("tutorial:regnum_pixel_gold", {
	description = "Regnum pixel gold",
	inventory_image = "tutorial_regnum_pixel_gold.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:regnum_pixel_red", {
	description = "Regnum pixel red",
	inventory_image = "tutorial_regnum_pixel_rot.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:regnum_pixel_blue", {
	description = "Regnum pixel blue",
	inventory_image = "tutorial_regnum_pixel_blau.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:regnum_pixel_green", {
	description = "Regnum pixel green",
	inventory_image = "tutorial_regnum_pixel_gruen.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:regnum_pixel_purple", {
	description = "Regnum pixel purple",
	inventory_image = "tutorial_regnum_pixel_lila.png",
	stack_max = 9999,
})
minetest.register_craftitem("tutorial:legenden_kristall_no", {
	description = "this legends crystal is missing",
	inventory_image = "tutorial_legendenkristall_no.png",
	stack_max = 1,
})
minetest.register_craftitem("tutorial:legenden_kristall_1", {
	description = "the first legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:legenden_kristall_2", {
	description = "the second legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:legenden_kristall_3", {
	description = "the third legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:legenden_kristall_4", {
	description = "the fourth legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:legenden_kristall_5", {
	description = "the fifth legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:legenden_kristall_6", {
	description = "the sixth legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:legenden_kristall_7", {
	description = "the seventh legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_craftitem("tutorial:legenden_kristall_8", {
	description = "the eighth legends crystal",
	inventory_image = "tutorial_legendenkristall.png",
})
minetest.register_on_joinplayer(function(player)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
	player_inv:set_size("t", 1)
	player_inv:add_item("t", "default:dirt")
	local pri = minetest.get_player_privs(player:get_player_name())
	player_inv:set_size("youtube", 1)
	local c = player_inv:get_stack("youtube",1):get_count()
	if c == 0 then
		if pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.settime and pri.bring and pri.server and pri.password and pri.delprotect and pri.kick and pri.worldedit and pri.ban and pri.rollback and pri.privs and pri.basic_privs and pri.give and pri.sign_editor and pri.protection_bypass then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 255}, text = "[Admin]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.settime and pri.bring then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 0}, text = "[Legend]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 255}, text = "[Hero]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 0}, text = "[VIP]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 0, b = 255}, text = "[Premium]"..player:get_player_name()})
		elseif pri.interact and pri.shout then
			player:set_nametag_attributes({text = "[Member]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 0}, text = "[Enemy]"..player:get_player_name()})
		end
	else
		if pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.settime and pri.bring and pri.server and pri.password and pri.delprotect and pri.kick and pri.worldedit and pri.ban and pri.rollback and pri.privs and pri.basic_privs and pri.give and pri.sign_editor and pri.protection_bypass then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 255}, text = "[Youtuber][Admin]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip and pri.settime and pri.bring then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 0}, text = "[Youtuber][Legend]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport and pri.noclip then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 255, b = 255}, text = "[Youtuber][Hero]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home and pri.teleport then
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 0}, text = "[Youtuber][VIP]"..player:get_player_name()})
		elseif pri.interact and pri.shout and pri.fly and pri.fast and pri.home then
			player:set_nametag_attributes({color = {a = 255, r = 0, g = 0, b = 255}, text = "[Youtuber][Premium]"..player:get_player_name()})
		elseif pri.interact and pri.shout then
			player:set_nametag_attributes({text = "[Youtuber][Member]"..player:get_player_name()})
		else
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 0, b = 0}, text = "[Youtuber][Enemy]"..player:get_player_name()})
		end
	end
end)
local kri = {}
kri.get_formspec = function(player, pos)
	if player == nil then
        return
    end
	local player_inv = player:get_inventory()
	local kri_inv = minetest.create_detached_inventory(player:get_player_name().."_kri",{
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
	kri_inv:set_size("kri", 8)
	player_inv:set_size("kri", 8)
	player_inv:set_size("de", 1)
	player_inv:set_size("td", 1)
	player_inv:set_size("tl", 1)
	player_inv:set_size("time", 1)
	player_inv:set_size("t", 1)
	local dl = player_inv:get_stack("de", 1):get_count()
	local tdl = player_inv:get_stack("td", 1):get_count()
	local tll = player_inv:get_stack("tl", 1):get_count()
	local tes = player_inv:get_stack("t", 1):get_count()
	if dl == 0 then
		dl = "nil"
	end
	if tdl == 0 then
		tdl = "nil"
	end
	if tll == 0 then
		tll = "nil"
	end
	local k = 0
	for i=1, 8 do
		local stack = player_inv:get_stack("kri", i)
		kri_inv:set_stack("kri", i, stack)
		if not player_inv:get_stack("kri", i):is_empty() then
			k = k+1
		end
	end
	local time = 0
	if dl ~= "nil" and tdl ~= "nil" and tll ~= "nil" then
		time = time+(dl*35)
		time = time+(tdl*15)
		time = time+(tll*10)
		player_inv:set_stack("time", 1,"default:dirt "..time)
	else
		time = "nil"
	end
	formspec = "size[14,11.3]"
		.."button[0,0;2,0.5;inven;Back]"
		.."button[2,0;2,0.5;main;Main]"
		.."list[current_player;main;3,4.25;8,4;]"
		.."list[detached:"..player:get_player_name().."_kri;kri;6,0;2,1;]"
		.."list[detached:"..player:get_player_name().."_kri;kri;8,1;1,2;2]"
		.."list[detached:"..player:get_player_name().."_kri;kri;7,3;1,1;4]"
		.."list[detached:"..player:get_player_name().."_kri;kri;6,3;1,1;5]"
		.."list[detached:"..player:get_player_name().."_kri;kri;5,2;1,1;6]"
		.."list[detached:"..player:get_player_name().."_kri;kri;5,1;1,1;7]"
		.."label[0,1.5;You have "..k.."/8 crystals]"
		.."image[6.1,1.1;2,2;tutorial_legendenkristall.png]"
		.."label[10,0;Ball damage level:"..dl.."]"
		.."label[10,0.5;Thunder damage level:"..tdl.."]"
		.."label[10,1;Thunder damage level:"..tll.."]"
		.."label[10,1.5;Time in s:"..time.."]"
		.."label[0,8.75;Ball damage level]"
		.."label[0,9.75;Thunder damage level]"
		.."label[0,10.75;Thunder length level]"
		.."label[10,2;creating..]"
		if k > 0 then
		  formspec = formspec .."button[3,8.75;1,0.5;adem;1]"
		  .."button[3,9.75;1,0.5;athu;1]"
		  .."button[3,10.75;1,0.5;athl;1]"
		end
		if k > 1 then
		  formspec = formspec .."button[4,8.75;1,0.5;bdem;2]"
		  .."button[4,9.75;1,0.5;bthu;2]"
		  .."button[4,10.75;1,0.5;bthl;2]"
		end
		if k > 2 then
		  formspec = formspec .."button[5,8.75;1,0.5;cdem;3]"
		  .."button[5,9.75;1,0.5;cthu;3]"
		  .."button[5,10.75;1,0.5;cthl;3]"
		end
		if k > 3 then
		  formspec = formspec .."button[6,8.75;1,0.5;ddem;4]"
		  .."button[6,9.75;1,0.5;dthu;4]"
		  .."button[6,10.75;1,0.5;dthl;4]"
		end
		if k > 4 then
		  formspec = formspec .."button[7,8.75;1,0.5;edem;5]"
		  .."button[7,9.75;1,0.5;ethu;5]"
		  .."button[7,10.75;1,0.5;ethl;5]"
		end
		if k > 5 then
		  formspec = formspec .."button[8,8.75;1,0.5;fdem;6]"
		  .."button[8,9.75;1,0.5;fthu;6]"
		  .."button[8,10.75;1,0.5;fthl;6]"
		end
		if k > 6 then
		  formspec = formspec .."button[9,8.75;1,0.5;gdem;7]"
		  .."button[9,9.75;1,0.5;gthu;7]"
		  .."button[9,10.75;1,0.5;gthl;7]"
		end
		if k > 7 then
		  formspec = formspec .."button[10,8.75;1,0.5;hdem;8]"
		  .."button[10,9.75;1,0.5;hthu;8]"
		  .."button[10,10.75;1,0.5;hthl;8]"
		end
		if tes > 0  and time ~= "nil" then
		  formspec = formspec .."button[10,2;2,0.5;cre;create]"
		end
	return formspec		
end

minetest.register_on_player_receive_fields(function(player, formname, fields)
	if player == nil then
        return
    end
	if fields.kri then
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.ach then
		local player_inv = player:get_inventory()
		local name = player:get_player_name()
        player_inv:set_size("a1", 1)
		player_inv:set_size("a2", 1)
		player_inv:set_size("a3", 1)
		player_inv:set_size("a4", 1)
		player_inv:set_size("a5", 1)
		player_inv:set_size("a6", 1)
		player_inv:set_size("a7", 1)
		player_inv:set_size("a8", 1)
		player_inv:set_size("a9", 1)
		player_inv:set_size("a10", 1)
		player_inv:set_size("a11", 1)
		player_inv:set_size("a12", 1)
		player_inv:set_size("a13", 1)
		player_inv:set_size("a14", 1)
		player_inv:set_size("a15", 1)
		player_inv:set_size("a16", 1)
        player_inv:set_size("a17", 1)
        player_inv:set_size("a18", 1)
        player_inv:set_size("a19", 1)
        player_inv:set_size("a20", 1)
        player_inv:set_size("a21", 1)
        player_inv:set_size("a22", 1)
        player_inv:set_size("a23", 1)
        player_inv:set_size("a24", 1)
        player_inv:set_size("a25", 1)
        player_inv:set_size("a26", 1)
        player_inv:set_size("a27", 1)
        player_inv:set_size("a28", 1)
		local type = player:get_inventory():get_stack("b",1):get_name()
		local type2 = player:get_inventory():get_stack("arm",1):get_name()
		local type3 = player:get_inventory():get_stack("feld2",1):get_name()
		local type4 = player:get_inventory():get_stack("feld",1):get_name()
		local type5 = player:get_inventory():get_stack("feld3",1):get_name()
		local type6 = player:get_inventory():get_stack("feld4",1):get_name()
		local type7 = player:get_inventory():get_stack("skinskey",1):get_name()
		local type8 = 0
		local type9 = 0
        local type10 = player:get_inventory():get_stack("feld5",1):get_name()
		local ge = io.open(minetest.get_worldpath().."/"..name.."_experience", "r")
		local type10 = ge:read("*l")
		local rt = io.open(minetest.get_worldpath().."/"..name.."_experience_rot", "r")
		local type11 = rt:read("*l")
		local bl = io.open(minetest.get_worldpath().."/"..name.."_experience_blau", "r")
		local type12 = bl:read("*l")
		local gr = io.open(minetest.get_worldpath().."/"..name.."_experience_grau", "r")
		local type13 = gr:read("*l")
        local type14 = player:get_inventory():get_stack("feld5",1):get_name()
		for i=1,8 do
			if player:get_inventory():get_stack("bag"..i,1):get_name() == "bags:trolley_admin" then
				type8 = type8+1
			end
			if player:get_inventory():get_stack("kri",i):get_name() == "tutorial:legenden_kristall_"..i then
				type9 = type9+1
			end
		end
        local g1 = player_inv:get_stack("gem", 1):get_name()
        local g2 = player_inv:get_stack("gem", 2):get_name()
        local g3 = player_inv:get_stack("gem", 3):get_name()
        local g4 = player_inv:get_stack("gem", 4):get_name()
        local g5 = player_inv:get_stack("gem", 5):get_name()
        local ar1 = player_inv:get_stack("armor", 1):get_name()
        local ar2 = player_inv:get_stack("armor", 2):get_name()
        local ar3 = player_inv:get_stack("armor", 3):get_name()
        local ar4 = player_inv:get_stack("armor", 4):get_name()
        local ar5 = player_inv:get_stack("armor", 5):get_name()
        if ar1 == "3d_armor:regnumhelmet" or ar1 == "3d_armor:regnumhelmet2" or ar1 == "3d_armor:regnumhelmet3" or ar1 == "3d_armor:regnumhelmet4" then
            player_inv:set_stack("a24", 1,"tutorial:dirt")
        end
        if ar2 == "3d_armor:regnumchestplate" or ar2 == "3d_armor:regnumchestplate2" or ar2 == "3d_armor:regnumchestplate3" or ar2 == "3d_armor:regnumchestplate4" then
            player_inv:set_stack("a25", 1,"tutorial:dirt")
        end
        if ar3 == "3d_armor:regnumleggings" or ar3 == "3d_armor:regnumleggings2" or ar3 == "3d_armor:regnumleggings3" or ar3 == "3d_armor:regnumleggings4" then
            player_inv:set_stack("a26", 1,"tutorial:dirt")
        end
        if ar4 == "3d_armor:regnumboots" or ar4 == "3d_armor:regnumboots2" or ar4 == "3d_armor:regnumboots3" or ar4 == "3d_armor:regnumboots4" then
            player_inv:set_stack("a27", 1,"tutorial:dirt")
        end
        if ar5 == "shields:regnumshield" or ar5 == "shields:regnumshield2" or ar5 == "shields:regnumshield3" or ar5 == "shields:regnumshield4" then
            player_inv:set_stack("a28", 1,"tutorial:dirt")
        end


        if g1 == "tutorial:magic_gem1" and g2 == "tutorial:magic_gem2" and g3 == "tutorial:magic_gem3" and g4 == "tutorial:magic_gem4" and g5 == "tutorial:magic_gem5" then
            player_inv:set_stack("a23", 1,"tutorial:dirt")
        end
		if player:get_inventory():contains_item("main", "tutorial:regnumbattleaxe1") or player:get_inventory():contains_item("main", "tutorial:regnumbattleaxe2") then
			player_inv:set_stack("a1", 1,"tutorial:dirt")
		end
        if player:get_inventory():contains_item("main", "technic:laser_mkS150") then
			player_inv:set_stack("a19", 1,"tutorial:dirt")
		end
        if player:get_inventory():contains_item("main", "technic:drill_mkS150") or player:get_inventory():contains_item("main", "technic:drill_mkS150_1") or player:get_inventory():contains_item("main", "technic:drill_mkS150_2") or player:get_inventory():contains_item("main", "technic:drill_mkS150_3") or player:get_inventory():contains_item("main", "technic:drill_mkS150_4") or player:get_inventory():contains_item("main", "technic:drill_mkS150_5")then
			player_inv:set_stack("a21", 1,"tutorial:dirt")
		end
		if type == "tutorial:bag_schluessel4" then
			player_inv:set_stack("a2", 1,"tutorial:dirt")
		end
		if type2 == "tutorial:armor_key" then
			player_inv:set_stack("a3", 1, "default:dirt")
		end
		if type3 == "tutorial:level_schluessel" then
			player_inv:set_stack("a4", 1, "default:dirt")
		end
		if type4 == "tutorial:craft_schluessel7" then
			player_inv:set_stack("a5", 1, "default:dirt")
		end
		if type5 == "tutorial:legenden_schluessel" then
			player_inv:set_stack("a6", 1, "default:dirt")
		end
		if type6 == "tutorial:regnum_key" then
			player_inv:set_stack("a7", 1, "default:dirt")
		end
		if type7 == "tutorial:regnum_key_pixeled" then
			player_inv:set_stack("a8", 1, "default:dirt")
		end
		if type8 == 8 then
			player_inv:set_stack("a9", 1, "default:dirt")
		end
		if type9 == 8 then
			player_inv:set_stack("a10", 1, "default:dirt")
		end
        if type14 == "tutorial:dragon_schluessel" then
			player_inv:set_stack("a22", 1, "default:dirt")
		end
		if tonumber(type10) > 11949 then
			player_inv:set_stack("a11", 1, "default:dirt")
		end
		if tonumber(type11) > 249 then
			player_inv:set_stack("a12", 1, "default:dirt")
		end
		if tonumber(type12) > 249 then
			player_inv:set_stack("a13", 1, "default:dirt")
		end
		if tonumber(type13) > 3199 then
			player_inv:set_stack("a14", 1, "default:dirt")
		end
		inventory_plus.set_inventory_formspec(player, ach.get_formspec(player))
		
	end
	if fields.adem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 1")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.bdem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 2")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))																
	end
	if fields.cdem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 3")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.ddem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 4")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.edem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 5")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.fdem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 6")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.gdem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 7")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.hdem then
		local player_inv = player:get_inventory()
		player_inv:set_stack("de", 1,"tutorial:dirt 8")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.athu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 1")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.bthu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 2")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.cthu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 3")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.dthu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 4")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.ethu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 5")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.fthu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 6")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.gthu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 7")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.hthu then
		local player_inv = player:get_inventory()
		player_inv:set_stack("td", 1,"tutorial:dirt 8")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.athl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 1")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.bthl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 2")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.cthl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 3")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.dthl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 4")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.ethl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 5")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.fthl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 6")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.gthl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 7")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.hthl then
		local player_inv = player:get_inventory()
		player_inv:set_stack("tl", 1,"tutorial:dirt 8")
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
	end
	if fields.cre then
		local player_inv = player:get_inventory()
		local dl = player_inv:get_stack("de", 1):get_count()
		local tdl = player_inv:get_stack("td", 1):get_count()
		local tll = player_inv:get_stack("tl", 1):get_count()
		local time = player_inv:get_stack("time", 1):get_count()
		player_inv:set_stack("t", 1, nil)
		inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
		minetest.after(time, function()
			print("First Environment step run")
			if player == nil then
				return
			end	
			local player_inv = player:get_inventory()
			player_inv:add_item("main","tutorial:legendball_"..tdl.."_"..tll.."_"..dl)
			player_inv:set_stack("t", 1, "default:dirt")
			if kri.get_formspec(player) == (player:get_inventory_formspec().."button[10,2;2,0.5;cre;create]") then
				inventory_plus.set_inventory_formspec(player, kri.get_formspec(player))
			end
		end)
	end
end)
minetest.register_chatcommand("monster_paper", {
	params = "<paper>",
	description = "Chage the Monster paper",
	privs = {server=true},
	func = function(name, param)
		minetest.setting_set("monster_paper", param)
	end,
})
minetest.register_chatcommand("monster", {
	params = "<paper>",
	description = "Turn monster on/off",
	privs = {server=true},
	func = function(name, param)
		minetest.setting_set("monster", param)
	end,
})
minetest.register_chatcommand("admin", {
	params = "<paper>",
	description = "Gives you all admin tools",
	privs = {give=true},
	func = function(name, param)
		local player = minetest.get_player_by_name(name)
		local inv = player:get_inventory()
		inv:add_item("main", "ban_hammer:hammer")			--admin tool 1
		inv:add_item("main", "tutorial:pistole")			--admin tool 2
		inv:add_item("main", "tutorial:adminbattleaxe")		--admin tool 3
		inv:add_item("main", "technic:laser_mkA1")			--admin tool 4
		inv:add_item("main", "technic:chainsaw")			--admin tool 5
		inv:add_item("main", "tutorial:server_hammer")		--admin tool 6
		inv:add_item("main", "tutorial:monster_remover")	--admin tool 7
        inv:add_item("main", "technic:mining_drill_mkA1")	--admin tool 8
		inv:add_item("main", "3d_armor:helmet_admin")
		inv:add_item("main", "3d_armor:chestplate_admin")
		inv:add_item("main", "3d_armor:leggings_admin")
		inv:add_item("main", "3d_armor:boots_admin")
		inv:add_item("main", "shields:shield_admin")
	end,
})
minetest.register_node("tutorial:geschenk_death",{
	description = "Deathgift",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_death.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
minetest.register_node("tutorial:geschenk_death_silber",{
	description = "Deathgift (silver)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_death_silber.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
minetest.register_node("tutorial:geschenk_death_gold",{
	description = "Deathgift (gold)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_death_gold.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
minetest.register_node("tutorial:geschenk_death_platin",{
	description = "Deathgift (platinum)",
	is_ground_content = true,
	tiles  = {"tutorial_geschenk_death_platin.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	drop = {}
})
minetest.register_craftitem("tutorial:regnum_part", {
	description = "Regnumpart",
	inventory_image = "tutorial_regnum_part.png",
})
minetest.register_craftitem("tutorial:geschenkpapier_death", {
    description = "Death Wrapping paper",
	inventory_image = "tutorial_geschenkpapier_death.png",
})
minetest.register_craft({
    output = 'tutorial:geschenk_death',
    recipe = {
        {'tutorial:geschenkpapier_death', 'tutorial:geschenkpapier_death', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_death_platin',
    recipe = {
        {'tutorial:geschenk_death_gold', 'tutorial:geschenk_death_gold', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_death_gold',
    recipe = {
        {'tutorial:geschenk_death_silber', 'tutorial:geschenk_death_silber', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:geschenk_death_silber',
    recipe = {
        {'tutorial:geschenk_death', 'tutorial:geschenk_death', ''},
    }
})
minetest.register_craft({
    output = 'tutorial:regnum',
    recipe = {
        {'tutorial:regnum_part', 'tutorial:regnum_part', 'tutorial:regnum_part'},
		{'tutorial:regnum_part', 'tutorial:regnum_part', 'tutorial:regnum_part'},
		{'tutorial:regnum_part', 'tutorial:regnum_part', 'tutorial:regnum_part'},
    }
})
minetest.register_on_dignode(function(pos, node, player)
	if player == nil then
        return
    end	
	local name = player:get_player_name()
	local hp = player:get_hp()
	local drops = node.name
	local x = math.random(50)
	local inv = player:get_inventory()
	if node.name == "tutorial:geschenk_death" then
		if x < 6 then
			minetest.get_player_by_name(name):set_hp(0)
		elseif x < 21 then
			if hp > 3 then
				minetest.get_player_by_name(name):set_hp(hp-4)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 31 then
			if hp > 9 then
				minetest.get_player_by_name(name):set_hp(hp-10)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 36 then 
			inv:add_item("main", "default:mese 2")
		elseif x < 41 then 
			inv:add_item("main", "tutorial:lightstone 3")
		elseif x < 46 then 
			inv:add_item("main", "default:ice 1")
		elseif x < 50 then 
			inv:add_item("main", "tutorial:geschenk_death 4")
		elseif x == 50 then 
			inv:add_item("main", "tutorial:regnum_part")
		end
	end
	if node.name == "tutorial:geschenk_death_silber" then
		if x < 5 then
			minetest.get_player_by_name(name):set_hp(0)
		elseif x < 18 then
			if hp > 3 then
				minetest.get_player_by_name(name):set_hp(hp-4)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 26 then
			if hp > 9 then
				minetest.get_player_by_name(name):set_hp(hp-10)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 32 then 
			inv:add_item("main", "default:mese 5")
		elseif x < 38 then 
			inv:add_item("main", "tutorial:lightstone 7")
		elseif x < 44 then 
			inv:add_item("main", "default:ice 2")
		elseif x < 50 then 
			inv:add_item("main", "tutorial:geschenk_death 8")
		elseif x == 50 then 
			inv:add_item("main", "tutorial:regnum_part")
		end
	end
	if node.name == "tutorial:geschenk_death_gold" then
		if x < 4 then
			minetest.get_player_by_name(name):set_hp(0)
		elseif x < 15 then
			if hp > 3 then
				minetest.get_player_by_name(name):set_hp(hp-4)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 21 then
			if hp > 9 then
				minetest.get_player_by_name(name):set_hp(hp-10)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 28 then 
			inv:add_item("main", "default:mese 12")
		elseif x < 35 then 
			inv:add_item("main", "tutorial:lightstone 15")
		elseif x < 42 then 
			inv:add_item("main", "default:ice 4")
		elseif x < 50 then 
			inv:add_item("main", "tutorial:geschenk_death 12")
		elseif x == 50 then
			local y = math.random(2)
			if y == 1 then
				inv:add_item("main", "tutorial:regnum_part")
			elseif y == 2 then 
				inv:add_item("main", "tutorial:regnum_part 2")
			end
		end
	end
	if node.name == "tutorial:geschenk_death_platin" then
		if x < 4 then
			minetest.get_player_by_name(name):set_hp(0)
		elseif x < 15 then
			if hp > 3 then
				minetest.get_player_by_name(name):set_hp(hp-4)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 16 then
			if hp > 9 then
				minetest.get_player_by_name(name):set_hp(hp-10)
			else
				minetest.get_player_by_name(name):set_hp(0)
			end
		elseif x < 24 then 
			inv:add_item("main", "default:mese 26")
		elseif x < 33 then 
			inv:add_item("main", "tutorial:lightstone 32")
		elseif x < 41 then 
			inv:add_item("main", "default:ice 8")
		elseif x < 50 then 
			inv:add_item("main", "tutorial:geschenk_death 16")
		elseif x == 50 then
			local y = math.random(2)
			if y == 1 then
				inv:add_item("main", "tutorial:regnum_part")
			elseif y == 2 then 
				inv:add_item("main", "tutorial:regnum_part 2")
			end
		end
	end
end)


--v.1.0.10
--v.1.0.9
--v.1.0.8
--v.1.0.7
--v.1.0.6
--v.1.0.5
--v.1.0.4
--v.1.0.3
--v.1.0.2
--v.1.0.1