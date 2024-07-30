function TardisToyotaStopLightUpProtocol(self,ply,part)
	local snd = self:GetData("toyota_power_special_sound")
	if snd then
		snd:Stop()
	end
	if self:GetData("flight") then
		TARDIS:Control("flight", ply, part)
		self:SetData("toyota_protocol", nil)
	end
end

function TardisToyotaLightUpProtocol(self,ply,part)
	local l1 = self:GetPart("toyota_lever")
	local l2 = self:GetPart("toyota_lever2")

	if not IsValid(l1) or not IsValid(l2) then return end

	if (l1 == part and not l2:GetOn()) or (l2 == part and not l1:GetOn()) then
		return
	end
	if part:GetOn() then return end

	if self:CallCommonHook("CanTogglePower") == false then return end

	self:Timer("toyota_power_special_0", 0.3, function()
		for k,_ in pairs(self.occupants) do
			k:ScreenFade(SCREENFADE.IN, Color(227,382,342,30), 1.4, 0.1)
		end

		self:ApplyLightState("bright8")

		for k = 1,8 do
			local i = 8 - k
			self:Timer("toyota_power_special_b" .. i, 0.15 * k, function()
				self:ApplyLightState("bright" .. i)
			end)
		end

		local sf = self.metadata.ToyotaCustom.powerup_special_sound

		TARDIS:Control("power", ply, part)

		if sf then
			local snd = CreateSound(self, sf)
			snd:Play()
			snd:ChangeVolume(1, 0)
			self:SetData("toyota_power_special_sound", snd)
		end

		self:Timer("toyota_power_special_1", 0.1, function()
			if not self:GetData("flight") then
				TARDIS:Control("flight", ply, part)

				self:SetData("toyota_protocol", TardisToyotaStopLightUpProtocol)
			end
		end)
	end)
end

TARDIS:AddControl({
	id = "toyota_protocol",
	tip_text = "Protocol \n activation",
	serveronly = true,
	power_independent = true,
	screen_button = { virt_console = false, mmenu = false, },

	int_func=function(self,ply,part)
		protocol_func = self:GetData("toyota_protocol")

		if protocol_func ~= nil then
			protocol_func(self,ply,part)
		end

	end,
})

local function play_easter_egg_sound(self,ply,part,eesound)
	if not eesound then return end
	snd = CreateSound(self, eesound)
	snd:Play()
	snd:ChangeVolume(1, 0)

	self:SetData("toyota_protocol", function(self,ply,part)
		snd:Stop()
		self:SetData("toyota_protocol", nil)
	end)
end

local function play_easter_egg1(self,ply,part)
	play_easter_egg_sound(self,ply,part,self.metadata.ToyotaCustom.easter_egg_1)
end

local function play_easter_egg2(self,ply,part)
	play_easter_egg_sound(self,ply,part,self.metadata.ToyotaCustom.easter_egg_2)
end

local function play_easter_egg3(self,ply,part)
	play_easter_egg_sound(self,ply,part,self.metadata.ToyotaCustom.easter_egg_3)
end

local function play_easter_egg4(self,ply,part)
	play_easter_egg_sound(self,ply,part,self.metadata.ToyotaCustom.easter_egg_4)
end

local function set_easter_egg_protocol(self,ply,part,protocol_func)
	if part:GetOn() then
		if self:GetData("toyota_protocol") == protocol_func then
			self:SetData("toyota_protocol", nil)
		end
		return
	end
	self:SetData("toyota_protocol", protocol_func)
end

TARDIS:AddControl({
	id = "toyota_easteregg_1",
	tip_text = nil,
	serveronly = true,
	power_independent = true,
	screen_button = { virt_console = false, mmenu = false, },

	int_func=function(self,ply,part)
		set_easter_egg_protocol(self,ply,part,play_easter_egg1)
	end,
})

TARDIS:AddControl({
	id = "toyota_easteregg_2",
	tip_text = nil,
	serveronly = true,
	power_independent = true,
	screen_button = { virt_console = false, mmenu = false, },

	int_func=function(self,ply,part)
		local var = self:GetData("toyota_ee2_variation")
		set_easter_egg_protocol(self,ply,part,var and play_easter_egg3 or play_easter_egg2)
	end,
})

