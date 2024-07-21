---@meta

---@class UBP_ArenaSequence_Result_C : UPalArenaSequenceBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MontagePlayCharacters TArray<APalCharacter>
---@field ['Inactivated Characters'] TArray<APalCharacter>
---@field OnDraw FBP_ArenaSequence_Result_COnDraw
---@field OnWin FBP_ArenaSequence_Result_COnWin
---@field OnCutsceneFinish FBP_ArenaSequence_Result_COnCutsceneFinish
UBP_ArenaSequence_Result_C = {}

function UBP_ArenaSequence_Result_C:PlayResultSound() end
---@param isDisable boolean
function UBP_ArenaSequence_Result_C:SetDisableLookAtAllPal(isDisable) end
---@param isDisable boolean
function UBP_ArenaSequence_Result_C:ToggleLocalInput(isDisable) end
---@param Character APalCharacter
function UBP_ArenaSequence_Result_C:InactivateCharacter(Character) end
function UBP_ArenaSequence_Result_C:GetOffAllPlayer() end
function UBP_ArenaSequence_Result_C:StopMontages() end
---@param Character APalCharacter
---@param AnimMontage UAnimMontage
function UBP_ArenaSequence_Result_C:PlayResultMontage(Character, AnimMontage) end
---@param isDisable boolean
UBP_ArenaSequence_Result_C['Set Disable Movement'] = function(isDisable) end
---@param PlayerIndex EPalArenaPlayerIndex
---@return boolean
function UBP_ArenaSequence_Result_C:IsWinPlayerIndex(PlayerIndex) end
function UBP_ArenaSequence_Result_C:SetupFormation() end
UBP_ArenaSequence_Result_C['End Process'] = function() end
function UBP_ArenaSequence_Result_C:OnBeginSequence() end
---@param bIsSkipped boolean
function UBP_ArenaSequence_Result_C:OnFinishCutscene(bIsSkipped) end
---@param EntryPoint int32
function UBP_ArenaSequence_Result_C:ExecuteUbergraph_BP_ArenaSequence_Result(EntryPoint) end
function UBP_ArenaSequence_Result_C:OnCutsceneFinish__DelegateSignature() end
---@param WinnerName FString
function UBP_ArenaSequence_Result_C:OnWin__DelegateSignature(WinnerName) end
function UBP_ArenaSequence_Result_C:OnDraw__DelegateSignature() end


