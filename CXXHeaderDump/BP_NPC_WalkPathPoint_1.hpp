#ifndef UE4SS_SDK_BP_NPC_WalkPathPoint_1_HPP
#define UE4SS_SDK_BP_NPC_WalkPathPoint_1_HPP

class ABP_NPC_WalkPathPoint_1_C : public AActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class UStaticMeshComponent* DebugStaticMesh;                                      // 0x0298 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02A0 (size: 0x8)
    double WaitTime;                                                                  // 0x02A8 (size: 0x8)
    EPalActionType WaitAction;                                                        // 0x02B0 (size: 0x1)

    void ExecuteUbergraph_BP_NPC_WalkPathPoint_1(int32 EntryPoint);
}; // Size: 0x2B1

#endif
