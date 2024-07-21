#ifndef UE4SS_SDK_BP_AIAction_Leave_BackStep_HPP
#define UE4SS_SDK_BP_AIAction_Leave_BackStep_HPP

class UBP_AIAction_Leave_BackStep_C : public UPalAIAction_LeaveBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0148 (size: 0x8)
    bool EndAble;                                                                     // 0x0150 (size: 0x1)
    bool TurnAble;                                                                    // 0x0151 (size: 0x1)
    TArray<FVector> GoalLocationList;                                                 // 0x0158 (size: 0x10)
    bool JumpFailure;                                                                 // 0x0168 (size: 0x1)

    void CheckReachable(FVector GoalPos, bool& Success, FVector& HitLocation);
    void AddGoalArray(double Right, double DistanceRate, FVector BackVector, FVector RightVector);
    void FindGoalLocation(FVector& GoalPos, bool& Success);
    void ActionStart(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionAbort(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionPause(class APawn* ControlledPawn);
    void OnChildActionFinished(class UPawnAction* action, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ExecuteUbergraph_BP_AIAction_Leave_BackStep(int32 EntryPoint);
}; // Size: 0x169

#endif
