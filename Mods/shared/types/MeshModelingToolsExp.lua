---@meta

---@class FBakeMultiMeshDetailProperties
---@field SourceMesh UStaticMesh
---@field SourceTexture UTexture2D
---@field SourceTextureUVLayer int32
FBakeMultiMeshDetailProperties = {}

---@return FBakeMultiMeshDetailProperties
function FBakeMultiMeshDetailProperties:get() end



---@class FBrushToolRadius
---@field SizeType EBrushToolSizeType
---@field AdaptiveSize float
---@field WorldRadius float
FBrushToolRadius = {}

---@return FBrushToolRadius
function FBrushToolRadius:get() end



---@class FEditPivotTarget
---@field TransformProxy UTransformProxy
---@field TransformGizmo UCombinedTransformGizmo
FEditPivotTarget = {}

---@return FEditPivotTarget
function FEditPivotTarget:get() end



---@class FPerlinLayerProperties
---@field Frequency float
---@field Intensity float
FPerlinLayerProperties = {}

---@return FPerlinLayerProperties
function FPerlinLayerProperties:get() end



---@class FPhysicsBoxData
---@field Dimensions FVector
---@field Transform FTransform
---@field Element FKShapeElem
FPhysicsBoxData = {}

---@return FPhysicsBoxData
function FPhysicsBoxData:get() end



---@class FPhysicsCapsuleData
---@field Radius float
---@field Length float
---@field Transform FTransform
---@field Element FKShapeElem
FPhysicsCapsuleData = {}

---@return FPhysicsCapsuleData
function FPhysicsCapsuleData:get() end



---@class FPhysicsConvexData
---@field NumVertices int32
---@field NumFaces int32
---@field Element FKShapeElem
FPhysicsConvexData = {}

---@return FPhysicsConvexData
function FPhysicsConvexData:get() end



---@class FPhysicsLevelSetData
---@field Element FKShapeElem
FPhysicsLevelSetData = {}

---@return FPhysicsLevelSetData
function FPhysicsLevelSetData:get() end



---@class FPhysicsSphereData
---@field Radius float
---@field Transform FTransform
---@field Element FKShapeElem
FPhysicsSphereData = {}

---@return FPhysicsSphereData
function FPhysicsSphereData:get() end



---@class FTransformMeshesTarget
---@field TransformProxy UTransformProxy
---@field TransformGizmo UCombinedTransformGizmo
FTransformMeshesTarget = {}

---@return FTransformMeshesTarget
function FTransformMeshesTarget:get() end



---@class UAcceptOutputProperties : UInteractiveToolPropertySet
---@field bExportSeparatedPiecesAsNewMeshAssets boolean
UAcceptOutputProperties = {}

---@return UAcceptOutputProperties
function UAcceptOutputProperties:get() end



---@class UAddPatchTool : USingleClickTool
---@field ShapeSettings UAddPatchToolProperties
---@field MaterialProperties UNewMeshMaterialProperties
---@field PreviewMesh UPreviewMesh
UAddPatchTool = {}

---@return UAddPatchTool
function UAddPatchTool:get() end



---@class UAddPatchToolBuilder : UInteractiveToolBuilder
UAddPatchToolBuilder = {}

---@return UAddPatchToolBuilder
function UAddPatchToolBuilder:get() end


---@class UAddPatchToolProperties : UInteractiveToolPropertySet
---@field Width float
---@field Rotation float
---@field Subdivisions int32
---@field Shift float
UAddPatchToolProperties = {}

---@return UAddPatchToolProperties
function UAddPatchToolProperties:get() end



---@class UAlignObjectsTool : UMultiSelectionMeshEditingTool
---@field AlignProps UAlignObjectsToolProperties
UAlignObjectsTool = {}

---@return UAlignObjectsTool
function UAlignObjectsTool:get() end



---@class UAlignObjectsToolBuilder : UMultiSelectionMeshEditingToolBuilder
UAlignObjectsToolBuilder = {}

---@return UAlignObjectsToolBuilder
function UAlignObjectsToolBuilder:get() end


---@class UAlignObjectsToolProperties : UInteractiveToolPropertySet
---@field AlignType EAlignObjectsAlignTypes
---@field AlignTo EAlignObjectsAlignToOptions
---@field BoxPosition EAlignObjectsBoxPoint
---@field bAlignX boolean
---@field bAlignY boolean
---@field bAlignZ boolean
UAlignObjectsToolProperties = {}

---@return UAlignObjectsToolProperties
function UAlignObjectsToolProperties:get() end



---@class UBakeCurvatureMapToolProperties : UInteractiveToolPropertySet
---@field CurvatureType EBakeCurvatureTypeMode
---@field ColorMapping EBakeCurvatureColorMode
---@field ColorRangeMultiplier float
---@field MinRangeMultiplier float
---@field Clamping EBakeCurvatureClampMode
UBakeCurvatureMapToolProperties = {}

---@return UBakeCurvatureMapToolProperties
function UBakeCurvatureMapToolProperties:get() end



---@class UBakeInputMeshProperties : UInteractiveToolPropertySet
---@field TargetStaticMesh UStaticMesh
---@field TargetSkeletalMesh USkeletalMesh
---@field TargetDynamicMesh AActor
---@field TargetUVLayer FString
---@field bHasTargetUVLayer boolean
---@field SourceStaticMesh UStaticMesh
---@field SourceSkeletalMesh USkeletalMesh
---@field SourceDynamicMesh AActor
---@field bHideSourceMesh boolean
---@field SourceNormalMap UTexture2D
---@field SourceNormalMapUVLayer FString
---@field SourceNormalSpace EBakeNormalSpace
---@field bHasSourceNormalMap boolean
---@field ProjectionDistance float
---@field bProjectionInWorldSpace boolean
---@field TargetUVLayerNamesList TArray<FString>
---@field SourceUVLayerNamesList TArray<FString>
UBakeInputMeshProperties = {}

---@return UBakeInputMeshProperties
function UBakeInputMeshProperties:get() end

---@return TArray<FString>
function UBakeInputMeshProperties:GetTargetUVLayerNamesFunc() end
---@return TArray<FString>
function UBakeInputMeshProperties:GetSourceUVLayerNamesFunc() end


---@class UBakeMeshAttributeMapsResultToolProperties : UInteractiveToolPropertySet
---@field Result TMap<EBakeMapType, UTexture2D>
UBakeMeshAttributeMapsResultToolProperties = {}

---@return UBakeMeshAttributeMapsResultToolProperties
function UBakeMeshAttributeMapsResultToolProperties:get() end



---@class UBakeMeshAttributeMapsTool : UBakeMeshAttributeMapsToolBase
---@field InputMeshSettings UBakeInputMeshProperties
---@field Settings UBakeMeshAttributeMapsToolProperties
---@field ResultSettings UBakeMeshAttributeMapsResultToolProperties
UBakeMeshAttributeMapsTool = {}

---@return UBakeMeshAttributeMapsTool
function UBakeMeshAttributeMapsTool:get() end



---@class UBakeMeshAttributeMapsToolBase : UBakeMeshAttributeTool
---@field VisualizationProps UBakeVisualizationProperties
---@field PreviewMesh UPreviewMesh
---@field PreviewMaterial UMaterialInstanceDynamic
---@field BentNormalPreviewMaterial UMaterialInstanceDynamic
---@field CachedMaps TMap<EBakeMapType, UTexture2D>
---@field EmptyNormalMap UTexture2D
---@field EmptyColorMapBlack UTexture2D
---@field EmptyColorMapWhite UTexture2D
UBakeMeshAttributeMapsToolBase = {}

---@return UBakeMeshAttributeMapsToolBase
function UBakeMeshAttributeMapsToolBase:get() end



---@class UBakeMeshAttributeMapsToolBuilder : UMultiSelectionMeshEditingToolBuilder
UBakeMeshAttributeMapsToolBuilder = {}

---@return UBakeMeshAttributeMapsToolBuilder
function UBakeMeshAttributeMapsToolBuilder:get() end


---@class UBakeMeshAttributeMapsToolProperties : UInteractiveToolPropertySet
---@field MapTypes int32
---@field MapPreview FString
---@field Resolution EBakeTextureResolution
---@field BitDepth EBakeTextureBitDepth
---@field SamplesPerPixel EBakeTextureSamplesPerPixel
---@field SampleFilterMask UTexture2D
---@field MapPreviewNamesList TArray<FString>
UBakeMeshAttributeMapsToolProperties = {}

---@return UBakeMeshAttributeMapsToolProperties
function UBakeMeshAttributeMapsToolProperties:get() end

---@return TArray<FString>
function UBakeMeshAttributeMapsToolProperties:GetMapPreviewNamesFunc() end


---@class UBakeMeshAttributeTool : UMultiSelectionMeshEditingTool
---@field OcclusionSettings UBakeOcclusionMapToolProperties
---@field CurvatureSettings UBakeCurvatureMapToolProperties
---@field TextureSettings UBakeTexture2DProperties
---@field MultiTextureSettings UBakeMultiTexture2DProperties
---@field WorkingPreviewMaterial UMaterialInstanceDynamic
---@field ErrorPreviewMaterial UMaterialInstanceDynamic
UBakeMeshAttributeTool = {}

---@return UBakeMeshAttributeTool
function UBakeMeshAttributeTool:get() end



---@class UBakeMeshAttributeVertexTool : UBakeMeshAttributeTool
---@field InputMeshSettings UBakeInputMeshProperties
---@field Settings UBakeMeshAttributeVertexToolProperties
---@field PreviewMesh UPreviewMesh
---@field PreviewMaterial UMaterialInstanceDynamic
---@field PreviewAlphaMaterial UMaterialInstanceDynamic
UBakeMeshAttributeVertexTool = {}

---@return UBakeMeshAttributeVertexTool
function UBakeMeshAttributeVertexTool:get() end



---@class UBakeMeshAttributeVertexToolBuilder : UMultiSelectionMeshEditingToolBuilder
UBakeMeshAttributeVertexToolBuilder = {}

---@return UBakeMeshAttributeVertexToolBuilder
function UBakeMeshAttributeVertexToolBuilder:get() end


---@class UBakeMeshAttributeVertexToolProperties : UInteractiveToolPropertySet
---@field OutputMode EBakeVertexOutput
---@field OutputType int32
---@field OutputTypeR int32
---@field OutputTypeG int32
---@field OutputTypeB int32
---@field OutputTypeA int32
---@field PreviewMode EBakeVertexChannel
---@field bSplitAtNormalSeams boolean
---@field bSplitAtUVSeams boolean
UBakeMeshAttributeVertexToolProperties = {}

---@return UBakeMeshAttributeVertexToolProperties
function UBakeMeshAttributeVertexToolProperties:get() end



---@class UBakeMultiMeshAttributeMapsTool : UBakeMeshAttributeMapsToolBase
---@field Settings UBakeMultiMeshAttributeMapsToolProperties
---@field InputMeshSettings UBakeMultiMeshInputToolProperties
---@field ResultSettings UBakeMeshAttributeMapsResultToolProperties
UBakeMultiMeshAttributeMapsTool = {}

---@return UBakeMultiMeshAttributeMapsTool
function UBakeMultiMeshAttributeMapsTool:get() end



---@class UBakeMultiMeshAttributeMapsToolBuilder : UMultiSelectionMeshEditingToolBuilder
UBakeMultiMeshAttributeMapsToolBuilder = {}

---@return UBakeMultiMeshAttributeMapsToolBuilder
function UBakeMultiMeshAttributeMapsToolBuilder:get() end


---@class UBakeMultiMeshAttributeMapsToolProperties : UInteractiveToolPropertySet
---@field MapTypes int32
---@field MapPreview FString
---@field Resolution EBakeTextureResolution
---@field BitDepth EBakeTextureBitDepth
---@field SamplesPerPixel EBakeTextureSamplesPerPixel
---@field SampleFilterMask UTexture2D
---@field MapPreviewNamesList TArray<FString>
UBakeMultiMeshAttributeMapsToolProperties = {}

---@return UBakeMultiMeshAttributeMapsToolProperties
function UBakeMultiMeshAttributeMapsToolProperties:get() end

---@return TArray<FString>
function UBakeMultiMeshAttributeMapsToolProperties:GetMapPreviewNamesFunc() end


---@class UBakeMultiMeshInputToolProperties : UInteractiveToolPropertySet
---@field TargetStaticMesh UStaticMesh
---@field TargetSkeletalMesh USkeletalMesh
---@field TargetDynamicMesh AActor
---@field TargetUVLayer FString
---@field SourceMeshes TArray<FBakeMultiMeshDetailProperties>
---@field ProjectionDistance float
---@field TargetUVLayerNamesList TArray<FString>
UBakeMultiMeshInputToolProperties = {}

