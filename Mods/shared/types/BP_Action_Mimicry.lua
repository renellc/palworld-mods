---@meta

---@class UBP_Action_Mimicry_C : UPalActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MimicMontage UAnimMontage
UBP_Action_Mimicry_C = {}

---@return UBP_Action_Mimicry_C
function UBP_Action_Mimicry_C:get() end

---@param Montage UAnimMontage
function UBP_Action_Mimicry_C:FindMimicMontage(Montage) end
function UBP_Action_Mimicry_C:OnBeginAction() end
function UBP_Action_Mimicry_C:OnEndAction() end
---@param EntryPoint int32
function UBP_Action_Mimicry_C:ExecuteUbergraph_BP_Action_Mimicry(EntryPoint) end


