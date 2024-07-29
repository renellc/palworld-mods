---@meta

---@class UAddArrowPrimitiveTool : UAddPrimitiveTool
UAddArrowPrimitiveTool = {}

---@return UAddArrowPrimitiveTool
function UAddArrowPrimitiveTool:get() end


---@class UAddBoxPrimitiveTool : UAddPrimitiveTool
UAddBoxPrimitiveTool = {}

---@return UAddBoxPrimitiveTool
function UAddBoxPrimitiveTool:get() end


---@class UAddConePrimitiveTool : UAddPrimitiveTool
UAddConePrimitiveTool = {}

---@return UAddConePrimitiveTool
function UAddConePrimitiveTool:get() end


---@class UAddCylinderPrimitiveTool : UAddPrimitiveTool
UAddCylinderPrimitiveTool = {}

---@return UAddCylinderPrimitiveTool
function UAddCylinderPrimitiveTool:get() end


---@class UAddDiscPrimitiveTool : UAddPrimitiveTool
UAddDiscPrimitiveTool = {}

---@return UAddDiscPrimitiveTool
function UAddDiscPrimitiveTool:get() end


---@class UAddPrimitiveTool : USingleClickTool
---@field OutputTypeProperties UCreateMeshObjectTypeProperties
---@field ShapeSettings UProceduralShapeToolProperties
---@field MaterialProperties UNewMeshMaterialProperties
---@field PreviewMesh UPreviewMesh
---@field Gizmo UCombinedTransformGizmo
---@field DragAlignmentMechanic UDragAlignmentMechanic
---@field AssetName FString
UAddPrimitiveTool = {}

---@return UAddPrimitiveTool
function UAddPrimitiveTool:get() end



---@class UAddPrimitiveToolBuilder : UInteractiveToolBuilder
UAddPrimitiveToolBuilder = {}

---@return UAddPrimitiveToolBuilder
function UAddPrimitiveToolBuilder:get() end


---@class UAddRectanglePrimitiveTool : UAddPrimitiveTool
UAddRectanglePrimitiveTool = {}

---@return UAddRectanglePrimitiveTool
function UAddRectanglePrimitiveTool:get() end


---@class UAddSpherePrimitiveTool : UAddPrimitiveTool
UAddSpherePrimitiveTool = {}

---@return UAddSpherePrimitiveTool
function UAddSpherePrimitiveTool:get() end


---@class UAddStairsPrimitiveTool : UAddPrimitiveTool
UAddStairsPrimitiveTool = {}

---@return UAddStairsPrimitiveTool
function UAddStairsPrimitiveTool:get() end


---@class UAddTorusPrimitiveTool : UAddPrimitiveTool
UAddTorusPrimitiveTool = {}

---@return UAddTorusPrimitiveTool
function UAddTorusPrimitiveTool:get() end


---@class UCSGMeshesTool : UBaseCreateFromSelectedTool
---@field CSGProperties UCSGMeshesToolProperties
---@field TrimProperties UTrimMeshesToolProperties
---@field OriginalMeshPreviews TArray<UPreviewMesh>
---@field PreviewsGhostMaterial UMaterialInstanceDynamic
---@field DrawnLineSet ULineSetComponent
UCSGMeshesTool = {}

---@return UCSGMeshesTool
function UCSGMeshesTool:get() end



---@class UCSGMeshesToolBuilder : UBaseCreateFromSelectedToolBuilder
UCSGMeshesToolBuilder = {}

---@return UCSGMeshesToolBuilder
function UCSGMeshesToolBuilder:get() end


---@class UCSGMeshesToolProperties : UInteractiveToolPropertySet
---@field Operation ECSGOperation
---@field bTryFixHoles boolean
---@field bTryCollapseEdges boolean
---@field WindingThreshold float
---@field bShowNewBoundaries boolean
---@field bShowSubtractedMesh boolean
---@field SubtractedMeshOpacity float
---@field SubtractedMeshColor FLinearColor
---@field bUseFirstMeshMaterials boolean
UCSGMeshesToolProperties = {}

---@return UCSGMeshesToolProperties
function UCSGMeshesToolProperties:get() end



---@class UCombineMeshesTool : UMultiSelectionMeshEditingTool
---@field BasicProperties UCombineMeshesToolProperties
---@field OutputTypeProperties UCreateMeshObjectTypeProperties
---@field HandleSourceProperties UOnAcceptHandleSourcesPropertiesBase
UCombineMeshesTool = {}

---@return UCombineMeshesTool
function UCombineMeshesTool:get() end



---@class UCombineMeshesToolBuilder : UMultiSelectionMeshEditingToolBuilder
UCombineMeshesToolBuilder = {}

