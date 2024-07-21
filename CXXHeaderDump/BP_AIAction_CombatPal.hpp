#ifndef UE4SS_SDK_BP_AIAction_CombatPal_HPP
#define UE4SS_SDK_BP_AIAction_CombatPal_HPP

class UBP_AIAction_CombatPal_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    class AActor* TargetActor;                                                        // 0x0138 (size: 0x8)
    class APalCharacter* SelfActor;                                                   // 0x0140 (size: 0x8)
    double tempDeltaSecond;                                                           // 0x0148 (size: 0x8)
    TSubclassOf<class UPalActionBase> NextActionClass;                                // 0x0150 (size: 0x8)
    bool NextIsWaza;                                                                  // 0x0158 (size: 0x1)
    int32 NextWazaSlotID;                                                             // 0x015C (size: 0x4)
    class UPalAICombatModule* CombatModule;                                           // 0x0160 (size: 0x8)
    bool ShouldSelectWait;                                                            // 0x0168 (size: 0x1)
    bool NextIsProvocation;                                                           // 0x0169 (size: 0x1)
    bool IsInterrupt;                                                                 // 0x016A (size: 0x1)
    int32 InterrputSlotID;                                                            // 0x016C (size: 0x4)
    double cantReachTimer;                                                            // 0x0170 (size: 0x8)
    FVector PrevLocation;                                                             // 0x0178 (size: 0x18)
    double StackTimer;                                                                // 0x0190 (size: 0x8)
    double WarpStackTimer;                                                            // 0x0198 (size: 0x8)
    FVector WarpStackPrevLocation;                                                    // 0x01A0 (size: 0x18)
    double DeadTimer;                                                                 // 0x01B8 (size: 0x8)
    double ApproachTimer;                                                             // 0x01C0 (size: 0x8)
    double Const_ApproachEndTime;                                                     // 0x01C8 (size: 0x8)
    double NotActionTimer;                                                            // 0x01D0 (size: 0x8)
    double Const_FanShapeDegree;                                                      // 0x01D8 (size: 0x8)

    void OnPlayAction(class UPalActionBase* action);
    void NextAction_ByApproachFailure();
    void CheckDeadTimer();
    void GetSelfPalBlackBoard(class UBP_PalAIBlackboard_Common_C*& PalBB);
    void WarpToSpawnerPoint();
    void ResetWorpStackTimer();
    void AddWarpStackTimer();
    void AttackNearestMapObject(bool& ReachAble);
    void PlayWazaAction();
    void FindWazaClass(int32 SlotIndex, TSubclassOf<class UPalActionBase>& WazaAction);
    void TargetIsValid(bool& Valid);
    void Get Next Action Slot ID(int32& SlotID);
    void Interrupt Action(int32 SlotID);
    void ChangeCombatStartLocation(bool& Change);
    void PlayWazaDarknessStatus();
    void PlayerCameraCheck(bool& AttackAble);
    void RemoveDamageResponse();
    void AddDamageResponse();
    void DamageResponseForCombatPal(FPalDamageResult DmgResult);
    void SightCheckAndResponseForCombatPal(bool& ChangeNextAction);
    void MoveToTarget();
    void GetActorActionComponentRef(class UPalActionComponent*& ActionComp);
    void GetStaticParamCompRef(class UPalStaticCharacterParameterComponent*& StaticParamComp);
    void GetSkillSlotRef(class UPalActiveSkillSlot*& SkillSlot);
    void GetControllerRef(class APalAIController*& PalAIController);
    void SetupSkillSlot();
    void ChangeNextAction();
    void TargetChange();
    void ActionStart(class APawn* ControlledPawn);
    void StartNextAction_Event(const class UPalActionComponent* ActionComponent);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionPause(class APawn* ControlledPawn);
    void OnDeadDelegate_Event(FPalDeadInfo DeadInfo);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void OnChildActionFinished(class UPawnAction* action, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ExecuteUbergraph_BP_AIAction_CombatPal(int32 EntryPoint);
}; // Size: 0x1E0

#endif
