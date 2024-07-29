---@meta

---@class AGeometryCacheActor : AActor
---@field GeometryCacheComponent UGeometryCacheComponent
AGeometryCacheActor = {}

---@return AGeometryCacheActor
function AGeometryCacheActor:get() end

---@return UGeometryCacheComponent
function AGeometryCacheActor:GetGeometryCacheComponent() end


---@class FGeometryCacheMeshBatchInfo
FGeometryCacheMeshBatchInfo = {}

---@return FGeometryCacheMeshBatchInfo
function FGeometryCacheMeshBatchInfo:get() end


---@class FGeometryCacheMeshData
FGeometryCacheMeshData = {}

---@return FGeometryCacheMeshData
function FGeometryCacheMeshData:get() end


---@class FGeometryCacheVertexInfo
FGeometryCacheVertexInfo = {}

---@return FGeometryCacheVertexInfo
function FGeometryCacheVertexInfo:get() end


---@class FNiagaraGeometryCacheReference
---@field GeometryCache UGeometryCache
---@field GeometryCacheUserParamBinding FNiagaraUserParameterBinding
---@field OverrideMaterials TArray<UMaterialInterface>
FNiagaraGeometryCacheReference = {}

---@return FNiagaraGeometryCacheReference
function FNiagaraGeometryCacheReference:get() end



---@class FTrackRenderData
FTrackRenderData = {}

---@return FTrackRenderData
function FTrackRenderData:get() end


---@class UDEPRECATED_GeometryCacheTrack_FlipbookAnimation : UGeometryCacheTrack
---@field NumMeshSamples uint32
UDEPRECATED_GeometryCacheTrack_FlipbookAnimation = {}

---@return UDEPRECATED_GeometryCacheTrack_FlipbookAnimation
function UDEPRECATED_GeometryCacheTrack_FlipbookAnimation:get() end

---@param MeshData FGeometryCacheMeshData
---@param SampleTime float
function UDEPRECATED_GeometryCacheTrack_FlipbookAnimation:AddMeshSample(MeshData, SampleTime) end


---@class UDEPRECATED_GeometryCacheTrack_TransformAnimation : UGeometryCacheTrack
UDEPRECATED_GeometryCacheTrack_TransformAnimation = {}

---@return UDEPRECATED_GeometryCacheTrack_TransformAnimation
function UDEPRECATED_GeometryCacheTrack_TransformAnimation:get() end

---@param NewMeshData FGeometryCacheMeshData
function UDEPRECATED_GeometryCacheTrack_TransformAnimation:SetMesh(NewMeshData) end


---@class UDEPRECATED_GeometryCacheTrack_TransformGroupAnimation : UGeometryCacheTrack
UDEPRECATED_GeometryCacheTrack_TransformGroupAnimation = {}

---@return UDEPRECATED_GeometryCacheTrack_TransformGroupAnimation
function UDEPRECATED_GeometryCacheTrack_TransformGroupAnimation:get() end

---@param NewMeshData FGeometryCacheMeshData
function UDEPRECATED_GeometryCacheTrack_TransformGroupAnimation:SetMesh(NewMeshData) end


---@class UGeometryCache : UObject
---@field Materials TArray<UMaterialInterface>
---@field Tracks TArray<UGeometryCacheTrack>
---@field StartFrame int32
---@field EndFrame int32
---@field Hash uint64
UGeometryCache = {}

---@return UGeometryCache
function UGeometryCache:get() end



---@class UGeometryCacheCodecBase : UObject
---@field TopologyRanges TArray<int32>
UGeometryCacheCodecBase = {}

---@return UGeometryCacheCodecBase
function UGeometryCacheCodecBase:get() end



---@class UGeometryCacheCodecRaw : UGeometryCacheCodecBase
---@field DummyProperty int32
UGeometryCacheCodecRaw = {}

---@return UGeometryCacheCodecRaw
function UGeometryCacheCodecRaw:get() end



---@class UGeometryCacheCodecV1 : UGeometryCacheCodecBase
UGeometryCacheCodecV1 = {}

---@return UGeometryCacheCodecV1
function UGeometryCacheCodecV1:get() end


---@class UGeometryCacheComponent : UMeshComponent
---@field GeometryCache UGeometryCache
---@field bRunning boolean
---@field bLooping boolean
---@field bExtrapolateFrames boolean
---@field StartTimeOffset float
---@field PlaybackSpeed float
---@field MotionVectorScale float
---@field NumTracks int32
---@field ElapsedTime float
---@field Duration float
---@field bManualTick boolean
---@field bOverrideWireframeColor boolean
---@field WireframeOverrideColor FLinearColor
UGeometryCacheComponent = {}

