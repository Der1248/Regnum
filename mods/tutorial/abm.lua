--v.1.0.0
--v.0.23.3
--v.0.23.2
--v.0.23.1
--v.0.23.0
--v.0.22.1
--v.0.22.0
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool1"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:blue_wool_titan30"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool1"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:orange_wool_titan30"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool1"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:red_wool_titan30"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool1"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:violet_wool_titan30"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool1"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:white_wool_titan30"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool1"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:yellow_wool_titan30"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:yellow_wool_titan50"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:white_wool_titan50"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:violet_wool_titan50"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:red_wool_titan50"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:pink_wool_titan50"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:orange_wool_titan50"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:magenta_wool_titan50"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:grey_wool_titan50"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:green_wool_titan50"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:dark_grey_wool_titan50"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:dark_green_wool_titan50"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:cyan_wool_titan50"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:brown_wool_titan50"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:blue_wool_titan50"})
	end,
})
minetest.register_abm({
	nodenames = {"tutorial:geschenk_wool2"},
	interval = 5,
	chance = 15,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:black_wool_titan50"})
	end,
})
--v.0.21.0
--v.0.20.0
--v.0.19.1
--v.0.18.0
--v.0.17.0
--v.0.16.0
--v.0.15.0
--v.0.14.0
--v.0.13.0
--v.0.12.0
--v.0.11.0
--v.0.10.1
--v.0.10.0
--v.0.9.0
--v.0.8.0
--v.0.7.2
--v.0.7.1
--v.0.7.0
--v.0.6.6
--v.0.6.5
--v.0.6.4
--v.0.6.3
--v.0.6.2
minetest.register_abm({
	nodenames = {"tutorial:thunder"},
	interval = 3.0,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.env:remove_node(pos)
	end,
})
--v.0.6.1
--v.0.6.0
--v.0.5.2
--v.0.5.1
--v.0.5.0
--v.0.4.0
minetest.register_abm({
	nodenames = {"default:nyancat_rainbow"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:mineral_blau"})
	end,
})
minetest.register_abm({
	nodenames = {"default:nyancat_rainbow"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:mineral_gelb"})
	end,
})
minetest.register_abm({
	nodenames = {"default:nyancat_rainbow"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:mineral_gruen"})
	end,
})
minetest.register_abm({
	nodenames = {"default:nyancat_rainbow"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:mineral_rosa"})
	end,
})
minetest.register_abm({
	nodenames = {"default:nyancat_rainbow"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:mineral_rot"})
	end,
})
minetest.register_abm({
	nodenames = {"default:nyancat_rainbow"},
	interval = 5,
	chance = 6,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:mineral_turkis"})
	end,
})
--v.0.3.0
--v.0.2.0
--v.0.1.0
minetest.register_abm({
	nodenames = {"tutorial:stampfi_ei"},
	interval = 2,
	chance = 4,
	action = function(pos)
		minetest.env:add_node(pos, {name="tutorial:stampfi"})
	end,
})