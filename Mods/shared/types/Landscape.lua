---@meta

---@class AControlPointMeshActor : AActor
---@field ControlPointMeshComponent UControlPointMeshComponent
AControlPointMeshActor = {}

---@return AControlPointMeshActor
function AControlPointMeshActor:get() end



---@class ALandscape : ALandscapeProxy
ALandscape = {}

---@return ALandscape
function ALandscape:get() end

---@param InWorldTransform FTransform
---@param InExtents FBox2D
---@param OutRenderTarget UTextureRenderTarget2D
function ALandscape:RenderHeightmap(InWorldTransform, InExtents, OutRenderTarget) end


---@class ALandscapeBlueprintBrushBase : AActor
ALandscapeBlueprintBrushBase = {}

---@return ALandscapeBlueprintBrushBase
function ALandscapeBlueprintBrushBase:get() end

function ALandscapeBlueprintBrushBase:RequestLandscapeUpdate() end
---@param InIsHeightmap boolean
---@param InCombinedResult UTextureRenderTarget2D
---@param InWeightmapLayerName FName
---@return UTextureRenderTarget2D
function ALandscapeBlueprintBrushBase:Render(InIsHeightmap, InCombinedResult, InWeightmapLayerName) end
---@param InLandscapeTransform FTransform
---@param InLandscapeSize FIntPoint
---@param InLandscapeRenderTargetSize FIntPoint
function ALandscapeBlueprintBrushBase:Initialize(InLandscapeTransform, InLandscapeSize, InLandscapeRenderTargetSize) end
---@param OutStreamableAssets TArray<UObject>
function ALandscapeBlueprintBrushBase:GetBlueprintRenderDependencies(OutStreamableAssets) end


---@class ALandscapeGizmoActiveActor : ALandscapeGizmoActor
ALandscapeGizmoActiveActor = {}

---@return ALandscapeGizmoActiveActor
function ALandscapeGizmoActiveActor:get() end


---@class ALandscapeGizmoActor : AActor
ALandscapeGizmoActor = {}

---@return ALandscapeGizmoActor
function ALandscapeGizmoActor:get() end


---@class ALandscapeMeshProxyActor : AActor
---@field LandscapeMeshProxyComponent ULandscapeMeshProxyComponent
ALandscapeMeshProxyActor = {}

---@return ALandscapeMeshProxyActor
function ALandscapeMeshProxyActor:get() end



---@class ALandscapeProxy : APartitionActor
---@field SplineComponent ULandscapeSplinesComponent
---@field LandscapeGuid FGuid
---@field PerLODOverrideMaterials TArray<FLandscapePerLODMaterialOverride>
---@field LandscapeSectionOffset FIntPoint
---@field MaxLODLevel int32
---@field ComponentScreenSizeToUseSubSections float
---@field LOD0ScreenSize float
---@field LOD0DistributionSetting float
---@field LODDistributionSetting float
---@field StaticLightingLOD int32
---@field DefaultPhysMaterial UPhysicalMaterial
---@field StreamingDistanceMultiplier float
---@field LandscapeMaterial UMaterialInterface
---@field LandscapeHoleMaterial UMaterialInterface
---@field RuntimeVirtualTextures TArray<URuntimeVirtualTexture>
---@field bSetCreateRuntimeVirtualTextureVolumes boolean
---@field VirtualTextureNumLods int32
---@field VirtualTextureLodBias int32
---@field VirtualTextureRenderPassType ERuntimeVirtualTextureMainPassType
---@field NegativeZBoundsExtension float
---@field PositiveZBoundsExtension float
---@field LandscapeComponents TArray<ULandscapeComponent>
---@field CollisionComponents TArray<ULandscapeHeightfieldCollisionComponent>
---@field FoliageComponents TArray<UHierarchicalInstancedStaticMeshComponent>
---@field NaniteComponent ULandscapeNaniteComponent
---@field bHasLandscapeGrass boolean
---@field StaticLightingResolution float
---@field CastShadow boolean
---@field bCastDynamicShadow boolean
---@field bCastStaticShadow boolean
---@field bCastContactShadow boolean
---@field bCastFarShadow boolean
---@field bCastHiddenShadow boolean
---@field bCastShadowAsTwoSided boolean
---@field bAffectDistanceFieldLighting boolean
---@field LightingChannels FLightingChannels
---@field bUseMaterialPositionOffsetInStaticLighting boolean
---@field bRenderCustomDepth boolean
---@field CustomDepthStencilWriteMask ERendererStencilMask
---@field CustomDepthStencilValue int32
---@field LDMaxDrawDistance float
---@field LightmassSettings FLightmassPrimitiveSettings
---@field CollisionMipLevel int32
---@field SimpleCollisionMipLevel int32
---@field CollisionThickness float
---@field BodyInstance FBodyInstance
---@field bGenerateOverlapEvents boolean
---@field bBakeMaterialPositionOffsetIntoCollision boolean
---@field ComponentSizeQuads int32
---@field SubsectionSizeQuads int32
---@field NumSubsections int32
---@field bUsedForNavigation boolean
---@field bFillCollisionUnderLandscapeForNavmesh boolean
---@field bUseDynamicMaterialInstance boolean
---@field NavigationGeometryGatheringMode ENavDataGatheringMode
---@field bUseLandscapeForCullingInvisibleHLODVertices boolean
---@field bHasLayersContent boolean
ALandscapeProxy = {}

