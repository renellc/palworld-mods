#ifndef UE4SS_SDK_BP_AIAction_NPC_Relax_Wander_HPP
#define UE4SS_SDK_BP_AIAction_NPC_Relax_Wander_HPP

class UBP_AIAction_NPC_Relax_Wander_C : public UBP_AIAction_NPC_Relax_PathWalk_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    FVector WalkAreaCenter;                                                           // 0x0280 (size: 0x18)
    double WalkRadius;                                                                // 0x0298 (size: 0x8)
    double WaitSecMin;                                                                // 0x02A0 (size: 0x8)
    double WaitSecMax;                                                                // 0x02A8 (size: 0x8)
    TArray<FVector> NodeList;                                                         // 0x02B0 (size: 0x10)
    int32 WalkAreaSplit Num;                                                          // 0x02C0 (size: 0x4)

    void OnStuck();
    void Get Arrivable Location(FVector V, bool& Result, FVector& Location);
    void TryGetTargetLocation(int32 TryCount, bool& Result, FVector& Location);
    void SelectTargetNode(FVector& Location, int32& Index);
    void OnTargetPointUpdateStart();
    void ActionStart(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_NPC_Relax_Wander(int32 EntryPoint);
}; // Size: 0x2C4

#endif
