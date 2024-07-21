#ifndef UE4SS_SDK_BP_MonsterAIController_Invader_HPP
#define UE4SS_SDK_BP_MonsterAIController_Invader_HPP

class ABP_MonsterAIController_Invader_C : public ABP_MonsterAIControllerBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0550 (size: 0x8)
    class UPalAISensorComponent* PalAISensor;                                         // 0x0558 (size: 0x8)
    FVector TargetBaseCampPosition;                                                   // 0x0560 (size: 0x18)
    FBP_MonsterAIController_Invader_COnInvaderArrivedDelegate OnInvaderArrivedDelegate; // 0x0578 (size: 0x10)
    void OnInvaderArrivedDelegate();

    void GetMyBB(class UBP_PalAIBlackboard_Common_C*& PalBrackboard);
    void GetLeaderBB(class UBP_PalAIBlackboard_Common_C*& LeaderPalBrackboard);
    void ReturnSpawnedPoint(FVector GoalLocation);
    void StartMartch(FVector GoalPosition);
    void Setup(FVector BaseCampPos);
    void ReceivePossess(class APawn* PossessedPawn);
    void カスタムイベント_1(class APalCharacter* InCharacter);
    void カスタムイベント_OnDead(FPalDeadInfo DeadInfo);
    void OnInvaderArrived();
    void BindOnInvaderArrivedDelegate(FBindOnInvaderArrivedDelegateEvent Event);
    void ExecuteUbergraph_BP_MonsterAIController_Invader(int32 EntryPoint);
    void OnInvaderArrivedDelegate__DelegateSignature();
}; // Size: 0x588

#endif