---@return ALandscapeProxy
function ALandscapeProxy:get() end

---@param InType ERuntimeVirtualTextureMainPassType
function ALandscapeProxy:SetVirtualTextureRenderPassType(InType) end
---@param ParameterName FName
---@param Value FLinearColor
function ALandscapeProxy:SetLandscapeMaterialVectorParameterValue(ParameterName, Value) end
---@param ParameterName FName
---@param Value UTexture
function ALandscapeProxy:SetLandscapeMaterialTextureParameterValue(ParameterName, Value) end
---@param ParameterName FName
---@param Value float
function ALandscapeProxy:SetLandscapeMaterialScalarParameterValue(ParameterName, Value) end
---@param InRenderTarget UTextureRenderTarget2D
---@param InExportHeightIntoRGChannel boolean
---@param InExportLandscapeProxies boolean
---@return boolean
function ALandscapeProxy:LandscapeExportHeightmapToRenderTarget(InRenderTarget, InExportHeightIntoRGChannel, InExportLandscapeProxies) end
---@return ALandscape
function ALandscapeProxy:GetLandscapeActor() end
---@param NewLandscapeMaterial UMaterialInterface
function ALandscapeProxy:EditorSetLandscapeMaterial(NewLandscapeMaterial) end
---@param InSplineComponent USplineComponent
---@param StartWidth float
---@param EndWidth float
---@param StartSideFalloff float
---@param EndSideFalloff float
---@param StartRoll float
---@param EndRoll float
---@param NumSubdivisions int32
---@param bRaiseHeights boolean
---@param bLowerHeights boolean
---@param PaintLayer ULandscapeLayerInfoObject
---@param EditLayerName FName
function ALandscapeProxy:EditorApplySpline(InSplineComponent, StartWidth, EndWidth, StartSideFalloff, EndSideFalloff, StartRoll, EndRoll, NumSubdivisions, bRaiseHeights, bLowerHeights, PaintLayer, EditLayerName) end
---@param InLODDistanceFactor float
function ALandscapeProxy:ChangeLODDistanceFactor(InLODDistanceFactor) end
---@param InComponentScreenSizeToUseSubSections float
function ALandscapeProxy:ChangeComponentScreenSizeToUseSubSections(InComponentScreenSizeToUseSubSections) end


---@class ALandscapeSplineActor : AActor
---@field LandscapeGuid FGuid
ALandscapeSplineActor = {}

---@return ALandscapeSplineActor
function ALandscapeSplineActor:get() end



---@class ALandscapeSplineMeshesActor : APartitionActor
---@field StaticMeshComponents TArray<UStaticMeshComponent>
ALandscapeSplineMeshesActor = {}

---@return ALandscapeSplineMeshesActor
function ALandscapeSplineMeshesActor:get() end



---@class ALandscapeStreamingProxy : ALandscapeProxy
---@field LandscapeActor TLazyObjectPtr<ALandscape>
ALandscapeStreamingProxy = {}

---@return ALandscapeStreamingProxy
function ALandscapeStreamingProxy:get() end



---@class FForeignControlPointData
FForeignControlPointData = {}

---@return FForeignControlPointData
function FForeignControlPointData:get() end


---@class FForeignSplineSegmentData
FForeignSplineSegmentData = {}

---@return FForeignSplineSegmentData
function FForeignSplineSegmentData:get() end


