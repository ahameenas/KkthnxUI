local K = unpack(select(2, ...))
local Module = K:GetModule("Auras")

if K.Class ~= "MONK" then
	return
end

local _G = _G
local math_floor = _G.math.floor

local C_PaperDollInfo_GetStaggerPercentage = _G.C_PaperDollInfo.GetStaggerPercentage
local GetSpecialization = _G.GetSpecialization
local GetSpellCount = _G.GetSpellCount
local GetSpellTexture = _G.GetSpellTexture
local IsPlayerSpell = _G.IsPlayerSpell
local IsUsableSpell = _G.IsUsableSpell

local function GetUnitAura(unit, spell, filter)
	return Module:GetUnitAura(unit, spell, filter)
end

local function UpdateCooldown(button, spellID, texture)
	return Module:UpdateCooldown(button, spellID, texture)
end

local function UpdateBuff(button, spellID, auraID, cooldown, glow)
	return Module:UpdateAura(button, "player", auraID, "HELPFUL", spellID, cooldown, glow)
end

local function UpdateTargetBuff(button, spellID, auraID, cooldown)
	return Module:UpdateAura(button, "target", auraID, "HELPFUL", spellID, cooldown, true)
end

local function UpdateSpellStatus(button, spellID)
	button.Icon:SetTexture(GetSpellTexture(spellID))
	if IsUsableSpell(spellID) then
		button.Icon:SetDesaturated(false)
	else
		button.Icon:SetDesaturated(true)
	end
end

function Module:ChantLumos(self)
	if GetSpecialization() == 1 then
		do
			local button = self.bu[1]
			local stagger, staggerAgainstTarget = C_PaperDollInfo_GetStaggerPercentage("player")
			local amount = staggerAgainstTarget or stagger
			if amount > 0 then
				button.Count:SetText(math_floor(amount))
				button.Icon:SetDesaturated(false)
			else
				button.Count:SetText("")
				button.Icon:SetDesaturated(true)
			end
			button.Icon:SetTexture(GetSpellTexture(115069))
		end

		do
			local button = self.bu[2]
			local count = GetSpellCount(115072)
			button.Count:SetText(count)
			if count > 0 then
				button.Icon:SetDesaturated(false)
			else
				button.Icon:SetDesaturated(true)
			end
			button.Icon:SetTexture(GetSpellTexture(115072))
		end

		UpdateBuff(self.bu[3], 115308, 215479, true, "END")
		UpdateBuff(self.bu[4], 195630, 195630, false, "END")

		do
			local button = self.bu[5]
			local name, _, duration, expire, _, spellID = GetUnitAura("player", 124275, "HARMFUL")
			if not name then
				name, _, duration, expire, _, spellID = GetUnitAura("player", 124274, "HARMFUL")
			end

			if not name then
				name, _, duration, expire, _, spellID = GetUnitAura("player", 124273, "HARMFUL")
			end

			if name and duration > 0 then
				button.CD:SetCooldown(expire-10, 10)
				button.CD:Show()
				button.Icon:SetDesaturated(false)
			else
				button.CD:Hide()
				button.Icon:SetDesaturated(true)
			end
			local texture = spellID and GetSpellTexture(spellID) or 463281
			button.Icon:SetTexture(texture)

			if button.Icon:GetTexture() == GetSpellTexture(124273) then
				K.libCustomGlow.AutoCastGlow_Start(button)
			else
				K.libCustomGlow.AutoCastGlow_Stop(button)
			end
		end
	elseif GetSpecialization() == 2 then
		UpdateCooldown(self.bu[1], 115151, true)
		UpdateCooldown(self.bu[2], 191837, true)
		UpdateBuff(self.bu[3], 116680, 116680, true, true)
		UpdateTargetBuff(self.bu[4], 116849, 116849, true)
		UpdateCooldown(self.bu[5], 115310, true)
	elseif GetSpecialization() == 3 then
		UpdateCooldown(self.bu[1], 113656, true)
		UpdateCooldown(self.bu[2], 107428, true)

		do
			local button = self.bu[3]
			button.Count:SetText(GetSpellCount(101546))
			UpdateSpellStatus(button, 101546)
		end

		UpdateBuff(self.bu[4], 137639, 137639, true)

		do
			local button = self.bu[5]
			if IsPlayerSpell(123904) then
				Module:UpdateTotemAura(button, 620832, 123904, true)
			elseif IsPlayerSpell(116847) then
				UpdateBuff(button, 116847, 116847, false, true)
			else
				UpdateBuff(button, 196741, 196741)
			end
		end
	end
end