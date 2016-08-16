local K, C, L, _ = select(2, ...):unpack()
if C.Skins.Skada ~= true then return end

-- SKADA SKIN
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event)
	if not IsAddOnLoaded("Skada") then return end

	SkadaBarWindowSkada.borderFrame:Kill()

	local barmod = Skada.displays["bar"]

	-- USED TO STRIP UNECESSARY OPTIONS FROM THE IN-GAME CONFIG
	local function StripOptions(options)
		options.baroptions.args.barspacing = nil
		options.titleoptions.args.texture = nil
		options.titleoptions.args.bordertexture = nil
		options.titleoptions.args.thickness = nil
		options.titleoptions.args.margin = nil
		options.titleoptions.args.color = nil
		options.windowoptions = nil
		options.baroptions.args.barfont = nil
		options.baroptions.args.reversegrowth = nil
		options.titleoptions.args.font = nil
	end

	barmod.AddDisplayOptions_ = barmod.AddDisplayOptions
	barmod.AddDisplayOptions = function(self, win, options)
		self:AddDisplayOptions_(win, options)
		StripOptions(options)
	end

	for k, options in pairs(Skada.options.args.windows.args) do
		if options.type == "group" then
			StripOptions(options.args)
		end
	end

	-- OVERRIDE SETTINGS FROM IN-GAME GUI
	barmod.ApplySettings_ = barmod.ApplySettings
	barmod.ApplySettings = function(self, win)
		barmod.ApplySettings_(self, win)

		local skada = win.bargroup

		local titlefont = CreateFont("TitleFont"..win.db.name)
		titlefont:SetFont(C.Media.Font, C.Media.Font_Size, C.Media.Font_Style)
		titlefont:SetShadowColor(0, 0, 0, 0)

		if win.db.enabletitle then
			skada.button:SetNormalFontObject(titlefont)
			skada.button:SetBackdrop(nil)
			skada.button:GetFontString():SetPoint("TOPLEFT", skada.button, "TOPLEFT", 2, -2)
			skada.button:SetHeight(19)

			if not skada.button.backdrop then
				skada.button:CreateBackdrop("Transparent")
				skada.button.backdrop:SetPoint("TOPLEFT", win.bargroup.button, "TOPLEFT", -4, 4)
				skada.button.backdrop:SetPoint("BOTTOMRIGHT", win.bargroup.button, "BOTTOMRIGHT", 4, 3)
			end

			skada.button.bg = skada.button:CreateTexture(nil, "BACKGROUND")
			skada.button.bg:SetTexture(C.Media.Texture)
			skada.button.bg:SetVertexColor(unpack(C.Media.Border_Color))
			skada.button.bg:SetPoint("TOPLEFT", win.bargroup.button, "TOPLEFT", 0, 0)
			skada.button.bg:SetPoint("BOTTOMRIGHT", win.bargroup.button, "BOTTOMRIGHT", 0, 7)
		end

		skada:SetTexture(C.Media.Texture)
		skada:SetSpacing(7)
		skada:SetBackdrop(nil)
	end

	hooksecurefunc(Skada, "UpdateDisplay", function(self)
		for _, win in ipairs(self:GetWindows()) do
			for i, v in pairs(win.bargroup:GetBars()) do
				if not v.BarStyled then
					if not v.backdrop then
						v:CreateBackdrop("Transparent")
					end

					v:SetHeight(12)

					v.label:ClearAllPoints()
					v.label.ClearAllPoints = K.Noop
					v.label:SetPoint("LEFT", v, "LEFT", 2, 0)
					v.label.SetPoint = K.Noop

					v.label:SetFont(C.Media.Font, C.Media.Font_Size, C.Media.Font_Style)
					v.label.SetFont = K.Noop
					v.label:SetShadowOffset(0, 0)
					v.label.SetShadowOffset = K.Noop

					v.timerLabel:ClearAllPoints()
					v.timerLabel.ClearAllPoints = K.Noop
					v.timerLabel:SetPoint("RIGHT", v, "RIGHT", 0, 0)
					v.timerLabel.SetPoint = K.Noop

					v.timerLabel:SetFont(C.Media.Font, C.Media.Font_Size, C.Media.Font_Style)
					v.timerLabel.SetFont = K.Noop
					v.timerLabel:SetShadowOffset(0, 0)
					v.timerLabel.SetShadowOffset = K.Noop

					v.BarStyled = true
				end
				if v.icon and v.icon:IsShown() then
					v.backdrop:SetPoint("TOPLEFT", -14, 4)
					v.backdrop:SetPoint("BOTTOMRIGHT", 4, -4)
				else
					v.backdrop:SetPoint("TOPLEFT", -4, 4)
					v.backdrop:SetPoint("BOTTOMRIGHT", 4, -4)
				end
			end
		end
	end)

	hooksecurefunc(Skada, "OpenReportWindow", function(self)
		if not self.ReportWindow.frame.reskinned then
			self.ReportWindow.frame:StripTextures()
			self.ReportWindow.frame:SetTemplate("Transparent")
			self.ReportWindow.frame.reskinned = true
		end
	end)

	-- UPDATE PRE-EXISTING DISPLAYS
	for _, window in ipairs(Skada:GetWindows()) do
		window:UpdateDisplay()
	end
end)