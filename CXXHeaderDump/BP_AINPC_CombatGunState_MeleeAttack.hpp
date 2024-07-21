#ifndef UE4SS_SDK_BP_AINPC_CombatGunState_MeleeAttack_HPP
#define UE4SS_SDK_BP_AINPC_CombatGunState_MeleeAttack_HPP

class UBP_AINPC_CombatGunState_MeleeAttack_C : public UBP_AINPC_CombatState_Base_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0038 (size: 0x8)
    class UPalActionBase* action;                                                     // 0x0040 (size: 0x8)

    void StateEnter();
    void StateTick(float DeltaTime);
    void StateExit();
    void ExecuteUbergraph_BP_AINPC_CombatGunState_MeleeAttack(int32 EntryPoint);
}; // Size: 0x48

#endif
