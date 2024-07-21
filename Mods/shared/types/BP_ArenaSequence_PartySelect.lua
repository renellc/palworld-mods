---@meta

---@class UBP_ArenaSequence_PartySelect_C : UPalArenaSequencePartySelect
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PartySelectTime double
---@field Timer double
---@field SelectParty FPalArenaPlayerParty
---@field PlayerTeleported boolean
---@field OnTimerUpdated FBP_ArenaSequence_PartySelect_COnTimerUpdated
---@field OnPartySelectBreak FBP_ArenaSequence_PartySelect_COnPartySelectBreak
---@field Breaked boolean
UBP_ArenaSequence_PartySelect_C = {}

function UBP_ArenaSequence_PartySelect_C:EndProcess() end
function UBP_ArenaSequence_PartySelect_C:PrintPartySelectLog() end
function UBP_ArenaSequence_PartySelect_C:SendParty() end
---@param DeltaTime double
function UBP_ArenaSequence_PartySelect_C:UpdateTimer(DeltaTime) end
---@param DeltaTime float
function UBP_ArenaSequence_PartySelect_C:TickSequence(DeltaTime) end
function UBP_ArenaSequence_PartySelect_C:OnBeginSequence() end
function UBP_ArenaSequence_PartySelect_C:OnTimeup() end
function UBP_ArenaSequence_PartySelect_C:OnPlayerTeleported() end
---@param ArenaParty FPalArenaPlayerParty
function UBP_ArenaSequence_PartySelect_C:SetParty(ArenaParty) end
function UBP_ArenaSequence_PartySelect_C:OnEndSequence() end
function UBP_ArenaSequence_PartySelect_C:OnBreakSequence() end
---@param bResult boolean
function UBP_ArenaSequence_PartySelect_C:OnConfirmBreak(bResult) end
function UBP_ArenaSequence_PartySelect_C:OnArenaBreak() end
---@param EntryPoint int32
function UBP_ArenaSequence_PartySelect_C:ExecuteUbergraph_BP_ArenaSequence_PartySelect(EntryPoint) end
function UBP_ArenaSequence_PartySelect_C:OnPartySelectBreak__DelegateSignature() end
---@param Time double
function UBP_ArenaSequence_PartySelect_C:OnTimerUpdated__DelegateSignature(Time) end