---@return UBakeMultiMeshInputToolProperties
function UBakeMultiMeshInputToolProperties:get() end

---@return TArray<FString>
function UBakeMultiMeshInputToolProperties:GetTargetUVLayerNamesFunc() end


---@class UBakeMultiTexture2DProperties : UInteractiveToolPropertySet
---@field MaterialIDSourceTextures TArray<UTexture2D>
---@field UVLayer FString
---@field UVLayerNamesList TArray<FString>
---@field AllSourceTextures TArray<UTexture2D>
UBakeMultiTexture2DProperties = {}

---@return UBakeMultiTexture2DProperties
function UBakeMultiTexture2DProperties:get() end

---@return TArray<FString>
function UBakeMultiTexture2DProperties:GetUVLayerNamesFunc() end


---@class UBakeNormalMapToolProperties : UInteractiveToolPropertySet
UBakeNormalMapToolProperties = {}

---@return UBakeNormalMapToolProperties
function UBakeNormalMapToolProperties:get() end


---@class UBakeOcclusionMapToolProperties : UInteractiveToolPropertySet
---@field OcclusionRays int32
---@field MaxDistance float
---@field SpreadAngle float
---@field BiasAngle float
UBakeOcclusionMapToolProperties = {}

---@return UBakeOcclusionMapToolProperties
function UBakeOcclusionMapToolProperties:get() end



---@class UBakeRenderCaptureInputToolProperties : UInteractiveToolPropertySet
---@field TargetStaticMesh UStaticMesh
---@field TargetUVLayer FString
---@field TargetUVLayerNamesList TArray<FString>
UBakeRenderCaptureInputToolProperties = {}

---@return UBakeRenderCaptureInputToolProperties
function UBakeRenderCaptureInputToolProperties:get() end

---@return TArray<FString>
function UBakeRenderCaptureInputToolProperties:GetTargetUVLayerNamesFunc() end
---@return int32
function UBakeRenderCaptureInputToolProperties:GetTargetUVLayerIndex() end


---@class UBakeRenderCaptureResults : UInteractiveToolPropertySet
---@field BaseColorMap UTexture2D
---@field NormalMap UTexture2D
---@field PackedMRSMap UTexture2D
---@field MetallicMap UTexture2D
---@field RoughnessMap UTexture2D
---@field SpecularMap UTexture2D
---@field EmissiveMap UTexture2D
UBakeRenderCaptureResults = {}

---@return UBakeRenderCaptureResults
function UBakeRenderCaptureResults:get() end



---@class UBakeRenderCaptureTool : UBakeMeshAttributeMapsToolBase
---@field Actors TArray<AActor>
---@field Settings UBakeRenderCaptureToolProperties
---@field RenderCaptureProperties URenderCaptureProperties
---@field InputMeshSettings UBakeRenderCaptureInputToolProperties
---@field ResultSettings UBakeRenderCaptureResults
---@field EmptyEmissiveMap UTexture2D
---@field EmptyPackedMRSMap UTexture2D
---@field EmptyRoughnessMap UTexture2D
---@field EmptyMetallicMap UTexture2D
---@field EmptySpecularMap UTexture2D
---@field PreviewMaterialRC UMaterialInstanceDynamic
---@field PreviewMaterialPackedRC UMaterialInstanceDynamic
---@field ComputedRenderCaptureProperties URenderCaptureProperties
UBakeRenderCaptureTool = {}

---@return UBakeRenderCaptureTool
function UBakeRenderCaptureTool:get() end



---@class UBakeRenderCaptureToolBuilder : UMultiSelectionMeshEditingToolBuilder
UBakeRenderCaptureToolBuilder = {}

---@return UBakeRenderCaptureToolBuilder
function UBakeRenderCaptureToolBuilder:get() end


---@class UBakeRenderCaptureToolProperties : UInteractiveToolPropertySet
---@field MapPreview FString
---@field MapPreviewNamesList TArray<FString>
---@field SamplesPerPixel EBakeTextureSamplesPerPixel
---@field TextureSize EBakeTextureResolution
---@field ValidSampleDepthThreshold float
UBakeRenderCaptureToolProperties = {}

---@return UBakeRenderCaptureToolProperties
function UBakeRenderCaptureToolProperties:get() end

---@return TArray<FString>
function UBakeRenderCaptureToolProperties:GetMapPreviewNamesFunc() end


---@class UBakeTexture2DProperties : UInteractiveToolPropertySet
---@field SourceTexture UTexture2D
---@field UVLayer FString
---@field UVLayerNamesList TArray<FString>
UBakeTexture2DProperties = {}

---@return UBakeTexture2DProperties
function UBakeTexture2DProperties:get() end

---@return TArray<FString>
function UBakeTexture2DProperties:GetUVLayerNamesFunc() end


---@class UBakeTransformTool : UMultiSelectionMeshEditingTool
---@field BasicProperties UBakeTransformToolProperties
UBakeTransformTool = {}

---@return UBakeTransformTool
function UBakeTransformTool:get() end



---@class UBakeTransformToolBuilder : UMultiSelectionMeshEditingToolBuilder
UBakeTransformToolBuilder = {}

---@return UBakeTransformToolBuilder
function UBakeTransformToolBuilder:get() end


---@class UBakeTransformToolProperties : UInteractiveToolPropertySet
---@field bBakeRotation boolean
---@field BakeScale EBakeScaleMethod
---@field bRecenterPivot boolean
---@field bAllowNoScale boolean
UBakeTransformToolProperties = {}

---@return UBakeTransformToolProperties
function UBakeTransformToolProperties:get() end



---@class UBakeVisualizationProperties : UInteractiveToolPropertySet
---@field bPreviewAsMaterial boolean
---@field Brightness float
---@field AOMultiplier float
UBakeVisualizationProperties = {}

---@return UBakeVisualizationProperties
function UBakeVisualizationProperties:get() end



---@class UBaseKelvinletBrushOpProps : UMeshSculptBrushOpProps
---@field Stiffness float
---@field Incompressiblity float
---@field BrushSteps int32
UBaseKelvinletBrushOpProps = {}

---@return UBaseKelvinletBrushOpProps
function UBaseKelvinletBrushOpProps:get() end



---@class UBasePlaneBrushOpProps : UMeshSculptBrushOpProps
UBasePlaneBrushOpProps = {}

---@return UBasePlaneBrushOpProps
function UBasePlaneBrushOpProps:get() end


---@class UBaseSmoothBrushOpProps : UMeshSculptBrushOpProps
UBaseSmoothBrushOpProps = {}

---@return UBaseSmoothBrushOpProps
function UBaseSmoothBrushOpProps:get() end


---@class UBrushRemeshProperties : URemeshProperties
---@field bEnableRemeshing boolean
---@field TriangleSize int32
---@field PreserveDetail int32
---@field Iterations int32
UBrushRemeshProperties = {}

---@return UBrushRemeshProperties
function UBrushRemeshProperties:get() end



---@class UCollisionGeometryVisualizationProperties : UInteractiveToolPropertySet
---@field LineThickness float
---@field bShowHidden boolean
---@field bRandomColors boolean
---@field Color FColor
UCollisionGeometryVisualizationProperties = {}

---@return UCollisionGeometryVisualizationProperties
function UCollisionGeometryVisualizationProperties:get() end



---@class UConvertMeshesTool : UMultiSelectionMeshEditingTool
---@field BasicProperties UConvertMeshesToolProperties
---@field OutputTypeProperties UCreateMeshObjectTypeProperties
UConvertMeshesTool = {}

---@return UConvertMeshesTool
function UConvertMeshesTool:get() end



---@class UConvertMeshesToolBuilder : UMultiSelectionMeshEditingToolBuilder
UConvertMeshesToolBuilder = {}

---@return UConvertMeshesToolBuilder
function UConvertMeshesToolBuilder:get() end


---@class UConvertMeshesToolProperties : UInteractiveToolPropertySet
---@field bTransferMaterials boolean
UConvertMeshesToolProperties = {}

---@return UConvertMeshesToolProperties
function UConvertMeshesToolProperties:get() end



---@class UConvertToPolygonsOperatorFactory : UObject
---@field ConvertToPolygonsTool UConvertToPolygonsTool
UConvertToPolygonsOperatorFactory = {}

---@return UConvertToPolygonsOperatorFactory
function UConvertToPolygonsOperatorFactory:get() end



---@class UConvertToPolygonsTool : USingleSelectionMeshEditingTool
---@field Settings UConvertToPolygonsToolProperties
---@field CopyFromLayerProperties UPolygroupLayersProperties
---@field OutputProperties UOutputPolygroupLayerProperties
---@field PreviewCompute UMeshOpPreviewWithBackgroundCompute
---@field PreviewGeometry UPreviewGeometry
UConvertToPolygonsTool = {}

---@return UConvertToPolygonsTool
function UConvertToPolygonsTool:get() end



---@class UConvertToPolygonsToolBuilder : USingleSelectionMeshEditingToolBuilder
UConvertToPolygonsToolBuilder = {}

---@return UConvertToPolygonsToolBuilder
function UConvertToPolygonsToolBuilder:get() end


---@class UConvertToPolygonsToolProperties : UInteractiveToolPropertySet
---@field ConversionMode EConvertToPolygonsMode
---@field AngleTolerance float
---@field NumPoints int32
---@field bSplitExisting boolean
---@field bNormalWeighted boolean
---@field NormalWeighting float
---@field QuadAdjacencyWeight float
---@field QuadMetricClamp float
---@field QuadSearchRounds int32
---@field bRespectUVSeams boolean
---@field bRespectHardNormals boolean
---@field MinGroupSize int32
---@field bCalculateNormals boolean
---@field bShowGroupColors boolean
UConvertToPolygonsToolProperties = {}

---@return UConvertToPolygonsToolProperties
function UConvertToPolygonsToolProperties:get() end



---@class UCubeGridDuringActivityActions : UInteractiveToolPropertySet
UCubeGridDuringActivityActions = {}

---@return UCubeGridDuringActivityActions
function UCubeGridDuringActivityActions:get() end

function UCubeGridDuringActivityActions:Done() end
function UCubeGridDuringActivityActions:Cancel() end


---@class UCubeGridTool : UInteractiveTool
---@field GridGizmo UCombinedTransformGizmo
---@field GridGizmoAlignmentMechanic UDragAlignmentMechanic
---@field GridGizmoTransformProxy UTransformProxy
---@field LineSets UPreviewGeometry
---@field ClickDragBehavior UClickDragInputBehavior
---@field HoverBehavior UMouseHoverBehavior
---@field CtrlMiddleClickBehavior ULocalSingleClickInputBehavior
---@field MiddleClickDragBehavior ULocalClickDragInputBehavior
---@field Settings UCubeGridToolProperties
---@field ToolActions UCubeGridToolActions
---@field DuringActivityActions UCubeGridDuringActivityActions
---@field MaterialProperties UNewMeshMaterialProperties
---@field OutputTypeProperties UCreateMeshObjectTypeProperties
---@field Target UToolTarget
---@field Preview UMeshOpPreviewWithBackgroundCompute
UCubeGridTool = {}

---@return UCubeGridTool
function UCubeGridTool:get() end



---@class UCubeGridToolActions : UInteractiveToolPropertySet
---@field GridSourceActor AActor
UCubeGridToolActions = {}

---@return UCubeGridToolActions
function UCubeGridToolActions:get() end

function UCubeGridToolActions:SlideForward() end
function UCubeGridToolActions:SlideBack() end
function UCubeGridToolActions:ResetGridFromActor() end
function UCubeGridToolActions:Push() end
function UCubeGridToolActions:Pull() end
function UCubeGridToolActions:Flip() end
function UCubeGridToolActions:CornerMode() end


---@class UCubeGridToolBuilder : UInteractiveToolWithToolTargetsBuilder
UCubeGridToolBuilder = {}

---@return UCubeGridToolBuilder
function UCubeGridToolBuilder:get() end


---@class UCubeGridToolProperties : UInteractiveToolPropertySet
---@field GridFrameOrigin FVector
---@field GridFrameOrientation FRotator
---@field bShowGizmo boolean
---@field GridPower uint8
---@field CurrentBlockSize double
---@field BlocksPerStep int32
---@field bPowerOfTwoBlockSizes boolean
---@field BlockBaseSize double
---@field bCrosswiseDiagonal boolean
---@field bKeepSideGroups boolean
---@field PlaneTolerance double
---@field bHitUnrelatedGeometry boolean
---@field bHitGridGroundPlaneIfCloser boolean
---@field FaceSelectionMode ECubeGridToolFaceSelectionMode
---@field ToggleCornerMode FString
---@field PushPull FString
---@field ResizeGrid FString
---@field SlideSelection FString
---@field FlipSelection FString
---@field GridGizmo FString
---@field QuickShiftGizmo FString
---@field AlignGizmo FString
---@field bInCornerMode boolean
---@field bAllowedToEditGrid boolean
UCubeGridToolProperties = {}

