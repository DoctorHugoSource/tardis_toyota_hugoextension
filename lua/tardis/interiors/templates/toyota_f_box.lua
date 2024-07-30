local EXT_SCALE = 1.05
local EXT_SCALE_VECTOR = Vector(EXT_SCALE, EXT_SCALE, EXT_SCALE)

local T_base = {
	Exterior = {
		Mass=8000,

		Portal={
			pos = Vector(28, -1, 50),
			ang = Angle(0,0,0),
			width = 47,
			height = 86,
			thickness = 35,
			inverted = true,
		},
		Fallback={
			pos=Vector(50,0,10),
			ang=Angle(0,0,0)
		},

		Light={
			enabled=true,
			pos=Vector(0,0,121),
			color=Color(255,255,255),
		},
		Parts={
			door={
				posoffset=Vector(-28,0.9,-50.6),
				angoffset=Angle(0,0,0),
				matrixScale = EXT_SCALE_VECTOR,
			},
		stephelper = {pos = Vector(14,0,-0), ang = Angle(0, 0, 0), },
		stephelper2 = {pos = Vector(11,0,3.25), ang = Angle(0, 0, 0), },

		},
		Sounds = {
			Door = {
				enabled = true,
				open = "drmatt/tardis/door_open.wav",
				close = "drmatt/tardis/door_close.wav",
			},
			Teleport = {
				demat = "hug o/tardis/default+/exterior/demat/reverb+volume_filter/demat_ext_s10+_enhanced.ogg",
				mat = "hug o/tardis/default+/exterior/mat/reverb+volume_filter/mat_ext_s10+_enhanced.ogg",
				mat_short = "hug o/tardis/default+/exterior/mat/reverb+volume_filter/mat_ext_s10+_enhanced_short2.ogg",
				fullflight = "Poogie/toyota/full/full_ext_f.wav",
				demat_fast = "hug o/tardis/default+/exterior/demat/reverb+volume_filter/demat_ext_fast_s10+_enhanced.ogg",
				mat_fast = "hug o/tardis/default+/exterior/mat/reverb+volume_filter/mat_ext_fast_s10+_enhanced_short.ogg",
				mathop_demat = "hug o/tardis/default+/exterior/demat/reverb+volume_filter/demat_ext_mathop_enhanced.ogg",
				mathop_mat = "hug o/tardis/default+/exterior/mat/reverb+volume_filter/mat_ext_mathop_enhanced.ogg",
			},
		},
		Teleport = {

			DematSequenceDelays = {
				[1] = 2.5
			},

			DematFastSequenceDelays = {
				[1] = 0.5
			},

			SequenceSpeed = {
			 Mat = 1.5,
			 Demat = 1.5,
			 },
			PrematDelay = 8.5,
			PrematDelayShort = 1,

			SequenceSpeedFast = 1.5,
			PrematSequenceDelayFast = 0.1,

			SequenceSpeedVeryFast = 2.8,
			PrematSequenceDelayVeryFast = 0.1,

			SequenceSpeedWarning = 1.5,
			SequenceSpeedWarnFast = 1.5,

			SequenceSpeedHads = 1.8,

			DematSequence = {
				192,
				250,
				129,
				200,
				85,
				160,
				17,
				90,
				0
			},
			MatSequence = {
				120,
				30,
				140,
				55,
				150,
				70,
				160,
				82,
				200,
			},
			DematSequenceFast = {
				192,
				250,
				129,
				200,
				85,
				160,
				0
			},
			MatSequenceFast = {
				150,
				70,
				160,
				82,
				200,
				255,		-- these have to be here because the base will 'overwrite' any extension's sequence that is shorter than the base
				255,
				255,
				255,
				255,
				255,
				255,
			},
			DematSequenceVeryFast = {
				255,
				0
			},
			MatSequenceVeryFast = {
				0,
				255
			},
			HadsDematSequence = {
				100,
				200,
				0
			},
	},
		CustomHooks = {
			exterior_scale = {
				{
					["PostInitialize"] = true,
					["ExteriorChanged"] = true,
				},
				function(self)
					if CLIENT then
						local matrix = Matrix()
						matrix:Scale(EXT_SCALE_VECTOR)
						self:EnableMatrix("RenderMultiply", matrix)
					end
				end,
			},
		},
	},
	Interior = {
		Portal={
			pos=Vector(-333.5,0.9,137.8),
			ang=Angle(0,0,0),
			width=50,
			height=110,
			exit_point_offset = {
			pos = Vector(0,0,-2),
			ang = Angle(0, 0, 0),
            },
			thickness = 7,
		},
		Parts = {
			door = {
				posoffset=Vector(28,-0.9,-52.61),
				angoffset=Angle(0,180,0),
				matrixScale = EXT_SCALE_VECTOR,
			},
			toyota_doorframe = false,
		},
		TextureSets = {
			doorframe_on = {
				prefix = "models/TARDISman/tardisman550/",
				{ "door", 10, "light_f" },
				{ "door", 12, "topglass_f_int" },
				{ "door", 11, "topsign_f_int" },
				{ "door", 5, "metal_f" },
				{ "door", 0, "frames_f_int" },
			},
			doorframe_off = {
				prefix = "models/TARDISman/tardisman550/",
				{ "door", 10, "light_f_off" },
				{ "door", 12, "topglass_f_off" },
				{ "door", 11, "topsign_f_int_off" },
				{ "door", 5, "metal_f_off" },
				{ "door", 0, "frames_f_int_off" },
			},
		},
	},
}

local T_2014 = {
	Exterior = {
		Model="models/TARDISman/tardisman550/rewrite/exterior_s8_f.mdl",
		Parts={
			door={ model="models/TARDISman/tardisman550/rewrite/doors_exterior_s8_f.mdl", },
		},
	},
	Interior = {
		Parts = {
			door = { model="models/TARDISman/tardisman550/rewrite/doors_interior_s8_f.mdl", },
		},
	},
}

local T_2017 = {
	Exterior = {
		Model="models/TARDISman/tardisman550/rewrite/exterior_f.mdl",
		Parts={
			door={ model="models/TARDISman/tardisman550/rewrite/doors_exterior_f.mdl", },
		},
	},
	Interior = {
		Parts = {
			door = { model="models/TARDISman/tardisman550/rewrite/doors_interior_f.mdl", },
		},
	},
}

T_2014 = table.Merge(T_2014, T_base)
T_2017 = table.Merge(T_2017, T_base)

TARDIS:AddInteriorTemplate("toyota_f_box_2014", T_2014)

TARDIS:AddInteriorTemplate("toyota_f_box_2017", T_2017)

TARDIS:AddInteriorTemplate("toyota_f_box_no_doorlight", {
	Interior = {
		TextureSets = {
			doorframe_on = {
				[1] = { [3] = "light_f_off", },
			},
		},
	},
})

if TARDIS.ExteriorsMetadata then
	local E = TARDIS:CopyTable(T_2014.Exterior)
	E.ID = "toyota_F_2013"
	E.Base = "base"
	E.Name = "F Police Box (2014)"
	E.Category = "Exteriors.Categories.PoliceBoxes"
	TARDIS:AddExterior(E)

	local E = TARDIS:CopyTable(T_2017.Exterior)
	E.ID = "toyota_F_2017"
	E.Base = "base"
	E.Name = "F Police Box (2017)"
	E.Category = "Exteriors.Categories.PoliceBoxes"
	TARDIS:AddExterior(E)
end
