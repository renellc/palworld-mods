---@meta

---@class UBP_AIAction_RandomIncident_MerchantPalWalk_C : UPalAIActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GoalPosition FVector
---@field ['Spawned Position'] FVector
UBP_AIAction_RandomIncident_MerchantPalWalk_C = {}

function UBP_AIAction_RandomIncident_MerchantPalWalk_C:ChangeNextMovePosition() end
---@param ControlledPawn APawn
function UBP_AIAction_RandomIncident_MerchantPalWalk_C:ActionStart(ControlledPawn) end
---@param ControlledPawn APawn
---@param DeltaSeconds float
function UBP_AIAction_RandomIncident_MerchantPalWalk_C:ActionTick(ControlledPawn, DeltaSeconds) end
---@param ControlledPawn APawn
---@param WithResult EPawnActionResult::Type
function UBP_AIAction_RandomIncident_MerchantPalWalk_C:ActionFinished(ControlledPawn, WithResult) end
---@param ControlledPawn APawn
function UBP_AIAction_RandomIncident_MerchantPalWalk_C:ActionPause(ControlledPawn) end
---@param EntryPoint int32
function UBP_AIAction_RandomIncident_MerchantPalWalk_C:ExecuteUbergraph_BP_AIAction_RandomIncident_MerchantPalWalk(EntryPoint) end


