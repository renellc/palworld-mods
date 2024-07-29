---@meta

---@class AAbstractNavData : ANavigationData
AAbstractNavData = {}

---@return AAbstractNavData
function AAbstractNavData:get() end


---@class ANavMeshBoundsVolume : AVolume
---@field SupportedAgents FNavAgentSelector
ANavMeshBoundsVolume = {}

---@return ANavMeshBoundsVolume
function ANavMeshBoundsVolume:get() end



---@class ANavModifierVolume : AVolume
---@field AreaClass TSubclassOf<UNavArea>
---@field bMaskFillCollisionUnderneathForNavmesh boolean
ANavModifierVolume = {}

---@return ANavModifierVolume
function ANavModifierVolume:get() end

---@param NewAreaClass TSubclassOf<UNavArea>
function ANavModifierVolume:SetAreaClass(NewAreaClass) end


---@class ANavSystemConfigOverride : AActor
---@field NavigationSystemConfig UNavigationSystemConfig
---@field OverridePolicy ENavSystemOverridePolicy
---@field bLoadOnClient boolean
ANavSystemConfigOverride = {}

---@return ANavSystemConfigOverride
function ANavSystemConfigOverride:get() end



---@class ANavigationData : AActor
---@field RenderingComp UPrimitiveComponent
---@field NavDataConfig FNavDataConfig
---@field bEnableDrawing boolean
---@field bForceRebuildOnLoad boolean
---@field bAutoDestroyWhenNoNavigation boolean
---@field bCanBeMainNavData boolean
---@field bCanSpawnOnRebuild boolean
---@field bRebuildAtRuntime boolean
---@field RuntimeGeneration ERuntimeGenerationType
---@field ObservedPathsTickInterval float
---@field DataVersion uint32
---@field SupportedAreas TArray<FSupportedAreaData>
ANavigationData = {}

---@return ANavigationData
function ANavigationData:get() end



---@class ANavigationGraph : ANavigationData
ANavigationGraph = {}

---@return ANavigationGraph
function ANavigationGraph:get() end


---@class ANavigationGraphNode : AActor
ANavigationGraphNode = {}

---@return ANavigationGraphNode
function ANavigationGraphNode:get() end


---@class ANavigationTestingActor : AActor
---@field CapsuleComponent UCapsuleComponent
---@field InvokerComponent UNavigationInvokerComponent
---@field bActAsNavigationInvoker boolean
---@field NavAgentProps FNavAgentProperties
---@field QueryingExtent FVector
---@field MyNavData ANavigationData
---@field ProjectedLocation FVector
---@field bProjectedLocationValid boolean
---@field bSearchStart boolean
---@field CostLimitFactor float
---@field MinimumCostLimit float
---@field bBacktracking boolean
---@field bUseHierarchicalPathfinding boolean
---@field bGatherDetailedInfo boolean
---@field bDrawDistanceToWall boolean
---@field bShowNodePool boolean
---@field bShowBestPath boolean
---@field bShowDiffWithPreviousStep boolean
---@field bShouldBeVisibleInGame boolean
---@field CostDisplayMode ENavCostDisplay::Type
---@field TextCanvasOffset FVector2D
---@field bPathExist boolean
---@field bPathIsPartial boolean
---@field bPathSearchOutOfNodes boolean
---@field PathfindingTime float
---@field PathCost float
---@field PathfindingSteps int32
---@field OtherActor ANavigationTestingActor
---@field FilterClass TSubclassOf<UNavigationQueryFilter>
---@field ShowStepIndex int32
---@field OffsetFromCornersDistance float
ANavigationTestingActor = {}

---@return ANavigationTestingActor
function ANavigationTestingActor:get() end



