#ifndef UE4SS_SDK_BP_MonsterAIController_Otomo_HPP
#define UE4SS_SDK_BP_MonsterAIController_Otomo_HPP

class ABP_MonsterAIController_Otomo_C : public ABP_MonsterAIControllerBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0550 (size: 0x8)
    int32 OtomoSlotIndex;                                                             // 0x0558 (size: 0x4)
    TMap<class EPalAIActionType, class UPalAIActionBase*> PlayingAIActionMap;         // 0x0560 (size: 0x50)
    FTimerHandle RegeneTimer;                                                         // 0x05B0 (size: 0x8)
    FVector FollowInterpolatedPos;                                                    // 0x05B8 (size: 0x18)
    double FollowSpeed;                                                               // 0x05D0 (size: 0x8)

    TSubclassOf<class UPalAIControllerWorkerModule> GetWorkerModuleClass();
    void OnDamageOtomo(FPalDamageResult DamageResult);
    void CanCoop(bool& CanCoop);
    void Play Otomo Default Composite Action();
    void SetCombatAction(class UPalAIActionCombatBase*& AIAction);
    void SetHateEnemiesToOtomo();
    void Set Combat Action and Target(class AActor* Target, class UPalAIActionCombatBase*& AIAction);
    void Attack For Enemy With Parameter(class AActor* Target, int32 SkillSlotID);
    void AttackForEnemy(class AActor* Target);
    void OnCoopCanceled();
    void OnCoopFinished(class UPalAIActionBase* action);
    void OnCoopRequest();
    void OnPressCoopButton();
    void Setup(int32 HolderSlotID);
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void Regene_CustomEvent();
    void OnDeadDelegate_イベント_0(FPalDeadInfo DeadInfo);
    void ShowBaseCampLog(const FPalMonsterControllerBaseCampLogContent& Content);
    void OnSetTrainer(class APalCharacter* InCharacter);
    void FinishCoopAction();
    void ReceivePossess(class APawn* PossessedPawn);
    void OnTrainer(class APalCharacter* InCharacter);
    void ExecuteUbergraph_BP_MonsterAIController_Otomo(int32 EntryPoint);
}; // Size: 0x5D8

#endif