---@class FForeignWorldSplineData
FForeignWorldSplineData = {}

---@return FForeignWorldSplineData
function FForeignWorldSplineData:get() end


---@class FGizmoSelectData
FGizmoSelectData = {}

---@return FGizmoSelectData
function FGizmoSelectData:get() end


---@class FGrassInput
---@field Name FName
---@field GrassType ULandscapeGrassType
---@field Input FExpressionInput
FGrassInput = {}

---@return FGrassInput
function FGrassInput:get() end



---@class FGrassVariety
---@field GrassMesh UStaticMesh
---@field OverrideMaterials TArray<UMaterialInterface>
---@field GrassDensity FPerPlatformFloat
---@field bUseGrid boolean
---@field PlacementJitter float
---@field StartCullDistance FPerPlatformInt
---@field EndCullDistance FPerPlatformInt
---@field MinLOD int32
---@field Scaling EGrassScaling
---@field ScaleX FFloatInterval
---@field ScaleY FFloatInterval
---@field ScaleZ FFloatInterval
---@field RandomRotation boolean
---@field AlignToSurface boolean
---@field bUseLandscapeLightmap boolean
---@field LightingChannels FLightingChannels
---@field bReceivesDecals boolean
---@field bCastDynamicShadow boolean
---@field bCastContactShadow boolean
---@field bKeepInstanceBufferCPUCopy boolean
---@field InstanceWorldPositionOffsetDisableDistance uint32
FGrassVariety = {}

---@return FGrassVariety
function FGrassVariety:get() end



---@class FHeightmapData
---@field Texture UTexture2D
FHeightmapData = {}

---@return FHeightmapData
function FHeightmapData:get() end



---@class FLandscapeComponentMaterialOverride
---@field LODIndex FPerPlatformInt
---@field Material UMaterialInterface
FLandscapeComponentMaterialOverride = {}

---@return FLandscapeComponentMaterialOverride
function FLandscapeComponentMaterialOverride:get() end



---@class FLandscapeEditToolRenderData
---@field ToolMaterial UMaterialInterface
---@field GizmoMaterial UMaterialInterface
---@field SelectedType int32
---@field DebugChannelR int32
---@field DebugChannelG int32
---@field DebugChannelB int32
---@field DataTexture UTexture2D
---@field LayerContributionTexture UTexture2D
---@field DirtyTexture UTexture2D
FLandscapeEditToolRenderData = {}

---@return FLandscapeEditToolRenderData
function FLandscapeEditToolRenderData:get() end



---@class FLandscapeEditorLayerSettings
FLandscapeEditorLayerSettings = {}

---@return FLandscapeEditorLayerSettings
function FLandscapeEditorLayerSettings:get() end


---@class FLandscapeImportLayerInfo
FLandscapeImportLayerInfo = {}

---@return FLandscapeImportLayerInfo
function FLandscapeImportLayerInfo:get() end


---@class FLandscapeInfoLayerSettings
---@field LayerInfoObj ULandscapeLayerInfoObject
---@field LayerName FName
FLandscapeInfoLayerSettings = {}

---@return FLandscapeInfoLayerSettings
function FLandscapeInfoLayerSettings:get() end



---@class FLandscapeLayer
---@field Guid FGuid
---@field Name FName
---@field bVisible boolean
---@field bLocked boolean
---@field HeightmapAlpha float
---@field WeightmapAlpha float
---@field BlendMode ELandscapeBlendMode
---@field Brushes TArray<FLandscapeLayerBrush>
---@field WeightmapLayerAllocationBlend TMap<ULandscapeLayerInfoObject, boolean>
FLandscapeLayer = {}

---@return FLandscapeLayer
function FLandscapeLayer:get() end



---@class FLandscapeLayerBrush
FLandscapeLayerBrush = {}

---@return FLandscapeLayerBrush
function FLandscapeLayerBrush:get() end


---@class FLandscapeLayerComponentData
---@field HeightmapData FHeightmapData
---@field WeightmapData FWeightmapData
FLandscapeLayerComponentData = {}

---@return FLandscapeLayerComponentData
function FLandscapeLayerComponentData:get() end



---@class FLandscapeLayerStruct
---@field LayerInfoObj ULandscapeLayerInfoObject
FLandscapeLayerStruct = {}

---@return FLandscapeLayerStruct
function FLandscapeLayerStruct:get() end



