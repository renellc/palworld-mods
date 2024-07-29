---@meta

---@class AHoudiniAssetActor : AActor
---@field HoudiniAssetComponent UHoudiniAssetComponent
AHoudiniAssetActor = {}

---@return AHoudiniAssetActor
function AHoudiniAssetActor:get() end



---@class FAggregatedWorkItemTally : FWorkItemTallyBase
---@field TotalWorkItems int32
---@field WaitingWorkItems int32
---@field ScheduledWorkItems int32
---@field CookingWorkItems int32
---@field CookedWorkItems int32
---@field ErroredWorkItems int32
---@field CookCancelledWorkItems int32
FAggregatedWorkItemTally = {}

---@return FAggregatedWorkItemTally
function FAggregatedWorkItemTally:get() end



---@class FHoudiniAssetBlueprintInstanceData : FActorComponentInstanceData
---@field HoudiniAsset UHoudiniAsset
---@field AssetId int32
---@field AssetState EHoudiniAssetState
---@field SubAssetIndex uint32
---@field AssetCookCount uint32
---@field bHasBeenLoaded boolean
---@field bHasBeenDuplicated boolean
---@field bPendingDelete boolean
---@field bRecookRequested boolean
---@field bRebuildRequested boolean
---@field bEnableCooking boolean
---@field bForceNeedUpdate boolean
---@field bLastCookSuccess boolean
---@field ComponentGUID FGuid
---@field HapiGUID FGuid
---@field bRegisteredComponentTemplate boolean
---@field SourceName FString
---@field Outputs TMap<FHoudiniOutputObjectIdentifier, FHoudiniAssetBlueprintOutput>
---@field Inputs TArray<UHoudiniInput>
FHoudiniAssetBlueprintInstanceData = {}

---@return FHoudiniAssetBlueprintInstanceData
function FHoudiniAssetBlueprintInstanceData:get() end



---@class FHoudiniAssetBlueprintOutput
---@field OutputIndex int32
---@field OutputObject FHoudiniOutputObject
FHoudiniAssetBlueprintOutput = {}

---@return FHoudiniAssetBlueprintOutput
function FHoudiniAssetBlueprintOutput:get() end



---@class FHoudiniBakedOutput
---@field BakedOutputObjects TMap<FHoudiniBakedOutputObjectIdentifier, FHoudiniBakedOutputObject>
FHoudiniBakedOutput = {}

---@return FHoudiniBakedOutput
function FHoudiniBakedOutput:get() end



---@class FHoudiniBakedOutputObject
---@field Actor FString
---@field Blueprint FString
---@field ActorBakeName FName
---@field BakedObject FString
---@field BakedComponent FString
---@field InstancedActors TArray<FString>
---@field InstancedComponents TArray<FString>
---@field LandscapeLayers TMap<FName, FString>
FHoudiniBakedOutputObject = {}

---@return FHoudiniBakedOutputObject
function FHoudiniBakedOutputObject:get() end



---@class FHoudiniBakedOutputObjectIdentifier
---@field PartId int32
---@field SplitIdentifier FString
FHoudiniBakedOutputObjectIdentifier = {}

---@return FHoudiniBakedOutputObjectIdentifier
function FHoudiniBakedOutputObjectIdentifier:get() end



---@class FHoudiniBrushInfo
---@field BrushActor TWeakObjectPtr<ABrush>
---@field CachedTransform FTransform
---@field CachedOrigin FVector
---@field CachedExtent FVector
---@field CachedBrushType EBrushType
---@field CachedSurfaceHash uint64
FHoudiniBrushInfo = {}

---@return FHoudiniBrushInfo
function FHoudiniBrushInfo:get() end



---@class FHoudiniCurveInfo
FHoudiniCurveInfo = {}

---@return FHoudiniCurveInfo
function FHoudiniCurveInfo:get() end


---@class FHoudiniCurveOutputProperties
---@field CurveOutputType EHoudiniCurveOutputType
---@field NumPoints int32
---@field bClosed boolean
---@field CurveType EHoudiniCurveType
---@field CurveMethod EHoudiniCurveMethod
FHoudiniCurveOutputProperties = {}

---@return FHoudiniCurveOutputProperties
function FHoudiniCurveOutputProperties:get() end



---@class FHoudiniGenericAttribute
---@field AttributeName FString
---@field AttributeType EAttribStorageType
---@field AttributeOwner EAttribOwner
---@field AttributeCount int32
---@field AttributeTupleSize int32
---@field DoubleValues TArray<double>
---@field IntValues TArray<int64>
---@field StringValues TArray<FString>
FHoudiniGenericAttribute = {}

---@return FHoudiniGenericAttribute
function FHoudiniGenericAttribute:get() end



---@class FHoudiniGenericAttributeChangedProperty
---@field Object UObject
FHoudiniGenericAttributeChangedProperty = {}

---@return FHoudiniGenericAttributeChangedProperty
function FHoudiniGenericAttributeChangedProperty:get() end



---@class FHoudiniGeoInfo
FHoudiniGeoInfo = {}

---@return FHoudiniGeoInfo
function FHoudiniGeoInfo:get() end


---@class FHoudiniGeoPartObject
---@field AssetId int32
---@field AssetName FString
---@field ObjectID int32
---@field ObjectName FString
---@field GeoId int32
---@field PartId int32
---@field PartName FString
---@field bHasCustomPartName boolean
---@field SplitGroups TArray<FString>
---@field TransformMatrix FTransform
---@field NodePath FString
---@field Type EHoudiniPartType
---@field InstancerType EHoudiniInstancerType
---@field VolumeName FString
---@field bHasEditLayers boolean
---@field VolumeLayerName FString
---@field VolumeTileIndex int32
---@field bIsVisible boolean
---@field bIsEditable boolean
---@field bIsTemplated boolean
---@field bIsInstanced boolean
---@field bHasGeoChanged boolean
---@field bHasPartChanged boolean
---@field bHasTransformChanged boolean
---@field bHasMaterialsChanged boolean
---@field AllMeshSockets TArray<FHoudiniMeshSocket>
FHoudiniGeoPartObject = {}

---@return FHoudiniGeoPartObject
function FHoudiniGeoPartObject:get() end



---@class FHoudiniInstancedOutput
---@field OriginalObject TSoftObjectPtr<UObject>
---@field OriginalObjectIndex int32
---@field OriginalTransforms TArray<FTransform>
---@field VariationObjects TArray<TSoftObjectPtr<UObject>>
---@field VariationTransformOffsets TArray<FTransform>
---@field TransformVariationIndices TArray<int32>
---@field OriginalInstanceIndices TArray<int32>
---@field bChanged boolean
---@field bStale boolean
FHoudiniInstancedOutput = {}

---@return FHoudiniInstancedOutput
function FHoudiniInstancedOutput:get() end



---@class FHoudiniMeshSocket
FHoudiniMeshSocket = {}

---@return FHoudiniMeshSocket
function FHoudiniMeshSocket:get() end


---@class FHoudiniObjectInfo
FHoudiniObjectInfo = {}

---@return FHoudiniObjectInfo
function FHoudiniObjectInfo:get() end


---@class FHoudiniOutputObject
---@field OutputObject UObject
---@field OutputComponents TArray<UObject>
---@field OutputComponent UObject
---@field ProxyObject UObject
---@field ProxyComponent UObject
---@field bProxyIsCurrent boolean
---@field bIsImplicit boolean
---@field bIsGeometryCollectionPiece boolean
---@field GeometryCollectionPieceName FString
---@field BakeName FString
---@field CurveOutputProperty FHoudiniCurveOutputProperties
---@field CachedAttributes TMap<FString, FString>
---@field CachedTokens TMap<FString, FString>
---@field InstancedObject UObject
---@field FoliageType UFoliageType
FHoudiniOutputObject = {}

