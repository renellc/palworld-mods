#ifndef UE4SS_SDK_HoudiniEngineRuntime_HPP
#define UE4SS_SDK_HoudiniEngineRuntime_HPP

#include "HoudiniEngineRuntime_enums.hpp"

struct FAggregatedWorkItemTally : public FWorkItemTallyBase
{
    int32 TotalWorkItems;                                                             // 0x0008 (size: 0x4)
    int32 WaitingWorkItems;                                                           // 0x000C (size: 0x4)
    int32 ScheduledWorkItems;                                                         // 0x0010 (size: 0x4)
    int32 CookingWorkItems;                                                           // 0x0014 (size: 0x4)
    int32 CookedWorkItems;                                                            // 0x0018 (size: 0x4)
    int32 ErroredWorkItems;                                                           // 0x001C (size: 0x4)
    int32 CookCancelledWorkItems;                                                     // 0x0020 (size: 0x4)

}; // Size: 0x28

struct FHoudiniAssetBlueprintInstanceData : public FActorComponentInstanceData
{
    class UHoudiniAsset* HoudiniAsset;                                                // 0x0068 (size: 0x8)
    int32 AssetId;                                                                    // 0x0070 (size: 0x4)
    EHoudiniAssetState AssetState;                                                    // 0x0074 (size: 0x1)
    uint32 SubAssetIndex;                                                             // 0x0078 (size: 0x4)
    uint32 AssetCookCount;                                                            // 0x007C (size: 0x4)
    bool bHasBeenLoaded;                                                              // 0x0080 (size: 0x1)
    bool bHasBeenDuplicated;                                                          // 0x0081 (size: 0x1)
    bool bPendingDelete;                                                              // 0x0082 (size: 0x1)
    bool bRecookRequested;                                                            // 0x0083 (size: 0x1)
    bool bRebuildRequested;                                                           // 0x0084 (size: 0x1)
    bool bEnableCooking;                                                              // 0x0085 (size: 0x1)
    bool bForceNeedUpdate;                                                            // 0x0086 (size: 0x1)
    bool bLastCookSuccess;                                                            // 0x0087 (size: 0x1)
    FGuid ComponentGUID;                                                              // 0x0088 (size: 0x10)
    FGuid HapiGUID;                                                                   // 0x0098 (size: 0x10)
    bool bRegisteredComponentTemplate;                                                // 0x00A8 (size: 0x1)
    FString SourceName;                                                               // 0x00B0 (size: 0x10)
    TMap<class FHoudiniOutputObjectIdentifier, class FHoudiniAssetBlueprintOutput> Outputs; // 0x00C0 (size: 0x50)
    TArray<class UHoudiniInput*> Inputs;                                              // 0x0110 (size: 0x10)

}; // Size: 0x120

struct FHoudiniAssetBlueprintOutput
{
    int32 OutputIndex;                                                                // 0x0000 (size: 0x4)
    FHoudiniOutputObject OutputObject;                                                // 0x0008 (size: 0x118)

}; // Size: 0x120

struct FHoudiniBakedOutput
{
    TMap<class FHoudiniBakedOutputObjectIdentifier, class FHoudiniBakedOutputObject> BakedOutputObjects; // 0x0000 (size: 0x50)

}; // Size: 0x50

struct FHoudiniBakedOutputObject
{
    FString Actor;                                                                    // 0x0000 (size: 0x10)
    FString Blueprint;                                                                // 0x0010 (size: 0x10)
    FName ActorBakeName;                                                              // 0x0020 (size: 0x8)
    FString BakedObject;                                                              // 0x0028 (size: 0x10)
    FString BakedComponent;                                                           // 0x0038 (size: 0x10)
    TArray<FString> InstancedActors;                                                  // 0x0048 (size: 0x10)
    TArray<FString> InstancedComponents;                                              // 0x0058 (size: 0x10)
    TMap<class FName, class FString> LandscapeLayers;                                 // 0x0068 (size: 0x50)

}; // Size: 0xB8

