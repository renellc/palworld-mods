---@meta

---@class FCurveParameterPair
---@field AnimCurveName FName
---@field UserVariableName FName
FCurveParameterPair = {}

---@return FCurveParameterPair
function FCurveParameterPair:get() end



---@class UAnimNotifyState_TimedNiagaraEffect : UAnimNotifyState
---@field Template UNiagaraSystem
---@field SocketName FName
---@field LocationOffset FVector
---@field RotationOffset FRotator
---@field bDestroyAtEnd boolean
UAnimNotifyState_TimedNiagaraEffect = {}

---@return UAnimNotifyState_TimedNiagaraEffect
function UAnimNotifyState_TimedNiagaraEffect:get() end

---@param MeshComp UMeshComponent
---@return UFXSystemComponent
function UAnimNotifyState_TimedNiagaraEffect:GetSpawnedEffect(MeshComp) end


---@class UAnimNotifyState_TimedNiagaraEffectAdvanced : UAnimNotifyState_TimedNiagaraEffect
---@field bEnableNormalizedNotifyProgress boolean
---@field NotifyProgressUserParameter FName
---@field AnimCurves TArray<FCurveParameterPair>
UAnimNotifyState_TimedNiagaraEffectAdvanced = {}

---@return UAnimNotifyState_TimedNiagaraEffectAdvanced
function UAnimNotifyState_TimedNiagaraEffectAdvanced:get() end

---@param MeshComp UMeshComponent
---@return float
function UAnimNotifyState_TimedNiagaraEffectAdvanced:GetNotifyProgress(MeshComp) end


---@class UAnimNotify_PlayNiagaraEffect : UAnimNotify
---@field Template UNiagaraSystem
---@field LocationOffset FVector
---@field RotationOffset FRotator
---@field Scale FVector
---@field bAbsoluteScale boolean
---@field Attached boolean
---@field SocketName FName
UAnimNotify_PlayNiagaraEffect = {}

---@return UAnimNotify_PlayNiagaraEffect
function UAnimNotify_PlayNiagaraEffect:get() end

---@return UFXSystemComponent
function UAnimNotify_PlayNiagaraEffect:GetSpawnedEffect() end