---@return FHoudiniOutputObject
function FHoudiniOutputObject:get() end



---@class FHoudiniOutputObjectIdentifier
---@field ObjectID int32
---@field GeoId int32
---@field PartId int32
---@field SplitIdentifier FString
---@field PartName FString
---@field PrimitiveIndex int32
---@field PointIndex int32
FHoudiniOutputObjectIdentifier = {}

---@return FHoudiniOutputObjectIdentifier
function FHoudiniOutputObjectIdentifier:get() end



---@class FHoudiniPDGWorkResultObjectBakedOutput
---@field BakedOutputs TArray<FHoudiniBakedOutput>
FHoudiniPDGWorkResultObjectBakedOutput = {}

---@return FHoudiniPDGWorkResultObjectBakedOutput
function FHoudiniPDGWorkResultObjectBakedOutput:get() end



---@class FHoudiniPartInfo
FHoudiniPartInfo = {}

---@return FHoudiniPartInfo
function FHoudiniPartInfo:get() end


---@class FHoudiniSplineComponentInstanceData : FActorComponentInstanceData
---@field CurvePoints TArray<FTransform>
---@field DisplayPoints TArray<FVector>
---@field DisplayPointIndexDivider TArray<int32>
FHoudiniSplineComponentInstanceData = {}

---@return FHoudiniSplineComponentInstanceData
function FHoudiniSplineComponentInstanceData:get() end



---@class FHoudiniStaticMeshGenerationProperties
---@field bGeneratedDoubleSidedGeometry boolean
---@field GeneratedPhysMaterial UPhysicalMaterial
---@field DefaultBodyInstance FBodyInstance
---@field GeneratedCollisionTraceFlag ECollisionTraceFlag
---@field GeneratedLightMapResolution int32
---@field GeneratedWalkableSlopeOverride FWalkableSlopeOverride
---@field GeneratedLightMapCoordinateIndex int32
---@field bGeneratedUseMaximumStreamingTexelRatio boolean
---@field GeneratedStreamingDistanceMultiplier float
---@field GeneratedFoliageDefaultSettings UFoliageType_InstancedStaticMesh
---@field GeneratedAssetUserData TArray<UAssetUserData>
FHoudiniStaticMeshGenerationProperties = {}

---@return FHoudiniStaticMeshGenerationProperties
function FHoudiniStaticMeshGenerationProperties:get() end



---@class FHoudiniVolumeInfo
FHoudiniVolumeInfo = {}

---@return FHoudiniVolumeInfo
function FHoudiniVolumeInfo:get() end


---@class FOutputActorOwner
---@field OutputActor AActor
FOutputActorOwner = {}

---@return FOutputActorOwner
function FOutputActorOwner:get() end



---@class FTOPWorkResult
---@field WorkItemIndex int32
---@field WorkItemID int32
---@field ResultObjects TArray<FTOPWorkResultObject>
FTOPWorkResult = {}

---@return FTOPWorkResult
function FTOPWorkResult:get() end



---@class FTOPWorkResultObject
---@field Name FString
---@field FilePath FString
---@field State EPDGWorkResultState
---@field WorkItemResultInfoIndex int32
---@field ResultOutputs TArray<UHoudiniOutput>
---@field bAutoBakedSinceLastLoad boolean
---@field OutputActorOwner FOutputActorOwner
FTOPWorkResultObject = {}

---@return FTOPWorkResultObject
function FTOPWorkResultObject:get() end



---@class FWorkItemTally : FWorkItemTallyBase
---@field AllWorkItems TSet<int32>
---@field WaitingWorkItems TSet<int32>
---@field ScheduledWorkItems TSet<int32>
---@field CookingWorkItems TSet<int32>
---@field CookedWorkItems TSet<int32>
---@field ErroredWorkItems TSet<int32>
---@field CookCancelledWorkItems TSet<int32>
FWorkItemTally = {}

---@return FWorkItemTally
function FWorkItemTally:get() end



---@class FWorkItemTallyBase
FWorkItemTallyBase = {}

---@return FWorkItemTallyBase
function FWorkItemTallyBase:get() end


---@class IHoudiniAssetStateEvents : IInterface
IHoudiniAssetStateEvents = {}

---@return IHoudiniAssetStateEvents
function IHoudiniAssetStateEvents:get() end


---@class IHoudiniEngineCopyPropertiesInterface : IInterface
IHoudiniEngineCopyPropertiesInterface = {}

---@return IHoudiniEngineCopyPropertiesInterface
function IHoudiniEngineCopyPropertiesInterface:get() end


---@class UHoudiniAsset : UObject
---@field AssetFileName FString
---@field AssetBytes TArray<uint8>
---@field AssetBytesCount uint32
---@field bAssetLimitedCommercial boolean
---@field bAssetNonCommercial boolean
---@field bAssetExpanded boolean
UHoudiniAsset = {}

---@return UHoudiniAsset
function UHoudiniAsset:get() end



---@class UHoudiniAssetBlueprintComponent : UHoudiniAssetComponent
---@field FauxBPProperty boolean
---@field bHoudiniAssetChanged boolean
---@field bUpdatedFromTemplate boolean
---@field bIsInBlueprintEditor boolean
---@field bCanDeleteHoudiniNodes boolean
---@field bHasRegisteredComponentTemplate boolean
---@field CachedOutputNodes TMap<FHoudiniOutputObjectIdentifier, FGuid>
---@field CachedInputNodes TMap<FGuid, FGuid>
UHoudiniAssetBlueprintComponent = {}

---@return UHoudiniAssetBlueprintComponent
function UHoudiniAssetBlueprintComponent:get() end

---@param Name FString
---@param Value boolean
---@param Index int32
function UHoudiniAssetBlueprintComponent:SetToggleValueAt(Name, Value, Index) end
---@param Name FString
---@param Value float
---@param Index int32
function UHoudiniAssetBlueprintComponent:SetFloatParameter(Name, Value, Index) end
---@param Name FString
---@return boolean
function UHoudiniAssetBlueprintComponent:HasParameter(Name) end


