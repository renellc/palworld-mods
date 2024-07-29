---@meta

---@class ADatasmithAreaLightActor : AActor
---@field Mobility EComponentMobility::Type
---@field LightType EDatasmithAreaLightActorType
---@field LightShape EDatasmithAreaLightActorShape
---@field Dimensions FVector2D
---@field Intensity float
---@field IntensityUnits ELightUnits
---@field Color FLinearColor
---@field Temperature float
---@field IESTexture UTextureLightProfile
---@field bUseIESBrightness boolean
---@field IESBrightnessScale float
---@field Rotation FRotator
---@field SourceRadius float
---@field SourceLength float
---@field AttenuationRadius float
---@field SpotlightInnerAngle float
---@field SpotlightOuterAngle float
ADatasmithAreaLightActor = {}

---@return ADatasmithAreaLightActor
function ADatasmithAreaLightActor:get() end



---@class ADatasmithImportedSequencesActor : AActor
---@field ImportedSequences TArray<ULevelSequence>
ADatasmithImportedSequencesActor = {}

---@return ADatasmithImportedSequencesActor
function ADatasmithImportedSequencesActor:get() end

---@param SequenceToPlay ULevelSequence
function ADatasmithImportedSequencesActor:PlayLevelSequence(SequenceToPlay) end


---@class ADatasmithSceneActor : AActor
---@field Scene UDatasmithScene
---@field RelatedActors TMap<FName, TSoftObjectPtr<AActor>>
ADatasmithSceneActor = {}

---@return ADatasmithSceneActor
function ADatasmithSceneActor:get() end



---@class FDatasmithAssetImportOptions
---@field PackagePath FName
FDatasmithAssetImportOptions = {}

---@return FDatasmithAssetImportOptions
function FDatasmithAssetImportOptions:get() end



---@class FDatasmithCameraFilmbackSettingsTemplate
---@field SensorWidth float
---@field SensorHeight float
FDatasmithCameraFilmbackSettingsTemplate = {}

---@return FDatasmithCameraFilmbackSettingsTemplate
function FDatasmithCameraFilmbackSettingsTemplate:get() end



---@class FDatasmithCameraFocusSettingsTemplate
---@field FocusMethod ECameraFocusMethod
---@field ManualFocusDistance float
FDatasmithCameraFocusSettingsTemplate = {}

---@return FDatasmithCameraFocusSettingsTemplate
function FDatasmithCameraFocusSettingsTemplate:get() end



---@class FDatasmithCameraLensSettingsTemplate
---@field MaxFStop float
FDatasmithCameraLensSettingsTemplate = {}

---@return FDatasmithCameraLensSettingsTemplate
function FDatasmithCameraLensSettingsTemplate:get() end



---@class FDatasmithCameraLookatTrackingSettingsTemplate
---@field bEnableLookAtTracking boolean
---@field bAllowRoll boolean
---@field ActorToTrack TSoftObjectPtr<AActor>
FDatasmithCameraLookatTrackingSettingsTemplate = {}

---@return FDatasmithCameraLookatTrackingSettingsTemplate
function FDatasmithCameraLookatTrackingSettingsTemplate:get() end



---@class FDatasmithImportBaseOptions
---@field SceneHandling EDatasmithImportScene
---@field bIncludeGeometry boolean
---@field bIncludeMaterial boolean
---@field bIncludeLight boolean
---@field bIncludeCamera boolean
---@field bIncludeAnimation boolean
---@field AssetOptions FDatasmithAssetImportOptions
---@field StaticMeshOptions FDatasmithStaticMeshImportOptions
FDatasmithImportBaseOptions = {}

---@return FDatasmithImportBaseOptions
function FDatasmithImportBaseOptions:get() end



---@class FDatasmithImportInfo
FDatasmithImportInfo = {}

---@return FDatasmithImportInfo
function FDatasmithImportInfo:get() end


---@class FDatasmithMeshBuildSettingsTemplate
---@field bUseMikkTSpace boolean
---@field bRecomputeNormals boolean
---@field bRecomputeTangents boolean
---@field bRemoveDegenerates boolean
---@field bUseHighPrecisionTangentBasis boolean
---@field bUseFullPrecisionUVs boolean
---@field bGenerateLightmapUVs boolean
---@field MinLightmapResolution int32
---@field SrcLightmapIndex int32
---@field DstLightmapIndex int32
FDatasmithMeshBuildSettingsTemplate = {}

---@return FDatasmithMeshBuildSettingsTemplate
function FDatasmithMeshBuildSettingsTemplate:get() end



