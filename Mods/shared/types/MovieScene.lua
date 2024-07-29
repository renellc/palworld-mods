---@meta

---@class FActorForWorldTransforms
---@field Actor TWeakObjectPtr<AActor>
---@field Component TWeakObjectPtr<USceneComponent>
---@field SocketName FName
FActorForWorldTransforms = {}

---@return FActorForWorldTransforms
function FActorForWorldTransforms:get() end



---@class FEasingComponentData
---@field Section UMovieSceneSection
FEasingComponentData = {}

---@return FEasingComponentData
function FEasingComponentData:get() end



---@class FGeneratedMovieSceneKeyStruct
FGeneratedMovieSceneKeyStruct = {}

---@return FGeneratedMovieSceneKeyStruct
function FGeneratedMovieSceneKeyStruct:get() end


---@class FMovieSceneAudioTriggerChannel : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field Values TArray<boolean>
FMovieSceneAudioTriggerChannel = {}

---@return FMovieSceneAudioTriggerChannel
function FMovieSceneAudioTriggerChannel:get() end



---@class FMovieSceneBinding
---@field ObjectGuid FGuid
---@field BindingName FString
---@field Tracks TArray<UMovieSceneTrack>
FMovieSceneBinding = {}

---@return FMovieSceneBinding
function FMovieSceneBinding:get() end



---@class FMovieSceneBindingOverrideData
---@field ObjectBindingID FMovieSceneObjectBindingID
---@field Object TSoftObjectPtr<UObject>
---@field bOverridesDefault boolean
FMovieSceneBindingOverrideData = {}

---@return FMovieSceneBindingOverrideData
function FMovieSceneBindingOverrideData:get() end



---@class FMovieSceneBindingProxy
---@field BindingId FGuid
---@field Sequence UMovieSceneSequence
FMovieSceneBindingProxy = {}

---@return FMovieSceneBindingProxy
function FMovieSceneBindingProxy:get() end



---@class FMovieSceneBoolChannel : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field DefaultValue boolean
---@field bHasDefaultValue boolean
---@field Values TArray<boolean>
FMovieSceneBoolChannel = {}

---@return FMovieSceneBoolChannel
function FMovieSceneBoolChannel:get() end



---@class FMovieSceneByteChannel : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field DefaultValue uint8
---@field bHasDefaultValue boolean
---@field Values TArray<uint8>
---@field Enum UEnum
FMovieSceneByteChannel = {}

---@return FMovieSceneByteChannel
function FMovieSceneByteChannel:get() end



---@class FMovieSceneChannel
FMovieSceneChannel = {}

---@return FMovieSceneChannel
function FMovieSceneChannel:get() end


---@class FMovieSceneCompiledSequenceFlagStruct
---@field bParentSequenceRequiresLowerFence boolean
---@field bParentSequenceRequiresUpperFence boolean
FMovieSceneCompiledSequenceFlagStruct = {}

---@return FMovieSceneCompiledSequenceFlagStruct
function FMovieSceneCompiledSequenceFlagStruct:get() end



---@class FMovieSceneDeterminismData
---@field Fences TArray<FFrameTime>
---@field bParentSequenceRequiresLowerFence boolean
---@field bParentSequenceRequiresUpperFence boolean
FMovieSceneDeterminismData = {}

---@return FMovieSceneDeterminismData
function FMovieSceneDeterminismData:get() end



---@class FMovieSceneDoubleChannel : FMovieSceneChannel
---@field PreInfinityExtrap ERichCurveExtrapolation
---@field PostInfinityExtrap ERichCurveExtrapolation
---@field Times TArray<FFrameNumber>
---@field Values TArray<FMovieSceneDoubleValue>
---@field DefaultValue double
---@field bHasDefaultValue boolean
---@field KeyHandles FMovieSceneKeyHandleMap
---@field TickResolution FFrameRate
FMovieSceneDoubleChannel = {}

---@return FMovieSceneDoubleChannel
function FMovieSceneDoubleChannel:get() end



---@class FMovieSceneDoubleValue
---@field Value double
---@field Tangent FMovieSceneTangentData
---@field InterpMode ERichCurveInterpMode
---@field TangentMode ERichCurveTangentMode
---@field PaddingByte uint8
FMovieSceneDoubleValue = {}

---@return FMovieSceneDoubleValue
function FMovieSceneDoubleValue:get() end



---@class FMovieSceneEasingSettings
---@field AutoEaseInDuration int32
---@field AutoEaseOutDuration int32
---@field EaseIn TScriptInterface<IMovieSceneEasingFunction>
---@field bManualEaseIn boolean
---@field ManualEaseInDuration int32
---@field EaseOut TScriptInterface<IMovieSceneEasingFunction>
---@field bManualEaseOut boolean
---@field ManualEaseOutDuration int32
FMovieSceneEasingSettings = {}

---@return FMovieSceneEasingSettings
function FMovieSceneEasingSettings:get() end



---@class FMovieSceneEditorData
---@field ExpansionStates TMap<FString, FMovieSceneExpansionState>
---@field PinnedNodes TArray<FString>
---@field ViewStart double
---@field ViewEnd double
---@field WorkStart double
---@field WorkEnd double
---@field MarkedFrames TSet<FFrameNumber>
---@field WorkingRange FFloatRange
---@field ViewRange FFloatRange
FMovieSceneEditorData = {}

---@return FMovieSceneEditorData
function FMovieSceneEditorData:get() end



---@class FMovieSceneEmptyStruct
FMovieSceneEmptyStruct = {}

---@return FMovieSceneEmptyStruct
function FMovieSceneEmptyStruct:get() end


---@class FMovieSceneEntityComponentField
---@field PersistentEntityTree FMovieSceneEvaluationFieldEntityTree
---@field OneShotEntityTree FMovieSceneEvaluationFieldEntityTree
---@field Entities TArray<FMovieSceneEvaluationFieldEntity>
---@field EntityMetaData TArray<FMovieSceneEvaluationFieldEntityMetaData>
---@field SharedMetaData TArray<FMovieSceneEvaluationFieldSharedEntityMetaData>
FMovieSceneEntityComponentField = {}

---@return FMovieSceneEntityComponentField
function FMovieSceneEntityComponentField:get() end



---@class FMovieSceneEntitySystemGraph
---@field Nodes FMovieSceneEntitySystemGraphNodes
FMovieSceneEntitySystemGraph = {}

---@return FMovieSceneEntitySystemGraph
function FMovieSceneEntitySystemGraph:get() end



---@class FMovieSceneEntitySystemGraphNode
---@field System UMovieSceneEntitySystem
FMovieSceneEntitySystemGraphNode = {}

---@return FMovieSceneEntitySystemGraphNode
function FMovieSceneEntitySystemGraphNode:get() end



---@class FMovieSceneEntitySystemGraphNodes
FMovieSceneEntitySystemGraphNodes = {}

---@return FMovieSceneEntitySystemGraphNodes
function FMovieSceneEntitySystemGraphNodes:get() end


---@class FMovieSceneEvalTemplate : FMovieSceneEvalTemplateBase
---@field CompletionMode EMovieSceneCompletionMode
---@field SourceSectionPtr TWeakObjectPtr<UMovieSceneSection>
FMovieSceneEvalTemplate = {}

---@return FMovieSceneEvalTemplate
function FMovieSceneEvalTemplate:get() end



---@class FMovieSceneEvalTemplateBase
FMovieSceneEvalTemplateBase = {}

---@return FMovieSceneEvalTemplateBase
function FMovieSceneEvalTemplateBase:get() end


---@class FMovieSceneEvalTemplatePtr
FMovieSceneEvalTemplatePtr = {}

---@return FMovieSceneEvalTemplatePtr
function FMovieSceneEvalTemplatePtr:get() end


---@class FMovieSceneEvaluationField
---@field Ranges TArray<FMovieSceneFrameRange>
---@field Groups TArray<FMovieSceneEvaluationGroup>
---@field MetaData TArray<FMovieSceneEvaluationMetaData>
FMovieSceneEvaluationField = {}