---@return UCubeGridToolProperties
function UCubeGridToolProperties:get() end



---@class UDeformMeshPolygonsTool : UMeshSurfacePointTool
---@field PreviewMeshActor AInternalToolFrameworkActor
---@field DynamicMeshComponent UDynamicMeshComponent
---@field TransformProps UDeformMeshPolygonsTransformProperties
UDeformMeshPolygonsTool = {}

---@return UDeformMeshPolygonsTool
function UDeformMeshPolygonsTool:get() end



---@class UDeformMeshPolygonsToolBuilder : UMeshSurfacePointMeshEditingToolBuilder
UDeformMeshPolygonsToolBuilder = {}

---@return UDeformMeshPolygonsToolBuilder
function UDeformMeshPolygonsToolBuilder:get() end


---@class UDeformMeshPolygonsTransformProperties : UInteractiveToolPropertySet
---@field DeformationStrategy EGroupTopologyDeformationStrategy
---@field TransformMode EQuickTransformerMode
---@field bSelectFaces boolean
---@field bSelectEdges boolean
---@field bSelectVertices boolean
---@field bShowWireframe boolean
---@field SelectedWeightScheme EWeightScheme
---@field HandleWeight double
---@field bPostFixHandles boolean
UDeformMeshPolygonsTransformProperties = {}

---@return UDeformMeshPolygonsTransformProperties
function UDeformMeshPolygonsTransformProperties:get() end



---@class UDiffusionSmoothProperties : UInteractiveToolPropertySet
---@field SmoothingPerStep float
---@field Steps int32
---@field bPreserveUVs boolean
UDiffusionSmoothProperties = {}

---@return UDiffusionSmoothProperties
function UDiffusionSmoothProperties:get() end



---@class UDisplaceMeshCommonProperties : UInteractiveToolPropertySet
---@field DisplacementType EDisplaceMeshToolDisplaceType
---@field DisplaceIntensity float
---@field RandomSeed int32
---@field SubdivisionType EDisplaceMeshToolSubdivisionType
---@field Subdivisions int32
---@field WeightMap FName
---@field WeightMapsList TArray<FString>
---@field bInvertWeightMap boolean
---@field bShowWireframe boolean
---@field bDisableSizeWarning boolean
UDisplaceMeshCommonProperties = {}

---@return UDisplaceMeshCommonProperties
function UDisplaceMeshCommonProperties:get() end

---@return TArray<FString>
function UDisplaceMeshCommonProperties:GetWeightMapsFunc() end


---@class UDisplaceMeshDirectionalFilterProperties : UInteractiveToolPropertySet
---@field bEnableFilter boolean
---@field FilterDirection FVector
---@field FilterWidth float
UDisplaceMeshDirectionalFilterProperties = {}

---@return UDisplaceMeshDirectionalFilterProperties
function UDisplaceMeshDirectionalFilterProperties:get() end



---@class UDisplaceMeshPerlinNoiseProperties : UInteractiveToolPropertySet
---@field PerlinLayerProperties TArray<FPerlinLayerProperties>
UDisplaceMeshPerlinNoiseProperties = {}

---@return UDisplaceMeshPerlinNoiseProperties
function UDisplaceMeshPerlinNoiseProperties:get() end



---@class UDisplaceMeshSineWaveProperties : UInteractiveToolPropertySet
---@field SineWaveFrequency float
---@field SineWavePhaseShift float
---@field SineWaveDirection FVector
UDisplaceMeshSineWaveProperties = {}

---@return UDisplaceMeshSineWaveProperties
function UDisplaceMeshSineWaveProperties:get() end



---@class UDisplaceMeshTextureMapProperties : UInteractiveToolPropertySet
---@field DisplacementMap UTexture2D
---@field Channel EDisplaceMeshToolChannelType
---@field DisplacementMapBaseValue float
---@field UVScale FVector2D
---@field UVOffset FVector2D
---@field bApplyAdjustmentCurve boolean
---@field AdjustmentCurve UCurveFloat
---@field bRecalcNormals boolean
UDisplaceMeshTextureMapProperties = {}

---@return UDisplaceMeshTextureMapProperties
function UDisplaceMeshTextureMapProperties:get() end



---@class UDisplaceMeshTool : USingleSelectionMeshEditingTool
---@field CommonProperties UDisplaceMeshCommonProperties
---@field DirectionalFilterProperties UDisplaceMeshDirectionalFilterProperties
---@field TextureMapProperties UDisplaceMeshTextureMapProperties
---@field NoiseProperties UDisplaceMeshPerlinNoiseProperties
---@field SineWaveProperties UDisplaceMeshSineWaveProperties
---@field SelectiveTessellationProperties USelectiveTessellationProperties
---@field ActiveContrastCurveTarget UCurveFloat
---@field PreviewMeshActor AInternalToolFrameworkActor
---@field DynamicMeshComponent UDynamicMeshComponent
UDisplaceMeshTool = {}

---@return UDisplaceMeshTool
function UDisplaceMeshTool:get() end



---@class UDisplaceMeshToolBuilder : USingleSelectionMeshEditingToolBuilder
UDisplaceMeshToolBuilder = {}

---@return UDisplaceMeshToolBuilder
function UDisplaceMeshToolBuilder:get() end


---@class UDrawPolyPathExtrudeProperties : UInteractiveToolPropertySet
---@field Direction EDrawPolyPathExtrudeDirection
UDrawPolyPathExtrudeProperties = {}

---@return UDrawPolyPathExtrudeProperties
function UDrawPolyPathExtrudeProperties:get() end



---@class UDrawPolyPathProperties : UInteractiveToolPropertySet
---@field WidthMode EDrawPolyPathWidthMode
---@field Width float
---@field bRoundedCorners boolean
---@field RadiusMode EDrawPolyPathRadiusMode
---@field CornerRadius float
---@field RadialSlices int32
---@field bSinglePolyGroup boolean
---@field ExtrudeMode EDrawPolyPathExtrudeMode
---@field ExtrudeHeight float
---@field RampStartRatio float
UDrawPolyPathProperties = {}

---@return UDrawPolyPathProperties
function UDrawPolyPathProperties:get() end



---@class UDrawPolyPathTool : UInteractiveTool
---@field OutputTypeProperties UCreateMeshObjectTypeProperties
---@field TransformProps UDrawPolyPathProperties
---@field ExtrudeProperties UDrawPolyPathExtrudeProperties
---@field MaterialProperties UNewMeshMaterialProperties
---@field PlaneMechanic UConstructionPlaneMechanic
---@field EditPreview UPolyEditPreviewMesh
---@field ExtrudeHeightMechanic UPlaneDistanceFromHitMechanic
---@field CurveDistMechanic USpatialCurveDistanceMechanic
---@field SurfacePathMechanic UCollectSurfacePathMechanic
UDrawPolyPathTool = {}

---@return UDrawPolyPathTool
function UDrawPolyPathTool:get() end



---@class UDrawPolyPathToolBuilder : UMeshSurfacePointToolBuilder
UDrawPolyPathToolBuilder = {}

---@return UDrawPolyPathToolBuilder
function UDrawPolyPathToolBuilder:get() end


---@class UDynamicMeshBrushProperties : UInteractiveToolPropertySet
---@field BrushSize FBrushToolRadius
---@field BrushFalloffAmount float
---@field Depth float
---@field bHitBackFaces boolean
UDynamicMeshBrushProperties = {}

---@return UDynamicMeshBrushProperties
function UDynamicMeshBrushProperties:get() end



---@class UDynamicMeshBrushSculptProperties : UInteractiveToolPropertySet
---@field bIsRemeshingEnabled boolean
---@field PrimaryBrushType EDynamicMeshSculptBrushType
---@field PrimaryBrushSpeed float
---@field bPreserveUVFlow boolean
---@field bFreezeTarget boolean
---@field SmoothBrushSpeed float
---@field bDetailPreservingSmooth boolean
UDynamicMeshBrushSculptProperties = {}

---@return UDynamicMeshBrushSculptProperties
function UDynamicMeshBrushSculptProperties:get() end



---@class UDynamicMeshBrushTool : UBaseBrushTool
---@field PreviewMesh UPreviewMesh
UDynamicMeshBrushTool = {}

---@return UDynamicMeshBrushTool
function UDynamicMeshBrushTool:get() end



---@class UDynamicMeshSculptTool : UMeshSurfacePointTool
---@field BrushProperties UDynamicMeshBrushProperties
---@field SculptProperties UDynamicMeshBrushSculptProperties
---@field SculptMaxBrushProperties USculptMaxBrushProperties
---@field KelvinBrushProperties UKelvinBrushProperties
---@field RemeshProperties UBrushRemeshProperties
---@field GizmoProperties UFixedPlaneBrushProperties
---@field ViewProperties UMeshEditingViewProperties
---@field SculptToolActions UDynamicSculptToolActions
---@field BrushIndicator UBrushStampIndicator
---@field BrushIndicatorMaterial UMaterialInstanceDynamic
---@field BrushIndicatorMesh UPreviewMesh
---@field DynamicMeshComponent UOctreeDynamicMeshComponent
---@field ActiveOverrideMaterial UMaterialInstanceDynamic
---@field PlaneTransformGizmo UCombinedTransformGizmo
---@field PlaneTransformProxy UTransformProxy
UDynamicMeshSculptTool = {}

---@return UDynamicMeshSculptTool
function UDynamicMeshSculptTool:get() end



---@class UDynamicMeshSculptToolBuilder : UMeshSurfacePointMeshEditingToolBuilder
UDynamicMeshSculptToolBuilder = {}

---@return UDynamicMeshSculptToolBuilder
function UDynamicMeshSculptToolBuilder:get() end


---@class UDynamicSculptToolActions : UInteractiveToolPropertySet
UDynamicSculptToolActions = {}

---@return UDynamicSculptToolActions
function UDynamicSculptToolActions:get() end

function UDynamicSculptToolActions:DiscardAttributes() end


---@class UEditNormalsAdvancedProperties : UInteractiveToolPropertySet
UEditNormalsAdvancedProperties = {}

---@return UEditNormalsAdvancedProperties
function UEditNormalsAdvancedProperties:get() end


---@class UEditNormalsOperatorFactory : UObject
---@field Tool UEditNormalsTool
UEditNormalsOperatorFactory = {}

---@return UEditNormalsOperatorFactory
function UEditNormalsOperatorFactory:get() end



---@class UEditNormalsTool : UMultiSelectionMeshEditingTool
---@field BasicProperties UEditNormalsToolProperties
---@field AdvancedProperties UEditNormalsAdvancedProperties
---@field PolygroupLayerProperties UPolygroupLayersProperties
---@field Previews TArray<UMeshOpPreviewWithBackgroundCompute>
UEditNormalsTool = {}

---@return UEditNormalsTool
function UEditNormalsTool:get() end



---@class UEditNormalsToolBuilder : UMultiSelectionMeshEditingToolBuilder
UEditNormalsToolBuilder = {}

---@return UEditNormalsToolBuilder
function UEditNormalsToolBuilder:get() end


---@class UEditNormalsToolProperties : UInteractiveToolPropertySet
---@field bRecomputeNormals boolean
---@field NormalCalculationMethod ENormalCalculationMethod
---@field bFixInconsistentNormals boolean
---@field bInvertNormals boolean
---@field SplitNormalMethod ESplitNormalMethod
---@field SharpEdgeAngleThreshold float
---@field bAllowSharpVertices boolean
UEditNormalsToolProperties = {}

---@return UEditNormalsToolProperties
function UEditNormalsToolProperties:get() end



---@class UEditPivotTool : UMultiSelectionMeshEditingTool
---@field TransformProps UEditPivotToolProperties
---@field EditPivotActions UEditPivotToolActionPropertySet
---@field ActiveGizmos TArray<FEditPivotTarget>
---@field DragAlignmentMechanic UDragAlignmentMechanic
UEditPivotTool = {}

---@return UEditPivotTool
function UEditPivotTool:get() end



---@class UEditPivotToolActionPropertySet : UInteractiveToolPropertySet
---@field bUseWorldBox boolean
UEditPivotToolActionPropertySet = {}

---@return UEditPivotToolActionPropertySet
function UEditPivotToolActionPropertySet:get() end

function UEditPivotToolActionPropertySet:WorldOrigin() end
function UEditPivotToolActionPropertySet:Top() end
function UEditPivotToolActionPropertySet:Right() end
function UEditPivotToolActionPropertySet:Left() end
function UEditPivotToolActionPropertySet:Front() end
function UEditPivotToolActionPropertySet:Center() end
function UEditPivotToolActionPropertySet:Bottom() end
function UEditPivotToolActionPropertySet:Back() end


