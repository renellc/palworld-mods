#ifndef UE4SS_SDK_BP_AIAction_NPC_Relax_PathWalk_HPP
#define UE4SS_SDK_BP_AIAction_NPC_Relax_PathWalk_HPP

class UBP_AIAction_NPC_Relax_PathWalk_C : public UBP_AIAction_NPC_RelaxBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x01F8 (size: 0x8)
    class ABP_NPC_WalkPathPoint_1_C* Path;                                            // 0x0200 (size: 0x8)
    int32 CurrentPointIndex;                                                          // 0x0208 (size: 0x4)
    FVector TargetPoint;                                                              // 0x0210 (size: 0x18)
    bool WaitMode;                                                                    // 0x0228 (size: 0x1)
    class UPalActionBase* WaitAction;                                                 // 0x0230 (size: 0x8)
    FF_NPC_PathWalkArray PathArray;                                                   // 0x0238 (size: 0x10)
    FVector PrevLocation;                                                             // 0x0248 (size: 0x18)
    double StuckTime;                                                                 // 0x0260 (size: 0x8)
    double DeltaTime;                                                                 // 0x0268 (size: 0x8)
    bool IsAlreadyStuck;                                                              // 0x0270 (size: 0x1)

    void OnStuck();
    void OnTargetPointUpdateStart();
    void PlayWaitAction();
    void SetupWalkPath(FF_NPC_PathWalkArray PathInfo);
    void UpdateNextTargetPoint();
    void ActionStart(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionPause(class APawn* ControlledPawn);
    void ActionResume(class APawn* ControlledPawn);
    void ActionPostTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ExecuteUbergraph_BP_AIAction_NPC_Relax_PathWalk(int32 EntryPoint);
}; // Size: 0x271

#endif