---@return FMovieSceneEvaluationField
function FMovieSceneEvaluationField:get() end



---@class FMovieSceneEvaluationFieldEntity
---@field Key FMovieSceneEvaluationFieldEntityKey
---@field SharedMetaDataIndex int32
FMovieSceneEvaluationFieldEntity = {}

---@return FMovieSceneEvaluationFieldEntity
function FMovieSceneEvaluationFieldEntity:get() end



---@class FMovieSceneEvaluationFieldEntityKey
---@field EntityOwner TWeakObjectPtr<UObject>
---@field EntityID uint32
FMovieSceneEvaluationFieldEntityKey = {}

---@return FMovieSceneEvaluationFieldEntityKey
function FMovieSceneEvaluationFieldEntityKey:get() end



---@class FMovieSceneEvaluationFieldEntityMetaData
---@field OverrideBoundPropertyPath FString
---@field ForcedTime FFrameNumber
---@field Flags ESectionEvaluationFlags
---@field bEvaluateInSequencePreRoll boolean
---@field bEvaluateInSequencePostRoll boolean
FMovieSceneEvaluationFieldEntityMetaData = {}

---@return FMovieSceneEvaluationFieldEntityMetaData
function FMovieSceneEvaluationFieldEntityMetaData:get() end



---@class FMovieSceneEvaluationFieldEntityTree
FMovieSceneEvaluationFieldEntityTree = {}

---@return FMovieSceneEvaluationFieldEntityTree
function FMovieSceneEvaluationFieldEntityTree:get() end


---@class FMovieSceneEvaluationFieldSegmentPtr : FMovieSceneEvaluationFieldTrackPtr
---@field SegmentID FMovieSceneSegmentIdentifier
FMovieSceneEvaluationFieldSegmentPtr = {}

---@return FMovieSceneEvaluationFieldSegmentPtr
function FMovieSceneEvaluationFieldSegmentPtr:get() end



---@class FMovieSceneEvaluationFieldSharedEntityMetaData
---@field ObjectBindingID FGuid
FMovieSceneEvaluationFieldSharedEntityMetaData = {}

---@return FMovieSceneEvaluationFieldSharedEntityMetaData
function FMovieSceneEvaluationFieldSharedEntityMetaData:get() end



---@class FMovieSceneEvaluationFieldTrackPtr
---@field SequenceID FMovieSceneSequenceID
---@field TrackIdentifier FMovieSceneTrackIdentifier
FMovieSceneEvaluationFieldTrackPtr = {}

---@return FMovieSceneEvaluationFieldTrackPtr
function FMovieSceneEvaluationFieldTrackPtr:get() end



---@class FMovieSceneEvaluationGroup
---@field LUTIndices TArray<FMovieSceneEvaluationGroupLUTIndex>
---@field TrackLUT TArray<FMovieSceneFieldEntry_EvaluationTrack>
---@field SectionLUT TArray<FMovieSceneFieldEntry_ChildTemplate>
FMovieSceneEvaluationGroup = {}

---@return FMovieSceneEvaluationGroup
function FMovieSceneEvaluationGroup:get() end



---@class FMovieSceneEvaluationGroupLUTIndex
---@field NumInitPtrs int32
---@field NumEvalPtrs int32
FMovieSceneEvaluationGroupLUTIndex = {}

---@return FMovieSceneEvaluationGroupLUTIndex
function FMovieSceneEvaluationGroupLUTIndex:get() end



---@class FMovieSceneEvaluationHookComponent
---@field Interface TScriptInterface<IMovieSceneEvaluationHook>
FMovieSceneEvaluationHookComponent = {}

---@return FMovieSceneEvaluationHookComponent
function FMovieSceneEvaluationHookComponent:get() end



---@class FMovieSceneEvaluationHookEvent
---@field Hook FMovieSceneEvaluationHookComponent
FMovieSceneEvaluationHookEvent = {}

---@return FMovieSceneEvaluationHookEvent
function FMovieSceneEvaluationHookEvent:get() end



---@class FMovieSceneEvaluationHookEventContainer
---@field Events TArray<FMovieSceneEvaluationHookEvent>
FMovieSceneEvaluationHookEventContainer = {}

---@return FMovieSceneEvaluationHookEventContainer
function FMovieSceneEvaluationHookEventContainer:get() end



---@class FMovieSceneEvaluationInstanceKey
FMovieSceneEvaluationInstanceKey = {}

---@return FMovieSceneEvaluationInstanceKey
function FMovieSceneEvaluationInstanceKey:get() end


---@class FMovieSceneEvaluationKey
---@field SequenceID FMovieSceneSequenceID
---@field TrackIdentifier FMovieSceneTrackIdentifier
---@field SectionIndex uint32
FMovieSceneEvaluationKey = {}

---@return FMovieSceneEvaluationKey
function FMovieSceneEvaluationKey:get() end



---@class FMovieSceneEvaluationMetaData
---@field ActiveSequences TArray<FMovieSceneSequenceID>
---@field ActiveEntities TArray<FMovieSceneOrderedEvaluationKey>
FMovieSceneEvaluationMetaData = {}

---@return FMovieSceneEvaluationMetaData
function FMovieSceneEvaluationMetaData:get() end



---@class FMovieSceneEvaluationOperand
---@field ObjectBindingID FGuid
---@field SequenceID FMovieSceneSequenceID
FMovieSceneEvaluationOperand = {}

---@return FMovieSceneEvaluationOperand
function FMovieSceneEvaluationOperand:get() end



---@class FMovieSceneEvaluationTemplate
---@field Tracks TMap<FMovieSceneTrackIdentifier, FMovieSceneEvaluationTrack>
---@field SequenceSignature FGuid
---@field TemplateSerialNumber FMovieSceneEvaluationTemplateSerialNumber
---@field TemplateLedger FMovieSceneTemplateGenerationLedger
FMovieSceneEvaluationTemplate = {}

---@return FMovieSceneEvaluationTemplate
function FMovieSceneEvaluationTemplate:get() end



---@class FMovieSceneEvaluationTemplateSerialNumber
---@field Value uint32
FMovieSceneEvaluationTemplateSerialNumber = {}

---@return FMovieSceneEvaluationTemplateSerialNumber
function FMovieSceneEvaluationTemplateSerialNumber:get() end



---@class FMovieSceneEvaluationTrack
---@field ObjectBindingID FGuid
---@field EvaluationPriority uint16
---@field EvaluationMethod EEvaluationMethod
---@field SourceTrack TWeakObjectPtr<UMovieSceneTrack>
---@field ChildTemplates TArray<FMovieSceneEvalTemplatePtr>
---@field TrackTemplate FMovieSceneTrackImplementationPtr
---@field EvaluationGroup FName
---@field bEvaluateInPreroll boolean
---@field bEvaluateInPostroll boolean
---@field bTearDownPriority boolean
FMovieSceneEvaluationTrack = {}

---@return FMovieSceneEvaluationTrack
function FMovieSceneEvaluationTrack:get() end



---@class FMovieSceneExpansionState
---@field bExpanded boolean
FMovieSceneExpansionState = {}

---@return FMovieSceneExpansionState
function FMovieSceneExpansionState:get() end



---@class FMovieSceneFieldEntry_ChildTemplate
---@field ChildIndex uint16
---@field Flags ESectionEvaluationFlags
---@field ForcedTime FFrameNumber
FMovieSceneFieldEntry_ChildTemplate = {}

---@return FMovieSceneFieldEntry_ChildTemplate
function FMovieSceneFieldEntry_ChildTemplate:get() end



---@class FMovieSceneFieldEntry_EvaluationTrack
---@field TrackPtr FMovieSceneEvaluationFieldTrackPtr
---@field NumChildren uint16
FMovieSceneFieldEntry_EvaluationTrack = {}

