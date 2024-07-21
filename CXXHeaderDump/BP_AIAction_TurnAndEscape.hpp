#ifndef UE4SS_SDK_BP_AIAction_TurnAndEscape_HPP
#define UE4SS_SDK_BP_AIAction_TurnAndEscape_HPP

class UBP_AIAction_TurnAndEscape_C : public UBP_AIAction_CanCombatBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0158 (size: 0x8)
    class AActor* TargetAct;                                                          // 0x0160 (size: 0x8)
    bool Turning;                                                                     // 0x0168 (size: 0x1)
    bool CancelAble;                                                                  // 0x0169 (size: 0x1)
    bool IsStopByDelay;                                                               // 0x016A (size: 0x1)

    void OnSquadMemberDeadEvent(FPalDeadInfo DeadInbfo);
    void SoundEvent(FVector EmitLocation);
    void Setup(class AActor* TargetActor);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionStart(class APawn* ControlledPawn);
    void ActionResume(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_TurnAndEscape(int32 EntryPoint);
}; // Size: 0x16B

#endif