---@class UHoudiniAssetComponent : UPrimitiveComponent
---@field HoudiniAsset UHoudiniAsset
---@field bCookOnParameterChange boolean
---@field bUploadTransformsToHoudiniEngine boolean
---@field bCookOnTransformChange boolean
---@field bCookOnAssetInputCook boolean
---@field bOutputless boolean
---@field bOutputTemplateGeos boolean
---@field bUseOutputNodes boolean
---@field TemporaryCookFolder FDirectoryPath
---@field BakeFolder FDirectoryPath
---@field StaticMeshMethod EHoudiniStaticMeshMethod
---@field StaticMeshGenerationProperties FHoudiniStaticMeshGenerationProperties
---@field StaticMeshBuildSettings FMeshBuildSettings
---@field bOverrideGlobalProxyStaticMeshSettings boolean
---@field bEnableProxyStaticMeshOverride boolean
---@field bEnableProxyStaticMeshRefinementByTimerOverride boolean
---@field ProxyMeshAutoRefineTimeoutSecondsOverride float
---@field bEnableProxyStaticMeshRefinementOnPreSaveWorldOverride boolean
---@field bEnableProxyStaticMeshRefinementOnPreBeginPIEOverride boolean
---@field AssetId int32
---@field NodeIdsToCook TArray<int32>
---@field OutputNodeCookCounts TMap<int32, int32>
---@field DownstreamHoudiniAssets TSet<UHoudiniAssetComponent>
---@field ComponentGUID FGuid
---@field HapiGUID FGuid
---@field HapiAssetName FString
---@field AssetState EHoudiniAssetState
---@field DebugLastAssetState EHoudiniAssetState
---@field AssetStateResult EHoudiniAssetStateResult
---@field LastComponentTransform FTransform
---@field SubAssetIndex uint32
---@field AssetCookCount int32
---@field bHasBeenLoaded boolean
---@field bHasBeenDuplicated boolean
---@field bPendingDelete boolean
---@field bRecookRequested boolean
---@field bRebuildRequested boolean
---@field bEnableCooking boolean
---@field bForceNeedUpdate boolean
---@field bLastCookSuccess boolean
---@field bParameterDefinitionUpdateNeeded boolean
---@field bBlueprintStructureModified boolean
---@field bBlueprintModified boolean
---@field Parameters TArray<UHoudiniParameter>
---@field Inputs TArray<UHoudiniInput>
---@field Outputs TArray<UHoudiniOutput>
---@field BakedOutputs TArray<FHoudiniBakedOutput>
---@field UntrackedOutputs TArray<TWeakObjectPtr<AActor>>
---@field HandleComponents TArray<UHoudiniHandleComponent>
---@field bHasComponentTransformChanged boolean
---@field bFullyLoaded boolean
---@field PDGAssetLink UHoudiniPDGAssetLink
---@field RefineMeshesTimer FTimerHandle
---@field bNoProxyMeshNextCookRequested boolean
---@field InputPresets TMap<UObject, int32>
---@field bBakeAfterNextCook boolean
---@field bCachedIsPreview boolean
---@field LastTickTime double
UHoudiniAssetComponent = {}

---@return UHoudiniAssetComponent
function UHoudiniAssetComponent:get() end



---@class UHoudiniAssetComponentMaterials_V1 : UObject
UHoudiniAssetComponentMaterials_V1 = {}

---@return UHoudiniAssetComponentMaterials_V1
function UHoudiniAssetComponentMaterials_V1:get() end


---@class UHoudiniAssetComponent_V1 : UPrimitiveComponent
---@field bGeneratedDoubleSidedGeometry boolean
---@field GeneratedPhysMaterial UPhysicalMaterial
---@field DefaultBodyInstance FBodyInstance
---@field GeneratedCollisionTraceFlag ECollisionTraceFlag
---@field GeneratedLightMapResolution int32
---@field GeneratedDistanceFieldResolutionScale float
---@field GeneratedWalkableSlopeOverride FWalkableSlopeOverride
---@field GeneratedLightMapCoordinateIndex int32
---@field bGeneratedUseMaximumStreamingTexelRatio boolean
---@field GeneratedStreamingDistanceMultiplier float
---@field GeneratedFoliageDefaultSettings UFoliageType_InstancedStaticMesh
---@field GeneratedAssetUserData TArray<UAssetUserData>
---@field BakeFolder FText
---@field TempCookFolder FText
UHoudiniAssetComponent_V1 = {}

---@return UHoudiniAssetComponent_V1
function UHoudiniAssetComponent_V1:get() end



---@class UHoudiniAssetInput : UHoudiniAssetParameter
UHoudiniAssetInput = {}

---@return UHoudiniAssetInput
function UHoudiniAssetInput:get() end


---@class UHoudiniAssetInstanceInput : UHoudiniAssetParameter
UHoudiniAssetInstanceInput = {}

---@return UHoudiniAssetInstanceInput
function UHoudiniAssetInstanceInput:get() end


---@class UHoudiniAssetInstanceInputField : UObject
UHoudiniAssetInstanceInputField = {}

---@return UHoudiniAssetInstanceInputField
function UHoudiniAssetInstanceInputField:get() end


---@class UHoudiniAssetParameter : UObject
UHoudiniAssetParameter = {}

---@return UHoudiniAssetParameter
function UHoudiniAssetParameter:get() end


---@class UHoudiniAssetParameterButton : UHoudiniAssetParameter
UHoudiniAssetParameterButton = {}

---@return UHoudiniAssetParameterButton
function UHoudiniAssetParameterButton:get() end


---@class UHoudiniAssetParameterChoice : UHoudiniAssetParameter
UHoudiniAssetParameterChoice = {}

---@return UHoudiniAssetParameterChoice
function UHoudiniAssetParameterChoice:get() end


---@class UHoudiniAssetParameterColor : UHoudiniAssetParameter
UHoudiniAssetParameterColor = {}

---@return UHoudiniAssetParameterColor
function UHoudiniAssetParameterColor:get() end


---@class UHoudiniAssetParameterFile : UHoudiniAssetParameter
UHoudiniAssetParameterFile = {}

---@return UHoudiniAssetParameterFile
function UHoudiniAssetParameterFile:get() end


---@class UHoudiniAssetParameterFloat : UHoudiniAssetParameter
UHoudiniAssetParameterFloat = {}

---@return UHoudiniAssetParameterFloat
function UHoudiniAssetParameterFloat:get() end


---@class UHoudiniAssetParameterFolder : UHoudiniAssetParameter
UHoudiniAssetParameterFolder = {}

---@return UHoudiniAssetParameterFolder
function UHoudiniAssetParameterFolder:get() end


---@class UHoudiniAssetParameterFolderList : UHoudiniAssetParameter
UHoudiniAssetParameterFolderList = {}

---@return UHoudiniAssetParameterFolderList
function UHoudiniAssetParameterFolderList:get() end


---@class UHoudiniAssetParameterInt : UHoudiniAssetParameter
UHoudiniAssetParameterInt = {}

---@return UHoudiniAssetParameterInt
function UHoudiniAssetParameterInt:get() end


---@class UHoudiniAssetParameterLabel : UHoudiniAssetParameter
UHoudiniAssetParameterLabel = {}

---@return UHoudiniAssetParameterLabel
function UHoudiniAssetParameterLabel:get() end


---@class UHoudiniAssetParameterMultiparm : UHoudiniAssetParameter
UHoudiniAssetParameterMultiparm = {}

---@return UHoudiniAssetParameterMultiparm
function UHoudiniAssetParameterMultiparm:get() end


---@class UHoudiniAssetParameterRamp : UHoudiniAssetParameter
UHoudiniAssetParameterRamp = {}

---@return UHoudiniAssetParameterRamp
function UHoudiniAssetParameterRamp:get() end


---@class UHoudiniAssetParameterSeparator : UHoudiniAssetParameter
UHoudiniAssetParameterSeparator = {}

---@return UHoudiniAssetParameterSeparator
function UHoudiniAssetParameterSeparator:get() end


---@class UHoudiniAssetParameterString : UHoudiniAssetParameter
UHoudiniAssetParameterString = {}

---@return UHoudiniAssetParameterString
function UHoudiniAssetParameterString:get() end


---@class UHoudiniAssetParameterToggle : UHoudiniAssetParameter
UHoudiniAssetParameterToggle = {}

---@return UHoudiniAssetParameterToggle
function UHoudiniAssetParameterToggle:get() end


---@class UHoudiniHandleComponent : USceneComponent
---@field XformParms TArray<UHoudiniHandleParameter>
---@field RSTParm UHoudiniHandleParameter
---@field RotOrderParm UHoudiniHandleParameter
---@field HandleType EHoudiniHandleType
---@field HandleName FString
UHoudiniHandleComponent = {}

