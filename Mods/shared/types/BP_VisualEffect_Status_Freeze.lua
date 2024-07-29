---@meta

---@class UBP_VisualEffect_Status_Freeze_C : UPalVisualEffectBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Effect UNiagaraComponent
---@field FadeOutTime double
---@field FadeOutTimer double
---@field FadeOutCurve UCurveFloat
---@field FadeOutTime01 double
---@field EffectAsset_Cube TMap<EPalSizeType, UNiagaraSystem>
---@field EffectAsset_End TMap<EPalSizeType, UNiagaraSystem>
UBP_VisualEffect_Status_Freeze_C = {}

---@return UBP_VisualEffect_Status_Freeze_C
function UBP_VisualEffect_Status_Freeze_C:get() end

---@param Value double
UBP_VisualEffect_Status_Freeze_C['Set Frostbite'] = function(Value) end
function UBP_VisualEffect_Status_Freeze_C:OnBeginVisualEffect() end
function UBP_VisualEffect_Status_Freeze_C:OnEndVisualEffect() end
---@param DeltaTime float
function UBP_VisualEffect_Status_Freeze_C:TerminatingTickVisualEffect(DeltaTime) end
---@param EntryPoint int32
function UBP_VisualEffect_Status_Freeze_C:ExecuteUbergraph_BP_VisualEffect_Status_Freeze(EntryPoint) end