TARDIS:AddControl({
	id = "toyota_easteregg_4",
	tip_text = nil,
	serveronly = true,
	power_independent = true,
	screen_button = { virt_console = false, mmenu = false, },

	int_func=function(self,ply,part)
		set_easter_egg_protocol(self,ply,part,play_easter_egg4)
	end,
})

TARDIS:AddControl({
	id = "toyota_easteregg_3_toggle",
	tip_text = nil,
	serveronly = true,
	power_independent = true,
	screen_button = { virt_console = false, mmenu = false, },

	int_func=function(self,ply,part)
		self:SetData("toyota_ee2_variation", not part:GetOn())
	end,
})

TARDIS:AddControl({
	id = "toyota_power_special_toggle",
	tip_text = nil,
	serveronly = true,
	power_independent = true,
	screen_button = { virt_console = false, mmenu = false, },

	int_func=function(self,ply,part)
		local on = not self:GetData("toyota_power_special")
		self:SetData("toyota_power_special", on)
		if on and not self:GetData("power-state") then
			self:SetData("toyota_protocol", TardisToyotaLightUpProtocol)
		elseif self:GetData("toyota_protocol") == TardisToyotaLightUpProtocol then
			self:SetData("toyota_protocol", nil)
		end
	end,
})

TARDIS:AddControl({
	id = "toyota_toggle_moving_screen",
	tip_text = "Screen UI",
	serveronly = true,
	power_independent = true,
	screen_button = { virt_console = false, mmenu = false, },

	int_func=function(self,ply)
		local on = not self:GetData("toyota_screen_ui_allowed")
		self:SetData("toyota_screen_ui_allowed", on)

		local monitor = self:GetPart("toyota_monitor1")
		if IsValid(monitor) then
			self:SetScreensOn(on and not monitor:GetOn())
		end
	end,
})

TARDIS:AddControl({
	id = "toyota_toggle_screens_delayed",
	tip_text = nil,
	serveronly = true,
	power_independent = true,
	bypass_console_toggle = true,
	screen_button = { virt_console = false, mmenu = false, },

	int_func=function(self,ply)
		local monitor = self:GetPart("toyota_monitor1")
		if IsValid(monitor) then
			local m_on = monitor:GetOn()
			monitor:SetOn(not m_on)
		end

		if self:GetData("screens_on", false) then
			self:ToggleScreens()
		elseif self:GetData("toyota_screen_ui_allowed") then
			local customdata = self.metadata.ToyotaCustom
			local msound = customdata and customdata.monitor_sound
			self:EmitSound(msound)

			self:Timer("toyota_toggle_screens", 0.5, function()
				self:ToggleScreens()
			end)
		end
	end,
})

if SERVER then
	util.AddNetworkString("TARDIS-Toyota-Sonic")
end

TARDIS:AddControl({
	id = "toyota_sonic_dispenser",
	int_func=function(self,ply)
		if TARDIS:IsSonicInstalled() then
			local interior_sonic_id = self.metadata.ToyotaSonicID

			if IsValid(ply:GetWeapon("swep_sonicsd")) then
				TARDIS:Message(ply, "Controls.SonicDispenser.Equipped")
			else
				ply:Give("swep_sonicsd")
				TARDIS:Message(ply, "Controls.SonicDispenser.Dispensed")
			end
			net.Start("TARDIS-Toyota-Sonic")
				net.WriteString(interior_sonic_id)
			net.Send(ply)
		else
			TARDIS:ErrorMessage(ply, "Controls.SonicDispenser.MissingAddon")
		end
	end,
	power_independent = true,
	bypass_console_toggle = true,
	bypass_isomorphic = true,
	serveronly = true,
	screen_button = false,
	tip_text = "Controls.SonicDispenser.Tip",
})

if CLIENT then
	net.Receive("TARDIS-Toyota-Sonic", function()
		local interior_sonic_id = net.ReadString()
		RunConsoleCommand("sonic_model", interior_sonic_id)
		RunConsoleCommand("sonicsd_give", interior_sonic_id)
	end)
end