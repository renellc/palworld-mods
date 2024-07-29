---@meta

---@class UBP_ActionTurnToTarget_C : UPalActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_ActionTurnToTarget_C = {}

---@return UBP_ActionTurnToTarget_C
function UBP_ActionTurnToTarget_C:get() end

---@param DeltaTime float
function UBP_ActionTurnToTarget_C:TickAction(DeltaTime) end
---@param EntryPoint int32
function UBP_ActionTurnToTarget_C:ExecuteUbergraph_BP_ActionTurnToTarget(EntryPoint) end


