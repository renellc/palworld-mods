---@meta

---@class UBP_AIActionCombatHeli_Dead_C : UPalAIActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_AIActionCombatHeli_Dead_C = {}

---@return UBP_AIActionCombatHeli_Dead_C
function UBP_AIActionCombatHeli_Dead_C:get() end

---@param ControlledPawn APawn
function UBP_AIActionCombatHeli_Dead_C:ActionStart(ControlledPawn) end
---@param EntryPoint int32
function UBP_AIActionCombatHeli_Dead_C:ExecuteUbergraph_BP_AIActionCombatHeli_Dead(EntryPoint) end


