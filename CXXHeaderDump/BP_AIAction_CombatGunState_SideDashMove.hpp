#ifndef UE4SS_SDK_BP_AIAction_CombatGunState_SideDashMove_HPP
#define UE4SS_SDK_BP_AIAction_CombatGunState_SideDashMove_HPP

class UBP_AIAction_CombatGunState_SideDashMove_C : public UBP_AINPC_CombatState_Base_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0038 (size: 0x8)
    EPalCharacterMovementCustomMode Sprint;                                           // 0x0040 (size: 0x1)
    FVector GoalPos;                                                                  // 0x0048 (size: 0x18)
    FVector Timer;                                                                    // 0x0060 (size: 0x18)
    FVector selfPos;                                                                  // 0x0078 (size: 0x18)
    bool PathFindSuccess;                                                             // 0x0090 (size: 0x1)

    void FindMoveGoal(FVector& Goal, bool& Success);
    void StateEnter();
    void StateExit();
    void StateTick(float DeltaTime);
    void ExecuteUbergraph_BP_AIAction_CombatGunState_SideDashMove(int32 EntryPoint);
}; // Size: 0x91

#endif