---@class ARecastNavMesh : ANavigationData
---@field bDrawTriangleEdges boolean
---@field bDrawPolyEdges boolean
---@field bDrawFilledPolys boolean
---@field bDrawNavMeshEdges boolean
---@field bDrawTileBounds boolean
---@field bDrawPathCollidingGeometry boolean
---@field bDrawTileLabels boolean
---@field bDrawPolygonLabels boolean
---@field bDrawDefaultPolygonCost boolean
---@field bDrawPolygonFlags boolean
---@field bDrawLabelsOnPathNodes boolean
---@field bDrawNavLinks boolean
---@field bDrawFailedNavLinks boolean
---@field bDrawClusters boolean
---@field bDrawOctree boolean
---@field bDrawOctreeDetails boolean
---@field bDrawMarkedForbiddenPolys boolean
---@field bDistinctlyDrawTilesBeingBuilt boolean
---@field DrawOffset float
---@field TileGenerationDebug FRecastNavMeshTileGenerationDebug
---@field bFixedTilePoolSize boolean
---@field TilePoolSize int32
---@field TileSizeUU float
---@field CellSize float
---@field CellHeight float
---@field AgentRadius float
---@field AgentHeight float
---@field AgentMaxSlope float
---@field AgentMaxStepHeight float
---@field MinRegionArea float
---@field MergeRegionSize float
---@field MaxSimplificationError float
---@field MaxSimultaneousTileGenerationJobsCount int32
---@field TileNumberHardLimit int32
---@field PolyRefTileBits int32
---@field PolyRefNavPolyBits int32
---@field PolyRefSaltBits int32
---@field NavMeshOriginOffset FVector
---@field DefaultDrawDistance float
---@field DefaultMaxSearchNodes float
---@field DefaultMaxHierarchicalSearchNodes float
---@field RegionPartitioning ERecastPartitioning::Type
---@field LayerPartitioning ERecastPartitioning::Type
---@field RegionChunkSplits int32
---@field LayerChunkSplits int32
---@field bSortNavigationAreasByCost boolean
---@field bIsWorldPartitioned boolean
---@field bPerformVoxelFiltering boolean
---@field bMarkLowHeightAreas boolean
---@field bUseExtraTopCellWhenMarkingAreas boolean
---@field bFilterLowSpanSequences boolean
---@field bFilterLowSpanFromTileCache boolean
---@field bDoFullyAsyncNavDataGathering boolean
---@field bUseBetterOffsetsFromCorners boolean
---@field bStoreEmptyTileLayers boolean
---@field bUseVirtualFilters boolean
---@field bUseVirtualGeometryFilteringAndDirtying boolean
---@field bAllowNavLinkAsPathEnd boolean
---@field TimeSliceFilterLedgeSpansMaxYProcess int32
---@field TimeSliceLongDurationDebug double
---@field bUseVoxelCache boolean
---@field TileSetUpdateInterval float
---@field HeuristicScale float
---@field VerticalDeviationFromGroundCompensation float
ARecastNavMesh = {}

---@return ARecastNavMesh
function ARecastNavMesh:get() end

---@param Bounds FBox
---@param OldArea TSubclassOf<UNavArea>
---@param NewArea TSubclassOf<UNavArea>
---@param ReplaceLinks boolean
---@return boolean
function ARecastNavMesh:K2_ReplaceAreaInTileBounds(Bounds, OldArea, NewArea, ReplaceLinks) end


---@class FNavCollisionBox
---@field Offset FVector
---@field Extent FVector
FNavCollisionBox = {}

---@return FNavCollisionBox
function FNavCollisionBox:get() end



---@class FNavCollisionCylinder
---@field Offset FVector
---@field Radius float
---@field Height float
FNavCollisionCylinder = {}

---@return FNavCollisionCylinder
function FNavCollisionCylinder:get() end



---@class FNavGraphEdge
FNavGraphEdge = {}

---@return FNavGraphEdge
function FNavGraphEdge:get() end


---@class FNavGraphNode
---@field Owner UObject
FNavGraphNode = {}

---@return FNavGraphNode
function FNavGraphNode:get() end



---@class FNavLinkCustomInstanceData : FActorComponentInstanceData
---@field NavLinkUserId uint32
FNavLinkCustomInstanceData = {}

---@return FNavLinkCustomInstanceData
function FNavLinkCustomInstanceData:get() end



