#ifndef UE4SS_SDK_BP_AlertByKilledFriendState_AproachDeadPoint_HPP
#define UE4SS_SDK_BP_AlertByKilledFriendState_AproachDeadPoint_HPP

class UBP_AlertByKilledFriendState_AproachDeadPoint_C : public UPalStateMachineStateBase_BlueprintBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0030 (size: 0x8)

    void StateTick(float DeltaTime);
    void StateExit();
    void ExecuteUbergraph_BP_AlertByKilledFriendState_AproachDeadPoint(int32 EntryPoint);
}; // Size: 0x38

#endif
