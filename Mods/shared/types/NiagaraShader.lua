---@meta

---@class FNiagaraCompileEvent
---@field Severity FNiagaraCompileEventSeverity
---@field Message FString
---@field ShortDescription FString
---@field bDismissable boolean
---@field NodeGuid FGuid
---@field PinGuid FGuid
---@field StackGuids TArray<FGuid>
---@field Source FNiagaraCompileEventSource
FNiagaraCompileEvent = {}

---@return FNiagaraCompileEvent
function FNiagaraCompileEvent:get() end



---@class FNiagaraDataInterfaceGPUParamInfo
---@field DataInterfaceHLSLSymbol FString
---@field DIClassName FString
---@field ShaderParametersOffset uint32
---@field GeneratedFunctions TArray<FNiagaraDataInterfaceGeneratedFunction>
FNiagaraDataInterfaceGPUParamInfo = {}

---@return FNiagaraDataInterfaceGPUParamInfo
function FNiagaraDataInterfaceGPUParamInfo:get() end



---@class FNiagaraDataInterfaceGeneratedFunction
FNiagaraDataInterfaceGeneratedFunction = {}

---@return FNiagaraDataInterfaceGeneratedFunction
function FNiagaraDataInterfaceGeneratedFunction:get() end


---@class FNiagaraShaderScriptExternalConstant
---@field Type FName
---@field Name FString
FNiagaraShaderScriptExternalConstant = {}

---@return FNiagaraShaderScriptExternalConstant
function FNiagaraShaderScriptExternalConstant:get() end



---@class FNiagaraShaderScriptParametersMetadata
---@field DataInterfaceParamInfo TArray<FNiagaraDataInterfaceGPUParamInfo>
---@field LooseMetadataNames TArray<FString>
---@field bExternalConstantsInterpolated boolean
---@field ExternalConstants TArray<FNiagaraShaderScriptExternalConstant>
FNiagaraShaderScriptParametersMetadata = {}

---@return FNiagaraShaderScriptParametersMetadata
function FNiagaraShaderScriptParametersMetadata:get() end



---@class FSimulationStageMetaData
---@field SimulationStageName FName
---@field EnabledBinding FName
---@field ElementCountXBinding FName
---@field ElementCountYBinding FName
---@field ElementCountZBinding FName
---@field IterationSource FName
---@field ExecuteBehavior ENiagaraSimStageExecuteBehavior
---@field bWritesParticles boolean
---@field bPartialParticleUpdate boolean
---@field bParticleIterationStateEnabled boolean
---@field bOverrideElementCount boolean
---@field ParticleIterationStateBinding FName
---@field ParticleIterationStateRange FIntPoint
---@field OutputDestinations TArray<FName>
---@field InputDataInterfaces TArray<FName>
---@field NumIterations int32
---@field NumIterationsBinding FName
---@field GpuDispatchType ENiagaraGpuDispatchType
---@field GpuDispatchNumThreads FIntVector
FSimulationStageMetaData = {}

---@return FSimulationStageMetaData
function FSimulationStageMetaData:get() end



---@class UNiagaraScriptBase : UObject
UNiagaraScriptBase = {}

---@return UNiagaraScriptBase
function UNiagaraScriptBase:get() end