---@return UHoudiniHandleComponent
function UHoudiniHandleComponent:get() end



---@class UHoudiniHandleComponent_V1 : USceneComponent
UHoudiniHandleComponent_V1 = {}

---@return UHoudiniHandleComponent_V1
function UHoudiniHandleComponent_V1:get() end


---@class UHoudiniHandleParameter : UObject
---@field AssetParameter UHoudiniParameter
---@field TupleIndex int32
UHoudiniHandleParameter = {}

---@return UHoudiniHandleParameter
function UHoudiniHandleParameter:get() end



---@class UHoudiniInput : UObject
---@field Name FString
---@field Label FString
---@field Type EHoudiniInputType
---@field PreviousType EHoudiniInputType
---@field AssetNodeId int32
---@field InputNodeId int32
---@field InputIndex int32
---@field ParmId int32
---@field bIsObjectPathParameter boolean
---@field CreatedDataNodeIds TArray<int32>
---@field bHasChanged boolean
---@field bNeedsToTriggerUpdate boolean
---@field CachedBounds FBox
---@field Help FString
---@field KeepWorldTransform EHoudiniXformType
---@field bPackBeforeMerge boolean
---@field bImportAsReference boolean
---@field bImportAsReferenceRotScaleEnabled boolean
---@field bImportAsReferenceBboxEnabled boolean
---@field bImportAsReferenceMaterialEnabled boolean
---@field bExportLODs boolean
---@field bExportSockets boolean
---@field bPreferNaniteFallbackMesh boolean
---@field bExportColliders boolean
---@field bExportMaterialParameters boolean
---@field bCookOnCurveChanged boolean
---@field GeometryInputObjects TArray<UHoudiniInputObject>
---@field bStaticMeshChanged boolean
---@field AssetInputObjects TArray<UHoudiniInputObject>
---@field bInputAssetConnectedInHoudini boolean
---@field CurveInputObjects TArray<UHoudiniInputObject>
---@field DefaultCurveOffset float
---@field bAddRotAndScaleAttributesOnCurves boolean
---@field bUseLegacyInputCurves boolean
---@field LandscapeInputObjects TArray<UHoudiniInputObject>
---@field bLandscapeHasExportTypeChanged boolean
---@field WorldInputObjects TArray<UHoudiniInputObject>
---@field WorldInputBoundSelectorObjects TArray<AActor>
---@field bIsWorldInputBoundSelector boolean
---@field bWorldInputBoundSelectorAutoUpdate boolean
---@field UnrealSplineResolution float
---@field SkeletalInputObjects TArray<UHoudiniInputObject>
---@field GeometryCollectionInputObjects TArray<UHoudiniInputObject>
---@field LandscapeSelectedComponents TSet<ULandscapeComponent>
---@field InputNodesPendingDelete TSet<int32>
---@field LastInsertedInputs TArray<UHoudiniInputHoudiniSplineComponent>
---@field LastUndoDeletedInputs TArray<UHoudiniInputObject>
---@field bUpdateInputLandscape boolean
---@field LandscapeExportType EHoudiniLandscapeExportType
---@field bLandscapeExportSelectionOnly boolean
---@field bLandscapeAutoSelectComponent boolean
---@field bLandscapeExportMaterials boolean
---@field bLandscapeExportLighting boolean
---@field bLandscapeExportNormalizedUVs boolean
---@field bLandscapeExportTileUVs boolean
---@field bCanDeleteHoudiniNodes boolean
UHoudiniInput = {}

---@return UHoudiniInput
function UHoudiniInput:get() end



---@class UHoudiniInputActor : UHoudiniInputObject
---@field ActorComponents TArray<UHoudiniInputSceneComponent>
---@field ActorSceneComponents TSet<TSoftObjectPtr<UObject>>
---@field LastUpdateNumComponentsAdded int32
---@field LastUpdateNumComponentsRemoved int32
UHoudiniInputActor = {}

---@return UHoudiniInputActor
function UHoudiniInputActor:get() end



---@class UHoudiniInputBlueprint : UHoudiniInputObject
---@field BPComponents TArray<UHoudiniInputSceneComponent>
---@field BPSceneComponents TSet<TSoftObjectPtr<UObject>>
---@field LastUpdateNumComponentsAdded int32
---@field LastUpdateNumComponentsRemoved int32
UHoudiniInputBlueprint = {}

---@return UHoudiniInputBlueprint
function UHoudiniInputBlueprint:get() end



---@class UHoudiniInputBrush : UHoudiniInputActor
---@field BrushesInfo TArray<FHoudiniBrushInfo>
---@field CombinedModel UModel
---@field bIgnoreInputObject boolean
---@field CachedInputBrushType EBrushType
UHoudiniInputBrush = {}

---@return UHoudiniInputBrush
function UHoudiniInputBrush:get() end



---@class UHoudiniInputCameraComponent : UHoudiniInputSceneComponent
---@field FOV float
---@field AspectRatio float
---@field bIsOrthographic boolean
---@field OrthoWidth float
---@field OrthoNearClipPlane float
---@field OrthoFarClipPlane float
UHoudiniInputCameraComponent = {}

---@return UHoudiniInputCameraComponent
function UHoudiniInputCameraComponent:get() end



---@class UHoudiniInputDataTable : UHoudiniInputObject
UHoudiniInputDataTable = {}

---@return UHoudiniInputDataTable
function UHoudiniInputDataTable:get() end


---@class UHoudiniInputFoliageType_InstancedStaticMesh : UHoudiniInputStaticMesh
UHoudiniInputFoliageType_InstancedStaticMesh = {}

---@return UHoudiniInputFoliageType_InstancedStaticMesh
function UHoudiniInputFoliageType_InstancedStaticMesh:get() end


---@class UHoudiniInputGeometryCollection : UHoudiniInputObject
UHoudiniInputGeometryCollection = {}

---@return UHoudiniInputGeometryCollection
function UHoudiniInputGeometryCollection:get() end


---@class UHoudiniInputGeometryCollectionComponent : UHoudiniInputSceneComponent
UHoudiniInputGeometryCollectionComponent = {}

---@return UHoudiniInputGeometryCollectionComponent
function UHoudiniInputGeometryCollectionComponent:get() end


---@class UHoudiniInputHoudiniAsset : UHoudiniInputObject
---@field AssetOutputIndex int32
UHoudiniInputHoudiniAsset = {}

---@return UHoudiniInputHoudiniAsset
function UHoudiniInputHoudiniAsset:get() end



---@class UHoudiniInputHoudiniSplineComponent : UHoudiniInputObject
---@field CurveType EHoudiniCurveType
---@field CurveMethod EHoudiniCurveMethod
---@field Reversed boolean
---@field CachedComponent UHoudiniSplineComponent
UHoudiniInputHoudiniSplineComponent = {}

---@return UHoudiniInputHoudiniSplineComponent
function UHoudiniInputHoudiniSplineComponent:get() end



---@class UHoudiniInputInstancedMeshComponent : UHoudiniInputMeshComponent
---@field InstanceTransforms TArray<FTransform>
UHoudiniInputInstancedMeshComponent = {}

---@return UHoudiniInputInstancedMeshComponent
function UHoudiniInputInstancedMeshComponent:get() end



---@class UHoudiniInputLandscape : UHoudiniInputActor
---@field CachedInputLandscapeTraqnsform FTransform
---@field CachedNumLandscapeComponents int32
UHoudiniInputLandscape = {}

---@return UHoudiniInputLandscape
function UHoudiniInputLandscape:get() end



