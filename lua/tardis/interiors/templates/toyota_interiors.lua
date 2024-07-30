--------------------------------------------------------------------------------
-- Monitors
--------------------------------------------------------------------------------

TARDIS:AddInteriorTemplate("toyota_monitors_2012", {
	Interior = {
		Screens = {
			{
				pos = Vector(27.486, 23.732, 165.399),
				ang = Angle(0, 150, 102),
				width = 379,
				height = 200,
			},
		},
		Parts={
			toyota_monitor1 = {
				model = "models/cem/toyota/controls/monitor_2012.mdl",
				ang = Angle(0,0,0),
			},
			toyota_monitor2 = {
				model = "models/cem/toyota/controls/monitor_2012.mdl",
				ang = Angle(0,180,0),
			},
			toyota_monitor_ring = { model = "models/cem/toyota/monitor_ring_2012.mdl", },
		},
		Controls = {
			toyota_monitor1 = false,
			toyota_button = "toggle_screens",
		},
		CustomHooks = {
			screens_condition = false,
		},
	},
	CustomHooks = {
		screens_sound = {
			inthooks = {
				["PostInitialize"] = true,
			},
			func = function(ext, int)
				local m1 = int:GetPart("toyota_monitor1")
				local m2 = int:GetPart("toyota_monitor2")
				if IsValid(m1) then m1.Sound = "" end
				if IsValid(m2) then m2.Sound = "" end
			end,
		},
		monitors_rotation = false,
	},
})

TARDIS:AddInteriorTemplate("toyota_monitors_2013", {
	Interior = {
		Parts = {
			toyota_monitor1 = {
				ang = Angle(0, 50, 0),
			},
			toyota_monitor2 = {},
			toyota_monitor_ring = {},
			toyota_monitor1_hitbox	= {
				pos = Vector(23.688, -38.182, 156.37),
				ang = Angle(2.694, 23.115, 97.364),
			},

			toyota_monitor1_hitbox_b	= {
				pos = Vector(-40.477, -25.646, 156.869),
				ang = Angle(6.66, -129.237, -90.173),
			},

			toyota_monitor1_hitbox2	= {
				pos = Vector(42.554, -15.739, 156.431),
				ang = Angle(-0.513, 49.419, 95.563),
			},

			toyota_monitor1_hitbox2_b	= {
				pos = Vector(-16.131, -44.159, 156.639),
				ang = Angle(6.66, -130.777, -90.173),
			},

			toyota_monitor1_hitbox3 = {
				pos = Vector(16.238, -13.749, 142.115),
				ang = Angle(0, 141.24, 0),
				scale = 2,
			},

			toyota_monitor1_hitbox3_b = {
				pos = Vector(-13.143, -17.021, 142.847),
				ang = Angle(0, 54.12, 0),
				scale = 2,
			},
		},
		Screens = {
			{
				pos = Vector(27.561, -38.1, 162.165),
				ang = Angle(0, 50, 96),
				width = 378,
				height = 200,
			},
		},
	},
})

TARDIS:AddInteriorTemplate("toyota_monitors_2015", {
	Interior = {
		Parts = {
			toyota_monitor1 = {
				model = "models/cem/toyota/controls/monitor_2015.mdl",
				ang = Angle(0, 100, 0)
			},
			toyota_monitor2 = {
				model = "models/cem/toyota/controls/monitor_2015.mdl",
			},
			toyota_monitor_ring = {},
			toyota_monitor1_hitbox	= {
				pos = Vector(47.027, -5.821, 157.909),
				ang = Angle(-6.61, -169.433, -89.629),
			},
			toyota_monitor1_hitbox_b	= {
				pos = Vector(-5.244, -46.19, 157.621),
				ang = Angle(1.198, 12.233, 97.277),
			},
			toyota_monitor1_hitbox2	= {
				pos = Vector(42.106, 24.25, 157.812),
				ang = Angle(-6.61, -166.463, -89.629),
			},
			toyota_monitor1_hitbox2_b	= {
				pos = Vector(23.94, -38.823, 157.834),
				ang = Angle(1.964, 18.258, 93.094),
			},
			toyota_monitor1_hitbox3 = {
				pos = Vector(20.318, 3.919, 143.626),
				ang = Angle(0, -70.18, 0),
				scale = 2,
			},
			toyota_monitor1_hitbox3_b = {
				pos = Vector(4.328, -20.681, 143.116),
				ang = Angle(0.213, 16.61, 0.743),
				scale = 2,
			},
		},
		Screens = {
			{
				pos = Vector(47.904316, -3.262608, 163.612000),
				ang = Angle(0, 100, 96),
				width = 378,
				height = 200,
			},
		},
	},
})

--------------------------------------------------------------------------------
-- Consoles
--------------------------------------------------------------------------------

TARDIS:AddInteriorTemplate("toyota_console_snowmen", {
	Interior = {
		Parts={
			toyota_console = { model = "models/cem/toyota/console_2012.mdl", },
			toyota_audio_system = { model = "models/cem/toyota/controls/audio_system_2012.mdl", },
			toyota_sonic_charger = false,
			toyota_upperconsolelights = false,
		},
		PartTips = {
			toyota_audio_system = false,
		},
	},
})