---@class UEditPivotToolBuilder : UMultiSelectionMeshEditingToolBuilder
UEditPivotToolBuilder = {}

---@return UEditPivotToolBuilder
function UEditPivotToolBuilder:get() end


---@class UEditPivotToolProperties : UInteractiveToolPropertySet
---@field bEnableSnapDragging boolean
---@field RotationMode EEditPivotSnapDragRotationMode
UEditPivotToolProperties = {}

---@return UEditPivotToolProperties
function UEditPivotToolProperties:get() end



---@class UEditUVIslandsTool : UMeshSurfacePointTool
---@field MaterialSettings UExistingMeshMaterialProperties
---@field CheckerMaterial UMaterialInstanceDynamic
---@field PreviewMeshActor AInternalToolFrameworkActor
---@field DynamicMeshComponent UDynamicMeshComponent
---@field SelectionMechanic UPolygonSelectionMechanic
---@field MultiTransformer UMultiTransformer
UEditUVIslandsTool = {}

---@return UEditUVIslandsTool
function UEditUVIslandsTool:get() end



---@class UEditUVIslandsToolBuilder : UMeshSurfacePointMeshEditingToolBuilder
UEditUVIslandsToolBuilder = {}

---@return UEditUVIslandsToolBuilder
function UEditUVIslandsToolBuilder:get() end


---@class UEraseBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
UEraseBrushOpProps = {}

---@return UEraseBrushOpProps
function UEraseBrushOpProps:get() end



---@class UExtractCollisionGeometryTool : USingleSelectionMeshEditingTool
---@field OutputTypeProperties UCreateMeshObjectTypeProperties
---@field Settings UExtractCollisionToolProperties
---@field VizSettings UCollisionGeometryVisualizationProperties
---@field ObjectProps UPhysicsObjectToolPropertySet
---@field PreviewElements UPreviewGeometry
---@field PreviewMesh UPreviewMesh
UExtractCollisionGeometryTool = {}

---@return UExtractCollisionGeometryTool
function UExtractCollisionGeometryTool:get() end



---@class UExtractCollisionGeometryToolBuilder : USingleSelectionMeshEditingToolBuilder
UExtractCollisionGeometryToolBuilder = {}

---@return UExtractCollisionGeometryToolBuilder
function UExtractCollisionGeometryToolBuilder:get() end


---@class UExtractCollisionToolProperties : UInteractiveToolPropertySet
---@field CollisionType EExtractCollisionOutputType
---@field bWeldEdges boolean
---@field bOutputSeparateMeshes boolean
---@field bShowPreview boolean
---@field bShowInputMesh boolean
UExtractCollisionToolProperties = {}

---@return UExtractCollisionToolProperties
function UExtractCollisionToolProperties:get() end



---@class UFixedPlaneBrushOpProps : UBasePlaneBrushOpProps
---@field Strength float
---@field Falloff float
---@field Depth float
---@field WhichSide EPlaneBrushSideMode
UFixedPlaneBrushOpProps = {}

---@return UFixedPlaneBrushOpProps
function UFixedPlaneBrushOpProps:get() end



---@class UFixedPlaneBrushProperties : UInteractiveToolPropertySet
---@field bPropertySetEnabled boolean
---@field bShowGizmo boolean
---@field Position FVector
---@field Rotation FQuat
UFixedPlaneBrushProperties = {}

---@return UFixedPlaneBrushProperties
function UFixedPlaneBrushProperties:get() end



---@class UFlattenBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
---@field Depth float
---@field WhichSide EPlaneBrushSideMode
UFlattenBrushOpProps = {}

---@return UFlattenBrushOpProps
function UFlattenBrushOpProps:get() end



---@class UGroupEraseBrushOpProps : UMeshSculptBrushOpProps
---@field Group int32
---@field bOnlyEraseCurrent boolean
UGroupEraseBrushOpProps = {}

---@return UGroupEraseBrushOpProps
function UGroupEraseBrushOpProps:get() end



---@class UGroupPaintBrushFilterProperties : UInteractiveToolPropertySet
---@field PrimaryBrushType EMeshGroupPaintBrushType
---@field SubToolType EMeshGroupPaintInteractionType
---@field BrushSize float
---@field BrushAreaMode EMeshGroupPaintBrushAreaType
---@field bHitBackFaces boolean
---@field SetGroup int32
---@field bOnlySetUngrouped boolean
---@field EraseGroup int32
---@field bOnlyEraseCurrent boolean
---@field AngleThreshold float
---@field bUVSeams boolean
---@field bNormalSeams boolean
---@field VisibilityFilter EMeshGroupPaintVisibilityType
---@field MinTriVertCount int32
UGroupPaintBrushFilterProperties = {}

---@return UGroupPaintBrushFilterProperties
function UGroupPaintBrushFilterProperties:get() end



---@class UGroupPaintBrushOpProps : UMeshSculptBrushOpProps
---@field Group int32
---@field bOnlyPaintUngrouped boolean
UGroupPaintBrushOpProps = {}

---@return UGroupPaintBrushOpProps
function UGroupPaintBrushOpProps:get() end



---@class UHoleFillOperatorFactory : UObject
---@field FillTool UHoleFillTool
UHoleFillOperatorFactory = {}

---@return UHoleFillOperatorFactory
function UHoleFillOperatorFactory:get() end



---@class UHoleFillStatisticsProperties : UInteractiveToolPropertySet
---@field InitialHoles FString
---@field SelectedHoles FString
---@field SuccessfulFills FString
---@field FailedFills FString
---@field RemainingHoles FString
UHoleFillStatisticsProperties = {}

---@return UHoleFillStatisticsProperties
function UHoleFillStatisticsProperties:get() end



---@class UHoleFillTool : USingleSelectionMeshEditingTool
---@field SmoothHoleFillProperties USmoothHoleFillProperties
---@field Properties UHoleFillToolProperties
---@field Actions UHoleFillToolActions
---@field Statistics UHoleFillStatisticsProperties
---@field Preview UMeshOpPreviewWithBackgroundCompute
---@field SelectionMechanic UPolygonSelectionMechanic
UHoleFillTool = {}

---@return UHoleFillTool
function UHoleFillTool:get() end



---@class UHoleFillToolActions : UInteractiveToolPropertySet
UHoleFillToolActions = {}

---@return UHoleFillToolActions
function UHoleFillToolActions:get() end

function UHoleFillToolActions:SelectAll() end
function UHoleFillToolActions:Clear() end


---@class UHoleFillToolBuilder : USingleSelectionMeshEditingToolBuilder
UHoleFillToolBuilder = {}

---@return UHoleFillToolBuilder
function UHoleFillToolBuilder:get() end


---@class UHoleFillToolProperties : UInteractiveToolPropertySet
---@field FillType EHoleFillOpFillType
---@field bRemoveIsolatedTriangles boolean
---@field bQuickFillSmallHoles boolean
UHoleFillToolProperties = {}

---@return UHoleFillToolProperties
function UHoleFillToolProperties:get() end



---@class UImplicitOffsetProperties : UInteractiveToolPropertySet
---@field Smoothness float
---@field bPreserveUVs boolean
UImplicitOffsetProperties = {}

---@return UImplicitOffsetProperties
function UImplicitOffsetProperties:get() end



---@class UImplicitSmoothProperties : UInteractiveToolPropertySet
---@field SmoothSpeed float
---@field Smoothness float
---@field bPreserveUVs boolean
---@field VolumeCorrection float
UImplicitSmoothProperties = {}

---@return UImplicitSmoothProperties
function UImplicitSmoothProperties:get() end



---@class UInflateBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
UInflateBrushOpProps = {}

---@return UInflateBrushOpProps
function UInflateBrushOpProps:get() end



---@class UIterativeOffsetProperties : UInteractiveToolPropertySet
---@field Steps int32
---@field bOffsetBoundaries boolean
---@field SmoothingPerStep float
---@field bReprojectSmooth boolean
UIterativeOffsetProperties = {}

---@return UIterativeOffsetProperties
function UIterativeOffsetProperties:get() end



---@class UIterativeSmoothProperties : UInteractiveToolPropertySet
---@field SmoothingPerStep float
---@field Steps int32
---@field bSmoothBoundary boolean
UIterativeSmoothProperties = {}

---@return UIterativeSmoothProperties
function UIterativeSmoothProperties:get() end



---@class UKelvinBrushProperties : UInteractiveToolPropertySet
---@field FalloffDistance float
---@field Stiffness float
---@field Incompressiblity float
---@field BrushSteps int32
UKelvinBrushProperties = {}

---@return UKelvinBrushProperties
function UKelvinBrushProperties:get() end



---@class ULatticeDeformerOperatorFactory : UObject
---@field LatticeDeformerTool ULatticeDeformerTool
ULatticeDeformerOperatorFactory = {}

---@return ULatticeDeformerOperatorFactory
function ULatticeDeformerOperatorFactory:get() end



---@class ULatticeDeformerTool : USingleSelectionMeshEditingTool
---@field ControlPointsMechanic ULatticeControlPointsMechanic
---@field Settings ULatticeDeformerToolProperties
---@field Preview UMeshOpPreviewWithBackgroundCompute
---@field bLatticeDeformed boolean
ULatticeDeformerTool = {}

---@return ULatticeDeformerTool
function ULatticeDeformerTool:get() end



---@class ULatticeDeformerToolBuilder : USingleSelectionMeshEditingToolBuilder
ULatticeDeformerToolBuilder = {}

---@return ULatticeDeformerToolBuilder
function ULatticeDeformerToolBuilder:get() end


---@class ULatticeDeformerToolProperties : UInteractiveToolPropertySet
---@field XAxisResolution int32
---@field YAxisResolution int32
---@field ZAxisResolution int32
---@field Padding float
---@field InterpolationType ELatticeInterpolationType
---@field bDeformNormals boolean
---@field bCanChangeResolution boolean
---@field GizmoCoordinateSystem EToolContextCoordinateSystem
---@field bSetPivotMode boolean
---@field bSoftDeformation boolean
ULatticeDeformerToolProperties = {}

---@return ULatticeDeformerToolProperties
function ULatticeDeformerToolProperties:get() end

function ULatticeDeformerToolProperties:Constrain() end
function ULatticeDeformerToolProperties:ClearConstraints() end


---@class UMeshAnalysisProperties : UInteractiveToolPropertySet
---@field SurfaceArea FString
---@field Volume FString
UMeshAnalysisProperties = {}

---@return UMeshAnalysisProperties
function UMeshAnalysisProperties:get() end



---@class UMeshAttributePaintBrushOperationProperties : UInteractiveToolPropertySet
---@field BrushAction EBrushActionMode
UMeshAttributePaintBrushOperationProperties = {}

---@return UMeshAttributePaintBrushOperationProperties
function UMeshAttributePaintBrushOperationProperties:get() end



---@class UMeshAttributePaintEditActions : UInteractiveToolPropertySet
UMeshAttributePaintEditActions = {}

---@return UMeshAttributePaintEditActions
function UMeshAttributePaintEditActions:get() end


---@class UMeshAttributePaintTool : UDynamicMeshBrushTool
---@field BrushActionProps UMeshAttributePaintBrushOperationProperties
---@field AttribProps UMeshAttributePaintToolProperties
UMeshAttributePaintTool = {}

---@return UMeshAttributePaintTool
function UMeshAttributePaintTool:get() end



---@class UMeshAttributePaintToolBuilder : UMeshSurfacePointMeshEditingToolBuilder
UMeshAttributePaintToolBuilder = {}

---@return UMeshAttributePaintToolBuilder
function UMeshAttributePaintToolBuilder:get() end


---@class UMeshAttributePaintToolProperties : UInteractiveToolPropertySet
---@field Attribute FString
UMeshAttributePaintToolProperties = {}

---@return UMeshAttributePaintToolProperties
function UMeshAttributePaintToolProperties:get() end

---@return TArray<FString>
function UMeshAttributePaintToolProperties:GetAttributeNames() end


---@class UMeshBoundaryToolBase : USingleSelectionMeshEditingTool
---@field SelectionMechanic UPolygonSelectionMechanic
UMeshBoundaryToolBase = {}

---@return UMeshBoundaryToolBase
function UMeshBoundaryToolBase:get() end



---@class UMeshConstraintProperties : UInteractiveToolPropertySet
---@field bPreserveSharpEdges boolean
---@field MeshBoundaryConstraint EMeshBoundaryConstraint
---@field GroupBoundaryConstraint EGroupBoundaryConstraint
---@field MaterialBoundaryConstraint EMaterialBoundaryConstraint
---@field bPreventNormalFlips boolean
---@field bPreventTinyTriangles boolean
UMeshConstraintProperties = {}

---@return UMeshConstraintProperties
function UMeshConstraintProperties:get() end



