---@meta

---@class FBoolParameterNameAndCurve
---@field ParameterName FName
---@field ParameterCurve FMovieSceneBoolChannel
FBoolParameterNameAndCurve = {}

---@return FBoolParameterNameAndCurve
function FBoolParameterNameAndCurve:get() end



---@class FColorParameterNameAndCurves
---@field ParameterName FName
---@field RedCurve FMovieSceneFloatChannel
---@field GreenCurve FMovieSceneFloatChannel
---@field BlueCurve FMovieSceneFloatChannel
---@field AlphaCurve FMovieSceneFloatChannel
FColorParameterNameAndCurves = {}

---@return FColorParameterNameAndCurves
function FColorParameterNameAndCurves:get() end



---@class FConstraintComponentData
---@field ConstraintName FName
FConstraintComponentData = {}

---@return FConstraintComponentData
function FConstraintComponentData:get() end



---@class FEventPayload
---@field EventName FName
---@field Parameters FMovieSceneEventParameters
FEventPayload = {}

---@return FEventPayload
function FEventPayload:get() end



---@class FLevelVisibilityComponentData
---@field Section UMovieSceneLevelVisibilitySection
FLevelVisibilityComponentData = {}

---@return FLevelVisibilityComponentData
function FLevelVisibilityComponentData:get() end



---@class FMovieScene3DLocationKeyStruct : FMovieSceneKeyStruct
---@field Location FVector
---@field Time FFrameNumber
FMovieScene3DLocationKeyStruct = {}

---@return FMovieScene3DLocationKeyStruct
function FMovieScene3DLocationKeyStruct:get() end



---@class FMovieScene3DPathSectionTemplate : FMovieSceneEvalTemplate
---@field PathBindingID FMovieSceneObjectBindingID
---@field TimingCurve FMovieSceneFloatChannel
---@field FrontAxisEnum MovieScene3DPathSection_Axis
---@field UpAxisEnum MovieScene3DPathSection_Axis
---@field bFollow boolean
---@field bReverse boolean
---@field bForceUpright boolean
FMovieScene3DPathSectionTemplate = {}

---@return FMovieScene3DPathSectionTemplate
function FMovieScene3DPathSectionTemplate:get() end



---@class FMovieScene3DRotationKeyStruct : FMovieSceneKeyStruct
---@field Rotation FRotator
---@field Time FFrameNumber
FMovieScene3DRotationKeyStruct = {}

---@return FMovieScene3DRotationKeyStruct
function FMovieScene3DRotationKeyStruct:get() end



---@class FMovieScene3DScaleKeyStruct : FMovieSceneKeyStruct
---@field Scale FVector3f
---@field Time FFrameNumber
FMovieScene3DScaleKeyStruct = {}

---@return FMovieScene3DScaleKeyStruct
function FMovieScene3DScaleKeyStruct:get() end



---@class FMovieScene3DTransformKeyStruct : FMovieSceneKeyStruct
---@field Location FVector
---@field Rotation FRotator
---@field Scale FVector3f
---@field Time FFrameNumber
FMovieScene3DTransformKeyStruct = {}

---@return FMovieScene3DTransformKeyStruct
function FMovieScene3DTransformKeyStruct:get() end



---@class FMovieSceneActorReferenceData : FMovieSceneChannel
---@field KeyTimes TArray<FFrameNumber>
---@field DefaultValue FMovieSceneActorReferenceKey
---@field KeyValues TArray<FMovieSceneActorReferenceKey>
FMovieSceneActorReferenceData = {}

---@return FMovieSceneActorReferenceData
function FMovieSceneActorReferenceData:get() end



---@class FMovieSceneActorReferenceKey
---@field Object FMovieSceneObjectBindingID
---@field ComponentName FName
---@field SocketName FName
FMovieSceneActorReferenceKey = {}

---@return FMovieSceneActorReferenceKey
function FMovieSceneActorReferenceKey:get() end



---@class FMovieSceneActorReferenceSectionTemplate : FMovieSceneEvalTemplate
---@field PropertyData FMovieScenePropertySectionData
---@field ActorReferenceData FMovieSceneActorReferenceData
FMovieSceneActorReferenceSectionTemplate = {}

---@return FMovieSceneActorReferenceSectionTemplate
function FMovieSceneActorReferenceSectionTemplate:get() end



---@class FMovieSceneAudioSectionTemplate : FMovieSceneEvalTemplate
---@field AudioSection UMovieSceneAudioSection
FMovieSceneAudioSectionTemplate = {}

---@return FMovieSceneAudioSectionTemplate
function FMovieSceneAudioSectionTemplate:get() end



---@class FMovieSceneBaseCacheParams
---@field FirstLoopStartFrameOffset FFrameNumber
---@field StartFrameOffset FFrameNumber
---@field EndFrameOffset FFrameNumber
---@field PlayRate float
---@field bReverse boolean
FMovieSceneBaseCacheParams = {}

---@return FMovieSceneBaseCacheParams
function FMovieSceneBaseCacheParams:get() end



---@class FMovieSceneBaseCacheSectionTemplateParameters
---@field SectionStartTime FFrameNumber
---@field SectionEndTime FFrameNumber
FMovieSceneBaseCacheSectionTemplateParameters = {}

---@return FMovieSceneBaseCacheSectionTemplateParameters
function FMovieSceneBaseCacheSectionTemplateParameters:get() end



---@class FMovieSceneBoolPropertySectionTemplate : FMovieScenePropertySectionTemplate
---@field BoolCurve FMovieSceneBoolChannel
FMovieSceneBoolPropertySectionTemplate = {}

---@return FMovieSceneBoolPropertySectionTemplate
function FMovieSceneBoolPropertySectionTemplate:get() end



---@class FMovieSceneCVarOverrides
---@field ValuesByCVar TMap<FString, FString>
FMovieSceneCVarOverrides = {}

---@return FMovieSceneCVarOverrides
function FMovieSceneCVarOverrides:get() end



---@class FMovieSceneCameraShakeSectionData
---@field ShakeClass TSubclassOf<UCameraShakeBase>
---@field PlayScale float
---@field PlaySpace ECameraShakePlaySpace
---@field UserDefinedPlaySpace FRotator
FMovieSceneCameraShakeSectionData = {}

---@return FMovieSceneCameraShakeSectionData
function FMovieSceneCameraShakeSectionData:get() end



---@class FMovieSceneCameraShakeSectionTemplate : FMovieSceneEvalTemplate
---@field SourceData FMovieSceneCameraShakeSectionData
---@field SectionStartTime FFrameNumber
FMovieSceneCameraShakeSectionTemplate = {}

---@return FMovieSceneCameraShakeSectionTemplate
function FMovieSceneCameraShakeSectionTemplate:get() end



---@class FMovieSceneCameraShakeSourceShakeSectionTemplate : FMovieSceneEvalTemplate
---@field SourceData FMovieSceneCameraShakeSectionData
---@field SectionStartTime FFrameNumber
---@field SectionEndTime FFrameNumber
FMovieSceneCameraShakeSourceShakeSectionTemplate = {}

---@return FMovieSceneCameraShakeSourceShakeSectionTemplate
function FMovieSceneCameraShakeSourceShakeSectionTemplate:get() end



---@class FMovieSceneCameraShakeSourceTrigger
---@field ShakeClass TSubclassOf<UCameraShakeBase>
---@field PlayScale float
---@field PlaySpace ECameraShakePlaySpace
---@field UserDefinedPlaySpace FRotator
FMovieSceneCameraShakeSourceTrigger = {}

---@return FMovieSceneCameraShakeSourceTrigger
function FMovieSceneCameraShakeSourceTrigger:get() end



---@class FMovieSceneCameraShakeSourceTriggerChannel : FMovieSceneChannel
---@field KeyTimes TArray<FFrameNumber>
---@field KeyValues TArray<FMovieSceneCameraShakeSourceTrigger>
FMovieSceneCameraShakeSourceTriggerChannel = {}

---@return FMovieSceneCameraShakeSourceTriggerChannel
function FMovieSceneCameraShakeSourceTriggerChannel:get() end



---@class FMovieSceneCameraShakeSourceTriggerSectionTemplate : FMovieSceneEvalTemplate
---@field TriggerTimes TArray<FFrameNumber>
---@field TriggerValues TArray<FMovieSceneCameraShakeSourceTrigger>
FMovieSceneCameraShakeSourceTriggerSectionTemplate = {}

---@return FMovieSceneCameraShakeSourceTriggerSectionTemplate
function FMovieSceneCameraShakeSourceTriggerSectionTemplate:get() end



