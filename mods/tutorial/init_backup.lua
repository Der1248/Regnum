
--
-- Helper functions
--

local function get_sign(i)
	if i == 0 then
		return 0
	else
		return i/math.abs(i)
	end
end

local function get_velocity(vx, vy, vz, yaw)
	local x = math.cos(yaw)*vx+math.cos(math.pi/2+yaw)*vz
	local z = math.sin(yaw)*vx+math.sin(math.pi/2+yaw)*vz
	return {x=x, y=vy, z=z}
end

local function get_v(v)
	return math.sqrt(v.x^2+v.z^2)
end

--
-- Heli entity
--

local heli = {
	physical = true,
	collisionbox = {-1,-0.6,-1, 1,0.3,1},

	--Just copy from lua api for test
	collide_with_objects = true,
	weight = 5,

	visual = "mesh",
	mesh = "root.x",
	--Player
	driver = nil,

	--Heli mesh
	model = nil,

	--In progress
	motor = nil,
	left = true,
	timer=0,

	--Rotation
	yaw=0,

	--Detect hit an object or node
	prev_y=0,

	--Speeds
	v = {x=0,y=0,z=0}


}
local heliModel = {
	visual = "mesh",
	mesh = "heli.x",
	textures = {"blades.png","blades.png","heli.png","Glass.png"},
}
local motor = {
	physical = true,
	collisionbox = {-2,0.5,-1, 1,1,1},
	visual = "mesh",
	mesh = "motor.x",
	textures = {"motor.png"},
	driver = nil,
	left = true,
	timer=0,
	vx = 0,--Velo. for/back-ward
	vy = 0,--Velo. up/down
	vz = 0--Velo. side
}

function heli:on_rightclick(clicker)
	if not clicker or not clicker:is_player() then
		return
	end
	if self.driver and clicker == self.driver then
		self.driver = nil
		clicker:set_detach()
		self.model:set_animation({x=0,y=1},0, 0)
	elseif not self.driver then
		self.model:set_animation({x=0,y=10},10, 0)
		self.driver = clicker
		clicker:set_attach(self.object, "Root", {x=0,y=0,z=0}, {x=0,y=0,z=0})
		--self.object:setyaw(clicker:get_look_yaw())
	end
end

function heli:on_activate(staticdata, dtime_s)
	self.object:set_armor_groups({immortal=1})
	self.prev_y=self.object:get_pos().y
	if self.model == nil then
		--if minetest.get_objects_inside_radius(self.object:get_pos(), 1)
		self.model=minetest.env:add_entity(self.object:get_pos(), "tutorial:heliModel")
		self.model:set_attach(self.object, "Root", {x=0,y=0,z=0}, {x=0,y=0,z=0})
	end

	if staticdata then
		self.v = tonumber(staticdata)
	end
end

function heli:get_staticdata()
	return tostring(v)
end

function heli:on_punch(puncher, time_from_last_punch, tool_capabilities, direction)
	if self.model ~= nil then
		self.model:remove()
	end
	self.object:remove()
	if puncher and puncher:is_player() then
		--puncher:get_inventory():add_item("main", "helicopter:heli")
	end
end
function heliModel:on_punch(puncher, time_from_last_punch, tool_capabilities, direction)
	self.object:remove()
