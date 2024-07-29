---@meta

---@class UBP_ActionMining_C : UBP_ActionInteractBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ToolActor AActor
---@field flagName FName
UBP_ActionMining_C = {}

---@return UBP_ActionMining_C
function UBP_ActionMining_C:get() end

function UBP_ActionMining_C:OnEndAction() end
function UBP_ActionMining_C:OnBeginAction() end
---@param Montage UAnimMontage
---@param NotifyName FName
function UBP_ActionMining_C:OnBeginAnimNotify(Montage, NotifyName) end
---@param EntryPoint int32
function UBP_ActionMining_C:ExecuteUbergraph_BP_ActionMining(EntryPoint) end


