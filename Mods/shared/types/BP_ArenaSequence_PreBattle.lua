---@meta

---@class UBP_ArenaSequence_PreBattle_C : UPalArenaSequenceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ActivateReadyUI FBP_ArenaSequence_PreBattle_CActivateReadyUI
UBP_ArenaSequence_PreBattle_C = {}

---@return UBP_ArenaSequence_PreBattle_C
function UBP_ArenaSequence_PreBattle_C:get() end

---@param DisableCrying boolean
function UBP_ArenaSequence_PreBattle_C:ToggleMutePals(DisableCrying) end
---@param isDisable boolean
function UBP_ArenaSequence_PreBattle_C:SetDisableLookAtAllPal(isDisable) end
---@param PlayerIndex EPalArenaPlayerIndex
function UBP_ArenaSequence_PreBattle_C:OnCameraTarget(PlayerIndex) end
function UBP_ArenaSequence_PreBattle_C:PlayCutscene() end
function UBP_ArenaSequence_PreBattle_C:FadeOut() end
function UBP_ArenaSequence_PreBattle_C:RideLeaderPal() end
function UBP_ArenaSequence_PreBattle_C:SetupStatus() end
function UBP_ArenaSequence_PreBattle_C:SetupLocalPlayerCamera() end
function UBP_ArenaSequence_PreBattle_C:ActivatePals() end
function UBP_ArenaSequence_PreBattle_C:SetupFormation() end
function UBP_ArenaSequence_PreBattle_C:OnEndSequence() end
---@param bIsSkipped boolean
function UBP_ArenaSequence_PreBattle_C:OnFinishCutscene(bIsSkipped) end
function UBP_ArenaSequence_PreBattle_C:OnBeginSequence() end
---@param EntryPoint int32
function UBP_ArenaSequence_PreBattle_C:ExecuteUbergraph_BP_ArenaSequence_PreBattle(EntryPoint) end
function UBP_ArenaSequence_PreBattle_C:ActivateReadyUI__DelegateSignature() end


