---@meta

---@class APreviewGeometryActor : AInternalToolFrameworkActor
APreviewGeometryActor = {}

---@return APreviewGeometryActor
function APreviewGeometryActor:get() end


---@class APreviewMeshActor : AInternalToolFrameworkActor
APreviewMeshActor = {}

---@return APreviewMeshActor
function APreviewMeshActor:get() end


---@class FCreateMeshObjectParams
---@field SourceComponent UPrimitiveComponent
---@field TypeHint ECreateObjectTypeHint
---@field TypeHintClass TObjectPtr<UClass>
---@field TypeHintExtended int32
---@field TargetWorld UWorld
---@field Transform FTransform
---@field BaseName FString
---@field Materials TArray<UMaterialInterface>
---@field AssetMaterials TArray<UMaterialInterface>
---@field bEnableCollision boolean
---@field CollisionMode ECollisionTraceFlag
---@field bEnableRaytracingSupport boolean
---@field bEnableRecomputeNormals boolean
---@field bEnableRecomputeTangents boolean
---@field bEnableNanite boolean
---@field NaniteProxyTrianglePercent float
---@field NaniteSettings FMeshNaniteSettings
FCreateMeshObjectParams = {}

---@return FCreateMeshObjectParams
function FCreateMeshObjectParams:get() end



---@class FCreateMeshObjectResult
---@field ResultCode ECreateModelingObjectResult
---@field NewActor AActor
---@field NewComponent UPrimitiveComponent
---@field NewAsset UObject
FCreateMeshObjectResult = {}

---@return FCreateMeshObjectResult
function FCreateMeshObjectResult:get() end



---@class FCreateTextureObjectParams
---@field TypeHintExtended int32
---@field TargetWorld UWorld
---@field StoreRelativeToObject UObject
---@field BaseName FString
---@field GeneratedTransientTexture UTexture2D
FCreateTextureObjectParams = {}

---@return FCreateTextureObjectParams
function FCreateTextureObjectParams:get() end



---@class FCreateTextureObjectResult
---@field ResultCode ECreateModelingObjectResult
---@field NewAsset UObject
FCreateTextureObjectResult = {}

---@return FCreateTextureObjectResult
function FCreateTextureObjectResult:get() end



---@class FModelingToolsAxisFilter
---@field bAxisX boolean
---@field bAxisY boolean
---@field bAxisZ boolean
FModelingToolsAxisFilter = {}

---@return FModelingToolsAxisFilter
function FModelingToolsAxisFilter:get() end



---@class FRenderableTriangle
---@field Material UMaterialInterface
---@field Vertex0 FRenderableTriangleVertex
---@field Vertex1 FRenderableTriangleVertex
---@field Vertex2 FRenderableTriangleVertex
FRenderableTriangle = {}

---@return FRenderableTriangle
function FRenderableTriangle:get() end



---@class FRenderableTriangleVertex
---@field Position FVector
---@field UV FVector2D
---@field Normal FVector
---@field Color FColor
FRenderableTriangleVertex = {}

---@return FRenderableTriangleVertex
function FRenderableTriangleVertex:get() end



---@class IDynamicMeshCommitter : IInterface
IDynamicMeshCommitter = {}

---@return IDynamicMeshCommitter
function IDynamicMeshCommitter:get() end


---@class IDynamicMeshProvider : IInterface
IDynamicMeshProvider = {}

---@return IDynamicMeshProvider
function IDynamicMeshProvider:get() end


---@class IPersistentDynamicMeshSource : IInterface
IPersistentDynamicMeshSource = {}

---@return IPersistentDynamicMeshSource
function IPersistentDynamicMeshSource:get() end


---@class IToolActivityHost : IInterface
IToolActivityHost = {}

---@return IToolActivityHost
function IToolActivityHost:get() end


---@class UBaseCreateFromSelectedHandleSourceProperties : UOnAcceptHandleSourcesProperties
---@field OutputWriteTo EBaseCreateFromSelectedTargetType
---@field OutputNewName FString
---@field OutputExistingName FString
UBaseCreateFromSelectedHandleSourceProperties = {}

