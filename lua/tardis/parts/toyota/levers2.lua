local PART={}
PART.ID = "toyota_levers2"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/controls/levers2.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 4
PART.SoundOn = "cem/toyota/levers.wav"
PART.SoundOff = "Poogie/toyota/controls/levers/lever_4_2013.wav"

function PART:Initialize()
	local customdata = self.interior.metadata.ToyotaCustom
	if not customdata then return end

	self.SoundOn = customdata.lever_sound_2 or self.SoundOn
	self.SoundOff = customdata.lever_sound_2_off or self.SoundOff
end

TARDIS:AddPart(PART)