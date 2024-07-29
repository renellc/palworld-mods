---@meta

---@class UBP_Status_StepCoolDown_C : UPalStatusBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Timer double
UBP_Status_StepCoolDown_C = {}

---@return UBP_Status_StepCoolDown_C
function UBP_Status_StepCoolDown_C:get() end

---@param DeltaTime float
function UBP_Status_StepCoolDown_C:TickStatus(DeltaTime) end
function UBP_Status_StepCoolDown_C:OnBeginStatus() end
---@param EntryPoint int32
function UBP_Status_StepCoolDown_C:ExecuteUbergraph_BP_Status_StepCoolDown(EntryPoint) end


