-- get content id of default:stone
local c_stone = minetest.get_content_id("default:stone")

-- Init content id of xray:stone (will be set after register_node)
local c_xray_stone = c_stone

-- expose api
xray = {}

-- the range of the xray effect
xray.range = 5

-- how long before the nodes turn back to stone
xray.timer = 5

-- mode is used to store the xray mode for each player
xray.mode = {}

-- should we spew out log messages?
xray.debug = false

-- log
xray.log = function(message)
  if not xray.debug then
    return
  end
  minetest.log("action", "[xray] "..message)
end

local function player_in_range(pos)
  for _, object in ipairs(minetest.get_objects_inside_radius(pos, xray.range + 2)) do
    if object:is_player() and xray.mode[object:get_player_name()] == 1 then
      return true
    end
  end
  return false
end

xray.replace = function(player_pos)
  local count = 0

  -- Gen pos1 and pos2
  player_pos = vector.round(player_pos)
  local pos1 = vector.subtract(player_pos, xray.range)
  local pos2 = vector.add(player_pos, xray.range)

  -- Read data into LVM
  local vm = minetest.get_voxel_manip()
  local emin, emax = vm:read_from_map(pos1, pos2)
  local a = VoxelArea:new{
    MinEdge = emin,
    MaxEdge = emax
  }
  local data = vm:get_data()

  -- Modify data
  for z = pos1.z, pos2.z do
    for y = pos1.y, pos2.y do
      for x = pos1.x, pos2.x do
        local vi = a:index(x, y, z)
        if data[vi] == c_stone then
          data[vi] = c_xray_stone
          if xray.debug then
            count = count + 1
          end
        end
      end
    end
  end

  -- Write data
  vm:set_data(data)
  vm:write_to_map(true)

  -- Log
  xray.log("Replaced " .. count .. " default:stone nodes near " .. minetest.pos_to_string(player_pos))
end

-- restore xray to stone
xray.restore = function(pos)
  if player_in_range(pos) then
    return
  end

  local count = 0


  -- Bulk update nodes around
  local c_xray = minetest.get_content_id("xray:stone")
  local pos1 = vector.subtract(pos, xray.range + 2)
  local pos2 = vector.add(pos, xray.range + 2)

  -- Read data into LVM
  local vm = minetest.get_voxel_manip()
  local emin, emax = vm:read_from_map(pos1, pos2)
  local a = VoxelArea:new{
    MinEdge = emin,
    MaxEdge = emax
  }
  local data = vm:get_data()

  -- Modify data
  for z = pos1.z, pos2.z do
    for y = pos1.y, pos2.y do
      for x = pos1.x, pos2.x do
        local vi = a:index(x, y, z)
        if data[vi] == c_xray and not player_in_range({x = x, y = y, z = z}) then
          data[vi] = c_stone
          if xray.debug then
            count = count + 1
          end
        end
      end
    end
  end
  vm:set_data(data)
  vm:write_to_map(true)

  -- Log
  xray.log("Restored " .. count .. " xray:stone nodes near " .. minetest.pos_to_string(pos))
end

playereffects.register_effect_type("xray", "X-Ray", "xray_effect.png", {}, 
	function(player)
		xray.mode[player:get_player_name()] = 1
	end,
	function(effect, player)
		xray.mode[player:get_player_name()] = 0
	end
)

-- register_node
minetest.register_node("xray:stone", {
  description = "Xray Stone",
  tiles = {"xray_stone.png"},
  is_ground_content = true,
  groups = {cracky = 3},
  drop = 'default:cobble',
  legacy_mineral = true,
  sounds = default.node_sound_stone_defaults(),
  paramtype = "light",
  light_source = 12,
  walkable = true,
  drawtype = "glasslike",
})

-- Set content id of xray:stone
c_xray_stone = minetest.get_content_id("xray:stone")

-- register_globalstep - replace default:stone with xray:stone in range of players with xray
minetest.register_globalstep(
  function(dtime)
    for _, player in ipairs(minetest.get_connected_players()) do
      if xray.mode[player:get_player_name()] == 1 then
        xray.replace(player:getpos())
      end
    end
end)

-- register_abm - restore any stray xray:stone nodes to default:stone
minetest.register_abm({
  nodenames = {"xray:stone"},
  interval = xray.timer,
  chance = 1,
  action = xray.restore,
})
