local T_base = {
	Exterior = {
		Mass=2900,
		Portal={
			pos=Vector(27.8,0,52.33),
			ang=Angle(0,0,0),
			width=50,
			height=92,
			thickness = 42,
			inverted = true,
		},
		Fallback={
			pos=Vector(55,0,5),
			ang=Angle(0,0,0)
		},
		Light={
			enabled=true,
			pos=Vector(0,0,122),
			color=Color(255,228,91)
		},
		Parts={
			door={
				posoffset=Vector(-1,0,-52.8),
				angoffset=Angle(0,0,0)
			},
		},
		Sounds={
			Door={
				enabled=true,
				open="Poogie/toyota/others/dooropened.wav",
				close="Poogie/toyota/others/doorclosed.wav",
			},
			Teleport={
				demat="Poogie/toyota/demat/dematext_E.wav",
				mat="Poogie/toyota/mat/matext_E_box.wav",
				fullflight = "Poogie/toyota/full/full_ext_e.wav",
				mat_fast = "Poogie/toyota/mat/mat_fast_E_box.wav",
			},
		},
		Teleport={
			SequenceSpeed=0.62,
			SequenceSpeedFast=1.1,
		},
	},
	Interior = {
		Portal={
			pos=Vector(-334,0,139.8),
			ang=Angle(0,0,0),
			width=50,
			height=92,
			thickness = -5.5,
		},
		Parts = {
			door = {
				posoffset=Vector(0.8,0,-52.8),
				angoffset=Angle(0,180,0),
			},
			toyota_doorframe = {
				pos = Vector(3.5, 0, 5.9),
				ang = Angle(0,90,0),
				matrixScale = Vector(0.99, 1, 1.02),
			},
		},
		TextureSets = {
			doorframe_on = {
				prefix = "models/doctorwho1200/toyota/2013/",
				{ "door", 6, "lock" },
			},
			doorframe_off = {
				prefix = "models/doctorwho1200/toyota/2013/",
				{ "door", 6, "lock_off" },
			},
		},
	},
}

local T_2013 = {
	Exterior = {
		Model="models/doctorwho1200/toyota/exterior_2013.mdl",
		Parts={
			door={ model="models/doctorwho1200/toyota/doorsext_2013.mdl", },
		},
	},
	Interior = {
		Parts = {
			door = { model="models/doctorwho1200/toyota/doors_2013.mdl",},
		},
	},
}

local T_2017 = {
	Exterior = {
		Model="models/doctorwho1200/toyota/exterior_2017.mdl",
		Parts={
			door={ model="models/doctorwho1200/toyota/doorsext_2017.mdl",},
		},
		Sounds={
			Teleport={
				demat = "Poogie/toyota/demat/dematext_F.wav",
				mat = "Poogie/toyota/mat/matext_F_box.wav",
			},
		},
	},
	Interior = {
		Parts = {
			door = { model="models/doctorwho1200/toyota/doors_2017.mdl",},
		},
	},
}

T_2013 = table.Merge(T_2013, T_base)
T_2017 = table.Merge(T_2017, T_base)

TARDIS:AddInteriorTemplate("toyota_e_box_2013", T_2013)
TARDIS:AddInteriorTemplate("toyota_e_box_2017", T_2017)

if TARDIS.ExteriorsMetadata then
	local E = TARDIS:CopyTable(T_2013.Exterior)
	E.ID = "toyota_E_2013"
	E.Base = "base"
	E.Name = "E Police Box (2013)"
	E.Category = "Exteriors.Categories.PoliceBoxes"
	TARDIS:AddExterior(E)

	local E = TARDIS:CopyTable(T_2017.Exterior)
	E.ID = "toyota_E_2017"
	E.Base = "base"
	E.Name = "E Police Box (2017)"
	E.Category = "Exteriors.Categories.PoliceBoxes"
	TARDIS:AddExterior(E)
end
