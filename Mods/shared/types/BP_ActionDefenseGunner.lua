---@meta

---@class UBP_ActionDefenseGunner_C : UBP_ActionSimpleMonoMontage_C
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_ActionDefenseGunner_C = {}

---@param Montage UAnimMontage
---@param Exist boolean
function UBP_ActionDefenseGunner_C:FindMontage(Montage, Exist) end
function UBP_ActionDefenseGunner_C:OnEndAction() end
function UBP_ActionDefenseGunner_C:OnBeginAction() end
---@param EntryPoint int32
function UBP_ActionDefenseGunner_C:ExecuteUbergraph_BP_ActionDefenseGunner(EntryPoint) end


