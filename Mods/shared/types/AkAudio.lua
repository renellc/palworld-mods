---@meta

---@class AAkAcousticPortal : AVolume
---@field Portal UAkPortalComponent
---@field InitialState AkAcousticPortalState
---@field bRequiresStateMigration boolean
AAkAcousticPortal = {}

---@return AAkAcousticPortal
function AAkAcousticPortal:get() end

---@return AkAcousticPortalState
function AAkAcousticPortal:GetCurrentState() end
function AAkAcousticPortal:EnablePortal() end
function AAkAcousticPortal:DisablePortal() end


---@class AAkAmbientSound : AActor
---@field AkAudioEvent UAkAudioEvent
---@field AkComponent UAkComponent
---@field StopWhenOwnerIsDestroyed boolean
---@field AutoPost boolean
AAkAmbientSound = {}

---@return AAkAmbientSound
function AAkAmbientSound:get() end

function AAkAmbientSound:StopAmbientSound() end
function AAkAmbientSound:StartAmbientSound() end


---@class AAkReverbVolume : AVolume
---@field bEnabled boolean
---@field AuxBus UAkAuxBus
---@field AuxBusName FString
---@field SendLevel float
---@field FadeRate float
---@field Priority float
---@field LateReverbComponent UAkLateReverbComponent
AAkReverbVolume = {}

---@return AAkReverbVolume
function AAkReverbVolume:get() end



---@class AAkReverbZone : AAkSpatialAudioVolume
AAkReverbZone = {}

---@return AAkReverbZone
function AAkReverbZone:get() end


---@class AAkSpatialAudioVolume : AVolume
---@field SurfaceReflectorSet UAkSurfaceReflectorSetComponent
---@field LateReverb UAkLateReverbComponent
---@field Room UAkRoomComponent
AAkSpatialAudioVolume = {}

---@return AAkSpatialAudioVolume
function AAkSpatialAudioVolume:get() end



---@class AAkSpotReflector : AActor
---@field EarlyReflectionAuxBus UAkAuxBus
---@field EarlyReflectionAuxBusName FString
---@field AcousticTexture UAkAcousticTexture
---@field DistanceScalingFactor float
---@field Level float
---@field SameRoomOnly boolean
---@field EnableRoomOverride boolean
---@field RoomOverride AActor
AAkSpotReflector = {}

---@return AAkSpotReflector
function AAkSpotReflector:get() end



---@class FAKWaapiJsonObject
FAKWaapiJsonObject = {}

---@return FAKWaapiJsonObject
function FAKWaapiJsonObject:get() end


---@class FAkAcousticSurface
---@field Texture uint32
---@field Occlusion float
---@field Name FString
FAkAcousticSurface = {}

---@return FAkAcousticSurface
function FAkAcousticSurface:get() end



---@class FAkAcousticTextureParams
---@field AbsorptionValues FVector4
FAkAcousticTextureParams = {}

---@return FAkAcousticTextureParams
function FAkAcousticTextureParams:get() end



---@class FAkAdvancedInitializationSettings
---@field IO_MemorySize uint32
---@field IO_Granularity uint32
---@field TargetAutoStreamBufferLength float
---@field UseStreamCache boolean
---@field MaximumPinnedBytesInCache uint32
---@field EnableGameSyncPreparation boolean
---@field ContinuousPlaybackLookAhead uint32
---@field MonitorQueuePoolSize uint32
---@field MaximumHardwareTimeoutMs uint32
---@field DebugOutOfRangeCheckEnabled boolean
---@field DebugOutOfRangeLimit float
FAkAdvancedInitializationSettings = {}

---@return FAkAdvancedInitializationSettings
function FAkAdvancedInitializationSettings:get() end



---@class FAkAdvancedInitializationSettingsWithMultiCoreRendering : FAkAdvancedInitializationSettings
---@field EnableMultiCoreRendering boolean
---@field MaxNumJobWorkers uint32
---@field JobWorkerMaxExecutionTimeUSec uint32
FAkAdvancedInitializationSettingsWithMultiCoreRendering = {}

---@return FAkAdvancedInitializationSettingsWithMultiCoreRendering
function FAkAdvancedInitializationSettingsWithMultiCoreRendering:get() end



---@class FAkAndroidAdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field AudioAPI uint32
---@field RoundFrameSizeToHardwareSize boolean
---@field UseLowLatencyMode boolean
FAkAndroidAdvancedInitializationSettings = {}

---@return FAkAndroidAdvancedInitializationSettings
function FAkAndroidAdvancedInitializationSettings:get() end



---@class FAkAudioSession
---@field AudioSessionCategory EAkAudioSessionCategory
---@field AudioSessionCategoryOptions uint32
---@field AudioSessionMode EAkAudioSessionMode
FAkAudioSession = {}

---@return FAkAudioSession
function FAkAudioSession:get() end



---@class FAkBoolPropertyToControl
---@field ItemProperty FString
FAkBoolPropertyToControl = {}

---@return FAkBoolPropertyToControl
function FAkBoolPropertyToControl:get() end



---@class FAkChannelMask
---@field ChannelMask int32
FAkChannelMask = {}

---@return FAkChannelMask
function FAkChannelMask:get() end



---@class FAkCommonInitializationSettings
---@field MaximumNumberOfMemoryPools uint32
---@field MaximumNumberOfPositioningPaths uint32
---@field CommandQueueSize uint32
---@field SamplesPerFrame uint32
---@field MainOutputSettings FAkMainOutputSettings
---@field StreamingLookAheadRatio float
---@field NumberOfRefillsInVoice uint16
---@field SpatialAudioSettings FAkSpatialAudioSettings
FAkCommonInitializationSettings = {}

---@return FAkCommonInitializationSettings
function FAkCommonInitializationSettings:get() end



---@class FAkCommonInitializationSettingsWithSampleRate : FAkCommonInitializationSettings
---@field SampleRate uint32
FAkCommonInitializationSettingsWithSampleRate = {}

---@return FAkCommonInitializationSettingsWithSampleRate
function FAkCommonInitializationSettingsWithSampleRate:get() end



---@class FAkCommunicationSettings
---@field PoolSize uint32
---@field DiscoveryBroadcastPort uint16
---@field CommandPort uint16
---@field NetworkName FString
FAkCommunicationSettings = {}

---@return FAkCommunicationSettings
function FAkCommunicationSettings:get() end



---@class FAkCommunicationSettingsWithCommSelection : FAkCommunicationSettings
---@field CommunicationSystem EAkCommSystem
FAkCommunicationSettingsWithCommSelection = {}

---@return FAkCommunicationSettingsWithCommSelection
function FAkCommunicationSettingsWithCommSelection:get() end



---@class FAkCommunicationSettingsWithSystemInitialization : FAkCommunicationSettings
---@field InitializeSystemComms boolean
FAkCommunicationSettingsWithSystemInitialization = {}

---@return FAkCommunicationSettingsWithSystemInitialization
function FAkCommunicationSettingsWithSystemInitialization:get() end



---@class FAkExternalSourceInfo
---@field ExternalSrcName FString
---@field CodecID AkCodecId
---@field Filename FString
---@field ExternalSourceAsset UAkExternalMediaAsset
---@field IsStreamed boolean
FAkExternalSourceInfo = {}

---@return FAkExternalSourceInfo
function FAkExternalSourceInfo:get() end



---@class FAkGeometryData
---@field Vertices TArray<FVector>
---@field Surfaces TArray<FAkAcousticSurface>
---@field Triangles TArray<FAkTriangle>
---@field ToOverrideAcousticTexture TArray<UPhysicalMaterial>
---@field ToOverrideOcclusion TArray<UPhysicalMaterial>
FAkGeometryData = {}

---@return FAkGeometryData
function FAkGeometryData:get() end



---@class FAkGeometrySurfaceOverride
---@field AcousticTexture UAkAcousticTexture
---@field bEnableOcclusionOverride boolean
---@field OcclusionValue float
---@field SurfaceArea float
FAkGeometrySurfaceOverride = {}

---@return FAkGeometrySurfaceOverride
function FAkGeometrySurfaceOverride:get() end



---@class FAkGeometrySurfacePropertiesToMap
---@field AcousticTexture TSoftObjectPtr<UAkAcousticTexture>
---@field OcclusionValue float
FAkGeometrySurfacePropertiesToMap = {}

---@return FAkGeometrySurfacePropertiesToMap
function FAkGeometrySurfacePropertiesToMap:get() end



---@class FAkIOSAdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field uNumSpatialAudioPointSources uint32
---@field bVerboseSystemOutput boolean
FAkIOSAdvancedInitializationSettings = {}

---@return FAkIOSAdvancedInitializationSettings
function FAkIOSAdvancedInitializationSettings:get() end



---@class FAkMacAdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field uNumSpatialAudioPointSources uint32
---@field bVerboseSystemOutput boolean
FAkMacAdvancedInitializationSettings = {}

---@return FAkMacAdvancedInitializationSettings
function FAkMacAdvancedInitializationSettings:get() end



---@class FAkMainOutputSettings
---@field AudioDeviceShareSet FString
---@field DeviceID uint32
---@field PanningRule EAkPanningRule
---@field ChannelConfigType EAkChannelConfigType
---@field ChannelMask uint32
---@field NumberOfChannels uint32
FAkMainOutputSettings = {}

---@return FAkMainOutputSettings
function FAkMainOutputSettings:get() end



---@class FAkMidiCc : FAkMidiEventBase
---@field Cc EAkMidiCcValues
---@field Value uint8
FAkMidiCc = {}

---@return FAkMidiCc
function FAkMidiCc:get() end



---@class FAkMidiChannelAftertouch : FAkMidiEventBase
---@field Value uint8
FAkMidiChannelAftertouch = {}

---@return FAkMidiChannelAftertouch
function FAkMidiChannelAftertouch:get() end



---@class FAkMidiEventBase
---@field Type EAkMidiEventType
---@field Chan uint8
FAkMidiEventBase = {}

---@return FAkMidiEventBase
function FAkMidiEventBase:get() end