---@class UHoudiniInputMeshComponent : UHoudiniInputSceneComponent
---@field StaticMesh TSoftObjectPtr<UStaticMesh>
UHoudiniInputMeshComponent = {}

---@return UHoudiniInputMeshComponent
function UHoudiniInputMeshComponent:get() end



---@class UHoudiniInputObject : UObject
---@field InputObject TSoftObjectPtr<UObject>
---@field Transform FTransform
---@field Type EHoudiniInputObjectType
---@field InputNodeId int32
---@field InputObjectNodeId int32
---@field Guid FGuid
---@field bHasChanged boolean
---@field bNeedsToTriggerUpdate boolean
---@field bTransformChanged boolean
---@field bImportAsReference boolean
---@field bImportAsReferenceRotScaleEnabled boolean
---@field bImportAsReferenceBboxEnabled boolean
---@field bImportAsReferenceMaterialEnabled boolean
---@field MaterialReferences TArray<FString>
---@field bCanDeleteHoudiniNodes boolean
UHoudiniInputObject = {}

---@return UHoudiniInputObject
function UHoudiniInputObject:get() end



---@class UHoudiniInputSceneComponent : UHoudiniInputObject
---@field ActorTransform FTransform
UHoudiniInputSceneComponent = {}

---@return UHoudiniInputSceneComponent
function UHoudiniInputSceneComponent:get() end



---@class UHoudiniInputSkeletalMesh : UHoudiniInputObject
UHoudiniInputSkeletalMesh = {}

---@return UHoudiniInputSkeletalMesh
function UHoudiniInputSkeletalMesh:get() end


---@class UHoudiniInputSkeletalMeshComponent : UHoudiniInputSceneComponent
UHoudiniInputSkeletalMeshComponent = {}

---@return UHoudiniInputSkeletalMeshComponent
function UHoudiniInputSkeletalMeshComponent:get() end


---@class UHoudiniInputSplineComponent : UHoudiniInputSceneComponent
---@field NumberOfSplineControlPoints int32
---@field SplineLength float
---@field SplineResolution float
---@field SplineClosed boolean
---@field SplineControlPoints TArray<FTransform>
UHoudiniInputSplineComponent = {}

---@return UHoudiniInputSplineComponent
function UHoudiniInputSplineComponent:get() end



---@class UHoudiniInputStaticMesh : UHoudiniInputObject
UHoudiniInputStaticMesh = {}

---@return UHoudiniInputStaticMesh
function UHoudiniInputStaticMesh:get() end


---@class UHoudiniInstancedActorComponent : USceneComponent
---@field InstancedObject UObject
---@field InstancedActors TArray<AActor>
UHoudiniInstancedActorComponent = {}

---@return UHoudiniInstancedActorComponent
function UHoudiniInstancedActorComponent:get() end



---@class UHoudiniInstancedActorComponent_V1 : USceneComponent
UHoudiniInstancedActorComponent_V1 = {}

---@return UHoudiniInstancedActorComponent_V1
function UHoudiniInstancedActorComponent_V1:get() end


---@class UHoudiniLandscapeEditLayer : UObject
---@field LandscapeSoftPtr TSoftObjectPtr<ALandscapeProxy>
---@field LayerName FString
UHoudiniLandscapeEditLayer = {}

---@return UHoudiniLandscapeEditLayer
function UHoudiniLandscapeEditLayer:get() end



---@class UHoudiniLandscapePtr : UObject
---@field LandscapeSoftPtr TSoftObjectPtr<ALandscapeProxy>
---@field BakeType EHoudiniLandscapeOutputBakeType
---@field EditLayerName FName
UHoudiniLandscapePtr = {}

---@return UHoudiniLandscapePtr
function UHoudiniLandscapePtr:get() end



---@class UHoudiniMeshSplitInstancerComponent : USceneComponent
---@field Instances TArray<UStaticMeshComponent>
---@field OverrideMaterials TArray<UMaterialInterface>
---@field InstancedMesh UStaticMesh
UHoudiniMeshSplitInstancerComponent = {}

---@return UHoudiniMeshSplitInstancerComponent
function UHoudiniMeshSplitInstancerComponent:get() end



---@class UHoudiniMeshSplitInstancerComponent_V1 : USceneComponent
UHoudiniMeshSplitInstancerComponent_V1 = {}

---@return UHoudiniMeshSplitInstancerComponent_V1
function UHoudiniMeshSplitInstancerComponent_V1:get() end


---@class UHoudiniOutput : UObject
---@field Type EHoudiniOutputType
---@field HoudiniGeoPartObjects TArray<FHoudiniGeoPartObject>
---@field OutputObjects TMap<FHoudiniOutputObjectIdentifier, FHoudiniOutputObject>
---@field InstancedOutputs TMap<FHoudiniOutputObjectIdentifier, FHoudiniInstancedOutput>
---@field AssignementMaterials TMap<FString, UMaterialInterface>
---@field ReplacementMaterials TMap<FString, UMaterialInterface>
---@field bLandscapeWorldComposition boolean
---@field HoudiniCreatedSocketActors TArray<AActor>
---@field HoudiniAttachedSocketActors TArray<AActor>
---@field bIsEditableNode boolean
---@field bHasEditableNodeBuilt boolean
---@field bIsUpdating boolean
---@field bCanDeleteHoudiniNodes boolean
UHoudiniOutput = {}

---@return UHoudiniOutput
function UHoudiniOutput:get() end



---@class UHoudiniPDGAssetLink : UObject
---@field AssetName FString
---@field AssetNodePath FString
---@field AssetId int32
---@field AllTOPNetworks TArray<UTOPNetwork>
---@field SelectedTOPNetworkIndex int32
---@field LinkState EPDGLinkState
---@field bAutoCook boolean
---@field bUseTOPNodeFilter boolean
---@field bUseTOPOutputFilter boolean
---@field TOPNodeFilter FString
---@field TOPOutputFilter FString
---@field NumWorkItems int32
---@field WorkItemTally FAggregatedWorkItemTally
---@field OutputCachePath FString
---@field bNeedsUIRefresh boolean
---@field OutputParentActor AActor
---@field BakeFolder FDirectoryPath
UHoudiniPDGAssetLink = {}

---@return UHoudiniPDGAssetLink
function UHoudiniPDGAssetLink:get() end



---@class UHoudiniParameter : UObject
---@field Name FString
---@field Label FString
---@field ParmType EHoudiniParameterType
---@field TupleSize uint32
---@field NodeID int32
---@field ParmId int32
---@field ParentParmId int32
---@field ChildIndex int32
---@field bIsVisible boolean
---@field bIsParentFolderVisible boolean
---@field bIsDisabled boolean
---@field bHasChanged boolean
---@field bNeedsToTriggerUpdate boolean
---@field bIsDefault boolean
---@field bIsSpare boolean
---@field bJoinNext boolean
---@field bIsChildOfMultiParm boolean
---@field bIsDirectChildOfMultiParm boolean
---@field bPendingRevertToDefault boolean
---@field TuplePendingRevertToDefault TArray<int32>
---@field Help FString
---@field TagCount uint32
---@field ValueIndex int32
---@field bHasExpression boolean
---@field bShowExpression boolean
---@field ParamExpression FString
---@field Tags TMap<FString, FString>
---@field bAutoUpdate boolean
UHoudiniParameter = {}

---@return UHoudiniParameter
function UHoudiniParameter:get() end



---@class UHoudiniParameterButton : UHoudiniParameter
UHoudiniParameterButton = {}

---@return UHoudiniParameterButton
function UHoudiniParameterButton:get() end