---@return UCombineMeshesToolBuilder
function UCombineMeshesToolBuilder:get() end


---@class UCombineMeshesToolProperties : UInteractiveToolPropertySet
---@field bIsDuplicateMode boolean
---@field OutputWriteTo EBaseCreateFromSelectedTargetType
---@field OutputNewName FString
---@field OutputExistingName FString
UCombineMeshesToolProperties = {}

---@return UCombineMeshesToolProperties
function UCombineMeshesToolProperties:get() end



---@class UCutMeshWithMeshTool : UBaseCreateFromSelectedTool
---@field CutProperties UCutMeshWithMeshToolProperties
---@field IntersectPreviewMesh UPreviewMesh
---@field DrawnLineSet ULineSetComponent
UCutMeshWithMeshTool = {}

---@return UCutMeshWithMeshTool
function UCutMeshWithMeshTool:get() end



---@class UCutMeshWithMeshToolBuilder : UBaseCreateFromSelectedToolBuilder
UCutMeshWithMeshToolBuilder = {}

---@return UCutMeshWithMeshToolBuilder
function UCutMeshWithMeshToolBuilder:get() end


---@class UCutMeshWithMeshToolProperties : UInteractiveToolPropertySet
---@field bTryFixHoles boolean
---@field bTryCollapseEdges boolean
---@field WindingThreshold float
---@field bShowNewBoundaries boolean
---@field bUseFirstMeshMaterials boolean
UCutMeshWithMeshToolProperties = {}

---@return UCutMeshWithMeshToolProperties
function UCutMeshWithMeshToolProperties:get() end



---@class UDeleteGeometrySelectionCommand : UGeometrySelectionEditCommand
UDeleteGeometrySelectionCommand = {}

---@return UDeleteGeometrySelectionCommand
function UDeleteGeometrySelectionCommand:get() end


---@class UDrawAndRevolveTool : UInteractiveTool
---@field ControlPointsMechanic UCurveControlPointsMechanic
---@field PlaneMechanic UConstructionPlaneMechanic
---@field OutputTypeProperties UCreateMeshObjectTypeProperties
---@field Settings URevolveToolProperties
---@field MaterialProperties UNewMeshMaterialProperties
---@field Preview UMeshOpPreviewWithBackgroundCompute
UDrawAndRevolveTool = {}

---@return UDrawAndRevolveTool
function UDrawAndRevolveTool:get() end



---@class UDrawAndRevolveToolBuilder : UInteractiveToolBuilder
UDrawAndRevolveToolBuilder = {}

---@return UDrawAndRevolveToolBuilder
function UDrawAndRevolveToolBuilder:get() end


---@class UDrawPolygonTool : UInteractiveTool
---@field OutputTypeProperties UCreateMeshObjectTypeProperties
---@field PolygonProperties UDrawPolygonToolStandardProperties
---@field SnapProperties UDrawPolygonToolSnapProperties
---@field MaterialProperties UNewMeshMaterialProperties
---@field PreviewMesh UPreviewMesh
---@field PlaneTransformGizmo UCombinedTransformGizmo
---@field PlaneTransformProxy UTransformProxy
---@field HeightMechanic UPlaneDistanceFromHitMechanic
---@field DragAlignmentMechanic UDragAlignmentMechanic
UDrawPolygonTool = {}

---@return UDrawPolygonTool
function UDrawPolygonTool:get() end



---@class UDrawPolygonToolBuilder : UInteractiveToolBuilder
UDrawPolygonToolBuilder = {}

---@return UDrawPolygonToolBuilder
function UDrawPolygonToolBuilder:get() end


---@class UDrawPolygonToolSnapProperties : UInteractiveToolPropertySet
---@field bEnableSnapping boolean
---@field bSnapToWorldGrid boolean
---@field bSnapToVertices boolean
---@field bSnapToEdges boolean
---@field bSnapToAxes boolean
---@field bSnapToLengths boolean
---@field bSnapToSurfaces boolean
---@field SnapToSurfacesOffset float
UDrawPolygonToolSnapProperties = {}

---@return UDrawPolygonToolSnapProperties
function UDrawPolygonToolSnapProperties:get() end



---@class UDrawPolygonToolStandardProperties : UInteractiveToolPropertySet
---@field PolygonDrawMode EDrawPolygonDrawMode
---@field bAllowSelfIntersections boolean
---@field FeatureSizeRatio float
---@field RadialSlices int32
---@field Distance float
---@field bShowGridGizmo boolean
---@field ExtrudeMode EDrawPolygonExtrudeMode
---@field ExtrudeHeight float
UDrawPolygonToolStandardProperties = {}

---@return UDrawPolygonToolStandardProperties
function UDrawPolygonToolStandardProperties:get() end