---@class FNavigationFilterArea
---@field AreaClass TSubclassOf<UNavArea>
---@field TravelCostOverride float
---@field EnteringCostOverride float
---@field bIsExcluded boolean
---@field bOverrideTravelCost boolean
---@field bOverrideEnteringCost boolean
FNavigationFilterArea = {}

---@return FNavigationFilterArea
function FNavigationFilterArea:get() end



---@class FNavigationFilterFlags
---@field bNavFlag0 boolean
---@field bNavFlag1 boolean
---@field bNavFlag2 boolean
---@field bNavFlag3 boolean
---@field bNavFlag4 boolean
---@field bNavFlag5 boolean
---@field bNavFlag6 boolean
---@field bNavFlag7 boolean
---@field bNavFlag8 boolean
---@field bNavFlag9 boolean
---@field bNavFlag10 boolean
---@field bNavFlag11 boolean
---@field bNavFlag12 boolean
---@field bNavFlag13 boolean
---@field bNavFlag14 boolean
---@field bNavFlag15 boolean
FNavigationFilterFlags = {}

---@return FNavigationFilterFlags
function FNavigationFilterFlags:get() end



---@class FRecastNavMeshGenerationProperties
---@field TilePoolSize int32
---@field TileSizeUU float
---@field CellSize float
---@field CellHeight float
---@field AgentRadius float
---@field AgentHeight float
---@field AgentMaxSlope float
---@field AgentMaxStepHeight float
---@field MinRegionArea float
---@field MergeRegionSize float
---@field MaxSimplificationError float
---@field TileNumberHardLimit int32
---@field RegionPartitioning ERecastPartitioning::Type
---@field LayerPartitioning ERecastPartitioning::Type
---@field RegionChunkSplits int32
---@field LayerChunkSplits int32
---@field bSortNavigationAreasByCost boolean
---@field bPerformVoxelFiltering boolean
---@field bMarkLowHeightAreas boolean
---@field bUseExtraTopCellWhenMarkingAreas boolean
---@field bFilterLowSpanSequences boolean
---@field bFilterLowSpanFromTileCache boolean
---@field bFixedTilePoolSize boolean
---@field bIsWorldPartitioned boolean
FRecastNavMeshGenerationProperties = {}

---@return FRecastNavMeshGenerationProperties
function FRecastNavMeshGenerationProperties:get() end



---@class FRecastNavMeshTileGenerationDebug
---@field bEnabled boolean
---@field TileCoordinate FIntVector
---@field bHeightfieldSolidFromRasterization boolean
---@field bHeightfieldSolidPostInclusionBoundsFiltering boolean
---@field bHeightfieldSolidPostHeightFiltering boolean
---@field bCompactHeightfield boolean
---@field bCompactHeightfieldEroded boolean
---@field bCompactHeightfieldRegions boolean
---@field bCompactHeightfieldDistances boolean
---@field bTileCacheLayerAreas boolean
---@field bTileCacheLayerRegions boolean
---@field bTileCacheContours boolean
---@field bTileCachePolyMesh boolean
---@field bTileCacheDetailMesh boolean
FRecastNavMeshTileGenerationDebug = {}

---@return FRecastNavMeshTileGenerationDebug
function FRecastNavMeshTileGenerationDebug:get() end



---@class FSupportedAreaData
---@field AreaClassName FString
---@field AreaID int32
---@field AreaClass TObjectPtr<UClass>
FSupportedAreaData = {}

---@return FSupportedAreaData
function FSupportedAreaData:get() end



---@class INavLinkCustomInterface : IInterface
INavLinkCustomInterface = {}

---@return INavLinkCustomInterface
function INavLinkCustomInterface:get() end


---@class INavLinkHostInterface : IInterface
INavLinkHostInterface = {}

---@return INavLinkHostInterface
function INavLinkHostInterface:get() end


---@class INavNodeInterface : IInterface
INavNodeInterface = {}

---@return INavNodeInterface
function INavNodeInterface:get() end


