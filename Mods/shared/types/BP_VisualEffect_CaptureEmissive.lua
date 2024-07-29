---@meta

---@class UBP_VisualEffect_CaptureEmissive_C : UPalVisualEffectBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EmissionTime double
---@field EmissionTimer double
---@field CurrentEmission double
---@field EmissionMax double
UBP_VisualEffect_CaptureEmissive_C = {}

---@return UBP_VisualEffect_CaptureEmissive_C
function UBP_VisualEffect_CaptureEmissive_C:get() end

function UBP_VisualEffect_CaptureEmissive_C:OnBeginVisualEffect() end
---@param DeltaTime float
function UBP_VisualEffect_CaptureEmissive_C:TickVisualEffect(DeltaTime) end
function UBP_VisualEffect_CaptureEmissive_C:OnEndVisualEffect() end
---@param EntryPoint int32
function UBP_VisualEffect_CaptureEmissive_C:ExecuteUbergraph_BP_VisualEffect_CaptureEmissive(EntryPoint) end


