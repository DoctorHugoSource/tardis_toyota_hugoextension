local PART={}
PART.ID = "toyota_lever2"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/controls/lever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 3

function PART:Initialize()
	local customdata = self.interior.metadata.ToyotaCustom
	if not customdata then return end

	self.SoundOff = customdata.red_lever_sound_off
	self.SoundOn = customdata.red_lever_sound_on
end

TARDIS:AddPart(PART)
