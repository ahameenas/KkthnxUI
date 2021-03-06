local _, C = unpack(select(2, ...))

local _G = _G

local GUILD = _G.GUILD
local IsAddOnLoaded = _G.IsAddOnLoaded
local NONE = _G.NONE
local PLAYER = _G.PLAYER

-- Actionbar
C["ActionBar"] = {
	["Cooldowns"] = true,
	["Count"] = true,
	["DecimalCD"] = true,
	["DefaultButtonSize"] = 34,
	["Enable"] = true,
	-- ["EquipBorder"] = true,
	["FadeRightBar"] = false,
	["FadeRightBar2"] = false,
	["HideHighlight"] = false,
	["Hotkey"] = true,
	["Macro"] = true,
	["MicroBar"] = true,
	["MicroBarMouseover"] = false,
	["OverrideWA"] = false,
	["RightButtonSize"] = 34,
	["StancePetSize"] = 28,
	["Layout"] = {
		["Options"] = {
			["Mainbar 2x3x4"] = "3x4 Boxed arrangement",
			["Mainbar 3x12"] = "Default Style",
			["Mainbar 4x12"] = "Four Stacked",
		},
		["Value"] = "Default Style"
	},
}

-- Announcements
C["Announcements"] = {
	["ItemAlert"] = false,
	["PullCountdown"] = true,
	["RareAlert"] = false,
	["SaySapped"] = false,
	-- ["Interrupt"] = {
	-- 	["Options"] = {
	-- 		["Disabled"] = "NONE",
	-- 		["Emote Chat"] = "EMOTE",
	-- 		["Party Chat"] = "PARTY",
	-- 		["Raid Chat Only"] = "RAID_ONLY",
	-- 		["Raid Chat"] = "RAID",
	-- 		["Say Chat"] = "SAY",
	-- 		["Yell Chat"] = "YELL"
	-- 	},
	-- 	["Value"] = "PARTY"
	-- },

	["BrokenSpell"] = true,
	["Interrupt"] = true,
}

-- Automation
C["Automation"] = {
	["AutoCollapse"] = false,
	["AutoDeclineDuels"] = false,
	["AutoDeclinePetDuels"] = false,
	["AutoDisenchant"] = false,
	["AutoInvite"] = false,
	["AutoQuest"] = false,
	["AutoRelease"] = false,
	["AutoResurrect"] = false,
	["AutoResurrectThank"] = false,
	-- ["AutoReward"] = false,
	["AutoSetRole"] = false,
	["AutoTabBinder"] = false,
	["BlockMovies"] = false,
	["WhisperInvite"] = "inv+",
}

C["Inventory"] = {
	["AutoSell"] = true,
	["BagBar"] = true,
	["BagBarMouseover"] = false,
	["BagsWidth"] = 12,
	["BagsiLvl"] = true,
	["BankWidth"] = 14,
	["DeleteButton"] = true,
	["Enable"] = true,
	["GatherEmpty"] = false,
	["IconSize"] = 34,
	["ItemFilter"] = true,
	["ItemSetFilter"] = false,
	["QuestItemFilter"] = false,
	["ScrapIcon"] = true,
	["ShowNewItem"] = true,
	["TradeGoodsFilter"] = false,
	["UpgradeIcon"] = true,
	["AutoRepair"] = {
		["Options"] = {
			[NONE] = 0,
			[GUILD] = 1,
			[PLAYER] = 2,
		},
		["Value"] = 2
	},
}

-- Buffs & Debuffs
C["Auras"] = {
	["BuffSize"] = 30,
	["BuffsPerRow"] = 16,
	["DebuffSize"] = 34,
	["DebuffsPerRow"] = 16,
	["Enable"] = true,
	["Reminder"] = false,
	["ReverseBuffs"] = false,
	["ReverseDebuffs"] = false,
	["Statue"] = true,
	["Totems"] = true,
}

-- Chat
C["Chat"] = {
	["Background"] = false,
	["BackgroundAlpha"] = 0.25,
	["ChatItemLevel"] = true,
	["Enable"] = true,
	["EnableFilter"] = true,
	["Fading"] = true,
	["FadingTimeFading"] = 3,
	["FadingTimeVisible"] = 20,
	["Height"] = 149,
	["ScrollByX"] = 3,
	["ShortenChannelNames"] = true,
	["TabsMouseover"] = true,
	["WhisperSound"] = true,
	["Width"] = 410
}