---@return FMovieSceneFieldEntry_EvaluationTrack
function FMovieSceneFieldEntry_EvaluationTrack:get() end



---@class FMovieSceneFloatChannel : FMovieSceneChannel
---@field PreInfinityExtrap ERichCurveExtrapolation
---@field PostInfinityExtrap ERichCurveExtrapolation
---@field Times TArray<FFrameNumber>
---@field Values TArray<FMovieSceneFloatValue>
---@field DefaultValue float
---@field bHasDefaultValue boolean
---@field KeyHandles FMovieSceneKeyHandleMap
---@field TickResolution FFrameRate
FMovieSceneFloatChannel = {}

---@return FMovieSceneFloatChannel
function FMovieSceneFloatChannel:get() end



---@class FMovieSceneFloatValue
---@field Value float
---@field Tangent FMovieSceneTangentData
---@field InterpMode ERichCurveInterpMode
---@field TangentMode ERichCurveTangentMode
---@field PaddingByte uint8
FMovieSceneFloatValue = {}

---@return FMovieSceneFloatValue
function FMovieSceneFloatValue:get() end



---@class FMovieSceneFrameRange
FMovieSceneFrameRange = {}

---@return FMovieSceneFrameRange
function FMovieSceneFrameRange:get() end


---@class FMovieSceneIntegerChannel : FMovieSceneChannel
---@field Times TArray<FFrameNumber>
---@field DefaultValue int32
---@field bHasDefaultValue boolean
---@field Values TArray<int32>
FMovieSceneIntegerChannel = {}

---@return FMovieSceneIntegerChannel
function FMovieSceneIntegerChannel:get() end



---@class FMovieSceneKeyHandleMap : FKeyHandleLookupTable
FMovieSceneKeyHandleMap = {}

---@return FMovieSceneKeyHandleMap
function FMovieSceneKeyHandleMap:get() end


---@class FMovieSceneKeyStruct
FMovieSceneKeyStruct = {}

---@return FMovieSceneKeyStruct
function FMovieSceneKeyStruct:get() end


---@class FMovieSceneKeyTimeStruct : FMovieSceneKeyStruct
---@field Time FFrameNumber
FMovieSceneKeyTimeStruct = {}

---@return FMovieSceneKeyTimeStruct
function FMovieSceneKeyTimeStruct:get() end



---@class FMovieSceneMarkedFrame
---@field FrameNumber FFrameNumber
---@field Label FString
---@field bIsDeterminismFence boolean
FMovieSceneMarkedFrame = {}

---@return FMovieSceneMarkedFrame
function FMovieSceneMarkedFrame:get() end



---@class FMovieSceneNestedSequenceTransform
---@field LinearTransform FMovieSceneTimeTransform
---@field Warping FMovieSceneTimeWarping
FMovieSceneNestedSequenceTransform = {}

---@return FMovieSceneNestedSequenceTransform
function FMovieSceneNestedSequenceTransform:get() end



---@class FMovieSceneObjectBindingID
---@field Guid FGuid
---@field SequenceID int32
---@field ResolveParentIndex int32
FMovieSceneObjectBindingID = {}

---@return FMovieSceneObjectBindingID
function FMovieSceneObjectBindingID:get() end



---@class FMovieSceneObjectBindingIDs
---@field IDs TArray<FMovieSceneObjectBindingID>
FMovieSceneObjectBindingIDs = {}

---@return FMovieSceneObjectBindingIDs
function FMovieSceneObjectBindingIDs:get() end



---@class FMovieSceneObjectPathChannel : FMovieSceneChannel
---@field PropertyClass TObjectPtr<UClass>
---@field Times TArray<FFrameNumber>
---@field Values TArray<FMovieSceneObjectPathChannelKeyValue>
---@field DefaultValue FMovieSceneObjectPathChannelKeyValue
FMovieSceneObjectPathChannel = {}

---@return FMovieSceneObjectPathChannel
function FMovieSceneObjectPathChannel:get() end



---@class FMovieSceneObjectPathChannelKeyValue
---@field SoftPtr TSoftObjectPtr<UObject>
---@field HardPtr UObject
FMovieSceneObjectPathChannelKeyValue = {}

---@return FMovieSceneObjectPathChannelKeyValue
function FMovieSceneObjectPathChannelKeyValue:get() end



---@class FMovieSceneOrderedEvaluationKey
---@field Key FMovieSceneEvaluationKey
---@field SetupIndex uint16
---@field TearDownIndex uint16
FMovieSceneOrderedEvaluationKey = {}

---@return FMovieSceneOrderedEvaluationKey
function FMovieSceneOrderedEvaluationKey:get() end



---@class FMovieScenePossessable
---@field Tags TArray<FName>
---@field Guid FGuid
---@field Name FString
---@field ParentGuid FGuid
---@field SpawnableObjectBindingID FMovieSceneObjectBindingID
FMovieScenePossessable = {}

---@return FMovieScenePossessable
function FMovieScenePossessable:get() end



---@class FMovieScenePropertyBinding
---@field PropertyName FName
---@field PropertyPath FName
---@field bCanUseClassLookup boolean
FMovieScenePropertyBinding = {}

---@return FMovieScenePropertyBinding
function FMovieScenePropertyBinding:get() end



---@class FMovieScenePropertySectionData
---@field PropertyName FName
---@field PropertyPath FString
FMovieScenePropertySectionData = {}

---@return FMovieScenePropertySectionData
function FMovieScenePropertySectionData:get() end



---@class FMovieScenePropertySectionTemplate : FMovieSceneEvalTemplate
---@field PropertyData FMovieScenePropertySectionData
FMovieScenePropertySectionTemplate = {}

---@return FMovieScenePropertySectionTemplate
function FMovieScenePropertySectionTemplate:get() end



---@class FMovieSceneRootEvaluationTemplateInstance
---@field WeakRootSequence TWeakObjectPtr<UMovieSceneSequence>
---@field CompiledDataManager UMovieSceneCompiledDataManager
---@field EntitySystemLinker UMovieSceneEntitySystemLinker
---@field DirectorInstances TMap<FMovieSceneSequenceID, UObject>
FMovieSceneRootEvaluationTemplateInstance = {}

---@return FMovieSceneRootEvaluationTemplateInstance
function FMovieSceneRootEvaluationTemplateInstance:get() end



---@class FMovieSceneSectionEvalOptions
---@field bCanEditCompletionMode boolean
---@field CompletionMode EMovieSceneCompletionMode
FMovieSceneSectionEvalOptions = {}

---@return FMovieSceneSectionEvalOptions
function FMovieSceneSectionEvalOptions:get() end



---@class FMovieSceneSectionGroup
---@field Sections TArray<TWeakObjectPtr<UMovieSceneSection>>
FMovieSceneSectionGroup = {}

---@return FMovieSceneSectionGroup
function FMovieSceneSectionGroup:get() end



---@class FMovieSceneSectionParameters
---@field StartFrameOffset FFrameNumber
---@field bCanLoop boolean
---@field EndFrameOffset FFrameNumber
---@field FirstLoopStartFrameOffset FFrameNumber
---@field TimeScale float
---@field HierarchicalBias int32
---@field StartOffset float
---@field PrerollTime float
---@field PostrollTime float
FMovieSceneSectionParameters = {}

---@return FMovieSceneSectionParameters
function FMovieSceneSectionParameters:get() end



---@class FMovieSceneSegment
FMovieSceneSegment = {}

---@return FMovieSceneSegment
function FMovieSceneSegment:get() end


---@class FMovieSceneSegmentIdentifier
---@field IdentifierIndex int32
FMovieSceneSegmentIdentifier = {}

---@return FMovieSceneSegmentIdentifier
function FMovieSceneSegmentIdentifier:get() end



---@class FMovieSceneSequenceCompilerMaskStruct
---@field bHierarchy boolean
---@field bEvaluationTemplate boolean
---@field bEvaluationTemplateField boolean
---@field bEntityComponentField boolean
FMovieSceneSequenceCompilerMaskStruct = {}

