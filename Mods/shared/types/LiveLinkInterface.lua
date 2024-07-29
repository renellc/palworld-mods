---@meta

---@class FCachedSubjectFrame
FCachedSubjectFrame = {}

---@return FCachedSubjectFrame
function FCachedSubjectFrame:get() end


---@class FLiveLinkAnimationFrameData : FLiveLinkBaseFrameData
---@field Transforms TArray<FTransform>
FLiveLinkAnimationFrameData = {}

---@return FLiveLinkAnimationFrameData
function FLiveLinkAnimationFrameData:get() end



---@class FLiveLinkBaseBlueprintData
FLiveLinkBaseBlueprintData = {}

---@return FLiveLinkBaseBlueprintData
function FLiveLinkBaseBlueprintData:get() end


---@class FLiveLinkBaseFrameData
---@field WorldTime FLiveLinkWorldTime
---@field MetaData FLiveLinkMetaData
---@field PropertyValues TArray<float>
FLiveLinkBaseFrameData = {}

---@return FLiveLinkBaseFrameData
function FLiveLinkBaseFrameData:get() end



---@class FLiveLinkBaseStaticData
---@field PropertyNames TArray<FName>
FLiveLinkBaseStaticData = {}

---@return FLiveLinkBaseStaticData
function FLiveLinkBaseStaticData:get() end



---@class FLiveLinkBasicBlueprintData : FLiveLinkBaseBlueprintData
---@field StaticData FLiveLinkBaseStaticData
---@field FrameData FLiveLinkBaseFrameData
FLiveLinkBasicBlueprintData = {}

---@return FLiveLinkBasicBlueprintData
function FLiveLinkBasicBlueprintData:get() end



---@class FLiveLinkCameraBlueprintData : FLiveLinkBaseBlueprintData
---@field StaticData FLiveLinkCameraStaticData
---@field FrameData FLiveLinkCameraFrameData
FLiveLinkCameraBlueprintData = {}

---@return FLiveLinkCameraBlueprintData
function FLiveLinkCameraBlueprintData:get() end



---@class FLiveLinkCameraFrameData : FLiveLinkTransformFrameData
---@field FieldOfView float
---@field AspectRatio float
---@field FocalLength float
---@field Aperture float
---@field FocusDistance float
---@field ProjectionMode ELiveLinkCameraProjectionMode
FLiveLinkCameraFrameData = {}

---@return FLiveLinkCameraFrameData
function FLiveLinkCameraFrameData:get() end



---@class FLiveLinkCameraStaticData : FLiveLinkTransformStaticData
---@field bIsFieldOfViewSupported boolean
---@field bIsAspectRatioSupported boolean
---@field bIsFocalLengthSupported boolean
---@field bIsProjectionModeSupported boolean
---@field FilmBackWidth float
---@field FilmBackHeight float
---@field bIsApertureSupported boolean
---@field bIsFocusDistanceSupported boolean
---@field bIsDepthOfFieldSupported boolean
FLiveLinkCameraStaticData = {}

---@return FLiveLinkCameraStaticData
function FLiveLinkCameraStaticData:get() end



---@class FLiveLinkCurveConversionSettings
---@field CurveConversionAssetMap TMap<FString, FSoftObjectPath>
FLiveLinkCurveConversionSettings = {}

---@return FLiveLinkCurveConversionSettings
function FLiveLinkCurveConversionSettings:get() end



---@class FLiveLinkCurveElement
---@field CurveName FName
---@field CurveValue float
FLiveLinkCurveElement = {}

---@return FLiveLinkCurveElement
function FLiveLinkCurveElement:get() end



---@class FLiveLinkFrameData
---@field Transforms TArray<FTransform>
---@field CurveElements TArray<FLiveLinkCurveElement>
---@field WorldTime FLiveLinkWorldTime
---@field MetaData FLiveLinkMetaData
FLiveLinkFrameData = {}

---@return FLiveLinkFrameData
function FLiveLinkFrameData:get() end



---@class FLiveLinkFrameRate : FFrameRate
FLiveLinkFrameRate = {}

---@return FLiveLinkFrameRate
function FLiveLinkFrameRate:get() end


