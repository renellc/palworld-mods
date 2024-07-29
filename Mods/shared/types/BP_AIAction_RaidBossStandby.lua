---@meta

---@class UBP_AIAction_RaidBossStandby_C : UPalAIActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AIControllerRaidBoss ABP_MonsterAIController_RaidBoss_C
UBP_AIAction_RaidBossStandby_C = {}

---@return UBP_AIAction_RaidBossStandby_C
function UBP_AIAction_RaidBossStandby_C:get() end

---@param DamageResult FPalDamageResult
UBP_AIAction_RaidBossStandby_C['On Damage'] = function(DamageResult) end
---@param ControlledPawn APawn
---@param DeltaSeconds float
function UBP_AIAction_RaidBossStandby_C:ActionTick(ControlledPawn, DeltaSeconds) end
---@param ControlledPawn APawn
function UBP_AIAction_RaidBossStandby_C:ActionStart(ControlledPawn) end
---@param ControlledPawn APawn
function UBP_AIAction_RaidBossStandby_C:ActionResume(ControlledPawn) end
---@param ControlledPawn APawn
function UBP_AIAction_RaidBossStandby_C:ActionAbort(ControlledPawn) end
---@param ControlledPawn APawn
---@param WithResult EPawnActionResult::Type
function UBP_AIAction_RaidBossStandby_C:ActionFinished(ControlledPawn, WithResult) end
---@param ControlledPawn APawn
function UBP_AIAction_RaidBossStandby_C:ActionPause(ControlledPawn) end
---@param EntryPoint int32
function UBP_AIAction_RaidBossStandby_C:ExecuteUbergraph_BP_AIAction_RaidBossStandby(EntryPoint) end


