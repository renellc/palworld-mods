#ifndef UE4SS_SDK_BP_ActionStepBase_HPP
#define UE4SS_SDK_BP_ActionStepBase_HPP

class UBP_ActionStepBase_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    FName flagName;                                                                   // 0x0148 (size: 0x8)
    double StepTime;                                                                  // 0x0150 (size: 0x8)
    class UCurveFloat* StepCurve;                                                     // 0x0158 (size: 0x8)
    double Timer;                                                                     // 0x0160 (size: 0x8)
    EPalGeneralMontageType StepType;                                                  // 0x0168 (size: 0x1)
    bool CanEndStep;                                                                  // 0x0169 (size: 0x1)
    class UAnimMontage* Montage;                                                      // 0x0170 (size: 0x8)
    bool CanCrouchCancel;                                                             // 0x0178 (size: 0x1)
    double CrouchCancelTime;                                                          // 0x0180 (size: 0x8)
    class UCurveFloat* StepCurve_Location;                                            // 0x0188 (size: 0x8)
    FVector StartLocation;                                                            // 0x0190 (size: 0x18)
    FVector MoveDIrection;                                                            // 0x01A8 (size: 0x18)
    double Const_MoveDistance;                                                        // 0x01C0 (size: 0x8)
    double CurrentFallingSpeed;                                                       // 0x01C8 (size: 0x8)
    double Const_FallingAcceleration;                                                 // 0x01D0 (size: 0x8)
    TArray<class AActor*> IgnoreActors;                                               // 0x01D8 (size: 0x10)
    double Const_MaxFallingSpeed;                                                     // 0x01E8 (size: 0x8)
    double Const_MaxAirborneTime;                                                     // 0x01F0 (size: 0x8)
    double CurrentAirboneTime;                                                        // 0x01F8 (size: 0x8)
    TEnumAsByte<ETraceTypeQuery> Const_TraceChannel;                                  // 0x0200 (size: 0x1)
    TEnumAsByte<EDrawDebugTrace::Type> Const_DrawDebugType;                           // 0x0201 (size: 0x1)
    double CapsuleHeightHalf_Max;                                                     // 0x0208 (size: 0x8)
    double CapsuleHeightHalf_Min;                                                     // 0x0210 (size: 0x8)
    double Timer_forCapsule;                                                          // 0x0218 (size: 0x8)
    double ActionTimer;                                                               // 0x0220 (size: 0x8)

    void CheckOtherCharacter(FVector NextPlayerPos, bool& IsStop);
    void UpdateCapsuleHeight(double DetaTime);
    void LayCheck_ForSweepMove(FVector DesiredPos, FVector& ResultActorPos, bool& IsHit);
    void StepMove_Location(double DeltaTime);
    void DisableShooter(bool Disable);
    void CheckFrontHight(double DeltaTime, bool& CanThrough);
    void CheckEndAction();
    bool CanNextActionCancel();
    void DisableMovement(bool Disable);
    bool CanGainSP();
    void OnBeginAction();
    void OnEndAction();
    void TickAction(float DeltaTime);
    void EndStep();
    void OnEndStepWhenCrouch();
    void ExecuteUbergraph_BP_ActionStepBase(int32 EntryPoint);
}; // Size: 0x228

#endif
