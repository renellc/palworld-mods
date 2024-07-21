#ifndef UE4SS_SDK_BP_AIAction_AlertByKilledFriend_HPP
#define UE4SS_SDK_BP_AIAction_AlertByKilledFriend_HPP

class UBP_AIAction_AlertByKilledFriend_C : public UBP_AIAction_CanCombatBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0158 (size: 0x8)
    TEnumAsByte<EPal_AI_AlertByKilledFriendState::Type> CurrentState;                 // 0x0160 (size: 0x1)
    TMap<TEnumAsByte<EPal_AI_AlertByKilledFriendState::Type>, TSubclassOf<UPalStateMachineStateBase_BlueprintBase>> StateMap; // 0x0168 (size: 0x50)
    class UPalStateMachine* StateMacine;                                              // 0x01B8 (size: 0x8)
    class AActor* DeadBody;                                                           // 0x01C0 (size: 0x8)
    FVector DeadLocation;                                                             // 0x01C8 (size: 0x18)
    class AActor* SelfActor;                                                          // 0x01E0 (size: 0x8)
    double Timer;                                                                     // 0x01E8 (size: 0x8)
    double tempDeltaTime;                                                             // 0x01F0 (size: 0x8)

    void LineTraceGround(FVector CenterPos, bool& IsHit, FVector& HitPos);
    void StopMovement();
    void MoveToDeadBody();
    void ChangeNextState(TEnumAsByte<EPal_AI_AlertByKilledFriendState::Type> Next);
    void AddState(TEnumAsByte<EPal_AI_AlertByKilledFriendState::Type> NewParam);
    void ActionStart(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionAbort(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_AlertByKilledFriend(int32 EntryPoint);
}; // Size: 0x1F8

#endif
