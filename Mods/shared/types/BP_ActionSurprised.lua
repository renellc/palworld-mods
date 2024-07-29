---@meta

---@class UBP_ActionSurprised_C : UPalActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagra UNiagaraComponent
---@field Timer double
UBP_ActionSurprised_C = {}

---@return UBP_ActionSurprised_C
function UBP_ActionSurprised_C:get() end

---@param Angry boolean
function UBP_ActionSurprised_C:ChangeFace(Angry) end
function UBP_ActionSurprised_C:OnBeginAction() end
function UBP_ActionSurprised_C:OnEndAction() end
---@param DeltaTime float
function UBP_ActionSurprised_C:TickAction(DeltaTime) end
---@param EntryPoint int32
function UBP_ActionSurprised_C:ExecuteUbergraph_BP_ActionSurprised(EntryPoint) end


