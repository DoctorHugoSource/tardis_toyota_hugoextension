local PART={}
PART.ID = "toyota_sonic_charger"
PART.Name = PART.ID
PART.Model = "models/cem/toyota/controls/sonic_charger.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.SoundOff = "Poogie/toyota/others/sonic_dispenser_off.wav"
PART.SoundOn = "Poogie/toyota/others/sonic_dispenser.wav"
PART.PowerOffUse = false

if SERVER then
	function PART:Use(ply)
		local sonic = self.interior:GetPart("toyota_sonic")

		if not IsValid(sonic) then
			TARDIS:Control(self.Control, ply)
			return
		end

		if self:GetData("sonic_generating", false) then return end
		if not self.exterior:GetPower() then return end

		if self:GetOn() then
			TARDIS:Control(self.Control, ply)
			self:SetSubMaterial(2 , "models/cem/toyota_smith/sonic_charger_lights_top")
			self:SetSubMaterial(3 , "models/cem/toyota_smith/sonic_charger_lights")
			sonic:SetCollide(false, true)
			sonic:SetColor(Color(0,0,0,0))
			return
		end

		self:SetSubMaterial(2 , "models/cem/toyota_smith/sonic_charger_lights_top_anim")
		self:SetSubMaterial(3 , "models/cem/toyota_smith/sonic_charger_lights_anim")

		sonic:SetMaterial("models/alyx/emptool_glow")
		sonic:SetColor(Color(255,255,255,100))
		sonic:SetCollide(false, true)

		self:SetData("sonic_generating", true)

		self.interior:Timer("toyota_sonic_charger_step2", 0.5, function()
			sonic:SetColor(Color(255,255,255,100))
		end)

		self.interior:Timer("toyota_sonic_charger", 1.0, function()
			sonic:SetMaterial(nil)
			sonic:SetColor(Color(255,255,255,255))
			sonic:SetCollide(true, true)
			self:SetData("sonic_generating", false)
		end)
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "toyota_sonic"
PART.Name = PART.ID
PART.Model = "models/doctorwho1200/sonics/11thdoctor/3rdpersonsonic.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Sound = "Poogie/toyota/others/sonic_dispenser_off.wav"
PART.ShouldTakeDamage = false

if SERVER then
	function PART:Initialize()
		self:SetCollide(false, true)
		self:SetColor(Color(0,0,0,0))
	end

	function PART:Use(ply)
		local charger = self.interior:GetPart("toyota_sonic_charger")
		if not IsValid(charger) then return end
		if self:GetData("sonic_generating", false) then return end

		charger:SetSubMaterial(2 , "models/cem/toyota_smith/sonic_charger_lights_top")
		charger:SetSubMaterial(3 , "models/cem/toyota_smith/sonic_charger_lights")
		charger:SetOn(false)

		self:SetColor(Color(0,0,0,0))

		self:SetCollide(false, true)

		TARDIS:Control(self.Control, ply)
	end
end

TARDIS:AddPart(PART)