local PART={}
PART.ID = "toyota_throttle"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/controls/throttle.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.Animate = true
PART.AnimateSpeed = 2.5
PART.Sound = "Poogie/toyota/throttle_TBOSJ.wav"

function PART:Initialize()
	local customdata = self.interior.metadata.ToyotaCustom
	if not customdata then return end

	self.SoundOn = customdata.throttle_sound or self.Sound
	self.SoundOff = customdata.throttle_sound_off or self.SoundOn
end

TARDIS:AddPart(PART)
