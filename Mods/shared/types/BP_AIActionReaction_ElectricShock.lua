---@meta

---@class UBP_AIActionReaction_ElectricShock_C : UPalAIActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field tempAction UPalActionBase
UBP_AIActionReaction_ElectricShock_C = {}

---@return UBP_AIActionReaction_ElectricShock_C
function UBP_AIActionReaction_ElectricShock_C:get() end

---@param ControlledPawn APawn
function UBP_AIActionReaction_ElectricShock_C:ActionStart(ControlledPawn) end
---@param EntryPoint int32
function UBP_AIActionReaction_ElectricShock_C:ExecuteUbergraph_BP_AIActionReaction_ElectricShock(EntryPoint) end