---@class FDatasmithMeshSectionInfoMapTemplate
---@field Map TMap<uint32, FDatasmithMeshSectionInfoTemplate>
FDatasmithMeshSectionInfoMapTemplate = {}

---@return FDatasmithMeshSectionInfoMapTemplate
function FDatasmithMeshSectionInfoMapTemplate:get() end



---@class FDatasmithMeshSectionInfoTemplate
---@field MaterialIndex int32
FDatasmithMeshSectionInfoTemplate = {}

---@return FDatasmithMeshSectionInfoTemplate
function FDatasmithMeshSectionInfoTemplate:get() end



---@class FDatasmithPostProcessSettingsTemplate
---@field bOverride_WhiteTemp boolean
---@field bOverride_ColorSaturation boolean
---@field bOverride_VignetteIntensity boolean
---@field bOverride_AutoExposureMethod boolean
---@field bOverride_CameraISO boolean
---@field bOverride_CameraShutterSpeed boolean
---@field bOverride_DepthOfFieldFstop boolean
---@field WhiteTemp float
---@field VignetteIntensity float
---@field ColorSaturation FVector4
---@field AutoExposureMethod EAutoExposureMethod
---@field CameraISO float
---@field CameraShutterSpeed float
---@field DepthOfFieldFstop float
FDatasmithPostProcessSettingsTemplate = {}

---@return FDatasmithPostProcessSettingsTemplate
function FDatasmithPostProcessSettingsTemplate:get() end



---@class FDatasmithReimportOptions
---@field bUpdateActors boolean
---@field bRespawnDeletedActors boolean
FDatasmithReimportOptions = {}

---@return FDatasmithReimportOptions
function FDatasmithReimportOptions:get() end



---@class FDatasmithRetessellationOptions : FDatasmithTessellationOptions
---@field RetessellationRule EDatasmithCADRetessellationRule
FDatasmithRetessellationOptions = {}

---@return FDatasmithRetessellationOptions
function FDatasmithRetessellationOptions:get() end



---@class FDatasmithStaticMaterialTemplate
---@field MaterialSlotName FName
---@field MaterialInterface UMaterialInterface
FDatasmithStaticMaterialTemplate = {}

---@return FDatasmithStaticMaterialTemplate
function FDatasmithStaticMaterialTemplate:get() end



---@class FDatasmithStaticMeshImportOptions
---@field MinLightmapResolution EDatasmithImportLightmapMin
---@field MaxLightmapResolution EDatasmithImportLightmapMax
---@field bGenerateLightmapUVs boolean
---@field bRemoveDegenerates boolean
FDatasmithStaticMeshImportOptions = {}

---@return FDatasmithStaticMeshImportOptions
function FDatasmithStaticMeshImportOptions:get() end



---@class FDatasmithStaticParameterSetTemplate
---@field StaticSwitchParameters TMap<FName, boolean>
FDatasmithStaticParameterSetTemplate = {}

---@return FDatasmithStaticParameterSetTemplate
function FDatasmithStaticParameterSetTemplate:get() end



---@class FDatasmithTessellationOptions
---@field ChordTolerance float
---@field MaxEdgeLength float
---@field NormalTolerance float
---@field StitchingTechnique EDatasmithCADStitchingTechnique
FDatasmithTessellationOptions = {}

---@return FDatasmithTessellationOptions
function FDatasmithTessellationOptions:get() end



---@class UDatasmithActorTemplate : UDatasmithObjectTemplate
---@field Layers TSet<FName>
---@field Tags TSet<FName>
UDatasmithActorTemplate = {}

---@return UDatasmithActorTemplate
function UDatasmithActorTemplate:get() end



---@class UDatasmithAdditionalData : UObject
UDatasmithAdditionalData = {}

---@return UDatasmithAdditionalData
function UDatasmithAdditionalData:get() end


---@class UDatasmithAreaLightActorTemplate : UDatasmithObjectTemplate
---@field LightType EDatasmithAreaLightActorType
---@field LightShape EDatasmithAreaLightActorShape
---@field Dimensions FVector2D
---@field Color FLinearColor
---@field Intensity float
---@field IntensityUnits ELightUnits
---@field Temperature float
---@field IESTexture TSoftObjectPtr<UTextureLightProfile>
---@field bUseIESBrightness boolean
---@field IESBrightnessScale float
---@field Rotation FRotator
---@field SourceRadius float
---@field SourceLength float
---@field AttenuationRadius float
UDatasmithAreaLightActorTemplate = {}

---@return UDatasmithAreaLightActorTemplate
function UDatasmithAreaLightActorTemplate:get() end



---@class UDatasmithAssetImportData : UAssetImportData
UDatasmithAssetImportData = {}

