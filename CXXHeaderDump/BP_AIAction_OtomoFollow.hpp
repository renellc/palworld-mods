#ifndef UE4SS_SDK_BP_AIAction_OtomoFollow_HPP
#define UE4SS_SDK_BP_AIAction_OtomoFollow_HPP

class UBP_AIAction_OtomoFollow_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    class APalCharacter* Trainer;                                                     // 0x0138 (size: 0x8)
    class APawn* SelfActor;                                                           // 0x0140 (size: 0x8)
    bool IsMoveMode;                                                                  // 0x0148 (size: 0x1)
    FVector Destination;                                                              // 0x0150 (size: 0x18)
    double CurrentMoveSpeedRate;                                                      // 0x0168 (size: 0x8)
    class UPalCharacterMovementComponent* Movement;                                   // 0x0170 (size: 0x8)
    double tempDeltaTime;                                                             // 0x0178 (size: 0x8)
    TEnumAsByte<EOtomoFollowState::Type> FollowState;                                 // 0x0180 (size: 0x1)
    double FolowEndDistance;                                                          // 0x0188 (size: 0x8)
    FVector DelayedDestination;                                                       // 0x0190 (size: 0x18)
    double DefaultMaxSpeed;                                                           // 0x01A8 (size: 0x8)
    double ConstMaxSpeedRateVsPlayer;                                                 // 0x01B0 (size: 0x8)
    double CurrentSpeedVsPlayer;                                                      // 0x01B8 (size: 0x8)
    bool IsTurnMode;                                                                  // 0x01C0 (size: 0x1)
    double SprintSpeedVsPlayer;                                                       // 0x01C8 (size: 0x8)
    double DelayedTrainerYawDegree;                                                   // 0x01D0 (size: 0x8)
    double WarpTimer;                                                                 // 0x01D8 (size: 0x8)
    FVector PreSelfLocation;                                                          // 0x01E0 (size: 0x18)
    bool JumpAble;                                                                    // 0x01F8 (size: 0x1)
    bool PlayerDelayJumpAble;                                                         // 0x01F9 (size: 0x1)
    bool IsForceFitGoal;                                                              // 0x01FA (size: 0x1)
    float TargetLocationDistanceForward;                                              // 0x01FC (size: 0x4)
    float TargetLocationDistanceRight;                                                // 0x0200 (size: 0x4)

    void IsTurnInBuildingMode(bool& IsTurn);
    void IsBuildingMode(bool& IsBuilding);
    void GetTargetLocationInBuildingMode(FVector& Location);
    void GetFollowSpeedFromController(double& FollowSpeed);
    void GetFollowInterpolatedPosFromController(FVector& FollowInterpolatedPos);
    void TryGetTrainer(class APalCharacter*& Trainer);
    void ForwardRayCheckJump(bool& DoJump);
    void SetInitialValue();
    void PlayerCameraCheck(bool& InCamera);
    void DoWarpNearPlayer();
    void TryWarpToPlayer();
    void DelayTrainerYaw();
    void GetTargetLocationInAim(FVector& Location);
    void GetTargetLocationInHighSpeed(FVector& Location);
    void GetTargetLocationInWalk(FVector& Location);
    void ChangeStateByRange();
    void targetPosition_2();
    void Speed Control(double DeltaTime);
    void OnFail_1EB8A4B348D9F7922741CD9438D88086(TEnumAsByte<EPathFollowingResult::Type> MovementResult);
    void OnSuccess_1EB8A4B348D9F7922741CD9438D88086(TEnumAsByte<EPathFollowingResult::Type> MovementResult);
    void OnFail_F8B4E13F434B182E285FEEA53BAAED7C(TEnumAsByte<EPathFollowingResult::Type> MovementResult);
    void OnSuccess_F8B4E13F434B182E285FEEA53BAAED7C(TEnumAsByte<EPathFollowingResult::Type> MovementResult);
    void ActionStart(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionPause(class APawn* ControlledPawn);
    void ActionResume(class APawn* ControlledPawn);
    void PlayerJumpEvent(class UPalCharacterMovementComponent* Component);
    void ActionAbort(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_OtomoFollow(int32 EntryPoint);
}; // Size: 0x204

#endif