---@class UMeshGroupPaintTool : UMeshSculptToolBase
---@field PolygroupLayerProperties UPolygroupLayersProperties
---@field FilterProperties UGroupPaintBrushFilterProperties
---@field PaintBrushOpProperties UGroupPaintBrushOpProps
---@field EraseBrushOpProperties UGroupEraseBrushOpProps
---@field FreezeActions UMeshGroupPaintToolFreezeActions
---@field PolyLassoMechanic UPolyLassoMarqueeMechanic
---@field PreviewMeshActor AInternalToolFrameworkActor
---@field DynamicMeshComponent UDynamicMeshComponent
---@field MeshElementsDisplay UMeshElementsVisualizer
UMeshGroupPaintTool = {}

---@return UMeshGroupPaintTool
function UMeshGroupPaintTool:get() end



---@class UMeshGroupPaintToolActionPropertySet : UInteractiveToolPropertySet
UMeshGroupPaintToolActionPropertySet = {}

---@return UMeshGroupPaintToolActionPropertySet
function UMeshGroupPaintToolActionPropertySet:get() end


---@class UMeshGroupPaintToolBuilder : UMeshSurfacePointMeshEditingToolBuilder
UMeshGroupPaintToolBuilder = {}

---@return UMeshGroupPaintToolBuilder
function UMeshGroupPaintToolBuilder:get() end


---@class UMeshGroupPaintToolFreezeActions : UMeshGroupPaintToolActionPropertySet
UMeshGroupPaintToolFreezeActions = {}

---@return UMeshGroupPaintToolFreezeActions
function UMeshGroupPaintToolFreezeActions:get() end

function UMeshGroupPaintToolFreezeActions:UnfreezeAll() end
function UMeshGroupPaintToolFreezeActions:ShrinkCurrent() end
function UMeshGroupPaintToolFreezeActions:GrowCurrent() end
function UMeshGroupPaintToolFreezeActions:FreezeOthers() end
function UMeshGroupPaintToolFreezeActions:FreezeCurrent() end
function UMeshGroupPaintToolFreezeActions:FloodFillCurrent() end
function UMeshGroupPaintToolFreezeActions:ClearCurrent() end
function UMeshGroupPaintToolFreezeActions:ClearAll() end


---@class UMeshInspectorProperties : UInteractiveToolPropertySet
---@field bWireframe boolean
---@field bBoundaryEdges boolean
---@field bBowtieVertices boolean
---@field bPolygonBorders boolean
---@field bUVSeams boolean
---@field bUVBowties boolean
---@field bMissingUVs boolean
---@field bNormalSeams boolean
---@field bNormalVectors boolean
---@field bTangentVectors boolean
---@field NormalLength float
---@field TangentLength float
UMeshInspectorProperties = {}

---@return UMeshInspectorProperties
function UMeshInspectorProperties:get() end



---@class UMeshInspectorTool : USingleSelectionMeshEditingTool
---@field Settings UMeshInspectorProperties
---@field MaterialSettings UExistingMeshMaterialProperties
---@field PreviewMesh UPreviewMesh
---@field DrawnLineSet ULineSetComponent
---@field DefaultMaterial UMaterialInterface
UMeshInspectorTool = {}

---@return UMeshInspectorTool
function UMeshInspectorTool:get() end



---@class UMeshInspectorToolBuilder : USingleSelectionMeshEditingToolBuilder
UMeshInspectorToolBuilder = {}

---@return UMeshInspectorToolBuilder
function UMeshInspectorToolBuilder:get() end


---@class UMeshSculptBrushOpProps : UInteractiveToolPropertySet
UMeshSculptBrushOpProps = {}

---@return UMeshSculptBrushOpProps
function UMeshSculptBrushOpProps:get() end


---@class UMeshSculptToolBase : UMeshSurfacePointTool
---@field BrushProperties USculptBrushProperties
---@field GizmoProperties UWorkPlaneProperties
---@field BrushOpPropSets TMap<int32, UMeshSculptBrushOpProps>
---@field SecondaryBrushOpPropSets TMap<int32, UMeshSculptBrushOpProps>
---@field ViewProperties UMeshEditingViewProperties
---@field ActiveOverrideMaterial UMaterialInstanceDynamic
---@field BrushIndicator UBrushStampIndicator
---@field bIsVolumetricIndicator boolean
---@field BrushIndicatorMaterial UMaterialInstanceDynamic
---@field BrushIndicatorMesh UPreviewMesh
---@field PlaneTransformGizmo UCombinedTransformGizmo
---@field PlaneTransformProxy UTransformProxy
UMeshSculptToolBase = {}

---@return UMeshSculptToolBase
function UMeshSculptToolBase:get() end



---@class UMeshSelectionEditActions : UMeshSelectionToolActionPropertySet
UMeshSelectionEditActions = {}

---@return UMeshSelectionEditActions
function UMeshSelectionEditActions:get() end

function UMeshSelectionEditActions:Shrink() end
function UMeshSelectionEditActions:SelectAll() end
function UMeshSelectionEditActions:OptimizeBorder() end
function UMeshSelectionEditActions:LargestTriCountPart() end
function UMeshSelectionEditActions:LargestAreaPart() end
function UMeshSelectionEditActions:Invert() end
function UMeshSelectionEditActions:Grow() end
function UMeshSelectionEditActions:FloodFill() end
function UMeshSelectionEditActions:Clear() end


---@class UMeshSelectionMeshEditActions : UMeshSelectionToolActionPropertySet
UMeshSelectionMeshEditActions = {}

---@return UMeshSelectionMeshEditActions
function UMeshSelectionMeshEditActions:get() end

function UMeshSelectionMeshEditActions:SmoothBorder() end
function UMeshSelectionMeshEditActions:Separate() end
function UMeshSelectionMeshEditActions:FlipNormals() end
function UMeshSelectionMeshEditActions:Duplicate() end
function UMeshSelectionMeshEditActions:Disconnect() end
function UMeshSelectionMeshEditActions:Delete() end
function UMeshSelectionMeshEditActions:CreatePolygroup() end


---@class UMeshSelectionTool : UDynamicMeshBrushTool
---@field SelectionProps UMeshSelectionToolProperties
---@field SelectionActions UMeshSelectionEditActions
---@field EditActions UMeshSelectionToolActionPropertySet
---@field MeshStatisticsProperties UMeshStatisticsProperties
---@field MeshElementsDisplay UMeshElementsVisualizer
---@field UVChannelProperties UMeshUVChannelProperties
---@field PolygroupLayerProperties UPolygroupLayersProperties
---@field Selection UMeshSelectionSet
---@field SpawnedActors TArray<AActor>
UMeshSelectionTool = {}

---@return UMeshSelectionTool
function UMeshSelectionTool:get() end



---@class UMeshSelectionToolActionPropertySet : UInteractiveToolPropertySet
UMeshSelectionToolActionPropertySet = {}

---@return UMeshSelectionToolActionPropertySet
function UMeshSelectionToolActionPropertySet:get() end


---@class UMeshSelectionToolBuilder : UMeshSurfacePointMeshEditingToolBuilder
UMeshSelectionToolBuilder = {}

---@return UMeshSelectionToolBuilder
function UMeshSelectionToolBuilder:get() end


---@class UMeshSelectionToolProperties : UInteractiveToolPropertySet
---@field SelectionMode EMeshSelectionToolPrimaryMode
---@field AngleTolerance float
---@field bHitBackFaces boolean
---@field bShowPoints boolean
---@field FaceColorMode EMeshFacesColorMode
UMeshSelectionToolProperties = {}

---@return UMeshSelectionToolProperties
function UMeshSelectionToolProperties:get() end



---@class UMeshSpaceDeformerTool : USingleSelectionMeshEditingTool
---@field Settings UMeshSpaceDeformerToolProperties
---@field ToolActions UMeshSpaceDeformerToolActionPropertySet
---@field StateTarget UGizmoTransformChangeStateTarget
---@field DragAlignmentMechanic UDragAlignmentMechanic
---@field Preview UMeshOpPreviewWithBackgroundCompute
---@field OriginalMeshPreview UPreviewMesh
---@field IntervalGizmo UIntervalGizmo
---@field TransformGizmo UCombinedTransformGizmo
---@field TransformProxy UTransformProxy
---@field UpIntervalSource UGizmoLocalFloatParameterSource
---@field DownIntervalSource UGizmoLocalFloatParameterSource
---@field ForwardIntervalSource UGizmoLocalFloatParameterSource
UMeshSpaceDeformerTool = {}

---@return UMeshSpaceDeformerTool
function UMeshSpaceDeformerTool:get() end



---@class UMeshSpaceDeformerToolActionPropertySet : UInteractiveToolPropertySet
UMeshSpaceDeformerToolActionPropertySet = {}

---@return UMeshSpaceDeformerToolActionPropertySet
function UMeshSpaceDeformerToolActionPropertySet:get() end

function UMeshSpaceDeformerToolActionPropertySet:ShiftToCenter() end


---@class UMeshSpaceDeformerToolBuilder : USingleSelectionMeshEditingToolBuilder
UMeshSpaceDeformerToolBuilder = {}

---@return UMeshSpaceDeformerToolBuilder
function UMeshSpaceDeformerToolBuilder:get() end


---@class UMeshSpaceDeformerToolProperties : UInteractiveToolPropertySet
---@field SelectedOperationType ENonlinearOperationType
---@field UpperBoundsInterval float
---@field LowerBoundsInterval float
---@field BendDegrees float
---@field TwistDegrees float
---@field FlareProfileType EFlareProfileType
---@field FlarePercentY float
---@field bLockXAndYFlaring boolean
---@field FlarePercentX float
---@field bLockBottom boolean
---@field bShowOriginalMesh boolean
---@field bDrawVisualization boolean
---@field bAlignToNormalOnCtrlClick boolean
UMeshSpaceDeformerToolProperties = {}

---@return UMeshSpaceDeformerToolProperties
function UMeshSpaceDeformerToolProperties:get() end



---@class UMeshStatisticsProperties : UInteractiveToolPropertySet
---@field Mesh FString
---@field UV FString
---@field Attributes FString
UMeshStatisticsProperties = {}

---@return UMeshStatisticsProperties
function UMeshStatisticsProperties:get() end



---@class UMeshSymmetryProperties : UInteractiveToolPropertySet
---@field bEnableSymmetry boolean
---@field bSymmetryCanBeEnabled boolean
UMeshSymmetryProperties = {}

---@return UMeshSymmetryProperties
function UMeshSymmetryProperties:get() end



---@class UMeshVertexSculptTool : UMeshSculptToolBase
---@field SculptProperties UVertexBrushSculptProperties
---@field AlphaProperties UVertexBrushAlphaProperties
---@field BrushAlpha UTexture2D
---@field SymmetryProperties UMeshSymmetryProperties
---@field PreviewMeshActor AInternalToolFrameworkActor
---@field DynamicMeshComponent UDynamicMeshComponent
UMeshVertexSculptTool = {}

---@return UMeshVertexSculptTool
function UMeshVertexSculptTool:get() end



---@class UMeshVertexSculptToolBuilder : UMeshSurfacePointMeshEditingToolBuilder
UMeshVertexSculptToolBuilder = {}

---@return UMeshVertexSculptToolBuilder
function UMeshVertexSculptToolBuilder:get() end


---@class UMirrorOperatorFactory : UObject
---@field MirrorTool UMirrorTool
UMirrorOperatorFactory = {}

---@return UMirrorOperatorFactory
function UMirrorOperatorFactory:get() end



---@class UMirrorTool : UMultiSelectionMeshEditingTool
---@field Settings UMirrorToolProperties
---@field ToolActions UMirrorToolActionPropertySet
---@field MeshesToMirror TArray<UDynamicMeshReplacementChangeTarget>
---@field Previews TArray<UMeshOpPreviewWithBackgroundCompute>
---@field PlaneMechanic UConstructionPlaneMechanic
UMirrorTool = {}

---@return UMirrorTool
function UMirrorTool:get() end



---@class UMirrorToolActionPropertySet : UInteractiveToolPropertySet
UMirrorToolActionPropertySet = {}

---@return UMirrorToolActionPropertySet
function UMirrorToolActionPropertySet:get() end

function UMirrorToolActionPropertySet:Up() end
function UMirrorToolActionPropertySet:ShiftToCenter() end
function UMirrorToolActionPropertySet:Right() end
function UMirrorToolActionPropertySet:Left() end
function UMirrorToolActionPropertySet:Forward() end
function UMirrorToolActionPropertySet:Down() end
function UMirrorToolActionPropertySet:Backward() end


---@class UMirrorToolBuilder : UMultiSelectionMeshEditingToolBuilder
UMirrorToolBuilder = {}

---@return UMirrorToolBuilder
function UMirrorToolBuilder:get() end


