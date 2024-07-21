#ifndef UE4SS_SDK_BP_NPCAIController_Visitor_HPP
#define UE4SS_SDK_BP_NPCAIController_Visitor_HPP

class ABP_NPCAIController_Visitor_C : public ABP_NPCAIController_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0590 (size: 0x8)
    FVector GoalLocation;                                                             // 0x0598 (size: 0x18)
    int32 ReturnTimeMinutes;                                                          // 0x05B0 (size: 0x4)
    int32 WalkAreaSplitNum;                                                           // 0x05B4 (size: 0x4)
    EPalIVisitorNPCAction ActionTimeLimit;                                            // 0x05B8 (size: 0x1)

    void FindTargetPlayer(class AActor*& TargetActor);
    void StartRaid();
    void StartReturnToSpawnedPointAction();
    void StartWaitAction();
    void StartDefaultAIAction();
    void ReceiveBeginPlay();
    void BindArriveEvent(class UBP_AIAction_Visitor_TravelToBaseCamp_C* action);
    void OnArrivedTargetPoint();
    void BindWaitFinishEvent(class UBP_AIAction_Visitor_WaitInBaseCamp_C* action);
    void OnWaitFinished();
    void OnStuck();
    void ExecuteUbergraph_BP_NPCAIController_Visitor(int32 EntryPoint);
}; // Size: 0x5B9

#endif
