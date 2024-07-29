---@meta

---@class UBP_ActionDamage_C : UBP_ActionSimpleMonoMontage_C
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_ActionDamage_C = {}

---@return UBP_ActionDamage_C
function UBP_ActionDamage_C:get() end

---@param Location FVector
function UBP_ActionDamage_C:GetEffectPosition(Location) end
function UBP_ActionDamage_C:ShowEffect() end
function UBP_ActionDamage_C:OnEndAction() end
function UBP_ActionDamage_C:OnBeginAction() end
---@param EntryPoint int32
function UBP_ActionDamage_C:ExecuteUbergraph_BP_ActionDamage(EntryPoint) end