---@class FLandscapeMaterialTextureStreamingInfo
---@field TextureName FName
---@field TexelFactor float
FLandscapeMaterialTextureStreamingInfo = {}

---@return FLandscapeMaterialTextureStreamingInfo
function FLandscapeMaterialTextureStreamingInfo:get() end



---@class FLandscapePerLODMaterialOverride
---@field LODIndex int32
---@field Material UMaterialInterface
FLandscapePerLODMaterialOverride = {}

---@return FLandscapePerLODMaterialOverride
function FLandscapePerLODMaterialOverride:get() end



---@class FLandscapeProxyMaterialOverride
---@field LODIndex FPerPlatformInt
---@field Material UMaterialInterface
FLandscapeProxyMaterialOverride = {}

---@return FLandscapeProxyMaterialOverride
function FLandscapeProxyMaterialOverride:get() end



---@class FLandscapeSplineConnection
---@field Segment ULandscapeSplineSegment
---@field End boolean
FLandscapeSplineConnection = {}

---@return FLandscapeSplineConnection
function FLandscapeSplineConnection:get() end



---@class FLandscapeSplineInterpPoint
---@field Center FVector
---@field Left FVector
---@field Right FVector
---@field FalloffLeft FVector
---@field FalloffRight FVector
---@field LayerLeft FVector
---@field LayerRight FVector
---@field LayerFalloffLeft FVector
---@field LayerFalloffRight FVector
---@field StartEndFalloff float
FLandscapeSplineInterpPoint = {}

---@return FLandscapeSplineInterpPoint
function FLandscapeSplineInterpPoint:get() end



---@class FLandscapeSplineMeshEntry
---@field Mesh UStaticMesh
---@field MaterialOverrides TArray<UMaterialInterface>
---@field bCenterH boolean
---@field CenterAdjust FVector2D
---@field bScaleToWidth boolean
---@field Scale FVector
---@field Orientation LandscapeSplineMeshOrientation
---@field ForwardAxis ESplineMeshAxis::Type
---@field UpAxis ESplineMeshAxis::Type
FLandscapeSplineMeshEntry = {}

---@return FLandscapeSplineMeshEntry
function FLandscapeSplineMeshEntry:get() end



---@class FLandscapeSplineSegmentConnection
---@field ControlPoint ULandscapeSplineControlPoint
---@field TangentLen float
---@field SocketName FName
FLandscapeSplineSegmentConnection = {}

---@return FLandscapeSplineSegmentConnection
function FLandscapeSplineSegmentConnection:get() end



---@class FLayerBlendInput
---@field LayerName FName
---@field BlendType ELandscapeLayerBlendType
---@field LayerInput FExpressionInput
---@field HeightInput FExpressionInput
---@field PreviewWeight float
---@field ConstLayerInput FVector
---@field ConstHeightInput float
FLayerBlendInput = {}

---@return FLayerBlendInput
function FLayerBlendInput:get() end



---@class FPhysicalMaterialInput
---@field PhysicalMaterial UPhysicalMaterial
---@field Input FExpressionInput
FPhysicalMaterialInput = {}

---@return FPhysicalMaterialInput
function FPhysicalMaterialInput:get() end



---@class FWeightmapData
---@field Textures TArray<UTexture2D>
---@field LayerAllocations TArray<FWeightmapLayerAllocationInfo>
---@field TextureUsages TArray<ULandscapeWeightmapUsage>
FWeightmapData = {}

---@return FWeightmapData
function FWeightmapData:get() end



---@class FWeightmapLayerAllocationInfo
---@field LayerInfo ULandscapeLayerInfoObject
---@field WeightmapTextureIndex uint8
---@field WeightmapTextureChannel uint8
FWeightmapLayerAllocationInfo = {}

---@return FWeightmapLayerAllocationInfo
function FWeightmapLayerAllocationInfo:get() end



---@class ILandscapeSplineInterface : IInterface
ILandscapeSplineInterface = {}

---@return ILandscapeSplineInterface
function ILandscapeSplineInterface:get() end


---@class UControlPointMeshComponent : UStaticMeshComponent
---@field VirtualTextureMainPassMaxDrawDistance float
UControlPointMeshComponent = {}

---@return UControlPointMeshComponent
function UControlPointMeshComponent:get() end



