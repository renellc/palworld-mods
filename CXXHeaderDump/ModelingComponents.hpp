#ifndef UE4SS_SDK_ModelingComponents_HPP
#define UE4SS_SDK_ModelingComponents_HPP

#include "ModelingComponents_enums.hpp"

struct FCreateMeshObjectParams
{
    class UPrimitiveComponent* SourceComponent;                                       // 0x0000 (size: 0x8)
    ECreateObjectTypeHint TypeHint;                                                   // 0x0008 (size: 0x1)
    UClass* TypeHintClass;                                                            // 0x0010 (size: 0x8)
    int32 TypeHintExtended;                                                           // 0x0018 (size: 0x4)
    class UWorld* TargetWorld;                                                        // 0x0020 (size: 0x8)
    FTransform Transform;                                                             // 0x0030 (size: 0x60)
    FString BaseName;                                                                 // 0x0090 (size: 0x10)
    TArray<class UMaterialInterface*> Materials;                                      // 0x00A0 (size: 0x10)
    TArray<class UMaterialInterface*> AssetMaterials;                                 // 0x00B0 (size: 0x10)
    bool bEnableCollision;                                                            // 0x00C0 (size: 0x1)
    TEnumAsByte<ECollisionTraceFlag> CollisionMode;                                   // 0x00C1 (size: 0x1)
    bool bEnableRaytracingSupport;                                                    // 0x00C2 (size: 0x1)
    bool bEnableRecomputeNormals;                                                     // 0x00C3 (size: 0x1)
    bool bEnableRecomputeTangents;                                                    // 0x00C4 (size: 0x1)
    bool bEnableNanite;                                                               // 0x00C5 (size: 0x1)
    float NaniteProxyTrianglePercent;                                                 // 0x00C8 (size: 0x4)
    FMeshNaniteSettings NaniteSettings;                                               // 0x00CC (size: 0x1C)

}; // Size: 0x5E0

struct FCreateMeshObjectResult
{
    ECreateModelingObjectResult ResultCode;                                           // 0x0000 (size: 0x1)
    class AActor* NewActor;                                                           // 0x0008 (size: 0x8)
    class UPrimitiveComponent* NewComponent;                                          // 0x0010 (size: 0x8)
    class UObject* NewAsset;                                                          // 0x0018 (size: 0x8)

}; // Size: 0x20

struct FCreateTextureObjectParams
{
    int32 TypeHintExtended;                                                           // 0x0000 (size: 0x4)
    class UWorld* TargetWorld;                                                        // 0x0008 (size: 0x8)
    class UObject* StoreRelativeToObject;                                             // 0x0010 (size: 0x8)
    FString BaseName;                                                                 // 0x0018 (size: 0x10)
    class UTexture2D* GeneratedTransientTexture;                                      // 0x0028 (size: 0x8)

}; // Size: 0x30

struct FCreateTextureObjectResult
{
    ECreateModelingObjectResult ResultCode;                                           // 0x0000 (size: 0x1)
    class UObject* NewAsset;                                                          // 0x0008 (size: 0x8)

}; // Size: 0x10

struct FModelingToolsAxisFilter
{
    bool bAxisX;                                                                      // 0x0000 (size: 0x1)
    bool bAxisY;                                                                      // 0x0001 (size: 0x1)
    bool bAxisZ;                                                                      // 0x0002 (size: 0x1)

}; // Size: 0x3

struct FRenderableTriangle
{
    class UMaterialInterface* Material;                                               // 0x0000 (size: 0x8)
    FRenderableTriangleVertex Vertex0;                                                // 0x0008 (size: 0x48)
    FRenderableTriangleVertex Vertex1;                                                // 0x0050 (size: 0x48)
    FRenderableTriangleVertex Vertex2;                                                // 0x0098 (size: 0x48)

}; // Size: 0xE0

struct FRenderableTriangleVertex
{
    FVector Position;                                                                 // 0x0000 (size: 0x18)
    FVector2D UV;                                                                     // 0x0018 (size: 0x10)
    FVector Normal;                                                                   // 0x0028 (size: 0x18)
    FColor Color;                                                                     // 0x0040 (size: 0x4)

}; // Size: 0x48

