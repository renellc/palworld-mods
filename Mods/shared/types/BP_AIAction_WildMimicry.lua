---@meta

---@class UBP_AIAction_WildMimicry_C : UPalAIActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MimicAction UPalActionBase
UBP_AIAction_WildMimicry_C = {}

---@return UBP_AIAction_WildMimicry_C
function UBP_AIAction_WildMimicry_C:get() end

---@param DamageResult FPalDamageResult
UBP_AIAction_WildMimicry_C['On Damage Mimicry'] = function(DamageResult) end
---@param ControlledPawn APawn
function UBP_AIAction_WildMimicry_C:ActionStart(ControlledPawn) end
---@param ControlledPawn APawn
function UBP_AIAction_WildMimicry_C:ActionResume(ControlledPawn) end
---@param ControlledPawn APawn
function UBP_AIAction_WildMimicry_C:ActionAbort(ControlledPawn) end
---@param ControlledPawn APawn
---@param WithResult EPawnActionResult::Type
function UBP_AIAction_WildMimicry_C:ActionFinished(ControlledPawn, WithResult) end
---@param ControlledPawn APawn
function UBP_AIAction_WildMimicry_C:ActionPause(ControlledPawn) end
---@param EntryPoint int32
function UBP_AIAction_WildMimicry_C:ExecuteUbergraph_BP_AIAction_WildMimicry(EntryPoint) end


