#ifndef UE4SS_SDK_BP_AlertByKilledFriendState_SerachAround_HPP
#define UE4SS_SDK_BP_AlertByKilledFriendState_SerachAround_HPP

class UBP_AlertByKilledFriendState_SerachAround_C : public UPalStateMachineStateBase_BlueprintBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0030 (size: 0x8)
    FVector InitSelfLocation;                                                         // 0x0038 (size: 0x18)
    class APalCharacter* SelfActor;                                                   // 0x0050 (size: 0x8)
    FVector MoveLocation;                                                             // 0x0058 (size: 0x18)
    FName WalkName;                                                                   // 0x0070 (size: 0x8)
    class UPalActionBase* AngryAction;                                                // 0x0078 (size: 0x8)

    void GetControllerRef(class APalAIController*& AICon);
    void NextMovePoint(bool& Hit);
    void StateEnter();
    void StateTick(float DeltaTime);
    void StateExit();
    void ExecuteUbergraph_BP_AlertByKilledFriendState_SerachAround(int32 EntryPoint);
}; // Size: 0x80

#endif
