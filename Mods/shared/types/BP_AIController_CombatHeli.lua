---@meta

---@class ABP_AIController_CombatHeli_C : APalAIController
---@field UberGraphFrame FPointerToUberGraphFrame
ABP_AIController_CombatHeli_C = {}

---@return ABP_AIController_CombatHeli_C
function ABP_AIController_CombatHeli_C:get() end

---@param DeadInfo FPalDeadInfo
ABP_AIController_CombatHeli_C['On Dead'] = function(DeadInfo) end
---@param PossessedPawn APawn
function ABP_AIController_CombatHeli_C:ReceivePossess(PossessedPawn) end
---@param EntryPoint int32
function ABP_AIController_CombatHeli_C:ExecuteUbergraph_BP_AIController_CombatHeli(EntryPoint) end


