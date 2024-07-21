---@meta

---@class UBP_AIAction_LargeDown_C : UPalAIActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DownAction UPalActionBase
UBP_AIAction_LargeDown_C = {}

---@param Exist boolean
function UBP_AIAction_LargeDown_C:ExistMontage(Exist) end
---@param ControlledPawn APawn
function UBP_AIAction_LargeDown_C:ActionStart(ControlledPawn) end
---@param ControlledPawn APawn
---@param WithResult EPawnActionResult::Type
function UBP_AIAction_LargeDown_C:ActionFinished(ControlledPawn, WithResult) end
---@param ControlledPawn APawn
function UBP_AIAction_LargeDown_C:ActionPause(ControlledPawn) end
---@param ControlledPawn APawn
function UBP_AIAction_LargeDown_C:ActionAbort(ControlledPawn) end
---@param ControlledPawn APawn
---@param DeltaSeconds float
function UBP_AIAction_LargeDown_C:ActionTick(ControlledPawn, DeltaSeconds) end
---@param EntryPoint int32
function UBP_AIAction_LargeDown_C:ExecuteUbergraph_BP_AIAction_LargeDown(EntryPoint) end


