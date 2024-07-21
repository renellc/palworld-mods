#ifndef UE4SS_SDK_BP_AINPC_CombatMeleeState_StepAttack_HPP
#define UE4SS_SDK_BP_AINPC_CombatMeleeState_StepAttack_HPP

class UBP_AINPC_CombatMeleeState_StepAttack_C : public UBP_AINPC_CombatState_Base_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0038 (size: 0x8)

    void StateEnter();
    void ExecuteUbergraph_BP_AINPC_CombatMeleeState_StepAttack(int32 EntryPoint);
}; // Size: 0x40

#endif