---@return UBaseCreateFromSelectedHandleSourceProperties
function UBaseCreateFromSelectedHandleSourceProperties:get() end



---@class UBaseCreateFromSelectedTool : UMultiSelectionMeshEditingTool
---@field TransformProperties UTransformInputsToolProperties
---@field OutputTypeProperties UCreateMeshObjectTypeProperties
---@field HandleSourcesProperties UBaseCreateFromSelectedHandleSourceProperties
---@field Preview UMeshOpPreviewWithBackgroundCompute
---@field TransformProxies TArray<UTransformProxy>
---@field TransformGizmos TArray<UCombinedTransformGizmo>
UBaseCreateFromSelectedTool = {}

---@return UBaseCreateFromSelectedTool
function UBaseCreateFromSelectedTool:get() end



---@class UBaseCreateFromSelectedToolBuilder : UMultiSelectionMeshEditingToolBuilder
UBaseCreateFromSelectedToolBuilder = {}

---@return UBaseCreateFromSelectedToolBuilder
function UBaseCreateFromSelectedToolBuilder:get() end


---@class UBaseMeshProcessingTool : USingleSelectionTool
---@field Preview UMeshOpPreviewWithBackgroundCompute
UBaseMeshProcessingTool = {}

---@return UBaseMeshProcessingTool
function UBaseMeshProcessingTool:get() end



---@class UBaseMeshProcessingToolBuilder : UInteractiveToolWithToolTargetsBuilder
UBaseMeshProcessingToolBuilder = {}

---@return UBaseMeshProcessingToolBuilder
function UBaseMeshProcessingToolBuilder:get() end


---@class UBaseVoxelTool : UBaseCreateFromSelectedTool
---@field VoxProperties UVoxelProperties
UBaseVoxelTool = {}

---@return UBaseVoxelTool
function UBaseVoxelTool:get() end



---@class UCollectSurfacePathMechanic : UInteractionMechanic
UCollectSurfacePathMechanic = {}

---@return UCollectSurfacePathMechanic
function UCollectSurfacePathMechanic:get() end


---@class UConstructionPlaneMechanic : UInteractionMechanic
---@field PlaneTransformGizmo UCombinedTransformGizmo
---@field PlaneTransformProxy UTransformProxy
---@field ClickToSetPlaneBehavior USingleClickInputBehavior
UConstructionPlaneMechanic = {}

---@return UConstructionPlaneMechanic
function UConstructionPlaneMechanic:get() end



---@class UCreateMeshObjectTypeProperties : UInteractiveToolPropertySet
---@field OutputType FString
---@field VolumeType TSubclassOf<AVolume>
---@field OutputTypeNamesList TArray<FString>
---@field bShowVolumeList boolean
UCreateMeshObjectTypeProperties = {}

---@return UCreateMeshObjectTypeProperties
function UCreateMeshObjectTypeProperties:get() end

---@return boolean
function UCreateMeshObjectTypeProperties:ShouldShowPropertySet() end
---@return TArray<FString>
function UCreateMeshObjectTypeProperties:GetOutputTypeNamesFunc() end
---@return ECreateObjectTypeHint
function UCreateMeshObjectTypeProperties:GetCurrentCreateMeshType() end


---@class UCurveControlPointsMechanic : UInteractionMechanic
---@field ClickBehavior USingleClickInputBehavior
---@field HoverBehavior UMouseHoverBehavior
---@field PreviewGeometryActor APreviewGeometryActor
---@field DrawnControlPoints UPointSetComponent
---@field DrawnControlSegments ULineSetComponent
---@field PreviewPoint UPointSetComponent
---@field PreviewSegment ULineSetComponent
---@field PointTransformProxy UTransformProxy
---@field PointTransformGizmo UCombinedTransformGizmo
UCurveControlPointsMechanic = {}

---@return UCurveControlPointsMechanic
function UCurveControlPointsMechanic:get() end