---@class UEdgeLoopInsertionProperties : UInteractiveToolPropertySet
---@field PositionMode EEdgeLoopPositioningMode
---@field InsertionMode EEdgeLoopInsertionMode
---@field NumLoops int32
---@field ProportionOffset double
---@field DistanceOffset double
---@field bInteractive boolean
---@field bFlipOffsetDirection boolean
---@field bHighlightProblemGroups boolean
---@field VertexTolerance double
UEdgeLoopInsertionProperties = {}

---@return UEdgeLoopInsertionProperties
function UEdgeLoopInsertionProperties:get() end



---@class UEditMeshPolygonsActionModeToolBuilder : UEditMeshPolygonsToolBuilder
UEditMeshPolygonsActionModeToolBuilder = {}

---@return UEditMeshPolygonsActionModeToolBuilder
function UEditMeshPolygonsActionModeToolBuilder:get() end


---@class UEditMeshPolygonsSelectionModeToolBuilder : UEditMeshPolygonsToolBuilder
UEditMeshPolygonsSelectionModeToolBuilder = {}

---@return UEditMeshPolygonsSelectionModeToolBuilder
function UEditMeshPolygonsSelectionModeToolBuilder:get() end


---@class UEditMeshPolygonsTool : USingleSelectionMeshEditingTool
---@field Preview UMeshOpPreviewWithBackgroundCompute
---@field CommonProps UPolyEditCommonProperties
---@field EditActions UEditMeshPolygonsToolActions
---@field EditActions_Triangles UEditMeshPolygonsToolActions_Triangles
---@field EditEdgeActions UEditMeshPolygonsToolEdgeActions
---@field EditEdgeActions_Triangles UEditMeshPolygonsToolEdgeActions_Triangles
---@field EditUVActions UEditMeshPolygonsToolUVActions
---@field CancelAction UEditMeshPolygonsToolCancelAction
---@field AcceptCancelAction UEditMeshPolygonsToolAcceptCancelAction
---@field TopologyProperties UPolyEditTopologyProperties
---@field ExtrudeActivity UPolyEditExtrudeActivity
---@field InsetOutsetActivity UPolyEditInsetOutsetActivity
---@field CutFacesActivity UPolyEditCutFacesActivity
---@field PlanarProjectionUVActivity UPolyEditPlanarProjectionUVActivity
---@field InsertEdgeActivity UPolyEditInsertEdgeActivity
---@field InsertEdgeLoopActivity UPolyEditInsertEdgeLoopActivity
---@field BevelEdgeActivity UPolyEditBevelEdgeActivity
---@field ActivityContext UPolyEditActivityContext
---@field SelectionMechanic UPolygonSelectionMechanic
---@field DragAlignmentMechanic UDragAlignmentMechanic
---@field TransformGizmo UCombinedTransformGizmo
---@field TransformProxy UTransformProxy
UEditMeshPolygonsTool = {}

---@return UEditMeshPolygonsTool
function UEditMeshPolygonsTool:get() end



---@class UEditMeshPolygonsToolAcceptCancelAction : UEditMeshPolygonsToolActionPropertySet
UEditMeshPolygonsToolAcceptCancelAction = {}

---@return UEditMeshPolygonsToolAcceptCancelAction
function UEditMeshPolygonsToolAcceptCancelAction:get() end

function UEditMeshPolygonsToolAcceptCancelAction:Cancel() end
function UEditMeshPolygonsToolAcceptCancelAction:Apply() end


---@class UEditMeshPolygonsToolActionPropertySet : UInteractiveToolPropertySet
UEditMeshPolygonsToolActionPropertySet = {}

---@return UEditMeshPolygonsToolActionPropertySet
function UEditMeshPolygonsToolActionPropertySet:get() end


---@class UEditMeshPolygonsToolActions : UEditMeshPolygonsToolActionPropertySet
UEditMeshPolygonsToolActions = {}

---@return UEditMeshPolygonsToolActions
function UEditMeshPolygonsToolActions:get() end

function UEditMeshPolygonsToolActions:SimplifyByGroups() end
function UEditMeshPolygonsToolActions:Retriangulate() end
function UEditMeshPolygonsToolActions:RecalcNormals() end
function UEditMeshPolygonsToolActions:PushPull() end
function UEditMeshPolygonsToolActions:Outset() end
function UEditMeshPolygonsToolActions:Offset() end
function UEditMeshPolygonsToolActions:Merge() end
function UEditMeshPolygonsToolActions:Inset() end
function UEditMeshPolygonsToolActions:InsertEdgeLoop() end
function UEditMeshPolygonsToolActions:InsertEdge() end
function UEditMeshPolygonsToolActions:Flip() end
function UEditMeshPolygonsToolActions:Extrude() end
function UEditMeshPolygonsToolActions:Duplicate() end
function UEditMeshPolygonsToolActions:Disconnect() end
function UEditMeshPolygonsToolActions:Delete() end
function UEditMeshPolygonsToolActions:Decompose() end
function UEditMeshPolygonsToolActions:CutFaces() end
function UEditMeshPolygonsToolActions:Bevel() end


