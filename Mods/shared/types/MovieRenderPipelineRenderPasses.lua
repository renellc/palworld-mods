---@meta

---@class FMoviePipelinePostProcessPass
---@field bEnabled boolean
---@field Material TSoftObjectPtr<UMaterialInterface>
FMoviePipelinePostProcessPass = {}

---@return FMoviePipelinePostProcessPass
function FMoviePipelinePostProcessPass:get() end



---@class UMoviePipelineDeferredPassBase : UMoviePipelineImagePassBase
---@field bAccumulatorIncludesAlpha boolean
---@field bDisableMultisampleEffects boolean
---@field bUse32BitPostProcessMaterials boolean
---@field AdditionalPostProcessMaterials TArray<FMoviePipelinePostProcessPass>
---@field bRenderMainPass boolean
---@field bAddDefaultLayer boolean
---@field ActorLayers TArray<FActorLayer>
---@field DataLayers TArray<FSoftObjectPath>
---@field ActivePostProcessMaterials TArray<UMaterialInterface>
---@field StencilLayerMaterial UMaterialInterface
UMoviePipelineDeferredPassBase = {}

---@return UMoviePipelineDeferredPassBase
function UMoviePipelineDeferredPassBase:get() end



---@class UMoviePipelineDeferredPass_DetailLighting : UMoviePipelineDeferredPassBase
UMoviePipelineDeferredPass_DetailLighting = {}

---@return UMoviePipelineDeferredPass_DetailLighting
function UMoviePipelineDeferredPass_DetailLighting:get() end


---@class UMoviePipelineDeferredPass_LightingOnly : UMoviePipelineDeferredPassBase
UMoviePipelineDeferredPass_LightingOnly = {}

---@return UMoviePipelineDeferredPass_LightingOnly
function UMoviePipelineDeferredPass_LightingOnly:get() end


---@class UMoviePipelineDeferredPass_PathTracer : UMoviePipelineDeferredPassBase
---@field bReferenceMotionBlur boolean
UMoviePipelineDeferredPass_PathTracer = {}

---@return UMoviePipelineDeferredPass_PathTracer
function UMoviePipelineDeferredPass_PathTracer:get() end



---@class UMoviePipelineDeferredPass_ReflectionsOnly : UMoviePipelineDeferredPassBase
UMoviePipelineDeferredPass_ReflectionsOnly = {}

---@return UMoviePipelineDeferredPass_ReflectionsOnly
function UMoviePipelineDeferredPass_ReflectionsOnly:get() end


---@class UMoviePipelineDeferredPass_Unlit : UMoviePipelineDeferredPassBase
UMoviePipelineDeferredPass_Unlit = {}

---@return UMoviePipelineDeferredPass_Unlit
function UMoviePipelineDeferredPass_Unlit:get() end


---@class UMoviePipelineImagePassBase : UMoviePipelineRenderPass
UMoviePipelineImagePassBase = {}

---@return UMoviePipelineImagePassBase
function UMoviePipelineImagePassBase:get() end


---@class UMoviePipelineImageSequenceOutputBase : UMoviePipelineOutputBase
UMoviePipelineImageSequenceOutputBase = {}

---@return UMoviePipelineImageSequenceOutputBase
function UMoviePipelineImageSequenceOutputBase:get() end


---@class UMoviePipelineImageSequenceOutput_BMP : UMoviePipelineImageSequenceOutputBase
UMoviePipelineImageSequenceOutput_BMP = {}

---@return UMoviePipelineImageSequenceOutput_BMP
function UMoviePipelineImageSequenceOutput_BMP:get() end


---@class UMoviePipelineImageSequenceOutput_EXR : UMoviePipelineImageSequenceOutputBase
---@field Compression EEXRCompressionFormat
---@field bMultilayer boolean
UMoviePipelineImageSequenceOutput_EXR = {}

---@return UMoviePipelineImageSequenceOutput_EXR
function UMoviePipelineImageSequenceOutput_EXR:get() end



---@class UMoviePipelineImageSequenceOutput_JPG : UMoviePipelineImageSequenceOutputBase
UMoviePipelineImageSequenceOutput_JPG = {}

---@return UMoviePipelineImageSequenceOutput_JPG
function UMoviePipelineImageSequenceOutput_JPG:get() end


---@class UMoviePipelineImageSequenceOutput_PNG : UMoviePipelineImageSequenceOutputBase
---@field bWriteAlpha boolean
UMoviePipelineImageSequenceOutput_PNG = {}

---@return UMoviePipelineImageSequenceOutput_PNG
function UMoviePipelineImageSequenceOutput_PNG:get() end



---@class UMoviePipelineWaveOutput : UMoviePipelineOutputBase
---@field FileNameFormatOverride FString
UMoviePipelineWaveOutput = {}

---@return UMoviePipelineWaveOutput
function UMoviePipelineWaveOutput:get() end