---@return UDatasmithAssetImportData
function UDatasmithAssetImportData:get() end


---@class UDatasmithAssetUserData : UAssetUserData
---@field MetaData TMap<FName, FString>
UDatasmithAssetUserData = {}

---@return UDatasmithAssetUserData
function UDatasmithAssetUserData:get() end



---@class UDatasmithCADImportSceneData : UDatasmithSceneImportData
UDatasmithCADImportSceneData = {}

---@return UDatasmithCADImportSceneData
function UDatasmithCADImportSceneData:get() end


---@class UDatasmithCineCameraActorTemplate : UDatasmithObjectTemplate
---@field LookatTrackingSettings FDatasmithCameraLookatTrackingSettingsTemplate
UDatasmithCineCameraActorTemplate = {}

---@return UDatasmithCineCameraActorTemplate
function UDatasmithCineCameraActorTemplate:get() end



---@class UDatasmithCineCameraComponentTemplate : UDatasmithObjectTemplate
---@field FilmbackSettings FDatasmithCameraFilmbackSettingsTemplate
---@field LensSettings FDatasmithCameraLensSettingsTemplate
---@field FocusSettings FDatasmithCameraFocusSettingsTemplate
---@field CurrentFocalLength float
---@field CurrentAperture float
---@field PostProcessSettings FDatasmithPostProcessSettingsTemplate
UDatasmithCineCameraComponentTemplate = {}

---@return UDatasmithCineCameraComponentTemplate
function UDatasmithCineCameraComponentTemplate:get() end



---@class UDatasmithCommonTessellationOptions : UDatasmithOptionsBase
---@field Options FDatasmithTessellationOptions
UDatasmithCommonTessellationOptions = {}

---@return UDatasmithCommonTessellationOptions
function UDatasmithCommonTessellationOptions:get() end



---@class UDatasmithContentBlueprintLibrary : UBlueprintFunctionLibrary
UDatasmithContentBlueprintLibrary = {}

---@return UDatasmithContentBlueprintLibrary
function UDatasmithContentBlueprintLibrary:get() end

---@param Object UObject
---@param Key FName
---@param bPartialMatchKey boolean
---@return TArray<FString>
function UDatasmithContentBlueprintLibrary:GetDatasmithUserDataValuesForKey(Object, Key, bPartialMatchKey) end
---@param Object UObject
---@param Key FName
---@param bPartialMatchKey boolean
---@return FString
function UDatasmithContentBlueprintLibrary:GetDatasmithUserDataValueForKey(Object, Key, bPartialMatchKey) end
---@param Object UObject
---@param StringToMatch FString
---@param OutKeys TArray<FName>
---@param OutValues TArray<FString>
function UDatasmithContentBlueprintLibrary:GetDatasmithUserDataKeysAndValuesForValue(Object, StringToMatch, OutKeys, OutValues) end
---@param Object UObject
---@return UDatasmithAssetUserData
function UDatasmithContentBlueprintLibrary:GetDatasmithUserData(Object) end


---@class UDatasmithCustomActionBase : UObject
UDatasmithCustomActionBase = {}

---@return UDatasmithCustomActionBase
function UDatasmithCustomActionBase:get() end


---@class UDatasmithDecalComponentTemplate : UDatasmithObjectTemplate
---@field SortOrder int32
---@field DecalSize FVector
---@field Material UMaterialInterface
UDatasmithDecalComponentTemplate = {}

---@return UDatasmithDecalComponentTemplate
function UDatasmithDecalComponentTemplate:get() end



---@class UDatasmithDeltaGenAssetImportData : UDatasmithAssetImportData
UDatasmithDeltaGenAssetImportData = {}

---@return UDatasmithDeltaGenAssetImportData
function UDatasmithDeltaGenAssetImportData:get() end


---@class UDatasmithDeltaGenSceneImportData : UDatasmithFBXSceneImportData
---@field bMergeNodes boolean
---@field bOptimizeDuplicatedNodes boolean
---@field bRemoveInvisibleNodes boolean
---@field bSimplifyNodeHierarchy boolean
---@field bImportVar boolean
---@field VarPath FString
---@field bImportPos boolean
---@field PosPath FString
---@field bImportTml boolean
---@field TmlPath FString
UDatasmithDeltaGenSceneImportData = {}

---@return UDatasmithDeltaGenSceneImportData
function UDatasmithDeltaGenSceneImportData:get() end



---@class UDatasmithFBXSceneImportData : UDatasmithSceneImportData
---@field bGenerateLightmapUVs boolean
---@field TexturesDir FString
---@field IntermediateSerialization uint8
---@field bColorizeMaterials boolean
UDatasmithFBXSceneImportData = {}