struct FHoudiniBakedOutputObjectIdentifier
{
    int32 PartId;                                                                     // 0x0000 (size: 0x4)
    FString SplitIdentifier;                                                          // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FHoudiniBrushInfo
{
    TWeakObjectPtr<class ABrush> BrushActor;                                          // 0x0000 (size: 0x8)
    FTransform CachedTransform;                                                       // 0x0010 (size: 0x60)
    FVector CachedOrigin;                                                             // 0x0070 (size: 0x18)
    FVector CachedExtent;                                                             // 0x0088 (size: 0x18)
    TEnumAsByte<EBrushType> CachedBrushType;                                          // 0x00A0 (size: 0x1)
    uint64 CachedSurfaceHash;                                                         // 0x00A8 (size: 0x8)

}; // Size: 0xB0

struct FHoudiniCurveInfo
{
}; // Size: 0x1C

struct FHoudiniCurveOutputProperties
{
    EHoudiniCurveOutputType CurveOutputType;                                          // 0x0000 (size: 0x1)
    int32 NumPoints;                                                                  // 0x0004 (size: 0x4)
    bool bClosed;                                                                     // 0x0008 (size: 0x1)
    EHoudiniCurveType CurveType;                                                      // 0x0009 (size: 0x1)
    EHoudiniCurveMethod CurveMethod;                                                  // 0x000A (size: 0x1)

}; // Size: 0xC

struct FHoudiniGenericAttribute
{
    FString AttributeName;                                                            // 0x0000 (size: 0x10)
    EAttribStorageType AttributeType;                                                 // 0x0010 (size: 0x1)
    EAttribOwner AttributeOwner;                                                      // 0x0011 (size: 0x1)
    int32 AttributeCount;                                                             // 0x0014 (size: 0x4)
    int32 AttributeTupleSize;                                                         // 0x0018 (size: 0x4)
    TArray<double> DoubleValues;                                                      // 0x0020 (size: 0x10)
    TArray<int64> IntValues;                                                          // 0x0030 (size: 0x10)
    TArray<FString> StringValues;                                                     // 0x0040 (size: 0x10)

}; // Size: 0x50

struct FHoudiniGenericAttributeChangedProperty
{
    class UObject* Object;                                                            // 0x0000 (size: 0x8)

}; // Size: 0x98

struct FHoudiniGeoInfo
{
}; // Size: 0x30

struct FHoudiniGeoPartObject
{
    int32 AssetId;                                                                    // 0x0000 (size: 0x4)
    FString AssetName;                                                                // 0x0008 (size: 0x10)
    int32 ObjectID;                                                                   // 0x0018 (size: 0x4)
    FString ObjectName;                                                               // 0x0020 (size: 0x10)
    int32 GeoId;                                                                      // 0x0030 (size: 0x4)
    int32 PartId;                                                                     // 0x0034 (size: 0x4)
    FString PartName;                                                                 // 0x0038 (size: 0x10)
    bool bHasCustomPartName;                                                          // 0x0048 (size: 0x1)
    TArray<FString> SplitGroups;                                                      // 0x0050 (size: 0x10)
    FTransform TransformMatrix;                                                       // 0x0060 (size: 0x60)
    FString NodePath;                                                                 // 0x00C0 (size: 0x10)
    EHoudiniPartType Type;                                                            // 0x00D0 (size: 0x1)
    EHoudiniInstancerType InstancerType;                                              // 0x00D1 (size: 0x1)
    FString VolumeName;                                                               // 0x00D8 (size: 0x10)
    bool bHasEditLayers;                                                              // 0x00E8 (size: 0x1)
    FString VolumeLayerName;                                                          // 0x00F0 (size: 0x10)
    int32 VolumeTileIndex;                                                            // 0x0100 (size: 0x4)
    bool bIsVisible;                                                                  // 0x0104 (size: 0x1)
    bool bIsEditable;                                                                 // 0x0105 (size: 0x1)
    bool bIsTemplated;                                                                // 0x0106 (size: 0x1)
    bool bIsInstanced;                                                                // 0x0107 (size: 0x1)
    bool bHasGeoChanged;                                                              // 0x0108 (size: 0x1)
    bool bHasPartChanged;                                                             // 0x0109 (size: 0x1)
    bool bHasTransformChanged;                                                        // 0x010A (size: 0x1)
    bool bHasMaterialsChanged;                                                        // 0x010B (size: 0x1)
    TArray<FHoudiniMeshSocket> AllMeshSockets;                                        // 0x0280 (size: 0x10)

}; // Size: 0x290

struct FHoudiniInstancedOutput
{
    TSoftObjectPtr<UObject> OriginalObject;                                           // 0x0000 (size: 0x30)
    int32 OriginalObjectIndex;                                                        // 0x0030 (size: 0x4)
    TArray<FTransform> OriginalTransforms;                                            // 0x0038 (size: 0x10)
    TArray<TSoftObjectPtr<UObject>> VariationObjects;                                 // 0x0048 (size: 0x10)
    TArray<FTransform> VariationTransformOffsets;                                     // 0x0058 (size: 0x10)
    TArray<int32> TransformVariationIndices;                                          // 0x0068 (size: 0x10)
    TArray<int32> OriginalInstanceIndices;                                            // 0x0078 (size: 0x10)
    bool bChanged;                                                                    // 0x0088 (size: 0x1)
    bool bStale;                                                                      // 0x0089 (size: 0x1)

}; // Size: 0x90

struct FHoudiniMeshSocket
{
}; // Size: 0x90

struct FHoudiniObjectInfo
{
}; // Size: 0x28

struct FHoudiniOutputObject
{
    class UObject* OutputObject;                                                      // 0x0000 (size: 0x8)
    TArray<class UObject*> OutputComponents;                                          // 0x0008 (size: 0x10)
    class UObject* OutputComponent;                                                   // 0x0018 (size: 0x8)
    class UObject* ProxyObject;                                                       // 0x0020 (size: 0x8)
    class UObject* ProxyComponent;                                                    // 0x0028 (size: 0x8)
    bool bProxyIsCurrent;                                                             // 0x0030 (size: 0x1)
    bool bIsImplicit;                                                                 // 0x0031 (size: 0x1)
    bool bIsGeometryCollectionPiece;                                                  // 0x0032 (size: 0x1)
    FString GeometryCollectionPieceName;                                              // 0x0038 (size: 0x10)
    FString BakeName;                                                                 // 0x0048 (size: 0x10)
    FHoudiniCurveOutputProperties CurveOutputProperty;                                // 0x0058 (size: 0xC)
    TMap<class FString, class FString> CachedAttributes;                              // 0x0068 (size: 0x50)
    TMap<class FString, class FString> CachedTokens;                                  // 0x00B8 (size: 0x50)
    class UObject* InstancedObject;                                                   // 0x0108 (size: 0x8)
    class UFoliageType* FoliageType;                                                  // 0x0110 (size: 0x8)

}; // Size: 0x118

struct FHoudiniOutputObjectIdentifier
{
    int32 ObjectID;                                                                   // 0x0000 (size: 0x4)
    int32 GeoId;                                                                      // 0x0004 (size: 0x4)
    int32 PartId;                                                                     // 0x0008 (size: 0x4)
    FString SplitIdentifier;                                                          // 0x0010 (size: 0x10)
    FString PartName;                                                                 // 0x0020 (size: 0x10)
    int32 PrimitiveIndex;                                                             // 0x0030 (size: 0x4)
    int32 PointIndex;                                                                 // 0x0034 (size: 0x4)

}; // Size: 0x40

struct FHoudiniPDGWorkResultObjectBakedOutput
{
    TArray<FHoudiniBakedOutput> BakedOutputs;                                         // 0x0000 (size: 0x10)

}; // Size: 0x10

struct FHoudiniPartInfo
{
}; // Size: 0x48

struct FHoudiniSplineComponentInstanceData : public FActorComponentInstanceData
{
    TArray<FTransform> CurvePoints;                                                   // 0x0068 (size: 0x10)
    TArray<FVector> DisplayPoints;                                                    // 0x0078 (size: 0x10)
    TArray<int32> DisplayPointIndexDivider;                                           // 0x0088 (size: 0x10)

}; // Size: 0x98

struct FHoudiniStaticMeshGenerationProperties
{
    uint8 bGeneratedDoubleSidedGeometry;                                              // 0x0000 (size: 0x1)
    class UPhysicalMaterial* GeneratedPhysMaterial;                                   // 0x0008 (size: 0x8)
    FBodyInstance DefaultBodyInstance;                                                // 0x0010 (size: 0x190)
    TEnumAsByte<ECollisionTraceFlag> GeneratedCollisionTraceFlag;                     // 0x01A0 (size: 0x1)
    int32 GeneratedLightMapResolution;                                                // 0x01A4 (size: 0x4)
    FWalkableSlopeOverride GeneratedWalkableSlopeOverride;                            // 0x01A8 (size: 0x10)
    int32 GeneratedLightMapCoordinateIndex;                                           // 0x01B8 (size: 0x4)
    uint8 bGeneratedUseMaximumStreamingTexelRatio;                                    // 0x01BC (size: 0x1)
    float GeneratedStreamingDistanceMultiplier;                                       // 0x01C0 (size: 0x4)
    class UFoliageType_InstancedStaticMesh* GeneratedFoliageDefaultSettings;          // 0x01C8 (size: 0x8)
    TArray<class UAssetUserData*> GeneratedAssetUserData;                             // 0x01D0 (size: 0x10)

}; // Size: 0x1E0

struct FHoudiniVolumeInfo
{
}; // Size: 0xB0

struct FOutputActorOwner
{
    class AActor* OutputActor;                                                        // 0x0008 (size: 0x8)

}; // Size: 0x10

struct FTOPWorkResult
{
    int32 WorkItemIndex;                                                              // 0x0000 (size: 0x4)
    int32 WorkItemID;                                                                 // 0x0004 (size: 0x4)
    TArray<FTOPWorkResultObject> ResultObjects;                                       // 0x0008 (size: 0x10)

}; // Size: 0x18

struct FTOPWorkResultObject
{
    FString Name;                                                                     // 0x0008 (size: 0x10)
    FString FilePath;                                                                 // 0x0018 (size: 0x10)
    EPDGWorkResultState State;                                                        // 0x0028 (size: 0x1)
    int32 WorkItemResultInfoIndex;                                                    // 0x002C (size: 0x4)
    TArray<class UHoudiniOutput*> ResultOutputs;                                      // 0x0030 (size: 0x10)
    bool bAutoBakedSinceLastLoad;                                                     // 0x0040 (size: 0x1)
    FOutputActorOwner OutputActorOwner;                                               // 0x0048 (size: 0x10)

}; // Size: 0x58

struct FWorkItemTally : public FWorkItemTallyBase
{
    TSet<int32> AllWorkItems;                                                         // 0x0008 (size: 0x50)
    TSet<int32> WaitingWorkItems;                                                     // 0x0058 (size: 0x50)
    TSet<int32> ScheduledWorkItems;                                                   // 0x00A8 (size: 0x50)
    TSet<int32> CookingWorkItems;                                                     // 0x00F8 (size: 0x50)
    TSet<int32> CookedWorkItems;                                                      // 0x0148 (size: 0x50)
    TSet<int32> ErroredWorkItems;                                                     // 0x0198 (size: 0x50)
    TSet<int32> CookCancelledWorkItems;                                               // 0x01E8 (size: 0x50)

}; // Size: 0x238

struct FWorkItemTallyBase
{
}; // Size: 0x8

class AHoudiniAssetActor : public AActor
{
    class UHoudiniAssetComponent* HoudiniAssetComponent;                              // 0x0290 (size: 0x8)

}; // Size: 0x298

class IHoudiniAssetStateEvents : public IInterface
{
}; // Size: 0x28

class IHoudiniEngineCopyPropertiesInterface : public IInterface
{
}; // Size: 0x28

class UHoudiniAsset : public UObject
{
    FString AssetFileName;                                                            // 0x0028 (size: 0x10)
    TArray<uint8> AssetBytes;                                                         // 0x0038 (size: 0x10)
    uint32 AssetBytesCount;                                                           // 0x0048 (size: 0x4)
    bool bAssetLimitedCommercial;                                                     // 0x004C (size: 0x1)
    bool bAssetNonCommercial;                                                         // 0x004D (size: 0x1)
    bool bAssetExpanded;                                                              // 0x004E (size: 0x1)

}; // Size: 0x50

class UHoudiniAssetBlueprintComponent : public UHoudiniAssetComponent
{
    bool FauxBPProperty;                                                              // 0x0AD8 (size: 0x1)
    bool bHoudiniAssetChanged;                                                        // 0x0AD9 (size: 0x1)
    bool bUpdatedFromTemplate;                                                        // 0x0ADA (size: 0x1)
    bool bIsInBlueprintEditor;                                                        // 0x0ADB (size: 0x1)
    bool bCanDeleteHoudiniNodes;                                                      // 0x0ADC (size: 0x1)
    bool bHasRegisteredComponentTemplate;                                             // 0x0ADD (size: 0x1)
    TMap<class FHoudiniOutputObjectIdentifier, class FGuid> CachedOutputNodes;        // 0x0AE8 (size: 0x50)
    TMap<class FGuid, class FGuid> CachedInputNodes;                                  // 0x0B38 (size: 0x50)