---@class FLiveLinkInterpolationSettings
---@field bUseInterpolation boolean
---@field InterpolationOffset float
FLiveLinkInterpolationSettings = {}

---@return FLiveLinkInterpolationSettings
function FLiveLinkInterpolationSettings:get() end



---@class FLiveLinkLightBlueprintData : FLiveLinkBaseBlueprintData
---@field StaticData FLiveLinkLightStaticData
---@field FrameData FLiveLinkLightFrameData
FLiveLinkLightBlueprintData = {}

---@return FLiveLinkLightBlueprintData
function FLiveLinkLightBlueprintData:get() end



---@class FLiveLinkLightFrameData : FLiveLinkTransformFrameData
---@field Temperature float
---@field Intensity float
---@field LightColor FColor
---@field InnerConeAngle float
---@field OuterConeAngle float
---@field AttenuationRadius float
---@field SourceRadius float
---@field SoftSourceRadius float
---@field SourceLength float
FLiveLinkLightFrameData = {}

---@return FLiveLinkLightFrameData
function FLiveLinkLightFrameData:get() end



---@class FLiveLinkLightStaticData : FLiveLinkTransformStaticData
---@field bIsTemperatureSupported boolean
---@field bIsIntensitySupported boolean
---@field bIsLightColorSupported boolean
---@field bIsInnerConeAngleSupported boolean
---@field bIsOuterConeAngleSupported boolean
---@field bIsAttenuationRadiusSupported boolean
---@field bIsSourceLenghtSupported boolean
---@field bIsSourceRadiusSupported boolean
---@field bIsSoftSourceRadiusSupported boolean
FLiveLinkLightStaticData = {}

---@return FLiveLinkLightStaticData
function FLiveLinkLightStaticData:get() end



---@class FLiveLinkMetaData
---@field StringMetaData TMap<FName, FString>
---@field SceneTime FQualifiedFrameTime
FLiveLinkMetaData = {}

---@return FLiveLinkMetaData
function FLiveLinkMetaData:get() end



---@class FLiveLinkRefSkeleton
---@field BoneNames TArray<FName>
---@field BoneParents TArray<int32>
FLiveLinkRefSkeleton = {}

---@return FLiveLinkRefSkeleton
function FLiveLinkRefSkeleton:get() end



---@class FLiveLinkSkeletonStaticData : FLiveLinkBaseStaticData
---@field BoneNames TArray<FName>
---@field BoneParents TArray<int32>
FLiveLinkSkeletonStaticData = {}

---@return FLiveLinkSkeletonStaticData
function FLiveLinkSkeletonStaticData:get() end



---@class FLiveLinkSourceBufferManagementSettings
---@field bValidEngineTimeEnabled boolean
---@field ValidEngineTime float
---@field EngineTimeOffset float
---@field EngineTimeClockOffset double
---@field SmoothEngineTimeOffset double
---@field bGenerateSubFrame boolean
---@field DetectedFrameRate FFrameRate
---@field bUseTimecodeSmoothLatest boolean
---@field SourceTimecodeFrameRate FFrameRate
---@field bValidTimecodeFrameEnabled boolean
---@field ValidTimecodeFrame int32
---@field TimecodeFrameOffset float
---@field TimecodeClockOffset double
---@field LatestOffset int32
---@field MaxNumberOfFrameToBuffered int32
---@field bKeepAtLeastOneFrame boolean
FLiveLinkSourceBufferManagementSettings = {}

---@return FLiveLinkSourceBufferManagementSettings
function FLiveLinkSourceBufferManagementSettings:get() end



---@class FLiveLinkSourceDebugInfo
---@field SubjectName FLiveLinkSubjectName
---@field SnapshotIndex int32
---@field NumberOfBufferAtSnapshot int32
FLiveLinkSourceDebugInfo = {}

---@return FLiveLinkSourceDebugInfo
function FLiveLinkSourceDebugInfo:get() end



---@class FLiveLinkSourceHandle
FLiveLinkSourceHandle = {}

---@return FLiveLinkSourceHandle
function FLiveLinkSourceHandle:get() end