---@class UMirrorToolProperties : UInteractiveToolPropertySet
---@field OperationMode EMirrorOperationMode
---@field bCropAlongMirrorPlaneFirst boolean
---@field bWeldVerticesOnMirrorPlane boolean
---@field PlaneTolerance double
---@field bAllowBowtieVertexCreation boolean
---@field CtrlClickBehavior EMirrorCtrlClickBehavior
---@field bButtonsOnlyChangeOrientation boolean
---@field bShowPreview boolean
---@field SaveMode EMirrorSaveMode
UMirrorToolProperties = {}

---@return UMirrorToolProperties
function UMirrorToolProperties:get() end



---@class UMoveBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
---@field Depth float
---@field AxisFilters FModelingToolsAxisFilter
UMoveBrushOpProps = {}

---@return UMoveBrushOpProps
function UMoveBrushOpProps:get() end



---@class UOffsetMeshTool : UBaseMeshProcessingTool
---@field OffsetProperties UOffsetMeshToolProperties
---@field IterativeProperties UIterativeOffsetProperties
---@field ImplicitProperties UImplicitOffsetProperties
---@field WeightMapProperties UOffsetWeightMapSetProperties
UOffsetMeshTool = {}

---@return UOffsetMeshTool
function UOffsetMeshTool:get() end



---@class UOffsetMeshToolBuilder : UBaseMeshProcessingToolBuilder
UOffsetMeshToolBuilder = {}

---@return UOffsetMeshToolBuilder
function UOffsetMeshToolBuilder:get() end


---@class UOffsetMeshToolProperties : UInteractiveToolPropertySet
---@field OffsetType EOffsetMeshToolOffsetType
---@field Distance float
---@field bCreateShell boolean
UOffsetMeshToolProperties = {}

---@return UOffsetMeshToolProperties
function UOffsetMeshToolProperties:get() end



---@class UOffsetWeightMapSetProperties : UWeightMapSetProperties
---@field minDistance float
UOffsetWeightMapSetProperties = {}

---@return UOffsetWeightMapSetProperties
function UOffsetWeightMapSetProperties:get() end



---@class UOutputPolygroupLayerProperties : UInteractiveToolPropertySet
---@field GroupLayer FName
---@field OptionsList TArray<FString>
---@field bShowNewLayerName boolean
---@field NewLayerName FString
UOutputPolygroupLayerProperties = {}

---@return UOutputPolygroupLayerProperties
function UOutputPolygroupLayerProperties:get() end

---@return TArray<FString>
function UOutputPolygroupLayerProperties:GetGroupOptionsList() end


---@class UPatternTool : UMultiSelectionMeshEditingTool
---@field Settings UPatternToolSettings
---@field LinearSettings UPatternTool_LinearSettings
---@field GridSettings UPatternTool_GridSettings
---@field RadialSettings UPatternTool_RadialSettings
---@field RotationSettings UPatternTool_RotationSettings
---@field TranslationSettings UPatternTool_TranslationSettings
---@field ScaleSettings UPatternTool_ScaleSettings
---@field OutputSettings UPatternTool_OutputSettings
---@field TransformProxy_End UTransformProxy
---@field TransformGizmo_End UCombinedTransformGizmo
---@field DragAlignmentMechanic UDragAlignmentMechanic
---@field PlaneMechanic UConstructionPlaneMechanic
---@field AllComponents TSet<UPrimitiveComponent>
---@field PreviewGeometry UPreviewGeometry
UPatternTool = {}

---@return UPatternTool
function UPatternTool:get() end



---@class UPatternToolBuilder : UMultiSelectionMeshEditingToolBuilder
UPatternToolBuilder = {}

---@return UPatternToolBuilder
function UPatternToolBuilder:get() end


---@class UPatternToolSettings : UInteractiveToolPropertySet
---@field Shape EPatternToolShape
---@field SingleAxis EPatternToolSingleAxis
---@field SinglePlane EPatternToolSinglePlane
---@field bHideSources boolean
---@field Seed int32
UPatternToolSettings = {}

---@return UPatternToolSettings
function UPatternToolSettings:get() end



---@class UPatternTool_GridSettings : UInteractiveToolPropertySet
---@field SpacingX EPatternToolAxisSpacingMode
---@field CountX int32
---@field StepSizeX double
---@field ExtentX double
---@field bCenteredX boolean
---@field SpacingY EPatternToolAxisSpacingMode
---@field CountY int32
---@field StepSizeY double
---@field ExtentY double
---@field bCenteredY boolean
UPatternTool_GridSettings = {}

---@return UPatternTool_GridSettings
function UPatternTool_GridSettings:get() end



---@class UPatternTool_LinearSettings : UInteractiveToolPropertySet
---@field SpacingMode EPatternToolAxisSpacingMode
---@field Count int32
---@field StepSize double
---@field Extent double
---@field bCentered boolean
UPatternTool_LinearSettings = {}

---@return UPatternTool_LinearSettings
function UPatternTool_LinearSettings:get() end



---@class UPatternTool_OutputSettings : UInteractiveToolPropertySet
---@field bSeparateActors boolean
---@field bConvertToDynamic boolean
---@field bCreateISMCs boolean
---@field bHaveStaticMeshes boolean
UPatternTool_OutputSettings = {}

---@return UPatternTool_OutputSettings
function UPatternTool_OutputSettings:get() end



---@class UPatternTool_RadialSettings : UInteractiveToolPropertySet
---@field SpacingMode EPatternToolAxisSpacingMode
---@field Count int32
---@field StepSize double
---@field Radius double
---@field StartAngle double
---@field EndAngle double
---@field AngleShift double
---@field bOriented boolean
UPatternTool_RadialSettings = {}

---@return UPatternTool_RadialSettings
function UPatternTool_RadialSettings:get() end



---@class UPatternTool_RotationSettings : UInteractiveToolPropertySet
---@field bInterpolate boolean
---@field bJitter boolean
---@field StartRotation FRotator
---@field EndRotation FRotator
---@field RotationJitterRange FRotator
UPatternTool_RotationSettings = {}

---@return UPatternTool_RotationSettings
function UPatternTool_RotationSettings:get() end



---@class UPatternTool_ScaleSettings : UInteractiveToolPropertySet
---@field bUniform boolean
---@field bInterpolate boolean
---@field bJitter boolean
---@field StartScale FVector
---@field EndScale FVector
---@field ScaleJitterRange float
---@field ScaleJitterRangeNonUniform FVector
UPatternTool_ScaleSettings = {}

---@return UPatternTool_ScaleSettings
function UPatternTool_ScaleSettings:get() end



---@class UPatternTool_TranslationSettings : UInteractiveToolPropertySet
---@field bInterpolate boolean
---@field bJitter boolean
---@field StartTranslation FVector
---@field EndTranslation FVector
---@field TranslationJitterRange FVector
UPatternTool_TranslationSettings = {}

---@return UPatternTool_TranslationSettings
function UPatternTool_TranslationSettings:get() end



---@class UPhysicsInspectorTool : UMultiSelectionMeshEditingTool
---@field VizSettings UCollisionGeometryVisualizationProperties
---@field ObjectData TArray<UPhysicsObjectToolPropertySet>
---@field LineMaterial UMaterialInterface
---@field PreviewElements TArray<UPreviewGeometry>
UPhysicsInspectorTool = {}

---@return UPhysicsInspectorTool
function UPhysicsInspectorTool:get() end



---@class UPhysicsInspectorToolBuilder : UMultiSelectionMeshEditingToolBuilder
UPhysicsInspectorToolBuilder = {}

---@return UPhysicsInspectorToolBuilder
function UPhysicsInspectorToolBuilder:get() end


---@class UPhysicsObjectToolPropertySet : UInteractiveToolPropertySet
---@field ObjectName FString
---@field CollisionType ECollisionGeometryMode
---@field Spheres TArray<FPhysicsSphereData>
---@field Boxes TArray<FPhysicsBoxData>
---@field Capsules TArray<FPhysicsCapsuleData>
---@field Convexes TArray<FPhysicsConvexData>
---@field LevelSets TArray<FPhysicsLevelSetData>
UPhysicsObjectToolPropertySet = {}

---@return UPhysicsObjectToolPropertySet
function UPhysicsObjectToolPropertySet:get() end



---@class UPinchBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
---@field Depth float
---@field bPerpDamping boolean
UPinchBrushOpProps = {}

---@return UPinchBrushOpProps
function UPinchBrushOpProps:get() end



---@class UPlaneBrushOpProps : UBasePlaneBrushOpProps
---@field Strength float
---@field Falloff float
---@field Depth float
---@field WhichSide EPlaneBrushSideMode
UPlaneBrushOpProps = {}

---@return UPlaneBrushOpProps
function UPlaneBrushOpProps:get() end



---@class UPlaneCutOperatorFactory : UObject
---@field CutTool UPlaneCutTool
UPlaneCutOperatorFactory = {}

---@return UPlaneCutOperatorFactory
function UPlaneCutOperatorFactory:get() end



---@class UPlaneCutTool : UMultiSelectionMeshEditingTool
---@field BasicProperties UPlaneCutToolProperties
---@field AcceptProperties UAcceptOutputProperties
---@field Previews TArray<UMeshOpPreviewWithBackgroundCompute>
---@field MeshesToCut TArray<UDynamicMeshReplacementChangeTarget>
---@field PlaneMechanic UConstructionPlaneMechanic
UPlaneCutTool = {}

---@return UPlaneCutTool
function UPlaneCutTool:get() end

function UPlaneCutTool:FlipPlane() end
function UPlaneCutTool:Cut() end


---@class UPlaneCutToolBuilder : UMultiSelectionMeshEditingToolBuilder
UPlaneCutToolBuilder = {}

---@return UPlaneCutToolBuilder
function UPlaneCutToolBuilder:get() end


---@class UPlaneCutToolProperties : UInteractiveToolPropertySet
---@field bKeepBothHalves boolean
---@field SpacingBetweenHalves float
---@field bShowPreview boolean
---@field bFillCutHole boolean
---@field bFillSpans boolean
UPlaneCutToolProperties = {}

---@return UPlaneCutToolProperties
function UPlaneCutToolProperties:get() end



---@class UProjectToTargetTool : URemeshMeshTool
UProjectToTargetTool = {}

---@return UProjectToTargetTool
function UProjectToTargetTool:get() end


---@class UProjectToTargetToolBuilder : UMultiSelectionMeshEditingToolBuilder
UProjectToTargetToolBuilder = {}

---@return UProjectToTargetToolBuilder
function UProjectToTargetToolBuilder:get() end


---@class UProjectToTargetToolProperties : URemeshMeshToolProperties
---@field bWorldSpace boolean
---@field bParallel boolean
---@field FaceProjectionPassesPerRemeshIteration int32
---@field SurfaceProjectionSpeed float
---@field NormalAlignmentSpeed float
---@field bSmoothInFillAreas boolean
---@field FillAreaDistanceMultiplier float
---@field FillAreaSmoothMultiplier float
UProjectToTargetToolProperties = {}

---@return UProjectToTargetToolProperties
function UProjectToTargetToolProperties:get() end



---@class UPullKelvinletBrushOpProps : UBaseKelvinletBrushOpProps
---@field Falloff float
---@field Depth float
UPullKelvinletBrushOpProps = {}

---@return UPullKelvinletBrushOpProps
function UPullKelvinletBrushOpProps:get() end



---@class URemeshMeshTool : UMultiSelectionMeshEditingTool
---@field BasicProperties URemeshMeshToolProperties
---@field MeshStatisticsProperties UMeshStatisticsProperties
---@field Preview UMeshOpPreviewWithBackgroundCompute
---@field MeshElementsDisplay UMeshElementsVisualizer
URemeshMeshTool = {}

---@return URemeshMeshTool
function URemeshMeshTool:get() end



---@class URemeshMeshToolBuilder : UMultiSelectionMeshEditingToolBuilder
URemeshMeshToolBuilder = {}

---@return URemeshMeshToolBuilder
function URemeshMeshToolBuilder:get() end


---@class URemeshMeshToolProperties : URemeshProperties
---@field TargetTriangleCount int32
---@field SmoothingType ERemeshSmoothingType
---@field bDiscardAttributes boolean
---@field bShowGroupColors boolean
---@field RemeshType ERemeshType
---@field RemeshIterations int32
---@field MaxRemeshIterations int32
---@field ExtraProjectionIterations int32
---@field bUseTargetEdgeLength boolean
---@field TargetEdgeLength float
---@field bReproject boolean
---@field bReprojectConstraints boolean
---@field BoundaryCornerAngleThreshold float
URemeshMeshToolProperties = {}

---@return URemeshMeshToolProperties
function URemeshMeshToolProperties:get() end



---@class URemeshProperties : UMeshConstraintProperties
---@field SmoothingStrength float
---@field bFlips boolean
---@field bSplits boolean
---@field bCollapses boolean
URemeshProperties = {}

