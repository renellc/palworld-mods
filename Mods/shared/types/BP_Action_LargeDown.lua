---@meta

---@class UBP_Action_LargeDown_C : UPalActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Const_DownTime double
UBP_Action_LargeDown_C = {}

---@param MotionType EPalGeneralMontageType
---@param Montage UAnimMontage
function UBP_Action_LargeDown_C:FindMontage(MotionType, Montage) end
---@param NotifyName FName
function UBP_Action_LargeDown_C:OnNotifyEnd_358D0402488CD580AA8B67999DF53D31(NotifyName) end
---@param NotifyName FName
function UBP_Action_LargeDown_C:OnNotifyBegin_358D0402488CD580AA8B67999DF53D31(NotifyName) end
---@param NotifyName FName
function UBP_Action_LargeDown_C:OnInterrupted_358D0402488CD580AA8B67999DF53D31(NotifyName) end
---@param NotifyName FName
function UBP_Action_LargeDown_C:OnBlendOut_358D0402488CD580AA8B67999DF53D31(NotifyName) end
---@param NotifyName FName
function UBP_Action_LargeDown_C:OnCompleted_358D0402488CD580AA8B67999DF53D31(NotifyName) end
function UBP_Action_LargeDown_C:OnBeginAction() end
function UBP_Action_LargeDown_C:OnEndAction() end
---@param EntryPoint int32
function UBP_Action_LargeDown_C:ExecuteUbergraph_BP_Action_LargeDown(EntryPoint) end


