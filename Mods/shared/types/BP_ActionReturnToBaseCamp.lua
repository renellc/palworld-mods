---@meta

---@class UBP_ActionReturnToBaseCamp_C : UBP_ActionSimpleMonoMontage_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field flagName FName
UBP_ActionReturnToBaseCamp_C = {}

function UBP_ActionReturnToBaseCamp_C:OnBeginAction() end
---@param DeltaTime float
function UBP_ActionReturnToBaseCamp_C:TickAction(DeltaTime) end
function UBP_ActionReturnToBaseCamp_C:OnEndAction() end
---@param NotifyName FName
function UBP_ActionReturnToBaseCamp_C:OnNotifyBegin(NotifyName) end
---@param EntryPoint int32
function UBP_ActionReturnToBaseCamp_C:ExecuteUbergraph_BP_ActionReturnToBaseCamp(EntryPoint) end


