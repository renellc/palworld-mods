---@meta

---@class UBP_Status_Freeze_C : UBP_Status_WithVisualEffect_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AIActionFreeze UPalAIActionBase
---@field StartLocation FVector
UBP_Status_Freeze_C = {}

---@param IsFreeze boolean
function UBP_Status_Freeze_C:SetFlag(IsFreeze) end
function UBP_Status_Freeze_C:OnBeginStatus() end
function UBP_Status_Freeze_C:OnEndStatus() end
---@param DeltaTime float
function UBP_Status_Freeze_C:TickStatus(DeltaTime) end
---@param EntryPoint int32
function UBP_Status_Freeze_C:ExecuteUbergraph_BP_Status_Freeze(EntryPoint) end