-- DataBars
C["DataBars"] = {
	["AzeriteColor"] = {.901, .8, .601},
	["Enable"] = true,
	["ExperienceColor"] = {0, 0.4, 1, .8},
	["Height"] = 14,
	["HonorColor"] = {240/255, 114/255, 65/255},
	["MouseOver"] = false,
	["RestedColor"] = {1, 0, 1, 0.2},
	["Text"] = true,
	["TrackHonor"] = false,
	["Width"] = 180,
}

-- Datatext
C["DataText"] = {
	["System"] = true,
	["Time"] = true,
}

C["Filger"] = {
	["BuffSize"] = 36,
	["CooldownSize"] = 30,
	["DisableCD"] = false,
	["DisablePvP"] = false,
	["Expiration"] = false,
	["Enable"] = false,
	["MaxTestIcon"] = 5,
	["PvPSize"] = 60,
	["ShowTooltip"] = false,
	["TestMode"] = false,
}

-- General
C["General"] = {
	["AutoScale"] = true,
	["ColorTextures"] = false,
	["DisableTutorialButtons"] = false,
	["FixGarbageCollect"] = true,
	["FontSize"] = 12,
	["HideErrors"] = true,
	["LagTolerance"] = false,
	["MoveBlizzardFrames"] = false,
	["ReplaceBlizzardFonts"] = true,
	["TexturesColor"] = {0.9, 0.9, 0.9},
	["UIScale"] = 0.71111,
	["VersionCheck"] = true,
	["Welcome"] = true,
	["NumberPrefixStyle"] = {
		["Options"] = {
			["Standard: b/m/k"] = 1,
			["Asian: y/w"] = 2,
			["Full Digits"] = 3,
		},
		["Value"] = 1
	},
	["PortraitStyle"] = {
		["Options"] = {
			["3D Portraits"] = "ThreeDPortraits",
			["Class Portraits"] = "ClassPortraits",
			["New Class Portraits"] = "NewClassPortraits",
			["Default Portraits"] = "DefaultPortraits"
		},
		["Value"] = "DefaultPortraits"
	},
}

-- Loot
C["Loot"] = {
	["AutoConfirm"] = false,
	["AutoGreed"] = false,
	["Enable"] = true,
	["FastLoot"] = false,
	["GroupLoot"] = true,
}

-- Minimap
C["Minimap"] = {
	["Enable"] = true,
	["ResetZoom"] = false,
	["ResetZoomTime"] = 4,
	["ShowGarrison"] = true,
	["ShowRecycleBin"] = true,
	["Size"] = 180,
	["LocationText"] = {
		["Options"] = {
			["Always Display"] = "SHOW",
			["Hide"] = "Hide",
			["Minimap Mouseover"] = "MOUSEOVER",
		},
		["Value"] = "MOUSEOVER"
	},
	-- ["BlipTexture"] = {
	-- 	["Options"] = {
	-- 		["Blizzard"] = "Interface\\MiniMap\\ObjectIconsAtlas",
	-- 		["Charmed"] = "Interface\\AddOns\\KkthnxUI\\Media\\MiniMap\\Blip-Charmed",
	-- 		["Nandini"] = "Interface\\AddOns\\KkthnxUI\\Media\\MiniMap\\Blip-Nandini-New",
	-- 	},
	-- 	["Value"] = "Interface\\MiniMap\\ObjectIconsAtlas"
	-- },
}

-- Miscellaneous
C["Misc"] = {
	["AFKCamera"] = false,
	["ColorPicker"] = false,
	["EnchantmentScroll"] = false,
	["EnhancedFriends"] = false,
	["GemEnchantInfo"] = false,
	["ImprovedStats"] = false,
	["ItemLevel"] = false,
	["KillingBlow"] = false,
	["NoTalkingHead"] = false,
	["PvPEmote"] = false,
	["SlotDurability"] = false,
	["TradeTabs"] = false,
}