class APreviewGeometryActor : public AInternalToolFrameworkActor
{
}; // Size: 0x298

class APreviewMeshActor : public AInternalToolFrameworkActor
{
}; // Size: 0x298

class IDynamicMeshCommitter : public IInterface
{
}; // Size: 0x28

class IDynamicMeshProvider : public IInterface
{
}; // Size: 0x28

class IPersistentDynamicMeshSource : public IInterface
{
}; // Size: 0x28

class IToolActivityHost : public IInterface
{
}; // Size: 0x28

class UBaseCreateFromSelectedHandleSourceProperties : public UOnAcceptHandleSourcesProperties
{
    EBaseCreateFromSelectedTargetType OutputWriteTo;                                  // 0x00B0 (size: 0x4)
    FString OutputNewName;                                                            // 0x00B8 (size: 0x10)
    FString OutputExistingName;                                                       // 0x00C8 (size: 0x10)

}; // Size: 0xD8

class UBaseCreateFromSelectedTool : public UMultiSelectionMeshEditingTool
{
    class UTransformInputsToolProperties* TransformProperties;                        // 0x00C0 (size: 0x8)
    class UCreateMeshObjectTypeProperties* OutputTypeProperties;                      // 0x00C8 (size: 0x8)
    class UBaseCreateFromSelectedHandleSourceProperties* HandleSourcesProperties;     // 0x00D0 (size: 0x8)
    class UMeshOpPreviewWithBackgroundCompute* Preview;                               // 0x00D8 (size: 0x8)
    TArray<class UTransformProxy*> TransformProxies;                                  // 0x00E0 (size: 0x10)
    TArray<class UCombinedTransformGizmo*> TransformGizmos;                           // 0x00F0 (size: 0x10)

}; // Size: 0x100

class UBaseCreateFromSelectedToolBuilder : public UMultiSelectionMeshEditingToolBuilder
{
}; // Size: 0x28

class UBaseMeshProcessingTool : public USingleSelectionTool
{
    class UMeshOpPreviewWithBackgroundCompute* Preview;                               // 0x00C8 (size: 0x8)

}; // Size: 0x400

class UBaseMeshProcessingToolBuilder : public UInteractiveToolWithToolTargetsBuilder
{
}; // Size: 0x28

class UBaseVoxelTool : public UBaseCreateFromSelectedTool
{
    class UVoxelProperties* VoxProperties;                                            // 0x0100 (size: 0x8)

}; // Size: 0x118

class UCollectSurfacePathMechanic : public UInteractionMechanic
{
}; // Size: 0x5C0

class UConstructionPlaneMechanic : public UInteractionMechanic
{
    class UCombinedTransformGizmo* PlaneTransformGizmo;                               // 0x00C8 (size: 0x8)
    class UTransformProxy* PlaneTransformProxy;                                       // 0x00D0 (size: 0x8)
    class USingleClickInputBehavior* ClickToSetPlaneBehavior;                         // 0x00E0 (size: 0x8)

}; // Size: 0xF0

class UCreateMeshObjectTypeProperties : public UInteractiveToolPropertySet
{
    FString OutputType;                                                               // 0x00A8 (size: 0x10)
    TSubclassOf<class AVolume> VolumeType;                                            // 0x00B8 (size: 0x8)
    TArray<FString> OutputTypeNamesList;                                              // 0x00C0 (size: 0x10)
    bool bShowVolumeList;                                                             // 0x00D0 (size: 0x1)

    bool ShouldShowPropertySet();
    TArray<FString> GetOutputTypeNamesFunc();
    ECreateObjectTypeHint GetCurrentCreateMeshType();
}; // Size: 0xD8