    void SetToggleValueAt(FString Name, bool Value, int32 Index);
    void SetFloatParameter(FString Name, float Value, int32 Index);
    bool HasParameter(FString Name);
}; // Size: 0xB90

class UHoudiniAssetComponent : public UPrimitiveComponent
{
    class UHoudiniAsset* HoudiniAsset;                                                // 0x0540 (size: 0x8)
    bool bCookOnParameterChange;                                                      // 0x0548 (size: 0x1)
    bool bUploadTransformsToHoudiniEngine;                                            // 0x0549 (size: 0x1)
    bool bCookOnTransformChange;                                                      // 0x054A (size: 0x1)
    bool bCookOnAssetInputCook;                                                       // 0x054B (size: 0x1)
    bool bOutputless;                                                                 // 0x054C (size: 0x1)
    bool bOutputTemplateGeos;                                                         // 0x054D (size: 0x1)
    bool bUseOutputNodes;                                                             // 0x054E (size: 0x1)
    FDirectoryPath TemporaryCookFolder;                                               // 0x0550 (size: 0x10)
    FDirectoryPath BakeFolder;                                                        // 0x0560 (size: 0x10)
    EHoudiniStaticMeshMethod StaticMeshMethod;                                        // 0x0570 (size: 0x1)
    FHoudiniStaticMeshGenerationProperties StaticMeshGenerationProperties;            // 0x0578 (size: 0x1E0)
    FMeshBuildSettings StaticMeshBuildSettings;                                       // 0x0758 (size: 0x48)
    bool bOverrideGlobalProxyStaticMeshSettings;                                      // 0x07A0 (size: 0x1)
    bool bEnableProxyStaticMeshOverride;                                              // 0x07A1 (size: 0x1)
    bool bEnableProxyStaticMeshRefinementByTimerOverride;                             // 0x07A2 (size: 0x1)
    float ProxyMeshAutoRefineTimeoutSecondsOverride;                                  // 0x07A4 (size: 0x4)
    bool bEnableProxyStaticMeshRefinementOnPreSaveWorldOverride;                      // 0x07A8 (size: 0x1)
    bool bEnableProxyStaticMeshRefinementOnPreBeginPIEOverride;                       // 0x07A9 (size: 0x1)
    int32 AssetId;                                                                    // 0x07AC (size: 0x4)
    TArray<int32> NodeIdsToCook;                                                      // 0x07B0 (size: 0x10)
    TMap<int32, int32> OutputNodeCookCounts;                                          // 0x07C0 (size: 0x50)
    TSet<UHoudiniAssetComponent*> DownstreamHoudiniAssets;                            // 0x0810 (size: 0x50)
    FGuid ComponentGUID;                                                              // 0x0860 (size: 0x10)
    FGuid HapiGUID;                                                                   // 0x0870 (size: 0x10)
    FString HapiAssetName;                                                            // 0x0880 (size: 0x10)
    EHoudiniAssetState AssetState;                                                    // 0x0890 (size: 0x1)
    EHoudiniAssetState DebugLastAssetState;                                           // 0x0891 (size: 0x1)
    EHoudiniAssetStateResult AssetStateResult;                                        // 0x0892 (size: 0x1)
    FTransform LastComponentTransform;                                                // 0x08A0 (size: 0x60)
    uint32 SubAssetIndex;                                                             // 0x0900 (size: 0x4)
    int32 AssetCookCount;                                                             // 0x0904 (size: 0x4)
    bool bHasBeenLoaded;                                                              // 0x0908 (size: 0x1)
    bool bHasBeenDuplicated;                                                          // 0x0909 (size: 0x1)
    bool bPendingDelete;                                                              // 0x090A (size: 0x1)
    bool bRecookRequested;                                                            // 0x090B (size: 0x1)
    bool bRebuildRequested;                                                           // 0x090C (size: 0x1)
    bool bEnableCooking;                                                              // 0x090D (size: 0x1)
    bool bForceNeedUpdate;                                                            // 0x090E (size: 0x1)
    bool bLastCookSuccess;                                                            // 0x090F (size: 0x1)
    bool bParameterDefinitionUpdateNeeded;                                            // 0x0910 (size: 0x1)
    bool bBlueprintStructureModified;                                                 // 0x0911 (size: 0x1)
    bool bBlueprintModified;                                                          // 0x0912 (size: 0x1)
    TArray<class UHoudiniParameter*> Parameters;                                      // 0x0918 (size: 0x10)
    TArray<class UHoudiniInput*> Inputs;                                              // 0x0928 (size: 0x10)
    TArray<class UHoudiniOutput*> Outputs;                                            // 0x0938 (size: 0x10)
    TArray<FHoudiniBakedOutput> BakedOutputs;                                         // 0x0948 (size: 0x10)
    TArray<TWeakObjectPtr<AActor>> UntrackedOutputs;                                  // 0x0958 (size: 0x10)
    TArray<class UHoudiniHandleComponent*> HandleComponents;                          // 0x0968 (size: 0x10)
    bool bHasComponentTransformChanged;                                               // 0x0978 (size: 0x1)
    bool bFullyLoaded;                                                                // 0x0979 (size: 0x1)
    class UHoudiniPDGAssetLink* PDGAssetLink;                                         // 0x0980 (size: 0x8)
    FTimerHandle RefineMeshesTimer;                                                   // 0x0988 (size: 0x8)
    bool bNoProxyMeshNextCookRequested;                                               // 0x09A8 (size: 0x1)
    TMap<UObject*, int32> InputPresets;                                               // 0x09B0 (size: 0x50)
    bool bBakeAfterNextCook;                                                          // 0x0A00 (size: 0x1)
    bool bCachedIsPreview;                                                            // 0x0A60 (size: 0x1)
    double LastTickTime;                                                              // 0x0A70 (size: 0x8)

}; // Size: 0xA90

class UHoudiniAssetComponentMaterials_V1 : public UObject
{
}; // Size: 0xC8

class UHoudiniAssetComponent_V1 : public UPrimitiveComponent
{
    uint8 bGeneratedDoubleSidedGeometry;                                              // 0x0538 (size: 0x1)
    class UPhysicalMaterial* GeneratedPhysMaterial;                                   // 0x0540 (size: 0x8)
    FBodyInstance DefaultBodyInstance;                                                // 0x0548 (size: 0x190)
    TEnumAsByte<ECollisionTraceFlag> GeneratedCollisionTraceFlag;                     // 0x06D8 (size: 0x1)
    int32 GeneratedLightMapResolution;                                                // 0x06DC (size: 0x4)
    float GeneratedDistanceFieldResolutionScale;                                      // 0x06E0 (size: 0x4)
    FWalkableSlopeOverride GeneratedWalkableSlopeOverride;                            // 0x06E4 (size: 0x10)
    int32 GeneratedLightMapCoordinateIndex;                                           // 0x06F4 (size: 0x4)
    uint8 bGeneratedUseMaximumStreamingTexelRatio;                                    // 0x06F8 (size: 0x1)
    float GeneratedStreamingDistanceMultiplier;                                       // 0x06FC (size: 0x4)
    class UFoliageType_InstancedStaticMesh* GeneratedFoliageDefaultSettings;          // 0x0700 (size: 0x8)
    TArray<class UAssetUserData*> GeneratedAssetUserData;                             // 0x0708 (size: 0x10)
    FText BakeFolder;                                                                 // 0x0718 (size: 0x18)
    FText TempCookFolder;                                                             // 0x0730 (size: 0x18)

}; // Size: 0xA90

class UHoudiniAssetInput : public UHoudiniAssetParameter
{
}; // Size: 0x1E0

class UHoudiniAssetInstanceInput : public UHoudiniAssetParameter
{
}; // Size: 0x190

class UHoudiniAssetInstanceInputField : public UObject
{
}; // Size: 0x1C0

class UHoudiniAssetParameter : public UObject
{
}; // Size: 0x80

class UHoudiniAssetParameterButton : public UHoudiniAssetParameter
{
}; // Size: 0x80

class UHoudiniAssetParameterChoice : public UHoudiniAssetParameter
{
}; // Size: 0xB8

class UHoudiniAssetParameterColor : public UHoudiniAssetParameter
{
}; // Size: 0x90

class UHoudiniAssetParameterFile : public UHoudiniAssetParameter
{
}; // Size: 0xA8

class UHoudiniAssetParameterFloat : public UHoudiniAssetParameter
{
}; // Size: 0xB8

class UHoudiniAssetParameterFolder : public UHoudiniAssetParameter
{
}; // Size: 0x80

class UHoudiniAssetParameterFolderList : public UHoudiniAssetParameter
{
}; // Size: 0x80

class UHoudiniAssetParameterInt : public UHoudiniAssetParameter
{
}; // Size: 0xB0

class UHoudiniAssetParameterLabel : public UHoudiniAssetParameter
{
}; // Size: 0x80

class UHoudiniAssetParameterMultiparm : public UHoudiniAssetParameter
{
}; // Size: 0x88

class UHoudiniAssetParameterRamp : public UHoudiniAssetParameter
{
}; // Size: 0x98

class UHoudiniAssetParameterSeparator : public UHoudiniAssetParameter
{
}; // Size: 0x80

class UHoudiniAssetParameterString : public UHoudiniAssetParameter
{
}; // Size: 0x90

class UHoudiniAssetParameterToggle : public UHoudiniAssetParameter
{
}; // Size: 0x90

class UHoudiniHandleComponent : public USceneComponent
{
    TArray<class UHoudiniHandleParameter*> XformParms;                                // 0x02A0 (size: 0x10)
    class UHoudiniHandleParameter* RSTParm;                                           // 0x02B0 (size: 0x8)
    class UHoudiniHandleParameter* RotOrderParm;                                      // 0x02B8 (size: 0x8)
    EHoudiniHandleType HandleType;                                                    // 0x02C0 (size: 0x1)
    FString HandleName;                                                               // 0x02C8 (size: 0x10)

}; // Size: 0x2E0

class UHoudiniHandleComponent_V1 : public USceneComponent
{
}; // Size: 0x330

class UHoudiniHandleParameter : public UObject
{
    class UHoudiniParameter* AssetParameter;                                          // 0x0028 (size: 0x8)
    int32 TupleIndex;                                                                 // 0x0030 (size: 0x4)

}; // Size: 0x38

class UHoudiniInput : public UObject
{
    FString Name;                                                                     // 0x0028 (size: 0x10)
    FString Label;                                                                    // 0x0038 (size: 0x10)
    EHoudiniInputType Type;                                                           // 0x0048 (size: 0x1)
    EHoudiniInputType PreviousType;                                                   // 0x0049 (size: 0x1)
    int32 AssetNodeId;                                                                // 0x004C (size: 0x4)
    int32 InputNodeId;                                                                // 0x0050 (size: 0x4)
    int32 InputIndex;                                                                 // 0x0054 (size: 0x4)
    int32 ParmId;                                                                     // 0x0058 (size: 0x4)
    bool bIsObjectPathParameter;                                                      // 0x005C (size: 0x1)
    TArray<int32> CreatedDataNodeIds;                                                 // 0x0060 (size: 0x10)
    bool bHasChanged;                                                                 // 0x0070 (size: 0x1)
    bool bNeedsToTriggerUpdate;                                                       // 0x0071 (size: 0x1)
    FBox CachedBounds;                                                                // 0x0078 (size: 0x38)
    FString Help;                                                                     // 0x00B0 (size: 0x10)
    EHoudiniXformType KeepWorldTransform;                                             // 0x00C0 (size: 0x1)
    bool bPackBeforeMerge;                                                            // 0x00C1 (size: 0x1)
    bool bImportAsReference;                                                          // 0x00C2 (size: 0x1)
    bool bImportAsReferenceRotScaleEnabled;                                           // 0x00C3 (size: 0x1)
    bool bImportAsReferenceBboxEnabled;                                               // 0x00C4 (size: 0x1)
    bool bImportAsReferenceMaterialEnabled;                                           // 0x00C5 (size: 0x1)
    bool bExportLODs;                                                                 // 0x00C6 (size: 0x1)
    bool bExportSockets;                                                              // 0x00C7 (size: 0x1)
    bool bPreferNaniteFallbackMesh;                                                   // 0x00C8 (size: 0x1)
    bool bExportColliders;                                                            // 0x00C9 (size: 0x1)
    bool bExportMaterialParameters;                                                   // 0x00CA (size: 0x1)
    bool bCookOnCurveChanged;                                                         // 0x00CB (size: 0x1)
    TArray<class UHoudiniInputObject*> GeometryInputObjects;                          // 0x00D0 (size: 0x10)
    bool bStaticMeshChanged;                                                          // 0x00E0 (size: 0x1)
    TArray<class UHoudiniInputObject*> AssetInputObjects;                             // 0x00E8 (size: 0x10)
    bool bInputAssetConnectedInHoudini;                                               // 0x00F8 (size: 0x1)
    TArray<class UHoudiniInputObject*> CurveInputObjects;                             // 0x0100 (size: 0x10)
    float DefaultCurveOffset;                                                         // 0x0110 (size: 0x4)
    bool bAddRotAndScaleAttributesOnCurves;                                           // 0x0114 (size: 0x1)
    bool bUseLegacyInputCurves;                                                       // 0x0115 (size: 0x1)
    TArray<class UHoudiniInputObject*> LandscapeInputObjects;                         // 0x0118 (size: 0x10)
    bool bLandscapeHasExportTypeChanged;                                              // 0x0128 (size: 0x1)
    TArray<class UHoudiniInputObject*> WorldInputObjects;                             // 0x0130 (size: 0x10)
    TArray<class AActor*> WorldInputBoundSelectorObjects;                             // 0x0140 (size: 0x10)
    bool bIsWorldInputBoundSelector;                                                  // 0x0150 (size: 0x1)
    bool bWorldInputBoundSelectorAutoUpdate;                                          // 0x0151 (size: 0x1)
    float UnrealSplineResolution;                                                     // 0x0154 (size: 0x4)
    TArray<class UHoudiniInputObject*> SkeletalInputObjects;                          // 0x0158 (size: 0x10)
    TArray<class UHoudiniInputObject*> GeometryCollectionInputObjects;                // 0x0168 (size: 0x10)
    TSet<ULandscapeComponent*> LandscapeSelectedComponents;                           // 0x0178 (size: 0x50)
    TSet<int32> InputNodesPendingDelete;                                              // 0x01C8 (size: 0x50)
    TArray<class UHoudiniInputHoudiniSplineComponent*> LastInsertedInputs;            // 0x0218 (size: 0x10)
    TArray<class UHoudiniInputObject*> LastUndoDeletedInputs;                         // 0x0228 (size: 0x10)
    bool bUpdateInputLandscape;                                                       // 0x0238 (size: 0x1)
    EHoudiniLandscapeExportType LandscapeExportType;                                  // 0x0239 (size: 0x1)
    bool bLandscapeExportSelectionOnly;                                               // 0x023A (size: 0x1)
    bool bLandscapeAutoSelectComponent;                                               // 0x023B (size: 0x1)
    bool bLandscapeExportMaterials;                                                   // 0x023C (size: 0x1)
    bool bLandscapeExportLighting;                                                    // 0x023D (size: 0x1)
    bool bLandscapeExportNormalizedUVs;                                               // 0x023E (size: 0x1)
    bool bLandscapeExportTileUVs;                                                     // 0x023F (size: 0x1)
    bool bCanDeleteHoudiniNodes;                                                      // 0x0240 (size: 0x1)

}; // Size: 0x248

class UHoudiniInputActor : public UHoudiniInputObject
{
    TArray<class UHoudiniInputSceneComponent*> ActorComponents;                       // 0x0128 (size: 0x10)
    TSet<TSoftObjectPtr<UObject>> ActorSceneComponents;                               // 0x0138 (size: 0x50)
    int32 LastUpdateNumComponentsAdded;                                               // 0x0188 (size: 0x4)
    int32 LastUpdateNumComponentsRemoved;                                             // 0x018C (size: 0x4)

}; // Size: 0x190

class UHoudiniInputBlueprint : public UHoudiniInputObject
{
    TArray<class UHoudiniInputSceneComponent*> BPComponents;                          // 0x0128 (size: 0x10)
    TSet<TSoftObjectPtr<UObject>> BPSceneComponents;                                  // 0x0138 (size: 0x50)
    int32 LastUpdateNumComponentsAdded;                                               // 0x0188 (size: 0x4)
    int32 LastUpdateNumComponentsRemoved;                                             // 0x018C (size: 0x4)

}; // Size: 0x190

class UHoudiniInputBrush : public UHoudiniInputActor
{
    TArray<FHoudiniBrushInfo> BrushesInfo;                                            // 0x0190 (size: 0x10)
    class UModel* CombinedModel;                                                      // 0x01A0 (size: 0x8)
    bool bIgnoreInputObject;                                                          // 0x01A8 (size: 0x1)
    TEnumAsByte<EBrushType> CachedInputBrushType;                                     // 0x01A9 (size: 0x1)

}; // Size: 0x1B0

class UHoudiniInputCameraComponent : public UHoudiniInputSceneComponent
{
    float FOV;                                                                        // 0x0190 (size: 0x4)
    float AspectRatio;                                                                // 0x0194 (size: 0x4)
    bool bIsOrthographic;                                                             // 0x0198 (size: 0x1)
    float OrthoWidth;                                                                 // 0x019C (size: 0x4)
    float OrthoNearClipPlane;                                                         // 0x01A0 (size: 0x4)
    float OrthoFarClipPlane;                                                          // 0x01A4 (size: 0x4)

}; // Size: 0x1B0

class UHoudiniInputDataTable : public UHoudiniInputObject
{
}; // Size: 0x130

class UHoudiniInputFoliageType_InstancedStaticMesh : public UHoudiniInputStaticMesh
{
}; // Size: 0x130

class UHoudiniInputGeometryCollection : public UHoudiniInputObject
{
}; // Size: 0x130

class UHoudiniInputGeometryCollectionComponent : public UHoudiniInputSceneComponent
{
}; // Size: 0x190

class UHoudiniInputHoudiniAsset : public UHoudiniInputObject
{
    int32 AssetOutputIndex;                                                           // 0x0128 (size: 0x4)

}; // Size: 0x130

class UHoudiniInputHoudiniSplineComponent : public UHoudiniInputObject
{
    EHoudiniCurveType CurveType;                                                      // 0x0128 (size: 0x1)
    EHoudiniCurveMethod CurveMethod;                                                  // 0x0129 (size: 0x1)
    bool Reversed;                                                                    // 0x012A (size: 0x1)
    class UHoudiniSplineComponent* CachedComponent;                                   // 0x0130 (size: 0x8)

}; // Size: 0x140

class UHoudiniInputInstancedMeshComponent : public UHoudiniInputMeshComponent
{
    TArray<FTransform> InstanceTransforms;                                            // 0x01C0 (size: 0x10)

}; // Size: 0x1D0

class UHoudiniInputLandscape : public UHoudiniInputActor
{
    FTransform CachedInputLandscapeTraqnsform;                                        // 0x0190 (size: 0x60)
    int32 CachedNumLandscapeComponents;                                               // 0x01F0 (size: 0x4)

}; // Size: 0x200

class UHoudiniInputMeshComponent : public UHoudiniInputSceneComponent
{
    TSoftObjectPtr<UStaticMesh> StaticMesh;                                           // 0x0190 (size: 0x30)

}; // Size: 0x1C0

class UHoudiniInputObject : public UObject
{
    TSoftObjectPtr<UObject> InputObject;                                              // 0x0028 (size: 0x30)
    FTransform Transform;                                                             // 0x0060 (size: 0x60)
    EHoudiniInputObjectType Type;                                                     // 0x00C0 (size: 0x1)
    int32 InputNodeId;                                                                // 0x00C4 (size: 0x4)
    int32 InputObjectNodeId;                                                          // 0x00C8 (size: 0x4)
    FGuid Guid;                                                                       // 0x00CC (size: 0x10)
    bool bHasChanged;                                                                 // 0x0108 (size: 0x1)
    bool bNeedsToTriggerUpdate;                                                       // 0x0109 (size: 0x1)
    bool bTransformChanged;                                                           // 0x010A (size: 0x1)
    bool bImportAsReference;                                                          // 0x010B (size: 0x1)
    bool bImportAsReferenceRotScaleEnabled;                                           // 0x010C (size: 0x1)
    bool bImportAsReferenceBboxEnabled;                                               // 0x010D (size: 0x1)
    bool bImportAsReferenceMaterialEnabled;                                           // 0x010E (size: 0x1)
    TArray<FString> MaterialReferences;                                               // 0x0110 (size: 0x10)
    bool bCanDeleteHoudiniNodes;                                                      // 0x0120 (size: 0x1)

}; // Size: 0x130

class UHoudiniInputSceneComponent : public UHoudiniInputObject
{
    FTransform ActorTransform;                                                        // 0x0130 (size: 0x60)

}; // Size: 0x190

class UHoudiniInputSkeletalMesh : public UHoudiniInputObject
{
}; // Size: 0x130

class UHoudiniInputSkeletalMeshComponent : public UHoudiniInputSceneComponent
{
}; // Size: 0x190

class UHoudiniInputSplineComponent : public UHoudiniInputSceneComponent
{
    int32 NumberOfSplineControlPoints;                                                // 0x0190 (size: 0x4)
    float SplineLength;                                                               // 0x0194 (size: 0x4)
    float SplineResolution;                                                           // 0x0198 (size: 0x4)
    bool SplineClosed;                                                                // 0x019C (size: 0x1)
    TArray<FTransform> SplineControlPoints;                                           // 0x01A0 (size: 0x10)

}; // Size: 0x1B0

class UHoudiniInputStaticMesh : public UHoudiniInputObject
{
}; // Size: 0x130

class UHoudiniInstancedActorComponent : public USceneComponent
{
    class UObject* InstancedObject;                                                   // 0x02A0 (size: 0x8)
    TArray<class AActor*> InstancedActors;                                            // 0x02A8 (size: 0x10)

}; // Size: 0x2C0

class UHoudiniInstancedActorComponent_V1 : public USceneComponent
{
}; // Size: 0x2C0

class UHoudiniLandscapeEditLayer : public UObject
{
    TSoftObjectPtr<ALandscapeProxy> LandscapeSoftPtr;                                 // 0x0028 (size: 0x30)
    FString LayerName;                                                                // 0x0058 (size: 0x10)

}; // Size: 0x68

class UHoudiniLandscapePtr : public UObject
{
    TSoftObjectPtr<ALandscapeProxy> LandscapeSoftPtr;                                 // 0x0028 (size: 0x30)
    EHoudiniLandscapeOutputBakeType BakeType;                                         // 0x0058 (size: 0x1)
    FName EditLayerName;                                                              // 0x005C (size: 0x8)

}; // Size: 0x68

class UHoudiniMeshSplitInstancerComponent : public USceneComponent
{
    TArray<class UStaticMeshComponent*> Instances;                                    // 0x02A0 (size: 0x10)
    TArray<class UMaterialInterface*> OverrideMaterials;                              // 0x02B0 (size: 0x10)
    class UStaticMesh* InstancedMesh;                                                 // 0x02C0 (size: 0x8)

}; // Size: 0x2D0

class UHoudiniMeshSplitInstancerComponent_V1 : public USceneComponent
{
}; // Size: 0x2C0

class UHoudiniOutput : public UObject
{
    EHoudiniOutputType Type;                                                          // 0x0028 (size: 0x1)
    TArray<FHoudiniGeoPartObject> HoudiniGeoPartObjects;                              // 0x0030 (size: 0x10)
    TMap<class FHoudiniOutputObjectIdentifier, class FHoudiniOutputObject> OutputObjects; // 0x0040 (size: 0x50)
    TMap<class FHoudiniOutputObjectIdentifier, class FHoudiniInstancedOutput> InstancedOutputs; // 0x0090 (size: 0x50)
    TMap<class FString, class UMaterialInterface*> AssignementMaterials;              // 0x00E0 (size: 0x50)
    TMap<class FString, class UMaterialInterface*> ReplacementMaterials;              // 0x0130 (size: 0x50)
    bool bLandscapeWorldComposition;                                                  // 0x0184 (size: 0x1)
    TArray<class AActor*> HoudiniCreatedSocketActors;                                 // 0x0188 (size: 0x10)
    TArray<class AActor*> HoudiniAttachedSocketActors;                                // 0x0198 (size: 0x10)
    bool bIsEditableNode;                                                             // 0x01A8 (size: 0x1)
    bool bHasEditableNodeBuilt;                                                       // 0x01A9 (size: 0x1)
    bool bIsUpdating;                                                                 // 0x01AA (size: 0x1)
    bool bCanDeleteHoudiniNodes;                                                      // 0x01AB (size: 0x1)

}; // Size: 0x1B0

class UHoudiniPDGAssetLink : public UObject
{
    FString AssetName;                                                                // 0x0028 (size: 0x10)
    FString AssetNodePath;                                                            // 0x0038 (size: 0x10)
    int32 AssetId;                                                                    // 0x0048 (size: 0x4)
    TArray<class UTOPNetwork*> AllTOPNetworks;                                        // 0x0050 (size: 0x10)
    int32 SelectedTOPNetworkIndex;                                                    // 0x0060 (size: 0x4)
    EPDGLinkState LinkState;                                                          // 0x0064 (size: 0x1)
    bool bAutoCook;                                                                   // 0x0065 (size: 0x1)
    bool bUseTOPNodeFilter;                                                           // 0x0066 (size: 0x1)
    bool bUseTOPOutputFilter;                                                         // 0x0067 (size: 0x1)
    FString TOPNodeFilter;                                                            // 0x0068 (size: 0x10)
    FString TOPOutputFilter;                                                          // 0x0078 (size: 0x10)
    int32 NumWorkItems;                                                               // 0x0088 (size: 0x4)
    FAggregatedWorkItemTally WorkItemTally;                                           // 0x0090 (size: 0x28)
    FString OutputCachePath;                                                          // 0x00B8 (size: 0x10)
    bool bNeedsUIRefresh;                                                             // 0x00C8 (size: 0x1)
    class AActor* OutputParentActor;                                                  // 0x00D0 (size: 0x8)
    FDirectoryPath BakeFolder;                                                        // 0x00D8 (size: 0x10)

}; // Size: 0x130

class UHoudiniParameter : public UObject
{
    FString Name;                                                                     // 0x0028 (size: 0x10)
    FString Label;                                                                    // 0x0038 (size: 0x10)
    EHoudiniParameterType ParmType;                                                   // 0x0048 (size: 0x1)
    uint32 TupleSize;                                                                 // 0x004C (size: 0x4)
    int32 NodeID;                                                                     // 0x0050 (size: 0x4)
    int32 ParmId;                                                                     // 0x0054 (size: 0x4)
    int32 ParentParmId;                                                               // 0x0058 (size: 0x4)
    int32 ChildIndex;                                                                 // 0x005C (size: 0x4)
    bool bIsVisible;                                                                  // 0x0060 (size: 0x1)
    bool bIsParentFolderVisible;                                                      // 0x0061 (size: 0x1)
    bool bIsDisabled;                                                                 // 0x0062 (size: 0x1)
    bool bHasChanged;                                                                 // 0x0063 (size: 0x1)
    bool bNeedsToTriggerUpdate;                                                       // 0x0064 (size: 0x1)
    bool bIsDefault;                                                                  // 0x0065 (size: 0x1)
    bool bIsSpare;                                                                    // 0x0066 (size: 0x1)
    bool bJoinNext;                                                                   // 0x0067 (size: 0x1)
    bool bIsChildOfMultiParm;                                                         // 0x0068 (size: 0x1)
    bool bIsDirectChildOfMultiParm;                                                   // 0x0069 (size: 0x1)
    bool bPendingRevertToDefault;                                                     // 0x006A (size: 0x1)
    TArray<int32> TuplePendingRevertToDefault;                                        // 0x0070 (size: 0x10)
    FString Help;                                                                     // 0x0080 (size: 0x10)
    uint32 TagCount;                                                                  // 0x0090 (size: 0x4)
    int32 ValueIndex;                                                                 // 0x0094 (size: 0x4)
    bool bHasExpression;                                                              // 0x0098 (size: 0x1)
    bool bShowExpression;                                                             // 0x0099 (size: 0x1)
    FString ParamExpression;                                                          // 0x00A0 (size: 0x10)
    TMap<class FString, class FString> Tags;                                          // 0x00B0 (size: 0x50)
    bool bAutoUpdate;                                                                 // 0x0100 (size: 0x1)

}; // Size: 0x108

class UHoudiniParameterButton : public UHoudiniParameter
{
}; // Size: 0x108

class UHoudiniParameterButtonStrip : public UHoudiniParameter
{
    int32 Count;                                                                      // 0x0108 (size: 0x4)
    TArray<FString> Labels;                                                           // 0x0110 (size: 0x10)
    TArray<int32> Values;                                                             // 0x0120 (size: 0x10)

}; // Size: 0x130

class UHoudiniParameterChoice : public UHoudiniParameter
{
    int32 IntValue;                                                                   // 0x0108 (size: 0x4)
    int32 DefaultIntValue;                                                            // 0x010C (size: 0x4)
    FString StringValue;                                                              // 0x0110 (size: 0x10)
    FString DefaultStringValue;                                                       // 0x0120 (size: 0x10)
    TArray<FString> StringChoiceValues;                                               // 0x0130 (size: 0x10)
    TArray<FString> StringChoiceLabels;                                               // 0x0140 (size: 0x10)
    bool bIsChildOfRamp;                                                              // 0x0160 (size: 0x1)
    TArray<int32> IntValuesArray;                                                     // 0x0168 (size: 0x10)

}; // Size: 0x178

class UHoudiniParameterColor : public UHoudiniParameter
{
    FLinearColor Color;                                                               // 0x0108 (size: 0x10)
    FLinearColor DefaultColor;                                                        // 0x0118 (size: 0x10)
    bool bIsChildOfRamp;                                                              // 0x0128 (size: 0x1)

}; // Size: 0x130

class UHoudiniParameterFile : public UHoudiniParameter
{
    TArray<FString> Values;                                                           // 0x0108 (size: 0x10)
    TArray<FString> DefaultValues;                                                    // 0x0118 (size: 0x10)
    FString Filters;                                                                  // 0x0128 (size: 0x10)
    bool bIsReadOnly;                                                                 // 0x0138 (size: 0x1)

}; // Size: 0x140

class UHoudiniParameterFloat : public UHoudiniParameter
{
    TArray<float> Values;                                                             // 0x0108 (size: 0x10)
    TArray<float> DefaultValues;                                                      // 0x0118 (size: 0x10)
    FString Unit;                                                                     // 0x0128 (size: 0x10)
    bool bNoSwap;                                                                     // 0x0138 (size: 0x1)
    bool bHasMin;                                                                     // 0x0139 (size: 0x1)
    bool bHasMax;                                                                     // 0x013A (size: 0x1)
    bool bHasUIMin;                                                                   // 0x013B (size: 0x1)
    bool bHasUIMax;                                                                   // 0x013C (size: 0x1)
    bool bIsLogarithmic;                                                              // 0x013D (size: 0x1)
    float Min;                                                                        // 0x0140 (size: 0x4)
    float Max;                                                                        // 0x0144 (size: 0x4)
    float UIMin;                                                                      // 0x0148 (size: 0x4)
    float UIMax;                                                                      // 0x014C (size: 0x4)
    bool bIsChildOfRamp;                                                              // 0x0150 (size: 0x1)

}; // Size: 0x158

class UHoudiniParameterFolder : public UHoudiniParameter
{
    EHoudiniFolderParameterType FolderType;                                           // 0x0108 (size: 0x1)
    bool bExpanded;                                                                   // 0x0109 (size: 0x1)
    bool bChosen;                                                                     // 0x010A (size: 0x1)
    int32 ChildCounter;                                                               // 0x010C (size: 0x4)
    bool bIsContentShown;                                                             // 0x0110 (size: 0x1)

}; // Size: 0x118

class UHoudiniParameterFolderList : public UHoudiniParameter
{
    bool bIsTabMenu;                                                                  // 0x0108 (size: 0x1)
    bool bIsTabsShown;                                                                // 0x0109 (size: 0x1)
    TArray<class UHoudiniParameterFolder*> TabFolders;                                // 0x0110 (size: 0x10)

}; // Size: 0x120

class UHoudiniParameterInt : public UHoudiniParameter
{
    TArray<int32> Values;                                                             // 0x0108 (size: 0x10)
    TArray<int32> DefaultValues;                                                      // 0x0118 (size: 0x10)
    FString Unit;                                                                     // 0x0128 (size: 0x10)
    bool bHasMin;                                                                     // 0x0138 (size: 0x1)
    bool bHasMax;                                                                     // 0x0139 (size: 0x1)
    bool bHasUIMin;                                                                   // 0x013A (size: 0x1)
    bool bHasUIMax;                                                                   // 0x013B (size: 0x1)
    bool bIsLogarithmic;                                                              // 0x013C (size: 0x1)
    int32 Min;                                                                        // 0x0140 (size: 0x4)
    int32 Max;                                                                        // 0x0144 (size: 0x4)
    int32 UIMin;                                                                      // 0x0148 (size: 0x4)
    int32 UIMax;                                                                      // 0x014C (size: 0x4)

}; // Size: 0x150

class UHoudiniParameterLabel : public UHoudiniParameter
{
    TArray<FString> LabelStrings;                                                     // 0x0108 (size: 0x10)

}; // Size: 0x118

class UHoudiniParameterMultiParm : public UHoudiniParameter
{
    bool bIsShown;                                                                    // 0x0108 (size: 0x1)
    int32 Value;                                                                      // 0x010C (size: 0x4)
    FString TemplateName;                                                             // 0x0110 (size: 0x10)
    int32 MultiparmValue;                                                             // 0x0120 (size: 0x4)
    uint32 MultiParmInstanceNum;                                                      // 0x0124 (size: 0x4)
    uint32 MultiParmInstanceLength;                                                   // 0x0128 (size: 0x4)
    uint32 MultiParmInstanceCount;                                                    // 0x012C (size: 0x4)
    uint32 InstanceStartOffset;                                                       // 0x0130 (size: 0x4)
    TArray<EHoudiniMultiParmModificationType> MultiParmInstanceLastModifyArray;       // 0x0138 (size: 0x10)
    int32 DefaultInstanceCount;                                                       // 0x0148 (size: 0x4)

}; // Size: 0x150

class UHoudiniParameterOperatorPath : public UHoudiniParameter
{
    TWeakObjectPtr<class UHoudiniInput> HoudiniInput;                                 // 0x0108 (size: 0x8)

}; // Size: 0x110

class UHoudiniParameterRampColor : public UHoudiniParameterMultiParm
{
    TArray<class UHoudiniParameterRampColorPoint*> Points;                            // 0x0150 (size: 0x10)
    bool bCaching;                                                                    // 0x0160 (size: 0x1)
    TArray<class UHoudiniParameterRampColorPoint*> CachedPoints;                      // 0x0168 (size: 0x10)
    TArray<float> DefaultPositions;                                                   // 0x0178 (size: 0x10)
    TArray<FLinearColor> DefaultValues;                                               // 0x0188 (size: 0x10)
    TArray<int32> DefaultChoices;                                                     // 0x0198 (size: 0x10)
    int32 NumDefaultPoints;                                                           // 0x01A8 (size: 0x4)
    TArray<class UHoudiniParameterRampModificationEvent*> ModificationEvents;         // 0x01B0 (size: 0x10)

}; // Size: 0x1C0

class UHoudiniParameterRampColorPoint : public UObject
{
    float Position;                                                                   // 0x0028 (size: 0x4)
    FLinearColor Value;                                                               // 0x002C (size: 0x10)
    EHoudiniRampInterpolationType Interpolation;                                      // 0x003C (size: 0x1)
    int32 InstanceIndex;                                                              // 0x0040 (size: 0x4)
    class UHoudiniParameterFloat* PositionParentParm;                                 // 0x0048 (size: 0x8)
    class UHoudiniParameterColor* ValueParentParm;                                    // 0x0050 (size: 0x8)
    class UHoudiniParameterChoice* InterpolationParentParm;                           // 0x0058 (size: 0x8)

}; // Size: 0x60

class UHoudiniParameterRampFloat : public UHoudiniParameterMultiParm
{
    TArray<class UHoudiniParameterRampFloatPoint*> Points;                            // 0x0150 (size: 0x10)
    TArray<class UHoudiniParameterRampFloatPoint*> CachedPoints;                      // 0x0160 (size: 0x10)
    TArray<float> DefaultPositions;                                                   // 0x0170 (size: 0x10)
    TArray<float> DefaultValues;                                                      // 0x0180 (size: 0x10)
    TArray<int32> DefaultChoices;                                                     // 0x0190 (size: 0x10)
    int32 NumDefaultPoints;                                                           // 0x01A0 (size: 0x4)
    bool bCaching;                                                                    // 0x01A4 (size: 0x1)
    TArray<class UHoudiniParameterRampModificationEvent*> ModificationEvents;         // 0x01A8 (size: 0x10)

}; // Size: 0x1B8

class UHoudiniParameterRampFloatPoint : public UObject
{
    float Position;                                                                   // 0x0028 (size: 0x4)
    float Value;                                                                      // 0x002C (size: 0x4)
    EHoudiniRampInterpolationType Interpolation;                                      // 0x0030 (size: 0x1)
    int32 InstanceIndex;                                                              // 0x0034 (size: 0x4)
    class UHoudiniParameterFloat* PositionParentParm;                                 // 0x0038 (size: 0x8)
    class UHoudiniParameterFloat* ValueParentParm;                                    // 0x0040 (size: 0x8)
    class UHoudiniParameterChoice* InterpolationParentParm;                           // 0x0048 (size: 0x8)

}; // Size: 0x50

class UHoudiniParameterRampModificationEvent : public UObject
{
    bool bIsInsertEvent;                                                              // 0x0028 (size: 0x1)
    bool bIsFloatRamp;                                                                // 0x0029 (size: 0x1)
    int32 DeleteInstanceIndex;                                                        // 0x002C (size: 0x4)
    float InsertPosition;                                                             // 0x0030 (size: 0x4)
    float InsertFloat;                                                                // 0x0034 (size: 0x4)
    FLinearColor InsertColor;                                                         // 0x0038 (size: 0x10)
    EHoudiniRampInterpolationType InsertInterpolation;                                // 0x0048 (size: 0x1)

}; // Size: 0x50

class UHoudiniParameterSeparator : public UHoudiniParameter
{
}; // Size: 0x108

class UHoudiniParameterString : public UHoudiniParameter
{
    TArray<FString> Values;                                                           // 0x0108 (size: 0x10)
    TArray<FString> DefaultValues;                                                    // 0x0118 (size: 0x10)
    TArray<class UObject*> ChosenAssets;                                              // 0x0128 (size: 0x10)
    bool bIsAssetRef;                                                                 // 0x0138 (size: 0x1)

}; // Size: 0x140

class UHoudiniParameterToggle : public UHoudiniParameter
{
    TArray<int32> Values;                                                             // 0x0108 (size: 0x10)
    TArray<int32> DefaultValues;                                                      // 0x0118 (size: 0x10)

}; // Size: 0x128

class UHoudiniRuntimeSettings : public UObject
{
    TEnumAsByte<EHoudiniRuntimeSettingsSessionType> SessionType;                      // 0x0028 (size: 0x1)
    FString ServerHost;                                                               // 0x0030 (size: 0x10)
    int32 ServerPort;                                                                 // 0x0040 (size: 0x4)
    FString ServerPipeName;                                                           // 0x0048 (size: 0x10)
    bool bStartAutomaticServer;                                                       // 0x0058 (size: 0x1)
    float AutomaticServerTimeout;                                                     // 0x005C (size: 0x4)
    bool bSyncWithHoudiniCook;                                                        // 0x0060 (size: 0x1)
    bool bCookUsingHoudiniTime;                                                       // 0x0061 (size: 0x1)
    bool bSyncViewport;                                                               // 0x0062 (size: 0x1)
    bool bSyncHoudiniViewport;                                                        // 0x0063 (size: 0x1)
    bool bSyncUnrealViewport;                                                         // 0x0064 (size: 0x1)
    bool bShowMultiAssetDialog;                                                       // 0x0065 (size: 0x1)
    bool bPreferHdaMemoryCopyOverHdaSourceFile;                                       // 0x0066 (size: 0x1)
    bool bPauseCookingOnStart;                                                        // 0x0067 (size: 0x1)
    bool bDisplaySlateCookingNotifications;                                           // 0x0068 (size: 0x1)
    FString DefaultTemporaryCookFolder;                                               // 0x0070 (size: 0x10)
    FString DefaultBakeFolder;                                                        // 0x0080 (size: 0x10)
    bool bEnableTheReferenceCountedInputSystem;                                       // 0x0090 (size: 0x1)
    bool MarshallingLandscapesUseDefaultUnrealScaling;                                // 0x0091 (size: 0x1)
    bool MarshallingLandscapesUseFullResolution;                                      // 0x0092 (size: 0x1)
    bool MarshallingLandscapesForceMinMaxValues;                                      // 0x0093 (size: 0x1)
    float MarshallingLandscapesForcedMinValue;                                        // 0x0094 (size: 0x4)
    float MarshallingLandscapesForcedMaxValue;                                        // 0x0098 (size: 0x4)
    bool bAddRotAndScaleAttributesOnCurves;                                           // 0x009C (size: 0x1)
    bool bUseLegacyInputCurves;                                                       // 0x009D (size: 0x1)
    float MarshallingSplineResolution;                                                // 0x00A0 (size: 0x4)
    bool bEnableProxyStaticMesh;                                                      // 0x00A4 (size: 0x1)
    bool bShowDefaultMesh;                                                            // 0x00A5 (size: 0x1)
    bool bPreferNaniteFallbackMesh;                                                   // 0x00A6 (size: 0x1)
    bool bEnableProxyStaticMeshRefinementByTimer;                                     // 0x00A7 (size: 0x1)
    float ProxyMeshAutoRefineTimeoutSeconds;                                          // 0x00A8 (size: 0x4)
    bool bEnableProxyStaticMeshRefinementOnPreSaveWorld;                              // 0x00AC (size: 0x1)
    bool bEnableProxyStaticMeshRefinementOnPreBeginPIE;                               // 0x00AD (size: 0x1)
    uint8 bDoubleSidedGeometry;                                                       // 0x00B0 (size: 0x1)
    class UPhysicalMaterial* PhysMaterial;                                            // 0x00B8 (size: 0x8)
    FBodyInstance DefaultBodyInstance;                                                // 0x00C0 (size: 0x190)
    TEnumAsByte<ECollisionTraceFlag> CollisionTraceFlag;                              // 0x0250 (size: 0x1)
    int32 LightMapResolution;                                                         // 0x0254 (size: 0x4)
    float LpvBiasMultiplier;                                                          // 0x0258 (size: 0x4)
    float GeneratedDistanceFieldResolutionScale;                                      // 0x025C (size: 0x4)
    FWalkableSlopeOverride WalkableSlopeOverride;                                     // 0x0260 (size: 0x10)
    int32 LightMapCoordinateIndex;                                                    // 0x0270 (size: 0x4)
    uint8 bUseMaximumStreamingTexelRatio;                                             // 0x0274 (size: 0x1)
    float StreamingDistanceMultiplier;                                                // 0x0278 (size: 0x4)
    class UFoliageType_InstancedStaticMesh* FoliageDefaultSettings;                   // 0x0280 (size: 0x8)
    TArray<class UAssetUserData*> AssetUserData;                                      // 0x0288 (size: 0x10)
    bool bUseFullPrecisionUVs;                                                        // 0x0298 (size: 0x1)
    int32 SrcLightmapIndex;                                                           // 0x029C (size: 0x4)
    int32 DstLightmapIndex;                                                           // 0x02A0 (size: 0x4)
    int32 MinLightmapResolution;                                                      // 0x02A4 (size: 0x4)
    bool bRemoveDegenerates;                                                          // 0x02A8 (size: 0x1)
    TEnumAsByte<EHoudiniRuntimeSettingsRecomputeFlag> GenerateLightmapUVsFlag;        // 0x02A9 (size: 0x1)
    TEnumAsByte<EHoudiniRuntimeSettingsRecomputeFlag> RecomputeNormalsFlag;           // 0x02AA (size: 0x1)
    TEnumAsByte<EHoudiniRuntimeSettingsRecomputeFlag> RecomputeTangentsFlag;          // 0x02AB (size: 0x1)
    bool bUseMikkTSpace;                                                              // 0x02AC (size: 0x1)
    bool bBuildAdjacencyBuffer;                                                       // 0x02AD (size: 0x1)
    uint8 bComputeWeightedNormals;                                                    // 0x02AE (size: 0x1)
    uint8 bBuildReversedIndexBuffer;                                                  // 0x02AE (size: 0x1)
    uint8 bUseHighPrecisionTangentBasis;                                              // 0x02AE (size: 0x1)
    float DistanceFieldResolutionScale;                                               // 0x02B0 (size: 0x4)
    uint8 bGenerateDistanceFieldAsIfTwoSided;                                         // 0x02B4 (size: 0x1)
    uint8 bSupportFaceRemap;                                                          // 0x02B4 (size: 0x1)
    bool bPDGAsyncCommandletImportEnabled;                                            // 0x02B5 (size: 0x1)
    bool bEnableBackwardCompatibility;                                                // 0x02B6 (size: 0x1)
    bool bAutomaticLegacyHDARebuild;                                                  // 0x02B7 (size: 0x1)
    bool bUseCustomHoudiniLocation;                                                   // 0x02B8 (size: 0x1)
    FDirectoryPath CustomHoudiniLocation;                                             // 0x02C0 (size: 0x10)
    TEnumAsByte<EHoudiniExecutableType> HoudiniExecutable;                            // 0x02D0 (size: 0x1)
    int32 CookingThreadStackSize;                                                     // 0x02D4 (size: 0x4)
    FString HoudiniEnvironmentFiles;                                                  // 0x02D8 (size: 0x10)
    FString OtlSearchPath;                                                            // 0x02E8 (size: 0x10)
    FString DsoSearchPath;                                                            // 0x02F8 (size: 0x10)
    FString ImageDsoSearchPath;                                                       // 0x0308 (size: 0x10)
    FString AudioDsoSearchPath;                                                       // 0x0318 (size: 0x10)

}; // Size: 0x328

class UHoudiniSplineComponent : public USceneComponent
{
    TArray<FTransform> CurvePoints;                                                   // 0x02A8 (size: 0x10)
    TArray<FVector3d> DisplayPoints;                                                  // 0x02B8 (size: 0x10)
    TArray<int32> DisplayPointIndexDivider;                                           // 0x02C8 (size: 0x10)
    FString HoudiniSplineName;                                                        // 0x02D8 (size: 0x10)
    bool bClosed;                                                                     // 0x02E8 (size: 0x1)
    bool bReversed;                                                                   // 0x02E9 (size: 0x1)
    int32 CurveOrder;                                                                 // 0x02EC (size: 0x4)
    bool bIsHoudiniSplineVisible;                                                     // 0x02F0 (size: 0x1)
    EHoudiniCurveType CurveType;                                                      // 0x02F1 (size: 0x1)
    EHoudiniCurveMethod CurveMethod;                                                  // 0x02F2 (size: 0x1)
    EHoudiniCurveBreakpointParameterization CurveBreakpointParameterization;          // 0x02F3 (size: 0x1)
    bool bIsOutputCurve;                                                              // 0x02F4 (size: 0x1)
    bool bCookOnCurveChanged;                                                         // 0x02F5 (size: 0x1)
    bool bIsLegacyInputCurve;                                                         // 0x02F6 (size: 0x1)
    bool bHasChanged;                                                                 // 0x0590 (size: 0x1)
    bool bNeedsToTriggerUpdate;                                                       // 0x0591 (size: 0x1)
    bool bIsInputCurve;                                                               // 0x0592 (size: 0x1)
    bool bIsEditableOutputCurve;                                                      // 0x0593 (size: 0x1)
    int32 NodeID;                                                                     // 0x0594 (size: 0x4)
    FString PartName;                                                                 // 0x0598 (size: 0x10)

}; // Size: 0x5B0

class UHoudiniSplineComponent_V1 : public USceneComponent
{
}; // Size: 0x3C0

class UHoudiniStaticMesh : public UObject
{
    bool bHasNormals;                                                                 // 0x0028 (size: 0x1)
    bool bHasTangents;                                                                // 0x0029 (size: 0x1)
    bool bHasColors;                                                                  // 0x002A (size: 0x1)
    uint32 NumUVLayers;                                                               // 0x002C (size: 0x4)
    bool bHasPerFaceMaterials;                                                        // 0x0030 (size: 0x1)
    TArray<FVector3f> VertexPositions;                                                // 0x0038 (size: 0x10)
    TArray<FIntVector> TriangleIndices;                                               // 0x0048 (size: 0x10)
    TArray<FColor> VertexInstanceColors;                                              // 0x0058 (size: 0x10)
    TArray<FVector3f> VertexInstanceNormals;                                          // 0x0068 (size: 0x10)
    TArray<FVector3f> VertexInstanceUTangents;                                        // 0x0078 (size: 0x10)
    TArray<FVector3f> VertexInstanceVTangents;                                        // 0x0088 (size: 0x10)
    TArray<FVector2D> VertexInstanceUVs;                                              // 0x0098 (size: 0x10)
    TArray<int32> MaterialIDsPerTriangle;                                             // 0x00A8 (size: 0x10)
    TArray<FStaticMaterial> StaticMaterials;                                          // 0x00B8 (size: 0x10)