---@return UDatasmithFBXSceneImportData
function UDatasmithFBXSceneImportData:get() end



---@class UDatasmithGLTFSceneImportData : UDatasmithSceneImportData
---@field Generator FString
---@field Version float
---@field Author FString
---@field License FString
---@field Source FString
UDatasmithGLTFSceneImportData = {}

---@return UDatasmithGLTFSceneImportData
function UDatasmithGLTFSceneImportData:get() end



---@class UDatasmithIFCSceneImportData : UDatasmithSceneImportData
UDatasmithIFCSceneImportData = {}

---@return UDatasmithIFCSceneImportData
function UDatasmithIFCSceneImportData:get() end


---@class UDatasmithImportOptions : UDatasmithOptionsBase
---@field SearchPackagePolicy EDatasmithImportSearchPackagePolicy
---@field MaterialConflictPolicy EDatasmithImportAssetConflictPolicy
---@field TextureConflictPolicy EDatasmithImportAssetConflictPolicy
---@field StaticMeshActorImportPolicy EDatasmithImportActorPolicy
---@field LightImportPolicy EDatasmithImportActorPolicy
---@field CameraImportPolicy EDatasmithImportActorPolicy
---@field OtherActorImportPolicy EDatasmithImportActorPolicy
---@field MaterialQuality EDatasmithImportMaterialQuality
---@field BaseOptions FDatasmithImportBaseOptions
---@field ReimportOptions FDatasmithReimportOptions
---@field Filename FString
---@field FilePath FString
---@field SourceUri FString
UDatasmithImportOptions = {}

---@return UDatasmithImportOptions
function UDatasmithImportOptions:get() end



---@class UDatasmithLandscapeTemplate : UDatasmithObjectTemplate
---@field LandscapeMaterial UMaterialInterface
---@field StaticLightingLOD int32
UDatasmithLandscapeTemplate = {}

---@return UDatasmithLandscapeTemplate
function UDatasmithLandscapeTemplate:get() end



---@class UDatasmithLightComponentTemplate : UDatasmithObjectTemplate
---@field bVisible boolean
---@field CastShadows boolean
---@field bUseTemperature boolean
---@field bUseIESBrightness boolean
---@field Intensity float
---@field Temperature float
---@field IESBrightnessScale float
---@field LightColor FLinearColor
---@field LightFunctionMaterial UMaterialInterface
---@field IESTexture UTextureLightProfile
UDatasmithLightComponentTemplate = {}

---@return UDatasmithLightComponentTemplate
function UDatasmithLightComponentTemplate:get() end



---@class UDatasmithMDLSceneImportData : UDatasmithSceneImportData
UDatasmithMDLSceneImportData = {}

---@return UDatasmithMDLSceneImportData
function UDatasmithMDLSceneImportData:get() end


---@class UDatasmithMaterialInstanceTemplate : UDatasmithObjectTemplate
---@field ParentMaterial TSoftObjectPtr<UMaterialInterface>
---@field ScalarParameterValues TMap<FName, float>
---@field VectorParameterValues TMap<FName, FLinearColor>
---@field TextureParameterValues TMap<FName, TSoftObjectPtr<UTexture>>
---@field StaticParameters FDatasmithStaticParameterSetTemplate
UDatasmithMaterialInstanceTemplate = {}

---@return UDatasmithMaterialInstanceTemplate
function UDatasmithMaterialInstanceTemplate:get() end



---@class UDatasmithObjectTemplate : UObject
UDatasmithObjectTemplate = {}

---@return UDatasmithObjectTemplate
function UDatasmithObjectTemplate:get() end


---@class UDatasmithOptionsBase : UObject
UDatasmithOptionsBase = {}

---@return UDatasmithOptionsBase
function UDatasmithOptionsBase:get() end


---@class UDatasmithPointLightComponentTemplate : UDatasmithObjectTemplate
---@field IntensityUnits ELightUnits
---@field SourceRadius float
---@field SourceLength float
---@field AttenuationRadius float
UDatasmithPointLightComponentTemplate = {}

---@return UDatasmithPointLightComponentTemplate
function UDatasmithPointLightComponentTemplate:get() end



---@class UDatasmithPostProcessVolumeTemplate : UDatasmithObjectTemplate
---@field Settings FDatasmithPostProcessSettingsTemplate
---@field bEnabled boolean
---@field bUnbound boolean
UDatasmithPostProcessVolumeTemplate = {}

---@return UDatasmithPostProcessVolumeTemplate
function UDatasmithPostProcessVolumeTemplate:get() end



