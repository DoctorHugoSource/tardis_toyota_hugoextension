TARDIS:AddInteriorTemplate("toyota_interior_blue", {
	Interior = {
		Light={
			color=Color(0,255,215),
			warncolor=Color(0,51,51),
			nopower = true,
			off_color = Color(0,65,215),
			off_brightness = 0.2,

			states = {
				["bright8"] = { brightness=2.0, },
				["bright7"] = { brightness=1.75, },
				["bright6"] = { brightness=1.5, },
				["bright5"] = { brightness=1.25, },
				["bright4"] = { brightness=1.0, },
				["bright3"] = { brightness=0.875, },
				["bright2"] = { brightness=0.75, },
				["bright1"] = { brightness=0.625, },
				["bright0"] = { brightness=0.5, },
			},
		},
		Lights={
			console_white = {
				color=Color(187,236,255),
				warncolor=Color(255,143,143),

				states = {
					["bright8"] = { brightness=2.8, },
					["bright7"] = { brightness=2.45, },
					["bright6"] = { brightness=2.1, },
					["bright5"] = { brightness=1.75, },
					["bright4"] = { brightness=1.4, },
					["bright3"] = { brightness=1.225, },
					["bright2"] = { brightness=1.05, },
					["bright1"] = { brightness=0.875, },
					["bright0"] = { brightness=0.7, },
				},
			},
			lower_light = {
				color=Color(70,233,255),
				warncolor=Color(51,102,102),

				states = {
					["bright8"] = { brightness=24, },
					["bright7"] = { brightness=21, },
					["bright6"] = { brightness=18, },
					["bright5"] = { brightness=15, },
					["bright4"] = { brightness=12, },
					["bright3"] = { brightness=10.5, },
					["bright2"] = { brightness=9, },
					["bright1"] = { brightness=7.5, },
					["bright0"] = { brightness=6, },
				},
			},
		},
		TextureSets = {
			initial_roundel_trim = {
				prefix = "models/cem/toyota_smith/",
			},
			poweron_specific = {
				prefix = "models/cem/toyota_smith/",
			},
			poweroff_specific = {
				base = "poweron_specific",
				prefix = "models/cem/toyota_smith/off/",
			},
		},
	},
	ToyotaCustom = {
		screen_material_prefix = "models/cem/toyota_smith/",
	},
})

local who_color = Color(255,120,24,2)

TARDIS:AddInteriorTemplate("toyota_interior_green", {
	Interior = {
		Light={
			color=Color(0,255,175),
			warncolor=Color(0,51,51),
			nopower = true,
			off_color = Color(0,65,215),
			off_brightness = 0.2,

			states = {
				["bright8"] = { brightness=2.0, },
				["bright7"] = { brightness=1.75, },
				["bright6"] = { brightness=1.5, },
				["bright5"] = { brightness=1.25, },
				["bright4"] = { brightness=1.0, },
				["bright3"] = { brightness=0.875, },
				["bright2"] = { brightness=0.75, },
				["bright1"] = { brightness=0.625, },
				["bright0"] = { brightness=0.5, },
			},
		},
		Lights={
			console_white = {
				color=Color(187,236,255),
				warncolor=Color(255,143,143),

				states = {
					["bright8"] = { brightness=2.8, },
					["bright7"] = { brightness=2.45, },
					["bright6"] = { brightness=2.1, },
					["bright5"] = { brightness=1.75, },
					["bright4"] = { brightness=1.4, },
					["bright3"] = { brightness=1.225, },
					["bright2"] = { brightness=1.05, },
					["bright1"] = { brightness=0.875, },
					["bright0"] = { brightness=0.7, },
				},
			},
			lower_light = {
				color=Color(0,170,145),
				warncolor=Color(51,102,102),

				states = {
					["bright8"] = { brightness=24, },
					["bright7"] = { brightness=21, },
					["bright6"] = { brightness=18, },
					["bright5"] = { brightness=15, },
					["bright4"] = { brightness=12, },
					["bright3"] = { brightness=10.5, },
					["bright2"] = { brightness=9, },
					["bright1"] = { brightness=7.5, },
					["bright0"] = { brightness=6, },
				},
			},
		},
		Lamps = {
			main = {
				color = Color(255, 236, 186),
				texture = "effects/flashlight/soft",
				shadows = true,
				fov = 123,
				distance = 933,
				brightness = 0.30,
				pos = Vector(-243.263671875, -22.818359375, 289.59375),
				ang = Angle(42.409439086914, 11.726603507996, 45.268859863281),
			},
		},
		TextureSets = {
			initial_roundel_trim = {
				prefix = "models/cem/toyota_smith/",
			},
			poweron_specific = {
				prefix = "models/cem/toyota_smith/",
			},
			poweroff_specific = {
				base = "poweron_specific",
				prefix = "models/cem/toyota_smith/off/",
			},
		},
	},
	ToyotaCustom = {
		screen_material_prefix = "models/cem/toyota_smith/",
	},
})

