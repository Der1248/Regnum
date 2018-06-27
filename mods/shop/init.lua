local function get_register_formspec(pos)
	local meta = minetest.get_meta(pos)
	local spos = pos.x.. "," ..pos.y .. "," .. pos.z
	local formspec =
		"size[8,6.5]" ..
		default.gui_bg ..
		default.gui_bg_img ..
		default.gui_slots ..
		"label[0,1;Sell]" ..
		"label[3,1;For]" ..
		"button[0,0;2,1;stock;Stock]" ..
		"button[3,0;2,1;register;Register]" ..
		"button_exit[7,0;1,1;exit;X]" ..
		"button[7,1;1,1;ok;OK]" ..
		"list[nodemeta:" .. spos .. ";sell;1,1;1,1;]" ..
		"list[nodemeta:" .. spos .. ";buy;4,1;1,1;]" ..
		"list[current_player;main;0,2.75;8,4;]"
	return formspec
end

local formspec_register =
	"size[8,9]" ..
	default.gui_bg ..
	default.gui_bg_img ..
	default.gui_slots ..
	"label[0,0;Register]" ..
	"list[current_name;register;0,0.75;8,4;]" ..
	"list[current_player;main;0,5.25;8,4;]" ..
	"listring[]"

local formspec_stock =
	"size[8,9]" ..
	default.gui_bg ..
	default.gui_bg_img ..
	default.gui_slots ..
	"label[0,0;Stock]" ..
	"list[current_name;stock;0,0.75;8,4;]" ..
	"list[current_player;main;0,5.25;8,4;]" ..
	"listring[]"

minetest.register_privilege("shop_admin", "Shop administration and maintainence")

minetest.register_node("shop:shop", {
	description = "Shop",
	tiles = {
		"shop_shop_topbottom.png",
		"shop_shop_topbottom.png",
		"shop_shop_side.png",
		"shop_shop_side.png",
		"shop_shop_side.png",
		"shop_shop_front.png",
	},
	groups = {choppy = 3, oddly_breakable_by_hand = 1},
	paramtype2 = "facedir",
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		local meta = minetest.get_meta(pos)
		local owner = placer:get_player_name()

		meta:set_string("owner", owner)
		meta:set_string("infotext", "Shop (Owned by " .. owner .. ")")
		meta:set_string("formspec", get_register_formspec(pos))

		local inv = meta:get_inventory()
		inv:set_size("buy", 1)
		inv:set_size("sell", 1)
		inv:set_size("stock", 8*4)
		inv:set_size("register", 8*4)
	end,
	on_receive_fields = function(pos, formname, fields, sender)
		local meta = minetest.get_meta(pos)
		local owner = meta:get_string("owner")
		local player = sender:get_player_name()
		local inv = meta:get_inventory()
		local s = inv:get_list("sell")
		local b = inv:get_list("buy")
		local stk = inv:get_list("stock")
		local reg = inv:get_list("register")
		local pinv = sender:get_inventory()

		if fields.register then
			if player ~= owner and (not minetest.check_player_privs(player, "shop_admin")) then
				minetest.chat_send_player(player, "Only the shop owner can open the register.")
				return
			else
				minetest.show_formspec(player, "shop:shop", formspec_register)
			end
		elseif fields.stock then
			if player ~= owner and (not minetest.check_player_privs(player, "shop_admin")) then
				minetest.chat_send_player(player, "Only the shop owner can open the stock.")
				return
			else
				minetest.show_formspec(player, "shop:shop", formspec_stock)
			end
		elseif fields.ok then
			if inv:is_empty("sell") or
			    inv:is_empty("buy") or
			    (not inv:room_for_item("register", b[1])) then
				minetest.chat_send_player(player, "Shop closed.")
				return
			end

			if (pinv:contains_item("main", b[1]) or
			  pinv:contains_item("funds", b[1])) and
			    inv:contains_item("stock", s[1]) and
			    pinv:room_for_item("main", s[1]) then
				pinv:remove_item("main", b[1])
				inv:add_item("register", b[1])
				inv:remove_item("stock", s[1])
				pinv:add_item("main", s[1])
			else
				minetest.chat_send_player(player, "No funds.")
			end
		end
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		local owner = meta:get_string("owner")
		local inv = meta:get_inventory()
		local s = inv:get_list("sell")
		local n = stack:get_name()
		local playername = player:get_player_name()
		if playername == owner or minetest.check_player_privs(playername, "shop_admin") then
			local inv = minetest.get_meta(pos):get_inventory()
		    if listname == "sell" or listname == "buy" then
			    local stack_copy = ItemStack(stack)
			    stack_copy:set_count(stack_copy:get_count())
                local y = stack_copy:get_count()
			    local x = inv:get_stack(listname, index):get_count()
                inv:set_stack(listname, index,stack_copy:get_name().." "..(x+y))
                return 0
            else
                local stack_copy = ItemStack(stack)
			    return stack_copy:get_count()
            end
        else
            return 0
		end
	end,
	allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		local owner = meta:get_string("owner")
		local playername = player:get_player_name()
        local inv = minetest.get_meta(pos):get_inventory()
		if playername == owner or minetest.check_player_privs(playername, "shop_admin")then
			if listname == "sell" or listname == "buy" then
			    inv:set_stack(listname, index, ItemStack(""))
			    return 0
		    else
                local stack_copy = ItemStack(stack)
			    return stack_copy:get_count()
		    end
        else
            return 0
		end
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		local meta = minetest.get_meta(pos)
		local owner = meta:get_string("owner")
        local inv = minetest.get_meta(pos):get_inventory()
		local playername = player:get_player_name()
        local stack = inv:get_stack(from_list, from_index)
		if playername == owner or minetest.check_player_privs(playername, "shop_admin") then
            if from_list == "sell" or from_list == "buy" then
                return 0
            else
                return stack:get_count()
            end
        else
            return 0
		end
	end,
	can_dig = function(pos, player) 
                local meta = minetest.get_meta(pos) 
                local owner = meta:get_string("owner") 
                local inv = meta:get_inventory() 
                return player:get_player_name() == owner and
		    inv:is_empty("register") and
		    inv:is_empty("stock") and
		    inv:is_empty("buy") and
		    inv:is_empty("sell")
	end,

})
minetest.register_craft({
	output = "shop:shop",
	recipe = {
		{"group:wood", "default:gold_ingot", "group:wood"},
		{"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
		{"group:wood", "default:gold_ingot", "group:wood"}
	}
})