---@class UDEPRECATED_PersistentMeshSelectionManager : UObject
---@field ParentContext UInteractiveToolsContext
---@field ActiveSelection UPersistentMeshSelection
---@field SelectionDisplay UPreviewGeometry
UDEPRECATED_PersistentMeshSelectionManager = {}

---@return UDEPRECATED_PersistentMeshSelectionManager
function UDEPRECATED_PersistentMeshSelectionManager:get() end



---@class UDragAlignmentMechanic : UInteractionMechanic
UDragAlignmentMechanic = {}

---@return UDragAlignmentMechanic
function UDragAlignmentMechanic:get() end


---@class UDynamicMeshReplacementChangeTarget : UObject
UDynamicMeshReplacementChangeTarget = {}

---@return UDynamicMeshReplacementChangeTarget
function UDynamicMeshReplacementChangeTarget:get() end


---@class UGeometrySelectionEditCommand : UInteractiveCommand
UGeometrySelectionEditCommand = {}

---@return UGeometrySelectionEditCommand
function UGeometrySelectionEditCommand:get() end


---@class UGeometrySelectionEditCommandArguments : UInteractiveCommandArguments
UGeometrySelectionEditCommandArguments = {}

---@return UGeometrySelectionEditCommandArguments
function UGeometrySelectionEditCommandArguments:get() end


---@class UGeometrySelectionManager : UObject
---@field SelectionArguments UGeometrySelectionEditCommandArguments
---@field ToolsContext UInteractiveToolsContext
---@field OldSelection UPersistentMeshSelection
UGeometrySelectionManager = {}

---@return UGeometrySelectionManager
function UGeometrySelectionManager:get() end



---@class UInteractiveToolActivity : UInteractionMechanic
UInteractiveToolActivity = {}

---@return UInteractiveToolActivity
function UInteractiveToolActivity:get() end


---@class ULatticeControlPointsMechanic : UInteractionMechanic
---@field PreviewGeometryActor APreviewGeometryActor
---@field DrawnControlPoints UPointSetComponent
---@field DrawnLatticeEdges ULineSetComponent
---@field PointTransformProxy UTransformProxy
---@field PointTransformGizmo UCombinedTransformGizmo
---@field MarqueeMechanic URectangleMarqueeMechanic
ULatticeControlPointsMechanic = {}

---@return ULatticeControlPointsMechanic
function ULatticeControlPointsMechanic:get() end



---@class ULineSetComponent : UMeshComponent
---@field LineMaterial UMaterialInterface
---@field Bounds FBoxSphereBounds
---@field bBoundsDirty boolean
ULineSetComponent = {}

---@return ULineSetComponent
function ULineSetComponent:get() end



---@class UMeshElementsVisualizer : UPreviewGeometry
---@field Settings UMeshElementsVisualizerProperties
---@field WireframeComponent UMeshWireframeComponent
UMeshElementsVisualizer = {}

---@return UMeshElementsVisualizer
function UMeshElementsVisualizer:get() end



---@class UMeshElementsVisualizerProperties : UInteractiveToolPropertySet
---@field bVisible boolean
---@field bShowWireframe boolean
---@field bShowBorders boolean
---@field bShowUVSeams boolean
---@field bShowNormalSeams boolean
---@field bShowColorSeams boolean
---@field ThicknessScale float
---@field WireframeColor FColor
---@field BoundaryEdgeColor FColor
---@field UVSeamColor FColor
---@field NormalSeamColor FColor
---@field ColorSeamColor FColor
---@field DepthBias float
---@field bAdjustDepthBiasUsingMeshSize boolean
UMeshElementsVisualizerProperties = {}

---@return UMeshElementsVisualizerProperties
function UMeshElementsVisualizerProperties:get() end



---@class UMeshOpPreviewWithBackgroundCompute : UObject
---@field PreviewMesh UPreviewMesh
---@field StandardMaterials TArray<UMaterialInterface>
---@field OverrideMaterial UMaterialInterface
---@field WorkingMaterial UMaterialInterface
---@field SecondaryMaterial UMaterialInterface
---@field PreviewWorld TWeakObjectPtr<UWorld>
UMeshOpPreviewWithBackgroundCompute = {}

