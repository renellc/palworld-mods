#ifndef UE4SS_SDK_BP_AIActionEscape_HPP
#define UE4SS_SDK_BP_AIActionEscape_HPP

class UBP_AIActionEscape_C : public UBP_AIAction_CanCombatBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0158 (size: 0x8)
    FVector GoalLocation;                                                             // 0x0160 (size: 0x18)
    class AActor* TargetActor;                                                        // 0x0178 (size: 0x8)
    double Timer;                                                                     // 0x0180 (size: 0x8)
    double AcceptanceRadius;                                                          // 0x0188 (size: 0x8)
    bool IsMoveing;                                                                   // 0x0190 (size: 0x1)
    bool IsLockLogic;                                                                 // 0x0191 (size: 0x1)
    double EndDistance;                                                               // 0x0198 (size: 0x8)

    void Is Far Spawn Point(bool& IsFar);
    void OnSquadMemberDeadEvent(FPalDeadInfo DeadInbfo);
    void SoundEvent(FVector EmitLocation);
    void ChangeReturnMode(bool& ChangeSuccess);
    void SetGoalLocation(bool& Success);
    void OnFail_023A017548911A48339C18BEF9D1B042(TEnumAsByte<EPathFollowingResult::Type> MovementResult);
    void OnSuccess_023A017548911A48339C18BEF9D1B042(TEnumAsByte<EPathFollowingResult::Type> MovementResult);
    void NavMeshMove();
    void ActionStart(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionResume(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionAbort(class APawn* ControlledPawn);
    void ActionPause(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIActionEscape(int32 EntryPoint);
}; // Size: 0x1A0

#endif