---@class FMovieSceneColorKeyStruct : FMovieSceneKeyStruct
---@field Color FLinearColor
---@field Time FFrameNumber
FMovieSceneColorKeyStruct = {}

---@return FMovieSceneColorKeyStruct
function FMovieSceneColorKeyStruct:get() end



---@class FMovieSceneColorSectionTemplate : FMovieScenePropertySectionTemplate
---@field Curves FMovieSceneFloatChannel
---@field BlendType EMovieSceneBlendType
FMovieSceneColorSectionTemplate = {}

---@return FMovieSceneColorSectionTemplate
function FMovieSceneColorSectionTemplate:get() end



---@class FMovieSceneDataLayerComponentData
---@field Section UMovieSceneDataLayerSection
FMovieSceneDataLayerComponentData = {}

---@return FMovieSceneDataLayerComponentData
function FMovieSceneDataLayerComponentData:get() end



---@class FMovieSceneDoublePerlinNoiseChannel : FMovieSceneChannel
---@field PerlinNoiseParams FPerlinNoiseParams
FMovieSceneDoublePerlinNoiseChannel = {}

---@return FMovieSceneDoublePerlinNoiseChannel
function FMovieSceneDoublePerlinNoiseChannel:get() end



---@class FMovieSceneDoubleVectorKeyStructBase : FMovieSceneKeyStruct
---@field Time FFrameNumber
FMovieSceneDoubleVectorKeyStructBase = {}

---@return FMovieSceneDoubleVectorKeyStructBase
function FMovieSceneDoubleVectorKeyStructBase:get() end



---@class FMovieSceneEvent
---@field Ptrs FMovieSceneEventPtrs
FMovieSceneEvent = {}

---@return FMovieSceneEvent
function FMovieSceneEvent:get() end



---@class FMovieSceneEventChannel : FMovieSceneChannel
---@field KeyTimes TArray<FFrameNumber>
---@field KeyValues TArray<FMovieSceneEvent>
FMovieSceneEventChannel = {}

---@return FMovieSceneEventChannel
function FMovieSceneEventChannel:get() end



---@class FMovieSceneEventParameters
FMovieSceneEventParameters = {}

---@return FMovieSceneEventParameters
function FMovieSceneEventParameters:get() end


---@class FMovieSceneEventPayloadVariable
---@field Value FString
FMovieSceneEventPayloadVariable = {}

---@return FMovieSceneEventPayloadVariable
function FMovieSceneEventPayloadVariable:get() end



---@class FMovieSceneEventPtrs
---@field Function UFunction
---@field BoundObjectProperty TFieldPath<FProperty>
FMovieSceneEventPtrs = {}

---@return FMovieSceneEventPtrs
function FMovieSceneEventPtrs:get() end



---@class FMovieSceneEventSectionData : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field KeyValues TArray<FEventPayload>
FMovieSceneEventSectionData = {}

---@return FMovieSceneEventSectionData
function FMovieSceneEventSectionData:get() end



---@class FMovieSceneEventSectionTemplate : FMovieSceneEvalTemplate
---@field EventData FMovieSceneEventSectionData
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
FMovieSceneEventSectionTemplate = {}

---@return FMovieSceneEventSectionTemplate
function FMovieSceneEventSectionTemplate:get() end



---@class FMovieSceneEventTriggerData
---@field Ptrs FMovieSceneEventPtrs
---@field ObjectBindingID FGuid
FMovieSceneEventTriggerData = {}

---@return FMovieSceneEventTriggerData
function FMovieSceneEventTriggerData:get() end



---@class FMovieSceneFadeSectionTemplate : FMovieSceneEvalTemplate
---@field FadeCurve FMovieSceneFloatChannel
---@field FadeColor FLinearColor
---@field bFadeAudio boolean
FMovieSceneFadeSectionTemplate = {}

---@return FMovieSceneFadeSectionTemplate
function FMovieSceneFadeSectionTemplate:get() end



---@class FMovieSceneFloatPerlinNoiseChannel : FMovieSceneChannel
---@field PerlinNoiseParams FPerlinNoiseParams
FMovieSceneFloatPerlinNoiseChannel = {}

---@return FMovieSceneFloatPerlinNoiseChannel
function FMovieSceneFloatPerlinNoiseChannel:get() end



---@class FMovieSceneFloatVectorKeyStructBase : FMovieSceneKeyStruct
---@field Time FFrameNumber
FMovieSceneFloatVectorKeyStructBase = {}

---@return FMovieSceneFloatVectorKeyStructBase
function FMovieSceneFloatVectorKeyStructBase:get() end



---@class FMovieSceneObjectPropertyTemplate : FMovieScenePropertySectionTemplate
---@field ObjectChannel FMovieSceneObjectPathChannel
FMovieSceneObjectPropertyTemplate = {}

---@return FMovieSceneObjectPropertyTemplate
function FMovieSceneObjectPropertyTemplate:get() end



---@class FMovieSceneParameterSectionTemplate : FMovieSceneEvalTemplate
---@field Scalars TArray<FScalarParameterNameAndCurve>
---@field Bools TArray<FBoolParameterNameAndCurve>
---@field Vector2Ds TArray<FVector2DParameterNameAndCurves>
---@field Vectors TArray<FVectorParameterNameAndCurves>
---@field Colors TArray<FColorParameterNameAndCurves>
---@field Transforms TArray<FTransformParameterNameAndCurves>
FMovieSceneParameterSectionTemplate = {}

---@return FMovieSceneParameterSectionTemplate
function FMovieSceneParameterSectionTemplate:get() end



---@class FMovieSceneParticleChannel : FMovieSceneByteChannel
FMovieSceneParticleChannel = {}

---@return FMovieSceneParticleChannel
function FMovieSceneParticleChannel:get() end


---@class FMovieSceneParticleParameterSectionTemplate : FMovieSceneParameterSectionTemplate
FMovieSceneParticleParameterSectionTemplate = {}

---@return FMovieSceneParticleParameterSectionTemplate
function FMovieSceneParticleParameterSectionTemplate:get() end


---@class FMovieSceneParticleSectionTemplate : FMovieSceneEvalTemplate
---@field ParticleKeys FMovieSceneParticleChannel
FMovieSceneParticleSectionTemplate = {}

---@return FMovieSceneParticleSectionTemplate
function FMovieSceneParticleSectionTemplate:get() end



---@class FMovieScenePreAnimatedMaterialParameters
---@field PreviousMaterial UMaterialInterface
---@field PreviousParameterContainer UMaterialInterface
FMovieScenePreAnimatedMaterialParameters = {}

---@return FMovieScenePreAnimatedMaterialParameters
function FMovieScenePreAnimatedMaterialParameters:get() end



---@class FMovieSceneSkeletalAnimRootMotionTrackParams
FMovieSceneSkeletalAnimRootMotionTrackParams = {}

---@return FMovieSceneSkeletalAnimRootMotionTrackParams
function FMovieSceneSkeletalAnimRootMotionTrackParams:get() end


---@class FMovieSceneSkeletalAnimationParams
---@field Animation UAnimSequenceBase
---@field FirstLoopStartFrameOffset FFrameNumber
---@field StartFrameOffset FFrameNumber
---@field EndFrameOffset FFrameNumber
---@field PlayRate float
---@field bReverse boolean
---@field SlotName FName
---@field MirrorDataTable UMirrorDataTable
---@field Weight FMovieSceneFloatChannel
---@field bSkipAnimNotifiers boolean
---@field bForceCustomMode boolean
---@field SwapRootBone ESwapRootBone
---@field StartOffset float
---@field EndOffset float
FMovieSceneSkeletalAnimationParams = {}

---@return FMovieSceneSkeletalAnimationParams
function FMovieSceneSkeletalAnimationParams:get() end



---@class FMovieSceneSkeletalAnimationSectionTemplate : FMovieSceneEvalTemplate
---@field Params FMovieSceneSkeletalAnimationSectionTemplateParameters
FMovieSceneSkeletalAnimationSectionTemplate = {}

---@return FMovieSceneSkeletalAnimationSectionTemplate
function FMovieSceneSkeletalAnimationSectionTemplate:get() end



---@class FMovieSceneSkeletalAnimationSectionTemplateParameters : FMovieSceneSkeletalAnimationParams
---@field SectionStartTime FFrameNumber
---@field SectionEndTime FFrameNumber
FMovieSceneSkeletalAnimationSectionTemplateParameters = {}

---@return FMovieSceneSkeletalAnimationSectionTemplateParameters
function FMovieSceneSkeletalAnimationSectionTemplateParameters:get() end



