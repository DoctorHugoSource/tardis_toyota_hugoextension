local T = {
	ID = "toyota_custom",
	Name = "2017-2012 Custom Toyota",
	Base = "toyota_base",

	Versions = {
		main = { id = "toyota_custom", },
		randomize = false,
		other = {
			{
				id = "toyota_custom",
				name = "Default (customizable by settings)"
			},
			{
				id = "toyota_custom_parar",
				name = "Dark blue custom"
			},
			{
				id = "toyota_2012_orange",
				name = "2012 Orange"
			},
			{
				id = "toyota_2015_blue",
				name = "2015 Blue"
			},
		},
	},
}

local function select_s(setting, id, ply, ent)
	local st = TARDIS:GetCustomSetting(id, setting, ply)

	if st ~= "random" then
		return st
	end

	local saved = ent:GetData("toyota_custom_setting_" .. setting)
	if saved then
		return saved
	end

	local st_data = T.CustomSettings[setting]

	if st_data.value_type == "list" then
		local values = table.GetKeys(st_data.options)

		while st == "random" do
			st = values[math.random(#values)]
		end
	end

	ent:SetData("toyota_custom_setting_" .. setting, st)
	return st
end

local function is_s(setting, value, id, ply, ent)
	return (value == select_s(setting, id, ply, ent))
end

T.CustomSettings = {
	floor_type = {
		text = "Floor",
		value_type = "list",
		value = "random",
		options = {
			["S7"]		= "2013 (Series 7)",
			["dotd"]	= "2013 (Day of the Doctor)",
			["totd"]	= "2013 (Time of the Doctor)",
			["S8+"]		= "2014+",
			["random"] = "Random",
		}
	},
	interior_color = {
		text = "Interior color",
		value_type = "list",
		value = "blue_d",
		options = {
			["blue"] = "Blue (2012-2013)",
			["green"] = "Green (2013, Time of the Doctor)",
			["orange"] = "Orange (2014-2015)",
			["orange_b"] = "Orange bright (2017)",
			["blue_d"] = "Blue dark (Custom)",
			["blue_b"] = "Blue bright (Custom)",
			["random"] = "Random",
		}
	},
	doors_type = {
		text = "Doors & exterior type",
		value_type = "list",
		value = "CL_DOORS",
		options = {
			["CL_DOORS"] = "Classic doors",
			["2013_E"] = "E box (2012-2013)",
			["2017_E"] = "E box (2017)",
			["2014_F"] = "F box (2013-2015)",
			["2017_F"] = "F box (2017)",
			["random"] = "Random",
		},
	},
	vortex = {
		text = "Vortex",
		value_type = "list",
		value = "random",
		options = {
			["2013"] = "2013",
			["2014"] = "2014",
			["2013B"] = "2013B",
			["random"] = "Random",
		}
	},
	console = {
		text = "Console",
		value_type = "list",
		value = "random",
		options = {
			["snowmen"] = "Snowmen",
			["s7"] = "Series 7",
			["dotd"] = "DotD (with stasis cube)",
			["dotd_empty"] = "DotD (no stasis cube)",
			["11th"] = "S8 & TotD (11th sonic dispenser)",
			["12th"] = "S9+ (12th sonic dispenser)",
			["custom"] = "S9+ (custom sonic dispenser)",
			["random"] = "Random",
		}
	},
	monitors = {
		text = "Monitors",
		value_type = "list",
		value = "random",
		options = {
			["2012"] = "2012",
			["2013"] = "2013-2014",
			["2015"] = "2015-2017",
			["random"] = "Random",
		}
	},

	sounds = {
		text = "Sounds",
		value_type = "list",
		value = "custom",
		options = {
			["2012"] = "2012 (Snowmen)",
			["2013"] = "2013 (Default)",
			["2013_notd"] = "2013 (NOTD)",
			["2013_dotd"] = "2013 (DOTD)",
			["2013_totd"] = "2013 (TOTD)",
			["2014"] = "2014 pt.1 (Episode 1 - 6)",
			["2014 B"] = "2014 pt.2 (Episode 7 - 13)",
			["2015"] = "2015",
			["2017E"] = "2017A (used with E exterior)",
			["2017F"] = "2017B (used with F exterior)",
			["custom"] = "Custom combination",
			["random"] = "Random",
		}
	},
	bookshelves = {
		text = "Bookshelves",
		category = "Details",
		value_type = "list",
		value = "random",
		options = {
			[true] = "Enabled",
			[false] = "Disabled",
			["random"] = "Random",
		},
	},
	phone_port = {
		text = "Phone port",
		category = "Details",
		value_type = "list",
		value = "random",
		options = {
			[true] = "Enabled",
			[false] = "Disabled",
			["random"] = "Random",
		},
	},
	lower_roundels = {
		text = "Lower roundels",
		category = "Details",
		value_type = "list",
		value = "random",
		options = {
			[true] = "Enabled",
			[false] = "Disabled",
			["random"] = "Random",
		},
	},
}

local EXISTS_SONIC_11 = file.Exists("models/doctorwho1200/sonics/11thdoctor/3rdpersonsonic.mdl", "GAME")
local EXISTS_SONIC_12 = file.Exists("models/doctorwho1200/sonics/12thdoctor/3rdpersonsonic.mdl", "GAME")
local EXISTS_SONIC_CUSTOM = file.Exists("models/doctormemes/sonics/customsmithsonic/w_customsmithsonic.mdl", "GAME")
local EXISTS_STASIS_CUBE = file.Exists("models/doctormemes/hurt/stasiscube.mdl", "GAME")

T.Templates = {
--------------------------------------------------------------------------------
-- Color
--------------------------------------------------------------------------------
	toyota_interior_blue = {
		override = true,
		condition = function(id, ply, ent) return is_s("interior_color", "blue", id, ply, ent) end,
	},
	toyota_interior_green = {
		override = true,
		condition = function(id, ply, ent) return is_s("interior_color", "green", id, ply, ent) end,
	},
	toyota_totd_green_rotor = {
		override = true,
		condition = function(id, ply, ent) return is_s("interior_color", "green", id, ply, ent) end,
	},
	toyota_interior_orange = {
		override = true,
		condition = function(id, ply, ent) return is_s("interior_color", "orange", id, ply, ent) end,
	},
	toyota_interior_orange_bright = {
		override = true,
		condition = function(id, ply, ent) return is_s("interior_color", "orange_b", id, ply, ent) end,
	},
	toyota_interior_blue_dark = {
		override = true,
		condition = function(id, ply, ent) return is_s("interior_color", "blue_d", id, ply, ent) end,
	},
	toyota_interior_blue_bright = {
		override = true,
		condition = function(id, ply, ent) return is_s("interior_color", "blue_b", id, ply, ent) end,
	},

--------------------------------------------------------------------------------
-- Floor type
--------------------------------------------------------------------------------

	toyota_floor_s7 = {
		override = true,
		condition = function(id, ply, ent) return is_s("floor_type", "S7", id, ply, ent) end,
	},
	toyota_floor_totd = {
		override = true,
		condition = function(id, ply, ent) return is_s("floor_type", "totd", id, ply, ent) end,
	},
	toyota_floor_dotd_step = {
		override = true,
		condition = function(id, ply, ent) return is_s("floor_type", "dotd", id, ply, ent) end,
	},
	toyota_floor_2014 = {
		override = true,
		condition = function(id, ply, ent) return is_s("floor_type", "S8+", id, ply, ent) end,
	},

--------------------------------------------------------------------------------
-- Monitors
--------------------------------------------------------------------------------
	toyota_monitors_2012 = {
		override = true,
		condition = function(id, ply, ent) return is_s("monitors", "2012", id, ply, ent) end,
	},
	toyota_monitors_2013 = {
		override = true,
		condition = function(id, ply, ent) return is_s("monitors", "2013", id, ply, ent) end,
	},
	toyota_monitors_2015 = {
		override = true,
		condition = function(id, ply, ent) return is_s("monitors", "2015", id, ply, ent) end,
	},

--------------------------------------------------------------------------------
-- Vortex
--------------------------------------------------------------------------------
	toyota_vortex_2013 = {
		override = true,
		condition = function(id, ply, ent) return is_s("vortex", "2013", id, ply, ent) end,
	},
	toyota_vortex_2014 = {
		override = true,
		condition = function(id, ply, ent) return is_s("vortex", "2014", id, ply, ent) end,
	},
	toyota_vortex_2013B = {
		override = true,
		condition = function(id, ply, ent) return is_s("vortex", "2013B", id, ply, ent) end,
	},


--------------------------------------------------------------------------------
-- Console
--------------------------------------------------------------------------------
	toyota_console_snowmen = {
		override = true,
		condition = function(id, ply, ent) return is_s("console", "snowmen", id, ply, ent) end,
	},
	toyota_console_s7 = {
		override = true,
		condition = function(id, ply, ent) return is_s("console", "s7", id, ply, ent) end,
	},
	toyota_console_dotd_holder_empty = {
		override = true,
		condition = function(id, ply, ent)
			local selected = select_s("console", id, ply, ent)
			return (selected == "dotd" or selected == "dotd_empty")
		end,
	},
	toyota_console_11th_sonic_dispenser = {
		override = true,
		condition = function(id, ply, ent) return is_s("console", "11th", id, ply, ent) and EXISTS_SONIC_11 end,
	},
	toyota_console_12th_sonic_dispenser = {
		override = true,
		condition = function(id, ply, ent) return is_s("console", "12th", id, ply, ent) and EXISTS_SONIC_12 end,
	},
	toyota_console_custom_sonic_dispenser = {
		override = true,
		condition = function(id, ply, ent) return is_s("console", "custom", id, ply, ent) and EXISTS_SONIC_CUSTOM end,
	},

--------------------------------------------------------------------------------
-- Exterior model type
--------------------------------------------------------------------------------
	exterior_ttcapsule_type50 = {
		override = true,
		condition = function(id, ply, ent) return is_s("doors_type", "CL_DOORS", id, ply, ent) end,
	},

	toyota_classic_doors = {
		override = true,
		condition = function(id, ply, ent) return is_s("doors_type", "CL_DOORS", id, ply, ent) end,
	},

--------------------------------------------------------------------------------
-- Exterior model textures
--------------------------------------------------------------------------------
	toyota_e_box_2013 = {
		override = true,
		condition = function(id, ply, ent) return is_s("doors_type", "2013_E", id, ply, ent) end,
	},
	toyota_f_box_2014 = {
		override = true,
		condition = function(id, ply, ent) return is_s("doors_type", "2014_F", id, ply, ent) end,
	},
	toyota_e_box_2017 = {
		override = true,
		condition = function(id, ply, ent) return is_s("doors_type", "2017_E", id, ply, ent) end,
	},
	toyota_f_box_2017 = {
		override = true,
		condition = function(id, ply, ent) return is_s("doors_type", "2017_F", id, ply, ent) end,
	},

--------------------------------------------------------------------------------
-- Separate features
--------------------------------------------------------------------------------
	toyota_bookshelves = {
		override = true,
		condition = function(id, ply, ent) return select_s("bookshelves", id, ply, ent) end,
	},

	toyota_phone_port = {
		override = true,
		condition = function(id, ply, ent) return select_s("phone_port", id, ply, ent) end,
	},

	toyota_lower_roundels = {
		override = true,
		condition = function(id, ply, ent) return select_s("lower_roundels", id, ply, ent) end,
	},

	toyota_stasis_cube = {
		override = true,
		condition = function(id, ply, ent) return is_s("console", "dotd", id, ply, ent) and EXISTS_STASIS_CUBE end,
	},
----------------------------
--Demat and Mat sounds--
----------------------------
	toyota_sounds_2012 = {
		override = true,
		condition = function(id, ply, ent) return is_s("sounds", "2012", id, ply, ent) end,
	},

	toyota_sounds_2013 = {
		override = true,
		condition = function(id, ply, ent) return is_s("sounds", "2013", id, ply, ent) end,
	},

	toyota_sounds_2013_notd = {
		override = true,
		condition = function(id, ply, ent) return is_s("sounds", "2013_notd", id, ply, ent) end,
	},

	toyota_sounds_2013_dotd = {
		override = true,
		condition = function(id, ply, ent) return is_s("sounds", "2013_dotd", id, ply, ent) end,
	},

	toyota_sounds_2013_totd = {
		override = true,
		condition = function(id, ply, ent) return is_s("sounds", "2013_totd", id, ply, ent) end,
	},

	toyota_sounds_2014 = {
		override = true,
		condition = function(id, ply, ent) return is_s("sounds", "2014", id, ply, ent) end,
	},

	toyota_sounds_2014_2 = {
		override = true,
		condition = function(id, ply, ent)
			local selected = select_s("sounds", id, ply, ent)
			return (selected == "2014 B")
		end,
	},

	toyota_sounds_2015 = {
		override = true,
		condition = function(id, ply, ent) return is_s("sounds", "2015", id, ply, ent) end,
	},

	toyota_sounds_2017_F = {
		override = true,
		condition = function(id, ply, ent) return is_s("sounds", "2017F", id, ply, ent) end,
	},

	toyota_sounds_2017_E = {
		override = true,
		condition = function(id, ply, ent) return is_s("sounds", "2017E", id, ply, ent) end,
	},

	toyota_sounds_custom = {
		override = true,
		condition = function(id, ply, ent) return is_s("sounds", "custom", id, ply, ent) end,
	},
}

TARDIS:AddInterior(T)


local YES = {override = true}

TARDIS:AddInterior({
	ID = "toyota_custom_parar",
	IsVersionOf = "toyota_custom",
	Base = "toyota_base",
	Templates = {
		--toyota_interior_blue = YES,
		--toyota_interior_green = YES,
		--toyota_totd_green_rotor = YES,
		--toyota_interior_orange = YES,
		--toyota_interior_orange_bright = YES,
		toyota_interior_blue_dark = YES,
		--toyota_interior_blue_bright = YES,

		--toyota_floor_s7 = YES,
		--toyota_floor_totd = YES,
		--toyota_floor_dotd_step = YES,
		toyota_floor_2014 = YES,

		--toyota_monitors_2012 = YES,
		--toyota_monitors_2013 = YES,
		toyota_monitors_2015 = YES,

		--toyota_vortex_2013 = YES,
		--toyota_vortex_2014 = YES,
		toyota_vortex_2013B = YES,

		--toyota_console_snowmen = YES,
		--toyota_console_s7 = YES,
		--toyota_console_dotd_holder_empty = YES,
		--toyota_console_11th_sonic_dispenser = YES,
		--toyota_console_12th_sonic_dispenser = YES,
		toyota_console_custom_sonic_dispenser = EXISTS_SONIC_CUSTOM and YES,

		exterior_ttcapsule_type50 = YES,
		toyota_classic_doors = YES,

		--toyota_e_box_2013 = YES,
		--toyota_f_box_2014 = YES,
		--toyota_e_box_2017 = YES,
		--toyota_f_box_2017 = YES,

		--toyota_bookshelves = YES,
		toyota_phone_port = YES,
		toyota_lower_roundels = YES,
		--toyota_stasis_cube = YES,

		--toyota_sounds_2012 = YES,
		--toyota_sounds_2013 = YES,
		--toyota_sounds_2013_notd = YES,
		--toyota_sounds_2013_dotd = YES,
		--toyota_sounds_2013_totd = YES,
		--toyota_sounds_2014 = YES,
		--toyota_sounds_2015 = YES,
		--toyota_sounds_2017_F = YES,
		--toyota_sounds_2017_E = YES,
		toyota_sounds_custom = YES,
	},
})

TARDIS:AddInterior({
	ID="toyota_2012_orange",
	Base="toyota_base",
	Name = "2012 Orange Custom TARDIS",
	IsVersionOf = "toyota_custom",
	Templates = {
		toyota_e_box_2013 = YES,
		toyota_vortex_2013 = YES,

		toyota_interior_orange = YES,
		toyota_monitors_2012 = YES,
		toyota_floor_s7 = YES,
		toyota_console_snowmen = YES,

		toyota_sounds_2012 = YES,
	}
})

TARDIS:AddInterior({
	ID="toyota_2015_blue",
	Base="toyota_base",
	Name = "2015 Blue Custom TARDIS",
	IsVersionOf = "toyota_custom",
	Templates = {
		toyota_f_box_2014 = YES,
		toyota_vortex_2014 = YES,

		toyota_interior_blue = YES,
		toyota_monitors_2015 = YES,
		toyota_floor_2014 = YES,
		toyota_console_12th_sonic_dispenser = {
			override = true,
			condition = function(id, ply, ent)
				return file.Exists("models/doctorwho1200/sonics/12thdoctor/3rdpersonsonic.mdl", "GAME")
			end,
		},

		toyota_bookshelves = YES,
		toyota_phone_port = YES,
		toyota_lower_roundels = YES,
		toyota_sounds_2015 = YES,
	}
})

