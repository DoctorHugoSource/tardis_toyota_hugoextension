local PART={}
PART.ID = "toyota_phone"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/controls/phone.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Sound = "cem/toyota/phone.wav"

if SERVER then
	function PART:Use(ply)
		TARDIS:Control(self.Control, ply)

		local customdata = self.interior.metadata.ToyotaCustom
		if not customdata then return end

		local r = math.random(1, 6)
		if customdata.easter_egg ~= nil and r == 5 then
			self.interior:Timer("toyota_phone_easteregg", 4, function()
				self:EmitSound(customdata.easter_egg)
			end)
		elseif customdata.easter_egg_alt ~= nil and r == 6 then
			self.interior:Timer("toyota_phone_easteregg", 4, function()
				self:EmitSound(customdata.easter_egg_alt)
			end)
		end
	end
end

TARDIS:AddPart(PART)