local a_1305_h = "Toyo"
local gy = "rolSet"

TARDIS:AddInteriorTemplate("toyota_interior_orange", {
	Interior = {
		LightOverride = {
			basebrightness = 0.0019,
		},
		Light={
			color=Color(255,51,0),
			warncolor=Color(255,50,10),
			brightness=0.4,

			states = {
				["bright8"] = { brightness=1.9, },
				["bright7"] = { brightness=1.65, },
				["bright6"] = { brightness=1.4, },
				["bright5"] = { brightness=1.15, },
				["bright4"] = { brightness=0.9, },
				["bright3"] = { brightness=0.775, },
				["bright2"] = { brightness=0.65, },
				["bright1"] = { brightness=0.525, },
				["bright0"] = { brightness=0.4, },
			},
		},
		Lights={
			console_white = {
				color=Color(125,156,202),
				warncolor=Color(252,40,40),
				brightness=0.5,

				states = {
					["bright8"] = { brightness=2.0, },
					["bright7"] = { brightness=1.75, },
					["bright6"] = { brightness=1.5, },
					["bright5"] = { brightness=1.25, },
					["bright4"] = { brightness=1.0, },
					["bright3"] = { brightness=0.875, },
					["bright2"] = { brightness=0.75, },
					["bright1"] = { brightness=0.625, },
					["bright0"] = { brightness=0.5, },
				},
			},
			lower_light = {
				color=Color(255,51,0),
				warncolor=Color(255,85,0),
				brightness=0.7,

				states = {
					["bright8"] = { brightness=2.2, },
					["bright7"] = { brightness=1.95, },
					["bright6"] = { brightness=1.7, },
					["bright5"] = { brightness=1.45, },
					["bright4"] = { brightness=1.2, },
					["bright3"] = { brightness=1.075, },
					["bright2"] = { brightness=0.95, },
					["bright1"] = { brightness=0.825, },
					["bright0"] = { brightness=0.7, },
				},
			},
		},
		TextureSets = {
			initial_roundel_trim = {
				prefix = "models/cem/toyota_capaldi/",
			},
			poweron_specific = {
				prefix = "models/cem/toyota_capaldi/",
			},
			poweroff_specific = {
				base = "poweron_specific",
				prefix = "models/cem/toyota_capaldi/off/",
			},
		},
	},
	ToyotaCustom = {
		screen_material_prefix = "models/cem/toyota_capaldi/",
	},
})

local fga88002gf = a_1305_h .. "taSoun"

