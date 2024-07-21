#ifndef UE4SS_SDK_BP_AIAction_NooseTrap_HPP
#define UE4SS_SDK_BP_AIAction_NooseTrap_HPP

class UBP_AIAction_NooseTrap_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    class AActor* TrapActor;                                                          // 0x0138 (size: 0x8)
    FVector DeadVelocity;                                                             // 0x0140 (size: 0x18)
    class UPalActionBase* PlayedAction;                                               // 0x0158 (size: 0x8)

    void ActionStart(class APawn* ControlledPawn);
    void ActionResume(class APawn* ControlledPawn);
    void ActionAbort(class APawn* ControlledPawn);
    void ActionPause(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ExecuteUbergraph_BP_AIAction_NooseTrap(int32 EntryPoint);
}; // Size: 0x160

#endif