---@class FMovieSceneSlomoSectionTemplate : FMovieSceneEvalTemplate
---@field SlomoCurve FMovieSceneFloatChannel
FMovieSceneSlomoSectionTemplate = {}

---@return FMovieSceneSlomoSectionTemplate
function FMovieSceneSlomoSectionTemplate:get() end



---@class FMovieSceneStringChannel : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field Values TArray<FString>
---@field DefaultValue FString
---@field bHasDefaultValue boolean
FMovieSceneStringChannel = {}

---@return FMovieSceneStringChannel
function FMovieSceneStringChannel:get() end



---@class FMovieSceneStringPropertySectionTemplate : FMovieScenePropertySectionTemplate
---@field StringCurve FMovieSceneStringChannel
FMovieSceneStringPropertySectionTemplate = {}

---@return FMovieSceneStringPropertySectionTemplate
function FMovieSceneStringPropertySectionTemplate:get() end



---@class FMovieSceneTransformMask
---@field mask uint32
FMovieSceneTransformMask = {}

---@return FMovieSceneTransformMask
function FMovieSceneTransformMask:get() end



---@class FMovieSceneVector2DKeyStruct : FMovieSceneDoubleVectorKeyStructBase
---@field Vector FVector2D
FMovieSceneVector2DKeyStruct = {}

---@return FMovieSceneVector2DKeyStruct
function FMovieSceneVector2DKeyStruct:get() end



---@class FMovieSceneVector2fKeyStruct : FMovieSceneFloatVectorKeyStructBase
---@field Vector FVector2f
FMovieSceneVector2fKeyStruct = {}

---@return FMovieSceneVector2fKeyStruct
function FMovieSceneVector2fKeyStruct:get() end



---@class FMovieSceneVector3dKeyStruct : FMovieSceneDoubleVectorKeyStructBase
---@field Vector FVector3d
FMovieSceneVector3dKeyStruct = {}

---@return FMovieSceneVector3dKeyStruct
function FMovieSceneVector3dKeyStruct:get() end



---@class FMovieSceneVector3fKeyStruct : FMovieSceneFloatVectorKeyStructBase
---@field Vector FVector3f
FMovieSceneVector3fKeyStruct = {}

---@return FMovieSceneVector3fKeyStruct
function FMovieSceneVector3fKeyStruct:get() end



---@class FMovieSceneVector4dKeyStruct : FMovieSceneDoubleVectorKeyStructBase
---@field Vector FVector4d
FMovieSceneVector4dKeyStruct = {}

---@return FMovieSceneVector4dKeyStruct
function FMovieSceneVector4dKeyStruct:get() end



---@class FMovieSceneVector4fKeyStruct : FMovieSceneFloatVectorKeyStructBase
---@field Vector FVector4f
FMovieSceneVector4fKeyStruct = {}

---@return FMovieSceneVector4fKeyStruct
function FMovieSceneVector4fKeyStruct:get() end



---@class FMovieSceneVisibilitySectionTemplate : FMovieSceneBoolPropertySectionTemplate
FMovieSceneVisibilitySectionTemplate = {}

---@return FMovieSceneVisibilitySectionTemplate
function FMovieSceneVisibilitySectionTemplate:get() end


---@class FPerlinNoiseParams
---@field Frequency float
---@field Amplitude double
---@field Offset float
FPerlinNoiseParams = {}

---@return FPerlinNoiseParams
function FPerlinNoiseParams:get() end



---@class FScalarParameterNameAndCurve
---@field ParameterName FName
---@field ParameterCurve FMovieSceneFloatChannel
FScalarParameterNameAndCurve = {}

---@return FScalarParameterNameAndCurve
function FScalarParameterNameAndCurve:get() end



---@class FTransformParameterNameAndCurves
---@field ParameterName FName
---@field Translation FMovieSceneFloatChannel
---@field Rotation FMovieSceneFloatChannel
---@field Scale FMovieSceneFloatChannel
FTransformParameterNameAndCurves = {}

---@return FTransformParameterNameAndCurves
function FTransformParameterNameAndCurves:get() end



---@class FVector2DParameterNameAndCurves
---@field ParameterName FName
---@field XCurve FMovieSceneFloatChannel
---@field YCurve FMovieSceneFloatChannel
FVector2DParameterNameAndCurves = {}

---@return FVector2DParameterNameAndCurves
function FVector2DParameterNameAndCurves:get() end



---@class FVectorParameterNameAndCurves
---@field ParameterName FName
---@field XCurve FMovieSceneFloatChannel
---@field YCurve FMovieSceneFloatChannel
---@field ZCurve FMovieSceneFloatChannel
FVectorParameterNameAndCurves = {}

---@return FVectorParameterNameAndCurves
function FVectorParameterNameAndCurves:get() end



---@class IMovieSceneConstrainedSection : IInterface
IMovieSceneConstrainedSection = {}

---@return IMovieSceneConstrainedSection
function IMovieSceneConstrainedSection:get() end


---@class IMovieSceneParameterSectionExtender : IInterface
IMovieSceneParameterSectionExtender = {}

---@return IMovieSceneParameterSectionExtender
function IMovieSceneParameterSectionExtender:get() end


---@class IMovieSceneTransformOrigin : IInterface
IMovieSceneTransformOrigin = {}

---@return IMovieSceneTransformOrigin
function IMovieSceneTransformOrigin:get() end

---@return FTransform
function IMovieSceneTransformOrigin:BP_GetTransformOrigin() end


---@class UBoolChannelEvaluatorSystem : UMovieSceneEntitySystem
UBoolChannelEvaluatorSystem = {}

---@return UBoolChannelEvaluatorSystem
function UBoolChannelEvaluatorSystem:get() end


---@class UByteChannelEvaluatorSystem : UMovieSceneEntitySystem
UByteChannelEvaluatorSystem = {}

---@return UByteChannelEvaluatorSystem
function UByteChannelEvaluatorSystem:get() end


---@class UDoubleChannelEvaluatorSystem : UMovieSceneEntitySystem
UDoubleChannelEvaluatorSystem = {}

---@return UDoubleChannelEvaluatorSystem
function UDoubleChannelEvaluatorSystem:get() end


---@class UDoublePerlinNoiseChannelEvaluatorSystem : UMovieSceneEntitySystem
UDoublePerlinNoiseChannelEvaluatorSystem = {}

---@return UDoublePerlinNoiseChannelEvaluatorSystem
function UDoublePerlinNoiseChannelEvaluatorSystem:get() end


---@class UFloatChannelEvaluatorSystem : UMovieSceneEntitySystem
UFloatChannelEvaluatorSystem = {}

---@return UFloatChannelEvaluatorSystem
function UFloatChannelEvaluatorSystem:get() end


---@class UFloatPerlinNoiseChannelEvaluatorSystem : UMovieSceneEntitySystem
UFloatPerlinNoiseChannelEvaluatorSystem = {}

---@return UFloatPerlinNoiseChannelEvaluatorSystem
function UFloatPerlinNoiseChannelEvaluatorSystem:get() end


---@class UIntegerChannelEvaluatorSystem : UMovieSceneEntitySystem
UIntegerChannelEvaluatorSystem = {}

---@return UIntegerChannelEvaluatorSystem
function UIntegerChannelEvaluatorSystem:get() end


---@class UMovieScene3DAttachSection : UMovieScene3DConstraintSection
---@field AttachSocketName FName
---@field AttachComponentName FName
---@field AttachmentLocationRule EAttachmentRule
---@field AttachmentRotationRule EAttachmentRule
---@field AttachmentScaleRule EAttachmentRule
---@field DetachmentLocationRule EDetachmentRule
---@field DetachmentRotationRule EDetachmentRule
---@field DetachmentScaleRule EDetachmentRule
UMovieScene3DAttachSection = {}

---@return UMovieScene3DAttachSection
function UMovieScene3DAttachSection:get() end



---@class UMovieScene3DAttachTrack : UMovieScene3DConstraintTrack
UMovieScene3DAttachTrack = {}

---@return UMovieScene3DAttachTrack
function UMovieScene3DAttachTrack:get() end


---@class UMovieScene3DConstraintSection : UMovieSceneSection
---@field ConstraintId FGuid
---@field ConstraintBindingID FMovieSceneObjectBindingID
UMovieScene3DConstraintSection = {}

---@return UMovieScene3DConstraintSection
function UMovieScene3DConstraintSection:get() end

---@param InConstraintBindingID FMovieSceneObjectBindingID
function UMovieScene3DConstraintSection:SetConstraintBindingID(InConstraintBindingID) end
---@return FMovieSceneObjectBindingID
function UMovieScene3DConstraintSection:GetConstraintBindingID() end