---@class UEditMeshPolygonsToolActions_Triangles : UEditMeshPolygonsToolActionPropertySet
UEditMeshPolygonsToolActions_Triangles = {}

---@return UEditMeshPolygonsToolActions_Triangles
function UEditMeshPolygonsToolActions_Triangles:get() end

function UEditMeshPolygonsToolActions_Triangles:RecalcNormals() end
function UEditMeshPolygonsToolActions_Triangles:PushPull() end
function UEditMeshPolygonsToolActions_Triangles:Poke() end
function UEditMeshPolygonsToolActions_Triangles:Outset() end
function UEditMeshPolygonsToolActions_Triangles:Offset() end
function UEditMeshPolygonsToolActions_Triangles:Inset() end
function UEditMeshPolygonsToolActions_Triangles:Flip() end
function UEditMeshPolygonsToolActions_Triangles:Extrude() end
function UEditMeshPolygonsToolActions_Triangles:Duplicate() end
function UEditMeshPolygonsToolActions_Triangles:Disconnect() end
function UEditMeshPolygonsToolActions_Triangles:Delete() end
function UEditMeshPolygonsToolActions_Triangles:CutFaces() end


---@class UEditMeshPolygonsToolBuilder : USingleSelectionMeshEditingToolBuilder
UEditMeshPolygonsToolBuilder = {}

---@return UEditMeshPolygonsToolBuilder
function UEditMeshPolygonsToolBuilder:get() end


---@class UEditMeshPolygonsToolCancelAction : UEditMeshPolygonsToolActionPropertySet
UEditMeshPolygonsToolCancelAction = {}

---@return UEditMeshPolygonsToolCancelAction
function UEditMeshPolygonsToolCancelAction:get() end

function UEditMeshPolygonsToolCancelAction:Done() end


---@class UEditMeshPolygonsToolEdgeActions : UEditMeshPolygonsToolActionPropertySet
UEditMeshPolygonsToolEdgeActions = {}

---@return UEditMeshPolygonsToolEdgeActions
function UEditMeshPolygonsToolEdgeActions:get() end

function UEditMeshPolygonsToolEdgeActions:Weld() end
function UEditMeshPolygonsToolEdgeActions:Straighten() end
function UEditMeshPolygonsToolEdgeActions:FillHole() end
function UEditMeshPolygonsToolEdgeActions:Bridge() end
function UEditMeshPolygonsToolEdgeActions:Bevel() end


---@class UEditMeshPolygonsToolEdgeActions_Triangles : UEditMeshPolygonsToolActionPropertySet
UEditMeshPolygonsToolEdgeActions_Triangles = {}

---@return UEditMeshPolygonsToolEdgeActions_Triangles
function UEditMeshPolygonsToolEdgeActions_Triangles:get() end

function UEditMeshPolygonsToolEdgeActions_Triangles:Weld() end
function UEditMeshPolygonsToolEdgeActions_Triangles:Split() end
function UEditMeshPolygonsToolEdgeActions_Triangles:Flip() end
function UEditMeshPolygonsToolEdgeActions_Triangles:FillHole() end
function UEditMeshPolygonsToolEdgeActions_Triangles:Collapse() end


---@class UEditMeshPolygonsToolUVActions : UEditMeshPolygonsToolActionPropertySet
UEditMeshPolygonsToolUVActions = {}

---@return UEditMeshPolygonsToolUVActions
function UEditMeshPolygonsToolUVActions:get() end

function UEditMeshPolygonsToolUVActions:PlanarProjection() end


---@class UExistingMeshMaterialProperties : UInteractiveToolPropertySet
---@field MaterialMode ESetMeshMaterialMode
---@field CheckerDensity float
---@field OverrideMaterial UMaterialInterface
---@field UVChannel FString
---@field UVChannelNamesList TArray<FString>
---@field CheckerMaterial UMaterialInstanceDynamic
UExistingMeshMaterialProperties = {}

---@return UExistingMeshMaterialProperties
function UExistingMeshMaterialProperties:get() end

---@return TArray<FString>
function UExistingMeshMaterialProperties:GetUVChannelNamesFunc() end