---@return UMeshOpPreviewWithBackgroundCompute
function UMeshOpPreviewWithBackgroundCompute:get() end



---@class UMeshSurfacePointMeshEditingToolBuilder : UMeshSurfacePointToolBuilder
UMeshSurfacePointMeshEditingToolBuilder = {}

---@return UMeshSurfacePointMeshEditingToolBuilder
function UMeshSurfacePointMeshEditingToolBuilder:get() end


---@class UMeshWireframeComponent : UMeshComponent
---@field LineDepthBias float
---@field LineDepthBiasSizeScale float
---@field ThicknessScale float
---@field bEnableWireframe boolean
---@field WireframeColor FColor
---@field WireframeThickness float
---@field bEnableBoundaryEdges boolean
---@field BoundaryEdgeColor FColor
---@field BoundaryEdgeThickness float
---@field bEnableUVSeams boolean
---@field UVSeamColor FColor
---@field UVSeamThickness float
---@field bEnableNormalSeams boolean
---@field NormalSeamColor FColor
---@field NormalSeamThickness float
---@field bEnableColorSeams boolean
---@field ColorSeamColor FColor
---@field ColorSeamThickness float
---@field LineMaterial UMaterialInterface
---@field LocalBounds FBoxSphereBounds
UMeshWireframeComponent = {}

---@return UMeshWireframeComponent
function UMeshWireframeComponent:get() end



---@class UModelingComponentsSettings : UDeveloperSettings
---@field bEnableRayTracingWhileEditing boolean
---@field bEnableRayTracing boolean
---@field bEnableCollision boolean
---@field CollisionMode ECollisionTraceFlag
UModelingComponentsSettings = {}

---@return UModelingComponentsSettings
function UModelingComponentsSettings:get() end



---@class UModelingObjectsCreationAPI : UObject
UModelingObjectsCreationAPI = {}

---@return UModelingObjectsCreationAPI
function UModelingObjectsCreationAPI:get() end

---@param CreateTexParams FCreateTextureObjectParams
---@return FCreateTextureObjectResult
function UModelingObjectsCreationAPI:CreateTextureObject(CreateTexParams) end
---@param CreateMeshParams FCreateMeshObjectParams
---@return FCreateMeshObjectResult
function UModelingObjectsCreationAPI:CreateMeshObject(CreateMeshParams) end


---@class UModelingSceneSnappingManager : USceneSnappingManager
---@field ParentContext UInteractiveToolsContext
UModelingSceneSnappingManager = {}

---@return UModelingSceneSnappingManager
function UModelingSceneSnappingManager:get() end



---@class UMultiSelectionMeshEditingTool : UMultiSelectionTool
---@field TargetWorld TWeakObjectPtr<UWorld>
UMultiSelectionMeshEditingTool = {}

---@return UMultiSelectionMeshEditingTool
function UMultiSelectionMeshEditingTool:get() end



---@class UMultiSelectionMeshEditingToolBuilder : UInteractiveToolWithToolTargetsBuilder
UMultiSelectionMeshEditingToolBuilder = {}

---@return UMultiSelectionMeshEditingToolBuilder
function UMultiSelectionMeshEditingToolBuilder:get() end


---@class UMultiTransformer : UObject
---@field GizmoManager UInteractiveGizmoManager
---@field TransformGizmo UCombinedTransformGizmo
---@field TransformProxy UTransformProxy
---@field DragAlignmentMechanic UDragAlignmentMechanic
UMultiTransformer = {}

---@return UMultiTransformer
function UMultiTransformer:get() end



---@class UOctreeDynamicMeshComponent : UBaseDynamicMeshComponent
---@field MeshObject UDynamicMesh
UOctreeDynamicMeshComponent = {}

---@return UOctreeDynamicMeshComponent
function UOctreeDynamicMeshComponent:get() end