---@class UMovieScene3DConstraintTrack : UMovieSceneTrack
---@field ConstraintSections TArray<UMovieSceneSection>
UMovieScene3DConstraintTrack = {}

---@return UMovieScene3DConstraintTrack
function UMovieScene3DConstraintTrack:get() end



---@class UMovieScene3DPathSection : UMovieScene3DConstraintSection
---@field TimingCurve FMovieSceneFloatChannel
---@field FrontAxisEnum MovieScene3DPathSection_Axis
---@field UpAxisEnum MovieScene3DPathSection_Axis
---@field bFollow boolean
---@field bReverse boolean
---@field bForceUpright boolean
UMovieScene3DPathSection = {}

---@return UMovieScene3DPathSection
function UMovieScene3DPathSection:get() end



---@class UMovieScene3DPathTrack : UMovieScene3DConstraintTrack
UMovieScene3DPathTrack = {}

---@return UMovieScene3DPathTrack
function UMovieScene3DPathTrack:get() end


---@class UMovieScene3DTransformPropertySystem : UMovieScenePropertySystem
UMovieScene3DTransformPropertySystem = {}

---@return UMovieScene3DTransformPropertySystem
function UMovieScene3DTransformPropertySystem:get() end


---@class UMovieScene3DTransformSection : UMovieSceneSection
---@field TransformMask FMovieSceneTransformMask
---@field Translation FMovieSceneDoubleChannel
---@field Rotation FMovieSceneDoubleChannel
---@field Scale FMovieSceneDoubleChannel
---@field ManualWeight FMovieSceneFloatChannel
---@field OverrideRegistry UMovieSceneSectionChannelOverrideRegistry
---@field Constraints UMovieScene3DTransformSectionConstraints
---@field bUseQuaternionInterpolation boolean
UMovieScene3DTransformSection = {}

---@return UMovieScene3DTransformSection
function UMovieScene3DTransformSection:get() end



---@class UMovieScene3DTransformSectionConstraints : UObject
---@field ConstraintsChannels TArray<FConstraintAndActiveChannel>
UMovieScene3DTransformSectionConstraints = {}

---@return UMovieScene3DTransformSectionConstraints
function UMovieScene3DTransformSectionConstraints:get() end



---@class UMovieScene3DTransformTrack : UMovieScenePropertyTrack
UMovieScene3DTransformTrack = {}

---@return UMovieScene3DTransformTrack
function UMovieScene3DTransformTrack:get() end


---@class UMovieSceneActorReferenceSection : UMovieSceneSection
---@field ActorReferenceData FMovieSceneActorReferenceData
---@field ActorGuidIndexCurve FIntegralCurve
---@field ActorGuidStrings TArray<FString>
UMovieSceneActorReferenceSection = {}

---@return UMovieSceneActorReferenceSection
function UMovieSceneActorReferenceSection:get() end



---@class UMovieSceneActorReferenceTrack : UMovieScenePropertyTrack
UMovieSceneActorReferenceTrack = {}

---@return UMovieSceneActorReferenceTrack
function UMovieSceneActorReferenceTrack:get() end


---@class UMovieSceneAsyncAction_SequencePrediction : UBlueprintAsyncActionBase
---@field Result FMovieSceneAsyncAction_SequencePredictionResult
---@field Failure FMovieSceneAsyncAction_SequencePredictionFailure
---@field SequencePlayer UMovieSceneSequencePlayer
---@field SceneComponent USceneComponent
UMovieSceneAsyncAction_SequencePrediction = {}

---@return UMovieSceneAsyncAction_SequencePrediction
function UMovieSceneAsyncAction_SequencePrediction:get() end

---@param Player UMovieSceneSequencePlayer
---@param TargetComponent USceneComponent
---@param TimeInSeconds float
---@return UMovieSceneAsyncAction_SequencePrediction
function UMovieSceneAsyncAction_SequencePrediction:PredictWorldTransformAtTime(Player, TargetComponent, TimeInSeconds) end
---@param Player UMovieSceneSequencePlayer
---@param TargetComponent USceneComponent
---@param FrameTime FFrameTime
---@return UMovieSceneAsyncAction_SequencePrediction
function UMovieSceneAsyncAction_SequencePrediction:PredictWorldTransformAtFrame(Player, TargetComponent, FrameTime) end
---@param Player UMovieSceneSequencePlayer
---@param TargetComponent USceneComponent
---@param TimeInSeconds float
---@return UMovieSceneAsyncAction_SequencePrediction
function UMovieSceneAsyncAction_SequencePrediction:PredictLocalTransformAtTime(Player, TargetComponent, TimeInSeconds) end
---@param Player UMovieSceneSequencePlayer
---@param TargetComponent USceneComponent
---@param FrameTime FFrameTime
---@return UMovieSceneAsyncAction_SequencePrediction
function UMovieSceneAsyncAction_SequencePrediction:PredictLocalTransformAtFrame(Player, TargetComponent, FrameTime) end


---@class UMovieSceneAudioSection : UMovieSceneSection
---@field Sound USoundBase
---@field StartFrameOffset FFrameNumber
---@field StartOffset float
---@field AudioStartTime float
---@field AudioDilationFactor float
---@field AudioVolume float
---@field SoundVolume FMovieSceneFloatChannel
---@field PitchMultiplier FMovieSceneFloatChannel
---@field Inputs_Float TMap<FName, FMovieSceneFloatChannel>
---@field Inputs_String TMap<FName, FMovieSceneStringChannel>
---@field Inputs_Bool TMap<FName, FMovieSceneBoolChannel>
---@field Inputs_Int TMap<FName, FMovieSceneIntegerChannel>
---@field Inputs_Trigger TMap<FName, FMovieSceneAudioTriggerChannel>
---@field AttachActorData FMovieSceneActorReferenceData
---@field bLooping boolean
---@field bSuppressSubtitles boolean
---@field bOverrideAttenuation boolean
---@field AttenuationSettings USoundAttenuation
---@field OnQueueSubtitles FMovieSceneAudioSectionOnQueueSubtitles
---@field OnAudioFinished FMovieSceneAudioSectionOnAudioFinished
---@field OnAudioPlaybackPercent FMovieSceneAudioSectionOnAudioPlaybackPercent
UMovieSceneAudioSection = {}

---@return UMovieSceneAudioSection
function UMovieSceneAudioSection:get() end

---@param InStartOffset FFrameNumber
function UMovieSceneAudioSection:SetStartOffset(InStartOffset) end
---@param InSound USoundBase
function UMovieSceneAudioSection:SetSound(InSound) end
---@return FFrameNumber
function UMovieSceneAudioSection:GetStartOffset() end
---@return USoundBase
function UMovieSceneAudioSection:GetSound() end


---@class UMovieSceneAudioTrack : UMovieSceneNameableTrack
---@field AudioSections TArray<UMovieSceneSection>
UMovieSceneAudioTrack = {}

---@return UMovieSceneAudioTrack
function UMovieSceneAudioTrack:get() end



---@class UMovieSceneBaseCacheSection : UMovieSceneSection
UMovieSceneBaseCacheSection = {}

---@return UMovieSceneBaseCacheSection
function UMovieSceneBaseCacheSection:get() end


---@class UMovieSceneBaseValueEvaluatorSystem : UMovieSceneEntitySystem
UMovieSceneBaseValueEvaluatorSystem = {}

---@return UMovieSceneBaseValueEvaluatorSystem
function UMovieSceneBaseValueEvaluatorSystem:get() end


---@class UMovieSceneBoolPropertySystem : UMovieScenePropertySystem
UMovieSceneBoolPropertySystem = {}

---@return UMovieSceneBoolPropertySystem
function UMovieSceneBoolPropertySystem:get() end


---@class UMovieSceneBoolTrack : UMovieScenePropertyTrack
UMovieSceneBoolTrack = {}

---@return UMovieSceneBoolTrack
function UMovieSceneBoolTrack:get() end


---@class UMovieSceneBytePropertySystem : UMovieScenePropertySystem
UMovieSceneBytePropertySystem = {}

---@return UMovieSceneBytePropertySystem
function UMovieSceneBytePropertySystem:get() end


---@class UMovieSceneByteSection : UMovieSceneSection
---@field ByteCurve FMovieSceneByteChannel
UMovieSceneByteSection = {}

---@return UMovieSceneByteSection
function UMovieSceneByteSection:get() end



---@class UMovieSceneByteTrack : UMovieScenePropertyTrack
---@field Enum UEnum
UMovieSceneByteTrack = {}

---@return UMovieSceneByteTrack
function UMovieSceneByteTrack:get() end



