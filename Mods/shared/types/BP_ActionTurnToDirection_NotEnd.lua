---@meta

---@class UBP_ActionTurnToDirection_NotEnd_C : UPalActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SpeedRate double
---@field DeleteTimer double
UBP_ActionTurnToDirection_NotEnd_C = {}

---@return UBP_ActionTurnToDirection_NotEnd_C
function UBP_ActionTurnToDirection_NotEnd_C:get() end

---@param DeltaTime float
function UBP_ActionTurnToDirection_NotEnd_C:TickAction(DeltaTime) end
function UBP_ActionTurnToDirection_NotEnd_C:OnBeginAction() end
function UBP_ActionTurnToDirection_NotEnd_C:OnEndAction() end
---@param EntryPoint int32
function UBP_ActionTurnToDirection_NotEnd_C:ExecuteUbergraph_BP_ActionTurnToDirection_NotEnd(EntryPoint) end