---@return FMovieSceneSequenceCompilerMaskStruct
function FMovieSceneSequenceCompilerMaskStruct:get() end



---@class FMovieSceneSequenceHierarchy
---@field RootNode FMovieSceneSequenceHierarchyNode
---@field Tree FMovieSceneSubSequenceTree
---@field SubSequences TMap<FMovieSceneSequenceID, FMovieSceneSubSequenceData>
---@field Hierarchy TMap<FMovieSceneSequenceID, FMovieSceneSequenceHierarchyNode>
FMovieSceneSequenceHierarchy = {}

---@return FMovieSceneSequenceHierarchy
function FMovieSceneSequenceHierarchy:get() end



---@class FMovieSceneSequenceHierarchyNode
---@field ParentID FMovieSceneSequenceID
---@field Children TArray<FMovieSceneSequenceID>
FMovieSceneSequenceHierarchyNode = {}

---@return FMovieSceneSequenceHierarchyNode
function FMovieSceneSequenceHierarchyNode:get() end



---@class FMovieSceneSequenceID
---@field Value uint32
FMovieSceneSequenceID = {}

---@return FMovieSceneSequenceID
function FMovieSceneSequenceID:get() end



---@class FMovieSceneSequenceInstanceData
FMovieSceneSequenceInstanceData = {}

---@return FMovieSceneSequenceInstanceData
function FMovieSceneSequenceInstanceData:get() end


---@class FMovieSceneSequenceInstanceDataPtr
FMovieSceneSequenceInstanceDataPtr = {}

---@return FMovieSceneSequenceInstanceDataPtr
function FMovieSceneSequenceInstanceDataPtr:get() end


---@class FMovieSceneSequenceLoopCount
---@field Value int32
FMovieSceneSequenceLoopCount = {}

---@return FMovieSceneSequenceLoopCount
function FMovieSceneSequenceLoopCount:get() end



---@class FMovieSceneSequencePlayToParams
---@field bExclusive boolean
FMovieSceneSequencePlayToParams = {}

---@return FMovieSceneSequencePlayToParams
function FMovieSceneSequencePlayToParams:get() end



---@class FMovieSceneSequencePlaybackParams
---@field Frame FFrameTime
---@field Time float
---@field MarkedFrame FString
---@field PositionType EMovieScenePositionType
---@field UpdateMethod EUpdatePositionMethod
---@field bHasJumped boolean
FMovieSceneSequencePlaybackParams = {}

---@return FMovieSceneSequencePlaybackParams
function FMovieSceneSequencePlaybackParams:get() end



---@class FMovieSceneSequencePlaybackSettings
---@field bAutoPlay boolean
---@field LoopCount FMovieSceneSequenceLoopCount
---@field TickInterval FMovieSceneSequenceTickInterval
---@field PlayRate float
---@field StartTime float
---@field bRandomStartTime boolean
---@field bRestoreState boolean
---@field bDisableMovementInput boolean
---@field bDisableLookAtInput boolean
---@field bHidePlayer boolean
---@field bHideHud boolean
---@field bDisableCameraCuts boolean
---@field bPauseAtEnd boolean
---@field bInheritTickIntervalFromOwner boolean
FMovieSceneSequencePlaybackSettings = {}

---@return FMovieSceneSequencePlaybackSettings
function FMovieSceneSequencePlaybackSettings:get() end



---@class FMovieSceneSequenceReplProperties
---@field LastKnownPosition FFrameTime
---@field LastKnownStatus EMovieScenePlayerStatus::Type
---@field LastKnownNumLoops int32
FMovieSceneSequenceReplProperties = {}

---@return FMovieSceneSequenceReplProperties
function FMovieSceneSequenceReplProperties:get() end



---@class FMovieSceneSequenceTickInterval
---@field TickIntervalSeconds float
---@field EvaluationBudgetMicroseconds float
---@field bTickWhenPaused boolean
---@field bAllowRounding boolean
FMovieSceneSequenceTickInterval = {}

---@return FMovieSceneSequenceTickInterval
function FMovieSceneSequenceTickInterval:get() end



---@class FMovieSceneSequenceTransform
---@field LinearTransform FMovieSceneTimeTransform
---@field NestedTransforms TArray<FMovieSceneNestedSequenceTransform>
FMovieSceneSequenceTransform = {}

---@return FMovieSceneSequenceTransform
function FMovieSceneSequenceTransform:get() end



---@class FMovieSceneSpawnable
---@field SpawnTransform FTransform
---@field Tags TArray<FName>
---@field bContinuouslyRespawn boolean
---@field bNetAddressableName boolean
---@field bEvaluateTracksWhenNotSpawned boolean
---@field Guid FGuid
---@field Name FString
---@field ObjectTemplate UObject
---@field ChildPossessables TArray<FGuid>
---@field Ownership ESpawnOwnership
---@field LevelName FName
FMovieSceneSpawnable = {}

---@return FMovieSceneSpawnable
function FMovieSceneSpawnable:get() end



---@class FMovieSceneSubSectionData
---@field Section TWeakObjectPtr<UMovieSceneSubSection>
---@field ObjectBindingID FGuid
---@field Flags ESectionEvaluationFlags
FMovieSceneSubSectionData = {}

---@return FMovieSceneSubSectionData
function FMovieSceneSubSectionData:get() end



---@class FMovieSceneSubSequenceData
---@field Sequence FSoftObjectPath
---@field OuterToInnerTransform FMovieSceneSequenceTransform
---@field RootToSequenceTransform FMovieSceneSequenceTransform
---@field TickResolution FFrameRate
---@field DeterministicSequenceID FMovieSceneSequenceID
---@field ParentPlayRange FMovieSceneFrameRange
---@field ParentStartFrameOffset FFrameNumber
---@field ParentEndFrameOffset FFrameNumber
---@field ParentFirstLoopStartFrameOffset FFrameNumber
---@field bCanLoop boolean
---@field PlayRange FMovieSceneFrameRange
---@field FullPlayRange FMovieSceneFrameRange
---@field UnwarpedPlayRange FMovieSceneFrameRange
---@field PreRollRange FMovieSceneFrameRange
---@field PostRollRange FMovieSceneFrameRange
---@field HierarchicalBias int16
---@field bHasHierarchicalEasing boolean
---@field InstanceData FMovieSceneSequenceInstanceDataPtr
---@field SubSectionSignature FGuid
FMovieSceneSubSequenceData = {}

---@return FMovieSceneSubSequenceData
function FMovieSceneSubSequenceData:get() end



---@class FMovieSceneSubSequenceTree
FMovieSceneSubSequenceTree = {}

---@return FMovieSceneSubSequenceTree
function FMovieSceneSubSequenceTree:get() end


---@class FMovieSceneSubSequenceTreeEntry
FMovieSceneSubSequenceTreeEntry = {}

---@return FMovieSceneSubSequenceTreeEntry
function FMovieSceneSubSequenceTreeEntry:get() end


---@class FMovieSceneTangentData
---@field ArriveTangent float
---@field LeaveTangent float
---@field ArriveTangentWeight float
---@field LeaveTangentWeight float
---@field TangentWeightMode ERichCurveTangentWeightMode
FMovieSceneTangentData = {}

---@return FMovieSceneTangentData
function FMovieSceneTangentData:get() end



---@class FMovieSceneTemplateGenerationLedger
---@field LastTrackIdentifier FMovieSceneTrackIdentifier
---@field TrackSignatureToTrackIdentifier TMap<FGuid, FMovieSceneTrackIdentifier>
---@field SubSectionRanges TMap<FGuid, FMovieSceneFrameRange>
FMovieSceneTemplateGenerationLedger = {}

---@return FMovieSceneTemplateGenerationLedger
function FMovieSceneTemplateGenerationLedger:get() end