---@class UMovieSceneCVarSection : UMovieSceneSection
---@field ConsoleVariables FMovieSceneCVarOverrides
UMovieSceneCVarSection = {}

---@return UMovieSceneCVarSection
function UMovieSceneCVarSection:get() end

---@param InString FString
function UMovieSceneCVarSection:SetFromString(InString) end
---@return FString
function UMovieSceneCVarSection:GetString() end


---@class UMovieSceneCVarTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
UMovieSceneCVarTrack = {}

---@return UMovieSceneCVarTrack
function UMovieSceneCVarTrack:get() end



---@class UMovieSceneCVarTrackInstance : UMovieSceneTrackInstance
UMovieSceneCVarTrackInstance = {}

---@return UMovieSceneCVarTrackInstance
function UMovieSceneCVarTrackInstance:get() end


---@class UMovieSceneCameraCutSection : UMovieSceneSection
---@field bLockPreviousCamera boolean
---@field CameraGuid FGuid
---@field CameraBindingID FMovieSceneObjectBindingID
---@field InitialCameraCutTransform FTransform
---@field bHasInitialCameraCutTransform boolean
UMovieSceneCameraCutSection = {}

---@return UMovieSceneCameraCutSection
function UMovieSceneCameraCutSection:get() end

---@param InCameraBindingID FMovieSceneObjectBindingID
function UMovieSceneCameraCutSection:SetCameraBindingID(InCameraBindingID) end
---@return FMovieSceneObjectBindingID
function UMovieSceneCameraCutSection:GetCameraBindingID() end


---@class UMovieSceneCameraCutTrack : UMovieSceneNameableTrack
---@field bCanBlend boolean
---@field Sections TArray<UMovieSceneSection>
UMovieSceneCameraCutTrack = {}

---@return UMovieSceneCameraCutTrack
function UMovieSceneCameraCutTrack:get() end



---@class UMovieSceneCameraCutTrackInstance : UMovieSceneTrackInstance
UMovieSceneCameraCutTrackInstance = {}

---@return UMovieSceneCameraCutTrackInstance
function UMovieSceneCameraCutTrackInstance:get() end


---@class UMovieSceneCameraShakeEvaluator : UObject
UMovieSceneCameraShakeEvaluator = {}

---@return UMovieSceneCameraShakeEvaluator
function UMovieSceneCameraShakeEvaluator:get() end


---@class UMovieSceneCameraShakeSection : UMovieSceneSection
---@field ShakeData FMovieSceneCameraShakeSectionData
---@field ShakeClass TSubclassOf<UCameraShakeBase>
---@field PlayScale float
---@field PlaySpace ECameraShakePlaySpace
---@field UserDefinedPlaySpace FRotator
UMovieSceneCameraShakeSection = {}

---@return UMovieSceneCameraShakeSection
function UMovieSceneCameraShakeSection:get() end



---@class UMovieSceneCameraShakeSourceShakeSection : UMovieSceneSection
---@field ShakeData FMovieSceneCameraShakeSectionData
UMovieSceneCameraShakeSourceShakeSection = {}

---@return UMovieSceneCameraShakeSourceShakeSection
function UMovieSceneCameraShakeSourceShakeSection:get() end



---@class UMovieSceneCameraShakeSourceShakeTrack : UMovieSceneNameableTrack
---@field CameraShakeSections TArray<UMovieSceneSection>
UMovieSceneCameraShakeSourceShakeTrack = {}

---@return UMovieSceneCameraShakeSourceShakeTrack
function UMovieSceneCameraShakeSourceShakeTrack:get() end



---@class UMovieSceneCameraShakeSourceTriggerSection : UMovieSceneSection
---@field Channel FMovieSceneCameraShakeSourceTriggerChannel
UMovieSceneCameraShakeSourceTriggerSection = {}

---@return UMovieSceneCameraShakeSourceTriggerSection
function UMovieSceneCameraShakeSourceTriggerSection:get() end



---@class UMovieSceneCameraShakeSourceTriggerTrack : UMovieSceneTrack
---@field Sections TArray<UMovieSceneSection>
UMovieSceneCameraShakeSourceTriggerTrack = {}

---@return UMovieSceneCameraShakeSourceTriggerTrack
function UMovieSceneCameraShakeSourceTriggerTrack:get() end



---@class UMovieSceneCameraShakeTrack : UMovieSceneNameableTrack
---@field CameraShakeSections TArray<UMovieSceneSection>
UMovieSceneCameraShakeTrack = {}

---@return UMovieSceneCameraShakeTrack
function UMovieSceneCameraShakeTrack:get() end



---@class UMovieSceneCinematicShotSection : UMovieSceneSubSection
---@field ShotDisplayName FString
---@field DisplayName FText
UMovieSceneCinematicShotSection = {}

---@return UMovieSceneCinematicShotSection
function UMovieSceneCinematicShotSection:get() end

---@param InShotDisplayName FString
function UMovieSceneCinematicShotSection:SetShotDisplayName(InShotDisplayName) end
---@return FString
function UMovieSceneCinematicShotSection:GetShotDisplayName() end


---@class UMovieSceneCinematicShotTrack : UMovieSceneSubTrack
UMovieSceneCinematicShotTrack = {}

---@return UMovieSceneCinematicShotTrack
function UMovieSceneCinematicShotTrack:get() end


---@class UMovieSceneColorPropertySystem : UMovieScenePropertySystem
UMovieSceneColorPropertySystem = {}

---@return UMovieSceneColorPropertySystem
function UMovieSceneColorPropertySystem:get() end


---@class UMovieSceneColorSection : UMovieSceneSection
---@field RedCurve FMovieSceneFloatChannel
---@field GreenCurve FMovieSceneFloatChannel
---@field BlueCurve FMovieSceneFloatChannel
---@field AlphaCurve FMovieSceneFloatChannel
UMovieSceneColorSection = {}

---@return UMovieSceneColorSection
function UMovieSceneColorSection:get() end



---@class UMovieSceneColorTrack : UMovieScenePropertyTrack
---@field bIsSlateColor boolean
UMovieSceneColorTrack = {}

---@return UMovieSceneColorTrack
function UMovieSceneColorTrack:get() end



---@class UMovieSceneComponentAttachmentInvalidatorSystem : UMovieSceneEntityInstantiatorSystem
UMovieSceneComponentAttachmentInvalidatorSystem = {}

---@return UMovieSceneComponentAttachmentInvalidatorSystem
function UMovieSceneComponentAttachmentInvalidatorSystem:get() end


---@class UMovieSceneComponentAttachmentSystem : UMovieSceneEntityInstantiatorSystem
UMovieSceneComponentAttachmentSystem = {}

---@return UMovieSceneComponentAttachmentSystem
function UMovieSceneComponentAttachmentSystem:get() end


---@class UMovieSceneComponentMaterialSystem : UMovieSceneEntitySystem
UMovieSceneComponentMaterialSystem = {}

---@return UMovieSceneComponentMaterialSystem
function UMovieSceneComponentMaterialSystem:get() end


---@class UMovieSceneComponentMaterialTrack : UMovieSceneMaterialTrack
---@field MaterialIndex int32
UMovieSceneComponentMaterialTrack = {}

---@return UMovieSceneComponentMaterialTrack
function UMovieSceneComponentMaterialTrack:get() end



---@class UMovieSceneComponentMobilitySystem : UMovieSceneEntityInstantiatorSystem
UMovieSceneComponentMobilitySystem = {}

---@return UMovieSceneComponentMobilitySystem
function UMovieSceneComponentMobilitySystem:get() end


---@class UMovieSceneComponentTransformSystem : UMovieScenePropertySystem
UMovieSceneComponentTransformSystem = {}

---@return UMovieSceneComponentTransformSystem
function UMovieSceneComponentTransformSystem:get() end


---@class UMovieSceneConstraintSystem : UMovieSceneEntitySystem
UMovieSceneConstraintSystem = {}

---@return UMovieSceneConstraintSystem
function UMovieSceneConstraintSystem:get() end


---@class UMovieSceneDataLayerSection : UMovieSceneSection
---@field DataLayers TArray<FActorDataLayer>
---@field DataLayerAssets TArray<UDataLayerAsset>
---@field DesiredState EDataLayerRuntimeState
---@field PrerollState EDataLayerRuntimeState
---@field bFlushOnUnload boolean
UMovieSceneDataLayerSection = {}

---@return UMovieSceneDataLayerSection
function UMovieSceneDataLayerSection:get() end

