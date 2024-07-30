local PART={}
PART.ID = "toyota_rotor_piston"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/rotor_piston.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.UseTransparencyFix = true
PART.ClientThinkOverride = true

if CLIENT then

	function PART:Initialize()
		self.timerotor={}
		self.timerotor.pos=0
		self.timerotor.mode=1
	end

	function PART:Think()

		local exterior=self.exterior

		local flight = exterior:GetData("flight")
		local teleport = exterior:GetData("teleport")
		local vortex = exterior:GetData("vortex")
		local float = exterior:GetData("float")
		local active = (flight or teleport or vortex)

		if active or self.timerotor.pos > 0 then
			if self.timerotor.pos == 0 then
				self.timerotor.pos = 1
			elseif active and self.timerotor.pos == 1 then
				self.timerotor.pos=0
			end

			self.timerotor.pos=math.Approach( self.timerotor.pos, self.timerotor.mode, FrameTime()*0.35 )
			self:SetPoseParameter( "switch", self.timerotor.pos )
		end
	end
end

TARDIS:AddPart(PART)