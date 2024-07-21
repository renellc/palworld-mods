#ifndef UE4SS_SDK_BP_AIAction_NPC_RelaxBase_HPP
#define UE4SS_SDK_BP_AIAction_NPC_RelaxBase_HPP

class UBP_AIAction_NPC_RelaxBase_C : public UBP_AIAction_CanCombatBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0158 (size: 0x8)
    class APalCharacter* SelfActor;                                                   // 0x0160 (size: 0x8)
    FTimerHandle UnequipTimer;                                                        // 0x0168 (size: 0x8)
    FVector DefaultLocation;                                                          // 0x0170 (size: 0x18)
    FVector DefaultForward;                                                           // 0x0188 (size: 0x18)
    bool IsReturnDefaultLocationAI;                                                   // 0x01A0 (size: 0x1)
    bool IsDefaultLocationMotionPlayMode;                                             // 0x01A1 (size: 0x1)
    class UPalActionBase* DefaultLocationAction;                                      // 0x01A8 (size: 0x8)
    EPalActionType DefaultActionType;                                                 // 0x01B0 (size: 0x1)
    double tempDeltaTime;                                                             // 0x01B8 (size: 0x8)
    FRotator DefaultRotate;                                                           // 0x01C0 (size: 0x18)
    bool IsDefaultLocationForceSet;                                                   // 0x01D8 (size: 0x1)
    bool IsSkipSight;                                                                 // 0x01D9 (size: 0x1)
    FTimerHandle SightSkipTimer;                                                      // 0x01E0 (size: 0x8)
    class AActor* CurrentTarget;                                                      // 0x01E8 (size: 0x8)
    EPalAIResponseType CurrentResponse;                                               // 0x01F0 (size: 0x1)

    void PlayDefaultAction();
    void CancelDefaultAction();
    void SelfIsLeader(bool& IsLeader);
    void SoundEvent(FVector EmitLocation);
    void ActionResume(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionPause(class APawn* ControlledPawn);
    void カスタムイベント_0();
    void ActionStart(class APawn* ControlledPawn);
    void ActionAbort(class APawn* ControlledPawn);
    void SetSightSkipFlag();
    void ActionTickAnyThread(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionPostTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ExecuteUbergraph_BP_AIAction_NPC_RelaxBase(int32 EntryPoint);
}; // Size: 0x1F1

#endif