---@class FAkMidiGeneric : FAkMidiEventBase
---@field Param1 uint8
---@field Param2 uint8
FAkMidiGeneric = {}

---@return FAkMidiGeneric
function FAkMidiGeneric:get() end



---@class FAkMidiNoteAftertouch : FAkMidiEventBase
---@field Note uint8
---@field Value uint8
FAkMidiNoteAftertouch = {}

---@return FAkMidiNoteAftertouch
function FAkMidiNoteAftertouch:get() end



---@class FAkMidiNoteOnOff : FAkMidiEventBase
---@field Note uint8
---@field Velocity uint8
FAkMidiNoteOnOff = {}

---@return FAkMidiNoteOnOff
function FAkMidiNoteOnOff:get() end



---@class FAkMidiPitchBend : FAkMidiEventBase
---@field ValueLsb uint8
---@field ValueMsb uint8
---@field FullValue int32
FAkMidiPitchBend = {}

---@return FAkMidiPitchBend
function FAkMidiPitchBend:get() end



---@class FAkMidiProgramChange : FAkMidiEventBase
---@field ProgramNum uint8
FAkMidiProgramChange = {}

---@return FAkMidiProgramChange
function FAkMidiProgramChange:get() end



---@class FAkOutputSettings
---@field AudioDeviceShareSetName FString
---@field IdDevice int32
---@field PanRule PanningRule
---@field ChannelConfig AkChannelConfiguration
FAkOutputSettings = {}

---@return FAkOutputSettings
function FAkOutputSettings:get() end



---@class FAkPS5AdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field UseHardwareCodecLowLatencyMode boolean
---@field bVorbisHwAcceleration boolean
---@field bEnable3DAudioSync boolean
---@field uNumOperationsForHwMixing uint32
---@field bPlotQueueLevel boolean
---@field NumAudioOut2Ports uint32
---@field NumAudioOut2ObjectPorts uint32
FAkPS5AdvancedInitializationSettings = {}

---@return FAkPS5AdvancedInitializationSettings
function FAkPS5AdvancedInitializationSettings:get() end



---@class FAkPropertyToControl
---@field ItemProperty FString
FAkPropertyToControl = {}

---@return FAkPropertyToControl
function FAkPropertyToControl:get() end



---@class FAkReverbDescriptor
---@field Primitive UPrimitiveComponent
FAkReverbDescriptor = {}

---@return FAkReverbDescriptor
function FAkReverbDescriptor:get() end



---@class FAkSegmentInfo
---@field CurrentPosition int32
---@field PreEntryDuration int32
---@field ActiveDuration int32
---@field PostExitDuration int32
---@field RemainingLookAheadTime int32
---@field BeatDuration float
---@field BarDuration float
---@field GridDuration float
---@field GridOffset float
FAkSegmentInfo = {}

---@return FAkSegmentInfo
function FAkSegmentInfo:get() end



---@class FAkSpatialAudioSettings
---@field MaxSoundPropagationDepth uint32
---@field MovementThreshold float
---@field NumberOfPrimaryRays uint32
---@field ReflectionOrder uint32
---@field DiffractionOrder uint32
---@field MaxEmitterRoomAuxSends uint32
---@field DiffractionOnReflectionsOrder uint32
---@field MaximumPathLength float
---@field CPULimitPercentage float
---@field LoadBalancingSpread uint32
---@field EnableGeometricDiffractionAndTransmission boolean
---@field CalcEmitterVirtualPosition boolean
FAkSpatialAudioSettings = {}

---@return FAkSpatialAudioSettings
function FAkSpatialAudioSettings:get() end



---@class FAkSurfaceEdgeInfo
FAkSurfaceEdgeInfo = {}

---@return FAkSurfaceEdgeInfo
function FAkSurfaceEdgeInfo:get() end


---@class FAkSurfaceEdgeVerts
FAkSurfaceEdgeVerts = {}

---@return FAkSurfaceEdgeVerts
function FAkSurfaceEdgeVerts:get() end


---@class FAkSurfacePoly
---@field Texture UAkAcousticTexture
---@field Occlusion float
---@field EnableSurface boolean
---@field SurfaceArea float
FAkSurfacePoly = {}

---@return FAkSurfacePoly
function FAkSurfacePoly:get() end



---@class FAkTVOSAdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field uNumSpatialAudioPointSources uint32
---@field bVerboseSystemOutput boolean
FAkTVOSAdvancedInitializationSettings = {}

---@return FAkTVOSAdvancedInitializationSettings
function FAkTVOSAdvancedInitializationSettings:get() end



---@class FAkTriangle
---@field Point0 uint16
---@field point1 uint16
---@field point2 uint16
---@field Surface uint16
FAkTriangle = {}

---@return FAkTriangle
function FAkTriangle:get() end



---@class FAkWaapiFieldNames
---@field FieldName FString
FAkWaapiFieldNames = {}

---@return FAkWaapiFieldNames
function FAkWaapiFieldNames:get() end



---@class FAkWaapiSubscriptionId
FAkWaapiSubscriptionId = {}

---@return FAkWaapiSubscriptionId
function FAkWaapiSubscriptionId:get() end


---@class FAkWaapiUri
---@field Uri FString
FAkWaapiUri = {}

---@return FAkWaapiUri
function FAkWaapiUri:get() end



---@class FAkWinGDKAdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field UseHeadMountedDisplayAudioDevice boolean
---@field uMaxSystemAudioObjects uint32
FAkWinGDKAdvancedInitializationSettings = {}

---@return FAkWinGDKAdvancedInitializationSettings
function FAkWinGDKAdvancedInitializationSettings:get() end



---@class FAkWindowsAdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field UseHeadMountedDisplayAudioDevice boolean
---@field MaxSystemAudioObjects uint32
FAkWindowsAdvancedInitializationSettings = {}

---@return FAkWindowsAdvancedInitializationSettings
function FAkWindowsAdvancedInitializationSettings:get() end



---@class FAkWwiseItemToControl
---@field ItemPicked FAkWwiseObjectDetails
---@field ItemPath FString
FAkWwiseItemToControl = {}

---@return FAkWwiseItemToControl
function FAkWwiseItemToControl:get() end



---@class FAkWwiseObjectDetails
---@field ItemName FString
---@field ItemPath FString
---@field ItemId FString
FAkWwiseObjectDetails = {}

---@return FAkWwiseObjectDetails
function FAkWwiseObjectDetails:get() end



---@class FAkXSXAdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field MaximumNumberOfXMAVoices uint16
---@field UseHardwareCodecLowLatencyMode boolean
---@field MaximumNumberOfOpusVoices uint16
---@field uMaxSystemAudioObjects uint32
---@field MaxXdspStreams uint32
---@field MaxXdspAggregateStreamLength uint32
---@field EnableXdspOnLockhart boolean
FAkXSXAdvancedInitializationSettings = {}

---@return FAkXSXAdvancedInitializationSettings
function FAkXSXAdvancedInitializationSettings:get() end



---@class FAkXSXApuHeapInitializationSettings
---@field CachedSize uint32
---@field NonCachedSize uint32
FAkXSXApuHeapInitializationSettings = {}

---@return FAkXSXApuHeapInitializationSettings
function FAkXSXApuHeapInitializationSettings:get() end



---@class FAkXboxOneGDKAdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field MaximumNumberOfXMAVoices uint16
---@field UseHardwareCodecLowLatencyMode boolean
FAkXboxOneGDKAdvancedInitializationSettings = {}

---@return FAkXboxOneGDKAdvancedInitializationSettings
function FAkXboxOneGDKAdvancedInitializationSettings:get() end



---@class FAkXboxOneGDKApuHeapInitializationSettings
---@field CachedSize uint32
---@field NonCachedSize uint32
FAkXboxOneGDKApuHeapInitializationSettings = {}

---@return FAkXboxOneGDKApuHeapInitializationSettings
function FAkXboxOneGDKApuHeapInitializationSettings:get() end



---@class FMovieSceneAkAudioEventTemplate : FMovieSceneEvalTemplate
---@field Section UMovieSceneAkAudioEventSection
FMovieSceneAkAudioEventTemplate = {}

---@return FMovieSceneAkAudioEventTemplate
function FMovieSceneAkAudioEventTemplate:get() end



---@class FMovieSceneAkAudioRTPCTemplate : FMovieSceneEvalTemplate
---@field Section UMovieSceneAkAudioRTPCSection
FMovieSceneAkAudioRTPCTemplate = {}

---@return FMovieSceneAkAudioRTPCTemplate
function FMovieSceneAkAudioRTPCTemplate:get() end



---@class FMovieSceneFloatChannelSerializationHelper
---@field PreInfinityExtrap ERichCurveExtrapolation
---@field PostInfinityExtrap ERichCurveExtrapolation
---@field Times TArray<int32>
---@field Values TArray<FMovieSceneFloatValueSerializationHelper>
---@field DefaultValue float
---@field bHasDefaultValue boolean
FMovieSceneFloatChannelSerializationHelper = {}

---@return FMovieSceneFloatChannelSerializationHelper
function FMovieSceneFloatChannelSerializationHelper:get() end



---@class FMovieSceneFloatValueSerializationHelper
---@field Value float
---@field InterpMode ERichCurveInterpMode
---@field TangentMode ERichCurveTangentMode
---@field Tangent FMovieSceneTangentDataSerializationHelper
FMovieSceneFloatValueSerializationHelper = {}

---@return FMovieSceneFloatValueSerializationHelper
function FMovieSceneFloatValueSerializationHelper:get() end



---@class FMovieSceneTangentDataSerializationHelper
---@field ArriveTangent float
---@field LeaveTangent float
---@field TangentWeightMode ERichCurveTangentWeightMode
---@field ArriveTangentWeight float
---@field LeaveTangentWeight float
FMovieSceneTangentDataSerializationHelper = {}

---@return FMovieSceneTangentDataSerializationHelper
function FMovieSceneTangentDataSerializationHelper:get() end