    void SetVertexPosition(uint32 InVertexIndex, const FVector3f& InPosition);
    void SetTriangleVertexVTangent(uint32 InTriangleIndex, uint8 InTriangleVertexIndex, const FVector3f& InVTangent);
    void SetTriangleVertexUV(uint32 InTriangleIndex, uint8 InTriangleVertexIndex, uint8 InUVLayer, const FVector2D& InUV);
    void SetTriangleVertexUTangent(uint32 InTriangleIndex, uint8 InTriangleVertexIndex, const FVector3f& InUTangent);
    void SetTriangleVertexNormal(uint32 InTriangleIndex, uint8 InTriangleVertexIndex, const FVector3f& InNormal);
    void SetTriangleVertexIndices(uint32 InTriangleIndex, const FIntVector& InTriangleVertexIndices);
    void SetTriangleVertexColor(uint32 InTriangleIndex, uint8 InTriangleVertexIndex, const FColor& inColor);
    void SetTriangleMaterialID(uint32 InTriangleIndex, int32 InMaterialID);
    void SetStaticMaterial(uint32 InMaterialIndex, const FStaticMaterial& InStaticMaterial);
    void SetNumUVLayers(uint32 InNumUVLayers);
    void SetNumStaticMaterials(uint32 InNumStaticMaterials);
    void SetHasTangents(bool bInHasTangents);
    void SetHasPerFaceMaterials(bool bInHasPerFaceMaterials);
    void SetHasNormals(bool bInHasNormals);
    void SetHasColors(bool bInHasColors);
    void Optimize();
    bool IsValid(bool bInSkipVertexIndicesCheck);
    void Initialize(uint32 InNumVertices, uint32 InNumTriangles, uint32 InNumUVLayers, uint32 InInitialNumStaticMaterials, bool bInHasNormals, bool bInHasTangents, bool bInHasColors, bool bInHasPerFaceMaterials);
    bool HasTangents();
    bool HasPerFaceMaterials();
    bool HasNormals();
    bool HasColors();
    TArray<FVector3f> GetVertexPositions();
    TArray<FVector3f> GetVertexInstanceVTangents();
    TArray<FVector2D> GetVertexInstanceUVs();
    TArray<FVector3f> GetVertexInstanceUTangents();
    TArray<FVector3f> GetVertexInstanceNormals();
    TArray<FColor> GetVertexInstanceColors();
    TArray<FIntVector> GetTriangleIndices();
    TArray<FStaticMaterial> GetStaticMaterials();
    uint32 GetNumVertices();
    uint32 GetNumVertexInstances();
    uint32 GetNumUVLayers();
    uint32 GetNumTriangles();
    uint32 GetNumStaticMaterials();
    int32 GetMaterialIndex(FName InMaterialSlotName);
    TArray<int32> GetMaterialIDsPerTriangle();
    class UMaterialInterface* GetMaterial(int32 InMaterialIndex);
    void CalculateTangents(bool bInComputeWeightedNormals);
    void CalculateNormals(bool bInComputeWeightedNormals);
    FBox CalcBounds();
    uint32 AddStaticMaterial(const FStaticMaterial& InStaticMaterial);
}; // Size: 0xC8

class UHoudiniStaticMeshComponent : public UMeshComponent
{
    class UHoudiniStaticMesh* Mesh;                                                   // 0x0570 (size: 0x8)
    FBox LocalBounds;                                                                 // 0x0578 (size: 0x38)
    bool bHoudiniIconVisible;                                                         // 0x05B0 (size: 0x1)

