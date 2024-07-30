local PART={}
PART.ID = "toyota_handbrake"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/controls/handbrake.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 1.85

function PART:Initialize()
	local customdata = self.interior.metadata.ToyotaCustom
	if not customdata then return end

	self.AnimateSpeed = customdata.handbrake_speed or self.AnimateSpeed
	self.SoundOn = customdata.handbrake_sound_on
	self.SoundOff = customdata.handbrake_sound_off
	end

TARDIS:AddPart(PART)