---@class FLiveLinkSourcePreset
---@field Guid FGuid
---@field Settings ULiveLinkSourceSettings
---@field SourceType FText
FLiveLinkSourcePreset = {}

---@return FLiveLinkSourcePreset
function FLiveLinkSourcePreset:get() end



---@class FLiveLinkSubjectKey
---@field Source FGuid
---@field SubjectName FLiveLinkSubjectName
FLiveLinkSubjectKey = {}

---@return FLiveLinkSubjectKey
function FLiveLinkSubjectKey:get() end



---@class FLiveLinkSubjectName
---@field Name FName
FLiveLinkSubjectName = {}

---@return FLiveLinkSubjectName
function FLiveLinkSubjectName:get() end



---@class FLiveLinkSubjectPreset
---@field Key FLiveLinkSubjectKey
---@field Role TSubclassOf<ULiveLinkRole>
---@field Settings ULiveLinkSubjectSettings
---@field VirtualSubject ULiveLinkVirtualSubject
---@field bEnabled boolean
FLiveLinkSubjectPreset = {}

---@return FLiveLinkSubjectPreset
function FLiveLinkSubjectPreset:get() end



---@class FLiveLinkSubjectRepresentation
---@field Subject FLiveLinkSubjectName
---@field Role TSubclassOf<ULiveLinkRole>
FLiveLinkSubjectRepresentation = {}

---@return FLiveLinkSubjectRepresentation
function FLiveLinkSubjectRepresentation:get() end



---@class FLiveLinkTime
---@field WorldTime double
---@field SceneTime FQualifiedFrameTime
FLiveLinkTime = {}

---@return FLiveLinkTime
function FLiveLinkTime:get() end



---@class FLiveLinkTimeCode : FLiveLinkTimeCode_Base_DEPRECATED
FLiveLinkTimeCode = {}

---@return FLiveLinkTimeCode
function FLiveLinkTimeCode:get() end


---@class FLiveLinkTimeCode_Base_DEPRECATED
---@field Seconds int32
---@field Frames int32
---@field FrameRate FLiveLinkFrameRate
FLiveLinkTimeCode_Base_DEPRECATED = {}

---@return FLiveLinkTimeCode_Base_DEPRECATED
function FLiveLinkTimeCode_Base_DEPRECATED:get() end



---@class FLiveLinkTimeSynchronizationSettings
---@field FrameRate FFrameRate
---@field FrameOffset FFrameNumber
FLiveLinkTimeSynchronizationSettings = {}

---@return FLiveLinkTimeSynchronizationSettings
function FLiveLinkTimeSynchronizationSettings:get() end



---@class FLiveLinkTransform
FLiveLinkTransform = {}

---@return FLiveLinkTransform
function FLiveLinkTransform:get() end


---@class FLiveLinkTransformBlueprintData : FLiveLinkBaseBlueprintData
---@field StaticData FLiveLinkTransformStaticData
---@field FrameData FLiveLinkTransformFrameData
FLiveLinkTransformBlueprintData = {}

---@return FLiveLinkTransformBlueprintData
function FLiveLinkTransformBlueprintData:get() end



---@class FLiveLinkTransformFrameData : FLiveLinkBaseFrameData
---@field Transform FTransform
FLiveLinkTransformFrameData = {}

---@return FLiveLinkTransformFrameData
function FLiveLinkTransformFrameData:get() end



---@class FLiveLinkTransformStaticData : FLiveLinkBaseStaticData
---@field bIsLocationSupported boolean
---@field bIsRotationSupported boolean
---@field bIsScaleSupported boolean
FLiveLinkTransformStaticData = {}

---@return FLiveLinkTransformStaticData
function FLiveLinkTransformStaticData:get() end



---@class FLiveLinkWorldTime
---@field Time double
---@field Offset double
FLiveLinkWorldTime = {}

---@return FLiveLinkWorldTime
function FLiveLinkWorldTime:get() end



---@class FSubjectFrameHandle : FLiveLinkBaseBlueprintData
FSubjectFrameHandle = {}

---@return FSubjectFrameHandle
function FSubjectFrameHandle:get() end