---@return URemeshProperties
function URemeshProperties:get() end



---@class URemoveOccludedTrianglesAdvancedProperties : UInteractiveToolPropertySet
URemoveOccludedTrianglesAdvancedProperties = {}

---@return URemoveOccludedTrianglesAdvancedProperties
function URemoveOccludedTrianglesAdvancedProperties:get() end


---@class URemoveOccludedTrianglesOperatorFactory : UObject
---@field Tool URemoveOccludedTrianglesTool
URemoveOccludedTrianglesOperatorFactory = {}

---@return URemoveOccludedTrianglesOperatorFactory
function URemoveOccludedTrianglesOperatorFactory:get() end



---@class URemoveOccludedTrianglesTool : UMultiSelectionMeshEditingTool
---@field BasicProperties URemoveOccludedTrianglesToolProperties
---@field PolygroupLayersProperties UPolygroupLayersProperties
---@field AdvancedProperties URemoveOccludedTrianglesAdvancedProperties
---@field Previews TArray<UMeshOpPreviewWithBackgroundCompute>
---@field PreviewCopies TArray<UPreviewMesh>
URemoveOccludedTrianglesTool = {}

---@return URemoveOccludedTrianglesTool
function URemoveOccludedTrianglesTool:get() end



---@class URemoveOccludedTrianglesToolBuilder : UMultiSelectionMeshEditingToolBuilder
URemoveOccludedTrianglesToolBuilder = {}

---@return URemoveOccludedTrianglesToolBuilder
function URemoveOccludedTrianglesToolBuilder:get() end


---@class URemoveOccludedTrianglesToolProperties : UInteractiveToolPropertySet
---@field OcclusionTestMethod EOcclusionCalculationUIMode
---@field TriangleSampling EOcclusionTriangleSamplingUIMode
---@field WindingIsoValue double
---@field AddRandomRays int32
---@field AddTriangleSamples int32
---@field bOnlySelfOcclude boolean
---@field ShrinkRemoval int32
---@field MinAreaIsland double
---@field MinTriCountIsland int32
---@field action EOccludedAction
URemoveOccludedTrianglesToolProperties = {}

---@return URemoveOccludedTrianglesToolProperties
function URemoveOccludedTrianglesToolProperties:get() end



---@class URenderCaptureProperties : UInteractiveToolPropertySet
---@field Resolution EBakeTextureResolution
---@field bBaseColorMap boolean
---@field bNormalMap boolean
---@field bPackedMRSMap boolean
---@field bMetallicMap boolean
---@field bRoughnessMap boolean
---@field bSpecularMap boolean
---@field bEmissiveMap boolean
---@field bAntiAliasing boolean
---@field CaptureFieldOfView float
---@field NearPlaneDist float
---@field bDeviceDepthMap boolean
URenderCaptureProperties = {}

---@return URenderCaptureProperties
function URenderCaptureProperties:get() end



---@class URevolveBoundaryOperatorFactory : UObject
---@field RevolveBoundaryTool URevolveBoundaryTool
URevolveBoundaryOperatorFactory = {}

---@return URevolveBoundaryOperatorFactory
function URevolveBoundaryOperatorFactory:get() end



---@class URevolveBoundaryTool : UMeshBoundaryToolBase
---@field OutputTypeProperties UCreateMeshObjectTypeProperties
---@field Settings URevolveBoundaryToolProperties
---@field MaterialProperties UNewMeshMaterialProperties
---@field PlaneMechanic UConstructionPlaneMechanic
---@field Preview UMeshOpPreviewWithBackgroundCompute
URevolveBoundaryTool = {}

---@return URevolveBoundaryTool
function URevolveBoundaryTool:get() end



---@class URevolveBoundaryToolBuilder : USingleSelectionMeshEditingToolBuilder
URevolveBoundaryToolBuilder = {}

---@return URevolveBoundaryToolBuilder
function URevolveBoundaryToolBuilder:get() end


---@class URevolveBoundaryToolProperties : URevolveProperties
---@field CapFillMode ERevolvePropertiesCapFillMode
---@field bDisplayInputMesh boolean
---@field AxisOrigin FVector
---@field AxisOrientation FVector2D
URevolveBoundaryToolProperties = {}

---@return URevolveBoundaryToolProperties
function URevolveBoundaryToolProperties:get() end



---@class UScaleKelvinletBrushOpProps : UBaseKelvinletBrushOpProps
---@field Strength float
---@field Falloff float
UScaleKelvinletBrushOpProps = {}

---@return UScaleKelvinletBrushOpProps
function UScaleKelvinletBrushOpProps:get() end



---@class USculptBrushProperties : UInteractiveToolPropertySet
---@field BrushSize FBrushToolRadius
---@field BrushFalloffAmount float
---@field bShowFalloff boolean
---@field Depth float
---@field bHitBackFaces boolean
---@field FlowRate float
---@field Spacing float
---@field Lazyness float
---@field bShowPerBrushProps boolean
---@field bShowLazyness boolean
---@field bShowFlowRate boolean
---@field bShowSpacing boolean
USculptBrushProperties = {}

---@return USculptBrushProperties
function USculptBrushProperties:get() end



---@class USculptMaxBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
---@field maxHeight float
---@field bUseFixedHeight boolean
---@field FixedHeight float
USculptMaxBrushOpProps = {}

---@return USculptMaxBrushOpProps
function USculptMaxBrushOpProps:get() end



---@class USculptMaxBrushProperties : UInteractiveToolPropertySet
---@field maxHeight float
---@field bFreezeCurrentHeight boolean
USculptMaxBrushProperties = {}

---@return USculptMaxBrushProperties
function USculptMaxBrushProperties:get() end



---@class USeamSculptTool : UDynamicMeshBrushTool
---@field Settings USeamSculptToolProperties
---@field PreviewGeom UPreviewGeometry
USeamSculptTool = {}

---@return USeamSculptTool
function USeamSculptTool:get() end



---@class USeamSculptToolBuilder : UMeshSurfacePointMeshEditingToolBuilder
USeamSculptToolBuilder = {}

---@return USeamSculptToolBuilder
function USeamSculptToolBuilder:get() end


---@class USeamSculptToolProperties : UInteractiveToolPropertySet
---@field bShowWireframe boolean
---@field bHitBackFaces boolean
USeamSculptToolProperties = {}

---@return USeamSculptToolProperties
function USeamSculptToolProperties:get() end



---@class USecondarySmoothBrushOpProps : UBaseSmoothBrushOpProps
---@field Strength float
---@field Falloff float
---@field bPreserveUVFlow boolean
USecondarySmoothBrushOpProps = {}

---@return USecondarySmoothBrushOpProps
function USecondarySmoothBrushOpProps:get() end



---@class USelectiveTessellationProperties : UInteractiveToolPropertySet
---@field SelectionType EDisplaceMeshToolTriangleSelectionType
---@field ActiveMaterial FName
---@field MaterialIDList TArray<FString>
USelectiveTessellationProperties = {}

---@return USelectiveTessellationProperties
function USelectiveTessellationProperties:get() end

---@return TArray<FString>
function USelectiveTessellationProperties:GetMaterialIDsFunc() end


---@class USelfUnionMeshesTool : UBaseCreateFromSelectedTool
---@field Properties USelfUnionMeshesToolProperties
---@field DrawnLineSet ULineSetComponent
USelfUnionMeshesTool = {}

---@return USelfUnionMeshesTool
function USelfUnionMeshesTool:get() end



---@class USelfUnionMeshesToolBuilder : UBaseCreateFromSelectedToolBuilder
USelfUnionMeshesToolBuilder = {}

---@return USelfUnionMeshesToolBuilder
function USelfUnionMeshesToolBuilder:get() end


---@class USelfUnionMeshesToolProperties : UInteractiveToolPropertySet
---@field bTrimFlaps boolean
---@field bTryFixHoles boolean
---@field bTryCollapseEdges boolean
---@field WindingThreshold float
---@field bShowNewBoundaryEdges boolean
---@field bOnlyUseFirstMeshMaterials boolean
USelfUnionMeshesToolProperties = {}

---@return USelfUnionMeshesToolProperties
function USelfUnionMeshesToolProperties:get() end



---@class USetCollisionGeometryTool : UMultiSelectionMeshEditingTool
---@field Settings USetCollisionGeometryToolProperties
---@field PolygroupLayerProperties UPolygroupLayersProperties
---@field VizSettings UCollisionGeometryVisualizationProperties
---@field CollisionProps UPhysicsObjectToolPropertySet
---@field LineMaterial UMaterialInterface
---@field PreviewGeom UPreviewGeometry
USetCollisionGeometryTool = {}

---@return USetCollisionGeometryTool
function USetCollisionGeometryTool:get() end



---@class USetCollisionGeometryToolBuilder : UMultiSelectionMeshEditingToolBuilder
USetCollisionGeometryToolBuilder = {}

---@return USetCollisionGeometryToolBuilder
function USetCollisionGeometryToolBuilder:get() end


---@class USetCollisionGeometryToolProperties : UInteractiveToolPropertySet
---@field GeometryType ECollisionGeometryType
---@field InputMode ESetCollisionGeometryInputMode
---@field bUseWorldSpace boolean
---@field bRemoveContained boolean
---@field bEnableMaxCount boolean
---@field MaxCount int32
---@field MinThickness float
---@field bDetectBoxes boolean
---@field bDetectSpheres boolean
---@field bDetectCapsules boolean
---@field bSimplifyHulls boolean
---@field HullTargetFaceCount int32
---@field MaxHullsPerMesh int32
---@field ConvexDecompositionSearchFactor float
---@field AddHullsErrorTolerance float
---@field MinPartThickness float
---@field bSimplifyPolygons boolean
---@field HullTolerance float
---@field SweepAxis EProjectedHullAxis
---@field LevelSetResolution int32
---@field bAppendToExisting boolean
---@field SetCollisionType ECollisionGeometryMode
USetCollisionGeometryToolProperties = {}

---@return USetCollisionGeometryToolProperties
function USetCollisionGeometryToolProperties:get() end



---@class USharpPullKelvinletBrushOpProps : UBaseKelvinletBrushOpProps
---@field Falloff float
---@field Depth float
USharpPullKelvinletBrushOpProps = {}

---@return USharpPullKelvinletBrushOpProps
function USharpPullKelvinletBrushOpProps:get() end



---@class USkinWeightsBindingTool : UMultiSelectionMeshEditingTool
---@field Properties USkinWeightsBindingToolProperties
---@field Preview UMeshOpPreviewWithBackgroundCompute
USkinWeightsBindingTool = {}

---@return USkinWeightsBindingTool
function USkinWeightsBindingTool:get() end



---@class USkinWeightsBindingToolBuilder : UMultiSelectionMeshEditingToolBuilder
USkinWeightsBindingToolBuilder = {}

---@return USkinWeightsBindingToolBuilder
function USkinWeightsBindingToolBuilder:get() end


---@class USkinWeightsBindingToolProperties : UInteractiveToolPropertySet
---@field CurrentBone FBoneReference
---@field BindingType ESkinWeightsBindType
---@field Stiffness float
---@field MaxInfluences int32
---@field VoxelResolution int32
USkinWeightsBindingToolProperties = {}

---@return USkinWeightsBindingToolProperties
function USkinWeightsBindingToolProperties:get() end



---@class USkinWeightsPaintTool : UDynamicMeshBrushTool
---@field ToolProps USkinWeightsPaintToolProperties
USkinWeightsPaintTool = {}

---@return USkinWeightsPaintTool
function USkinWeightsPaintTool:get() end



---@class USkinWeightsPaintToolBuilder : UMeshSurfacePointMeshEditingToolBuilder
USkinWeightsPaintToolBuilder = {}

---@return USkinWeightsPaintToolBuilder
function USkinWeightsPaintToolBuilder:get() end


---@class USkinWeightsPaintToolProperties : UInteractiveToolPropertySet
---@field CurrentBone FBoneReference
USkinWeightsPaintToolProperties = {}

---@return USkinWeightsPaintToolProperties
function USkinWeightsPaintToolProperties:get() end



---@class USmoothBrushOpProps : UBaseSmoothBrushOpProps
---@field Strength float
---@field Falloff float
---@field bPreserveUVFlow boolean
USmoothBrushOpProps = {}

---@return USmoothBrushOpProps
function USmoothBrushOpProps:get() end



---@class USmoothFillBrushOpProps : UBaseSmoothBrushOpProps
---@field Strength float
---@field Falloff float
---@field bPreserveUVFlow boolean
USmoothFillBrushOpProps = {}

---@return USmoothFillBrushOpProps
function USmoothFillBrushOpProps:get() end



