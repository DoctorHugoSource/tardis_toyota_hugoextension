local PART={}
PART.ID = "toyota_toggles"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/controls/toggles.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 2
PART.SoundOn = "Poogie/toyota/controls/toggles/toggles_2012_on.wav"
PART.SoundOff = "Poogie/toyota/controls/toggles/toggles_2012_off.wav"


function PART:Initialize()
	local customdata = self.interior.metadata.ToyotaCustom
	if not customdata then return end

	self.SoundOn = customdata.toggles_sound_on or self.SoundOn
	self.SoundOff = customdata.toggles_sound_off or self.SoundOff
end

TARDIS:AddPart(PART)