---@class FWwiseDecayAuxBusRow : FTableRowBase
---@field Decay float
---@field AuxBus TSoftObjectPtr<UAkAuxBus>
FWwiseDecayAuxBusRow = {}

---@return FWwiseDecayAuxBusRow
function FWwiseDecayAuxBusRow:get() end



---@class FWwiseGeometrySurfacePropertiesRow : FTableRowBase
---@field AcousticTexture TSoftObjectPtr<UAkAcousticTexture>
---@field TransmissionLoss float
FWwiseGeometrySurfacePropertiesRow = {}

---@return FWwiseGeometrySurfacePropertiesRow
function FWwiseGeometrySurfacePropertiesRow:get() end



---@class IAkPlatformInitialisationSettingsBase : IInterface
IAkPlatformInitialisationSettingsBase = {}

---@return IAkPlatformInitialisationSettingsBase
function IAkPlatformInitialisationSettingsBase:get() end


---@class UAkAcousticTexture : UAkAudioType
---@field AcousticTextureCookedData FWwiseAcousticTextureCookedData
UAkAcousticTexture = {}

---@return UAkAcousticTexture
function UAkAcousticTexture:get() end



---@class UAkAcousticTextureSetComponent : USceneComponent
UAkAcousticTextureSetComponent = {}

---@return UAkAcousticTextureSetComponent
function UAkAcousticTextureSetComponent:get() end


---@class UAkAndroidInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkAndroidAdvancedInitializationSettings
UAkAndroidInitializationSettings = {}

---@return UAkAndroidInitializationSettings
function UAkAndroidInitializationSettings:get() end

---@param NewValue boolean
function UAkAndroidInitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkAndroidPlatformInfo : UAkPlatformInfo
UAkAndroidPlatformInfo = {}

---@return UAkAndroidPlatformInfo
function UAkAndroidPlatformInfo:get() end


---@class UAkAssetData : UObject
UAkAssetData = {}

---@return UAkAssetData
function UAkAssetData:get() end


---@class UAkAssetPlatformData : UObject
---@field CurrentAssetData UAkAssetData
UAkAssetPlatformData = {}

---@return UAkAssetPlatformData
function UAkAssetPlatformData:get() end



---@class UAkAudioBank : UAkAudioType
---@field AutoLoad boolean
UAkAudioBank = {}

---@return UAkAudioBank
function UAkAudioBank:get() end



---@class UAkAudioEvent : UAkAudioType
---@field MaxAttenuationRadius float
---@field IsInfinite boolean
---@field MinimumDuration float
---@field MaximumDuration float
---@field EventCookedData FWwiseLocalizedEventCookedData
---@field RequiredBank UAkAudioBank
UAkAudioEvent = {}

---@return UAkAudioEvent
function UAkAudioEvent:get() end

---@param GameObject UAkGameObject
---@param LatentActionInfo FLatentActionInfo
---@return int32
function UAkAudioEvent:PostOnGameObjectAndWait(GameObject, LatentActionInfo) end
---@param GameObject UAkGameObject
---@param Delegate FPostOnGameObjectDelegate
---@param CallbackMask int32
---@return int32
function UAkAudioEvent:PostOnGameObject(GameObject, Delegate, CallbackMask) end
---@param Component UAkComponent
---@param bStopWhenAttachedObjectDestroyed boolean
---@param LatentActionInfo FLatentActionInfo
---@return int32
function UAkAudioEvent:PostOnComponentAndWait(Component, bStopWhenAttachedObjectDestroyed, LatentActionInfo) end
---@param Component UAkComponent
---@param Delegate FPostOnComponentDelegate
---@param CallbackMask int32
---@param bStopWhenAttachedObjectDestroyed boolean
---@return int32
function UAkAudioEvent:PostOnComponent(Component, Delegate, CallbackMask, bStopWhenAttachedObjectDestroyed) end
---@param Actor AActor
---@param bStopWhenAttachedObjectDestroyed boolean
---@param LatentActionInfo FLatentActionInfo
---@return int32
function UAkAudioEvent:PostOnActorAndWait(Actor, bStopWhenAttachedObjectDestroyed, LatentActionInfo) end
---@param Actor AActor
---@param Delegate FPostOnActorDelegate
---@param CallbackMask int32
---@param bStopWhenAttachedObjectDestroyed boolean
---@return int32
function UAkAudioEvent:PostOnActor(Actor, Delegate, CallbackMask, bStopWhenAttachedObjectDestroyed) end
---@param Location FVector
---@param Orientation FRotator
---@param Callback FPostAtLocationCallback
---@param CallbackMask int32
---@param WorldContextObject UObject
---@return int32
function UAkAudioEvent:PostAtLocation(Location, Orientation, Callback, CallbackMask, WorldContextObject) end
---@param ActionType AkActionOnEventType
---@param Actor AActor
---@param PlayingID int32
---@param TransitionDuration int32
---@param FadeCurve EAkCurveInterpolation
---@return int32
function UAkAudioEvent:ExecuteAction(ActionType, Actor, PlayingID, TransitionDuration, FadeCurve) end


---@class UAkAudioInputComponent : UAkComponent
UAkAudioInputComponent = {}

---@return UAkAudioInputComponent
function UAkAudioInputComponent:get() end

---@return int32
function UAkAudioInputComponent:PostAssociatedAudioInputEvent() end


---@class UAkAudioType : UObject
---@field bAutoLoad boolean
---@field UserData TArray<UObject>
UAkAudioType = {}

---@return UAkAudioType
function UAkAudioType:get() end

---@param bAsync boolean
function UAkAudioType:UnloadData(bAsync) end
function UAkAudioType:LoadData() end
---@return int32
function UAkAudioType:GetWwiseShortID() end


---@class UAkAuxBus : UAkAudioType
---@field MaxAttenuationRadius float
---@field AuxBusCookedData FWwiseLocalizedAuxBusCookedData
---@field RequiredBank UAkAudioBank
UAkAuxBus = {}

---@return UAkAuxBus
function UAkAuxBus:get() end



---@class UAkCallbackInfo : UObject
---@field AkComponent UAkComponent
UAkCallbackInfo = {}

---@return UAkCallbackInfo
function UAkCallbackInfo:get() end



---@class UAkCheckBox : UContentWidget
---@field CheckedState ECheckBoxState
---@field CheckedStateDelegate FAkCheckBoxCheckedStateDelegate
---@field WidgetStyle FCheckBoxStyle
---@field HorizontalAlignment EHorizontalAlignment
---@field IsFocusable boolean
---@field ThePropertyToControl FAkBoolPropertyToControl
---@field ItemToControl FAkWwiseItemToControl
---@field AkOnCheckStateChanged FAkCheckBoxAkOnCheckStateChanged
---@field OnItemDropped FAkCheckBoxOnItemDropped
---@field OnPropertyDropped FAkCheckBoxOnPropertyDropped
UAkCheckBox = {}

---@return UAkCheckBox
function UAkCheckBox:get() end

---@param InIsChecked boolean
function UAkCheckBox:SetIsChecked(InIsChecked) end
---@param InCheckedState ECheckBoxState
function UAkCheckBox:SetCheckedState(InCheckedState) end
---@param ItemId FGuid
function UAkCheckBox:SetAkItemId(ItemId) end
---@param ItemProperty FString
function UAkCheckBox:SetAkBoolProperty(ItemProperty) end
---@return boolean
function UAkCheckBox:IsPressed() end
---@return boolean
function UAkCheckBox:IsChecked() end
---@return ECheckBoxState
function UAkCheckBox:GetCheckedState() end
---@return FString
function UAkCheckBox:GetAkProperty() end
---@return FGuid
function UAkCheckBox:GetAkItemId() end


---@class UAkComponent : UAkGameObject
---@field bUseSpatialAudio boolean
---@field OcclusionCollisionChannel EAkCollisionChannel
---@field OcclusionRefreshInterval float
---@field EnableSpotReflectors boolean
---@field OuterRadius float
---@field InnerRadius float
---@field EarlyReflectionAuxBus UAkAuxBus
---@field EarlyReflectionAuxBusName FString
---@field EarlyReflectionBusSendGain float
---@field DrawFirstOrderReflections boolean
---@field DrawSecondOrderReflections boolean
---@field DrawHigherOrderReflections boolean
---@field DrawDiffraction boolean
---@field StopWhenOwnerDestroyed boolean
---@field AttenuationScalingFactor float
---@field bUseReverbVolumes boolean
UAkComponent = {}

---@return UAkComponent
function UAkComponent:get() end

---@param SwitchValue UAkSwitchValue
---@param SwitchGroup FString
---@param SwitchState FString
function UAkComponent:SetSwitch(SwitchValue, SwitchGroup, SwitchState) end
---@param bStopWhenOwnerDestroyed boolean
function UAkComponent:SetStopWhenOwnerDestroyed(bStopWhenOwnerDestroyed) end
---@param BusVolume float
function UAkComponent:SetOutputBusVolume(BusVolume) end
---@param Listeners TArray<UAkComponent>
function UAkComponent:SetListeners(Listeners) end
---@param in_outerRadius float
---@param in_innerRadius float
function UAkComponent:SetGameObjectRadius(in_outerRadius, in_innerRadius) end
---@param in_enable boolean
function UAkComponent:SetEnableSpotReflectors(in_enable) end
---@param SendVolume float
function UAkComponent:SetEarlyReflectionsVolume(SendVolume) end
---@param AuxBusName FString
function UAkComponent:SetEarlyReflectionsAuxBus(AuxBusName) end
---@param Value float
function UAkComponent:SetAttenuationScalingFactor(Value) end
---@param TriggerValue UAkTrigger
---@param Trigger FString
function UAkComponent:PostTrigger(TriggerValue, Trigger) end
---@param LatentInfo FLatentActionInfo
---@return int32
function UAkComponent:PostAssociatedAkEventAndWaitForEnd(LatentInfo) end
---@param AkEvent UAkAudioEvent
---@param LatentInfo FLatentActionInfo
---@return int32
function UAkComponent:PostAkEventAndWaitForEnd(AkEvent, LatentInfo) end
---@return ECollisionChannel
function UAkComponent:GetOcclusionCollisionChannel() end
---@return float
function UAkComponent:GetAttenuationRadius() end