---@class INavigationPathGenerator : IInterface
INavigationPathGenerator = {}

---@return INavigationPathGenerator
function INavigationPathGenerator:get() end


---@class UCrowdManagerBase : UObject
UCrowdManagerBase = {}

---@return UCrowdManagerBase
function UCrowdManagerBase:get() end


---@class UNavArea : UNavAreaBase
---@field DefaultCost float
---@field FixedAreaEnteringCost float
---@field DrawColor FColor
---@field SupportedAgents FNavAgentSelector
---@field bSupportsAgent0 boolean
---@field bSupportsAgent1 boolean
---@field bSupportsAgent2 boolean
---@field bSupportsAgent3 boolean
---@field bSupportsAgent4 boolean
---@field bSupportsAgent5 boolean
---@field bSupportsAgent6 boolean
---@field bSupportsAgent7 boolean
---@field bSupportsAgent8 boolean
---@field bSupportsAgent9 boolean
---@field bSupportsAgent10 boolean
---@field bSupportsAgent11 boolean
---@field bSupportsAgent12 boolean
---@field bSupportsAgent13 boolean
---@field bSupportsAgent14 boolean
---@field bSupportsAgent15 boolean
UNavArea = {}

---@return UNavArea
function UNavArea:get() end



---@class UNavAreaMeta : UNavArea
UNavAreaMeta = {}

---@return UNavAreaMeta
function UNavAreaMeta:get() end


---@class UNavAreaMeta_SwitchByAgent : UNavAreaMeta
---@field Agent0Area TSubclassOf<UNavArea>
---@field Agent1Area TSubclassOf<UNavArea>
---@field Agent2Area TSubclassOf<UNavArea>
---@field Agent3Area TSubclassOf<UNavArea>
---@field Agent4Area TSubclassOf<UNavArea>
---@field Agent5Area TSubclassOf<UNavArea>
---@field Agent6Area TSubclassOf<UNavArea>
---@field Agent7Area TSubclassOf<UNavArea>
---@field Agent8Area TSubclassOf<UNavArea>
---@field Agent9Area TSubclassOf<UNavArea>
---@field Agent10Area TSubclassOf<UNavArea>
---@field Agent11Area TSubclassOf<UNavArea>
---@field Agent12Area TSubclassOf<UNavArea>
---@field Agent13Area TSubclassOf<UNavArea>
---@field Agent14Area TSubclassOf<UNavArea>
---@field Agent15Area TSubclassOf<UNavArea>
UNavAreaMeta_SwitchByAgent = {}

---@return UNavAreaMeta_SwitchByAgent
function UNavAreaMeta_SwitchByAgent:get() end



---@class UNavArea_Default : UNavArea
UNavArea_Default = {}

---@return UNavArea_Default
function UNavArea_Default:get() end


---@class UNavArea_LowHeight : UNavArea
UNavArea_LowHeight = {}

---@return UNavArea_LowHeight
function UNavArea_LowHeight:get() end


---@class UNavArea_Null : UNavArea
UNavArea_Null = {}

---@return UNavArea_Null
function UNavArea_Null:get() end


---@class UNavArea_Obstacle : UNavArea
UNavArea_Obstacle = {}

---@return UNavArea_Obstacle
function UNavArea_Obstacle:get() end


---@class UNavCollision : UNavCollisionBase
---@field CylinderCollision TArray<FNavCollisionCylinder>
---@field BoxCollision TArray<FNavCollisionBox>
---@field AreaClass TSubclassOf<UNavArea>
---@field bGatherConvexGeometry boolean
---@field bCreateOnClient boolean
UNavCollision = {}

---@return UNavCollision
function UNavCollision:get() end



---@class UNavLinkComponent : UPrimitiveComponent
---@field Links TArray<FNavigationLink>
UNavLinkComponent = {}

---@return UNavLinkComponent
function UNavLinkComponent:get() end



