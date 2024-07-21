#ifndef UE4SS_SDK_BP_NPCAIController_Invader_HPP
#define UE4SS_SDK_BP_NPCAIController_Invader_HPP

class ABP_NPCAIController_Invader_C : public ABP_NPCAIController_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0590 (size: 0x8)
    FBP_NPCAIController_Invader_COnInvaderArrivedDelegate OnInvaderArrivedDelegate;   // 0x0598 (size: 0x10)
    void OnInvaderArrivedDelegate();

    void ReturnSpawnedPoint(FVector ReturnPos);
    void StartMarch(FVector GoalPos);
    void ForceBattleStartForOutside(class AActor* StartActor);
    void StartDefaultAIAction();
    void SetAutoDefaultAIAction();
    void ReceiveBeginPlay();
    void OnInvaderArrived();
    void BindOnInvaderArrivedDelegate(FBindOnInvaderArrivedDelegateEvent Event);
    void ExecuteUbergraph_BP_NPCAIController_Invader(int32 EntryPoint);
    void OnInvaderArrivedDelegate__DelegateSignature();
}; // Size: 0x5A8

#endif