TARDIS:AddInteriorTemplate("toyota_console_s7", {
	Interior = {
		Parts={
			toyota_console = { model = "models/cem/toyota/console_2012.mdl", },
			toyota_audio_system = { model = "models/cem/toyota/controls/audio_system_2012.mdl", },
			toyota_sonic_charger = false,
			toyota_upperconsolelights = { ang = Angle(0, 90, 0), },
		},
		PartTips = {
			toyota_audio_system = false,
		},
	},
})

TARDIS:AddInteriorTemplate("toyota_console_dotd_holder_empty", {
	Interior = {
		Parts={
			toyota_holder = {ang = Angle(0,90,0)},
			toyota_sonic_charger = false,
		},
	},
})

TARDIS:AddInteriorTemplate("toyota_console_11th_sonic_dispenser", {
	Interior = {
		Parts = {
			toyota_sonic = {
				pos = Vector(4.22, -34.015, 136.396),
				ang = Angle(15.301, -38.846, 10.003),
			},
		},
		Controls = {
			toyota_sonic = "toyota_sonic_dispenser",
			toyota_sonic_charger = "toyota_sonic_dispenser",
		},
	},
	ToyotaSonicID = "11thdoctorsonic",
})

TARDIS:AddInteriorTemplate("toyota_console_12th_sonic_dispenser", {
	Interior = {
		Parts = {
			toyota_sonic = {
				model = "models/doctorwho1200/sonics/12thdoctor/3rdpersonsonic.mdl",
				pos = Vector(11.144, -34.066, 137.488),
				ang = Angle(-5.702, -143.291, -17.723),
			},
		},
		Controls = {
			toyota_sonic = "toyota_sonic_dispenser",
			toyota_sonic_charger = "toyota_sonic_dispenser",
		},
	},
	ToyotaSonicID = "12thdoctorsonic",
})

TARDIS:AddInteriorTemplate("toyota_console_custom_sonic_dispenser", {
	Interior = {
		Parts = {
			toyota_sonic = {
				model = "models/doctormemes/sonics/customsmithsonic/w_customsmithsonic.mdl",
				pos = Vector(8.534, -35.69, 136.682),
				ang = Angle(2.89, 22.642, -42.679),
			},
		},
		Controls = {
			toyota_sonic = "toyota_sonic_dispenser",
			toyota_sonic_charger = "toyota_sonic_dispenser",
		},
	},
	ToyotaSonicID = "customsmithsonic",
})

--------------------------------------------------------------------------------
-- Floor types
--------------------------------------------------------------------------------

TARDIS:AddInteriorTemplate("toyota_floor_s7", {
	Interior = {
		Parts={
			toyota_floor = { model = "models/cem/toyota/floor_2012.mdl", },
		},
	},
})

TARDIS:AddInteriorTemplate("toyota_floor_totd", {
	Interior = {
		Parts={
			toyota_floor = {},
		},
	},
})

TARDIS:AddInteriorTemplate("toyota_floor_dotd_step", {
	Interior = {
		Parts={
			toyota_floor = {},
			toyota_lights_floor = { model = "models/cem/toyota/lights_floor_dotd_step.mdl",},
			toyota_floor_dotd_step = {},
		},
	},
})

TARDIS:AddInteriorTemplate("toyota_floor_2014", {
	Interior = {
		Model="models/cem/toyota/interior_2014.mdl",

		Parts={
			toyota_rails = { model = "models/cem/toyota/rails_capaldi.mdl", },
			toyota_floor = { model = "models/cem/toyota/floor_2014.mdl", },
			toyota_lower_trim = { model = "models/cem/toyota/lower_trim_capaldi.mdl", },
			toyota_lights_catwalk_lower		= {pos = Vector(0, 0, 0), ang = Angle(0,90,0),},
		},
	},
})

--------------------------------------------------------------------------------
-- Separate features
--------------------------------------------------------------------------------

TARDIS:AddInteriorTemplate("toyota_totd_green_rotor", {
	CustomHooks = {
		throttle_sound = {
			inthooks = {
				["PostInitialize"] = true,
			},
			func = function(ext, int)
				local glass = int:GetPart("toyota_glass")
				if IsValid(glass) then
					glass:SetBodygroup(1,1)
					return
				end
			end,
		},
	},
})

TARDIS:AddInteriorTemplate("toyota_bookshelves", {
	Interior = {
		Parts = {
			toyota_books = {},
		},
	},
})

TARDIS:AddInteriorTemplate("toyota_phone_port", {
	Interior = {
		Parts = {
			toyota_phone_port = { pos = Vector(-40.902, -14.452, 134.959), ang = Angle(0,90,0), },
		},
	},
})

TARDIS:AddInteriorTemplate("toyota_lower_roundels", {
	Interior = {
		Parts={
			toyota_walls_lower = false,
			toyota_walls_lower_roundels = { ang = Angle(0,90,0), },
			toyota_lights_lower_roundels = { ang = Angle(0,90,0), },
		},
	},
})

TARDIS:AddInteriorTemplate("toyota_stasis_cube", {
	Interior = {
		Parts={
			toyota_stasiscube = {
				pos = Vector(23.116, -29.103, 87.753),
				ang = Angle(0, 72.49, 0),
			},
		},
	},
})