---@class UGroupEdgeInsertionProperties : UInteractiveToolPropertySet
---@field InsertionMode EGroupEdgeInsertionMode
---@field VertexTolerance double
UGroupEdgeInsertionProperties = {}

---@return UGroupEdgeInsertionProperties
function UGroupEdgeInsertionProperties:get() end



---@class UMeshEditingViewProperties : UInteractiveToolPropertySet
---@field bShowWireframe boolean
---@field MaterialMode EMeshEditingMaterialModes
---@field bFlatShading boolean
---@field Color FLinearColor
---@field Image UTexture2D
---@field Opacity double
---@field TransparentMaterialColor FLinearColor
---@field bTwoSided boolean
---@field CustomMaterial TWeakObjectPtr<UMaterialInterface>
UMeshEditingViewProperties = {}

---@return UMeshEditingViewProperties
function UMeshEditingViewProperties:get() end



---@class UMeshUVChannelProperties : UInteractiveToolPropertySet
---@field UVChannel FString
---@field UVChannelNamesList TArray<FString>
UMeshUVChannelProperties = {}

---@return UMeshUVChannelProperties
function UMeshUVChannelProperties:get() end

---@return TArray<FString>
function UMeshUVChannelProperties:GetUVChannelNamesFunc() end


---@class UNewMeshMaterialProperties : UInteractiveToolPropertySet
---@field Material TWeakObjectPtr<UMaterialInterface>
---@field UVScale float
---@field bWorldSpaceUVScale boolean
---@field bShowWireframe boolean
---@field bShowExtendedOptions boolean
UNewMeshMaterialProperties = {}

---@return UNewMeshMaterialProperties
function UNewMeshMaterialProperties:get() end



---@class UPolyEditActivityContext : UObject
---@field CommonProperties UPolyEditCommonProperties
---@field Preview UMeshOpPreviewWithBackgroundCompute
---@field SelectionMechanic UPolygonSelectionMechanic
UPolyEditActivityContext = {}

---@return UPolyEditActivityContext
function UPolyEditActivityContext:get() end



---@class UPolyEditBevelEdgeActivity : UInteractiveToolActivity
---@field BevelProperties UPolyEditBevelEdgeProperties
---@field ActivityContext UPolyEditActivityContext
UPolyEditBevelEdgeActivity = {}

---@return UPolyEditBevelEdgeActivity
function UPolyEditBevelEdgeActivity:get() end



---@class UPolyEditBevelEdgeProperties : UInteractiveToolPropertySet
---@field BevelDistance double
UPolyEditBevelEdgeProperties = {}

---@return UPolyEditBevelEdgeProperties
function UPolyEditBevelEdgeProperties:get() end



---@class UPolyEditCommonProperties : UInteractiveToolPropertySet
---@field bShowWireframe boolean
---@field bShowSelectableCorners boolean
---@field bGizmoVisible boolean
---@field LocalFrameMode ELocalFrameMode
---@field bLockRotation boolean
---@field bLocalCoordSystem boolean
UPolyEditCommonProperties = {}

---@return UPolyEditCommonProperties
function UPolyEditCommonProperties:get() end



---@class UPolyEditCutFacesActivity : UInteractiveToolActivity
---@field CutProperties UPolyEditCutProperties
---@field EditPreview UPolyEditPreviewMesh
---@field SurfacePathMechanic UCollectSurfacePathMechanic
---@field ActivityContext UPolyEditActivityContext
UPolyEditCutFacesActivity = {}

---@return UPolyEditCutFacesActivity
function UPolyEditCutFacesActivity:get() end



---@class UPolyEditCutProperties : UInteractiveToolPropertySet
---@field Orientation EPolyEditCutPlaneOrientation
---@field bSnapToVertices boolean
UPolyEditCutProperties = {}

---@return UPolyEditCutProperties
function UPolyEditCutProperties:get() end



---@class UPolyEditExtrudeActivity : UInteractiveToolActivity
---@field ExtrudeProperties UPolyEditExtrudeProperties
---@field OffsetProperties UPolyEditOffsetProperties
---@field PushPullProperties UPolyEditPushPullProperties
---@field ExtrudeHeightMechanic UPlaneDistanceFromHitMechanic
---@field ActivityContext UPolyEditActivityContext
UPolyEditExtrudeActivity = {}

---@return UPolyEditExtrudeActivity
function UPolyEditExtrudeActivity:get() end



---@class UPolyEditExtrudeProperties : UInteractiveToolPropertySet
---@field DistanceMode EPolyEditExtrudeDistanceMode
---@field Distance double
---@field Direction EPolyEditExtrudeDirection
---@field MeasureDirection EPolyEditExtrudeDirection
---@field bShellsToSolids boolean
---@field DirectionMode EPolyEditExtrudeModeOptions
---@field MaxDistanceScaleFactor double
---@field bUseColinearityForSettingBorderGroups boolean
UPolyEditExtrudeProperties = {}