---@class UAkDPXInitializationSettings : UAkPS5InitializationSettings
UAkDPXInitializationSettings = {}

---@return UAkDPXInitializationSettings
function UAkDPXInitializationSettings:get() end


---@class UAkDurationCallbackInfo : UAkEventCallbackInfo
---@field Duration float
---@field EstimatedDuration float
---@field AudioNodeID int32
---@field MediaId int32
---@field bStreaming boolean
UAkDurationCallbackInfo = {}

---@return UAkDurationCallbackInfo
function UAkDurationCallbackInfo:get() end



---@class UAkEffectShareSet : UAkAudioType
---@field ShareSetCookedData FWwiseLocalizedShareSetCookedData
UAkEffectShareSet = {}

---@return UAkEffectShareSet
function UAkEffectShareSet:get() end



---@class UAkEventCallbackInfo : UAkCallbackInfo
---@field PlayingID int32
---@field EventId int32
UAkEventCallbackInfo = {}

---@return UAkEventCallbackInfo
function UAkEventCallbackInfo:get() end



---@class UAkExternalMediaAsset : UAkMediaAsset
UAkExternalMediaAsset = {}

---@return UAkExternalMediaAsset
function UAkExternalMediaAsset:get() end


---@class UAkFolder : UAkAudioType
UAkFolder = {}

---@return UAkFolder
function UAkFolder:get() end


---@class UAkGameObject : USceneComponent
---@field AkAudioEvent UAkAudioEvent
UAkGameObject = {}

---@return UAkGameObject
function UAkGameObject:get() end

function UAkGameObject:Stop() end
---@param RTPCValue UAkRtpc
---@param Value float
---@param InterpolationTimeMs int32
---@param RTPC FString
function UAkGameObject:SetRTPCValue(RTPCValue, Value, InterpolationTimeMs, RTPC) end
---@param WorldContextObject UObject
---@param CallbackMask int32
---@param PostEventCallback FPostAssociatedAkEventAsyncPostEventCallback
---@param LatentInfo FLatentActionInfo
---@param PlayingID int32
function UAkGameObject:PostAssociatedAkEventAsync(WorldContextObject, CallbackMask, PostEventCallback, LatentInfo, PlayingID) end
---@param CallbackMask int32
---@param PostEventCallback FPostAssociatedAkEventPostEventCallback
---@return int32
function UAkGameObject:PostAssociatedAkEvent(CallbackMask, PostEventCallback) end
---@param WorldContextObject UObject
---@param AkEvent UAkAudioEvent
---@param PlayingID int32
---@param CallbackMask int32
---@param PostEventCallback FPostAkEventAsyncPostEventCallback
---@param LatentInfo FLatentActionInfo
function UAkGameObject:PostAkEventAsync(WorldContextObject, AkEvent, PlayingID, CallbackMask, PostEventCallback, LatentInfo) end
---@param AkEvent UAkAudioEvent
---@param CallbackMask int32
---@param PostEventCallback FPostAkEventPostEventCallback
---@return int32
function UAkGameObject:PostAkEvent(AkEvent, CallbackMask, PostEventCallback) end
---@param RTPCValue UAkRtpc
---@param InputValueType ERTPCValueType
---@param Value float
---@param OutputValueType ERTPCValueType
---@param RTPC FString
---@param PlayingID int32
function UAkGameObject:GetRTPCValue(RTPCValue, InputValueType, Value, OutputValueType, RTPC, PlayingID) end


---@class UAkGameplayStatics : UBlueprintFunctionLibrary
UAkGameplayStatics = {}

---@return UAkGameplayStatics
function UAkGameplayStatics:get() end

---@param inUseReverbVolumes boolean
---@param Actor AActor
function UAkGameplayStatics:UseReverbVolumes(inUseReverbVolumes, Actor) end
function UAkGameplayStatics:UnloadInitBank() end
function UAkGameplayStatics:StopProfilerCapture() end
function UAkGameplayStatics:StopOutputCapture() end
---@param WorldContextObject UObject
function UAkGameplayStatics:StopAllAmbientSounds(WorldContextObject) end
function UAkGameplayStatics:StopAll() end
---@param Actor AActor
function UAkGameplayStatics:StopActor(Actor) end
---@param Filename FString
function UAkGameplayStatics:StartProfilerCapture(Filename) end
---@param Filename FString
function UAkGameplayStatics:StartOutputCapture(Filename) end
---@param WorldContextObject UObject
function UAkGameplayStatics:StartAllAmbientSounds(WorldContextObject) end
---@param WorldContextObject UObject
---@param AkEvent UAkAudioEvent
---@param Location FVector
---@param Orientation FRotator
---@param AutoPost boolean
---@param EventName FString
---@param AutoDestroy boolean
---@return UAkComponent
function UAkGameplayStatics:SpawnAkComponentAtLocation(WorldContextObject, AkEvent, Location, Orientation, AutoPost, EventName, AutoDestroy) end
---@param SwitchValue UAkSwitchValue
---@param Actor AActor
---@param SwitchGroup FName
---@param SwitchState FName
function UAkGameplayStatics:SetSwitch(SwitchValue, Actor, SwitchGroup, SwitchState) end
---@param StateValue UAkStateValue
---@param StateGroup FName
---@param State FName
function UAkGameplayStatics:SetState(StateValue, StateGroup, State) end
---@param SpeakerAngles TArray<float>
---@param HeightAngle float
---@param DeviceShareSet FString
function UAkGameplayStatics:SetSpeakerAngles(SpeakerAngles, HeightAngle, DeviceShareSet) end
---@param RTPCValue UAkRtpc
---@param Value float
---@param InterpolationTimeMs int32
---@param Actor AActor
---@param RTPC FName
function UAkGameplayStatics:SetRTPCValue(RTPCValue, Value, InterpolationTimeMs, Actor, RTPC) end
---@param Order int32
---@param RefreshPaths boolean
function UAkGameplayStatics:SetReflectionsOrder(Order, RefreshPaths) end
---@param PortalComponent0 UAkPortalComponent
---@param PortalComponent1 UAkPortalComponent
---@param ObstructionValue float
function UAkGameplayStatics:SetPortalToPortalObstruction(PortalComponent0, PortalComponent1, ObstructionValue) end
---@param PortalComponent UAkPortalComponent
---@param ObstructionValue float
---@param OcclusionValue float
function UAkGameplayStatics:SetPortalObstructionAndOcclusion(PortalComponent, ObstructionValue, OcclusionValue) end
---@param PanRule PanningRule
function UAkGameplayStatics:SetPanningRule(PanRule) end
---@param InDeviceID FAkOutputDeviceID
---@param InEffectIndex int32
---@param InEffectShareSet UAkEffectShareSet
---@return boolean
function UAkGameplayStatics:SetOutputDeviceEffect(InDeviceID, InEffectIndex, InEffectShareSet) end
---@param BusVolume float
---@param Actor AActor
function UAkGameplayStatics:SetOutputBusVolume(BusVolume, Actor) end
---@param RefreshInterval float
---@param Actor AActor
function UAkGameplayStatics:SetOcclusionRefreshInterval(RefreshInterval, Actor) end
---@param InNbPrimaryRays int32
function UAkGameplayStatics:SetNumberOfPrimaryRays(InNbPrimaryRays) end
---@param GameObjectAkComponent UAkComponent
---@param Positions TArray<FTransform>
---@param MultiPositionType AkMultiPositionType
function UAkGameplayStatics:SetMultiplePositions(GameObjectAkComponent, Positions, MultiPositionType) end
---@param GameObjectAkComponent UAkComponent
---@param ChannelMasks TArray<FAkChannelMask>
---@param Positions TArray<FTransform>
---@param MultiPositionType AkMultiPositionType
function UAkGameplayStatics:SetMultipleChannelMaskEmitterPositions(GameObjectAkComponent, ChannelMasks, Positions, MultiPositionType) end
---@param GameObjectAkComponent UAkComponent
---@param ChannelMasks TArray<AkChannelConfiguration>
---@param Positions TArray<FTransform>
---@param MultiPositionType AkMultiPositionType
function UAkGameplayStatics:SetMultipleChannelEmitterPositions(GameObjectAkComponent, ChannelMasks, Positions, MultiPositionType) end
---@param InMaxEmitterRoomAuxSends int32
function UAkGameplayStatics:SetMaxEmitterRoomAuxSends(InMaxEmitterRoomAuxSends) end
---@param InNbFrames int32
function UAkGameplayStatics:SetLoadBalancingSpread(InNbFrames) end
---@param GameObjectAkComponent UAkComponent
---@param PortalComponent UAkPortalComponent
---@param ObstructionValue float
function UAkGameplayStatics:SetGameObjectToPortalObstruction(GameObjectAkComponent, PortalComponent, ObstructionValue) end
---@param Listener AActor
---@param DistanceProbe AActor
function UAkGameplayStatics:SetDistanceProbe(Listener, DistanceProbe) end
---@param InDiffractionOrder int32
---@param bInUpdatePaths boolean
function UAkGameplayStatics:SetDiffractionOrder(InDiffractionOrder, bInUpdatePaths) end
---@param AudioCulture FString
---@param Completed FSetCurrentAudioCultureAsyncCompleted
function UAkGameplayStatics:SetCurrentAudioCultureAsync(AudioCulture, Completed) end
---@param AudioCulture FString
---@param LatentInfo FLatentActionInfo
---@param WorldContextObject UObject
function UAkGameplayStatics:SetCurrentAudioCulture(AudioCulture, LatentInfo, WorldContextObject) end
---@param InBusName FString
---@param InEffectIndex int32
---@param InEffectShareSet UAkEffectShareSet
---@return boolean
function UAkGameplayStatics:SetBusEffectByName(InBusName, InEffectIndex, InEffectShareSet) end
---@param InBusID FAkUniqueID
---@param InEffectIndex int32
---@param InEffectShareSet UAkEffectShareSet
---@return boolean
function UAkGameplayStatics:SetBusEffectByID(InBusID, InEffectIndex, InEffectShareSet) end
---@param BusName FString
---@param ChannelConfiguration AkChannelConfiguration
function UAkGameplayStatics:SetBusConfig(BusName, ChannelConfiguration) end
---@param InAuxBus UAkAuxBus
---@param InEffectIndex int32
---@param InEffectShareSet UAkEffectShareSet
---@return boolean
function UAkGameplayStatics:SetAuxBusEffect(InAuxBus, InEffectIndex, InEffectShareSet) end
---@param InAudioNodeID FAkUniqueID
---@param InEffectIndex int32
---@param InEffectShareSet UAkEffectShareSet
---@return boolean
function UAkGameplayStatics:SetActorMixerEffect(InAudioNodeID, InEffectIndex, InEffectShareSet) end
---@param RTPCValue UAkRtpc
---@param InterpolationTimeMs int32
---@param Actor AActor
---@param RTPC FName
function UAkGameplayStatics:ResetRTPCValue(RTPCValue, InterpolationTimeMs, Actor, RTPC) end
---@param MainOutputSettings FAkOutputSettings
function UAkGameplayStatics:ReplaceMainOutput(MainOutputSettings) end
---@param in_OutputDeviceId FAkOutputDeviceID
function UAkGameplayStatics:RemoveOutput(in_OutputDeviceId) end
---@param TriggerValue UAkTrigger
---@param Actor AActor
---@param Trigger FName
function UAkGameplayStatics:PostTrigger(TriggerValue, Actor, Trigger) end
---@param AkEvent UAkAudioEvent
---@param Location FVector
---@param Orientation FRotator
---@param WorldContextObject UObject
---@return int32
function UAkGameplayStatics:PostEventAtLocation(AkEvent, Location, Orientation, WorldContextObject) end
---@param AkEvent UAkAudioEvent
---@param Actor AActor
---@param CallbackMask int32
---@param PostEventCallback FPostEventPostEventCallback
---@param bStopWhenAttachedToDestroyed boolean
---@return int32
function UAkGameplayStatics:PostEvent(AkEvent, Actor, CallbackMask, PostEventCallback, bStopWhenAttachedToDestroyed) end
---@param AkEvent UAkAudioEvent
---@param Actor AActor
---@param bStopWhenAttachedToDestroyed boolean
---@param LatentInfo FLatentActionInfo
---@return int32
function UAkGameplayStatics:PostAndWaitForEndOfEvent(AkEvent, Actor, bStopWhenAttachedToDestroyed, LatentInfo) end
function UAkGameplayStatics:LoadInitBank() end
---@param WorldContextObject UObject
---@return boolean
function UAkGameplayStatics:IsGame(WorldContextObject) end
---@return boolean
function UAkGameplayStatics:IsEditor() end
---@param SpeakerAngles TArray<float>
---@param HeightAngle float
---@param DeviceShareSet FString
function UAkGameplayStatics:GetSpeakerAngles(SpeakerAngles, HeightAngle, DeviceShareSet) end
---@param RTPCValue UAkRtpc
---@param PlayingID int32
---@param InputValueType ERTPCValueType
---@param Value float
---@param OutputValueType ERTPCValueType
---@param Actor AActor
---@param RTPC FName
function UAkGameplayStatics:GetRTPCValue(RTPCValue, PlayingID, InputValueType, Value, OutputValueType, Actor, RTPC) end
---@return FString
function UAkGameplayStatics:GetCurrentAudioCulture() end
---@return TArray<FString>
function UAkGameplayStatics:GetAvailableAudioCultures() end
---@param AttachToComponent USceneComponent
---@param ComponentCreated boolean
---@param AttachPointName FName
---@param Location FVector
---@param LocationType EAttachLocation::Type
---@return UAkComponent
function UAkGameplayStatics:GetAkComponent(AttachToComponent, ComponentCreated, AttachPointName, Location, LocationType) end
---@param Instance UAkAudioType
---@param Type UClass
---@return UObject
function UAkGameplayStatics:GetAkAudioTypeUserData(Instance, Type) end
function UAkGameplayStatics:ClearSoundBanksAndMedia() end
---@param PostEventCallback FCancelEventCallbackPostEventCallback
function UAkGameplayStatics:CancelEventCallback(PostEventCallback) end
---@param MarkerText FString
function UAkGameplayStatics:AddOutputCaptureMarker(MarkerText) end
---@param in_Settings FAkOutputSettings
---@param out_DeviceID FAkOutputDeviceID
---@param in_ListenerIDs TArray<UAkComponent>
function UAkGameplayStatics:AddOutput(in_Settings, out_DeviceID, in_ListenerIDs) end


