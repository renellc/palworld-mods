#ifndef UE4SS_SDK_BP_AINPC_Combat_CommonState_BackwardTurn_HPP
#define UE4SS_SDK_BP_AINPC_Combat_CommonState_BackwardTurn_HPP

class UBP_AINPC_Combat_CommonState_BackwardTurn_C : public UBP_AINPC_CombatState_Base_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0038 (size: 0x8)
    double RightLeftMove;                                                             // 0x0040 (size: 0x8)
    FName flagName;                                                                   // 0x0048 (size: 0x8)

    void StateTick(float DeltaTime);
    void StateEnter();
    void StateExit();
    void ExecuteUbergraph_BP_AINPC_Combat_CommonState_BackwardTurn(int32 EntryPoint);
}; // Size: 0x50

#endif
