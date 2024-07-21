#ifndef UE4SS_SDK_BP_AIAction_NPCOtomoFollow_HPP
#define UE4SS_SDK_BP_AIAction_NPCOtomoFollow_HPP

class UBP_AIAction_NPCOtomoFollow_C : public UBP_AIAction_CanCombatBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0158 (size: 0x8)
    class AActor* Trainer;                                                            // 0x0160 (size: 0x8)
    class APawn* SelfPawn;                                                            // 0x0168 (size: 0x8)

    void FindTrainerKillEnemy(class AActor*& Enemy);
    void OnFail_9D776B464FB7F1A972DAFDBCCA1BDFFF(TEnumAsByte<EPathFollowingResult::Type> MovementResult);
    void OnSuccess_9D776B464FB7F1A972DAFDBCCA1BDFFF(TEnumAsByte<EPathFollowingResult::Type> MovementResult);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionStart(class APawn* ControlledPawn);
    void ActionPause(class APawn* ControlledPawn);
    void ActionAbort(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ExecuteUbergraph_BP_AIAction_NPCOtomoFollow(int32 EntryPoint);
}; // Size: 0x170

#endif
