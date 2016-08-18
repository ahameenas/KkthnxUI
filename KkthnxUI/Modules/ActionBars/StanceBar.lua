local K, C, L, _ = select(2, ...):unpack()
if C.ActionBar.Enable ~= true then return end

-- LUA API
local _G = _G
local unpack = unpack

-- WOW API
local CreateFrame = CreateFrame
local UIParent = UIParent
local InCombatLockdown = InCombatLockdown
local GetShapeshiftFormInfo = GetShapeshiftFormInfo
local hooksecurefunc = hooksecurefunc

--[[
local ShiftHolder = CreateFrame("Frame", "ShiftHolder", UIParent)
if C.ActionBar.StanceBarHorizontal == true then
	ShiftHolder:SetPoint(unpack(C.Position.StanceBar))
	ShiftHolder:SetWidth((C.ActionBar.ButtonSize * 7) + (C.ActionBar.ButtonSpace * 6))
	ShiftHolder:SetHeight(C.ActionBar.ButtonSize)
else
	if (PetActionBarFrame:IsShown() or PetHolder) and C.ActionBar.PetBarHorizontal ~= true then
		ShiftHolder:SetPoint("RIGHT", "PetHolder", "LEFT", -C.ActionBar.ButtonSpace, (C.ActionBar.ButtonSize / 2) + 1)
	else
		ShiftHolder:SetPoint("RIGHT", "RightActionBarAnchor", "LEFT", -C.ActionBar.ButtonSpace, (C.ActionBar.ButtonSize / 2) + 1)
	end
	ShiftHolder:SetWidth(C.ActionBar.ButtonSize)
	ShiftHolder:SetHeight((C.ActionBar.ButtonSize * 7) + (C.ActionBar.ButtonSpace * 6))
end
]]--
-- Hide bar
if C.ActionBar.StanceBarHide then ShiftHolder:Hide() return end

-- Create bar
local bar = CreateFrame("Frame", "UIShapeShift", ShiftHolder, "SecureHandlerStateTemplate")
bar:ClearAllPoints()
bar:SetAllPoints(ShiftHolder)

local States = {
	["DEATHKNIGHT"] = "show",
	["DRUID"] = "show",
	["MONK"] = "show",
	["PALADIN"] = "show",
	["PRIEST"] = "show",
	["ROGUE"] = "show",
	["WARLOCK"] = "show",
	["WARRIOR"] = "show",
}

bar:RegisterEvent("PLAYER_LOGIN")
bar:RegisterEvent("PLAYER_ENTERING_WORLD")
bar:RegisterEvent("UPDATE_SHAPESHIFT_FORMS")
bar:RegisterEvent("UPDATE_SHAPESHIFT_USABLE")
bar:RegisterEvent("UPDATE_SHAPESHIFT_COOLDOWN")
bar:RegisterEvent("UPDATE_SHAPESHIFT_FORM")
bar:RegisterEvent("ACTIONBAR_PAGE_CHANGED")
bar:SetScript("OnEvent", function(self, event, ...)
	if event == "PLAYER_LOGIN" then
		for i = 1, NUM_STANCE_SLOTS do
			local button = _G["StanceButton"..i]
			button:ClearAllPoints()
			button:SetParent(self)
			if i == 1 then
				if C.ActionBar.StanceBarHorizontal == true then
					button:SetPoint("BOTTOMLEFT", ShiftHolder, "BOTTOMLEFT", 0, 0)
				else
					button:SetPoint("TOPLEFT", ShiftHolder, "TOPLEFT", 0, 0)
				end
			else
				local previous = _G["StanceButton"..i-1]
				if C.ActionBar.StanceBarHorizontal == true then
					button:SetPoint("LEFT", previous, "RIGHT", C.ActionBar.ButtonSpace, 0)
				else
					button:SetPoint("TOP", previous, "BOTTOM", 0, -C.ActionBar.ButtonSpace)
				end
			end
			local _, name = GetShapeshiftFormInfo(i)
			if name then
				button:Show()
			else
				button:Hide()
			end
		end
		RegisterStateDriver(self, "visibility", States[K.Class] or "hide")
		local function movestance()
			if not InCombatLockdown() then
				if C.ActionBar.StanceBarHorizontal == true then
					StanceButton1:SetPoint("BOTTOMLEFT", ShiftHolder, "BOTTOMLEFT", 0, 0)
				else
					StanceButton1:SetPoint("TOPLEFT", ShiftHolder, "TOPLEFT", 0, 0)
				end
			end
		end
		hooksecurefunc("StanceBar_Update", movestance)
	elseif event == "UPDATE_SHAPESHIFT_FORMS" then
		if InCombatLockdown() then return end
		for i = 1, NUM_STANCE_SLOTS do
			local button = _G["StanceButton"..i]
			local _, name = GetShapeshiftFormInfo(i)
			if name then
				button:Show()
			else
				button:Hide()
			end
		end
		K.ShiftBarUpdate()
	elseif event == "PLAYER_ENTERING_WORLD" then
		K.StyleShift()
	else
		K.ShiftBarUpdate()
	end
end)