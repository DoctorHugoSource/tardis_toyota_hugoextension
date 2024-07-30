local PART={}
PART.ID = "toyota_red_flick_switch"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/controls/red_flick_switch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 4
PART.Sound = "cem/toyota/switch.wav"

if SERVER then
	function PART:Use(ply)
		local cover = self.interior:GetPart("toyota_red_flick_cover")
		if not IsValid(cover) then return end

		if cover:GetOn() then
			TARDIS:Control(self.Control, ply)
			self.interior:Timer("toyota_redflickswitch_cover", 0.3, function()
				cover:SetOn(false)
				cover:SetPoseParameter("switch", 0)
				cover:SetCollide(true)
			end)
		end
	end
end

TARDIS:AddPart(PART)