---@return UPolyEditExtrudeProperties
function UPolyEditExtrudeProperties:get() end



---@class UPolyEditInsertEdgeActivity : UInteractiveToolActivity
---@field Settings UGroupEdgeInsertionProperties
---@field ActivityContext UPolyEditActivityContext
UPolyEditInsertEdgeActivity = {}

---@return UPolyEditInsertEdgeActivity
function UPolyEditInsertEdgeActivity:get() end



---@class UPolyEditInsertEdgeLoopActivity : UInteractiveToolActivity
---@field Settings UEdgeLoopInsertionProperties
---@field ActivityContext UPolyEditActivityContext
UPolyEditInsertEdgeLoopActivity = {}

---@return UPolyEditInsertEdgeLoopActivity
function UPolyEditInsertEdgeLoopActivity:get() end



---@class UPolyEditInsetOutsetActivity : UInteractiveToolActivity
---@field Settings UPolyEditInsetOutsetProperties
---@field EditPreview UPolyEditPreviewMesh
---@field CurveDistMechanic USpatialCurveDistanceMechanic
---@field ActivityContext UPolyEditActivityContext
UPolyEditInsetOutsetActivity = {}

---@return UPolyEditInsetOutsetActivity
function UPolyEditInsetOutsetActivity:get() end



---@class UPolyEditInsetOutsetProperties : UInteractiveToolPropertySet
---@field Softness float
---@field bBoundaryOnly boolean
---@field AreaScale float
---@field bReproject boolean
---@field bOutset boolean
UPolyEditInsetOutsetProperties = {}

---@return UPolyEditInsetOutsetProperties
function UPolyEditInsetOutsetProperties:get() end



---@class UPolyEditOffsetProperties : UInteractiveToolPropertySet
---@field DistanceMode EPolyEditExtrudeDistanceMode
---@field Distance double
---@field DirectionMode EPolyEditOffsetModeOptions
---@field MaxDistanceScaleFactor double
---@field bShellsToSolids boolean
---@field MeasureDirection EPolyEditExtrudeDirection
---@field bUseColinearityForSettingBorderGroups boolean
UPolyEditOffsetProperties = {}

---@return UPolyEditOffsetProperties
function UPolyEditOffsetProperties:get() end



---@class UPolyEditPlanarProjectionUVActivity : UInteractiveToolActivity
---@field SetUVProperties UPolyEditSetUVProperties
---@field EditPreview UPolyEditPreviewMesh
---@field SurfacePathMechanic UCollectSurfacePathMechanic
---@field ActivityContext UPolyEditActivityContext
UPolyEditPlanarProjectionUVActivity = {}

---@return UPolyEditPlanarProjectionUVActivity
function UPolyEditPlanarProjectionUVActivity:get() end



---@class UPolyEditPushPullProperties : UInteractiveToolPropertySet
---@field DistanceMode EPolyEditExtrudeDistanceMode
---@field Distance double
---@field DirectionMode EPolyEditPushPullModeOptions
---@field MaxDistanceScaleFactor double
---@field bShellsToSolids boolean
---@field MeasureDirection EPolyEditExtrudeDirection
---@field bUseColinearityForSettingBorderGroups boolean
UPolyEditPushPullProperties = {}

---@return UPolyEditPushPullProperties
function UPolyEditPushPullProperties:get() end



---@class UPolyEditSetUVProperties : UInteractiveToolPropertySet
---@field bShowMaterial boolean
UPolyEditSetUVProperties = {}

---@return UPolyEditSetUVProperties
function UPolyEditSetUVProperties:get() end



---@class UPolyEditTopologyProperties : UEditMeshPolygonsToolActionPropertySet
---@field bAddExtraCorners boolean
---@field ExtraCornerAngleThresholdDegrees double
UPolyEditTopologyProperties = {}

---@return UPolyEditTopologyProperties
function UPolyEditTopologyProperties:get() end

function UPolyEditTopologyProperties:RegenerateExtraCorners() end


---@class UProceduralArrowToolProperties : UProceduralShapeToolProperties
---@field ShaftRadius float
---@field ShaftHeight float
---@field HeadRadius float
---@field HeadHeight float
---@field RadialSlices int32
---@field HeightSubdivisions int32
UProceduralArrowToolProperties = {}

---@return UProceduralArrowToolProperties
function UProceduralArrowToolProperties:get() end



---@class UProceduralBoxToolProperties : UProceduralShapeToolProperties
---@field Width float
---@field Depth float
---@field Height float
---@field WidthSubdivisions int32
---@field DepthSubdivisions int32
---@field HeightSubdivisions int32
UProceduralBoxToolProperties = {}