class UCurveControlPointsMechanic : public UInteractionMechanic
{
    class USingleClickInputBehavior* ClickBehavior;                                   // 0x0040 (size: 0x8)
    class UMouseHoverBehavior* HoverBehavior;                                         // 0x0048 (size: 0x8)
    class APreviewGeometryActor* PreviewGeometryActor;                                // 0x04E8 (size: 0x8)
    class UPointSetComponent* DrawnControlPoints;                                     // 0x04F0 (size: 0x8)
    class ULineSetComponent* DrawnControlSegments;                                    // 0x04F8 (size: 0x8)
    class UPointSetComponent* PreviewPoint;                                           // 0x0500 (size: 0x8)
    class ULineSetComponent* PreviewSegment;                                          // 0x0508 (size: 0x8)
    class UTransformProxy* PointTransformProxy;                                       // 0x0588 (size: 0x8)
    class UCombinedTransformGizmo* PointTransformGizmo;                               // 0x0590 (size: 0x8)

}; // Size: 0x680

class UDEPRECATED_PersistentMeshSelectionManager : public UObject
{
    class UInteractiveToolsContext* ParentContext;                                    // 0x0028 (size: 0x8)
    class UPersistentMeshSelection* ActiveSelection;                                  // 0x0030 (size: 0x8)
    class UPreviewGeometry* SelectionDisplay;                                         // 0x0038 (size: 0x8)

}; // Size: 0x40

class UDragAlignmentMechanic : public UInteractionMechanic
{
}; // Size: 0x260

class UDynamicMeshReplacementChangeTarget : public UObject
{
}; // Size: 0x58

class UGeometrySelectionEditCommand : public UInteractiveCommand
{
}; // Size: 0x28

class UGeometrySelectionEditCommandArguments : public UInteractiveCommandArguments
{
}; // Size: 0x48

class UGeometrySelectionManager : public UObject
{
    class UGeometrySelectionEditCommandArguments* SelectionArguments;                 // 0x0050 (size: 0x8)
    class UInteractiveToolsContext* ToolsContext;                                     // 0x0060 (size: 0x8)
    class UPersistentMeshSelection* OldSelection;                                     // 0x0148 (size: 0x8)

}; // Size: 0x150

class UInteractiveToolActivity : public UInteractionMechanic
{
}; // Size: 0x30

class ULatticeControlPointsMechanic : public UInteractionMechanic
{
    class APreviewGeometryActor* PreviewGeometryActor;                                // 0x0220 (size: 0x8)
    class UPointSetComponent* DrawnControlPoints;                                     // 0x0228 (size: 0x8)
    class ULineSetComponent* DrawnLatticeEdges;                                       // 0x0230 (size: 0x8)
    class UTransformProxy* PointTransformProxy;                                       // 0x02E0 (size: 0x8)
    class UCombinedTransformGizmo* PointTransformGizmo;                               // 0x02E8 (size: 0x8)
    class URectangleMarqueeMechanic* MarqueeMechanic;                                 // 0x0348 (size: 0x8)

}; // Size: 0x500

class ULineSetComponent : public UMeshComponent
{
    class UMaterialInterface* LineMaterial;                                           // 0x0570 (size: 0x8)
    FBoxSphereBounds Bounds;                                                          // 0x0578 (size: 0x38)
    bool bBoundsDirty;                                                                // 0x05B0 (size: 0x1)

}; // Size: 0x5F0

class UMeshElementsVisualizer : public UPreviewGeometry
{
    class UMeshElementsVisualizerProperties* Settings;                                // 0x00D0 (size: 0x8)
    class UMeshWireframeComponent* WireframeComponent;                                // 0x00D8 (size: 0x8)

}; // Size: 0xF8

class UMeshElementsVisualizerProperties : public UInteractiveToolPropertySet
{
    bool bVisible;                                                                    // 0x00A8 (size: 0x1)
    bool bShowWireframe;                                                              // 0x00A9 (size: 0x1)
    bool bShowBorders;                                                                // 0x00AA (size: 0x1)
    bool bShowUVSeams;                                                                // 0x00AB (size: 0x1)
    bool bShowNormalSeams;                                                            // 0x00AC (size: 0x1)
    bool bShowColorSeams;                                                             // 0x00AD (size: 0x1)
    float ThicknessScale;                                                             // 0x00B0 (size: 0x4)
    FColor WireframeColor;                                                            // 0x00B4 (size: 0x4)
    FColor BoundaryEdgeColor;                                                         // 0x00B8 (size: 0x4)
    FColor UVSeamColor;                                                               // 0x00BC (size: 0x4)
    FColor NormalSeamColor;                                                           // 0x00C0 (size: 0x4)
    FColor ColorSeamColor;                                                            // 0x00C4 (size: 0x4)
    float DepthBias;                                                                  // 0x00C8 (size: 0x4)
    bool bAdjustDepthBiasUsingMeshSize;                                               // 0x00CC (size: 0x1)

}; // Size: 0xD0