---@class UNavLinkCustomComponent : UNavRelevantComponent
---@field NavLinkUserId uint32
---@field EnabledAreaClass TSubclassOf<UNavArea>
---@field DisabledAreaClass TSubclassOf<UNavArea>
---@field SupportedAgents FNavAgentSelector
---@field LinkRelativeStart FVector
---@field LinkRelativeEnd FVector
---@field LinkDirection ENavLinkDirection::Type
---@field bLinkEnabled boolean
---@field bNotifyWhenEnabled boolean
---@field bNotifyWhenDisabled boolean
---@field bCreateBoxObstacle boolean
---@field ObstacleOffset FVector
---@field ObstacleExtent FVector
---@field ObstacleAreaClass TSubclassOf<UNavArea>
---@field BroadcastRadius float
---@field BroadcastInterval float
---@field BroadcastChannel ECollisionChannel
UNavLinkCustomComponent = {}

---@return UNavLinkCustomComponent
function UNavLinkCustomComponent:get() end



---@class UNavLinkRenderingComponent : UPrimitiveComponent
UNavLinkRenderingComponent = {}

---@return UNavLinkRenderingComponent
function UNavLinkRenderingComponent:get() end


---@class UNavLinkTrivial : UNavLinkDefinition
UNavLinkTrivial = {}

---@return UNavLinkTrivial
function UNavLinkTrivial:get() end


---@class UNavMeshRenderingComponent : UDebugDrawComponent
UNavMeshRenderingComponent = {}

---@return UNavMeshRenderingComponent
function UNavMeshRenderingComponent:get() end


---@class UNavModifierComponent : UNavRelevantComponent
---@field AreaClass TSubclassOf<UNavArea>
---@field FailsafeExtent FVector
---@field bIncludeAgentHeight boolean
UNavModifierComponent = {}

---@return UNavModifierComponent
function UNavModifierComponent:get() end

---@param NewAreaClass TSubclassOf<UNavArea>
function UNavModifierComponent:SetAreaClass(NewAreaClass) end


---@class UNavRelevantComponent : UActorComponent
---@field bAttachToOwnersRoot boolean
---@field CachedNavParent UObject
UNavRelevantComponent = {}

---@return UNavRelevantComponent
function UNavRelevantComponent:get() end

---@param bRelevant boolean
function UNavRelevantComponent:SetNavigationRelevancy(bRelevant) end


---@class UNavTestRenderingComponent : UDebugDrawComponent
UNavTestRenderingComponent = {}

---@return UNavTestRenderingComponent
function UNavTestRenderingComponent:get() end


---@class UNavigationGraphNodeComponent : USceneComponent
---@field Node FNavGraphNode
---@field NextNodeComponent UNavigationGraphNodeComponent
---@field PrevNodeComponent UNavigationGraphNodeComponent
UNavigationGraphNodeComponent = {}

---@return UNavigationGraphNodeComponent
function UNavigationGraphNodeComponent:get() end



---@class UNavigationInvokerComponent : UActorComponent
---@field TileGenerationRadius float
---@field TileRemovalRadius float
UNavigationInvokerComponent = {}

---@return UNavigationInvokerComponent
function UNavigationInvokerComponent:get() end



---@class UNavigationPath : UObject
---@field PathUpdatedNotifier FNavigationPathPathUpdatedNotifier
---@field PathPoints TArray<FVector>
---@field RecalculateOnInvalidation ENavigationOptionFlag::Type
UNavigationPath = {}

---@return UNavigationPath
function UNavigationPath:get() end

---@return boolean
function UNavigationPath:IsValid() end
---@return boolean
function UNavigationPath:IsStringPulled() end
---@return boolean
function UNavigationPath:IsPartial() end
---@return float
function UNavigationPath:GetPathLength() end
---@return float
function UNavigationPath:GetPathCost() end
---@return FString
function UNavigationPath:GetDebugString() end
---@param DoRecalculation ENavigationOptionFlag::Type
function UNavigationPath:EnableRecalculationOnInvalidation(DoRecalculation) end
---@param bShouldDrawDebugData boolean
---@param PathColor FLinearColor
function UNavigationPath:EnableDebugDrawing(bShouldDrawDebugData, PathColor) end


