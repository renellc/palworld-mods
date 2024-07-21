#ifndef UE4SS_SDK_BP_AIAction_Warning_PointWalk_HPP
#define UE4SS_SDK_BP_AIAction_Warning_PointWalk_HPP

class UBP_AIAction_Warning_PointWalk_C : public UBP_AIAction_CanCombatBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0158 (size: 0x8)
    FVector AttentionPoint;                                                           // 0x0160 (size: 0x18)
    double ConstWalkSpeed;                                                            // 0x0178 (size: 0x8)
    FVector MoveGoalLocation;                                                         // 0x0180 (size: 0x18)
    double AcceptanceDistance;                                                        // 0x0198 (size: 0x8)
    double tempDeltaTime;                                                             // 0x01A0 (size: 0x8)
    double Timer;                                                                     // 0x01A8 (size: 0x8)
    double RandomWalkStartTime;                                                       // 0x01B0 (size: 0x8)
    FVector TurnR_Direction;                                                          // 0x01B8 (size: 0x18)
    FVector TurnL_Direction;                                                          // 0x01D0 (size: 0x18)
    TEnumAsByte<EWarningPalAIMoveType::Type> MoveMode;                                // 0x01E8 (size: 0x1)
    double TimeOutTime;                                                               // 0x01F0 (size: 0x8)
    class UPalActionBase* TurnAction;                                                 // 0x01F8 (size: 0x8)

    void CancelTurnAction();
    void PlayActionTurnIfNoneAction(FVector Direction);
    void TurnL45();
    void TurnR45();
    void StartJump();
    void TurnMode();
    void UpdateMoveGoal();
    void SoundEvent(FVector EmitLocation);
    void Setup(FVector AttentionLocation);
    void ActionStart(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionPause(class APawn* ControlledPawn);
    void ActionResume(class APawn* ControlledPawn);
    void ActionAbort(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_Warning_PointWalk(int32 EntryPoint);
}; // Size: 0x200

#endif