class UMeshOpPreviewWithBackgroundCompute : public UObject
{
    class UPreviewMesh* PreviewMesh;                                                  // 0x0058 (size: 0x8)
    TArray<class UMaterialInterface*> StandardMaterials;                              // 0x0060 (size: 0x10)
    class UMaterialInterface* OverrideMaterial;                                       // 0x0070 (size: 0x8)
    class UMaterialInterface* WorkingMaterial;                                        // 0x0078 (size: 0x8)
    class UMaterialInterface* SecondaryMaterial;                                      // 0x0080 (size: 0x8)
    TWeakObjectPtr<class UWorld> PreviewWorld;                                        // 0x0088 (size: 0x8)

}; // Size: 0xB8

class UMeshSurfacePointMeshEditingToolBuilder : public UMeshSurfacePointToolBuilder
{
}; // Size: 0x30

class UMeshWireframeComponent : public UMeshComponent
{
    float LineDepthBias;                                                              // 0x0570 (size: 0x4)
    float LineDepthBiasSizeScale;                                                     // 0x0574 (size: 0x4)
    float ThicknessScale;                                                             // 0x0578 (size: 0x4)
    bool bEnableWireframe;                                                            // 0x057C (size: 0x1)
    FColor WireframeColor;                                                            // 0x0580 (size: 0x4)
    float WireframeThickness;                                                         // 0x0584 (size: 0x4)
    bool bEnableBoundaryEdges;                                                        // 0x0588 (size: 0x1)
    FColor BoundaryEdgeColor;                                                         // 0x058C (size: 0x4)
    float BoundaryEdgeThickness;                                                      // 0x0590 (size: 0x4)
    bool bEnableUVSeams;                                                              // 0x0594 (size: 0x1)
    FColor UVSeamColor;                                                               // 0x0598 (size: 0x4)
    float UVSeamThickness;                                                            // 0x059C (size: 0x4)
    bool bEnableNormalSeams;                                                          // 0x05A0 (size: 0x1)
    FColor NormalSeamColor;                                                           // 0x05A4 (size: 0x4)
    float NormalSeamThickness;                                                        // 0x05A8 (size: 0x4)
    bool bEnableColorSeams;                                                           // 0x05AC (size: 0x1)
    FColor ColorSeamColor;                                                            // 0x05B0 (size: 0x4)
    float ColorSeamThickness;                                                         // 0x05B4 (size: 0x4)
    class UMaterialInterface* LineMaterial;                                           // 0x05B8 (size: 0x8)
    FBoxSphereBounds LocalBounds;                                                     // 0x05C0 (size: 0x38)

}; // Size: 0x610

class UModelingComponentsSettings : public UDeveloperSettings
{
    bool bEnableRayTracingWhileEditing;                                               // 0x0038 (size: 0x1)
    bool bEnableRayTracing;                                                           // 0x0039 (size: 0x1)
    bool bEnableCollision;                                                            // 0x003A (size: 0x1)
    TEnumAsByte<ECollisionTraceFlag> CollisionMode;                                   // 0x003B (size: 0x1)

}; // Size: 0x40

class UModelingObjectsCreationAPI : public UObject
{

    FCreateTextureObjectResult CreateTextureObject(const FCreateTextureObjectParams& CreateTexParams);
    FCreateMeshObjectResult CreateMeshObject(const FCreateMeshObjectParams& CreateMeshParams);
}; // Size: 0x28

class UModelingSceneSnappingManager : public USceneSnappingManager
{
    class UInteractiveToolsContext* ParentContext;                                    // 0x0028 (size: 0x8)

}; // Size: 0x150

class UMultiSelectionMeshEditingTool : public UMultiSelectionTool
{
    TWeakObjectPtr<class UWorld> TargetWorld;                                         // 0x00B0 (size: 0x8)

}; // Size: 0xB8

