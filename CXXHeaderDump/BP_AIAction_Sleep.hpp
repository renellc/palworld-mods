#ifndef UE4SS_SDK_BP_AIAction_Sleep_HPP
#define UE4SS_SDK_BP_AIAction_Sleep_HPP

class UBP_AIAction_Sleep_C : public UBP_AIAction_CanCombatBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0158 (size: 0x8)
    bool DeepSleep;                                                                   // 0x0160 (size: 0x1)
    class UPalActionComponent* ActionComp;                                            // 0x0168 (size: 0x8)
    class APawn* PawnSelf;                                                            // 0x0170 (size: 0x8)
    class UPalActionBase* SleepAction;                                                // 0x0178 (size: 0x8)

    void OnDamageDelegate_イベント_0(FPalDamageResult DamageResult);
    void ActionStart(class APawn* ControlledPawn);
    void OnAllActionFinishDelegate_イベント_0(const class UPalActionComponent* ActionComponent);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ExecuteUbergraph_BP_AIAction_Sleep(int32 EntryPoint);
}; // Size: 0x180

#endif
