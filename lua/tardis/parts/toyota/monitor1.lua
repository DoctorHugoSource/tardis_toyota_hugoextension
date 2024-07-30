local PART={}
PART.ID = "toyota_monitor1"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/controls/monitor.mdl"
PART.AutoSetup = true
PART.Collision = false
PART.Animate = true
PART.AnimateSpeed = 3
PART.Sound = "cem/toyota/monitor.wav"

local transparency = 0

function PART:Initialize()
	local on = self:GetData("toyota_monitor1_on")
	if SERVER then
		self:SetCollide(false, true)
	end

	if on then
		self:SetOn(true)
		self.posepos=1
		self:SetPoseParameter("switch", 1)
	end
end

if SERVER then
	function PART:Think()
		local on = self:GetOn()
		if on == self:GetData("toyota_monitor_hitboxes_on") then return end

		local hitbox1 = self.interior:GetPart("toyota_monitor1_hitbox")
		local hitbox2 = self.interior:GetPart("toyota_monitor1_hitbox2")
		local hitbox3 = self.interior:GetPart("toyota_monitor1_hitbox3")

		local hitbox1b = self.interior:GetPart("toyota_monitor1_hitbox_b")
		local hitbox2b = self.interior:GetPart("toyota_monitor1_hitbox2_b")
		local hitbox3b = self.interior:GetPart("toyota_monitor1_hitbox3_b")

		if IsValid(hitbox1) then hitbox1:SetCollide(not on, true) end
		if IsValid(hitbox2) then hitbox2:SetCollide(not on, true) end
		if IsValid(hitbox3) then hitbox3:SetCollide(not on, true) end
		if IsValid(hitbox1b) then hitbox1b:SetCollide(on, true) end
		if IsValid(hitbox2b) then hitbox2b:SetCollide(on, true) end
		if IsValid(hitbox3b) then hitbox3b:SetCollide(on, true) end

		self:SetData("toyota_monitor_hitboxes_on", on)
	end
end

TARDIS:AddPart(PART)




local PART={}
PART.ID = "toyota_monitor1_hitbox"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = false
PART.Sound = "cem/toyota/monitor.wav"
PART.Name = "Toyota TARDIS monitor 1 hitbox"
PART.Model = "models/hunter/plates/plate025.mdl"

function PART:Initialize()
	self:SetColor(Color(255,255,255,transparency))
end

TARDIS:AddPart(PART)

PART.ID = "toyota_monitor1_hitbox_b"
TARDIS:AddPart(PART)
PART.ID = "toyota_monitor1_hitbox2"
TARDIS:AddPart(PART)
PART.ID = "toyota_monitor1_hitbox2_b"
TARDIS:AddPart(PART)

PART.ID = "toyota_monitor1_hitbox3"
PART.Model = "models/hunter/plates/plate.mdl"
TARDIS:AddPart(PART)
PART.ID = "toyota_monitor1_hitbox3_b"
TARDIS:AddPart(PART)