---@return UProceduralBoxToolProperties
function UProceduralBoxToolProperties:get() end



---@class UProceduralConeToolProperties : UProceduralShapeToolProperties
---@field Radius float
---@field Height float
---@field RadialSlices int32
---@field HeightSubdivisions int32
UProceduralConeToolProperties = {}

---@return UProceduralConeToolProperties
function UProceduralConeToolProperties:get() end



---@class UProceduralCylinderToolProperties : UProceduralShapeToolProperties
---@field Radius float
---@field Height float
---@field RadialSlices int32
---@field HeightSubdivisions int32
UProceduralCylinderToolProperties = {}

---@return UProceduralCylinderToolProperties
function UProceduralCylinderToolProperties:get() end



---@class UProceduralDiscToolProperties : UProceduralShapeToolProperties
---@field DiscType EProceduralDiscType
---@field Radius float
---@field RadialSlices int32
---@field RadialSubdivisions int32
---@field HoleRadius float
UProceduralDiscToolProperties = {}

---@return UProceduralDiscToolProperties
function UProceduralDiscToolProperties:get() end



---@class UProceduralRectangleToolProperties : UProceduralShapeToolProperties
---@field RectangleType EProceduralRectType
---@field Width float
---@field Depth float
---@field WidthSubdivisions int32
---@field DepthSubdivisions int32
---@field CornerRadius float
---@field CornerSlices int32
UProceduralRectangleToolProperties = {}

---@return UProceduralRectangleToolProperties
function UProceduralRectangleToolProperties:get() end



---@class UProceduralShapeToolProperties : UInteractiveToolPropertySet
---@field PolygroupMode EMakeMeshPolygroupMode
---@field TargetSurface EMakeMeshPlacementType
---@field PivotLocation EMakeMeshPivotLocation
---@field Rotation float
---@field bAlignToNormal boolean
---@field bShowGizmo boolean
---@field bShowGizmoOptions boolean
UProceduralShapeToolProperties = {}

---@return UProceduralShapeToolProperties
function UProceduralShapeToolProperties:get() end



---@class UProceduralSphereToolProperties : UProceduralShapeToolProperties
---@field Radius float
---@field SubdivisionType EProceduralSphereType
---@field Subdivisions int32
---@field HorizontalSlices int32
---@field VerticalSlices int32
UProceduralSphereToolProperties = {}

---@return UProceduralSphereToolProperties
function UProceduralSphereToolProperties:get() end



---@class UProceduralStairsToolProperties : UProceduralShapeToolProperties
---@field StairsType EProceduralStairsType
---@field NumSteps int32
---@field StepWidth float
---@field StepHeight float
---@field StepDepth float
---@field CurveAngle float
---@field SpiralAngle float
---@field InnerRadius float
UProceduralStairsToolProperties = {}

---@return UProceduralStairsToolProperties
function UProceduralStairsToolProperties:get() end



---@class UProceduralTorusToolProperties : UProceduralShapeToolProperties
---@field MajorRadius float
---@field MinorRadius float
---@field MajorSlices int32
---@field MinorSlices int32
UProceduralTorusToolProperties = {}

---@return UProceduralTorusToolProperties
function UProceduralTorusToolProperties:get() end



---@class URecomputeUVsTool : USingleSelectionMeshEditingTool
---@field UVChannelProperties UMeshUVChannelProperties
---@field Settings URecomputeUVsToolProperties
---@field PolygroupLayerProperties UPolygroupLayersProperties
---@field MaterialSettings UExistingMeshMaterialProperties
---@field bCreateUVLayoutViewOnSetup boolean
---@field UVLayoutView UUVLayoutPreview
---@field RecomputeUVsOpFactory URecomputeUVsOpFactory
---@field Preview UMeshOpPreviewWithBackgroundCompute
URecomputeUVsTool = {}

---@return URecomputeUVsTool
function URecomputeUVsTool:get() end



---@class URecomputeUVsToolBuilder : USingleSelectionMeshEditingToolBuilder
URecomputeUVsToolBuilder = {}

---@return URecomputeUVsToolBuilder
function URecomputeUVsToolBuilder:get() end


---@class URevolveOperatorFactory : UObject
---@field RevolveTool UDrawAndRevolveTool
URevolveOperatorFactory = {}

---@return URevolveOperatorFactory
function URevolveOperatorFactory:get() end



