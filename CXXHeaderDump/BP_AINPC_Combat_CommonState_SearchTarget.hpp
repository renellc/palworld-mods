#ifndef UE4SS_SDK_BP_AINPC_Combat_CommonState_SearchTarget_HPP
#define UE4SS_SDK_BP_AINPC_Combat_CommonState_SearchTarget_HPP

class UBP_AINPC_Combat_CommonState_SearchTarget_C : public UBP_AINPC_CombatState_Base_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0038 (size: 0x8)

    void StateEnter();
    void StateTick(float DeltaTime);
    void ExecuteUbergraph_BP_AINPC_Combat_CommonState_SearchTarget(int32 EntryPoint);
}; // Size: 0x40

#endif