---@class UNavigationQueryFilter : UObject
---@field Areas TArray<FNavigationFilterArea>
---@field IncludeFlags FNavigationFilterFlags
---@field ExcludeFlags FNavigationFilterFlags
UNavigationQueryFilter = {}

---@return UNavigationQueryFilter
function UNavigationQueryFilter:get() end



---@class UNavigationSystemModuleConfig : UNavigationSystemConfig
---@field bStrictlyStatic boolean
---@field bCreateOnClient boolean
---@field bAutoSpawnMissingNavData boolean
---@field bSpawnNavDataInNavBoundsLevel boolean
UNavigationSystemModuleConfig = {}

---@return UNavigationSystemModuleConfig
function UNavigationSystemModuleConfig:get() end



---@class UNavigationSystemV1 : UNavigationSystemBase
---@field MainNavData ANavigationData
---@field AbstractNavData ANavigationData
---@field DefaultAgentName FName
---@field CrowdManagerClass TSoftClassPtr<UCrowdManagerBase>
---@field bAutoCreateNavigationData boolean
---@field bSpawnNavDataInNavBoundsLevel boolean
---@field bAllowClientSideNavigation boolean
---@field bShouldDiscardSubLevelNavData boolean
---@field bTickWhilePaused boolean
---@field bSupportRebuilding boolean
---@field bInitialBuildingLocked boolean
---@field bSkipAgentHeightCheckWhenPickingNavData boolean
---@field GeometryExportVertexCountWarningThreshold int32
---@field bGenerateNavigationOnlyAroundNavigationInvokers boolean
---@field ActiveTilesUpdateInterval float
---@field DataGatheringMode ENavDataGatheringModeConfig
---@field DirtyAreaWarningSizeThreshold float
---@field GatheringNavModifiersWarningLimitTime float
---@field SupportedAgents TArray<FNavDataConfig>
---@field SupportedAgentsMask FNavAgentSelector
---@field BuildBounds FBox
---@field NavDataSet TArray<ANavigationData>
---@field NavDataRegistrationQueue TArray<ANavigationData>
---@field OnNavDataRegisteredEvent FNavigationSystemV1OnNavDataRegisteredEvent
---@field OnNavigationGenerationFinishedDelegate FNavigationSystemV1OnNavigationGenerationFinishedDelegate
---@field OperationMode FNavigationSystemRunMode
UNavigationSystemV1 = {}

---@return UNavigationSystemV1
function UNavigationSystemV1:get() end