---@class URevolveProperties : UInteractiveToolPropertySet
---@field RevolveDegreesClamped double
---@field RevolveDegrees double
---@field RevolveDegreesOffset double
---@field StepsMaxDegrees double
---@field bExplicitSteps boolean
---@field NumExplicitSteps int32
---@field HeightOffsetPerDegree double
---@field bReverseRevolutionDirection boolean
---@field bFlipMesh boolean
---@field bSharpNormals boolean
---@field SharpNormalsDegreeThreshold double
---@field bPathAtMidpointOfStep boolean
---@field PolygroupMode ERevolvePropertiesPolygroupMode
---@field QuadSplitMode ERevolvePropertiesQuadSplit
URevolveProperties = {}

---@return URevolveProperties
function URevolveProperties:get() end



---@class URevolveToolProperties : URevolveProperties
---@field CapFillMode ERevolvePropertiesCapFillMode
---@field bClosePathToAxis boolean
---@field DrawPlaneOrigin FVector
---@field DrawPlaneOrientation FRotator
---@field bEnableSnapping boolean
---@field bAllowedToEditDrawPlane boolean
URevolveToolProperties = {}

---@return URevolveToolProperties
function URevolveToolProperties:get() end



---@class UTrimMeshesToolProperties : UInteractiveToolPropertySet
---@field WhichMesh ETrimOperation
---@field TrimSide ETrimSide
---@field WindingThreshold float
---@field bShowTrimmingMesh boolean
---@field OpacityOfTrimmingMesh float
---@field ColorOfTrimmingMesh FLinearColor
UTrimMeshesToolProperties = {}

---@return UTrimMeshesToolProperties
function UTrimMeshesToolProperties:get() end



---@class UUVLayoutTool : UMultiSelectionMeshEditingTool
---@field UVChannelProperties UMeshUVChannelProperties
---@field BasicProperties UUVLayoutProperties
---@field MaterialSettings UExistingMeshMaterialProperties
---@field Previews TArray<UMeshOpPreviewWithBackgroundCompute>
---@field Factories TArray<UUVLayoutOperatorFactory>
---@field UVLayoutView UUVLayoutPreview
UUVLayoutTool = {}

---@return UUVLayoutTool
function UUVLayoutTool:get() end



---@class UUVLayoutToolBuilder : UMultiSelectionMeshEditingToolBuilder
UUVLayoutToolBuilder = {}

---@return UUVLayoutToolBuilder
function UUVLayoutToolBuilder:get() end


---@class UUVProjectionOperatorFactory : UObject
---@field Tool UUVProjectionTool
UUVProjectionOperatorFactory = {}

---@return UUVProjectionOperatorFactory
function UUVProjectionOperatorFactory:get() end



---@class UUVProjectionTool : USingleSelectionMeshEditingTool
---@field UVChannelProperties UMeshUVChannelProperties
---@field BasicProperties UUVProjectionToolProperties
---@field EditActions UUVProjectionToolEditActions
---@field MaterialSettings UExistingMeshMaterialProperties
---@field Preview UMeshOpPreviewWithBackgroundCompute
---@field CheckerMaterial UMaterialInstanceDynamic
---@field TransformGizmo UCombinedTransformGizmo
---@field TransformProxy UTransformProxy
---@field OperatorFactory UUVProjectionOperatorFactory
---@field EdgeRenderer UPreviewGeometry
---@field ClickToSetPlaneBehavior USingleClickInputBehavior
UUVProjectionTool = {}

---@return UUVProjectionTool
function UUVProjectionTool:get() end



---@class UUVProjectionToolBuilder : USingleSelectionMeshEditingToolBuilder
UUVProjectionToolBuilder = {}

---@return UUVProjectionToolBuilder
function UUVProjectionToolBuilder:get() end


---@class UUVProjectionToolEditActions : UInteractiveToolPropertySet
UUVProjectionToolEditActions = {}

---@return UUVProjectionToolEditActions
function UUVProjectionToolEditActions:get() end

function UUVProjectionToolEditActions:Reset() end
function UUVProjectionToolEditActions:AutoFitAlign() end
function UUVProjectionToolEditActions:AutoFit() end


---@class UUVProjectionToolProperties : UInteractiveToolPropertySet
---@field ProjectionType EUVProjectionMethod
---@field Dimensions FVector
---@field bUniformDimensions boolean
---@field Initialization EUVProjectionToolInitializationMode
---@field CylinderSplitAngle float
---@field ExpMapNormalBlending float
---@field ExpMapSmoothingSteps int32
---@field ExpMapSmoothingAlpha float
---@field Rotation float
---@field Scale FVector2D
---@field Translation FVector2D
---@field SavedDimensions FVector
---@field bSavedUniformDimensions boolean
---@field SavedTransform FTransform
UUVProjectionToolProperties = {}

---@return UUVProjectionToolProperties
function UUVProjectionToolProperties:get() end



