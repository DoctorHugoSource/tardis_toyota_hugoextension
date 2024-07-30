local YES = {override = true}

TARDIS:AddInterior({
	ID = "toyota_2013",
	Base = "toyota_base",
	Name = "2012-2013 TARDIS",
	Versions = {
		main = { id = "toyota_2013", },
		randomize = false,
		other = {
			{
				id = "toyota_2013",
				name = "2013 (Default)"
			},
			{
				id = "toyota_2012",
				name = "2012 (Snowmen)"
			},
			{
				id = "toyota_2013_notd",
				name = "2013 (Name of the Doctor)"
			},
			{
				id = "toyota_2013_dotd",
				name = "2013 (Day of the Doctor)"
			},
			{
				id = "toyota_2013_totd",
				name = "2013 (Time of the Doctor)"
			},
		},
	},
	Templates = {
		toyota_e_box_2013 = YES,
		toyota_vortex_2013 = YES,

		toyota_interior_blue = YES,
		toyota_monitors_2013 = YES,
		toyota_floor_totd = YES,
		toyota_console_11th_sonic_dispenser = YES,

		toyota_sounds_2013 = YES,
	}
})

TARDIS:AddInterior({
	ID="toyota_2012",
	Base="toyota_base",
	Name = "Toyota - Blue 2012",
	IsVersionOf = "toyota_2013",
	Templates = {
		toyota_e_box_2013 = YES,
		toyota_vortex_2013 = YES,

		toyota_interior_blue = YES,
		toyota_monitors_2012 = YES,
		toyota_floor_s7 = YES,
		toyota_console_snowmen = YES,

		toyota_sounds_2012 = YES,
	}
})

TARDIS:AddInterior({
	ID="toyota_2013_notd",
	Base="toyota_base",
	Name = "Toyota - 2013 NOTD",
	IsVersionOf = "toyota_2013",
	Templates = {
		toyota_e_box_2013 = YES,
		toyota_vortex_2013 = YES,

		toyota_interior_blue = YES,
		toyota_monitors_2013 = YES,
		toyota_floor_s7 = YES,
		toyota_console_s7 = YES,

		toyota_sounds_2013_notd = YES,
	}
})

TARDIS:AddInterior({
	ID="toyota_2013_dotd",
	Base="toyota_base",
	Name = "Toyota - 2013 DOTD",
	IsVersionOf = "toyota_2013",
	Templates = {
		toyota_e_box_2013 = YES,
		toyota_vortex_2013 = YES,

		toyota_interior_blue = YES,
		toyota_monitors_2013 = YES,
		toyota_floor_dotd_step = YES,
		toyota_console_dotd_holder_empty = YES,

		toyota_sounds_2013_dotd = YES,
		toyota_stasis_cube = {
			condition = function(id, ply, ent)
				return file.Exists("models/doctormemes/hurt/stasiscube.mdl", "GAME") and math.random(0,1) == 1
			end,
		},
	}
})

TARDIS:AddInterior({
	ID="toyota_2013_totd",
	Base="toyota_base",
	Name = "Toyota - 2013 TOTD",
	IsVersionOf = "toyota_2013",
	Templates = {
		toyota_f_box_2014 = YES,
		toyota_f_box_no_doorlight = YES,
		toyota_vortex_2013 = YES,

		toyota_interior_green = YES,
		toyota_monitors_2013 = YES,
		toyota_floor_totd = YES,
		toyota_console_11th_sonic_dispenser = {
			override = true,
			condition = function(id, ply, ent)
				return file.Exists("models/doctorwho1200/sonics/11thdoctor/3rdpersonsonic.mdl", "GAME")
			end,
		},

		toyota_totd_green_rotor = YES,

		toyota_sounds_2013_totd = YES,
	}
})
