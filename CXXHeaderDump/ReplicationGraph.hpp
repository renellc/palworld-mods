#ifndef UE4SS_SDK_ReplicationGraph_HPP
#define UE4SS_SDK_ReplicationGraph_HPP

struct FAlwaysRelevantActorInfo
{
    class UNetConnection* Connection;                                                 // 0x0000 (size: 0x8)
    class AActor* LastViewer;                                                         // 0x0008 (size: 0x8)
    class AActor* LastViewTarget;                                                     // 0x0010 (size: 0x8)

}; // Size: 0x18

struct FClassReplicationInfo
{
    float DistancePriorityScale;                                                      // 0x0000 (size: 0x4)
    float StarvationPriorityScale;                                                    // 0x0004 (size: 0x4)
    float AccumulatedNetPriorityBias;                                                 // 0x0008 (size: 0x4)
    uint16 ReplicationPeriodFrame;                                                    // 0x000C (size: 0x2)
    uint16 FastPath_ReplicationPeriodFrame;                                           // 0x000E (size: 0x2)
    uint16 ActorChannelFrameTimeout;                                                  // 0x0010 (size: 0x2)
    float CullDistance;                                                               // 0x0068 (size: 0x4)
    float CullDistanceSquared;                                                        // 0x006C (size: 0x4)

}; // Size: 0x70

struct FConnectionAlwaysRelevantNodePair
{
    class UNetConnection* NetConnection;                                              // 0x0000 (size: 0x8)
    class UReplicationGraphNode_AlwaysRelevant_ForConnection* Node;                   // 0x0008 (size: 0x8)

}; // Size: 0x10

struct FLastLocationGatherInfo
{
    class UNetConnection* Connection;                                                 // 0x0000 (size: 0x8)
    FVector LastLocation;                                                             // 0x0008 (size: 0x18)
    FVector LastOutOfRangeLocationCheck;                                              // 0x0020 (size: 0x18)

}; // Size: 0x38

struct FTearOffActorInfo
{
    class AActor* Actor;                                                              // 0x0008 (size: 0x8)

}; // Size: 0x18

class AReplicationGraphDebugActor : public AActor
{
    class UReplicationGraph* ReplicationGraph;                                        // 0x0290 (size: 0x8)
    class UNetReplicationGraphConnection* ConnectionManager;                          // 0x0298 (size: 0x8)

    void ServerStopDebugging();
    void ServerStartDebugging();
    void ServerSetPeriodFrameForClass(UClass* Class, int32 PeriodFrame);
    void ServerSetCullDistanceForClass(UClass* Class, float CullDistance);
    void ServerSetConditionalActorBreakpoint(class AActor* Actor);
    void ServerPrintCullDistances();
    void ServerPrintAllActorInfo(FString Str);
    void ServerCellInfo();
    void ClientCellInfo(FVector CellLocation, FVector CellExtent, const TArray<class AActor*>& Actors);
}; // Size: 0x2A0

class UBasicReplicationGraph : public UReplicationGraph
{
    class UReplicationGraphNode_GridSpatialization2D* GridNode;                       // 0x0570 (size: 0x8)
    class UReplicationGraphNode_ActorList* AlwaysRelevantNode;                        // 0x0578 (size: 0x8)
    TArray<FConnectionAlwaysRelevantNodePair> AlwaysRelevantForConnectionList;        // 0x0580 (size: 0x10)
    TArray<class AActor*> ActorsWithoutNetConnection;                                 // 0x0590 (size: 0x10)

}; // Size: 0x5A0

class UNetReplicationGraphConnection : public UReplicationConnectionDriver
{
    class UNetConnection* NetConnection;                                              // 0x0028 (size: 0x8)
    class AReplicationGraphDebugActor* DebugActor;                                    // 0x0220 (size: 0x8)
    TArray<FLastLocationGatherInfo> LastGatherLocations;                              // 0x0230 (size: 0x10)
    TArray<class UReplicationGraphNode*> ConnectionGraphNodes;                        // 0x0298 (size: 0x10)
    class UReplicationGraphNode_TearOff_ForConnection* TearOffNode;                   // 0x02A8 (size: 0x8)

}; // Size: 0x380

class UReplicationGraph : public UReplicationDriver
{
    TSubclassOf<class UNetReplicationGraphConnection> ReplicationConnectionManagerClass; // 0x0028 (size: 0x8)
    class UNetDriver* NetDriver;                                                      // 0x0030 (size: 0x8)
    TArray<class UNetReplicationGraphConnection*> Connections;                        // 0x0038 (size: 0x10)
    TArray<class UNetReplicationGraphConnection*> PendingConnections;                 // 0x0048 (size: 0x10)
    TArray<class UReplicationGraphNode*> GlobalGraphNodes;                            // 0x0098 (size: 0x10)
    TArray<class UReplicationGraphNode*> PrepareForReplicationNodes;                  // 0x00A8 (size: 0x10)

}; // Size: 0x570

class UReplicationGraphNode : public UObject
{
    TArray<class UReplicationGraphNode*> AllChildNodes;                               // 0x0028 (size: 0x10)

}; // Size: 0x50

class UReplicationGraphNode_ActorList : public UReplicationGraphNode
{
}; // Size: 0xD0

class UReplicationGraphNode_ActorListFrequencyBuckets : public UReplicationGraphNode
{
}; // Size: 0x108

class UReplicationGraphNode_AlwaysRelevant : public UReplicationGraphNode
{
    class UReplicationGraphNode* ChildNode;                                           // 0x0050 (size: 0x8)

}; // Size: 0x68

class UReplicationGraphNode_AlwaysRelevant_ForConnection : public UReplicationGraphNode_ActorList
{
    TArray<FAlwaysRelevantActorInfo> PastRelevantActors;                              // 0x00E0 (size: 0x10)

}; // Size: 0xF0

class UReplicationGraphNode_ConnectionDormancyNode : public UReplicationGraphNode_ActorList
{
}; // Size: 0x150

class UReplicationGraphNode_DormancyNode : public UReplicationGraphNode_ActorList
{
}; // Size: 0xE0

class UReplicationGraphNode_DynamicSpatialFrequency : public UReplicationGraphNode_ActorList
{
}; // Size: 0x100

class UReplicationGraphNode_GridCell : public UReplicationGraphNode_ActorList
{
    class UReplicationGraphNode* DynamicNode;                                         // 0x0110 (size: 0x8)
    class UReplicationGraphNode_DormancyNode* DormancyNode;                           // 0x0118 (size: 0x8)

}; // Size: 0x120

class UReplicationGraphNode_GridSpatialization2D : public UReplicationGraphNode
{
}; // Size: 0x260

class UReplicationGraphNode_TearOff_ForConnection : public UReplicationGraphNode
{
    TArray<FTearOffActorInfo> TearOffActors;                                          // 0x0050 (size: 0x10)

}; // Size: 0x70

#endif
