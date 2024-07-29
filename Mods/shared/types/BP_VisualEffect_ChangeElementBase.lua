---@meta

---@class UBP_VisualEffect_ChangeElementBase_C : UPalVisualEffectBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EffectAsset UNiagaraSystem
---@field EffectInstance UNiagaraComponent
---@field ChangeEffectAsset UNiagaraSystem
UBP_VisualEffect_ChangeElementBase_C = {}

---@return UBP_VisualEffect_ChangeElementBase_C
function UBP_VisualEffect_ChangeElementBase_C:get() end

function UBP_VisualEffect_ChangeElementBase_C:DeleteEffect() end
function UBP_VisualEffect_ChangeElementBase_C:SpawnhEffect() end
---@param Intensity double
function UBP_VisualEffect_ChangeElementBase_C:SetLimLight(Intensity) end
function UBP_VisualEffect_ChangeElementBase_C:OnBeginVisualEffect() end
function UBP_VisualEffect_ChangeElementBase_C:OnEndVisualEffect() end
---@param DeltaTime float
function UBP_VisualEffect_ChangeElementBase_C:TickVisualEffect(DeltaTime) end
---@param EntryPoint int32
function UBP_VisualEffect_ChangeElementBase_C:ExecuteUbergraph_BP_VisualEffect_ChangeElementBase(EntryPoint) end