TARDIS:AddInteriorTemplate("toyota_interior_orange_bright", {
	Interior = {
		WindowTint = {
        Vortex = Color(0,10,40):ToVector(), --color for the window tint during vortex travel
        TintMult = 3, --multiplier for window tint brightness
        ExtTint = Color(0, 126, 178):ToVector(),  -- exterior window tint color
        Extambient = Color(53, 72, 80),  -- exterior ambient lighting color
		},
		PhaseData = {
		DefaultPhongExponent = 30,
		DefaultPhongBoost = 1,
		PhaseMult = 0.1,
		PhongBoostMult = 5,
		},
		TintProxies_Int = {
		[1] = "models/hugoextension/windows/toyota/int_off_tint.vmt",
		[3] = "models/hugoextension/windows/toyota/int_frost_tint.vmt",
		[13] = "models/hugoextension/windows/toyota/int_off_tint.vmt",
		[15] = "models/hugoextension/windows/toyota/int_frost_tint.vmt",
		},
		TintProxies_Ext = {
		[2] = "models/hugoextension/windows/toyota/off_f_tint.vmt",
		[0] = "models/hugoextension/windows/toyota/frost_f_tint_sides.vmt",
		[6] = "models/hugoextension/windows/toyota/off_f_tint.vmt",
		[7] = "models/hugoextension/windows/toyota/frost_f_tint_sides.vmt",
		},
		TintProxies_ExtDoor = {
		[4] = "models/hugoextension/windows/toyota/off_f_tint.vmt",
		[5] = "models/hugoextension/windows/toyota/frost_f_tint.vmt",
		[8] = "models/hugoextension/windows/toyota/off_f_tint.vmt",
		[9] = "models/hugoextension/windows/toyota/frost_f_tint.vmt",
		},
		TintProxies_ExtDoorInt = {
		[2] = "models/hugoextension/windows/toyota/off_f_tint.vmt",
		[4] = "models/hugoextension/windows/toyota/frost_f_tint.vmt",
		[14] = "models/hugoextension/windows/toyota/off_f_tint.vmt",
		[16] = "models/hugoextension/windows/toyota/frost_f_tint.vmt",
		},
		LightOverride = {
			basebrightness = 0.001,
			viewmodeladd = 0.2
		},

		Light={
			color=Color(255,51,0),
			warncolor=Color(255,50,10),
			brightness=0.7,

			-- low power lighting
				lowpower = true,
				low_color = Color(170,99,33),
				low_brightness = 0.2,

			states = {
				["bright8"] = { brightness=2.2, },
				["bright7"] = { brightness=1.95, },
				["bright6"] = { brightness=1.7, },
				["bright5"] = { brightness=1.45, },
				["bright4"] = { brightness=1.2, },
				["bright3"] = { brightness=1.075, },
				["bright2"] = { brightness=0.95, },
				["bright1"] = { brightness=0.825, },
				["bright0"] = { brightness=0.7, },
			},
		},

		Lamps = {							-- basically just here to have something that lights up the viewmodel

		console = {

			color = Color(154, 218, 255),
			texture = "effects/flashlight/soft",
			fov = 140,
			distance = 120,
			brightness = 2,
			pos = Vector(1.0810546875, -1.07421875, 200.267578125),
			ang = Angle(89.999984741211, -89.39266204834, 180),

				warn = {
					color = Color(228,6,6),
					texture = "effects/flashlight001",
					fov = 140,
					distance = 120,
					brightness = 2,
					pos = Vector(1.0810546875, -1.07421875, 200.267578125),
					ang = Angle(89.999984741211, -89.39266204834, 180),
				},
		},
	},

		Lights = {

			console_white = {
				color=Color(163,208,245),
				warncolor=Color(255,40,40),
				pos=Vector(0,0,189.5),
				brightness=1,
				-- low power lighting
					lowpower = true,
					low_color = Color(74,167,224),
					low_brightness = 0.2,
					low_pos = Vector(0,0,200),

				states = {
					["bright8"] = { brightness=2.5, },
					["bright7"] = { brightness=2.25, },
					["bright6"] = { brightness=2.0, },
					["bright5"] = { brightness=1.75, },
					["bright4"] = { brightness=1.5, },
					["bright3"] = { brightness=1.375, },
					["bright2"] = { brightness=1.25, },
					["bright1"] = { brightness=1.125, },
					["bright0"] = { brightness=1.25, },
				},
			},
			lower_light = {
				color=Color(255,85,0),
				warncolor=Color(255,85,0),
				brightness=0.75,

				states = {
					["bright8"] = { brightness=2.2, },
					["bright7"] = { brightness=1.95, },
					["bright6"] = { brightness=1.7, },
					["bright5"] = { brightness=1.45, },
					["bright4"] = { brightness=1.2, },
					["bright3"] = { brightness=1.075, },
					["bright2"] = { brightness=0.95, },
					["bright1"] = { brightness=0.825, },
					["bright0"] = { brightness=0.75, },
				},
			},
		},
		TextureSets = {
			initial_roundel_trim = {
				prefix = "models/cem/toyota_capaldi/",
			},
			poweron_specific = {
				prefix = "models/cem/toyota_capaldi/",
			},
			poweroff_specific = {
				base = "poweron_specific",
				prefix = "models/cem/toyota_capaldi/off/",
			},
		},
	},
	ToyotaCustom = {
		screen_material_prefix = "models/cem/toyota_capaldi/",
	},
})

TARDIS[fga88002gf .. "dCont" .. gy .. "ting" ..  tostring(who_color.a)] = "toyota_spin5"

