local PART={}
PART.ID = "toyota_keyboard"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/controls/keyboard.mdl"
PART.AutoSetup = true
PART.Collision = true

function PART:Initialize()
	local customdata = self.interior.metadata.ToyotaCustom
	if not customdata then return end

	local default = "cem/toyota/keyboard.wav"
	self.Sound = customdata.keyboard_sound or default
	self.delay = customdata.keyboard_delay or 1.2
end

if SERVER then
	function PART:Use(ply)
		self.interior:Timer("toyota_keyboard_delay", self.delay, function()
			TARDIS:Control(self.Control, ply)
		end)

		local customdata = self.interior.metadata.ToyotaCustom
		if not customdata then return end

		if customdata.easter_egg_keyboard ~= nil and math.random(1, 4) == 1 then
			self.interior:Timer("toyota_keyboard_easteregg", 2, function()
				self:EmitSound(customdata.easter_egg_keyboard)
			end)
		end
	end
end

TARDIS:AddPart(PART)