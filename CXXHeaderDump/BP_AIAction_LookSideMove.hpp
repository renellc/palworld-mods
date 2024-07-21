#ifndef UE4SS_SDK_BP_AIAction_LookSideMove_HPP
#define UE4SS_SDK_BP_AIAction_LookSideMove_HPP

class UBP_AIAction_LookSideMove_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    FVector SelfToTarget;                                                             // 0x0138 (size: 0x18)
    double Rate;                                                                      // 0x0150 (size: 0x8)
    double Right;                                                                     // 0x0158 (size: 0x8)
    bool IsRightMoving;                                                               // 0x0160 (size: 0x1)
    FVector CurrentMoveGoal;                                                          // 0x0168 (size: 0x18)
    class APalCharacter* SelfActor;                                                   // 0x0180 (size: 0x8)
    bool IsCheckWalkableSuccess;                                                      // 0x0188 (size: 0x1)

    void CheckWalkable(bool IsRight, bool& Success, FVector& GoalPos);
    void ActionStart(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionPause(class APawn* ControlledPawn);
    void ActionAbort(class APawn* ControlledPawn);
    void ActionResume(class APawn* ControlledPawn);
    void OnChildActionFinished(class UPawnAction* action, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionTickAnyThread(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionPostTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ExecuteUbergraph_BP_AIAction_LookSideMove(int32 EntryPoint);
}; // Size: 0x189

#endif
