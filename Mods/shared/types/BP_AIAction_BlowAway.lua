---@meta

---@class UBP_AIAction_BlowAway_C : UPalAIActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ActionComp UPalActionComponent
UBP_AIAction_BlowAway_C = {}

---@return UBP_AIAction_BlowAway_C
function UBP_AIAction_BlowAway_C:get() end

---@param ControlledPawn APawn
function UBP_AIAction_BlowAway_C:ActionStart(ControlledPawn) end
---@param EntryPoint int32
function UBP_AIAction_BlowAway_C:ExecuteUbergraph_BP_AIAction_BlowAway(EntryPoint) end