---@param NewMesh UDynamicMesh
function UOctreeDynamicMeshComponent:SetDynamicMesh(NewMesh) end


---@class UOnAcceptHandleSourcesProperties : UOnAcceptHandleSourcesPropertiesBase
---@field HandleInputs EHandleSourcesMethod
UOnAcceptHandleSourcesProperties = {}

---@return UOnAcceptHandleSourcesProperties
function UOnAcceptHandleSourcesProperties:get() end



---@class UOnAcceptHandleSourcesPropertiesBase : UInteractiveToolPropertySet
UOnAcceptHandleSourcesPropertiesBase = {}

---@return UOnAcceptHandleSourcesPropertiesBase
function UOnAcceptHandleSourcesPropertiesBase:get() end


---@class UOnAcceptHandleSourcesPropertiesSingle : UOnAcceptHandleSourcesPropertiesBase
---@field HandleInputs EHandleSourcesMethod
UOnAcceptHandleSourcesPropertiesSingle = {}

---@return UOnAcceptHandleSourcesPropertiesSingle
function UOnAcceptHandleSourcesPropertiesSingle:get() end



---@class UPersistentMeshSelection : UObject
UPersistentMeshSelection = {}

---@return UPersistentMeshSelection
function UPersistentMeshSelection:get() end


---@class UPlaneDistanceFromHitMechanic : UInteractionMechanic
UPlaneDistanceFromHitMechanic = {}

---@return UPlaneDistanceFromHitMechanic
function UPlaneDistanceFromHitMechanic:get() end


---@class UPointSetComponent : UMeshComponent
---@field PointMaterial UMaterialInterface
---@field Bounds FBoxSphereBounds
---@field bBoundsDirty boolean
UPointSetComponent = {}

---@return UPointSetComponent
function UPointSetComponent:get() end



---@class UPolyEditPreviewMesh : UPreviewMesh
UPolyEditPreviewMesh = {}

---@return UPolyEditPreviewMesh
function UPolyEditPreviewMesh:get() end


---@class UPolyLassoMarqueeMechanic : UInteractionMechanic
---@field SpacingTolerance float
---@field LineThickness float
---@field LineColor FLinearColor
---@field ClosedColor FLinearColor
---@field bEnableFreehandPolygons boolean
---@field bEnableMultiClickPolygons boolean
---@field ClickDragBehavior UClickDragInputBehavior
---@field HoverBehavior UMouseHoverBehavior
UPolyLassoMarqueeMechanic = {}

---@return UPolyLassoMarqueeMechanic
function UPolyLassoMarqueeMechanic:get() end



---@class UPolygonSelectionMechanic : UInteractionMechanic
---@field Properties UPolygonSelectionMechanicProperties
---@field HoverBehavior UMouseHoverBehavior
---@field ClickOrDragBehavior USingleClickOrDragInputBehavior
---@field MarqueeMechanic URectangleMarqueeMechanic
---@field PreviewGeometryActor APreviewGeometryActor
---@field DrawnTriangleSetComponent UTriangleSetComponent
---@field HighlightedFaceMaterial UMaterialInterface
UPolygonSelectionMechanic = {}

---@return UPolygonSelectionMechanic
function UPolygonSelectionMechanic:get() end



---@class UPolygonSelectionMechanicProperties : UInteractiveToolPropertySet
---@field bSelectVertices boolean
---@field bSelectEdges boolean
---@field bSelectFaces boolean
---@field bSelectEdgeLoops boolean
---@field bSelectEdgeRings boolean
---@field bHitBackFaces boolean
---@field bEnableMarquee boolean
---@field bMarqueeIgnoreOcclusion boolean
---@field bPreferProjectedElement boolean
---@field bSelectDownRay boolean
---@field bIgnoreOcclusion boolean
UPolygonSelectionMechanicProperties = {}

---@return UPolygonSelectionMechanicProperties
function UPolygonSelectionMechanicProperties:get() end