---@class UAkGeometryComponent : UAkAcousticTextureSetComponent
---@field MeshType AkMeshType
---@field LOD int32
---@field WeldingThreshold float
---@field StaticMeshSurfaceOverride TMap<UMaterialInterface, FAkGeometrySurfaceOverride>
---@field CollisionMeshSurfaceOverride FAkGeometrySurfaceOverride
---@field bEnableDiffraction boolean
---@field bEnableDiffractionOnBoundaryEdges boolean
---@field AssociatedRoom AActor
---@field GeometryData FAkGeometryData
---@field SurfaceAreas TMap<int32, double>
UAkGeometryComponent = {}

---@return UAkGeometryComponent
function UAkGeometryComponent:get() end

function UAkGeometryComponent:UpdateGeometry() end
function UAkGeometryComponent:SendGeometry() end
function UAkGeometryComponent:RemoveGeometry() end
function UAkGeometryComponent:ConvertMesh() end


---@class UAkGroupValue : UAkAudioType
---@field GroupValueCookedData FWwiseGroupValueCookedData
---@field GroupShortId uint32
UAkGroupValue = {}

---@return UAkGroupValue
function UAkGroupValue:get() end



---@class UAkIOSInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field AudioSession FAkAudioSession
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkIOSAdvancedInitializationSettings
UAkIOSInitializationSettings = {}

---@return UAkIOSInitializationSettings
function UAkIOSInitializationSettings:get() end



---@class UAkIOSPlatformInfo : UAkPlatformInfo
UAkIOSPlatformInfo = {}

---@return UAkIOSPlatformInfo
function UAkIOSPlatformInfo:get() end


---@class UAkInitBank : UAkAudioType
---@field InitBankCookedData FWwiseInitBankCookedData
UAkInitBank = {}

---@return UAkInitBank
function UAkInitBank:get() end



---@class UAkItemBoolProperties : UWidget
---@field OnSelectionChanged FAkItemBoolPropertiesOnSelectionChanged
---@field OnPropertyDragged FAkItemBoolPropertiesOnPropertyDragged
UAkItemBoolProperties = {}

---@return UAkItemBoolProperties
function UAkItemBoolProperties:get() end

---@param newText FString
function UAkItemBoolProperties:SetSearchText(newText) end
---@return FString
function UAkItemBoolProperties:GetSelectedProperty() end
---@return FString
function UAkItemBoolProperties:GetSearchText() end


---@class UAkItemBoolPropertiesConv : UBlueprintFunctionLibrary
UAkItemBoolPropertiesConv = {}

---@return UAkItemBoolPropertiesConv
function UAkItemBoolPropertiesConv:get() end

---@param INAkBoolPropertyToControl FAkBoolPropertyToControl
---@return FText
function UAkItemBoolPropertiesConv:Conv_FAkBoolPropertyToControlToText(INAkBoolPropertyToControl) end
---@param INAkBoolPropertyToControl FAkBoolPropertyToControl
---@return FString
function UAkItemBoolPropertiesConv:Conv_FAkBoolPropertyToControlToString(INAkBoolPropertyToControl) end


---@class UAkItemProperties : UWidget
---@field OnSelectionChanged FAkItemPropertiesOnSelectionChanged
---@field OnPropertyDragged FAkItemPropertiesOnPropertyDragged
UAkItemProperties = {}

---@return UAkItemProperties
function UAkItemProperties:get() end

---@param newText FString
function UAkItemProperties:SetSearchText(newText) end
---@return FString
function UAkItemProperties:GetSelectedProperty() end
---@return FString
function UAkItemProperties:GetSearchText() end


---@class UAkItemPropertiesConv : UBlueprintFunctionLibrary
UAkItemPropertiesConv = {}

---@return UAkItemPropertiesConv
function UAkItemPropertiesConv:get() end

---@param INAkPropertyToControl FAkPropertyToControl
---@return FText
function UAkItemPropertiesConv:Conv_FAkPropertyToControlToText(INAkPropertyToControl) end
---@param INAkPropertyToControl FAkPropertyToControl
---@return FString
function UAkItemPropertiesConv:Conv_FAkPropertyToControlToString(INAkPropertyToControl) end


---@class UAkLateReverbComponent : USceneComponent
---@field bEnable boolean
---@field SendLevel float
---@field FadeRate float
---@field Priority float
---@field AutoAssignAuxBus boolean
---@field AuxBus UAkAuxBus
---@field AuxBusName FString
---@field AuxBusManual UAkAuxBus
UAkLateReverbComponent = {}

---@return UAkLateReverbComponent
function UAkLateReverbComponent:get() end

---@param bInEnable boolean
function UAkLateReverbComponent:SetAutoAssignAuxBus(bInEnable) end
---@param textureSetComponent UAkAcousticTextureSetComponent
function UAkLateReverbComponent:AssociateAkTextureSetComponent(textureSetComponent) end


---@class UAkLinuxArm64InitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkAdvancedInitializationSettingsWithMultiCoreRendering
UAkLinuxArm64InitializationSettings = {}

---@return UAkLinuxArm64InitializationSettings
function UAkLinuxArm64InitializationSettings:get() end

---@param NewValue boolean
function UAkLinuxArm64InitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkLinuxArm64PlatformInfo : UAkPlatformInfo
UAkLinuxArm64PlatformInfo = {}

