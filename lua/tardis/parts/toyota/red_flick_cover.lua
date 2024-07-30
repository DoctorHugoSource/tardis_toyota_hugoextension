local PART={}
PART.ID = "toyota_red_flick_cover"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/controls/red_flick_cover.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 4
PART.Sound = "cem/toyota/levers.wav"

if SERVER then
	function PART:Use(ply)
		if not self:GetOn() then
			self:SetCollide(false, true)
		end
	end
end

TARDIS:AddPart(PART)