C["Nameplate"] = {
	["AKSProgress"] = false,
	["AuraSize"] = 22,
	["ClassIcon"] = false,
	["CustomColor"] = {0, 0.8, 0.3},
	["CustomUnitColor"] = true,
	["DPSRevertThreat"] = false,
	["Distance"] = 42,
	["Enable"] = true,
	["ExplosivesScale"] = false,
	["FriendlyCC"] = false,
	["FullHealth"] = false,
	["HealerIcon"] = false,
	["HealthTextSize"] = 12,
	["HostileCC"] = true,
	["InsecureColor"] = {1, 0, 0},
	["InsideView"] = true,
	["MaxAuras"] = 5,
	["MaxPowerGlow"] = false,
	["MinAlpha"] = 0.35,
	["MinScale"] = 1,
	["NameTextSize"] = 10,
	["NameplateClassPower"] = true,
	["OffTankColor"] = {0.2, 0.7, 0.5},
	["PPHeight"] = 5,
	["PPHideOOC"] = true,
	["PPIconSize"] = 32,
	["PPPHeight"] = 6,
	["PPPowerText"] = true,
	["PlateHeight"] = 6,
	["PlateWidth"] = 134,
	["QuestIndicator"] = true,
	["SecureColor"] = {1, 0, 1},
	["ShowPlayerPlate"] = false,
	["Smooth"] = false,
	["TankMode"] = false,
	["TargetIndicatorColor"] = {1, 1, 0},
	["TransColor"] = {1, 0.8, 0},
	["VerticalSpacing"] = 0.7,
	["TargetIndicator"] = {
		["Options"] = {
			["Disable"] = 1,
			["Top Arrow"] = 2,
			["Right Arrow"] = 3,
			["Border Glow"] = 4,
			["Top Arrow + Glow"] = 5,
			["Right Arrow + Glow"] = 6,
		},
		["Value"] = 4
	},
}

C["PulseCooldown"] = {
	["Enable"] = false,
	["HoldTime"] = 1.2,
	["MinTreshold"] = 14,
	["Size"] = 70,
	["Sound"] = false,
}

-- Skins
C["Skins"] = {
	["BigWigs"] = false,
	["ChatBubbles"] = true,
	["DBM"] = false,
	["Details"] = false,
	["Skada"] = false,
	["Spy"] = false,
	["TalkingHeadBackdrop"] = true,
	["TitanClassic"] = false,
	["WeakAuras"] = false,
}

-- Tooltip
C["Tooltip"] = {
	["AzeriteArmor"] = false,
	["ClassColor"] = false,
	["CombatHide"] = false,
	["Cursor"] = false,
	["FactionIcon"] = false,
	["HideJunkGuild"] = true,
	["HideRank"] = true,
	["HideRealm"] = true,
	["HideTitle"] = true,
	["Icons"] = true,
	["LFDRole"] = false,
	["ShowIDs"] = false,
	["SpecLevelByShift"] = true,
	["TargetBy"] = true,
}

-- Fonts
C["UIFonts"] = {
	["ActionBarsFonts"] = "KkthnxUI Outline",
	["AuraFonts"] = "KkthnxUI Outline",
	["ChatFonts"] = "KkthnxUI",
	["DataBarsFonts"] = "KkthnxUI",
	["DataTextFonts"] = "KkthnxUI",
	["FilgerFonts"] = "KkthnxUI",
	["GeneralFonts"] = "KkthnxUI",
	["InventoryFonts"] = "KkthnxUI Outline",
	["MinimapFonts"] = "KkthnxUI",
	["NameplateFonts"] = "KkthnxUI",
	["QuestTrackerFonts"] = "KkthnxUI",
	["SkinFonts"] = "KkthnxUI",
	["TooltipFonts"] = "KkthnxUI",
	["UnitframeFonts"] = "KkthnxUI",
}

-- Textures
C["UITextures"] = {
	["DataBarsTexture"] = "KkthnxUI",
	["FilgerTextures"] = "KkthnxUI",
	["GeneralTextures"] = "KkthnxUI",
	["HealPredictionTextures"] = "Blank",
	["LootTextures"] = "KkthnxUI",
	["NameplateTextures"] = "KkthnxUI",
	["QuestTrackerTexture"] = "KkthnxUI",
	["SkinTextures"] = "KkthnxUI",
	["TooltipTextures"] = "KkthnxUI",
	["UnitframeTextures"] = "KkthnxUI",
}