---@class FMovieSceneTimeTransform
---@field TimeScale float
---@field Offset FFrameTime
FMovieSceneTimeTransform = {}

---@return FMovieSceneTimeTransform
function FMovieSceneTimeTransform:get() end



---@class FMovieSceneTimeWarping
---@field Start FFrameNumber
---@field End FFrameNumber
FMovieSceneTimeWarping = {}

---@return FMovieSceneTimeWarping
function FMovieSceneTimeWarping:get() end



---@class FMovieSceneTimecodeSource
---@field Timecode FTimecode
FMovieSceneTimecodeSource = {}

---@return FMovieSceneTimecodeSource
function FMovieSceneTimecodeSource:get() end



---@class FMovieSceneTrackDisplayOptions
---@field bShowVerticalFrames boolean
FMovieSceneTrackDisplayOptions = {}

---@return FMovieSceneTrackDisplayOptions
function FMovieSceneTrackDisplayOptions:get() end



---@class FMovieSceneTrackEvalOptions
---@field bCanEvaluateNearestSection boolean
---@field bEvalNearestSection boolean
---@field bEvaluateInPreroll boolean
---@field bEvaluateInPostroll boolean
---@field bEvaluateNearestSection boolean
FMovieSceneTrackEvalOptions = {}

---@return FMovieSceneTrackEvalOptions
function FMovieSceneTrackEvalOptions:get() end



---@class FMovieSceneTrackEvaluationField
---@field Entries TArray<FMovieSceneTrackEvaluationFieldEntry>
FMovieSceneTrackEvaluationField = {}

---@return FMovieSceneTrackEvaluationField
function FMovieSceneTrackEvaluationField:get() end



---@class FMovieSceneTrackEvaluationFieldEntry
---@field Section UMovieSceneSection
---@field Range FFrameNumberRange
---@field ForcedTime FFrameNumber
---@field Flags ESectionEvaluationFlags
---@field LegacySortOrder int16
FMovieSceneTrackEvaluationFieldEntry = {}

---@return FMovieSceneTrackEvaluationFieldEntry
function FMovieSceneTrackEvaluationFieldEntry:get() end



---@class FMovieSceneTrackIdentifier
---@field Value uint32
FMovieSceneTrackIdentifier = {}

---@return FMovieSceneTrackIdentifier
function FMovieSceneTrackIdentifier:get() end



---@class FMovieSceneTrackImplementation : FMovieSceneEvalTemplateBase
FMovieSceneTrackImplementation = {}

---@return FMovieSceneTrackImplementation
function FMovieSceneTrackImplementation:get() end


---@class FMovieSceneTrackImplementationPtr
FMovieSceneTrackImplementationPtr = {}

---@return FMovieSceneTrackImplementationPtr
function FMovieSceneTrackImplementationPtr:get() end


---@class FMovieSceneTrackInstanceComponent
---@field Owner UMovieSceneSection
---@field TrackInstanceClass TSubclassOf<UMovieSceneTrackInstance>
FMovieSceneTrackInstanceComponent = {}

---@return FMovieSceneTrackInstanceComponent
function FMovieSceneTrackInstanceComponent:get() end



---@class FMovieSceneTrackInstanceEntry
---@field BoundObject UObject
---@field TrackInstance UMovieSceneTrackInstance
FMovieSceneTrackInstanceEntry = {}

---@return FMovieSceneTrackInstanceEntry
function FMovieSceneTrackInstanceEntry:get() end



---@class FMovieSceneTrackInstanceInput
---@field Section UMovieSceneSection
FMovieSceneTrackInstanceInput = {}

---@return FMovieSceneTrackInstanceInput
function FMovieSceneTrackInstanceInput:get() end



---@class FMovieSceneTrackLabels
---@field Strings TArray<FString>
FMovieSceneTrackLabels = {}

---@return FMovieSceneTrackLabels
function FMovieSceneTrackLabels:get() end



---@class FMovieSceneWarpCounter
---@field WarpCounts TArray<uint32>
FMovieSceneWarpCounter = {}

---@return FMovieSceneWarpCounter
function FMovieSceneWarpCounter:get() end



---@class FOptionalMovieSceneBlendType
---@field BlendType EMovieSceneBlendType
---@field bIsValid boolean
FOptionalMovieSceneBlendType = {}

---@return FOptionalMovieSceneBlendType
function FOptionalMovieSceneBlendType:get() end



---@class FSectionEvaluationData
---@field ImplIndex int32
---@field ForcedTime FFrameNumber
---@field Flags ESectionEvaluationFlags
FSectionEvaluationData = {}

---@return FSectionEvaluationData
function FSectionEvaluationData:get() end



---@class FTestMovieSceneEvalTemplate : FMovieSceneEvalTemplate
FTestMovieSceneEvalTemplate = {}

---@return FTestMovieSceneEvalTemplate
function FTestMovieSceneEvalTemplate:get() end


---@class FTrackInstanceInputComponent
---@field Section UMovieSceneSection
---@field OutputIndex int32
FTrackInstanceInputComponent = {}

---@return FTrackInstanceInputComponent
function FTrackInstanceInputComponent:get() end



---@class IMovieSceneBindingOwnerInterface : IInterface
IMovieSceneBindingOwnerInterface = {}

---@return IMovieSceneBindingOwnerInterface
function IMovieSceneBindingOwnerInterface:get() end


---@class IMovieSceneChannelOverrideProvider : IInterface
IMovieSceneChannelOverrideProvider = {}

---@return IMovieSceneChannelOverrideProvider
function IMovieSceneChannelOverrideProvider:get() end


---@class IMovieSceneCustomClockSource : IInterface
IMovieSceneCustomClockSource = {}

---@return IMovieSceneCustomClockSource
function IMovieSceneCustomClockSource:get() end

---@param DeltaSeconds float
---@param InPlayRate float
function IMovieSceneCustomClockSource:OnTick(DeltaSeconds, InPlayRate) end
---@param InStopTime FQualifiedFrameTime
function IMovieSceneCustomClockSource:OnStopPlaying(InStopTime) end
---@param InStartTime FQualifiedFrameTime
function IMovieSceneCustomClockSource:OnStartPlaying(InStartTime) end
---@param InCurrentTime FQualifiedFrameTime
---@param InPlayRate float
---@return FFrameTime
function IMovieSceneCustomClockSource:OnRequestCurrentTime(InCurrentTime, InPlayRate) end


---@class IMovieSceneDeterminismSource : IInterface
IMovieSceneDeterminismSource = {}

---@return IMovieSceneDeterminismSource
function IMovieSceneDeterminismSource:get() end


---@class IMovieSceneEasingFunction : IInterface
IMovieSceneEasingFunction = {}

---@return IMovieSceneEasingFunction
function IMovieSceneEasingFunction:get() end

---@param Interp float
---@return float
function IMovieSceneEasingFunction:OnEvaluate(Interp) end


---@class IMovieSceneEntityProvider : IInterface
IMovieSceneEntityProvider = {}

---@return IMovieSceneEntityProvider
function IMovieSceneEntityProvider:get() end


---@class IMovieSceneEvaluationHook : IInterface
IMovieSceneEvaluationHook = {}

---@return IMovieSceneEvaluationHook
function IMovieSceneEvaluationHook:get() end


---@class IMovieSceneKeyProxy : IInterface
IMovieSceneKeyProxy = {}

---@return IMovieSceneKeyProxy
function IMovieSceneKeyProxy:get() end


---@class IMovieScenePlaybackClient : IInterface
IMovieScenePlaybackClient = {}

---@return IMovieScenePlaybackClient
function IMovieScenePlaybackClient:get() end


---@class IMovieScenePreAnimatedStateSystemInterface : IInterface
IMovieScenePreAnimatedStateSystemInterface = {}

---@return IMovieScenePreAnimatedStateSystemInterface
function IMovieScenePreAnimatedStateSystemInterface:get() end


