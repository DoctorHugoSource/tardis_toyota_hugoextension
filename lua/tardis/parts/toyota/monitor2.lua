local PART={}
PART.ID = "toyota_monitor2"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/controls/monitor.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 3
PART.Sound = "cem/toyota/monitor.wav"

function PART:Initialize()
	if SERVER then
		self:SetCollide(false, false)
		self:SetData("toyota_monitor2_on", math.random(0, 1), true)
	end

	if self:GetData("toyota_monitor2_on") == 1 then
		self:SetOn(true)
		self.posepos=1
		self:SetPoseParameter("switch", 1)
	end
end

TARDIS:AddPart(PART)