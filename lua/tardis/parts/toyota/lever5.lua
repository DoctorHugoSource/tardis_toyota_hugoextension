local PART={}
PART.ID = "toyota_lever5"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/controls/lever5.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 8
PART.Sound = "cem/toyota/levers.wav"

    if SERVER then
	function PART:Use(activator)

		if self.exterior:GetBodygroup(0) == 0 then

		   self.exterior:SetBodygroup(0, 1)
		else
		   self.exterior:SetBodygroup(0, 0)
		end
 	end
end




TARDIS:AddPart(PART)
