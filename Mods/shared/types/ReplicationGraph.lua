---@meta

---@class AReplicationGraphDebugActor : AActor
---@field ReplicationGraph UReplicationGraph
---@field ConnectionManager UNetReplicationGraphConnection
AReplicationGraphDebugActor = {}

---@return AReplicationGraphDebugActor
function AReplicationGraphDebugActor:get() end

function AReplicationGraphDebugActor:ServerStopDebugging() end
function AReplicationGraphDebugActor:ServerStartDebugging() end
---@param Class UClass
---@param PeriodFrame int32
function AReplicationGraphDebugActor:ServerSetPeriodFrameForClass(Class, PeriodFrame) end
---@param Class UClass
---@param CullDistance float
function AReplicationGraphDebugActor:ServerSetCullDistanceForClass(Class, CullDistance) end
---@param Actor AActor
function AReplicationGraphDebugActor:ServerSetConditionalActorBreakpoint(Actor) end
function AReplicationGraphDebugActor:ServerPrintCullDistances() end
---@param Str FString
function AReplicationGraphDebugActor:ServerPrintAllActorInfo(Str) end
function AReplicationGraphDebugActor:ServerCellInfo() end
---@param CellLocation FVector
---@param CellExtent FVector
---@param Actors TArray<AActor>
function AReplicationGraphDebugActor:ClientCellInfo(CellLocation, CellExtent, Actors) end


---@class FAlwaysRelevantActorInfo
---@field Connection UNetConnection
---@field LastViewer AActor
---@field LastViewTarget AActor
FAlwaysRelevantActorInfo = {}

---@return FAlwaysRelevantActorInfo
function FAlwaysRelevantActorInfo:get() end



---@class FClassReplicationInfo
---@field DistancePriorityScale float
---@field StarvationPriorityScale float
---@field AccumulatedNetPriorityBias float
---@field ReplicationPeriodFrame uint16
---@field FastPath_ReplicationPeriodFrame uint16
---@field ActorChannelFrameTimeout uint16
---@field CullDistance float
---@field CullDistanceSquared float
FClassReplicationInfo = {}

---@return FClassReplicationInfo
function FClassReplicationInfo:get() end



---@class FConnectionAlwaysRelevantNodePair
---@field NetConnection UNetConnection
---@field Node UReplicationGraphNode_AlwaysRelevant_ForConnection
FConnectionAlwaysRelevantNodePair = {}

---@return FConnectionAlwaysRelevantNodePair
function FConnectionAlwaysRelevantNodePair:get() end



---@class FLastLocationGatherInfo
---@field Connection UNetConnection
---@field LastLocation FVector
---@field LastOutOfRangeLocationCheck FVector
FLastLocationGatherInfo = {}

---@return FLastLocationGatherInfo
function FLastLocationGatherInfo:get() end



---@class FTearOffActorInfo
---@field Actor AActor
FTearOffActorInfo = {}

---@return FTearOffActorInfo
function FTearOffActorInfo:get() end



---@class UBasicReplicationGraph : UReplicationGraph
---@field GridNode UReplicationGraphNode_GridSpatialization2D
---@field AlwaysRelevantNode UReplicationGraphNode_ActorList
---@field AlwaysRelevantForConnectionList TArray<FConnectionAlwaysRelevantNodePair>
---@field ActorsWithoutNetConnection TArray<AActor>
UBasicReplicationGraph = {}

---@return UBasicReplicationGraph
function UBasicReplicationGraph:get() end



---@class UNetReplicationGraphConnection : UReplicationConnectionDriver
---@field NetConnection UNetConnection
---@field DebugActor AReplicationGraphDebugActor
---@field LastGatherLocations TArray<FLastLocationGatherInfo>
---@field ConnectionGraphNodes TArray<UReplicationGraphNode>
---@field TearOffNode UReplicationGraphNode_TearOff_ForConnection
UNetReplicationGraphConnection = {}

---@return UNetReplicationGraphConnection
function UNetReplicationGraphConnection:get() end