---@class IMovieSceneSequencePlayerObserver : IInterface
IMovieSceneSequencePlayerObserver = {}

---@return IMovieSceneSequencePlayerObserver
function IMovieSceneSequencePlayerObserver:get() end


---@class IMovieSceneSequenceTickManagerClient : IInterface
IMovieSceneSequenceTickManagerClient = {}

---@return IMovieSceneSequenceTickManagerClient
function IMovieSceneSequenceTickManagerClient:get() end


---@class IMovieSceneTrackTemplateProducer : IInterface
IMovieSceneTrackTemplateProducer = {}

---@return IMovieSceneTrackTemplateProducer
function IMovieSceneTrackTemplateProducer:get() end


---@class IMovieSceneValueDecomposer : IInterface
IMovieSceneValueDecomposer = {}

---@return IMovieSceneValueDecomposer
function IMovieSceneValueDecomposer:get() end


---@class INodeAndChannelMappings : IInterface
INodeAndChannelMappings = {}

---@return INodeAndChannelMappings
function INodeAndChannelMappings:get() end


---@class UMovieScene : UMovieSceneSignedObject
---@field Spawnables TArray<FMovieSceneSpawnable>
---@field Possessables TArray<FMovieScenePossessable>
---@field ObjectBindings TArray<FMovieSceneBinding>
---@field BindingGroups TMap<FName, FMovieSceneObjectBindingIDs>
---@field MasterTracks TArray<UMovieSceneTrack>
---@field CameraCutTrack UMovieSceneTrack
---@field SelectionRange FMovieSceneFrameRange
---@field PlaybackRange FMovieSceneFrameRange
---@field TickResolution FFrameRate
---@field DisplayRate FFrameRate
---@field EvaluationType EMovieSceneEvaluationType
---@field ClockSource EUpdateClockSource
---@field CustomClockSourcePath FSoftObjectPath
---@field MarkedFrames TArray<FMovieSceneMarkedFrame>
UMovieScene = {}

---@return UMovieScene
function UMovieScene:get() end



---@class UMovieSceneBindingOverrides : UObject
---@field BindingData TArray<FMovieSceneBindingOverrideData>
UMovieSceneBindingOverrides = {}

---@return UMovieSceneBindingOverrides
function UMovieSceneBindingOverrides:get() end



---@class UMovieSceneBlenderSystem : UMovieSceneEntitySystem
UMovieSceneBlenderSystem = {}

---@return UMovieSceneBlenderSystem
function UMovieSceneBlenderSystem:get() end


---@class UMovieSceneBoolSection : UMovieSceneSection
---@field DefaultValue boolean
---@field BoolCurve FMovieSceneBoolChannel
UMovieSceneBoolSection = {}

---@return UMovieSceneBoolSection
function UMovieSceneBoolSection:get() end



---@class UMovieSceneBoundSceneComponentInstantiator : UMovieSceneEntityInstantiatorSystem
UMovieSceneBoundSceneComponentInstantiator = {}

---@return UMovieSceneBoundSceneComponentInstantiator
function UMovieSceneBoundSceneComponentInstantiator:get() end


---@class UMovieSceneBuiltInEasingFunction : UObject
---@field Type EMovieSceneBuiltInEasing
UMovieSceneBuiltInEasingFunction = {}

---@return UMovieSceneBuiltInEasingFunction
function UMovieSceneBuiltInEasingFunction:get() end



---@class UMovieSceneCachePreAnimatedStateSystem : UMovieSceneEntityInstantiatorSystem
UMovieSceneCachePreAnimatedStateSystem = {}

---@return UMovieSceneCachePreAnimatedStateSystem
function UMovieSceneCachePreAnimatedStateSystem:get() end


---@class UMovieSceneChannelOverrideContainer : UMovieSceneSignedObject
UMovieSceneChannelOverrideContainer = {}

---@return UMovieSceneChannelOverrideContainer
function UMovieSceneChannelOverrideContainer:get() end


---@class UMovieSceneCompiledData : UObject
---@field EvaluationTemplate FMovieSceneEvaluationTemplate
---@field Hierarchy FMovieSceneSequenceHierarchy
---@field EntityComponentField FMovieSceneEntityComponentField
---@field TrackTemplateField FMovieSceneEvaluationField
---@field DeterminismFences TArray<FFrameTime>
---@field CompiledSignature FGuid
---@field CompilerVersion FGuid
---@field AccumulatedMask FMovieSceneSequenceCompilerMaskStruct
---@field AllocatedMask FMovieSceneSequenceCompilerMaskStruct
---@field AccumulatedFlags EMovieSceneSequenceFlags
UMovieSceneCompiledData = {}

---@return UMovieSceneCompiledData
function UMovieSceneCompiledData:get() end



---@class UMovieSceneCompiledDataManager : UObject
---@field Hierarchies TMap<int32, FMovieSceneSequenceHierarchy>
---@field TrackTemplates TMap<int32, FMovieSceneEvaluationTemplate>
---@field TrackTemplateFields TMap<int32, FMovieSceneEvaluationField>
---@field EntityComponentFields TMap<int32, FMovieSceneEntityComponentField>
UMovieSceneCompiledDataManager = {}

---@return UMovieSceneCompiledDataManager
function UMovieSceneCompiledDataManager:get() end



---@class UMovieSceneEasingExternalCurve : UObject
---@field Curve UCurveFloat
UMovieSceneEasingExternalCurve = {}

---@return UMovieSceneEasingExternalCurve
function UMovieSceneEasingExternalCurve:get() end



---@class UMovieSceneEntityInstantiatorSystem : UMovieSceneEntitySystem
UMovieSceneEntityInstantiatorSystem = {}

---@return UMovieSceneEntityInstantiatorSystem
function UMovieSceneEntityInstantiatorSystem:get() end


---@class UMovieSceneEntitySystem : UObject
---@field Linker UMovieSceneEntitySystemLinker
UMovieSceneEntitySystem = {}

---@return UMovieSceneEntitySystem
function UMovieSceneEntitySystem:get() end



---@class UMovieSceneEntitySystemLinker : UObject
---@field SystemGraph FMovieSceneEntitySystemGraph
UMovieSceneEntitySystemLinker = {}

---@return UMovieSceneEntitySystemLinker
function UMovieSceneEntitySystemLinker:get() end



---@class UMovieSceneEvalTimeSystem : UMovieSceneEntitySystem
UMovieSceneEvalTimeSystem = {}

---@return UMovieSceneEvalTimeSystem
function UMovieSceneEvalTimeSystem:get() end


---@class UMovieSceneEvaluationHookSystem : UMovieSceneEntitySystem
---@field PendingEventsByRootInstance TMap<FMovieSceneEvaluationInstanceKey, FMovieSceneEvaluationHookEventContainer>
UMovieSceneEvaluationHookSystem = {}

---@return UMovieSceneEvaluationHookSystem
function UMovieSceneEvaluationHookSystem:get() end



---@class UMovieSceneFolder : UObject
---@field FolderName FName
---@field ChildFolders TArray<UMovieSceneFolder>
---@field ChildMasterTracks TArray<UMovieSceneTrack>
---@field ChildObjectBindingStrings TArray<FString>
UMovieSceneFolder = {}

---@return UMovieSceneFolder
function UMovieSceneFolder:get() end



---@class UMovieSceneGenericBoundObjectInstantiator : UMovieSceneEntityInstantiatorSystem
UMovieSceneGenericBoundObjectInstantiator = {}

---@return UMovieSceneGenericBoundObjectInstantiator
function UMovieSceneGenericBoundObjectInstantiator:get() end


---@class UMovieSceneHookSection : UMovieSceneSection
---@field bRequiresRangedHook boolean
---@field bRequiresTriggerHooks boolean
UMovieSceneHookSection = {}

---@return UMovieSceneHookSection
function UMovieSceneHookSection:get() end