---@return UAkLinuxArm64PlatformInfo
function UAkLinuxArm64PlatformInfo:get() end


---@class UAkLinuxInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkAdvancedInitializationSettingsWithMultiCoreRendering
UAkLinuxInitializationSettings = {}

---@return UAkLinuxInitializationSettings
function UAkLinuxInitializationSettings:get() end

---@param NewValue boolean
function UAkLinuxInitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkLinuxPlatformInfo : UAkPlatformInfo
UAkLinuxPlatformInfo = {}

---@return UAkLinuxPlatformInfo
function UAkLinuxPlatformInfo:get() end


---@class UAkLocalizedMediaAsset : UAkMediaAsset
UAkLocalizedMediaAsset = {}

---@return UAkLocalizedMediaAsset
function UAkLocalizedMediaAsset:get() end


---@class UAkMIDIEventCallbackInfo : UAkEventCallbackInfo
UAkMIDIEventCallbackInfo = {}

---@return UAkMIDIEventCallbackInfo
function UAkMIDIEventCallbackInfo:get() end

---@return EAkMidiEventType
function UAkMIDIEventCallbackInfo:GetType() end
---@param AsProgramChange FAkMidiProgramChange
---@return boolean
function UAkMIDIEventCallbackInfo:GetProgramChange(AsProgramChange) end
---@param AsPitchBend FAkMidiPitchBend
---@return boolean
function UAkMIDIEventCallbackInfo:GetPitchBend(AsPitchBend) end
---@param AsNoteOn FAkMidiNoteOnOff
---@return boolean
function UAkMIDIEventCallbackInfo:GetNoteOn(AsNoteOn) end
---@param AsNoteOff FAkMidiNoteOnOff
---@return boolean
function UAkMIDIEventCallbackInfo:GetNoteOff(AsNoteOff) end
---@param AsNoteAftertouch FAkMidiNoteAftertouch
---@return boolean
function UAkMIDIEventCallbackInfo:GetNoteAftertouch(AsNoteAftertouch) end
---@param AsGeneric FAkMidiGeneric
---@return boolean
function UAkMIDIEventCallbackInfo:GetGeneric(AsGeneric) end
---@param AsChannelAftertouch FAkMidiChannelAftertouch
---@return boolean
function UAkMIDIEventCallbackInfo:GetChannelAftertouch(AsChannelAftertouch) end
---@return uint8
function UAkMIDIEventCallbackInfo:GetChannel() end
---@param AsCc FAkMidiCc
---@return boolean
function UAkMIDIEventCallbackInfo:GetCc(AsCc) end


---@class UAkMPXInitializationSettings : UAkXSXInitializationSettings
UAkMPXInitializationSettings = {}

---@return UAkMPXInitializationSettings
function UAkMPXInitializationSettings:get() end


---@class UAkMacInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkMacAdvancedInitializationSettings
UAkMacInitializationSettings = {}

---@return UAkMacInitializationSettings
function UAkMacInitializationSettings:get() end

---@param NewValue boolean
function UAkMacInitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkMacPlatformInfo : UAkPlatformInfo
UAkMacPlatformInfo = {}

---@return UAkMacPlatformInfo
function UAkMacPlatformInfo:get() end


---@class UAkMarkerCallbackInfo : UAkEventCallbackInfo
---@field Identifier int32
---@field Position int32
---@field Label FString
UAkMarkerCallbackInfo = {}

---@return UAkMarkerCallbackInfo
function UAkMarkerCallbackInfo:get() end



---@class UAkMediaAsset : UObject
---@field MediaAssetDataPerPlatform TMap<FString, UAkMediaAssetData>
UAkMediaAsset = {}

---@return UAkMediaAsset
function UAkMediaAsset:get() end



---@class UAkMediaAssetData : UObject
UAkMediaAssetData = {}

---@return UAkMediaAssetData
function UAkMediaAssetData:get() end


---@class UAkMusicSyncCallbackInfo : UAkCallbackInfo
---@field PlayingID int32
---@field SegmentInfo FAkSegmentInfo
---@field MusicSyncType EAkCallbackType
---@field UserCueName FString
UAkMusicSyncCallbackInfo = {}

---@return UAkMusicSyncCallbackInfo
function UAkMusicSyncCallbackInfo:get() end



---@class UAkPS5InitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettings
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkPS5AdvancedInitializationSettings
UAkPS5InitializationSettings = {}

---@return UAkPS5InitializationSettings
function UAkPS5InitializationSettings:get() end



---@class UAkPS5PlatformInfo : UAkPlatformInfo
UAkPS5PlatformInfo = {}

---@return UAkPS5PlatformInfo
function UAkPS5PlatformInfo:get() end


---@class UAkPlatformInfo : UObject
UAkPlatformInfo = {}

---@return UAkPlatformInfo
function UAkPlatformInfo:get() end


---@class UAkPortalComponent : USceneComponent
---@field bDynamic boolean
---@field InitialState AkAcousticPortalState
---@field InitialOcclusion float
---@field ObstructionRefreshInterval float
---@field ObstructionCollisionChannel ECollisionChannel
UAkPortalComponent = {}

---@return UAkPortalComponent
function UAkPortalComponent:get() end

---@param InPortalOcclusion float
function UAkPortalComponent:SetPortalOcclusion(InPortalOcclusion) end
---@param bInDynamic boolean
function UAkPortalComponent:SetDynamic(bInDynamic) end
---@return boolean
function UAkPortalComponent:PortalPlacementValid() end
---@return UPrimitiveComponent
function UAkPortalComponent:GetPrimitiveParent() end
---@return float
function UAkPortalComponent:GetPortalOcclusion() end
---@return AkAcousticPortalState
function UAkPortalComponent:GetCurrentState() end
function UAkPortalComponent:EnablePortal() end
function UAkPortalComponent:DisablePortal() end


---@class UAkRoomComponent : UAkGameObject
---@field bEnable boolean
---@field bDynamic boolean
---@field Priority float
---@field WallOcclusion float
---@field AuxSendLevel float
---@field AutoPost boolean
---@field bEnableReverbZone boolean
---@field ParentRoomActor AActor
---@field ParentRoomName FString
---@field TransitionRegionWidth float
---@field GeometryComponent UAkAcousticTextureSetComponent
---@field ParentRoom TWeakObjectPtr<UAkRoomComponent>
UAkRoomComponent = {}

---@return UAkRoomComponent
function UAkRoomComponent:get() end

---@param InTransitionRegionWidth float
function UAkRoomComponent:UpdateTransitionRegionWidth(InTransitionRegionWidth) end
---@param InParentRoomActor AActor
function UAkRoomComponent:UpdateParentRoomActor(InParentRoomActor) end
---@param InTransmissionLoss float
function UAkRoomComponent:SetTransmissionLoss(InTransmissionLoss) end
---@param InParentRoom UAkRoomComponent
---@param InTransitionRegionWidth float
function UAkRoomComponent:SetReverbZone(InParentRoom, InTransitionRegionWidth) end
---@param textureSetComponent UAkAcousticTextureSetComponent
function UAkRoomComponent:SetGeometryComponent(textureSetComponent) end
---@param bInEnableReverbZone boolean
function UAkRoomComponent:SetEnableReverbZone(bInEnableReverbZone) end
---@param bInEnable boolean
function UAkRoomComponent:SetEnable(bInEnable) end
---@param bInDynamic boolean
function UAkRoomComponent:SetDynamic(bInDynamic) end
---@param InAuxSendLevel float
function UAkRoomComponent:SetAuxSendLevel(InAuxSendLevel) end
function UAkRoomComponent:RemoveReverbZone() end
---@return UPrimitiveComponent
function UAkRoomComponent:GetPrimitiveParent() end


---@class UAkRtpc : UAkAudioType
---@field GameParameterCookedData FWwiseGameParameterCookedData
UAkRtpc = {}

---@return UAkRtpc
function UAkRtpc:get() end



---@class UAkSettings : UObject
---@field MaxSimultaneousReverbVolumes uint8
---@field WwiseProjectPath FFilePath
---@field WwiseSoundDataFolder FDirectoryPath
---@field RootOutputPath FDirectoryPath
---@field GeneratedSoundBanksFolder FDirectoryPath
---@field WwiseStagingDirectory FDirectoryPath
---@field bSoundBanksTransfered boolean
---@field bAssetsMigrated boolean
---@field bProjectMigrated boolean
---@field bAutoConnectToWAAPI boolean
---@field DefaultOcclusionCollisionChannel ECollisionChannel
---@field DefaultFitToGeometryCollisionChannel ECollisionChannel
---@field AkGeometryMap TMap<TSoftObjectPtr<UPhysicalMaterial>, FAkGeometrySurfacePropertiesToMap>
---@field DefaultAcousticTexture TSoftObjectPtr<UAkAcousticTexture>
---@field DefaultTransmissionLoss float
---@field GeometrySurfacePropertiesTable TSoftObjectPtr<UDataTable>
---@field GlobalDecayAbsorption float
---@field DefaultReverbAuxBus TSoftObjectPtr<UAkAuxBus>
---@field EnvironmentDecayAuxBusMap TMap<float, TSoftObjectPtr<UAkAuxBus>>
---@field ReverbAssignmentTable TSoftObjectPtr<UDataTable>
---@field HFDampingName FString
---@field DecayEstimateName FString
---@field TimeToFirstReflectionName FString
---@field HFDampingRTPC TSoftObjectPtr<UAkRtpc>
---@field DecayEstimateRTPC TSoftObjectPtr<UAkRtpc>
---@field TimeToFirstReflectionRTPC TSoftObjectPtr<UAkRtpc>
---@field AudioInputEvent TSoftObjectPtr<UAkAudioEvent>
---@field AcousticTextureParamsMap TMap<FGuid, FAkAcousticTextureParams>
---@field SplitSwitchContainerMedia boolean
---@field SplitMediaPerFolder boolean
---@field UseEventBasedPackaging boolean
---@field CommandletCommitMessage FString
---@field UnrealCultureToWwiseCulture TMap<FString, FString>
---@field DefaultAssetCreationPath FString
---@field InitBank TSoftObjectPtr<UAkInitBank>
---@field AudioRouting EAkUnrealAudioRouting
---@field bWwiseSoundEngineEnabled boolean
---@field bWwiseAudioLinkEnabled boolean
---@field bAkAudioMixerEnabled boolean
---@field AskedToUseNewAssetManagement boolean
---@field bEnableMultiCoreRendering boolean
---@field MigratedEnableMultiCoreRendering boolean
---@field FixupRedirectorsDuringMigration boolean
---@field WwiseWindowsInstallationPath FDirectoryPath
---@field WwiseMacInstallationPath FFilePath
---@field DefaultAkComponentClass TSubclassOf<UAkComponent>
UAkSettings = {}

