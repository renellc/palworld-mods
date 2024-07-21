#ifndef UE4SS_SDK_BP_AIAction_RaidBossStandby_HPP
#define UE4SS_SDK_BP_AIAction_RaidBossStandby_HPP

class UBP_AIAction_RaidBossStandby_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    class ABP_MonsterAIController_RaidBoss_C* AIControllerRaidBoss;                   // 0x0138 (size: 0x8)

    void On Damage(FPalDamageResult DamageResult);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionStart(class APawn* ControlledPawn);
    void ActionResume(class APawn* ControlledPawn);
    void ActionAbort(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionPause(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_RaidBossStandby(int32 EntryPoint);
}; // Size: 0x140

#endif
