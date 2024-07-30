local YES = {override = true}

TARDIS:AddInterior({
	ID = "toyota_2015",
	Base = "toyota_base",
	Name = "2014-2017 TARDIS",
	Versions = {
		main = { id = "toyota_2015", },
		randomize = true,
		randomize_custom = false,
		other = {
			{
				id = "toyota_2014",
				name = "2014 (S8 pt.1)"
			},
			{
				id = "toyota_2014_2",
				name = "2014 (S8 pt.2)"
			},
			{
				id = "toyota_2015",
				name = "2015 (S9)"
			},
			{
				id = "toyota_2017_F",
				name = "2017 (S10, F box)"
			},
			{
				id = "toyota_2017_E",
				name = "2017 (S10, E box)"
			},
		},
	},

	Templates = {
		toyota_f_box_2014 = YES,
		toyota_vortex_2014 = YES,

		toyota_interior_orange = YES,
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

TARDIS:AddInterior({
	ID = "toyota_2014",
	Base = "toyota_base",
	Name = "Toyota - Orange 2014",
	IsVersionOf = "toyota_2015",
	Templates = {
		toyota_f_box_2014 = YES,
		toyota_vortex_2014 = YES,

		toyota_interior_orange = YES,
		toyota_monitors_2013 = YES,
		toyota_floor_2014 = YES,
		toyota_console_11th_sonic_dispenser = {
			override = true,
			condition = function(id, ply, ent)
				return file.Exists("models/doctorwho1200/sonics/11thdoctor/3rdpersonsonic.mdl", "GAME")
			end,
		},

		toyota_bookshelves = YES,
		toyota_sounds_2014 = YES,
	},
})

TARDIS:AddInterior({
	ID = "toyota_2014_2",
	Base = "toyota_base",
	Name = "Toyota - Alternative 2014",
	IsVersionOf = "toyota_2015",
	Templates = {
		toyota_f_box_2014 = YES,
		toyota_vortex_2014 = YES,

		toyota_interior_orange_bright = YES,
		toyota_monitors_2013 = YES,
		toyota_floor_2014 = YES,
		toyota_console_11th_sonic_dispenser = {
			override = true,
			condition = function(id, ply, ent)
				return file.Exists("models/doctorwho1200/sonics/11thdoctor/3rdpersonsonic.mdl", "GAME")
			end,
		},

		toyota_bookshelves = YES,
		toyota_sounds_2014_2 = YES,
	},
})

TARDIS:AddInterior({
	ID="toyota_2017_E",
	Base="toyota_base",
	Name = "Toyota - Orange 2017 (E box)",
	IsVersionOf = "toyota_2015",
	Templates = {
		toyota_e_box_2017 = YES,
		toyota_vortex_2014 = YES,

		toyota_interior_orange_bright = YES,
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
		toyota_sounds_2017_E = YES,
	},
})

TARDIS:AddInterior({
	ID="toyota_2017_F",
	Base="toyota_base",
	Name = "Toyota - Orange 2017 (F box)",
	IsVersionOf = "toyota_2015",
	Templates = {
		toyota_f_box_2017 = YES,
		toyota_vortex_2014 = YES,

		toyota_interior_orange_bright = YES,
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
		toyota_sounds_2017_F = YES,
	},
})