---@param InPrerollState EDataLayerRuntimeState
function UMovieSceneDataLayerSection:SetPrerollState(InPrerollState) end
---@param bFlushOnUnload boolean
function UMovieSceneDataLayerSection:SetFlushOnUnload(bFlushOnUnload) end
---@param InDesiredState EDataLayerRuntimeState
function UMovieSceneDataLayerSection:SetDesiredState(InDesiredState) end
---@param InDataLayers TArray<FActorDataLayer>
function UMovieSceneDataLayerSection:SetDataLayers(InDataLayers) end
---@param InDataLayerAssets TArray<UDataLayerAsset>
function UMovieSceneDataLayerSection:SetDataLayerAssets(InDataLayerAssets) end
---@return EDataLayerRuntimeState
function UMovieSceneDataLayerSection:GetPrerollState() end
---@return boolean
function UMovieSceneDataLayerSection:GetFlushOnUnload() end
---@return EDataLayerRuntimeState
function UMovieSceneDataLayerSection:GetDesiredState() end
---@return TArray<FActorDataLayer>
function UMovieSceneDataLayerSection:GetDataLayers() end
---@return TArray<UDataLayerAsset>
function UMovieSceneDataLayerSection:GetDataLayerAssets() end


---@class UMovieSceneDataLayerSystem : UMovieSceneEntitySystem
UMovieSceneDataLayerSystem = {}

---@return UMovieSceneDataLayerSystem
function UMovieSceneDataLayerSystem:get() end


---@class UMovieSceneDataLayerTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
UMovieSceneDataLayerTrack = {}

---@return UMovieSceneDataLayerTrack
function UMovieSceneDataLayerTrack:get() end



---@class UMovieSceneDeferredComponentMovementSystem : UMovieSceneEntitySystem
UMovieSceneDeferredComponentMovementSystem = {}

---@return UMovieSceneDeferredComponentMovementSystem
function UMovieSceneDeferredComponentMovementSystem:get() end


---@class UMovieSceneDoublePerlinNoiseChannelContainer : UMovieSceneChannelOverrideContainer
---@field PerlinNoiseChannel FMovieSceneDoublePerlinNoiseChannel
UMovieSceneDoublePerlinNoiseChannelContainer = {}

---@return UMovieSceneDoublePerlinNoiseChannelContainer
function UMovieSceneDoublePerlinNoiseChannelContainer:get() end



---@class UMovieSceneDoublePropertySystem : UMovieScenePropertySystem
UMovieSceneDoublePropertySystem = {}

---@return UMovieSceneDoublePropertySystem
function UMovieSceneDoublePropertySystem:get() end


---@class UMovieSceneDoubleSection : UMovieSceneSection
---@field DoubleCurve FMovieSceneDoubleChannel
UMovieSceneDoubleSection = {}

---@return UMovieSceneDoubleSection
function UMovieSceneDoubleSection:get() end



---@class UMovieSceneDoubleTrack : UMovieScenePropertyTrack
UMovieSceneDoubleTrack = {}

---@return UMovieSceneDoubleTrack
function UMovieSceneDoubleTrack:get() end


---@class UMovieSceneDoubleVectorPropertySystem : UMovieScenePropertySystem
UMovieSceneDoubleVectorPropertySystem = {}

---@return UMovieSceneDoubleVectorPropertySystem
function UMovieSceneDoubleVectorPropertySystem:get() end


---@class UMovieSceneDoubleVectorSection : UMovieSceneSection
---@field Curves FMovieSceneDoubleChannel
---@field ChannelsUsed int32
UMovieSceneDoubleVectorSection = {}

---@return UMovieSceneDoubleVectorSection
function UMovieSceneDoubleVectorSection:get() end



---@class UMovieSceneDoubleVectorTrack : UMovieScenePropertyTrack
---@field NumChannelsUsed int32
UMovieSceneDoubleVectorTrack = {}

---@return UMovieSceneDoubleVectorTrack
function UMovieSceneDoubleVectorTrack:get() end



---@class UMovieSceneEnumPropertySystem : UMovieScenePropertySystem
UMovieSceneEnumPropertySystem = {}

---@return UMovieSceneEnumPropertySystem
function UMovieSceneEnumPropertySystem:get() end


---@class UMovieSceneEnumSection : UMovieSceneSection
---@field EnumCurve FMovieSceneByteChannel
UMovieSceneEnumSection = {}

---@return UMovieSceneEnumSection
function UMovieSceneEnumSection:get() end



---@class UMovieSceneEnumTrack : UMovieScenePropertyTrack
---@field Enum UEnum
UMovieSceneEnumTrack = {}

---@return UMovieSceneEnumTrack
function UMovieSceneEnumTrack:get() end



---@class UMovieSceneEulerTransformPropertySystem : UMovieScenePropertySystem
UMovieSceneEulerTransformPropertySystem = {}

---@return UMovieSceneEulerTransformPropertySystem
function UMovieSceneEulerTransformPropertySystem:get() end


---@class UMovieSceneEulerTransformTrack : UMovieScenePropertyTrack
UMovieSceneEulerTransformTrack = {}

---@return UMovieSceneEulerTransformTrack
function UMovieSceneEulerTransformTrack:get() end


---@class UMovieSceneEventRepeaterSection : UMovieSceneEventSectionBase
---@field Event FMovieSceneEvent
UMovieSceneEventRepeaterSection = {}

---@return UMovieSceneEventRepeaterSection
function UMovieSceneEventRepeaterSection:get() end



---@class UMovieSceneEventSection : UMovieSceneSection
---@field Events FNameCurve
---@field EventData FMovieSceneEventSectionData
UMovieSceneEventSection = {}

---@return UMovieSceneEventSection
function UMovieSceneEventSection:get() end



---@class UMovieSceneEventSectionBase : UMovieSceneSection
UMovieSceneEventSectionBase = {}

---@return UMovieSceneEventSectionBase
function UMovieSceneEventSectionBase:get() end


---@class UMovieSceneEventSystem : UMovieSceneEntitySystem
UMovieSceneEventSystem = {}

---@return UMovieSceneEventSystem
function UMovieSceneEventSystem:get() end


---@class UMovieSceneEventTrack : UMovieSceneNameableTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field EventPosition EFireEventsAtPosition
---@field Sections TArray<UMovieSceneSection>
UMovieSceneEventTrack = {}

---@return UMovieSceneEventTrack
function UMovieSceneEventTrack:get() end



---@class UMovieSceneEventTriggerSection : UMovieSceneEventSectionBase
---@field EventChannel FMovieSceneEventChannel
UMovieSceneEventTriggerSection = {}

---@return UMovieSceneEventTriggerSection
function UMovieSceneEventTriggerSection:get() end



---@class UMovieSceneFadeSection : UMovieSceneSection
---@field FloatCurve FMovieSceneFloatChannel
---@field FadeColor FLinearColor
---@field bFadeAudio boolean
UMovieSceneFadeSection = {}

---@return UMovieSceneFadeSection
function UMovieSceneFadeSection:get() end



---@class UMovieSceneFadeTrack : UMovieSceneFloatTrack
UMovieSceneFadeTrack = {}

---@return UMovieSceneFadeTrack
function UMovieSceneFadeTrack:get() end


---@class UMovieSceneFloatPerlinNoiseChannelContainer : UMovieSceneChannelOverrideContainer
---@field PerlinNoiseChannel FMovieSceneFloatPerlinNoiseChannel
UMovieSceneFloatPerlinNoiseChannelContainer = {}

---@return UMovieSceneFloatPerlinNoiseChannelContainer
function UMovieSceneFloatPerlinNoiseChannelContainer:get() end



---@class UMovieSceneFloatPropertySystem : UMovieScenePropertySystem
UMovieSceneFloatPropertySystem = {}

---@return UMovieSceneFloatPropertySystem
function UMovieSceneFloatPropertySystem:get() end


---@class UMovieSceneFloatSection : UMovieSceneSection
---@field FloatCurve FMovieSceneFloatChannel
---@field OverrideRegistry UMovieSceneSectionChannelOverrideRegistry
UMovieSceneFloatSection = {}

---@return UMovieSceneFloatSection
function UMovieSceneFloatSection:get() end



---@class UMovieSceneFloatTrack : UMovieScenePropertyTrack
UMovieSceneFloatTrack = {}

---@return UMovieSceneFloatTrack
function UMovieSceneFloatTrack:get() end


---@class UMovieSceneFloatVectorPropertySystem : UMovieScenePropertySystem
UMovieSceneFloatVectorPropertySystem = {}

---@return UMovieSceneFloatVectorPropertySystem
function UMovieSceneFloatVectorPropertySystem:get() end


---@class UMovieSceneFloatVectorSection : UMovieSceneSection
---@field Curves FMovieSceneFloatChannel
---@field ChannelsUsed int32
UMovieSceneFloatVectorSection = {}