class UMultiSelectionMeshEditingToolBuilder : public UInteractiveToolWithToolTargetsBuilder
{
}; // Size: 0x28

class UMultiTransformer : public UObject
{
    class UInteractiveGizmoManager* GizmoManager;                                     // 0x0088 (size: 0x8)
    class UCombinedTransformGizmo* TransformGizmo;                                    // 0x0100 (size: 0x8)
    class UTransformProxy* TransformProxy;                                            // 0x0108 (size: 0x8)
    class UDragAlignmentMechanic* DragAlignmentMechanic;                              // 0x0110 (size: 0x8)

}; // Size: 0x1B0

class UOctreeDynamicMeshComponent : public UBaseDynamicMeshComponent
{
    class UDynamicMesh* MeshObject;                                                   // 0x0630 (size: 0x8)

    void SetDynamicMesh(class UDynamicMesh* NewMesh);
}; // Size: 0x6F0

class UOnAcceptHandleSourcesProperties : public UOnAcceptHandleSourcesPropertiesBase
{
    EHandleSourcesMethod HandleInputs;                                                // 0x00A8 (size: 0x1)

}; // Size: 0xB0

class UOnAcceptHandleSourcesPropertiesBase : public UInteractiveToolPropertySet
{
}; // Size: 0xA8

class UOnAcceptHandleSourcesPropertiesSingle : public UOnAcceptHandleSourcesPropertiesBase
{
    EHandleSourcesMethod HandleInputs;                                                // 0x00A8 (size: 0x1)

}; // Size: 0xB0

class UPersistentMeshSelection : public UObject
{
}; // Size: 0x88

class UPlaneDistanceFromHitMechanic : public UInteractionMechanic
{
}; // Size: 0x510

class UPointSetComponent : public UMeshComponent
{
    class UMaterialInterface* PointMaterial;                                          // 0x0570 (size: 0x8)
    FBoxSphereBounds Bounds;                                                          // 0x0578 (size: 0x38)
    bool bBoundsDirty;                                                                // 0x05B0 (size: 0x1)

}; // Size: 0x5F0

class UPolyEditPreviewMesh : public UPreviewMesh
{
}; // Size: 0x550

class UPolyLassoMarqueeMechanic : public UInteractionMechanic
{
    float SpacingTolerance;                                                           // 0x0088 (size: 0x4)
    float LineThickness;                                                              // 0x008C (size: 0x4)
    FLinearColor LineColor;                                                           // 0x0090 (size: 0x10)
    FLinearColor ClosedColor;                                                         // 0x00A0 (size: 0x10)
    bool bEnableFreehandPolygons;                                                     // 0x00B0 (size: 0x1)
    bool bEnableMultiClickPolygons;                                                   // 0x00B1 (size: 0x1)
    class UClickDragInputBehavior* ClickDragBehavior;                                 // 0x00B8 (size: 0x8)
    class UMouseHoverBehavior* HoverBehavior;                                         // 0x00C0 (size: 0x8)

}; // Size: 0x1D0

class UPolygonSelectionMechanic : public UInteractionMechanic
{
    class UPolygonSelectionMechanicProperties* Properties;                            // 0x0078 (size: 0x8)
    class UMouseHoverBehavior* HoverBehavior;                                         // 0x00E0 (size: 0x8)
    class USingleClickOrDragInputBehavior* ClickOrDragBehavior;                       // 0x00E8 (size: 0x8)
    class URectangleMarqueeMechanic* MarqueeMechanic;                                 // 0x00F0 (size: 0x8)
    class APreviewGeometryActor* PreviewGeometryActor;                                // 0x06D0 (size: 0x8)
    class UTriangleSetComponent* DrawnTriangleSetComponent;                           // 0x06D8 (size: 0x8)
    class UMaterialInterface* HighlightedFaceMaterial;                                // 0x0730 (size: 0x8)

}; // Size: 0xB00