function UPolygonSelectionMechanicProperties:SelectAll() end
function UPolygonSelectionMechanicProperties:InvertSelection() end


---@class UPolygroupLayersProperties : UInteractiveToolPropertySet
---@field ActiveGroupLayer FName
---@field GroupLayersList TArray<FString>
UPolygroupLayersProperties = {}

---@return UPolygroupLayersProperties
function UPolygroupLayersProperties:get() end

---@return TArray<FString>
function UPolygroupLayersProperties:GetGroupLayersFunc() end


---@class UPreviewGeometry : UObject
---@field ParentActor APreviewGeometryActor
---@field LineSets TMap<FString, ULineSetComponent>
---@field PointSets TMap<FString, UPointSetComponent>
UPreviewGeometry = {}

---@return UPreviewGeometry
function UPreviewGeometry:get() end

---@param PointSetIdentifier FString
---@param bVisible boolean
---@return boolean
function UPreviewGeometry:SetPointSetVisibility(PointSetIdentifier, bVisible) end
---@param PointSetIdentifier FString
---@param NewMaterial UMaterialInterface
---@return boolean
function UPreviewGeometry:SetPointSetMaterial(PointSetIdentifier, NewMaterial) end
---@param LineSetIdentifier FString
---@param bVisible boolean
---@return boolean
function UPreviewGeometry:SetLineSetVisibility(LineSetIdentifier, bVisible) end
---@param LineSetIdentifier FString
---@param NewMaterial UMaterialInterface
---@return boolean
function UPreviewGeometry:SetLineSetMaterial(LineSetIdentifier, NewMaterial) end
---@param Material UMaterialInterface
function UPreviewGeometry:SetAllPointSetsMaterial(Material) end
---@param Material UMaterialInterface
function UPreviewGeometry:SetAllLineSetsMaterial(Material) end
---@param PointSetIdentifier FString
---@param bDestroy boolean
---@return boolean
function UPreviewGeometry:RemovePointSet(PointSetIdentifier, bDestroy) end
---@param LineSetIdentifier FString
---@param bDestroy boolean
---@return boolean
function UPreviewGeometry:RemoveLineSet(LineSetIdentifier, bDestroy) end
---@param bDestroy boolean
function UPreviewGeometry:RemoveAllPointSets(bDestroy) end
---@param bDestroy boolean
function UPreviewGeometry:RemoveAllLineSets(bDestroy) end
---@return APreviewGeometryActor
function UPreviewGeometry:GetActor() end
---@param PointSetIdentifier FString
---@return UPointSetComponent
function UPreviewGeometry:FindPointSet(PointSetIdentifier) end
---@param LineSetIdentifier FString
---@return ULineSetComponent
function UPreviewGeometry:FindLineSet(LineSetIdentifier) end
function UPreviewGeometry:Disconnect() end
---@param World UWorld
---@param WithTransform FTransform
function UPreviewGeometry:CreateInWorld(World, WithTransform) end
---@param PointSetIdentifier FString
---@return UPointSetComponent
function UPreviewGeometry:AddPointSet(PointSetIdentifier) end
---@param LineSetIdentifier FString
---@return ULineSetComponent
function UPreviewGeometry:AddLineSet(LineSetIdentifier) end


---@class UPreviewMesh : UObject
---@field bBuildSpatialDataStructure boolean
---@field DynamicMeshComponent UDynamicMeshComponent
UPreviewMesh = {}

---@return UPreviewMesh
function UPreviewMesh:get() end



---@class URectangleMarqueeMechanic : UInteractionMechanic
---@field bUseExternalClickDragBehavior boolean
---@field bUseExternalUpdateCameraState boolean
---@field OnDragRectangleChangedDeferredThreshold double
---@field ClickDragBehavior UClickDragInputBehavior
URectangleMarqueeMechanic = {}

---@return URectangleMarqueeMechanic
function URectangleMarqueeMechanic:get() end



