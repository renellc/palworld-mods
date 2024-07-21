#ifndef UE4SS_SDK_BP_MonsterAIController_NPCOtomo_HPP
#define UE4SS_SDK_BP_MonsterAIController_NPCOtomo_HPP

class ABP_MonsterAIController_NPCOtomo_C : public ABP_MonsterAIControllerBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0550 (size: 0x8)
    class UPalAISensorComponent* PalAISensor;                                         // 0x0558 (size: 0x8)
    bool IsOnpossessed;                                                               // 0x0560 (size: 0x1)
    class APalCharacter* TrainerNPC;                                                  // 0x0568 (size: 0x8)

    void GetMyBB(class UBP_PalAIBlackboard_Common_C*& PalBrackboard);
    void GetLeaderBB(class UBP_PalAIBlackboard_Common_C*& LeaderPalBrackboard);
    void ReceivePossess(class APawn* PossessedPawn);
    void カスタムイベント_2(FPalDeadInfo DeadInfo);
    void ExecuteUbergraph_BP_MonsterAIController_NPCOtomo(int32 EntryPoint);
}; // Size: 0x570

#endif
