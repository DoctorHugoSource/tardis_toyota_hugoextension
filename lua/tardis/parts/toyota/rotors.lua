local PART={}
PART.ID = "toyota_rotors"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/rotors.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ClientThinkOverride = true

if CLIENT then
	function PART:Initialize()
		self.posepos=0
		self.speed=0.075
	end

	function PART:Think()
		local ext=self.exterior

		local power = ext:GetData("power-state")
		if not power then return end

		local teleport = ext:GetData("teleport")
		local flight = ext:GetData("flight")
		local vortex = ext:GetData("vortex")

		if flight or teleport or vortex then
			local target=1
			self.posepos=math.Approach(self.posepos,target,FrameTime()*self.speed)
			if self.posepos==target then
				self.posepos=0
			end
			self:SetPoseParameter("switch",self.posepos)
			self:InvalidateBoneCache()
		end
	end
end

TARDIS:AddPart(PART)