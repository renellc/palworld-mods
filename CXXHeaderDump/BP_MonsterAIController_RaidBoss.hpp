#ifndef UE4SS_SDK_BP_MonsterAIController_RaidBoss_HPP
#define UE4SS_SDK_BP_MonsterAIController_RaidBoss_HPP

class ABP_MonsterAIController_RaidBoss_C : public ABP_MonsterAIControllerBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0550 (size: 0x8)
    class UPalAISensorComponent* PalAISensor;                                         // 0x0558 (size: 0x8)
    bool IsNotFreeAIMode;                                                             // 0x0560 (size: 0x1)
    FGuid TargetBaseCampID;                                                           // 0x0564 (size: 0x10)

    void GetMyBB(class UBP_PalAIBlackboard_Common_C*& PalBrackboard);
    void GetLeaderBB(class UBP_PalAIBlackboard_Common_C*& LeaderPalBrackboard);
    void GetTargetCampID(FGuid& CampID);
    void SetTargetCampID(FGuid CampID);
    void Force Battle Startto Target For Raid Boss(class APalPlayerCharacter* Player, TArray<class APalPlayerCharacter*>& AllPlayer);
    void ReceivePossess(class APawn* PossessedPawn);
    void カスタムイベント_1(class APalCharacter* InCharacter);
    void DeleteDeadBody(FPalDeadInfo DeadInfo);
    void カスタムイベント(FPalInstanceID ID);
    void ExecuteUbergraph_BP_MonsterAIController_RaidBoss(int32 EntryPoint);
}; // Size: 0x574

#endif