---@return UMovieSceneFloatVectorSection
function UMovieSceneFloatVectorSection:get() end



---@class UMovieSceneFloatVectorTrack : UMovieScenePropertyTrack
---@field NumChannelsUsed int32
UMovieSceneFloatVectorTrack = {}

---@return UMovieSceneFloatVectorTrack
function UMovieSceneFloatVectorTrack:get() end



---@class UMovieSceneHierarchicalBiasSystem : UMovieSceneEntityInstantiatorSystem
UMovieSceneHierarchicalBiasSystem = {}

---@return UMovieSceneHierarchicalBiasSystem
function UMovieSceneHierarchicalBiasSystem:get() end


---@class UMovieSceneHierarchicalEasingInstantiatorSystem : UMovieSceneEntityInstantiatorSystem
UMovieSceneHierarchicalEasingInstantiatorSystem = {}

---@return UMovieSceneHierarchicalEasingInstantiatorSystem
function UMovieSceneHierarchicalEasingInstantiatorSystem:get() end


---@class UMovieSceneInitialValueSystem : UMovieSceneEntityInstantiatorSystem
UMovieSceneInitialValueSystem = {}

---@return UMovieSceneInitialValueSystem
function UMovieSceneInitialValueSystem:get() end


---@class UMovieSceneIntegerPropertySystem : UMovieScenePropertySystem
UMovieSceneIntegerPropertySystem = {}

---@return UMovieSceneIntegerPropertySystem
function UMovieSceneIntegerPropertySystem:get() end


---@class UMovieSceneIntegerSection : UMovieSceneSection
---@field IntegerCurve FMovieSceneIntegerChannel
UMovieSceneIntegerSection = {}

---@return UMovieSceneIntegerSection
function UMovieSceneIntegerSection:get() end



---@class UMovieSceneIntegerTrack : UMovieScenePropertyTrack
UMovieSceneIntegerTrack = {}

---@return UMovieSceneIntegerTrack
function UMovieSceneIntegerTrack:get() end


---@class UMovieSceneInterrogatedPropertyInstantiatorSystem : UMovieSceneEntityInstantiatorSystem
UMovieSceneInterrogatedPropertyInstantiatorSystem = {}

---@return UMovieSceneInterrogatedPropertyInstantiatorSystem
function UMovieSceneInterrogatedPropertyInstantiatorSystem:get() end


---@class UMovieSceneLevelVisibilitySection : UMovieSceneSection
---@field Visibility ELevelVisibility
---@field LevelNames TArray<FName>
UMovieSceneLevelVisibilitySection = {}

---@return UMovieSceneLevelVisibilitySection
function UMovieSceneLevelVisibilitySection:get() end

---@param InVisibility ELevelVisibility
function UMovieSceneLevelVisibilitySection:SetVisibility(InVisibility) end
---@param InLevelNames TArray<FName>
function UMovieSceneLevelVisibilitySection:SetLevelNames(InLevelNames) end
---@return ELevelVisibility
function UMovieSceneLevelVisibilitySection:GetVisibility() end
---@return TArray<FName>
function UMovieSceneLevelVisibilitySection:GetLevelNames() end


---@class UMovieSceneLevelVisibilitySystem : UMovieSceneEntitySystem
UMovieSceneLevelVisibilitySystem = {}

---@return UMovieSceneLevelVisibilitySystem
function UMovieSceneLevelVisibilitySystem:get() end


---@class UMovieSceneLevelVisibilityTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
UMovieSceneLevelVisibilityTrack = {}

---@return UMovieSceneLevelVisibilityTrack
function UMovieSceneLevelVisibilityTrack:get() end



---@class UMovieSceneMaterialParameterCollectionSystem : UMovieSceneEntitySystem
UMovieSceneMaterialParameterCollectionSystem = {}

---@return UMovieSceneMaterialParameterCollectionSystem
function UMovieSceneMaterialParameterCollectionSystem:get() end


---@class UMovieSceneMaterialParameterCollectionTrack : UMovieSceneMaterialTrack
---@field MPC UMaterialParameterCollection
UMovieSceneMaterialParameterCollectionTrack = {}

---@return UMovieSceneMaterialParameterCollectionTrack
function UMovieSceneMaterialParameterCollectionTrack:get() end



---@class UMovieSceneMaterialParameterSystem : UMovieSceneEntitySystem
---@field DoubleBlenderSystem UMovieScenePiecewiseDoubleBlenderSystem
UMovieSceneMaterialParameterSystem = {}

---@return UMovieSceneMaterialParameterSystem
function UMovieSceneMaterialParameterSystem:get() end



---@class UMovieSceneMaterialTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
UMovieSceneMaterialTrack = {}

---@return UMovieSceneMaterialTrack
function UMovieSceneMaterialTrack:get() end



---@class UMovieSceneMotionVectorSimulationSystem : UMovieSceneEntitySystem
UMovieSceneMotionVectorSimulationSystem = {}

---@return UMovieSceneMotionVectorSimulationSystem
function UMovieSceneMotionVectorSimulationSystem:get() end


---@class UMovieSceneObjectPropertySection : UMovieSceneSection
---@field ObjectChannel FMovieSceneObjectPathChannel
UMovieSceneObjectPropertySection = {}

---@return UMovieSceneObjectPropertySection
function UMovieSceneObjectPropertySection:get() end



---@class UMovieSceneObjectPropertyTrack : UMovieScenePropertyTrack
---@field PropertyClass TObjectPtr<UClass>
UMovieSceneObjectPropertyTrack = {}

---@return UMovieSceneObjectPropertyTrack
function UMovieSceneObjectPropertyTrack:get() end



---@class UMovieSceneParameterSection : UMovieSceneSection
---@field BoolParameterNamesAndCurves TArray<FBoolParameterNameAndCurve>
---@field ScalarParameterNamesAndCurves TArray<FScalarParameterNameAndCurve>
---@field Vector2DParameterNamesAndCurves TArray<FVector2DParameterNameAndCurves>
---@field VectorParameterNamesAndCurves TArray<FVectorParameterNameAndCurves>
---@field ColorParameterNamesAndCurves TArray<FColorParameterNameAndCurves>
---@field TransformParameterNamesAndCurves TArray<FTransformParameterNameAndCurves>
UMovieSceneParameterSection = {}

---@return UMovieSceneParameterSection
function UMovieSceneParameterSection:get() end

---@param InParameterName FName
---@return boolean
function UMovieSceneParameterSection:RemoveVectorParameter(InParameterName) end
---@param InParameterName FName
---@return boolean
function UMovieSceneParameterSection:RemoveVector2DParameter(InParameterName) end
---@param InParameterName FName
---@return boolean
function UMovieSceneParameterSection:RemoveTransformParameter(InParameterName) end
---@param InParameterName FName
---@return boolean
function UMovieSceneParameterSection:RemoveScalarParameter(InParameterName) end
---@param InParameterName FName
---@return boolean
function UMovieSceneParameterSection:RemoveColorParameter(InParameterName) end
---@param InParameterName FName
---@return boolean
function UMovieSceneParameterSection:RemoveBoolParameter(InParameterName) end
---@param ParameterNames TSet<FName>
function UMovieSceneParameterSection:GetParameterNames(ParameterNames) end
---@param InParameterName FName
---@param InTime FFrameNumber
---@param InValue FVector
function UMovieSceneParameterSection:AddVectorParameterKey(InParameterName, InTime, InValue) end
---@param InParameterName FName
---@param InTime FFrameNumber
---@param InValue FVector2D
function UMovieSceneParameterSection:AddVector2DParameterKey(InParameterName, InTime, InValue) end
---@param InParameterName FName
---@param InTime FFrameNumber
---@param InValue FTransform
function UMovieSceneParameterSection:AddTransformParameterKey(InParameterName, InTime, InValue) end
---@param InParameterName FName
---@param InTime FFrameNumber
---@param InValue float
function UMovieSceneParameterSection:AddScalarParameterKey(InParameterName, InTime, InValue) end
---@param InParameterName FName
---@param InTime FFrameNumber
---@param InValue FLinearColor
function UMovieSceneParameterSection:AddColorParameterKey(InParameterName, InTime, InValue) end
---@param InParameterName FName
---@param InTime FFrameNumber
---@param InValue boolean
function UMovieSceneParameterSection:AddBoolParameterKey(InParameterName, InTime, InValue) end


---@class UMovieSceneParticleParameterTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
UMovieSceneParticleParameterTrack = {}

---@return UMovieSceneParticleParameterTrack
function UMovieSceneParticleParameterTrack:get() end