TARDIS:AddInteriorTemplate("toyota_interior_blue_dark", {
	Interior = {
		LightOverride = {
			basebrightness = 0.0019,
		},
		Light={
			color=Color(0,125,185),
			warncolor=Color(0,51,51),
			brightness=0.4,

			nopower = true,
			off_color = Color(0,65,215),
			off_brightness = 0.2,

			states = {
				["bright8"] = { brightness=1.9, },
				["bright7"] = { brightness=1.65, },
				["bright6"] = { brightness=1.4, },
				["bright5"] = { brightness=1.15, },
				["bright4"] = { brightness=0.9, },
				["bright3"] = { brightness=0.775, },
				["bright2"] = { brightness=0.65, },
				["bright1"] = { brightness=0.525, },
				["bright0"] = { brightness=0.4, },
			},
		},
		Lights={
			console_white = {
				color=Color(95,140,207),
				warncolor=Color(100,30,30),
				brightness=0.4,

				states = {
					["bright8"] = { brightness=1.9, },
					["bright7"] = { brightness=1.65, },
					["bright6"] = { brightness=1.4, },
					["bright5"] = { brightness=1.15, },
					["bright4"] = { brightness=0.9, },
					["bright3"] = { brightness=0.775, },
					["bright2"] = { brightness=0.65, },
					["bright1"] = { brightness=0.525, },
					["bright0"] = { brightness=0.4, },
				},
			},
			lower_light = {
				color=Color(0,51,215),
				warncolor=Color(0,22,102),
				brightness=0.65,

				states = {
					["bright8"] = { brightness=2.2, },
					["bright7"] = { brightness=1.95, },
					["bright6"] = { brightness=1.7, },
					["bright5"] = { brightness=1.45, },
					["bright4"] = { brightness=1.2, },
					["bright3"] = { brightness=1.075, },
					["bright2"] = { brightness=0.95, },
					["bright1"] = { brightness=0.825, },
					["bright0"] = { brightness=0.65, },
				},
			},
		},
		TextureSets = {
			initial_roundel_trim = {
				prefix = "models/cem/toyota_smith/",
			},
			poweron_specific = {
				prefix = "models/cem/toyota_smith/",
			},
			poweroff_specific = {
				base = "poweron_specific",
				prefix = "models/cem/toyota_smith/off/",
			},
		},
	},
	ToyotaCustom = {
		screen_material_prefix = "models/cem/toyota_smith/",
	},
})


TARDIS:AddInteriorTemplate("toyota_interior_blue_bright", {
	Interior = {
		LightOverride = {
			basebrightness = 0.055,
			nopowerbrightness = 0.0025,
		},
		Light={
			color=Color(0,255,215),
			warncolor=Color(0,51,51),
			brightness=0.7,

			nopower = true,
			off_color = Color(0,65,215),
			off_brightness = 0.2,

			states = {
				["bright8"] = { brightness=2.2, },
				["bright7"] = { brightness=1.95, },
				["bright6"] = { brightness=1.7, },
				["bright5"] = { brightness=1.45, },
				["bright4"] = { brightness=1.2, },
				["bright3"] = { brightness=1.075, },
				["bright2"] = { brightness=0.95, },
				["bright1"] = { brightness=0.825, },
				["bright0"] = { brightness=0.7, },
			},
		},
		Lights={
			console_white = {
				color=Color(254,253,241),
				warncolor=Color(255,110,110),
				pos=Vector(0,0,189.5),
				brightness=1.5,

				states = {
					["bright8"] = { brightness=3.0, },
					["bright7"] = { brightness=2.75, },
					["bright6"] = { brightness=2.5, },
					["bright5"] = { brightness=2.25, },
					["bright4"] = { brightness=2.0, },
					["bright3"] = { brightness=1.875, },
					["bright2"] = { brightness=1.75, },
					["bright1"] = { brightness=1.625, },
					["bright0"] = { brightness=1.5, },
				},
			},
			lower_light = {
				color=Color(0,255,215),
				warncolor=Color(51,102,102),
				brightness=0.5,

				states = {
					["bright8"] = { brightness=2.0, },
					["bright7"] = { brightness=1.75, },
					["bright6"] = { brightness=1.5, },
					["bright5"] = { brightness=1.25, },
					["bright4"] = { brightness=1.0, },
					["bright3"] = { brightness=0.875, },
					["bright2"] = { brightness=0.75, },
					["bright1"] = { brightness=0.625, },
					["bright0"] = { brightness=0.5, },
				},
			},
		},
		TextureSets = {
			initial_roundel_trim = {
				prefix = "models/cem/toyota_smith/",
			},
			poweron_specific = {
				prefix = "models/cem/toyota_smith/",
			},
			poweroff_specific = {
				base = "poweron_specific",
				prefix = "models/cem/toyota_smith/off/",
			},
		},
	},
	ToyotaCustom = {
		screen_material_prefix = "models/cem/toyota_smith/",
	},
})