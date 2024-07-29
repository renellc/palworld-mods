---@meta

---@class AChaosCacheManager : AActor
---@field CacheCollection UChaosCacheCollection
---@field CacheMode ECacheMode
---@field StartMode EStartMode
---@field StartTime float
---@field ObservedComponents TArray<FObservedComponent>
AChaosCacheManager = {}

---@return AChaosCacheManager
function AChaosCacheManager:get() end

---@param InCacheName FName
function AChaosCacheManager:TriggerComponentByCache(InCacheName) end
---@param InComponent UPrimitiveComponent
function AChaosCacheManager:TriggerComponent(InComponent) end
function AChaosCacheManager:TriggerAll() end
---@param InStartTime float
function AChaosCacheManager:SetStartTime(InStartTime) end
---@param InIndex int32
function AChaosCacheManager:ResetSingleTransform(InIndex) end
function AChaosCacheManager:ResetAllComponentTransforms() end


---@class AChaosCachePlayer : AChaosCacheManager
AChaosCachePlayer = {}

---@return AChaosCachePlayer
function AChaosCachePlayer:get() end


---@class FBreakingEvent : FCacheEventBase
---@field Index int32
---@field Location FVector
---@field Velocity FVector
---@field AngularVelocity FVector
---@field Mass float
---@field BoundingBoxMin FVector
---@field BoundingBoxMax FVector
FBreakingEvent = {}

---@return FBreakingEvent
function FBreakingEvent:get() end



---@class FCacheEventBase
FCacheEventBase = {}

---@return FCacheEventBase
function FCacheEventBase:get() end


---@class FCacheEventTrack
---@field Name FName
---@field Struct UScriptStruct
---@field TimeStamps TArray<float>
FCacheEventTrack = {}

---@return FCacheEventTrack
function FCacheEventTrack:get() end



---@class FCacheSpawnableTemplate
---@field DuplicatedTemplate UObject
---@field InitialTransform FTransform
---@field ComponentTransform FTransform
FCacheSpawnableTemplate = {}

---@return FCacheSpawnableTemplate
function FCacheSpawnableTemplate:get() end



---@class FCollisionEvent : FCacheEventBase
---@field Location FVector
---@field AccumulatedImpulse FVector
---@field Normal FVector
---@field Velocity1 FVector
---@field Velocity2 FVector
---@field DeltaVelocity1 FVector
---@field DeltaVelocity2 FVector
---@field AngularVelocity1 FVector
---@field AngularVelocity2 FVector
---@field Mass1 float
---@field Mass2 float
---@field PenetrationDepth float
FCollisionEvent = {}

---@return FCollisionEvent
function FCollisionEvent:get() end



---@class FEnableStateEvent : FCacheEventBase
---@field Index int32
---@field bEnable boolean
FEnableStateEvent = {}

---@return FEnableStateEvent
function FEnableStateEvent:get() end



---@class FMovieSceneChaosCacheParams : FMovieSceneBaseCacheParams
---@field CacheCollection UChaosCacheCollection
FMovieSceneChaosCacheParams = {}

---@return FMovieSceneChaosCacheParams
function FMovieSceneChaosCacheParams:get() end



---@class FMovieSceneChaosCacheSectionTemplate : FMovieSceneEvalTemplate
---@field Params FMovieSceneChaosCacheSectionTemplateParameters
FMovieSceneChaosCacheSectionTemplate = {}

---@return FMovieSceneChaosCacheSectionTemplate
function FMovieSceneChaosCacheSectionTemplate:get() end



---@class FMovieSceneChaosCacheSectionTemplateParameters : FMovieSceneBaseCacheSectionTemplateParameters
---@field ChaosCacheParams FMovieSceneChaosCacheParams
FMovieSceneChaosCacheSectionTemplateParameters = {}

---@return FMovieSceneChaosCacheSectionTemplateParameters
function FMovieSceneChaosCacheSectionTemplateParameters:get() end



---@class FObservedComponent
---@field CacheName FName
---@field ComponentRef FComponentReference
---@field SoftComponentRef FSoftComponentReference
---@field bIsSimulating boolean
FObservedComponent = {}

---@return FObservedComponent
function FObservedComponent:get() end



---@class FParticleTransformTrack
---@field RawTransformTrack FRawAnimSequenceTrack
---@field BeginOffset float
---@field bDeactivateOnEnd boolean
---@field KeyTimestamps TArray<float>
FParticleTransformTrack = {}

---@return FParticleTransformTrack
function FParticleTransformTrack:get() end



---@class FPerParticleCacheData
---@field TransformData FParticleTransformTrack
---@field CurveData TMap<FName, FRichCurve>
FPerParticleCacheData = {}

---@return FPerParticleCacheData
function FPerParticleCacheData:get() end



---@class FRichCurves
---@field RichCurves TArray<FRichCurve>
FRichCurves = {}

---@return FRichCurves
function FRichCurves:get() end



---@class FTrailingEvent : FCacheEventBase
---@field Index int32
---@field Location FVector
---@field Velocity FVector
---@field AngularVelocity FVector
---@field BoundingBoxMin FVector
---@field BoundingBoxMax FVector
FTrailingEvent = {}

---@return FTrailingEvent
function FTrailingEvent:get() end



---@class UChaosCache : UObject
---@field RecordedDuration float
---@field NumRecordedFrames uint32
---@field TrackToParticle TArray<int32>
---@field ParticleTracks TArray<FPerParticleCacheData>
---@field ChannelsTracks TMap<FName, FRichCurves>
---@field CurveData TMap<FName, FRichCurve>
---@field EventTracks TMap<FName, FCacheEventTrack>
---@field Spawnable FCacheSpawnableTemplate
---@field AdapterGuid FGuid
---@field Version int32
UChaosCache = {}

---@return UChaosCache
function UChaosCache:get() end



---@class UChaosCacheCollection : UObject
---@field Caches TArray<UChaosCache>
UChaosCacheCollection = {}

---@return UChaosCacheCollection
function UChaosCacheCollection:get() end



---@class UMovieSceneChaosCacheSection : UMovieSceneBaseCacheSection
---@field Params FMovieSceneChaosCacheParams
UMovieSceneChaosCacheSection = {}

---@return UMovieSceneChaosCacheSection
function UMovieSceneChaosCacheSection:get() end



---@class UMovieSceneChaosCacheTrack : UMovieSceneNameableTrack
---@field AnimationSections TArray<UMovieSceneSection>
UMovieSceneChaosCacheTrack = {}

---@return UMovieSceneChaosCacheTrack
function UMovieSceneChaosCacheTrack:get() end



