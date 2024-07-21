#ifndef UE4SS_SDK_BP_AIAction_TurnAndEncount_HPP
#define UE4SS_SDK_BP_AIAction_TurnAndEncount_HPP

class UBP_AIAction_TurnAndEncount_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    class AActor* TargetAct;                                                          // 0x0138 (size: 0x8)
    bool Turning;                                                                     // 0x0140 (size: 0x1)
    bool Propagated;                                                                  // 0x0141 (size: 0x1)
    class UPawnAction_BlueprintBase* tempAction;                                      // 0x0148 (size: 0x8)
    bool IsCanceled;                                                                  // 0x0150 (size: 0x1)
    bool IsDelayStop;                                                                 // 0x0151 (size: 0x1)
    double TurnTimer;                                                                 // 0x0158 (size: 0x8)
    double Const_TurnEndTime;                                                         // 0x0160 (size: 0x8)
    class UPalActionBase* TurnAction;                                                 // 0x0168 (size: 0x8)
    double tempDeltaTime;                                                             // 0x0170 (size: 0x8)
    TSubclassOf<class UPalAIActionBase> CombatAIActionClass;                          // 0x0178 (size: 0x8)

    void ActionStart(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionAbort(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionPause(class APawn* ControlledPawn);
    void ActionResume(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_TurnAndEncount(int32 EntryPoint);
}; // Size: 0x180

#endif