---@class UMovieSceneMasterInstantiatorSystem : UMovieSceneEntityInstantiatorSystem
UMovieSceneMasterInstantiatorSystem = {}

---@return UMovieSceneMasterInstantiatorSystem
function UMovieSceneMasterInstantiatorSystem:get() end


---@class UMovieSceneNameableTrack : UMovieSceneTrack
UMovieSceneNameableTrack = {}

---@return UMovieSceneNameableTrack
function UMovieSceneNameableTrack:get() end


---@class UMovieSceneNodeGroup : UObject
UMovieSceneNodeGroup = {}

---@return UMovieSceneNodeGroup
function UMovieSceneNodeGroup:get() end


---@class UMovieSceneNodeGroupCollection : UObject
UMovieSceneNodeGroupCollection = {}

---@return UMovieSceneNodeGroupCollection
function UMovieSceneNodeGroupCollection:get() end


---@class UMovieSceneRestorePreAnimatedStateSystem : UMovieSceneEntityInstantiatorSystem
UMovieSceneRestorePreAnimatedStateSystem = {}

---@return UMovieSceneRestorePreAnimatedStateSystem
function UMovieSceneRestorePreAnimatedStateSystem:get() end


---@class UMovieSceneSection : UMovieSceneSignedObject
---@field EvalOptions FMovieSceneSectionEvalOptions
---@field Easing FMovieSceneEasingSettings
---@field SectionRange FMovieSceneFrameRange
---@field PreRollFrames FFrameNumber
---@field PostRollFrames FFrameNumber
---@field RowIndex int32
---@field OverlapPriority int32
---@field bIsActive boolean
---@field bIsLocked boolean
---@field StartTime float
---@field EndTime float
---@field PrerollTime float
---@field PostrollTime float
---@field bIsInfinite boolean
---@field bSupportsInfiniteRange boolean
---@field BlendType FOptionalMovieSceneBlendType
UMovieSceneSection = {}

---@return UMovieSceneSection
function UMovieSceneSection:get() end

---@param NewRowIndex int32
function UMovieSceneSection:SetRowIndex(NewRowIndex) end
---@param InPreRollFrames int32
function UMovieSceneSection:SetPreRollFrames(InPreRollFrames) end
---@param InPostRollFrames int32
function UMovieSceneSection:SetPostRollFrames(InPostRollFrames) end
---@param NewPriority int32
function UMovieSceneSection:SetOverlapPriority(NewPriority) end
---@param bInIsLocked boolean
function UMovieSceneSection:SetIsLocked(bInIsLocked) end
---@param bInIsActive boolean
function UMovieSceneSection:SetIsActive(bInIsActive) end
---@param InCompletionMode EMovieSceneCompletionMode
function UMovieSceneSection:SetCompletionMode(InCompletionMode) end
---@param InBlendType EMovieSceneBlendType
function UMovieSceneSection:SetBlendType(InBlendType) end
---@return boolean
function UMovieSceneSection:IsLocked() end
---@return boolean
function UMovieSceneSection:IsActive() end
---@return int32
function UMovieSceneSection:GetRowIndex() end
---@return int32
function UMovieSceneSection:GetPreRollFrames() end
---@return int32
function UMovieSceneSection:GetPostRollFrames() end
---@return int32
function UMovieSceneSection:GetOverlapPriority() end
---@return EMovieSceneCompletionMode
function UMovieSceneSection:GetCompletionMode() end
---@return FOptionalMovieSceneBlendType
function UMovieSceneSection:GetBlendType() end


---@class UMovieSceneSectionChannelOverrideRegistry : UObject
---@field Overrides TMap<FName, UMovieSceneChannelOverrideContainer>
UMovieSceneSectionChannelOverrideRegistry = {}

---@return UMovieSceneSectionChannelOverrideRegistry
function UMovieSceneSectionChannelOverrideRegistry:get() end



---@class UMovieSceneSequence : UMovieSceneSignedObject
---@field CompiledData UMovieSceneCompiledData
---@field DefaultCompletionMode EMovieSceneCompletionMode
---@field bParentContextsAreSignificant boolean
---@field bPlayableDirectly boolean
---@field SequenceFlags EMovieSceneSequenceFlags
UMovieSceneSequence = {}

---@return UMovieSceneSequence
function UMovieSceneSequence:get() end

---@return FMovieSceneTimecodeSource
function UMovieSceneSequence:GetEarliestTimecodeSource() end
---@param InBindingName FName
---@return TArray<FMovieSceneObjectBindingID>
function UMovieSceneSequence:FindBindingsByTag(InBindingName) end
---@param InBindingName FName
---@return FMovieSceneObjectBindingID
function UMovieSceneSequence:FindBindingByTag(InBindingName) end


---@class UMovieSceneSequencePlayer : UObject
---@field Observer TScriptInterface<IMovieSceneSequencePlayerObserver>
---@field OnPlay FMovieSceneSequencePlayerOnPlay
---@field OnPlayReverse FMovieSceneSequencePlayerOnPlayReverse
---@field OnStop FMovieSceneSequencePlayerOnStop
---@field OnPause FMovieSceneSequencePlayerOnPause
---@field OnFinished FMovieSceneSequencePlayerOnFinished
---@field Status EMovieScenePlayerStatus::Type
---@field bReversePlayback boolean
---@field Sequence UMovieSceneSequence
---@field StartTime FFrameNumber
---@field DurationFrames int32
---@field DurationSubFrames float
---@field CurrentNumLoops int32
---@field PlaybackSettings FMovieSceneSequencePlaybackSettings
---@field RootTemplateInstance FMovieSceneRootEvaluationTemplateInstance
---@field NetSyncProps FMovieSceneSequenceReplProperties
---@field PlaybackClient TScriptInterface<IMovieScenePlaybackClient>
---@field TickManager UMovieSceneSequenceTickManager
UMovieSceneSequencePlayer = {}

---@return UMovieSceneSequencePlayer
function UMovieSceneSequencePlayer:get() end