---@class UReplicationGraph : UReplicationDriver
---@field ReplicationConnectionManagerClass TSubclassOf<UNetReplicationGraphConnection>
---@field NetDriver UNetDriver
---@field Connections TArray<UNetReplicationGraphConnection>
---@field PendingConnections TArray<UNetReplicationGraphConnection>
---@field GlobalGraphNodes TArray<UReplicationGraphNode>
---@field PrepareForReplicationNodes TArray<UReplicationGraphNode>
UReplicationGraph = {}

---@return UReplicationGraph
function UReplicationGraph:get() end



---@class UReplicationGraphNode : UObject
---@field AllChildNodes TArray<UReplicationGraphNode>
UReplicationGraphNode = {}

---@return UReplicationGraphNode
function UReplicationGraphNode:get() end



---@class UReplicationGraphNode_ActorList : UReplicationGraphNode
UReplicationGraphNode_ActorList = {}

---@return UReplicationGraphNode_ActorList
function UReplicationGraphNode_ActorList:get() end


---@class UReplicationGraphNode_ActorListFrequencyBuckets : UReplicationGraphNode
UReplicationGraphNode_ActorListFrequencyBuckets = {}

---@return UReplicationGraphNode_ActorListFrequencyBuckets
function UReplicationGraphNode_ActorListFrequencyBuckets:get() end


---@class UReplicationGraphNode_AlwaysRelevant : UReplicationGraphNode
---@field ChildNode UReplicationGraphNode
UReplicationGraphNode_AlwaysRelevant = {}

---@return UReplicationGraphNode_AlwaysRelevant
function UReplicationGraphNode_AlwaysRelevant:get() end



---@class UReplicationGraphNode_AlwaysRelevant_ForConnection : UReplicationGraphNode_ActorList
---@field PastRelevantActors TArray<FAlwaysRelevantActorInfo>
UReplicationGraphNode_AlwaysRelevant_ForConnection = {}

---@return UReplicationGraphNode_AlwaysRelevant_ForConnection
function UReplicationGraphNode_AlwaysRelevant_ForConnection:get() end



---@class UReplicationGraphNode_ConnectionDormancyNode : UReplicationGraphNode_ActorList
UReplicationGraphNode_ConnectionDormancyNode = {}

---@return UReplicationGraphNode_ConnectionDormancyNode
function UReplicationGraphNode_ConnectionDormancyNode:get() end


---@class UReplicationGraphNode_DormancyNode : UReplicationGraphNode_ActorList
UReplicationGraphNode_DormancyNode = {}

---@return UReplicationGraphNode_DormancyNode
function UReplicationGraphNode_DormancyNode:get() end


---@class UReplicationGraphNode_DynamicSpatialFrequency : UReplicationGraphNode_ActorList
UReplicationGraphNode_DynamicSpatialFrequency = {}

---@return UReplicationGraphNode_DynamicSpatialFrequency
function UReplicationGraphNode_DynamicSpatialFrequency:get() end


---@class UReplicationGraphNode_GridCell : UReplicationGraphNode_ActorList
---@field DynamicNode UReplicationGraphNode
---@field DormancyNode UReplicationGraphNode_DormancyNode
UReplicationGraphNode_GridCell = {}

---@return UReplicationGraphNode_GridCell
function UReplicationGraphNode_GridCell:get() end



---@class UReplicationGraphNode_GridSpatialization2D : UReplicationGraphNode
UReplicationGraphNode_GridSpatialization2D = {}

---@return UReplicationGraphNode_GridSpatialization2D
function UReplicationGraphNode_GridSpatialization2D:get() end


---@class UReplicationGraphNode_TearOff_ForConnection : UReplicationGraphNode
---@field TearOffActors TArray<FTearOffActorInfo>
UReplicationGraphNode_TearOff_ForConnection = {}

---@return UReplicationGraphNode_TearOff_ForConnection
function UReplicationGraphNode_TearOff_ForConnection:get() end



