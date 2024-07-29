---@meta

---@class UBP_AIAction_MimicryEncounter_C : UPalAIActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_AIAction_MimicryEncounter_C = {}

---@return UBP_AIAction_MimicryEncounter_C
function UBP_AIAction_MimicryEncounter_C:get() end

---@param ControlledPawn APawn
function UBP_AIAction_MimicryEncounter_C:ActionStart(ControlledPawn) end
---@param EntryPoint int32
function UBP_AIAction_MimicryEncounter_C:ExecuteUbergraph_BP_AIAction_MimicryEncounter(EntryPoint) end