function UMovieSceneSequencePlayer:StopAtCurrentTime() end
function UMovieSceneSequencePlayer:Stop() end
---@param StartTime float
---@param Duration float
function UMovieSceneSequencePlayer:SetTimeRange(StartTime, Duration) end
---@param PlayRate float
function UMovieSceneSequencePlayer:SetPlayRate(PlayRate) end
---@param PlaybackParams FMovieSceneSequencePlaybackParams
function UMovieSceneSequencePlayer:SetPlaybackPosition(PlaybackParams) end
---@param FrameRate FFrameRate
function UMovieSceneSequencePlayer:SetFrameRate(FrameRate) end
---@param StartFrame int32
---@param Duration int32
---@param SubFrames float
function UMovieSceneSequencePlayer:SetFrameRange(StartFrame, Duration, SubFrames) end
---@param bInDisableCameraCuts boolean
function UMovieSceneSequencePlayer:SetDisableCameraCuts(bInDisableCameraCuts) end
---@param TimeInSeconds float
function UMovieSceneSequencePlayer:ScrubToSeconds(TimeInSeconds) end
---@param InLabel FString
---@return boolean
function UMovieSceneSequencePlayer:ScrubToMarkedFrame(InLabel) end
---@param NewPosition FFrameTime
function UMovieSceneSequencePlayer:ScrubToFrame(NewPosition) end
function UMovieSceneSequencePlayer:Scrub() end
---@param StoppedTime FFrameTime
function UMovieSceneSequencePlayer:RPC_OnStopEvent(StoppedTime) end
---@param StoppedTime FFrameTime
function UMovieSceneSequencePlayer:RPC_OnFinishPlaybackEvent(StoppedTime) end
---@param Method EUpdatePositionMethod
---@param RelevantTime FFrameTime
function UMovieSceneSequencePlayer:RPC_ExplicitServerUpdateEvent(Method, RelevantTime) end
function UMovieSceneSequencePlayer:RestoreState() end
---@param TimeInSeconds float
function UMovieSceneSequencePlayer:PlayToSeconds(TimeInSeconds) end
---@param InLabel FString
---@return boolean
function UMovieSceneSequencePlayer:PlayToMarkedFrame(InLabel) end
---@param NewPosition FFrameTime
function UMovieSceneSequencePlayer:PlayToFrame(NewPosition) end
---@param PlaybackParams FMovieSceneSequencePlaybackParams
---@param PlayToParams FMovieSceneSequencePlayToParams
function UMovieSceneSequencePlayer:PlayTo(PlaybackParams, PlayToParams) end
function UMovieSceneSequencePlayer:PlayReverse() end
---@param NumLoops int32
function UMovieSceneSequencePlayer:PlayLooping(NumLoops) end
function UMovieSceneSequencePlayer:Play() end
function UMovieSceneSequencePlayer:Pause() end
---@param TimeInSeconds float
function UMovieSceneSequencePlayer:JumpToSeconds(TimeInSeconds) end
---@param InLabel FString
---@return boolean
function UMovieSceneSequencePlayer:JumpToMarkedFrame(InLabel) end
---@param NewPosition FFrameTime
function UMovieSceneSequencePlayer:JumpToFrame(NewPosition) end
---@return boolean
function UMovieSceneSequencePlayer:IsReversed() end
---@return boolean
function UMovieSceneSequencePlayer:IsPlaying() end
---@return boolean
function UMovieSceneSequencePlayer:IsPaused() end
function UMovieSceneSequencePlayer:GoToEndAndStop() end
---@return FQualifiedFrameTime
function UMovieSceneSequencePlayer:GetStartTime() end
---@param bAddClientInfo boolean
---@return FString
function UMovieSceneSequencePlayer:GetSequenceName(bAddClientInfo) end
---@return UMovieSceneSequence
function UMovieSceneSequencePlayer:GetSequence() end
---@return float
function UMovieSceneSequencePlayer:GetPlayRate() end
---@param InObject UObject
---@return TArray<FMovieSceneObjectBindingID>
function UMovieSceneSequencePlayer:GetObjectBindings(InObject) end
---@return FFrameRate
function UMovieSceneSequencePlayer:GetFrameRate() end
---@return int32
function UMovieSceneSequencePlayer:GetFrameDuration() end
---@return FQualifiedFrameTime
function UMovieSceneSequencePlayer:GetEndTime() end
---@return FQualifiedFrameTime
function UMovieSceneSequencePlayer:GetDuration() end
---@return boolean
function UMovieSceneSequencePlayer:GetDisableCameraCuts() end
---@return FQualifiedFrameTime
function UMovieSceneSequencePlayer:GetCurrentTime() end
---@param ObjectBinding FMovieSceneObjectBindingID
---@return TArray<UObject>
function UMovieSceneSequencePlayer:GetBoundObjects(ObjectBinding) end
function UMovieSceneSequencePlayer:ChangePlaybackDirection() end


---@class UMovieSceneSequenceTickManager : UObject
UMovieSceneSequenceTickManager = {}

---@return UMovieSceneSequenceTickManager
function UMovieSceneSequenceTickManager:get() end


---@class UMovieSceneSignedObject : UObject
---@field Signature FGuid
UMovieSceneSignedObject = {}

---@return UMovieSceneSignedObject
function UMovieSceneSignedObject:get() end



---@class UMovieSceneSpawnSection : UMovieSceneBoolSection
UMovieSceneSpawnSection = {}

---@return UMovieSceneSpawnSection
function UMovieSceneSpawnSection:get() end


---@class UMovieSceneSpawnTrack : UMovieSceneTrack
---@field Sections TArray<UMovieSceneSection>
---@field ObjectGuid FGuid
UMovieSceneSpawnTrack = {}

---@return UMovieSceneSpawnTrack
function UMovieSceneSpawnTrack:get() end



---@class UMovieSceneSpawnablesSystem : UMovieSceneEntitySystem
UMovieSceneSpawnablesSystem = {}

---@return UMovieSceneSpawnablesSystem
function UMovieSceneSpawnablesSystem:get() end


---@class UMovieSceneSubSection : UMovieSceneSection
---@field Parameters FMovieSceneSectionParameters
---@field StartOffset float
---@field TimeScale float
---@field PrerollTime float
---@field NetworkMask uint8
---@field SubSequence UMovieSceneSequence
UMovieSceneSubSection = {}

---@return UMovieSceneSubSection
function UMovieSceneSubSection:get() end

---@param Sequence UMovieSceneSequence
function UMovieSceneSubSection:SetSequence(Sequence) end
---@return UMovieSceneSequence
function UMovieSceneSubSection:GetSequence() end


---@class UMovieSceneSubTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
UMovieSceneSubTrack = {}

---@return UMovieSceneSubTrack
function UMovieSceneSubTrack:get() end



---@class UMovieSceneTrack : UMovieSceneSignedObject
---@field EvalOptions FMovieSceneTrackEvalOptions
---@field bIsEvalDisabled boolean
---@field RowsDisabled TArray<int32>
---@field EvaluationFieldGuid FGuid
---@field EvaluationField FMovieSceneTrackEvaluationField
UMovieSceneTrack = {}

---@return UMovieSceneTrack
function UMovieSceneTrack:get() end



---@class UMovieSceneTrackInstance : UObject
---@field AnimatedObject UObject
---@field bIsMasterTrackInstance boolean
---@field PrivateLinker UMovieSceneEntitySystemLinker
---@field Inputs TArray<FMovieSceneTrackInstanceInput>
UMovieSceneTrackInstance = {}

---@return UMovieSceneTrackInstance
function UMovieSceneTrackInstance:get() end



---@class UMovieSceneTrackInstanceInstantiator : UMovieSceneEntityInstantiatorSystem
UMovieSceneTrackInstanceInstantiator = {}

---@return UMovieSceneTrackInstanceInstantiator
function UMovieSceneTrackInstanceInstantiator:get() end


---@class UMovieSceneTrackInstanceSystem : UMovieSceneEntitySystem
---@field Instantiator UMovieSceneTrackInstanceInstantiator
UMovieSceneTrackInstanceSystem = {}

---@return UMovieSceneTrackInstanceSystem
function UMovieSceneTrackInstanceSystem:get() end



---@class UTestMovieSceneEvalHookSection : UMovieSceneHookSection
UTestMovieSceneEvalHookSection = {}

---@return UTestMovieSceneEvalHookSection
function UTestMovieSceneEvalHookSection:get() end


---@class UTestMovieSceneEvalHookTrack : UMovieSceneTrack
---@field SectionArray TArray<UMovieSceneSection>
UTestMovieSceneEvalHookTrack = {}

---@return UTestMovieSceneEvalHookTrack
function UTestMovieSceneEvalHookTrack:get() end



---@class UTestMovieSceneSection : UMovieSceneSection
UTestMovieSceneSection = {}

---@return UTestMovieSceneSection
function UTestMovieSceneSection:get() end


---@class UTestMovieSceneSequence : UMovieSceneSequence
---@field MovieScene UMovieScene
UTestMovieSceneSequence = {}

---@return UTestMovieSceneSequence
function UTestMovieSceneSequence:get() end



---@class UTestMovieSceneSubSection : UMovieSceneSubSection
UTestMovieSceneSubSection = {}

---@return UTestMovieSceneSubSection
function UTestMovieSceneSubSection:get() end


---@class UTestMovieSceneSubTrack : UMovieSceneSubTrack
---@field SectionArray TArray<UMovieSceneSection>
UTestMovieSceneSubTrack = {}

---@return UTestMovieSceneSubTrack
function UTestMovieSceneSubTrack:get() end



---@class UTestMovieSceneTrack : UMovieSceneTrack
---@field bHighPassFilter boolean
---@field SectionArray TArray<UMovieSceneSection>
UTestMovieSceneTrack = {}

---@return UTestMovieSceneTrack
function UTestMovieSceneTrack:get() end



