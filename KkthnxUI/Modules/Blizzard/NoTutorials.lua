local K, C = unpack(select(2, ...))
if not C["General"].DisableTutorialButtons or K.CheckAddOnState("TutorialBuster") then
	return
end

local _G = _G

do
	if _G.IsAddOnLoaded("Blizzard_TalentUI") then
		_G.PlayerTalentFrameSpecializationTutorialButton:Kill()
		_G.PlayerTalentFrameTalentsTutorialButton:Kill()
		_G.PlayerTalentFramePetSpecializationTutorialButton:Kill()
		_G.PlayerTalentFrameTalentsPvpTalentFrame.TrinketSlot.HelpBox:Kill()
		_G.PlayerTalentFrameTalentsPvpTalentFrame.WarmodeTutorialBox:Kill()
	end

	_G.SpellBookFrameTutorialButton:Kill()
	_G.HelpOpenTicketButtonTutorial:Kill()
	_G.HelpPlate:Kill()
	_G.HelpPlateTooltip:Kill()

	_G.WorldMapFrame.BorderFrame.Tutorial:Kill()

	if _G.IsAddOnLoaded("Blizzard_Collections") then
		_G.PetJournalTutorialButton:Kill()
	end

	_G.CollectionsMicroButtonAlert:UnregisterAllEvents()
	_G.CollectionsMicroButtonAlert:SetParent(K.UIFrameHider)
	_G.CollectionsMicroButtonAlert:Hide()

	_G.EJMicroButtonAlert:UnregisterAllEvents()
	_G.EJMicroButtonAlert:SetParent(K.UIFrameHider)
	_G.EJMicroButtonAlert:Hide()

	_G.LFDMicroButtonAlert:UnregisterAllEvents()
	_G.LFDMicroButtonAlert:SetParent(K.UIFrameHider)
	_G.LFDMicroButtonAlert:Hide()

	_G.TutorialFrameAlertButton:UnregisterAllEvents()
	_G.TutorialFrameAlertButton:Hide()

	_G.TalentMicroButtonAlert:UnregisterAllEvents()
	_G.TalentMicroButtonAlert:SetParent(K.UIFrameHider)
end