---@return UAkSettings
function UAkSettings:get() end



---@class UAkSettingsPerUser : UObject
---@field WwiseWindowsInstallationPath FDirectoryPath
---@field WwiseMacInstallationPath FFilePath
---@field RootOutputPathOverride FDirectoryPath
---@field GeneratedSoundBanksFolderOverride FDirectoryPath
---@field WaapiIPAddress FString
---@field WaapiPort uint32
---@field bAutoConnectToWAAPI boolean
---@field AutoSyncSelection boolean
---@field WaapiTranslatorTimeout uint32
---@field SuppressGeneratedSoundBanksPathWarnings boolean
---@field SoundDataGenerationSkipLanguage boolean
---@field AskForWwiseAssetReload boolean
UAkSettingsPerUser = {}

---@return UAkSettingsPerUser
function UAkSettingsPerUser:get() end



---@class UAkSlider : UWidget
---@field Value float
---@field ValueDelegate FAkSliderValueDelegate
---@field WidgetStyle FSliderStyle
---@field Orientation EOrientation
---@field SliderBarColor FLinearColor
---@field SliderHandleColor FLinearColor
---@field IndentHandle boolean
---@field Locked boolean
---@field StepSize float
---@field IsFocusable boolean
---@field ThePropertyToControl FAkPropertyToControl
---@field ItemToControl FAkWwiseItemToControl
---@field OnValueChanged FAkSliderOnValueChanged
---@field OnItemDropped FAkSliderOnItemDropped
---@field OnPropertyDropped FAkSliderOnPropertyDropped
UAkSlider = {}

---@return UAkSlider
function UAkSlider:get() end

---@param InValue float
function UAkSlider:SetValue(InValue) end
---@param InValue float
function UAkSlider:SetStepSize(InValue) end
---@param InValue FLinearColor
function UAkSlider:SetSliderHandleColor(InValue) end
---@param InValue FLinearColor
function UAkSlider:SetSliderBarColor(InValue) end
---@param InValue boolean
function UAkSlider:SetLocked(InValue) end
---@param InValue boolean
function UAkSlider:SetIndentHandle(InValue) end
---@param ItemProperty FString
function UAkSlider:SetAkSliderItemProperty(ItemProperty) end
---@param ItemId FGuid
function UAkSlider:SetAkSliderItemId(ItemId) end
---@return float
function UAkSlider:GetValue() end
---@return FString
function UAkSlider:GetAkSliderItemProperty() end
---@return FGuid
function UAkSlider:GetAkSliderItemId() end


---@class UAkStateValue : UAkGroupValue
UAkStateValue = {}

---@return UAkStateValue
function UAkStateValue:get() end


---@class UAkSubmixInputComponent : UAkAudioInputComponent
---@field SubmixToRecord USoundSubmix
UAkSubmixInputComponent = {}

---@return UAkSubmixInputComponent
function UAkSubmixInputComponent:get() end



---@class UAkSurfaceReflectorSetComponent : UAkAcousticTextureSetComponent
---@field bEnableSurfaceReflectors boolean
---@field AcousticPolys TArray<FAkSurfacePoly>
---@field bEnableDiffraction boolean
---@field bEnableDiffractionOnBoundaryEdges boolean
---@field AssociatedRoom AActor
UAkSurfaceReflectorSetComponent = {}

---@return UAkSurfaceReflectorSetComponent
function UAkSurfaceReflectorSetComponent:get() end

function UAkSurfaceReflectorSetComponent:UpdateSurfaceReflectorSet() end
---@param in_AcousticPolys TArray<FAkSurfacePoly>
function UAkSurfaceReflectorSetComponent:UpdateAcousticProperties(in_AcousticPolys) end
function UAkSurfaceReflectorSetComponent:SendSurfaceReflectorSet() end
function UAkSurfaceReflectorSetComponent:RemoveSurfaceReflectorSet() end


---@class UAkSwitchValue : UAkGroupValue
UAkSwitchValue = {}

---@return UAkSwitchValue
function UAkSwitchValue:get() end


---@class UAkTVOSInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field AudioSession FAkAudioSession
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkTVOSAdvancedInitializationSettings
UAkTVOSInitializationSettings = {}

---@return UAkTVOSInitializationSettings
function UAkTVOSInitializationSettings:get() end



---@class UAkTVOSPlatformInfo : UAkPlatformInfo
UAkTVOSPlatformInfo = {}

---@return UAkTVOSPlatformInfo
function UAkTVOSPlatformInfo:get() end


---@class UAkTrigger : UAkAudioType
---@field TriggerCookedData FWwiseTriggerCookedData
UAkTrigger = {}

---@return UAkTrigger
function UAkTrigger:get() end



---@class UAkWaapiCalls : UBlueprintFunctionLibrary
UAkWaapiCalls = {}

---@return UAkWaapiCalls
function UAkWaapiCalls:get() end

---@param SubscriptionId FAkWaapiSubscriptionId
---@param UnsubscriptionDone boolean
---@return FAKWaapiJsonObject
function UAkWaapiCalls:Unsubscribe(SubscriptionId, UnsubscriptionDone) end
---@param WaapiUri FAkWaapiUri
---@param WaapiOptions FAKWaapiJsonObject
---@param Callback FSubscribeToWaapiCallback
---@param SubscriptionId FAkWaapiSubscriptionId
---@param SubscriptionDone boolean
---@return FAKWaapiJsonObject
function UAkWaapiCalls:SubscribeToWaapi(WaapiUri, WaapiOptions, Callback, SubscriptionId, SubscriptionDone) end
---@param Subscription FAkWaapiSubscriptionId
---@param ID int32
function UAkWaapiCalls:SetSubscriptionID(Subscription, ID) end
---@param Callback FRegisterWaapiProjectLoadedCallbackCallback
---@return boolean
function UAkWaapiCalls:RegisterWaapiProjectLoadedCallback(Callback) end
---@param Callback FRegisterWaapiConnectionLostCallbackCallback
---@return boolean
function UAkWaapiCalls:RegisterWaapiConnectionLostCallback(Callback) end
---@param Subscription FAkWaapiSubscriptionId
---@return int32
function UAkWaapiCalls:GetSubscriptionID(Subscription) end
---@param INAkWaapiSubscriptionId FAkWaapiSubscriptionId
---@return FText
function UAkWaapiCalls:Conv_FAkWaapiSubscriptionIdToText(INAkWaapiSubscriptionId) end
---@param INAkWaapiSubscriptionId FAkWaapiSubscriptionId
---@return FString
function UAkWaapiCalls:Conv_FAkWaapiSubscriptionIdToString(INAkWaapiSubscriptionId) end
---@param WaapiUri FAkWaapiUri
---@param WaapiArgs FAKWaapiJsonObject
---@param WaapiOptions FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiCalls:CallWaapi(WaapiUri, WaapiArgs, WaapiOptions) end


---@class UAkWaapiJsonManager : UBlueprintFunctionLibrary
UAkWaapiJsonManager = {}

---@return UAkWaapiJsonManager
function UAkWaapiJsonManager:get() end

---@param FieldName FAkWaapiFieldNames
---@param FieldValue FString
---@param Target FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiJsonManager:SetStringField(FieldName, FieldValue, Target) end
---@param FieldName FAkWaapiFieldNames
---@param FieldValue FAKWaapiJsonObject
---@param Target FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiJsonManager:SetObjectField(FieldName, FieldValue, Target) end
---@param FieldName FAkWaapiFieldNames
---@param FieldValue float
---@param Target FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiJsonManager:SetNumberField(FieldName, FieldValue, Target) end
---@param FieldName FAkWaapiFieldNames
---@param FieldValue boolean
---@param Target FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiJsonManager:SetBoolField(FieldName, FieldValue, Target) end
---@param FieldName FAkWaapiFieldNames
---@param FieldStringValues TArray<FString>
---@param Target FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiJsonManager:SetArrayStringFields(FieldName, FieldStringValues, Target) end
---@param FieldName FAkWaapiFieldNames
---@param FieldObjectValues TArray<FAKWaapiJsonObject>
---@param Target FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiJsonManager:SetArrayObjectFields(FieldName, FieldObjectValues, Target) end
---@param FieldName FAkWaapiFieldNames
---@param Target FAKWaapiJsonObject
---@return FString
function UAkWaapiJsonManager:GetStringField(FieldName, Target) end
---@param FieldName FAkWaapiFieldNames
---@param Target FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiJsonManager:GetObjectField(FieldName, Target) end
---@param FieldName FAkWaapiFieldNames
---@param Target FAKWaapiJsonObject
---@return float
function UAkWaapiJsonManager:GetNumberField(FieldName, Target) end
---@param FieldName FAkWaapiFieldNames
---@param Target FAKWaapiJsonObject
---@return int32
function UAkWaapiJsonManager:GetIntegerField(FieldName, Target) end
---@param FieldName FAkWaapiFieldNames
---@param Target FAKWaapiJsonObject
---@return boolean
function UAkWaapiJsonManager:GetBoolField(FieldName, Target) end
---@param FieldName FAkWaapiFieldNames
---@param Target FAKWaapiJsonObject
---@return TArray<FAKWaapiJsonObject>
function UAkWaapiJsonManager:GetArrayField(FieldName, Target) end
---@param INAKWaapiJsonObject FAKWaapiJsonObject
---@return FText
function UAkWaapiJsonManager:Conv_FAKWaapiJsonObjectToText(INAKWaapiJsonObject) end
---@param INAKWaapiJsonObject FAKWaapiJsonObject
---@return FString
function UAkWaapiJsonManager:Conv_FAKWaapiJsonObjectToString(INAKWaapiJsonObject) end