---@param Invoker AActor
function UNavigationSystemV1:UnregisterNavigationInvoker(Invoker) end
---@param MaxNumberOfJobs int32
function UNavigationSystemV1:SetMaxSimultaneousTileGenerationJobsCount(MaxNumberOfJobs) end
---@param newMode ENavDataGatheringModeConfig
function UNavigationSystemV1:SetGeometryGatheringMode(newMode) end
function UNavigationSystemV1:ResetMaxSimultaneousTileGenerationJobsCount() end
---@param Invoker AActor
---@param TileGenerationRadius float
---@param TileRemovalRadius float
function UNavigationSystemV1:RegisterNavigationInvoker(Invoker, TileGenerationRadius, TileRemovalRadius) end
---@param NavVolume ANavMeshBoundsVolume
function UNavigationSystemV1:OnNavigationBoundsUpdated(NavVolume) end
---@param WorldContextObject UObject
---@param RayStart FVector
---@param RayEnd FVector
---@param HitLocation FVector
---@param FilterClass TSubclassOf<UNavigationQueryFilter>
---@param Querier AController
---@return boolean
function UNavigationSystemV1:NavigationRaycast(WorldContextObject, RayStart, RayEnd, HitLocation, FilterClass, Querier) end
---@param Object UObject
---@param OldArea TSubclassOf<UNavArea>
---@param NewArea TSubclassOf<UNavArea>
---@return boolean
function UNavigationSystemV1:K2_ReplaceAreaInOctreeData(Object, OldArea, NewArea) end
---@param WorldContextObject UObject
---@param Point FVector
---@param ProjectedLocation FVector
---@param NavData ANavigationData
---@param FilterClass TSubclassOf<UNavigationQueryFilter>
---@param QueryExtent FVector
---@return boolean
function UNavigationSystemV1:K2_ProjectPointToNavigation(WorldContextObject, Point, ProjectedLocation, NavData, FilterClass, QueryExtent) end
---@param WorldContextObject UObject
---@param Origin FVector
---@param RandomLocation FVector
---@param Radius float
---@param NavData ANavigationData
---@param FilterClass TSubclassOf<UNavigationQueryFilter>
---@return boolean
function UNavigationSystemV1:K2_GetRandomReachablePointInRadius(WorldContextObject, Origin, RandomLocation, Radius, NavData, FilterClass) end
---@param WorldContextObject UObject
---@param Origin FVector
---@param RandomLocation FVector
---@param Radius float
---@param NavData ANavigationData
---@param FilterClass TSubclassOf<UNavigationQueryFilter>
---@return boolean
function UNavigationSystemV1:K2_GetRandomPointInNavigableRadius(WorldContextObject, Origin, RandomLocation, Radius, NavData, FilterClass) end
---@param WorldContextObject UObject
---@param Origin FVector
---@param RandomLocation FVector
---@param Radius float
---@param NavData ANavigationData
---@param FilterClass TSubclassOf<UNavigationQueryFilter>
---@return boolean
function UNavigationSystemV1:K2_GetRandomLocationInNavigableRadius(WorldContextObject, Origin, RandomLocation, Radius, NavData, FilterClass) end
---@param WorldContextObject UObject
---@return boolean
function UNavigationSystemV1:IsNavigationBeingBuiltOrLocked(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UNavigationSystemV1:IsNavigationBeingBuilt(WorldContextObject) end
---@param WorldContextObject UObject
---@param PathStart FVector
---@param PathEnd FVector
---@param PathLength float
---@param NavData ANavigationData
---@param FilterClass TSubclassOf<UNavigationQueryFilter>
---@return ENavigationQueryResult::Type
function UNavigationSystemV1:GetPathLength(WorldContextObject, PathStart, PathEnd, PathLength, NavData, FilterClass) end
---@param WorldContextObject UObject
---@param PathStart FVector
---@param PathEnd FVector
---@param PathCost float
---@param NavData ANavigationData
---@param FilterClass TSubclassOf<UNavigationQueryFilter>
---@return ENavigationQueryResult::Type
function UNavigationSystemV1:GetPathCost(WorldContextObject, PathStart, PathEnd, PathCost, NavData, FilterClass) end
---@param WorldContextObject UObject
---@return UNavigationSystemV1
function UNavigationSystemV1:GetNavigationSystem(WorldContextObject) end
---@param WorldContextObject UObject
---@param PathStart FVector
---@param PathEnd FVector
---@param PathfindingContext AActor
---@param FilterClass TSubclassOf<UNavigationQueryFilter>
---@return UNavigationPath
function UNavigationSystemV1:FindPathToLocationSynchronously(WorldContextObject, PathStart, PathEnd, PathfindingContext, FilterClass) end
---@param WorldContextObject UObject
---@param PathStart FVector
---@param GoalActor AActor
---@param TetherDistance float
---@param PathfindingContext AActor
---@param FilterClass TSubclassOf<UNavigationQueryFilter>
---@return UNavigationPath
function UNavigationSystemV1:FindPathToActorSynchronously(WorldContextObject, PathStart, GoalActor, TetherDistance, PathfindingContext, FilterClass) end


---@class URecastFilter_UseDefaultArea : UNavigationQueryFilter
URecastFilter_UseDefaultArea = {}

---@return URecastFilter_UseDefaultArea
function URecastFilter_UseDefaultArea:get() end


---@class URecastNavMeshDataChunk : UNavigationDataChunk
URecastNavMeshDataChunk = {}

---@return URecastNavMeshDataChunk
function URecastNavMeshDataChunk:get() end