---@class ULandscapeComponent : UPrimitiveComponent
---@field SectionBaseX int32
---@field SectionBaseY int32
---@field ComponentSizeQuads int32
---@field SubsectionSizeQuads int32
---@field NumSubsections int32
---@field OverrideMaterial UMaterialInterface
---@field OverrideHoleMaterial UMaterialInterface
---@field MaterialInstances TArray<UMaterialInstanceConstant>
---@field MaterialInstancesDynamic TArray<UMaterialInstanceDynamic>
---@field LODIndexToMaterialIndex TArray<int8>
---@field XYOffsetmapTexture UTexture2D
---@field WeightmapScaleBias FVector4
---@field WeightmapSubsectionOffset float
---@field HeightmapScaleBias FVector4
---@field CachedLocalBox FBox
---@field CollisionComponent TLazyObjectPtr<ULandscapeHeightfieldCollisionComponent>
---@field bNaniteActive boolean
---@field HeightmapTexture UTexture2D
---@field WeightmapLayerAllocations TArray<FWeightmapLayerAllocationInfo>
---@field WeightmapTextures TArray<UTexture2D>
---@field PerLODOverrideMaterials TArray<FLandscapePerLODMaterialOverride>
---@field MapBuildDataId FGuid
---@field IrrelevantLights TArray<FGuid>
---@field CollisionMipLevel int32
---@field SimpleCollisionMipLevel int32
---@field NegativeZBoundsExtension float
---@field PositiveZBoundsExtension float
---@field StaticLightingResolution float
---@field ForcedLOD int32
---@field LODBias int32
---@field StateId FGuid
---@field BakedTextureMaterialGuid FGuid
---@field LastBakedTextureMaterialGuid FGuid
---@field GIBakedBaseColorTexture UTexture2D
---@field MobileMaterialInterface UMaterialInterface
---@field MobileMaterialInterfaces TArray<UMaterialInterface>
---@field MobileWeightmapTextures TArray<UTexture2D>
ULandscapeComponent = {}

---@return ULandscapeComponent
function ULandscapeComponent:get() end

---@param InLODBias int32
function ULandscapeComponent:SetLODBias(InLODBias) end
---@param InForcedLOD int32
function ULandscapeComponent:SetForcedLOD(InForcedLOD) end
---@param InIndex int32
---@return UMaterialInstanceDynamic
function ULandscapeComponent:GetMaterialInstanceDynamic(InIndex) end
---@param InLocation FVector
---@param InPaintLayerName FName
---@return float
function ULandscapeComponent:EditorGetPaintLayerWeightByNameAtLocation(InLocation, InPaintLayerName) end
---@param InLocation FVector
---@param PaintLayer ULandscapeLayerInfoObject
---@return float
function ULandscapeComponent:EditorGetPaintLayerWeightAtLocation(InLocation, PaintLayer) end


---@class ULandscapeGizmoRenderComponent : UPrimitiveComponent
ULandscapeGizmoRenderComponent = {}

---@return ULandscapeGizmoRenderComponent
function ULandscapeGizmoRenderComponent:get() end


---@class ULandscapeGrassType : UObject
---@field GrassVarieties TArray<FGrassVariety>
---@field bEnableDensityScaling boolean
---@field GrassMesh UStaticMesh
---@field GrassDensity float
---@field PlacementJitter float
---@field StartCullDistance int32
---@field EndCullDistance int32
---@field RandomRotation boolean
---@field AlignToSurface boolean
ULandscapeGrassType = {}

---@return ULandscapeGrassType
function ULandscapeGrassType:get() end



---@class ULandscapeHLODBuilder : UHLODBuilder
ULandscapeHLODBuilder = {}

---@return ULandscapeHLODBuilder
function ULandscapeHLODBuilder:get() end


---@class ULandscapeHeightfieldCollisionComponent : UPrimitiveComponent
---@field ComponentLayerInfos TArray<ULandscapeLayerInfoObject>
---@field SectionBaseX int32
---@field SectionBaseY int32
---@field CollisionSizeQuads int32
---@field CollisionScale float
---@field SimpleCollisionSizeQuads int32
---@field CollisionQuadFlags TArray<uint8>
---@field HeightfieldGuid FGuid
---@field CachedLocalBox FBox
---@field RenderComponent TLazyObjectPtr<ULandscapeComponent>
---@field CookedPhysicalMaterials TArray<UPhysicalMaterial>
ULandscapeHeightfieldCollisionComponent = {}

