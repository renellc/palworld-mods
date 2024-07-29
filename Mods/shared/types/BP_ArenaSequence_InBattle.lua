---@meta

---@class UBP_ArenaSequence_InBattle_C : UPalArenaSequenceInBattle
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timeup boolean
---@field BattleTimerHandle FTimerHandle
---@field flagName FName
---@field OnTimerTick FBP_ArenaSequence_InBattle_COnTimerTick
UBP_ArenaSequence_InBattle_C = {}

---@return UBP_ArenaSequence_InBattle_C
function UBP_ArenaSequence_InBattle_C:get() end

---@param Disable boolean
function UBP_ArenaSequence_InBattle_C:SetDisableOtomoDeadReturn(Disable) end
---@param InBattle boolean
function UBP_ArenaSequence_InBattle_C:SetInBattleControllerSetting(InBattle) end
function UBP_ArenaSequence_InBattle_C:CheckBattleEnd() end
function UBP_ArenaSequence_InBattle_C:EnableMovement() end
---@param InBattle boolean
function UBP_ArenaSequence_InBattle_C:ChangeArenaInBattleCharacterts(InBattle) end
function UBP_ArenaSequence_InBattle_C:OnBeginSequence() end
---@param DeltaTime float
function UBP_ArenaSequence_InBattle_C:TickSequence(DeltaTime) end
---@param DeadInfo FPalDeadInfo
function UBP_ArenaSequence_InBattle_C:OnDeadCharacter(DeadInfo) end
function UBP_ArenaSequence_InBattle_C:OnEndSequence() end
function UBP_ArenaSequence_InBattle_C:OnTimeup() end
function UBP_ArenaSequence_InBattle_C:OnBreakSequence() end
---@param EntryPoint int32
function UBP_ArenaSequence_InBattle_C:ExecuteUbergraph_BP_ArenaSequence_InBattle(EntryPoint) end
---@param Time int32
function UBP_ArenaSequence_InBattle_C:OnTimerTick__DelegateSignature(Time) end