---@class UAkWaapiUriConv : UBlueprintFunctionLibrary
UAkWaapiUriConv = {}

---@return UAkWaapiUriConv
function UAkWaapiUriConv:get() end

---@param INAkWaapiUri FAkWaapiUri
---@return FText
function UAkWaapiUriConv:Conv_FAkWaapiUriToText(INAkWaapiUri) end
---@param INAkWaapiUri FAkWaapiUri
---@return FString
function UAkWaapiUriConv:Conv_FAkWaapiUriToString(INAkWaapiUri) end


---@class UAkWin32PlatformInfo : UAkPlatformInfo
UAkWin32PlatformInfo = {}

---@return UAkWin32PlatformInfo
function UAkWin32PlatformInfo:get() end


---@class UAkWin64PlatformInfo : UAkPlatformInfo
UAkWin64PlatformInfo = {}

---@return UAkWin64PlatformInfo
function UAkWin64PlatformInfo:get() end


---@class UAkWinAnvilInitializationSettings : UAkWinGDKInitializationSettings
UAkWinAnvilInitializationSettings = {}

---@return UAkWinAnvilInitializationSettings
function UAkWinAnvilInitializationSettings:get() end


---@class UAkWinAnvilPlatformInfo : UAkWinGDKPlatformInfo
UAkWinAnvilPlatformInfo = {}

---@return UAkWinAnvilPlatformInfo
function UAkWinAnvilPlatformInfo:get() end


---@class UAkWinGDKInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkWinGDKAdvancedInitializationSettings
UAkWinGDKInitializationSettings = {}

---@return UAkWinGDKInitializationSettings
function UAkWinGDKInitializationSettings:get() end

---@param NewValue boolean
function UAkWinGDKInitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkWinGDKPlatformInfo : UAkPlatformInfo
UAkWinGDKPlatformInfo = {}

---@return UAkWinGDKPlatformInfo
function UAkWinGDKPlatformInfo:get() end


---@class UAkWindowsInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkWindowsAdvancedInitializationSettings
UAkWindowsInitializationSettings = {}

---@return UAkWindowsInitializationSettings
function UAkWindowsInitializationSettings:get() end

---@param NewValue boolean
function UAkWindowsInitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkWindowsPlatformInfo : UAkWin64PlatformInfo
UAkWindowsPlatformInfo = {}

---@return UAkWindowsPlatformInfo
function UAkWindowsPlatformInfo:get() end


---@class UAkWwiseTree : UWidget
---@field OnSelectionChanged FAkWwiseTreeOnSelectionChanged
---@field OnItemDragged FAkWwiseTreeOnItemDragged
UAkWwiseTree = {}

---@return UAkWwiseTree
function UAkWwiseTree:get() end

---@param newText FString
function UAkWwiseTree:SetSearchText(newText) end
---@return FAkWwiseObjectDetails
function UAkWwiseTree:GetSelectedItem() end
---@return FString
function UAkWwiseTree:GetSearchText() end


---@class UAkWwiseTreeSelector : UWidget
---@field OnSelectionChanged FAkWwiseTreeSelectorOnSelectionChanged
---@field OnItemDragged FAkWwiseTreeSelectorOnItemDragged
UAkWwiseTreeSelector = {}

---@return UAkWwiseTreeSelector
function UAkWwiseTreeSelector:get() end



---@class UAkXB1InitializationSettings : UAkXboxOneGDKInitializationSettings
UAkXB1InitializationSettings = {}

---@return UAkXB1InitializationSettings
function UAkXB1InitializationSettings:get() end


---@class UAkXB1PlatformInfo : UAkXboxOneGDKPlatformInfo
UAkXB1PlatformInfo = {}

---@return UAkXB1PlatformInfo
function UAkXB1PlatformInfo:get() end


---@class UAkXSXInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettings
---@field ApuHeapSettings FAkXSXApuHeapInitializationSettings
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkXSXAdvancedInitializationSettings
UAkXSXInitializationSettings = {}

---@return UAkXSXInitializationSettings
function UAkXSXInitializationSettings:get() end

---@param NewValue boolean
function UAkXSXInitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkXSXPlatformInfo : UAkPlatformInfo
UAkXSXPlatformInfo = {}

---@return UAkXSXPlatformInfo
function UAkXSXPlatformInfo:get() end


---@class UAkXboxOneAnvilInitializationSettings : UAkXboxOneGDKInitializationSettings
UAkXboxOneAnvilInitializationSettings = {}

---@return UAkXboxOneAnvilInitializationSettings
function UAkXboxOneAnvilInitializationSettings:get() end


---@class UAkXboxOneAnvilPlatformInfo : UAkXboxOneGDKPlatformInfo
UAkXboxOneAnvilPlatformInfo = {}

---@return UAkXboxOneAnvilPlatformInfo
function UAkXboxOneAnvilPlatformInfo:get() end


---@class UAkXboxOneGDKInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettings
---@field ApuHeapSettings FAkXboxOneGDKApuHeapInitializationSettings
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkXboxOneGDKAdvancedInitializationSettings
UAkXboxOneGDKInitializationSettings = {}

---@return UAkXboxOneGDKInitializationSettings
function UAkXboxOneGDKInitializationSettings:get() end

---@param NewValue boolean
function UAkXboxOneGDKInitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkXboxOneGDKPlatformInfo : UAkPlatformInfo
UAkXboxOneGDKPlatformInfo = {}

---@return UAkXboxOneGDKPlatformInfo
function UAkXboxOneGDKPlatformInfo:get() end


---@class UDrawPortalComponent : UPrimitiveComponent
UDrawPortalComponent = {}

---@return UDrawPortalComponent
function UDrawPortalComponent:get() end


---@class UDrawRoomComponent : UPrimitiveComponent
UDrawRoomComponent = {}

---@return UDrawRoomComponent
function UDrawRoomComponent:get() end


---@class UMovieSceneAkAudioEventSection : UMovieSceneSection
---@field Event UAkAudioEvent
---@field RetriggerEvent boolean
---@field ScrubTailLengthMs int32
---@field StopAtSectionEnd boolean
---@field EventName FString
---@field MaxSourceDuration float
---@field MaxDurationSourceID FString
UMovieSceneAkAudioEventSection = {}

---@return UMovieSceneAkAudioEventSection
function UMovieSceneAkAudioEventSection:get() end



---@class UMovieSceneAkAudioEventTrack : UMovieSceneAkTrack
UMovieSceneAkAudioEventTrack = {}

---@return UMovieSceneAkAudioEventTrack
function UMovieSceneAkAudioEventTrack:get() end


---@class UMovieSceneAkAudioRTPCSection : UMovieSceneSection
---@field RTPC UAkRtpc
---@field Name FString
---@field FloatCurve FRichCurve
---@field FloatChannelSerializationHelper FMovieSceneFloatChannelSerializationHelper
---@field RTPCChannel FMovieSceneFloatChannel
UMovieSceneAkAudioRTPCSection = {}

---@return UMovieSceneAkAudioRTPCSection
function UMovieSceneAkAudioRTPCSection:get() end



---@class UMovieSceneAkAudioRTPCTrack : UMovieSceneAkTrack
UMovieSceneAkAudioRTPCTrack = {}

---@return UMovieSceneAkAudioRTPCTrack
function UMovieSceneAkAudioRTPCTrack:get() end


---@class UMovieSceneAkTrack : UMovieSceneTrack
---@field Sections TArray<UMovieSceneSection>
---@field bIsAMasterTrack boolean
UMovieSceneAkTrack = {}

---@return UMovieSceneAkTrack
function UMovieSceneAkTrack:get() end



---@class UPostEventAsync : UBlueprintAsyncActionBase
---@field Completed FPostEventAsyncCompleted
UPostEventAsync = {}

---@return UPostEventAsync
function UPostEventAsync:get() end

---@param WorldContextObject UObject
---@param AkEvent UAkAudioEvent
---@param Actor AActor
---@param CallbackMask int32
---@param PostEventCallback FPostEventAsyncPostEventCallback
---@param bStopWhenAttachedToDestroyed boolean
---@return UPostEventAsync
function UPostEventAsync:PostEventAsync(WorldContextObject, AkEvent, Actor, CallbackMask, PostEventCallback, bStopWhenAttachedToDestroyed) end
function UPostEventAsync:PollPostEventFuture() end


---@class UPostEventAtLocationAsync : UBlueprintAsyncActionBase
---@field Completed FPostEventAtLocationAsyncCompleted
UPostEventAtLocationAsync = {}

---@return UPostEventAtLocationAsync
function UPostEventAtLocationAsync:get() end

---@param WorldContextObject UObject
---@param AkEvent UAkAudioEvent
---@param Location FVector
---@param Orientation FRotator
---@return UPostEventAtLocationAsync
function UPostEventAtLocationAsync:PostEventAtLocationAsync(WorldContextObject, AkEvent, Location, Orientation) end
function UPostEventAtLocationAsync:PollPostEventFuture() end


---@class USAkWaapiFieldNamesConv : UBlueprintFunctionLibrary
USAkWaapiFieldNamesConv = {}

---@return USAkWaapiFieldNamesConv
function USAkWaapiFieldNamesConv:get() end

---@param INAkWaapiFieldNames FAkWaapiFieldNames
---@return FText
function USAkWaapiFieldNamesConv:Conv_FAkWaapiFieldNamesToText(INAkWaapiFieldNames) end
---@param INAkWaapiFieldNames FAkWaapiFieldNames
---@return FString
function USAkWaapiFieldNamesConv:Conv_FAkWaapiFieldNamesToString(INAkWaapiFieldNames) end