---@return ULandscapeHeightfieldCollisionComponent
function ULandscapeHeightfieldCollisionComponent:get() end

---@return ULandscapeComponent
function ULandscapeHeightfieldCollisionComponent:GetRenderComponent() end


---@class ULandscapeInfo : UObject
---@field LandscapeActor TLazyObjectPtr<ALandscape>
---@field LandscapeGuid FGuid
---@field ComponentSizeQuads int32
---@field SubsectionSizeQuads int32
---@field ComponentNumSubsections int32
---@field DrawScale FVector
---@field StreamingProxies TArray<TWeakObjectPtr<ALandscapeStreamingProxy>>
ULandscapeInfo = {}

---@return ULandscapeInfo
function ULandscapeInfo:get() end



---@class ULandscapeInfoMap : UObject
ULandscapeInfoMap = {}

---@return ULandscapeInfoMap
function ULandscapeInfoMap:get() end


---@class ULandscapeLODStreamingProxy_DEPRECATED : UStreamableRenderAsset
ULandscapeLODStreamingProxy_DEPRECATED = {}

---@return ULandscapeLODStreamingProxy_DEPRECATED
function ULandscapeLODStreamingProxy_DEPRECATED:get() end


---@class ULandscapeLayerInfoObject : UObject
---@field LayerName FName
---@field PhysMaterial UPhysicalMaterial
---@field Hardness float
---@field LayerUsageDebugColor FLinearColor
ULandscapeLayerInfoObject = {}

---@return ULandscapeLayerInfoObject
function ULandscapeLayerInfoObject:get() end



---@class ULandscapeMaterialInstanceConstant : UMaterialInstanceConstant
---@field TextureStreamingInfo TArray<FLandscapeMaterialTextureStreamingInfo>
---@field bIsLayerThumbnail boolean
---@field bDisableTessellation boolean
---@field bMobile boolean
---@field bEditorToolUsage boolean
ULandscapeMaterialInstanceConstant = {}

---@return ULandscapeMaterialInstanceConstant
function ULandscapeMaterialInstanceConstant:get() end



---@class ULandscapeMeshCollisionComponent : ULandscapeHeightfieldCollisionComponent
---@field MeshGuid FGuid
ULandscapeMeshCollisionComponent = {}

---@return ULandscapeMeshCollisionComponent
function ULandscapeMeshCollisionComponent:get() end



---@class ULandscapeMeshProxyComponent : UStaticMeshComponent
---@field LandscapeGuid FGuid
---@field ProxyComponentBases TArray<FIntPoint>
---@field ProxyLOD int8
ULandscapeMeshProxyComponent = {}

---@return ULandscapeMeshProxyComponent
function ULandscapeMeshProxyComponent:get() end



---@class ULandscapeNaniteComponent : UStaticMeshComponent
---@field ProxyContentId FGuid
---@field bEnabled boolean
ULandscapeNaniteComponent = {}

---@return ULandscapeNaniteComponent
function ULandscapeNaniteComponent:get() end



---@class ULandscapeSettings : UDeveloperSettings
---@field MaxNumberOfLayers int32
---@field SideResolutionLimit int32
---@field DefaultLandscapeMaterial TSoftObjectPtr<UMaterialInterface>
---@field DefaultLayerInfoObject TSoftObjectPtr<ULandscapeLayerInfoObject>
---@field bRestrictiveMode boolean
ULandscapeSettings = {}

---@return ULandscapeSettings
function ULandscapeSettings:get() end



---@class ULandscapeSplineControlPoint : UObject
---@field Location FVector
---@field Rotation FRotator
---@field Width float
---@field LayerWidthRatio float
---@field SideFalloff float
---@field LeftSideFalloffFactor float
---@field RightSideFalloffFactor float
---@field LeftSideLayerFalloffFactor float
---@field RightSideLayerFalloffFactor float
---@field EndFalloff float
---@field ConnectedSegments TArray<FLandscapeSplineConnection>
---@field Points TArray<FLandscapeSplineInterpPoint>
---@field Bounds FBox
---@field LocalMeshComponent UControlPointMeshComponent
ULandscapeSplineControlPoint = {}

---@return ULandscapeSplineControlPoint
function ULandscapeSplineControlPoint:get() end



