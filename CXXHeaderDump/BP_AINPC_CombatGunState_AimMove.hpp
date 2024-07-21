#ifndef UE4SS_SDK_BP_AINPC_CombatGunState_AimMove_HPP
#define UE4SS_SDK_BP_AINPC_CombatGunState_AimMove_HPP

class UBP_AINPC_CombatGunState_AimMove_C : public UBP_AINPC_CombatState_Base_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0038 (size: 0x8)
    FVector MoveDIrection;                                                            // 0x0040 (size: 0x18)

    void CanMove(bool& CanMove);
    void FindMoveGoal(bool& Success, FVector& GoalPos);
    void MoveDIrectionWorldSpace(FVector& Direction);
    void StateEnter();
    void StateExit();
    void StateTick(float DeltaTime);
    void ExecuteUbergraph_BP_AINPC_CombatGunState_AimMove(int32 EntryPoint);
}; // Size: 0x58

#endif