---@class USmoothHoleFillProperties : UInteractiveToolPropertySet
---@field bConstrainToHoleInterior boolean
---@field RemeshingExteriorRegionWidth int32
---@field SmoothingExteriorRegionWidth int32
---@field SmoothingInteriorRegionWidth int32
---@field InteriorSmoothness float
---@field FillDensityScalar double
---@field bProjectDuringRemesh boolean
USmoothHoleFillProperties = {}

---@return USmoothHoleFillProperties
function USmoothHoleFillProperties:get() end



---@class USmoothMeshTool : UBaseMeshProcessingTool
---@field SmoothProperties USmoothMeshToolProperties
---@field IterativeProperties UIterativeSmoothProperties
---@field DiffusionProperties UDiffusionSmoothProperties
---@field ImplicitProperties UImplicitSmoothProperties
---@field WeightMapProperties USmoothWeightMapSetProperties
USmoothMeshTool = {}

---@return USmoothMeshTool
function USmoothMeshTool:get() end



---@class USmoothMeshToolBuilder : UBaseMeshProcessingToolBuilder
USmoothMeshToolBuilder = {}

---@return USmoothMeshToolBuilder
function USmoothMeshToolBuilder:get() end


---@class USmoothMeshToolProperties : UInteractiveToolPropertySet
---@field SmoothingType ESmoothMeshToolSmoothType
USmoothMeshToolProperties = {}

---@return USmoothMeshToolProperties
function USmoothMeshToolProperties:get() end



---@class USmoothWeightMapSetProperties : UWeightMapSetProperties
---@field MinSmoothMultiplier float
USmoothWeightMapSetProperties = {}

---@return USmoothWeightMapSetProperties
function USmoothWeightMapSetProperties:get() end



---@class USpaceDeformerOperatorFactory : UObject
---@field SpaceDeformerTool UMeshSpaceDeformerTool
USpaceDeformerOperatorFactory = {}

---@return USpaceDeformerOperatorFactory
function USpaceDeformerOperatorFactory:get() end



---@class USplitMeshesTool : UMultiSelectionMeshEditingTool
---@field BasicProperties USplitMeshesToolProperties
---@field OutputTypeProperties UCreateMeshObjectTypeProperties
USplitMeshesTool = {}

---@return USplitMeshesTool
function USplitMeshesTool:get() end



---@class USplitMeshesToolBuilder : UMultiSelectionMeshEditingToolBuilder
USplitMeshesToolBuilder = {}

---@return USplitMeshesToolBuilder
function USplitMeshesToolBuilder:get() end


---@class USplitMeshesToolProperties : UInteractiveToolPropertySet
---@field bTransferMaterials boolean
USplitMeshesToolProperties = {}

---@return USplitMeshesToolProperties
function USplitMeshesToolProperties:get() end



---@class UStandardSculptBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
UStandardSculptBrushOpProps = {}

---@return UStandardSculptBrushOpProps
function UStandardSculptBrushOpProps:get() end



---@class UTransferMeshTool : UMultiSelectionMeshEditingTool
---@field BasicProperties UTransferMeshToolProperties
UTransferMeshTool = {}

---@return UTransferMeshTool
function UTransferMeshTool:get() end



---@class UTransferMeshToolBuilder : UMultiSelectionMeshEditingToolBuilder
UTransferMeshToolBuilder = {}

---@return UTransferMeshToolBuilder
function UTransferMeshToolBuilder:get() end


---@class UTransferMeshToolProperties : UInteractiveToolPropertySet
---@field bTransferMaterials boolean
---@field SourceLOD FString
---@field TargetLod FString
---@field bIsStaticMeshSource boolean
---@field SourceLODNamesList TArray<FString>
---@field TargetLODNamesList TArray<FString>
---@field bIsStaticMeshTarget boolean
UTransferMeshToolProperties = {}

---@return UTransferMeshToolProperties
function UTransferMeshToolProperties:get() end

---@return TArray<FString>
function UTransferMeshToolProperties:GetTargetLODNamesFunc() end
---@return TArray<FString>
function UTransferMeshToolProperties:GetSourceLODNamesFunc() end


---@class UTransformMeshesTool : UMultiSelectionMeshEditingTool
---@field TransformProps UTransformMeshesToolProperties
---@field ActiveGizmos TArray<FTransformMeshesTarget>
---@field DragAlignmentMechanic UDragAlignmentMechanic
UTransformMeshesTool = {}

---@return UTransformMeshesTool
function UTransformMeshesTool:get() end



---@class UTransformMeshesToolBuilder : UMultiSelectionMeshEditingToolBuilder
UTransformMeshesToolBuilder = {}

---@return UTransformMeshesToolBuilder
function UTransformMeshesToolBuilder:get() end


---@class UTransformMeshesToolProperties : UInteractiveToolPropertySet
---@field TransformMode ETransformMeshesTransformMode
---@field bApplyToInstances boolean
---@field bSetPivotMode boolean
---@field bEnableSnapDragging boolean
---@field SnapDragSource ETransformMeshesSnapDragSource
---@field RotationMode ETransformMeshesSnapDragRotationMode
---@field bHaveInstances boolean
UTransformMeshesToolProperties = {}

---@return UTransformMeshesToolProperties
function UTransformMeshesToolProperties:get() end



---@class UTwistKelvinletBrushOpProps : UBaseKelvinletBrushOpProps
---@field Strength float
---@field Falloff float
UTwistKelvinletBrushOpProps = {}

---@return UTwistKelvinletBrushOpProps
function UTwistKelvinletBrushOpProps:get() end



---@class UVertexBrushAlphaProperties : UInteractiveToolPropertySet
---@field Alpha UTexture2D
---@field RotationAngle float
---@field bRandomize boolean
---@field RandomRange float
UVertexBrushAlphaProperties = {}

---@return UVertexBrushAlphaProperties
function UVertexBrushAlphaProperties:get() end



---@class UVertexBrushSculptProperties : UInteractiveToolPropertySet
---@field PrimaryBrushType EMeshVertexSculptBrushType
---@field PrimaryFalloffType EMeshSculptFalloffType
---@field BrushFilter EMeshVertexSculptBrushFilterType
---@field bFreezeTarget boolean
---@field Tool TWeakObjectPtr<UMeshVertexSculptTool>
UVertexBrushSculptProperties = {}

---@return UVertexBrushSculptProperties
function UVertexBrushSculptProperties:get() end



---@class UViewAlignedPlaneBrushOpProps : UBasePlaneBrushOpProps
---@field Strength float
---@field Falloff float
---@field Depth float
---@field WhichSide EPlaneBrushSideMode
UViewAlignedPlaneBrushOpProps = {}

---@return UViewAlignedPlaneBrushOpProps
function UViewAlignedPlaneBrushOpProps:get() end



---@class UViewAlignedSculptBrushOpProps : UMeshSculptBrushOpProps
---@field Strength float
---@field Falloff float
UViewAlignedSculptBrushOpProps = {}

---@return UViewAlignedSculptBrushOpProps
function UViewAlignedSculptBrushOpProps:get() end



---@class UVolumeToMeshTool : UInteractiveTool
---@field Settings UVolumeToMeshToolProperties
---@field OutputTypeProperties UCreateMeshObjectTypeProperties
---@field PreviewMesh UPreviewMesh
---@field TargetVolume TLazyObjectPtr<AVolume>
---@field VolumeEdgesSet ULineSetComponent
UVolumeToMeshTool = {}

---@return UVolumeToMeshTool
function UVolumeToMeshTool:get() end



---@class UVolumeToMeshToolBuilder : UInteractiveToolBuilder
UVolumeToMeshToolBuilder = {}

---@return UVolumeToMeshToolBuilder
function UVolumeToMeshToolBuilder:get() end


---@class UVolumeToMeshToolProperties : UInteractiveToolPropertySet
---@field bWeldEdges boolean
---@field bAutoRepair boolean
---@field bOptimizeMesh boolean
---@field bShowWireframe boolean
UVolumeToMeshToolProperties = {}

---@return UVolumeToMeshToolProperties
function UVolumeToMeshToolProperties:get() end



---@class UVoxelBlendMeshesTool : UBaseVoxelTool
---@field BlendProperties UVoxelBlendMeshesToolProperties
UVoxelBlendMeshesTool = {}

---@return UVoxelBlendMeshesTool
function UVoxelBlendMeshesTool:get() end



---@class UVoxelBlendMeshesToolBuilder : UBaseCreateFromSelectedToolBuilder
UVoxelBlendMeshesToolBuilder = {}

---@return UVoxelBlendMeshesToolBuilder
function UVoxelBlendMeshesToolBuilder:get() end


---@class UVoxelBlendMeshesToolProperties : UInteractiveToolPropertySet
---@field BlendPower double
---@field BlendFalloff double
---@field Operation EVoxelBlendOperation
---@field bVoxWrap boolean
---@field bRemoveInternalsAfterVoxWrap boolean
---@field ThickenShells double
UVoxelBlendMeshesToolProperties = {}

---@return UVoxelBlendMeshesToolProperties
function UVoxelBlendMeshesToolProperties:get() end



---@class UVoxelMorphologyMeshesTool : UBaseVoxelTool
---@field MorphologyProperties UVoxelMorphologyMeshesToolProperties
UVoxelMorphologyMeshesTool = {}

---@return UVoxelMorphologyMeshesTool
function UVoxelMorphologyMeshesTool:get() end



---@class UVoxelMorphologyMeshesToolBuilder : UBaseCreateFromSelectedToolBuilder
UVoxelMorphologyMeshesToolBuilder = {}

---@return UVoxelMorphologyMeshesToolBuilder
function UVoxelMorphologyMeshesToolBuilder:get() end


---@class UVoxelMorphologyMeshesToolProperties : UInteractiveToolPropertySet
---@field Operation EMorphologyOperation
---@field Distance double
---@field bVoxWrap boolean
---@field bRemoveInternalsAfterVoxWrap boolean
---@field ThickenShells double
UVoxelMorphologyMeshesToolProperties = {}

---@return UVoxelMorphologyMeshesToolProperties
function UVoxelMorphologyMeshesToolProperties:get() end



---@class UVoxelSolidifyMeshesTool : UBaseVoxelTool
---@field SolidifyProperties UVoxelSolidifyMeshesToolProperties
UVoxelSolidifyMeshesTool = {}

---@return UVoxelSolidifyMeshesTool
function UVoxelSolidifyMeshesTool:get() end



---@class UVoxelSolidifyMeshesToolBuilder : UBaseCreateFromSelectedToolBuilder
UVoxelSolidifyMeshesToolBuilder = {}

---@return UVoxelSolidifyMeshesToolBuilder
function UVoxelSolidifyMeshesToolBuilder:get() end


---@class UVoxelSolidifyMeshesToolProperties : UInteractiveToolPropertySet
---@field WindingThreshold double
---@field ExtendBounds double
---@field SurfaceSearchSteps int32
---@field bSolidAtBoundaries boolean
---@field bApplyThickenShells boolean
---@field ThickenShells double
UVoxelSolidifyMeshesToolProperties = {}

---@return UVoxelSolidifyMeshesToolProperties
function UVoxelSolidifyMeshesToolProperties:get() end



---@class UWeldMeshEdgesOperatorFactory : UObject
---@field WeldMeshEdgesTool UWeldMeshEdgesTool
UWeldMeshEdgesOperatorFactory = {}

---@return UWeldMeshEdgesOperatorFactory
function UWeldMeshEdgesOperatorFactory:get() end



---@class UWeldMeshEdgesTool : USingleSelectionMeshEditingTool
---@field Settings UWeldMeshEdgesToolProperties
---@field PreviewCompute UMeshOpPreviewWithBackgroundCompute
---@field MeshElementsDisplay UMeshElementsVisualizer
---@field OperatorFactory UWeldMeshEdgesOperatorFactory
UWeldMeshEdgesTool = {}

---@return UWeldMeshEdgesTool
function UWeldMeshEdgesTool:get() end



---@class UWeldMeshEdgesToolBuilder : USingleSelectionMeshEditingToolBuilder
UWeldMeshEdgesToolBuilder = {}

---@return UWeldMeshEdgesToolBuilder
function UWeldMeshEdgesToolBuilder:get() end


---@class UWeldMeshEdgesToolProperties : UInteractiveToolPropertySet
---@field Tolerance float
---@field bOnlyUnique boolean
---@field bResolveTJunctions boolean
---@field InitialEdges int32
---@field RemainingEdges int32
UWeldMeshEdgesToolProperties = {}

---@return UWeldMeshEdgesToolProperties
function UWeldMeshEdgesToolProperties:get() end



---@class UWorkPlaneProperties : UInteractiveToolPropertySet
---@field bPropertySetEnabled boolean
---@field bShowGizmo boolean
---@field Position FVector
---@field Rotation FQuat
UWorkPlaneProperties = {}

---@return UWorkPlaneProperties
function UWorkPlaneProperties:get() end