class UPolygonSelectionMechanicProperties : public UInteractiveToolPropertySet
{
    bool bSelectVertices;                                                             // 0x00A8 (size: 0x1)
    bool bSelectEdges;                                                                // 0x00A9 (size: 0x1)
    bool bSelectFaces;                                                                // 0x00AA (size: 0x1)
    bool bSelectEdgeLoops;                                                            // 0x00AB (size: 0x1)
    bool bSelectEdgeRings;                                                            // 0x00AC (size: 0x1)
    bool bHitBackFaces;                                                               // 0x00AD (size: 0x1)
    bool bEnableMarquee;                                                              // 0x00AE (size: 0x1)
    bool bMarqueeIgnoreOcclusion;                                                     // 0x00AF (size: 0x1)
    bool bPreferProjectedElement;                                                     // 0x00B0 (size: 0x1)
    bool bSelectDownRay;                                                              // 0x00B1 (size: 0x1)
    bool bIgnoreOcclusion;                                                            // 0x00B2 (size: 0x1)

    void SelectAll();
    void InvertSelection();
}; // Size: 0xC0

class UPolygroupLayersProperties : public UInteractiveToolPropertySet
{
    FName ActiveGroupLayer;                                                           // 0x00A8 (size: 0x8)
    TArray<FString> GroupLayersList;                                                  // 0x00B0 (size: 0x10)

    TArray<FString> GetGroupLayersFunc();
}; // Size: 0xC0

class UPreviewGeometry : public UObject
{
    class APreviewGeometryActor* ParentActor;                                         // 0x0028 (size: 0x8)
    TMap<class FString, class ULineSetComponent*> LineSets;                           // 0x0030 (size: 0x50)
    TMap<class FString, class UPointSetComponent*> PointSets;                         // 0x0080 (size: 0x50)

    bool SetPointSetVisibility(FString PointSetIdentifier, bool bVisible);
    bool SetPointSetMaterial(FString PointSetIdentifier, class UMaterialInterface* NewMaterial);
    bool SetLineSetVisibility(FString LineSetIdentifier, bool bVisible);
    bool SetLineSetMaterial(FString LineSetIdentifier, class UMaterialInterface* NewMaterial);
    void SetAllPointSetsMaterial(class UMaterialInterface* Material);
    void SetAllLineSetsMaterial(class UMaterialInterface* Material);
    bool RemovePointSet(FString PointSetIdentifier, bool bDestroy);
    bool RemoveLineSet(FString LineSetIdentifier, bool bDestroy);
    void RemoveAllPointSets(bool bDestroy);
    void RemoveAllLineSets(bool bDestroy);
    class APreviewGeometryActor* GetActor();
    class UPointSetComponent* FindPointSet(FString PointSetIdentifier);
    class ULineSetComponent* FindLineSet(FString LineSetIdentifier);
    void Disconnect();
    void CreateInWorld(class UWorld* World, const FTransform& WithTransform);
    class UPointSetComponent* AddPointSet(FString PointSetIdentifier);
    class ULineSetComponent* AddLineSet(FString LineSetIdentifier);
}; // Size: 0xD0

class UPreviewMesh : public UObject
{
    bool bBuildSpatialDataStructure;                                                  // 0x0040 (size: 0x1)
    class UDynamicMeshComponent* DynamicMeshComponent;                                // 0x0050 (size: 0x8)

}; // Size: 0x140

class URectangleMarqueeMechanic : public UInteractionMechanic
{
    bool bUseExternalClickDragBehavior;                                               // 0x0038 (size: 0x1)
    bool bUseExternalUpdateCameraState;                                               // 0x0039 (size: 0x1)
    double OnDragRectangleChangedDeferredThreshold;                                   // 0x0080 (size: 0x8)
    class UClickDragInputBehavior* ClickDragBehavior;                                 // 0x00D0 (size: 0x8)

}; // Size: 0x220

class USingleSelectionMeshEditingTool : public USingleSelectionTool
{
    TWeakObjectPtr<class UWorld> TargetWorld;                                         // 0x00A8 (size: 0x8)
    class UPersistentMeshSelection* InputSelection;                                   // 0x00B0 (size: 0x8)

}; // Size: 0xB8

class USingleSelectionMeshEditingToolBuilder : public UInteractiveToolWithToolTargetsBuilder
{
}; // Size: 0x28