-- Unitframe
C["Unitframe"] = {
	["AdditionalPower"] = true,
	["CastClassColor"] = true,
	["CastReactionColor"] = true,
	["CastbarLatency"] = true,
	["Castbars"] = true,
	["ClassResources"] = true,
	["CombatFade"] = false,
	["CombatText"] = false,
	["DebuffHighlight"] = true,
	["DebuffsOnTop"] = true,
	["Enable"] = true,
	["GlobalCooldown"] = false,
	["HideTargetofTarget"] = false,
	["OnlyShowPlayerDebuff"] = false,
	["PlayerAuraBars"] = false,
	["PlayerBuffs"] = false,
	["PlayerCastbarHeight"] = 24,
	["PlayerCastbarWidth"] = 260,
	["PlayerPowerPrediction"] = true,
	["PortraitTimers"] = false,
	["PvPIndicator"] = true,
	["ResurrectSound"] = false,
	["ShowHealPrediction"] = true,
	["ShowPlayerLevel"] = true,
	["ShowPlayerName"] = false,
	["Smooth"] = false,
	["Stagger"] = true,
	["Swingbar"] = false,
	["SwingbarTimer"] = false,
	["TargetAuraBars"] = false,
	["TargetCastbarHeight"] = 24,
	["TargetCastbarWidth"] = 260,
	["HealthbarColor"] = {
        ["Options"] = {
            ["Dark"] = "Dark",
            ["Value"] = "Value",
            ["Class"] = "Class",
        },
        ["Value"] = "Class"
	},
}

C["Party"] = {
	["Castbars"] = false,
	["Enable"] = true,
	["HorizonParty"] = false,
	["PortraitTimers"] = false,
	["ShowBuffs"] = true,
	["ShowHealPrediction"] = true,
	["ShowPet"] = false,
	["ShowPlayer"] = true,
	["ShowTarget"] = false,
	["Smooth"] = false,
	["TargetHighlight"] = false,
	["HealthbarColor"] = {
        ["Options"] = {
            ["Dark"] = "Dark",
            ["Value"] = "Value",
            ["Class"] = "Class",
        },
        ["Value"] = "Class"
    },
}

C["Boss"] = {
	["Castbars"] = true,
	["Enable"] = true,
	["Smooth"] = false,
	["HealthbarColor"] = {
        ["Options"] = {
            ["Dark"] = "Dark",
            ["Value"] = "Value",
            ["Class"] = "Class",
        },
        ["Value"] = "Class"
    },
}

C["Arena"] = {
	["Castbars"] = true,
	["Enable"] = true,
	["Smooth"] = false,
	["HealthbarColor"] = {
        ["Options"] = {
            ["Dark"] = "Dark",
            ["Value"] = "Value",
            ["Class"] = "Class",
        },
        ["Value"] = "Class"
    },
}

-- Raidframe
C["Raid"] = {
	["AuraDebuffIconSize"] = 22,
	["AuraDebuffs"] = true,
	["AuraWatch"] = true,
	["AuraWatchIconSize"] = 11,
	["AuraWatchTexture"] = true,
	["DeficitThreshold"] = .95,
	["Enable"] = true,
	["Height"] = 40,
	["HorizonRaid"] = true,
	["MainTankFrames"] = true,
	["ManabarShow"] = false,
	["NumGroups"] = 6,
	["RaidUtility"] = true,
	["ReverseRaid"] = false,
	["ShowHealPrediction"] = true,
	["ShowNotHereTimer"] = true,
	["ShowTeamIndex"] = false,
	["Smooth"] = false,
	["SpecRaidPos"] = false,
	["TargetHighlight"] = false,
	["Width"] = 66,
	["HealthbarColor"] = {
        ["Options"] = {
            ["Dark"] = "Dark",
            ["Value"] = "Value",
            ["Class"] = "Class",
        },
        ["Value"] = "Class"
    },
	["HealthFormat"] = {
        ["Options"] = {
			["Disable HP"] = 1,
			["Health Percentage"] = 2,
			["Health Remaining"] = 3,
			["Health Lost"] = 4,
        },
        ["Value"] = 1
    },
}

if not IsAddOnLoaded("QuestNotifier") then
	C["QuestNotifier"] = {
		["Enable"] = IsAddOnLoaded("QuestNotifier") and false,
		["OnlyCompleteRing"] = false,
		["QuestProgress"] = false,
	}
end

-- Worldmap
C["WorldMap"] = {
	["AlphaWhenMoving"] = 0.35,
	["Coordinates"] = true,
	["FadeWhenMoving"] = true,
	["SmallWorldMap"] = true,
	["WorldMapPlus"] = false,
}