    void SetMesh(class UHoudiniStaticMesh* InMesh);
    void SetHoudiniIconVisible(bool bInHoudiniIconVisible);
    void NotifyMeshUpdated();
    bool IsHoudiniIconVisible();
    class UHoudiniStaticMesh* GetMesh();
}; // Size: 0x5C0

class UTOPNetwork : public UObject
{
    int32 NodeID;                                                                     // 0x0028 (size: 0x4)
    FString NodeName;                                                                 // 0x0030 (size: 0x10)
    FString NodePath;                                                                 // 0x0040 (size: 0x10)
    TArray<class UTOPNode*> AllTOPNodes;                                              // 0x0050 (size: 0x10)
    int32 SelectedTOPIndex;                                                           // 0x0060 (size: 0x4)
    FString ParentName;                                                               // 0x0068 (size: 0x10)
    bool bShowResults;                                                                // 0x0078 (size: 0x1)
    bool bAutoLoadResults;                                                            // 0x0079 (size: 0x1)

}; // Size: 0x98

class UTOPNode : public UObject
{
    int32 NodeID;                                                                     // 0x0028 (size: 0x4)
    FString NodeName;                                                                 // 0x0030 (size: 0x10)
    FString NodePath;                                                                 // 0x0040 (size: 0x10)
    FString ParentName;                                                               // 0x0050 (size: 0x10)
    class UObject* WorkResultParent;                                                  // 0x0060 (size: 0x8)
    TArray<FTOPWorkResult> WorkResult;                                                // 0x0068 (size: 0x10)
    bool bHidden;                                                                     // 0x0078 (size: 0x1)
    bool bAutoLoad;                                                                   // 0x0079 (size: 0x1)
    EPDGNodeState NodeState;                                                          // 0x007A (size: 0x1)
    bool bCachedHaveNotLoadedWorkResults;                                             // 0x007B (size: 0x1)
    bool bCachedHaveLoadedWorkResults;                                                // 0x007C (size: 0x1)
    bool bHasChildNodes;                                                              // 0x007D (size: 0x1)
    TSet<FString> ClearedLandscapeLayers;                                             // 0x0080 (size: 0x50)
    bool bShow;                                                                       // 0x0180 (size: 0x1)
    TMap<class FString, class FHoudiniPDGWorkResultObjectBakedOutput> BakedWorkResultObjectOutputs; // 0x0188 (size: 0x50)
    FWorkItemTally WorkItemTally;                                                     // 0x01D8 (size: 0x238)
    FAggregatedWorkItemTally AggregatedWorkItemTally;                                 // 0x0410 (size: 0x28)
    bool bHasReceivedCookCompleteEvent;                                               // 0x0438 (size: 0x1)
    FOutputActorOwner OutputActorOwner;                                               // 0x0440 (size: 0x10)

}; // Size: 0x450

#endif