class USpaceCurveDeformationMechanic : public UInteractionMechanic
{
    class USingleClickInputBehavior* ClickBehavior;                                   // 0x0040 (size: 0x8)
    class UMouseHoverBehavior* HoverBehavior;                                         // 0x0048 (size: 0x8)
    class USpaceCurveDeformationMechanicPropertySet* TransformProperties;             // 0x0068 (size: 0x8)
    class APreviewGeometryActor* PreviewGeometryActor;                                // 0x0168 (size: 0x8)
    class UPointSetComponent* RenderPoints;                                           // 0x0170 (size: 0x8)
    class ULineSetComponent* RenderSegments;                                          // 0x0178 (size: 0x8)
    class UTransformProxy* PointTransformProxy;                                       // 0x01B8 (size: 0x8)
    class UCombinedTransformGizmo* PointTransformGizmo;                               // 0x01C0 (size: 0x8)

}; // Size: 0x2D0

class USpaceCurveDeformationMechanicPropertySet : public UInteractiveToolPropertySet
{
    ESpaceCurveControlPointTransformMode TransformMode;                               // 0x00A8 (size: 0x4)
    ESpaceCurveControlPointOriginMode TransformOrigin;                                // 0x00AC (size: 0x4)
    float Softness;                                                                   // 0x00B0 (size: 0x4)
    ESpaceCurveControlPointFalloffType SoftFalloff;                                   // 0x00B4 (size: 0x4)

}; // Size: 0xB8

class USpatialCurveDistanceMechanic : public UInteractionMechanic
{
}; // Size: 0x410

class UTransformInputsToolProperties : public UInteractiveToolPropertySet
{
    bool bShowTransformGizmo;                                                         // 0x00A8 (size: 0x1)

}; // Size: 0xB0

class UTriangleSetComponent : public UMeshComponent
{
    FBoxSphereBounds Bounds;                                                          // 0x0570 (size: 0x38)
    bool bBoundsDirty;                                                                // 0x05A8 (size: 0x1)

}; // Size: 0x670

class UUVLayoutPreview : public UObject
{
    class UUVLayoutPreviewProperties* Settings;                                       // 0x0028 (size: 0x8)
    class UPreviewMesh* PreviewMesh;                                                  // 0x0030 (size: 0x8)
    class UTriangleSetComponent* TriangleComponent;                                   // 0x0038 (size: 0x8)
    bool bShowBackingRectangle;                                                       // 0x0040 (size: 0x1)
    class UMaterialInterface* BackingRectangleMaterial;                               // 0x0048 (size: 0x8)

}; // Size: 0x160

class UUVLayoutPreviewProperties : public UInteractiveToolPropertySet
{
    bool bEnabled;                                                                    // 0x00A8 (size: 0x1)
    EUVLayoutPreviewSide Side;                                                        // 0x00AC (size: 0x4)
    float Scale;                                                                      // 0x00B0 (size: 0x4)
    FVector2D Offset;                                                                 // 0x00B8 (size: 0x10)
    bool bShowWireframe;                                                              // 0x00C8 (size: 0x1)

}; // Size: 0xD0

class UVoxelProperties : public UInteractiveToolPropertySet
{
    int32 VoxelCount;                                                                 // 0x00A8 (size: 0x4)
    bool bAutoSimplify;                                                               // 0x00AC (size: 0x1)
    bool bRemoveInternalSurfaces;                                                     // 0x00AD (size: 0x1)
    double SimplifyMaxErrorFactor;                                                    // 0x00B0 (size: 0x8)
    double CubeRootMinComponentVolume;                                                // 0x00B8 (size: 0x8)

}; // Size: 0xC0

class UWeightMapSetProperties : public UInteractiveToolPropertySet
{
    FName WeightMap;                                                                  // 0x00A8 (size: 0x8)
    TArray<FString> WeightMapsList;                                                   // 0x00B0 (size: 0x10)
    bool bInvertWeightMap;                                                            // 0x00C0 (size: 0x1)

    TArray<FString> GetWeightMapsFunc();
}; // Size: 0xC8

#endif