---@class ULandscapeSplineSegment : UObject
---@field Connections FLandscapeSplineSegmentConnection
---@field SplineInfo FInterpCurveVector
---@field Points TArray<FLandscapeSplineInterpPoint>
---@field Bounds FBox
---@field LocalMeshComponents TArray<USplineMeshComponent>
ULandscapeSplineSegment = {}

---@return ULandscapeSplineSegment
function ULandscapeSplineSegment:get() end



---@class ULandscapeSplinesComponent : UPrimitiveComponent
---@field ControlPoints TArray<ULandscapeSplineControlPoint>
---@field Segments TArray<ULandscapeSplineSegment>
---@field CookedForeignMeshComponents TArray<UMeshComponent>
ULandscapeSplinesComponent = {}

---@return ULandscapeSplinesComponent
function ULandscapeSplinesComponent:get() end

---@return TArray<USplineMeshComponent>
function ULandscapeSplinesComponent:GetSplineMeshComponents() end


---@class ULandscapeSubsystem : UTickableWorldSubsystem
ULandscapeSubsystem = {}

---@return ULandscapeSubsystem
function ULandscapeSubsystem:get() end


---@class ULandscapeWeightmapUsage : UObject
---@field ChannelUsage ULandscapeComponent
---@field LayerGuid FGuid
ULandscapeWeightmapUsage = {}

---@return ULandscapeWeightmapUsage
function ULandscapeWeightmapUsage:get() end



---@class UMaterialExpressionLandscapeGrassOutput : UMaterialExpressionCustomOutput
---@field GrassTypes TArray<FGrassInput>
UMaterialExpressionLandscapeGrassOutput = {}

---@return UMaterialExpressionLandscapeGrassOutput
function UMaterialExpressionLandscapeGrassOutput:get() end



---@class UMaterialExpressionLandscapeLayerBlend : UMaterialExpression
---@field Layers TArray<FLayerBlendInput>
UMaterialExpressionLandscapeLayerBlend = {}

---@return UMaterialExpressionLandscapeLayerBlend
function UMaterialExpressionLandscapeLayerBlend:get() end



---@class UMaterialExpressionLandscapeLayerCoords : UMaterialExpression
---@field MappingType ETerrainCoordMappingType
---@field CustomUVType ELandscapeCustomizedCoordType
---@field MappingScale float
---@field MappingRotation float
---@field MappingPanU float
---@field MappingPanV float
UMaterialExpressionLandscapeLayerCoords = {}

---@return UMaterialExpressionLandscapeLayerCoords
function UMaterialExpressionLandscapeLayerCoords:get() end



---@class UMaterialExpressionLandscapeLayerSample : UMaterialExpression
---@field ParameterName FName
---@field PreviewWeight float
UMaterialExpressionLandscapeLayerSample = {}

---@return UMaterialExpressionLandscapeLayerSample
function UMaterialExpressionLandscapeLayerSample:get() end



---@class UMaterialExpressionLandscapeLayerSwitch : UMaterialExpression
---@field LayerUsed FExpressionInput
---@field LayerNotUsed FExpressionInput
---@field ParameterName FName
---@field PreviewUsed boolean
UMaterialExpressionLandscapeLayerSwitch = {}

---@return UMaterialExpressionLandscapeLayerSwitch
function UMaterialExpressionLandscapeLayerSwitch:get() end



---@class UMaterialExpressionLandscapeLayerWeight : UMaterialExpression
---@field Base FExpressionInput
---@field Layer FExpressionInput
---@field ParameterName FName
---@field PreviewWeight float
---@field ConstBase FVector
UMaterialExpressionLandscapeLayerWeight = {}

---@return UMaterialExpressionLandscapeLayerWeight
function UMaterialExpressionLandscapeLayerWeight:get() end



---@class UMaterialExpressionLandscapePhysicalMaterialOutput : UMaterialExpressionCustomOutput
---@field Inputs TArray<FPhysicalMaterialInput>
UMaterialExpressionLandscapePhysicalMaterialOutput = {}

---@return UMaterialExpressionLandscapePhysicalMaterialOutput
function UMaterialExpressionLandscapePhysicalMaterialOutput:get() end



---@class UMaterialExpressionLandscapeVisibilityMask : UMaterialExpression
UMaterialExpressionLandscapeVisibilityMask = {}

---@return UMaterialExpressionLandscapeVisibilityMask
function UMaterialExpressionLandscapeVisibilityMask:get() end