---@class UHoudiniParameterButtonStrip : UHoudiniParameter
---@field Count int32
---@field Labels TArray<FString>
---@field Values TArray<int32>
UHoudiniParameterButtonStrip = {}

---@return UHoudiniParameterButtonStrip
function UHoudiniParameterButtonStrip:get() end



---@class UHoudiniParameterChoice : UHoudiniParameter
---@field IntValue int32
---@field DefaultIntValue int32
---@field StringValue FString
---@field DefaultStringValue FString
---@field StringChoiceValues TArray<FString>
---@field StringChoiceLabels TArray<FString>
---@field bIsChildOfRamp boolean
---@field IntValuesArray TArray<int32>
UHoudiniParameterChoice = {}

---@return UHoudiniParameterChoice
function UHoudiniParameterChoice:get() end



---@class UHoudiniParameterColor : UHoudiniParameter
---@field Color FLinearColor
---@field DefaultColor FLinearColor
---@field bIsChildOfRamp boolean
UHoudiniParameterColor = {}

---@return UHoudiniParameterColor
function UHoudiniParameterColor:get() end



---@class UHoudiniParameterFile : UHoudiniParameter
---@field Values TArray<FString>
---@field DefaultValues TArray<FString>
---@field Filters FString
---@field bIsReadOnly boolean
UHoudiniParameterFile = {}

---@return UHoudiniParameterFile
function UHoudiniParameterFile:get() end



---@class UHoudiniParameterFloat : UHoudiniParameter
---@field Values TArray<float>
---@field DefaultValues TArray<float>
---@field Unit FString
---@field bNoSwap boolean
---@field bHasMin boolean
---@field bHasMax boolean
---@field bHasUIMin boolean
---@field bHasUIMax boolean
---@field bIsLogarithmic boolean
---@field Min float
---@field Max float
---@field UIMin float
---@field UIMax float
---@field bIsChildOfRamp boolean
UHoudiniParameterFloat = {}

---@return UHoudiniParameterFloat
function UHoudiniParameterFloat:get() end



---@class UHoudiniParameterFolder : UHoudiniParameter
---@field FolderType EHoudiniFolderParameterType
---@field bExpanded boolean
---@field bChosen boolean
---@field ChildCounter int32
---@field bIsContentShown boolean
UHoudiniParameterFolder = {}

---@return UHoudiniParameterFolder
function UHoudiniParameterFolder:get() end



---@class UHoudiniParameterFolderList : UHoudiniParameter
---@field bIsTabMenu boolean
---@field bIsTabsShown boolean
---@field TabFolders TArray<UHoudiniParameterFolder>
UHoudiniParameterFolderList = {}

---@return UHoudiniParameterFolderList
function UHoudiniParameterFolderList:get() end



---@class UHoudiniParameterInt : UHoudiniParameter
---@field Values TArray<int32>
---@field DefaultValues TArray<int32>
---@field Unit FString
---@field bHasMin boolean
---@field bHasMax boolean
---@field bHasUIMin boolean
---@field bHasUIMax boolean
---@field bIsLogarithmic boolean
---@field Min int32
---@field Max int32
---@field UIMin int32
---@field UIMax int32
UHoudiniParameterInt = {}

---@return UHoudiniParameterInt
function UHoudiniParameterInt:get() end



---@class UHoudiniParameterLabel : UHoudiniParameter
---@field LabelStrings TArray<FString>
UHoudiniParameterLabel = {}

---@return UHoudiniParameterLabel
function UHoudiniParameterLabel:get() end



---@class UHoudiniParameterMultiParm : UHoudiniParameter
---@field bIsShown boolean
---@field Value int32
---@field TemplateName FString
---@field MultiparmValue int32
---@field MultiParmInstanceNum uint32
---@field MultiParmInstanceLength uint32
---@field MultiParmInstanceCount uint32
---@field InstanceStartOffset uint32
---@field MultiParmInstanceLastModifyArray TArray<EHoudiniMultiParmModificationType>
---@field DefaultInstanceCount int32
UHoudiniParameterMultiParm = {}

---@return UHoudiniParameterMultiParm
function UHoudiniParameterMultiParm:get() end



---@class UHoudiniParameterOperatorPath : UHoudiniParameter
---@field HoudiniInput TWeakObjectPtr<UHoudiniInput>
UHoudiniParameterOperatorPath = {}

---@return UHoudiniParameterOperatorPath
function UHoudiniParameterOperatorPath:get() end



---@class UHoudiniParameterRampColor : UHoudiniParameterMultiParm
---@field Points TArray<UHoudiniParameterRampColorPoint>
---@field bCaching boolean
---@field CachedPoints TArray<UHoudiniParameterRampColorPoint>
---@field DefaultPositions TArray<float>
---@field DefaultValues TArray<FLinearColor>
---@field DefaultChoices TArray<int32>
---@field NumDefaultPoints int32
---@field ModificationEvents TArray<UHoudiniParameterRampModificationEvent>
UHoudiniParameterRampColor = {}

---@return UHoudiniParameterRampColor
function UHoudiniParameterRampColor:get() end



---@class UHoudiniParameterRampColorPoint : UObject
---@field Position float
---@field Value FLinearColor
---@field Interpolation EHoudiniRampInterpolationType
---@field InstanceIndex int32
---@field PositionParentParm UHoudiniParameterFloat
---@field ValueParentParm UHoudiniParameterColor
---@field InterpolationParentParm UHoudiniParameterChoice
UHoudiniParameterRampColorPoint = {}

---@return UHoudiniParameterRampColorPoint
function UHoudiniParameterRampColorPoint:get() end



---@class UHoudiniParameterRampFloat : UHoudiniParameterMultiParm
---@field Points TArray<UHoudiniParameterRampFloatPoint>
---@field CachedPoints TArray<UHoudiniParameterRampFloatPoint>
---@field DefaultPositions TArray<float>
---@field DefaultValues TArray<float>
---@field DefaultChoices TArray<int32>
---@field NumDefaultPoints int32
---@field bCaching boolean
---@field ModificationEvents TArray<UHoudiniParameterRampModificationEvent>
UHoudiniParameterRampFloat = {}

---@return UHoudiniParameterRampFloat
function UHoudiniParameterRampFloat:get() end



---@class UHoudiniParameterRampFloatPoint : UObject
---@field Position float
---@field Value float
---@field Interpolation EHoudiniRampInterpolationType
---@field InstanceIndex int32
---@field PositionParentParm UHoudiniParameterFloat
---@field ValueParentParm UHoudiniParameterFloat
---@field InterpolationParentParm UHoudiniParameterChoice
UHoudiniParameterRampFloatPoint = {}

---@return UHoudiniParameterRampFloatPoint
function UHoudiniParameterRampFloatPoint:get() end



---@class UHoudiniParameterRampModificationEvent : UObject
---@field bIsInsertEvent boolean
---@field bIsFloatRamp boolean
---@field DeleteInstanceIndex int32
---@field InsertPosition float
---@field InsertFloat float
---@field InsertColor FLinearColor
---@field InsertInterpolation EHoudiniRampInterpolationType
UHoudiniParameterRampModificationEvent = {}

---@return UHoudiniParameterRampModificationEvent
function UHoudiniParameterRampModificationEvent:get() end



---@class UHoudiniParameterSeparator : UHoudiniParameter
UHoudiniParameterSeparator = {}

---@return UHoudiniParameterSeparator
function UHoudiniParameterSeparator:get() end