---@class UMovieSceneParticleSection : UMovieSceneSection
---@field ParticleKeys FMovieSceneParticleChannel
UMovieSceneParticleSection = {}

---@return UMovieSceneParticleSection
function UMovieSceneParticleSection:get() end



---@class UMovieSceneParticleTrack : UMovieSceneNameableTrack
---@field ParticleSections TArray<UMovieSceneSection>
UMovieSceneParticleTrack = {}

---@return UMovieSceneParticleTrack
function UMovieSceneParticleTrack:get() end



---@class UMovieScenePiecewiseBoolBlenderSystem : UMovieSceneBlenderSystem
UMovieScenePiecewiseBoolBlenderSystem = {}

---@return UMovieScenePiecewiseBoolBlenderSystem
function UMovieScenePiecewiseBoolBlenderSystem:get() end


---@class UMovieScenePiecewiseByteBlenderSystem : UMovieSceneBlenderSystem
UMovieScenePiecewiseByteBlenderSystem = {}

---@return UMovieScenePiecewiseByteBlenderSystem
function UMovieScenePiecewiseByteBlenderSystem:get() end


---@class UMovieScenePiecewiseDoubleBlenderSystem : UMovieSceneBlenderSystem
UMovieScenePiecewiseDoubleBlenderSystem = {}

---@return UMovieScenePiecewiseDoubleBlenderSystem
function UMovieScenePiecewiseDoubleBlenderSystem:get() end


---@class UMovieScenePiecewiseEnumBlenderSystem : UMovieSceneBlenderSystem
UMovieScenePiecewiseEnumBlenderSystem = {}

---@return UMovieScenePiecewiseEnumBlenderSystem
function UMovieScenePiecewiseEnumBlenderSystem:get() end


---@class UMovieScenePiecewiseIntegerBlenderSystem : UMovieSceneBlenderSystem
UMovieScenePiecewiseIntegerBlenderSystem = {}

---@return UMovieScenePiecewiseIntegerBlenderSystem
function UMovieScenePiecewiseIntegerBlenderSystem:get() end


---@class UMovieScenePostEvalEventSystem : UMovieSceneEventSystem
UMovieScenePostEvalEventSystem = {}

---@return UMovieScenePostEvalEventSystem
function UMovieScenePostEvalEventSystem:get() end


---@class UMovieScenePostSpawnEventSystem : UMovieSceneEventSystem
UMovieScenePostSpawnEventSystem = {}

---@return UMovieScenePostSpawnEventSystem
function UMovieScenePostSpawnEventSystem:get() end


---@class UMovieScenePreSpawnEventSystem : UMovieSceneEventSystem
UMovieScenePreSpawnEventSystem = {}

---@return UMovieScenePreSpawnEventSystem
function UMovieScenePreSpawnEventSystem:get() end


---@class UMovieScenePredictionSystem : UMovieSceneEntitySystem
---@field PendingPredictions TArray<UMovieSceneAsyncAction_SequencePrediction>
---@field ProcessingPredictions TArray<UMovieSceneAsyncAction_SequencePrediction>
UMovieScenePredictionSystem = {}

---@return UMovieScenePredictionSystem
function UMovieScenePredictionSystem:get() end



---@class UMovieScenePrimitiveMaterialSection : UMovieSceneSection
---@field MaterialChannel FMovieSceneObjectPathChannel
UMovieScenePrimitiveMaterialSection = {}

---@return UMovieScenePrimitiveMaterialSection
function UMovieScenePrimitiveMaterialSection:get() end



---@class UMovieScenePrimitiveMaterialTrack : UMovieScenePropertyTrack
---@field MaterialIndex int32
UMovieScenePrimitiveMaterialTrack = {}

---@return UMovieScenePrimitiveMaterialTrack
function UMovieScenePrimitiveMaterialTrack:get() end



---@class UMovieScenePropertyInstantiatorSystem : UMovieSceneEntityInstantiatorSystem
UMovieScenePropertyInstantiatorSystem = {}

---@return UMovieScenePropertyInstantiatorSystem
function UMovieScenePropertyInstantiatorSystem:get() end


---@class UMovieScenePropertySystem : UMovieSceneEntitySystem
---@field InstantiatorSystem UMovieScenePropertyInstantiatorSystem
UMovieScenePropertySystem = {}

---@return UMovieScenePropertySystem
function UMovieScenePropertySystem:get() end



---@class UMovieScenePropertyTrack : UMovieSceneNameableTrack
---@field SectionToKey UMovieSceneSection
---@field PropertyBinding FMovieScenePropertyBinding
---@field Sections TArray<UMovieSceneSection>
UMovieScenePropertyTrack = {}

---@return UMovieScenePropertyTrack
function UMovieScenePropertyTrack:get() end



---@class UMovieSceneQuaternionInterpolationRotationSystem : UMovieSceneEntitySystem
UMovieSceneQuaternionInterpolationRotationSystem = {}

---@return UMovieSceneQuaternionInterpolationRotationSystem
function UMovieSceneQuaternionInterpolationRotationSystem:get() end


---@class UMovieSceneSkeletalAnimationSection : UMovieSceneSection
---@field Params FMovieSceneSkeletalAnimationParams
---@field AnimSequence UAnimSequence
---@field Animation UAnimSequenceBase
---@field StartOffset float
---@field EndOffset float
---@field PlayRate float
---@field bReverse boolean
---@field SlotName FName
---@field StartLocationOffset FVector
---@field StartRotationOffset FRotator
---@field bMatchWithPrevious boolean
---@field MatchedBoneName FName
---@field MatchedLocationOffset FVector
---@field MatchedRotationOffset FRotator
---@field bMatchTranslation boolean
---@field bMatchIncludeZHeight boolean
---@field bMatchRotationYaw boolean
---@field bMatchRotationPitch boolean
---@field bMatchRotationRoll boolean
UMovieSceneSkeletalAnimationSection = {}

---@return UMovieSceneSkeletalAnimationSection
function UMovieSceneSkeletalAnimationSection:get() end



---@class UMovieSceneSkeletalAnimationTrack : UMovieSceneNameableTrack
---@field AnimationSections TArray<UMovieSceneSection>
---@field bUseLegacySectionIndexBlend boolean
---@field RootMotionParams FMovieSceneSkeletalAnimRootMotionTrackParams
---@field bBlendFirstChildOfRoot boolean
UMovieSceneSkeletalAnimationTrack = {}

---@return UMovieSceneSkeletalAnimationTrack
function UMovieSceneSkeletalAnimationTrack:get() end



---@class UMovieSceneSlomoSection : UMovieSceneSection
---@field FloatCurve FMovieSceneFloatChannel
UMovieSceneSlomoSection = {}

---@return UMovieSceneSlomoSection
function UMovieSceneSlomoSection:get() end



---@class UMovieSceneSlomoTrack : UMovieSceneFloatTrack
UMovieSceneSlomoTrack = {}

---@return UMovieSceneSlomoTrack
function UMovieSceneSlomoTrack:get() end


---@class UMovieSceneStringSection : UMovieSceneSection
---@field StringCurve FMovieSceneStringChannel
UMovieSceneStringSection = {}

---@return UMovieSceneStringSection
function UMovieSceneStringSection:get() end



---@class UMovieSceneStringTrack : UMovieScenePropertyTrack
UMovieSceneStringTrack = {}

---@return UMovieSceneStringTrack
function UMovieSceneStringTrack:get() end


---@class UMovieSceneTransformOriginSystem : UMovieSceneEntitySystem
UMovieSceneTransformOriginSystem = {}

---@return UMovieSceneTransformOriginSystem
function UMovieSceneTransformOriginSystem:get() end


---@class UMovieSceneTransformTrack : UMovieScenePropertyTrack
UMovieSceneTransformTrack = {}

---@return UMovieSceneTransformTrack
function UMovieSceneTransformTrack:get() end


---@class UMovieSceneVisibilityTrack : UMovieSceneBoolTrack
UMovieSceneVisibilityTrack = {}

---@return UMovieSceneVisibilityTrack
function UMovieSceneVisibilityTrack:get() end


---@class UObjectPathChannelEvaluatorSystem : UMovieSceneEntitySystem
UObjectPathChannelEvaluatorSystem = {}

---@return UObjectPathChannelEvaluatorSystem
function UObjectPathChannelEvaluatorSystem:get() end


---@class UWeightAndEasingEvaluatorSystem : UMovieSceneEntitySystem
UWeightAndEasingEvaluatorSystem = {}

---@return UWeightAndEasingEvaluatorSystem
function UWeightAndEasingEvaluatorSystem:get() end