---@class UDatasmithScene : UObject
UDatasmithScene = {}

---@return UDatasmithScene
function UDatasmithScene:get() end


---@class UDatasmithSceneComponentTemplate : UDatasmithObjectTemplate
---@field RelativeTransform FTransform
---@field Mobility EComponentMobility::Type
---@field AttachParent TSoftObjectPtr<USceneComponent>
---@field bVisible boolean
---@field bCastShadow boolean
---@field Tags TSet<FName>
UDatasmithSceneComponentTemplate = {}

---@return UDatasmithSceneComponentTemplate
function UDatasmithSceneComponentTemplate:get() end



---@class UDatasmithSceneImportData : UAssetImportData
UDatasmithSceneImportData = {}

---@return UDatasmithSceneImportData
function UDatasmithSceneImportData:get() end


---@class UDatasmithSkyLightComponentTemplate : UDatasmithObjectTemplate
---@field SourceType ESkyLightSourceType
---@field CubemapResolution int32
---@field Cubemap UTextureCube
UDatasmithSkyLightComponentTemplate = {}

---@return UDatasmithSkyLightComponentTemplate
function UDatasmithSkyLightComponentTemplate:get() end



---@class UDatasmithSpotLightComponentTemplate : UDatasmithObjectTemplate
---@field InnerConeAngle float
---@field OuterConeAngle float
UDatasmithSpotLightComponentTemplate = {}

---@return UDatasmithSpotLightComponentTemplate
function UDatasmithSpotLightComponentTemplate:get() end



---@class UDatasmithStaticMeshCADImportData : UDatasmithStaticMeshImportData
UDatasmithStaticMeshCADImportData = {}

---@return UDatasmithStaticMeshCADImportData
function UDatasmithStaticMeshCADImportData:get() end


---@class UDatasmithStaticMeshComponentTemplate : UDatasmithObjectTemplate
---@field StaticMesh UStaticMesh
---@field OverrideMaterials TArray<UMaterialInterface>
UDatasmithStaticMeshComponentTemplate = {}

---@return UDatasmithStaticMeshComponentTemplate
function UDatasmithStaticMeshComponentTemplate:get() end



---@class UDatasmithStaticMeshGLTFImportData : UDatasmithStaticMeshImportData
---@field SourceMeshName FString
UDatasmithStaticMeshGLTFImportData = {}

---@return UDatasmithStaticMeshGLTFImportData
function UDatasmithStaticMeshGLTFImportData:get() end



---@class UDatasmithStaticMeshIFCImportData : UDatasmithStaticMeshImportData
---@field SourceGlobalId FString
UDatasmithStaticMeshIFCImportData = {}

---@return UDatasmithStaticMeshIFCImportData
function UDatasmithStaticMeshIFCImportData:get() end



---@class UDatasmithStaticMeshImportData : UDatasmithAssetImportData
UDatasmithStaticMeshImportData = {}

---@return UDatasmithStaticMeshImportData
function UDatasmithStaticMeshImportData:get() end


---@class UDatasmithStaticMeshTemplate : UDatasmithObjectTemplate
---@field SectionInfoMap FDatasmithMeshSectionInfoMapTemplate
---@field LightMapCoordinateIndex int32
---@field LightMapResolution int32
---@field BuildSettings TArray<FDatasmithMeshBuildSettingsTemplate>
---@field StaticMaterials TArray<FDatasmithStaticMaterialTemplate>
UDatasmithStaticMeshTemplate = {}

---@return UDatasmithStaticMeshTemplate
function UDatasmithStaticMeshTemplate:get() end



---@class UDatasmithTranslatedSceneImportData : UDatasmithSceneImportData
UDatasmithTranslatedSceneImportData = {}

---@return UDatasmithTranslatedSceneImportData
function UDatasmithTranslatedSceneImportData:get() end


---@class UDatasmithVREDAssetImportData : UDatasmithAssetImportData
UDatasmithVREDAssetImportData = {}

---@return UDatasmithVREDAssetImportData
function UDatasmithVREDAssetImportData:get() end


---@class UDatasmithVREDSceneImportData : UDatasmithFBXSceneImportData
---@field bMergeNodes boolean
---@field bOptimizeDuplicatedNodes boolean
---@field bImportMats boolean
---@field MatsPath FString
---@field bImportVar boolean
---@field bCleanVar boolean
---@field VarPath FString
---@field bImportLightInfo boolean
---@field LightInfoPath FString
---@field bImportClipInfo boolean
---@field ClipInfoPath FString
UDatasmithVREDSceneImportData = {}

---@return UDatasmithVREDSceneImportData
function UDatasmithVREDSceneImportData:get() end