---@class UHoudiniParameterString : UHoudiniParameter
---@field Values TArray<FString>
---@field DefaultValues TArray<FString>
---@field ChosenAssets TArray<UObject>
---@field bIsAssetRef boolean
UHoudiniParameterString = {}

---@return UHoudiniParameterString
function UHoudiniParameterString:get() end



---@class UHoudiniParameterToggle : UHoudiniParameter
---@field Values TArray<int32>
---@field DefaultValues TArray<int32>
UHoudiniParameterToggle = {}

---@return UHoudiniParameterToggle
function UHoudiniParameterToggle:get() end



---@class UHoudiniRuntimeSettings : UObject
---@field SessionType EHoudiniRuntimeSettingsSessionType
---@field ServerHost FString
---@field ServerPort int32
---@field ServerPipeName FString
---@field bStartAutomaticServer boolean
---@field AutomaticServerTimeout float
---@field bSyncWithHoudiniCook boolean
---@field bCookUsingHoudiniTime boolean
---@field bSyncViewport boolean
---@field bSyncHoudiniViewport boolean
---@field bSyncUnrealViewport boolean
---@field bShowMultiAssetDialog boolean
---@field bPreferHdaMemoryCopyOverHdaSourceFile boolean
---@field bPauseCookingOnStart boolean
---@field bDisplaySlateCookingNotifications boolean
---@field DefaultTemporaryCookFolder FString
---@field DefaultBakeFolder FString
---@field bEnableTheReferenceCountedInputSystem boolean
---@field MarshallingLandscapesUseDefaultUnrealScaling boolean
---@field MarshallingLandscapesUseFullResolution boolean
---@field MarshallingLandscapesForceMinMaxValues boolean
---@field MarshallingLandscapesForcedMinValue float
---@field MarshallingLandscapesForcedMaxValue float
---@field bAddRotAndScaleAttributesOnCurves boolean
---@field bUseLegacyInputCurves boolean
---@field MarshallingSplineResolution float
---@field bEnableProxyStaticMesh boolean
---@field bShowDefaultMesh boolean
---@field bPreferNaniteFallbackMesh boolean
---@field bEnableProxyStaticMeshRefinementByTimer boolean
---@field ProxyMeshAutoRefineTimeoutSeconds float
---@field bEnableProxyStaticMeshRefinementOnPreSaveWorld boolean
---@field bEnableProxyStaticMeshRefinementOnPreBeginPIE boolean
---@field bDoubleSidedGeometry boolean
---@field PhysMaterial UPhysicalMaterial
---@field DefaultBodyInstance FBodyInstance
---@field CollisionTraceFlag ECollisionTraceFlag
---@field LightMapResolution int32
---@field LpvBiasMultiplier float
---@field GeneratedDistanceFieldResolutionScale float
---@field WalkableSlopeOverride FWalkableSlopeOverride
---@field LightMapCoordinateIndex int32
---@field bUseMaximumStreamingTexelRatio boolean
---@field StreamingDistanceMultiplier float
---@field FoliageDefaultSettings UFoliageType_InstancedStaticMesh
---@field AssetUserData TArray<UAssetUserData>
---@field bUseFullPrecisionUVs boolean
---@field SrcLightmapIndex int32
---@field DstLightmapIndex int32
---@field MinLightmapResolution int32
---@field bRemoveDegenerates boolean
---@field GenerateLightmapUVsFlag EHoudiniRuntimeSettingsRecomputeFlag
---@field RecomputeNormalsFlag EHoudiniRuntimeSettingsRecomputeFlag
---@field RecomputeTangentsFlag EHoudiniRuntimeSettingsRecomputeFlag
---@field bUseMikkTSpace boolean
---@field bBuildAdjacencyBuffer boolean
---@field bComputeWeightedNormals boolean
---@field bBuildReversedIndexBuffer boolean
---@field bUseHighPrecisionTangentBasis boolean
---@field DistanceFieldResolutionScale float
---@field bGenerateDistanceFieldAsIfTwoSided boolean
---@field bSupportFaceRemap boolean
---@field bPDGAsyncCommandletImportEnabled boolean
---@field bEnableBackwardCompatibility boolean
---@field bAutomaticLegacyHDARebuild boolean
---@field bUseCustomHoudiniLocation boolean
---@field CustomHoudiniLocation FDirectoryPath
---@field HoudiniExecutable EHoudiniExecutableType
---@field CookingThreadStackSize int32
---@field HoudiniEnvironmentFiles FString
---@field OtlSearchPath FString
---@field DsoSearchPath FString
---@field ImageDsoSearchPath FString
---@field AudioDsoSearchPath FString
UHoudiniRuntimeSettings = {}

---@return UHoudiniRuntimeSettings
function UHoudiniRuntimeSettings:get() end



---@class UHoudiniSplineComponent : USceneComponent
---@field CurvePoints TArray<FTransform>
---@field DisplayPoints TArray<FVector3d>
---@field DisplayPointIndexDivider TArray<int32>
---@field HoudiniSplineName FString
---@field bClosed boolean
---@field bReversed boolean
---@field CurveOrder int32
---@field bIsHoudiniSplineVisible boolean
---@field CurveType EHoudiniCurveType
---@field CurveMethod EHoudiniCurveMethod
---@field CurveBreakpointParameterization EHoudiniCurveBreakpointParameterization
---@field bIsOutputCurve boolean
---@field bCookOnCurveChanged boolean
---@field bIsLegacyInputCurve boolean
---@field bHasChanged boolean
---@field bNeedsToTriggerUpdate boolean
---@field bIsInputCurve boolean
---@field bIsEditableOutputCurve boolean
---@field NodeID int32
---@field PartName FString
UHoudiniSplineComponent = {}

---@return UHoudiniSplineComponent
function UHoudiniSplineComponent:get() end



---@class UHoudiniSplineComponent_V1 : USceneComponent
UHoudiniSplineComponent_V1 = {}

---@return UHoudiniSplineComponent_V1
function UHoudiniSplineComponent_V1:get() end


---@class UHoudiniStaticMesh : UObject
---@field bHasNormals boolean
---@field bHasTangents boolean
---@field bHasColors boolean
---@field NumUVLayers uint32
---@field bHasPerFaceMaterials boolean
---@field VertexPositions TArray<FVector3f>
---@field TriangleIndices TArray<FIntVector>
---@field VertexInstanceColors TArray<FColor>
---@field VertexInstanceNormals TArray<FVector3f>
---@field VertexInstanceUTangents TArray<FVector3f>
---@field VertexInstanceVTangents TArray<FVector3f>
---@field VertexInstanceUVs TArray<FVector2D>
---@field MaterialIDsPerTriangle TArray<int32>
---@field StaticMaterials TArray<FStaticMaterial>
UHoudiniStaticMesh = {}

---@return UHoudiniStaticMesh
function UHoudiniStaticMesh:get() end

