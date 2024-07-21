#ifndef UE4SS_SDK_BP_MonsterAIController_Wild_HPP
#define UE4SS_SDK_BP_MonsterAIController_Wild_HPP

class ABP_MonsterAIController_Wild_C : public ABP_MonsterAIControllerBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0550 (size: 0x8)
    class UPalAISensorComponent* PalAISensor;                                         // 0x0558 (size: 0x8)
    FBP_MonsterAIController_Wild_CBattleStartEvent BattleStartEvent;                  // 0x0560 (size: 0x10)
    void BattleStartEvent(class AActor* StartPalActor);

    void GetMyBB(class UBP_PalAIBlackboard_Common_C*& PalBrackboard);
    void GetLeaderBB(class UBP_PalAIBlackboard_Common_C*& LeaderPalBrackboard);
    void IsSleeping(bool& Sleep);
    void ForceEscaleStartForOutside(class AActor* StartFriend, class AActor* Enemy);
    void SetupSleepTime();
    void ForceBattleStartToTarget(class AActor* TargetActor);
    void PerformanceSetup(class APawn* Pawn);
    void SetSpawndInfo(FVector SpawnerLoc, double ReturnRadius, double WalkRadius);
    void DebugBattleStartInternal(class AActor* Player);
    void ReturnToTerritory();
    void ForceBattleStartForOutside(class AActor* StartPalActor);
    void OnDeadDelegate_イベント_0(FPalDeadInfo DeadInfo);
    void ReceivePossess(class APawn* PossessedPawn);
    void カスタムイベント_1(class APalCharacter* InCharacter);
    void GoBack_Teritory();
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void DebugBattleStart(class AActor* Player);
    void SetupBySpawner();
    void ExecuteUbergraph_BP_MonsterAIController_Wild(int32 EntryPoint);
    void BattleStartEvent__DelegateSignature(class AActor* StartPalActor);
}; // Size: 0x570

#endif
