local PART={}
PART.ID = "toyota_intdoors"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/intdoors.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 1
PART.BypassIsomorphic = true

PART.Sound = "cem/toyota/intdoors.wav"
PART.SoundPos = Vector(67.234, -380.55, 85.69)

if SERVER then
	function PART:Use()
		self:SetCollide(self:GetOn())
	end

	function PART:Toggle( bEnable, ply )
		self:SetOn(bEnable)
		self:SetCollide(not bEnable)
		sound.Play(self.Sound, self:LocalToWorld(self.SoundPos))
	end
end

TARDIS:AddPart(PART)