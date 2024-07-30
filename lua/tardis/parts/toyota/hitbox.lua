local PART={}
PART.ID = "toyota_hitbox1"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = false
PART.Name = "Toyota TARDIS hitbox"
PART.Sound = "cem/toyota/buttons.wav"
PART.Model = "models/hunter/plates/plate.mdl"

function PART:Initialize()
	self:SetColor(Color(255,255,255,0))
	self:SetCollisionGroup(COLLISION_GROUP_WORLD)
end

TARDIS:AddPart(PART)

PART.ID = "toyota_hitbox2"
PART.Sound = "cem/toyota/switch.wav"
TARDIS:AddPart(PART)