---@class USingleSelectionMeshEditingTool : USingleSelectionTool
---@field TargetWorld TWeakObjectPtr<UWorld>
---@field InputSelection UPersistentMeshSelection
USingleSelectionMeshEditingTool = {}

---@return USingleSelectionMeshEditingTool
function USingleSelectionMeshEditingTool:get() end



---@class USingleSelectionMeshEditingToolBuilder : UInteractiveToolWithToolTargetsBuilder
USingleSelectionMeshEditingToolBuilder = {}

---@return USingleSelectionMeshEditingToolBuilder
function USingleSelectionMeshEditingToolBuilder:get() end


---@class USpaceCurveDeformationMechanic : UInteractionMechanic
---@field ClickBehavior USingleClickInputBehavior
---@field HoverBehavior UMouseHoverBehavior
---@field TransformProperties USpaceCurveDeformationMechanicPropertySet
---@field PreviewGeometryActor APreviewGeometryActor
---@field RenderPoints UPointSetComponent
---@field RenderSegments ULineSetComponent
---@field PointTransformProxy UTransformProxy
---@field PointTransformGizmo UCombinedTransformGizmo
USpaceCurveDeformationMechanic = {}

---@return USpaceCurveDeformationMechanic
function USpaceCurveDeformationMechanic:get() end



---@class USpaceCurveDeformationMechanicPropertySet : UInteractiveToolPropertySet
---@field TransformMode ESpaceCurveControlPointTransformMode
---@field TransformOrigin ESpaceCurveControlPointOriginMode
---@field Softness float
---@field SoftFalloff ESpaceCurveControlPointFalloffType
USpaceCurveDeformationMechanicPropertySet = {}

---@return USpaceCurveDeformationMechanicPropertySet
function USpaceCurveDeformationMechanicPropertySet:get() end



---@class USpatialCurveDistanceMechanic : UInteractionMechanic
USpatialCurveDistanceMechanic = {}

---@return USpatialCurveDistanceMechanic
function USpatialCurveDistanceMechanic:get() end


---@class UTransformInputsToolProperties : UInteractiveToolPropertySet
---@field bShowTransformGizmo boolean
UTransformInputsToolProperties = {}

---@return UTransformInputsToolProperties
function UTransformInputsToolProperties:get() end



---@class UTriangleSetComponent : UMeshComponent
---@field Bounds FBoxSphereBounds
---@field bBoundsDirty boolean
UTriangleSetComponent = {}

---@return UTriangleSetComponent
function UTriangleSetComponent:get() end



---@class UUVLayoutPreview : UObject
---@field Settings UUVLayoutPreviewProperties
---@field PreviewMesh UPreviewMesh
---@field TriangleComponent UTriangleSetComponent
---@field bShowBackingRectangle boolean
---@field BackingRectangleMaterial UMaterialInterface
UUVLayoutPreview = {}

---@return UUVLayoutPreview
function UUVLayoutPreview:get() end



---@class UUVLayoutPreviewProperties : UInteractiveToolPropertySet
---@field bEnabled boolean
---@field Side EUVLayoutPreviewSide
---@field Scale float
---@field Offset FVector2D
---@field bShowWireframe boolean
UUVLayoutPreviewProperties = {}

---@return UUVLayoutPreviewProperties
function UUVLayoutPreviewProperties:get() end



---@class UVoxelProperties : UInteractiveToolPropertySet
---@field VoxelCount int32
---@field bAutoSimplify boolean
---@field bRemoveInternalSurfaces boolean
---@field SimplifyMaxErrorFactor double
---@field CubeRootMinComponentVolume double
UVoxelProperties = {}

---@return UVoxelProperties
function UVoxelProperties:get() end



---@class UWeightMapSetProperties : UInteractiveToolPropertySet
---@field WeightMap FName
---@field WeightMapsList TArray<FString>
---@field bInvertWeightMap boolean
UWeightMapSetProperties = {}

---@return UWeightMapSetProperties
function UWeightMapSetProperties:get() end

---@return TArray<FString>
function UWeightMapSetProperties:GetWeightMapsFunc() end


