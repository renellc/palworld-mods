#ifndef UE4SS_SDK_BP_NPCAIController_HPP
#define UE4SS_SDK_BP_NPCAIController_HPP

class ABP_NPCAIController_C : public APalAIController
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0528 (size: 0x8)
    class UBP_OtomoPalHolderComponentForNPC_C* BP_OtomoPalHolderComponentForNPC;      // 0x0530 (size: 0x8)
    class UPalAISensorComponent* PalAISensor;                                         // 0x0538 (size: 0x8)
    class UBP_AIADamageReaction_C* BP_AIADamageReaction;                              // 0x0540 (size: 0x8)
    TSubclassOf<class UPalAIActionBase> DefaultActionClass;                           // 0x0548 (size: 0x8)
    class UPalNPCAIWeaponHandle* WeaponHandle;                                        // 0x0550 (size: 0x8)
    class UBP_PalIncidentNotifyListener_C* IncidentNotifyListener;                    // 0x0558 (size: 0x8)
    TArray<FName> Filter Incident Ids;                                                // 0x0560 (size: 0x10)
    FF_NPC_PathWalkArray PathWalk;                                                    // 0x0570 (size: 0x10)
    FName OtomoName;                                                                  // 0x0580 (size: 0x8)
    TSubclassOf<class UPalNPCAIWeaponHandle> WeaponHandleClass;                       // 0x0588 (size: 0x8)

    void GetMyBB(class UBP_PalAIBlackboard_Common_C*& PalBrackboard);
    void GetLeaderBB(class UBP_PalAIBlackboard_Common_C*& LeaderPalBrackboard);
    void ForceBattleStartToTarget(class AActor* TargetActor);
    void IsSleeping(bool& IsSleep);
    void ForceEscapeStartFortOutSide(class AActor* StartActor, class AActor* TargetActor);
    void TalkEnd_Func(class AActor* SelfActor, class AActor* TargetActor);
    void TalkStart_Func(class AActor* SelfActor, class AActor* TargetActor);
    void ForceBattleStartForOutside(class AActor* StartActor);
    void StartEscapeMode(class AActor* TargetActor, bool ByOutSide);
    void SetAutoDefaultAIAction();
    void SetSpawnedInfo(FVector SpawnerLoc, double ReturnRadius, FF_NPC_PathWalkArray PathWalk, FName Otomo);
    void ReturnToTerritory();
    void StartCombatMode();
    void GetWeaponHandle(class UPalNPCAIWeaponHandle*& WeaponHandle);
    void SetupWeaponHandle(class APalWeaponBase* Weapon);
    void StartDefaultAIAction();
    void OverrideDefaultAction(TSubclassOf<class UPalAIActionBase> DefaultAction);
    void CreateOtomo();
    void カスタムイベント_0(FPalInstanceID ID);
    void カスタムイベント_4(class AController* HolderController, class APalCharacter* OtomoPal);
    void ReceiveBeginPlay();
    void ReceiveTick(float DeltaSeconds);
    void ReceivePossess(class APawn* PossessedPawn);
    void SetupAI_BP();
    void OnShootDeclementBullet();
    void GoBack_Teritory();
    void カスタムイベント_1();
    void カスタムイベント_2(FPalDeadInfo DeadInfo);
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void OnNpcTalkIncidentNotify(class UPalIncidentNotifyListener* Listener, EPalIncidentState IncidentState, const FPalIncidentNotifyParameter& Parameter);
    void NotifyTalkStart(class APalPlayerCharacter* TalkPlayer);
    void NotifyTalkEnd(class APalPlayerCharacter* TalkPlayer);
    void ExecuteUbergraph_BP_NPCAIController(int32 EntryPoint);
}; // Size: 0x590

#endif
