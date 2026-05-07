experience = {}
experience.modname = core.get_current_modname()
experience.modpath = core.get_modpath(experience.modname)
experience.worldpath = core.get_worldpath()

dofile(experience.modpath .. "/api.lua")

dofile(experience.modpath .. "/Xp1_gruen.lua")
dofile(experience.modpath .. "/Xp2_rot.lua")
dofile(experience.modpath .. "/Xp2_blau.lua")
dofile(experience.modpath .. "/Xp3_grau.lua")
dofile(experience.modpath .. "/Xp4_gelb.lua")
dofile(experience.modpath .. "/Xp5_cyan.lua")
dofile(experience.modpath .. "/Xp6_precious_metal.lua")

dofile(experience.modpath .. "/legacy.lua")