---@param InVertexIndex uint32
---@param InPosition FVector3f
function UHoudiniStaticMesh:SetVertexPosition(InVertexIndex, InPosition) end
---@param InTriangleIndex uint32
---@param InTriangleVertexIndex uint8
---@param InVTangent FVector3f
function UHoudiniStaticMesh:SetTriangleVertexVTangent(InTriangleIndex, InTriangleVertexIndex, InVTangent) end
---@param InTriangleIndex uint32
---@param InTriangleVertexIndex uint8
---@param InUVLayer uint8
---@param InUV FVector2D
function UHoudiniStaticMesh:SetTriangleVertexUV(InTriangleIndex, InTriangleVertexIndex, InUVLayer, InUV) end
---@param InTriangleIndex uint32
---@param InTriangleVertexIndex uint8
---@param InUTangent FVector3f
function UHoudiniStaticMesh:SetTriangleVertexUTangent(InTriangleIndex, InTriangleVertexIndex, InUTangent) end
---@param InTriangleIndex uint32
---@param InTriangleVertexIndex uint8
---@param InNormal FVector3f
function UHoudiniStaticMesh:SetTriangleVertexNormal(InTriangleIndex, InTriangleVertexIndex, InNormal) end
---@param InTriangleIndex uint32
---@param InTriangleVertexIndices FIntVector
function UHoudiniStaticMesh:SetTriangleVertexIndices(InTriangleIndex, InTriangleVertexIndices) end
---@param InTriangleIndex uint32
---@param InTriangleVertexIndex uint8
---@param inColor FColor
function UHoudiniStaticMesh:SetTriangleVertexColor(InTriangleIndex, InTriangleVertexIndex, inColor) end
---@param InTriangleIndex uint32
---@param InMaterialID int32
function UHoudiniStaticMesh:SetTriangleMaterialID(InTriangleIndex, InMaterialID) end
---@param InMaterialIndex uint32
---@param InStaticMaterial FStaticMaterial
function UHoudiniStaticMesh:SetStaticMaterial(InMaterialIndex, InStaticMaterial) end
---@param InNumUVLayers uint32
function UHoudiniStaticMesh:SetNumUVLayers(InNumUVLayers) end
---@param InNumStaticMaterials uint32
function UHoudiniStaticMesh:SetNumStaticMaterials(InNumStaticMaterials) end
---@param bInHasTangents boolean
function UHoudiniStaticMesh:SetHasTangents(bInHasTangents) end
---@param bInHasPerFaceMaterials boolean
function UHoudiniStaticMesh:SetHasPerFaceMaterials(bInHasPerFaceMaterials) end
---@param bInHasNormals boolean
function UHoudiniStaticMesh:SetHasNormals(bInHasNormals) end
---@param bInHasColors boolean
function UHoudiniStaticMesh:SetHasColors(bInHasColors) end
function UHoudiniStaticMesh:Optimize() end
---@param bInSkipVertexIndicesCheck boolean
---@return boolean
function UHoudiniStaticMesh:IsValid(bInSkipVertexIndicesCheck) end
---@param InNumVertices uint32
---@param InNumTriangles uint32
---@param InNumUVLayers uint32
---@param InInitialNumStaticMaterials uint32
---@param bInHasNormals boolean
---@param bInHasTangents boolean
---@param bInHasColors boolean
---@param bInHasPerFaceMaterials boolean
function UHoudiniStaticMesh:Initialize(InNumVertices, InNumTriangles, InNumUVLayers, InInitialNumStaticMaterials, bInHasNormals, bInHasTangents, bInHasColors, bInHasPerFaceMaterials) end
---@return boolean
function UHoudiniStaticMesh:HasTangents() end
---@return boolean
function UHoudiniStaticMesh:HasPerFaceMaterials() end
---@return boolean
function UHoudiniStaticMesh:HasNormals() end
---@return boolean
function UHoudiniStaticMesh:HasColors() end
---@return TArray<FVector3f>
function UHoudiniStaticMesh:GetVertexPositions() end
---@return TArray<FVector3f>
function UHoudiniStaticMesh:GetVertexInstanceVTangents() end
---@return TArray<FVector2D>
function UHoudiniStaticMesh:GetVertexInstanceUVs() end
---@return TArray<FVector3f>
function UHoudiniStaticMesh:GetVertexInstanceUTangents() end
---@return TArray<FVector3f>
function UHoudiniStaticMesh:GetVertexInstanceNormals() end
---@return TArray<FColor>
function UHoudiniStaticMesh:GetVertexInstanceColors() end
---@return TArray<FIntVector>
function UHoudiniStaticMesh:GetTriangleIndices() end
---@return TArray<FStaticMaterial>
function UHoudiniStaticMesh:GetStaticMaterials() end
---@return uint32
function UHoudiniStaticMesh:GetNumVertices() end
---@return uint32
function UHoudiniStaticMesh:GetNumVertexInstances() end
---@return uint32
function UHoudiniStaticMesh:GetNumUVLayers() end
---@return uint32
function UHoudiniStaticMesh:GetNumTriangles() end
---@return uint32
function UHoudiniStaticMesh:GetNumStaticMaterials() end
---@param InMaterialSlotName FName
---@return int32
function UHoudiniStaticMesh:GetMaterialIndex(InMaterialSlotName) end
---@return TArray<int32>
function UHoudiniStaticMesh:GetMaterialIDsPerTriangle() end
---@param InMaterialIndex int32
---@return UMaterialInterface
function UHoudiniStaticMesh:GetMaterial(InMaterialIndex) end
---@param bInComputeWeightedNormals boolean
function UHoudiniStaticMesh:CalculateTangents(bInComputeWeightedNormals) end
---@param bInComputeWeightedNormals boolean
function UHoudiniStaticMesh:CalculateNormals(bInComputeWeightedNormals) end
---@return FBox
function UHoudiniStaticMesh:CalcBounds() end
---@param InStaticMaterial FStaticMaterial
---@return uint32
function UHoudiniStaticMesh:AddStaticMaterial(InStaticMaterial) end


---@class UHoudiniStaticMeshComponent : UMeshComponent
---@field Mesh UHoudiniStaticMesh
---@field LocalBounds FBox
---@field bHoudiniIconVisible boolean
UHoudiniStaticMeshComponent = {}

---@return UHoudiniStaticMeshComponent
function UHoudiniStaticMeshComponent:get() end

---@param InMesh UHoudiniStaticMesh
function UHoudiniStaticMeshComponent:SetMesh(InMesh) end
---@param bInHoudiniIconVisible boolean
function UHoudiniStaticMeshComponent:SetHoudiniIconVisible(bInHoudiniIconVisible) end
function UHoudiniStaticMeshComponent:NotifyMeshUpdated() end
---@return boolean
function UHoudiniStaticMeshComponent:IsHoudiniIconVisible() end
---@return UHoudiniStaticMesh
function UHoudiniStaticMeshComponent:GetMesh() end


---@class UTOPNetwork : UObject
---@field NodeID int32
---@field NodeName FString
---@field NodePath FString
---@field AllTOPNodes TArray<UTOPNode>
---@field SelectedTOPIndex int32
---@field ParentName FString
---@field bShowResults boolean
---@field bAutoLoadResults boolean
UTOPNetwork = {}

---@return UTOPNetwork
function UTOPNetwork:get() end



---@class UTOPNode : UObject
---@field NodeID int32
---@field NodeName FString
---@field NodePath FString
---@field ParentName FString
---@field WorkResultParent UObject
---@field WorkResult TArray<FTOPWorkResult>
---@field bHidden boolean
---@field bAutoLoad boolean
---@field NodeState EPDGNodeState
---@field bCachedHaveNotLoadedWorkResults boolean
---@field bCachedHaveLoadedWorkResults boolean
---@field bHasChildNodes boolean
---@field ClearedLandscapeLayers TSet<FString>
---@field bShow boolean
---@field BakedWorkResultObjectOutputs TMap<FString, FHoudiniPDGWorkResultObjectBakedOutput>
---@field WorkItemTally FWorkItemTally
---@field AggregatedWorkItemTally FAggregatedWorkItemTally
---@field bHasReceivedCookCompleteEvent boolean
---@field OutputActorOwner FOutputActorOwner
UTOPNode = {}

---@return UTOPNode
function UTOPNode:get() end