end
function heli:on_step(dtime)
	--Prevent shaking heli while sitting in it


	--Prevent multi heli control bug
	if self.driver and ( math.abs(self.driver:get_pos().x-self.object:get_pos().x)>10*dtime or math.abs(self.driver:get_pos().y-self.object:get_pos().y)>10*dtime or math.abs(self.driver:get_pos().z-self.object:get_pos().z)>10*dtime) then
		self.driver = nil
	end

	if self.driver then
		self.yaw = self.driver:get_look_yaw()
		v = self.object:getvelocity()
		local ctrl = self.driver:get_player_control()
		--Forward/backward
		if ctrl.up then
			self.v.x = self.v.x + math.cos(self.driver:get_look_yaw())*0.1
			self.v.z = self.v.z + math.sin(self.driver:get_look_yaw())*0.1
		end
		if ctrl.down then
			self.v.x = self.v.x-math.cos(self.driver:get_look_yaw())*0.1
			self.v.z = self.v.z-math.sin(self.driver:get_look_yaw())*0.1
		end
		--Left/right
		if ctrl.left then
			self.v.z = self.v.z+math.cos(self.driver:get_look_yaw())*0.1
			self.v.x = self.v.x+math.sin(math.pi+self.driver:get_look_yaw())*0.1
		end
		if ctrl.right then
			self.v.z = self.v.z-math.cos(self.driver:get_look_yaw())*0.1
			self.v.x = self.v.x-math.sin(math.pi+self.driver:get_look_yaw())*0.1
		end
		--up/down
		if ctrl.jump then
			if self.v.y<1.5 then
				self.v.y = self.v.y+0.2
			end
		end
		if ctrl.sneak then
			if self.v.y>-1.5 then
				self.v.y = self.v.y-0.2
			end
		end
		--
		--Speed limit
		if math.abs(self.v.x) > 4.5 then
			self.v.x = 4.5*get_sign(self.v.x)
		end
		if math.abs(self.v.z) > 4.5 then
			self.v.z = 4.5*get_sign(self.v.z)
		end

	end

	--Decelerating
	local sx=get_sign(self.v.x)
	self.v.x = self.v.x - 0.02*sx
	local sz=get_sign(self.v.z)
	self.v.z = self.v.z - 0.02*sz
	local sy=get_sign(self.v.y)
	self.v.y = self.v.y-0.01*sy

	--Stop
	if sx ~= get_sign(self.v.x) then
		self.v.x = 0
	end
	if sz ~= get_sign(self.v.z) then
		self.v.z = 0
	end


	--Speed limit
	if math.abs(self.v.x) > 4.5 then
		self.v.x = 4.5*get_sign(self.v.x)
	end
	if math.abs(self.v.z) > 4.5 then
		self.v.z = 4.5*get_sign(self.v.z)
	end
	if math.abs(self.v.y) > 4.5 then
		self.v.z = 4.5*get_sign(self.v.z)
	end

	--Set speed to entity
	self.object:setvelocity({x=self.v.x, y=self.v.y,z=self.v.z})
	--Model rotation
	--[[if self.driver then
	self.model:set_attach(self.object,"Root",
	{x=-(self.driver:get_pos().x-self.object:get_pos().x)*dtime,
	y=-(self.driver:get_pos().z-self.object:get_pos().z)*dtime,
	z=-(self.driver:get_pos().y-self.object:get_pos().y)*dtime}, {
			x=-90+self.v.z*5*math.cos(self.yaw)-self.v.x*5*math.sin(self.yaw),
			y=0-self.v.z*5*math.sin(self.yaw)-self.v.x*5*math.cos(self.yaw),
			z=self.yaw*57})
	else]]--
	self.model:set_attach(self.object,"Root", {x=0,y=0,z=0}, {
			x=-90+self.v.z*5*math.cos(self.yaw)-self.v.x*5*math.sin(self.yaw),
			y=0-self.v.z*5*math.sin(self.yaw)-self.v.x*5*math.cos(self.yaw),
			z=self.yaw*57})
	--end
end

--
--Registration
--

minetest.register_entity("tutorial:heli", heli)
minetest.register_entity("tutorial:heliModel", heliModel)
minetest.register_entity("tutorial:motor", motor)
--minetest.register_entity("helicopter:rocket", rocket)

minetest.register_craftitem("tutorial:heli", {
	description = "Helicopter",
	inventory_image = "heli_inv.png",
	wield_image = "heli_inv.png",
	wield_scale = {x=1, y=1, z=1},
	liquids_pointable = false,

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" then
			return
		end
		pointed_thing.under.y = pointed_thing.under.y+1
		minetest.env:add_entity(pointed_thing.under, "tutorial:heli")
		--minetest.env:add_entity(pointed_thing.under, "helicopter:motor")
		--itemstack:take_item()
		return itemstack
	end,
})