---@class FSubjectMetadata
---@field StringMetaData TMap<FName, FString>
---@field SceneTimecode FTimecode
---@field SceneFramerate FFrameRate
FSubjectMetadata = {}

---@return FSubjectMetadata
function FSubjectMetadata:get() end



---@class ULiveLinkAnimationRole : ULiveLinkBasicRole
ULiveLinkAnimationRole = {}

---@return ULiveLinkAnimationRole
function ULiveLinkAnimationRole:get() end


---@class ULiveLinkBasicRole : ULiveLinkRole
ULiveLinkBasicRole = {}

---@return ULiveLinkBasicRole
function ULiveLinkBasicRole:get() end


---@class ULiveLinkCameraRole : ULiveLinkTransformRole
ULiveLinkCameraRole = {}

---@return ULiveLinkCameraRole
function ULiveLinkCameraRole:get() end


---@class ULiveLinkController : UObject
ULiveLinkController = {}

---@return ULiveLinkController
function ULiveLinkController:get() end


---@class ULiveLinkCurveRemapSettings : ULiveLinkSourceSettings
---@field CurveConversionSettings FLiveLinkCurveConversionSettings
ULiveLinkCurveRemapSettings = {}

---@return ULiveLinkCurveRemapSettings
function ULiveLinkCurveRemapSettings:get() end



---@class ULiveLinkFrameInterpolationProcessor : UObject
ULiveLinkFrameInterpolationProcessor = {}

---@return ULiveLinkFrameInterpolationProcessor
function ULiveLinkFrameInterpolationProcessor:get() end


---@class ULiveLinkFramePreProcessor : UObject
ULiveLinkFramePreProcessor = {}

---@return ULiveLinkFramePreProcessor
function ULiveLinkFramePreProcessor:get() end


---@class ULiveLinkFrameTranslator : UObject
ULiveLinkFrameTranslator = {}

---@return ULiveLinkFrameTranslator
function ULiveLinkFrameTranslator:get() end


---@class ULiveLinkLightRole : ULiveLinkTransformRole
ULiveLinkLightRole = {}

---@return ULiveLinkLightRole
function ULiveLinkLightRole:get() end


---@class ULiveLinkRole : UObject
ULiveLinkRole = {}

---@return ULiveLinkRole
function ULiveLinkRole:get() end


---@class ULiveLinkSourceFactory : UObject
ULiveLinkSourceFactory = {}

---@return ULiveLinkSourceFactory
function ULiveLinkSourceFactory:get() end


---@class ULiveLinkSourceSettings : UObject
---@field Mode ELiveLinkSourceMode
---@field BufferSettings FLiveLinkSourceBufferManagementSettings
---@field ConnectionString FString
---@field Factory TSubclassOf<ULiveLinkSourceFactory>
ULiveLinkSourceSettings = {}

---@return ULiveLinkSourceSettings
function ULiveLinkSourceSettings:get() end



---@class ULiveLinkSubjectSettings : UObject
---@field PreProcessors TArray<ULiveLinkFramePreProcessor>
---@field InterpolationProcessor ULiveLinkFrameInterpolationProcessor
---@field Translators TArray<ULiveLinkFrameTranslator>
---@field Role TSubclassOf<ULiveLinkRole>
---@field FrameRate FFrameRate
---@field bRebroadcastSubject boolean
ULiveLinkSubjectSettings = {}

---@return ULiveLinkSubjectSettings
function ULiveLinkSubjectSettings:get() end



---@class ULiveLinkTransformRole : ULiveLinkBasicRole
ULiveLinkTransformRole = {}

---@return ULiveLinkTransformRole
function ULiveLinkTransformRole:get() end


---@class ULiveLinkVirtualSubject : UObject
---@field Role TSubclassOf<ULiveLinkRole>
---@field Subjects TArray<FLiveLinkSubjectName>
---@field FrameTranslators TArray<ULiveLinkFrameTranslator>
---@field bRebroadcastSubject boolean
ULiveLinkVirtualSubject = {}

---@return ULiveLinkVirtualSubject
function ULiveLinkVirtualSubject:get() end



