---@meta

---@class ATemplateSequenceActor : AActor
---@field PlaybackSettings FMovieSceneSequencePlaybackSettings
---@field SequencePlayer UTemplateSequencePlayer
---@field TemplateSequence FSoftObjectPath
---@field BindingOverride FTemplateSequenceBindingOverrideData
ATemplateSequenceActor = {}

---@return ATemplateSequenceActor
function ATemplateSequenceActor:get() end

---@param InSequence UTemplateSequence
function ATemplateSequenceActor:SetSequence(InSequence) end
---@param Actor AActor
---@param bOverridesDefault boolean
function ATemplateSequenceActor:SetBinding(Actor, bOverridesDefault) end
---@return UTemplateSequence
function ATemplateSequenceActor:LoadSequence() end
---@return UTemplateSequencePlayer
function ATemplateSequenceActor:GetSequencePlayer() end
---@return UTemplateSequence
function ATemplateSequenceActor:GetSequence() end


---@class FTemplateSectionPropertyScale
---@field ObjectBinding FGuid
---@field PropertyBinding FMovieScenePropertyBinding
---@field PropertyScaleType ETemplateSectionPropertyScaleType
---@field FloatChannel FMovieSceneFloatChannel
FTemplateSectionPropertyScale = {}

---@return FTemplateSectionPropertyScale
function FTemplateSectionPropertyScale:get() end



---@class FTemplateSequenceBindingOverrideData
---@field Object TWeakObjectPtr<UObject>
---@field bOverridesDefault boolean
FTemplateSequenceBindingOverrideData = {}

---@return FTemplateSequenceBindingOverrideData
function FTemplateSequenceBindingOverrideData:get() end



---@class UCameraAnimationBoundObjectInstantiator : UMovieSceneEntityInstantiatorSystem
UCameraAnimationBoundObjectInstantiator = {}

---@return UCameraAnimationBoundObjectInstantiator
function UCameraAnimationBoundObjectInstantiator:get() end


---@class UCameraAnimationEntitySystemLinker : UMovieSceneEntitySystemLinker
UCameraAnimationEntitySystemLinker = {}

---@return UCameraAnimationEntitySystemLinker
function UCameraAnimationEntitySystemLinker:get() end


---@class UCameraAnimationSequence : UTemplateSequence
UCameraAnimationSequence = {}

---@return UCameraAnimationSequence
function UCameraAnimationSequence:get() end


---@class UCameraAnimationSequenceCameraStandIn : UObject
---@field FieldOfView float
---@field bConstrainAspectRatio boolean
---@field AspectRatio float
---@field PostProcessSettings FPostProcessSettings
---@field PostProcessBlendWeight float
---@field Filmback FCameraFilmbackSettings
---@field LensSettings FCameraLensSettings
---@field FocusSettings FCameraFocusSettings
---@field CurrentFocalLength float
---@field CurrentAperture float
---@field CurrentFocusDistance float
UCameraAnimationSequenceCameraStandIn = {}

---@return UCameraAnimationSequenceCameraStandIn
function UCameraAnimationSequenceCameraStandIn:get() end



---@class UCameraAnimationSequencePlayer : UObject
---@field BoundObjectOverride UObject
---@field Sequence UMovieSceneSequence
---@field RootTemplateInstance FMovieSceneRootEvaluationTemplateInstance
UCameraAnimationSequencePlayer = {}

---@return UCameraAnimationSequencePlayer
function UCameraAnimationSequencePlayer:get() end



---@class UCameraAnimationSequenceSubsystem : UWorldSubsystem
---@field Linker UMovieSceneEntitySystemLinker
UCameraAnimationSequenceSubsystem = {}

---@return UCameraAnimationSequenceSubsystem
function UCameraAnimationSequenceSubsystem:get() end



---@class UCameraAnimationSpawnableSystem : UMovieSceneEntitySystem
UCameraAnimationSpawnableSystem = {}

---@return UCameraAnimationSpawnableSystem
function UCameraAnimationSpawnableSystem:get() end


---@class USequenceCameraShakePattern : UCameraShakePattern
---@field Sequence UCameraAnimationSequence
---@field PlayRate float
---@field Scale float
---@field BlendInTime float
---@field BlendOutTime float
---@field RandomSegmentDuration float
---@field bRandomSegment boolean
---@field Player UCameraAnimationSequencePlayer
---@field CameraStandIn UCameraAnimationSequenceCameraStandIn
USequenceCameraShakePattern = {}

---@return USequenceCameraShakePattern
function USequenceCameraShakePattern:get() end



---@class USequenceCameraShakeTestUtil : UBlueprintFunctionLibrary
USequenceCameraShakeTestUtil = {}

---@return USequenceCameraShakeTestUtil
function USequenceCameraShakeTestUtil:get() end

---@param PlayerController APlayerController
---@param PPIndex int32
---@param OutPPSettings FPostProcessSettings
---@param OutPPBlendWeight float
---@return boolean
function USequenceCameraShakeTestUtil:GetPostProcessBlendCache(PlayerController, PPIndex, OutPPSettings, OutPPBlendWeight) end
---@param PlayerController APlayerController
---@return FMinimalViewInfo
function USequenceCameraShakeTestUtil:GetLastFrameCameraCachePOV(PlayerController) end
---@param PlayerController APlayerController
---@return FMinimalViewInfo
function USequenceCameraShakeTestUtil:GetCameraCachePOV(PlayerController) end


---@class UTemplateSequence : UMovieSceneSequence
---@field MovieScene UMovieScene
---@field BoundActorClass TSoftClassPtr<AActor>
---@field BoundPreviewActor TSoftObjectPtr<AActor>
---@field BoundActorComponents TMap<FGuid, FName>
UTemplateSequence = {}

---@return UTemplateSequence
function UTemplateSequence:get() end



---@class UTemplateSequencePlayer : UMovieSceneSequencePlayer
UTemplateSequencePlayer = {}

---@return UTemplateSequencePlayer
function UTemplateSequencePlayer:get() end

---@param WorldContextObject UObject
---@param TemplateSequence UTemplateSequence
---@param Settings FMovieSceneSequencePlaybackSettings
---@param OutActor ATemplateSequenceActor
---@return UTemplateSequencePlayer
function UTemplateSequencePlayer:CreateTemplateSequencePlayer(WorldContextObject, TemplateSequence, Settings, OutActor) end


---@class UTemplateSequencePropertyScalingEvaluatorSystem : UMovieSceneEntitySystem
UTemplateSequencePropertyScalingEvaluatorSystem = {}

---@return UTemplateSequencePropertyScalingEvaluatorSystem
function UTemplateSequencePropertyScalingEvaluatorSystem:get() end


---@class UTemplateSequencePropertyScalingInstantiatorSystem : UMovieSceneEntitySystem
UTemplateSequencePropertyScalingInstantiatorSystem = {}

---@return UTemplateSequencePropertyScalingInstantiatorSystem
function UTemplateSequencePropertyScalingInstantiatorSystem:get() end


---@class UTemplateSequenceSection : UMovieSceneSubSection
---@field PropertyScales TArray<FTemplateSectionPropertyScale>
UTemplateSequenceSection = {}

---@return UTemplateSequenceSection
function UTemplateSequenceSection:get() end



---@class UTemplateSequenceSystem : UMovieSceneEntitySystem
UTemplateSequenceSystem = {}

---@return UTemplateSequenceSystem
function UTemplateSequenceSystem:get() end


---@class UTemplateSequenceTrack : UMovieSceneSubTrack
UTemplateSequenceTrack = {}

---@return UTemplateSequenceTrack
function UTemplateSequenceTrack:get() end