---@return UGeometryCacheComponent
function UGeometryCacheComponent:get() end

---@param Time float
---@param bInIsRunning boolean
---@param bInBackwards boolean
---@param bInIsLooping boolean
function UGeometryCacheComponent:TickAtThisTime(Time, bInIsRunning, bInBackwards, bInIsLooping) end
function UGeometryCacheComponent:Stop() end
---@param Color FLinearColor
function UGeometryCacheComponent:SetWireframeOverrideColor(Color) end
---@param NewStartTimeOffset float
function UGeometryCacheComponent:SetStartTimeOffset(NewStartTimeOffset) end
---@param NewPlaybackSpeed float
function UGeometryCacheComponent:SetPlaybackSpeed(NewPlaybackSpeed) end
---@param bOverride boolean
function UGeometryCacheComponent:SetOverrideWireframeColor(bOverride) end
---@param NewMotionVectorScale float
function UGeometryCacheComponent:SetMotionVectorScale(NewMotionVectorScale) end
---@param bNewLooping boolean
function UGeometryCacheComponent:SetLooping(bNewLooping) end
---@param NewGeomCache UGeometryCache
---@return boolean
function UGeometryCacheComponent:SetGeometryCache(NewGeomCache) end
---@param bNewExtrapolating boolean
function UGeometryCacheComponent:SetExtrapolateFrames(bNewExtrapolating) end
function UGeometryCacheComponent:PlayReversedFromEnd() end
function UGeometryCacheComponent:PlayReversed() end
function UGeometryCacheComponent:PlayFromStart() end
function UGeometryCacheComponent:Play() end
function UGeometryCacheComponent:Pause() end
---@return boolean
function UGeometryCacheComponent:IsPlayingReversed() end
---@return boolean
function UGeometryCacheComponent:IsPlaying() end
---@return boolean
function UGeometryCacheComponent:IsLooping() end
---@return boolean
function UGeometryCacheComponent:IsExtrapolatingFrames() end
---@return FLinearColor
function UGeometryCacheComponent:GetWireframeOverrideColor() end
---@return float
function UGeometryCacheComponent:GetStartTimeOffset() end
---@return float
function UGeometryCacheComponent:GetPlaybackSpeed() end
---@return float
function UGeometryCacheComponent:GetPlaybackDirection() end
---@return boolean
function UGeometryCacheComponent:GetOverrideWireframeColor() end
---@return int32
function UGeometryCacheComponent:GetNumberOfFrames() end
---@return float
function UGeometryCacheComponent:GetMotionVectorScale() end
---@return float
function UGeometryCacheComponent:GetDuration() end
---@return float
function UGeometryCacheComponent:GetAnimationTime() end


---@class UGeometryCacheTrack : UObject
---@field Duration float
UGeometryCacheTrack = {}

---@return UGeometryCacheTrack
function UGeometryCacheTrack:get() end



---@class UGeometryCacheTrackStreamable : UGeometryCacheTrack
---@field Codec UGeometryCacheCodecBase
---@field StartSampleTime float
UGeometryCacheTrackStreamable = {}

---@return UGeometryCacheTrackStreamable
function UGeometryCacheTrackStreamable:get() end



---@class UNiagaraGeometryCacheRendererProperties : UNiagaraRendererProperties
---@field GeometryCaches TArray<FNiagaraGeometryCacheReference>
---@field bIsLooping boolean
---@field ComponentCountLimit uint32
---@field PositionBinding FNiagaraVariableAttributeBinding
---@field RotationBinding FNiagaraVariableAttributeBinding
---@field ScaleBinding FNiagaraVariableAttributeBinding
---@field ElapsedTimeBinding FNiagaraVariableAttributeBinding
---@field EnabledBinding FNiagaraVariableAttributeBinding
---@field ArrayIndexBinding FNiagaraVariableAttributeBinding
---@field RendererVisibilityTagBinding FNiagaraVariableAttributeBinding
---@field RendererVisibility int32
---@field bAssignComponentsOnParticleID boolean
UNiagaraGeometryCacheRendererProperties = {}

---@return UNiagaraGeometryCacheRendererProperties
function UNiagaraGeometryCacheRendererProperties:get() end



