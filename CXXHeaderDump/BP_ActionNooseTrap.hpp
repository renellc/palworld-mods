#ifndef UE4SS_SDK_BP_ActionNooseTrap_HPP
#define UE4SS_SDK_BP_ActionNooseTrap_HPP

class UBP_ActionNooseTrap_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    FVector CurrentRopePos;                                                           // 0x0148 (size: 0x18)
    FVector RopeFixPos;                                                               // 0x0160 (size: 0x18)
    double Timer;                                                                     // 0x0178 (size: 0x8)
    FRotator CurrentRopeRotate;                                                       // 0x0180 (size: 0x18)
    double RopeLength;                                                                // 0x0198 (size: 0x8)
    double CurrentSwingAngle;                                                         // 0x01A0 (size: 0x8)
    double Const_MaxSwingAngle;                                                       // 0x01A8 (size: 0x8)
    bool IsUpMode;                                                                    // 0x01B0 (size: 0x1)
    FVector CurrentSwingDirection;                                                    // 0x01B8 (size: 0x18)
    double CurrentAngleVelocity_Rad;                                                  // 0x01D0 (size: 0x8)
    double CurrentMechanicalEnergy;                                                   // 0x01D8 (size: 0x8)
    double Const_Mass;                                                                // 0x01E0 (size: 0x8)
    double Const_Gravity;                                                             // 0x01E8 (size: 0x8)
    double CurrentAngle_Rad;                                                          // 0x01F0 (size: 0x8)
    double Const_StartMechanicalEnergy;                                               // 0x01F8 (size: 0x8)
    double Temp_DeltaTime;                                                            // 0x0200 (size: 0x8)
    double Const_InitSpeed;                                                           // 0x0208 (size: 0x8)
    double CurrentAngleSpeed;                                                         // 0x0210 (size: 0x8)
    double Const_Drag;                                                                // 0x0218 (size: 0x8)
    FVector TargetSwingDirection;                                                     // 0x0220 (size: 0x18)
    FVector PreRopePos;                                                               // 0x0238 (size: 0x18)
    FTimerHandle FacialTimerHandle;                                                   // 0x0250 (size: 0x8)
    bool IsDead;                                                                      // 0x0258 (size: 0x1)
    double Const_DefaultRopeLength;                                                   // 0x0260 (size: 0x8)
    bool IsTeleportFlag;                                                              // 0x0268 (size: 0x1)

    void OnDead(FPalDeadInfo DeadInfo);
    void ReturnDefaultFacial();
    void ChangeFacial(EPalFacialEyeType Facial);
    void GetWorldVelocity_ByDeadEnd(FVector& Velocity);
    void CalcDamageToSpeed(int32 Damage, double& Speed);
    void FindMontage(class UAnimMontage*& Montage);
    void OnFinishAcion();
    void OnStatusAdd(const class UPalStatusComponent* StatusComponent, EPalStatusID StatusId, class UPalStatusBase* Status);
    void LerpSwingDirection();
    void CalcAngularAcceleration_Swing(double& AngleAccel);
    void UpdateAngle_Swing();
    void CalcAngleVelocity();
    void OnDamage(FPalDamageResult Info);
    void UpdateRopePos_Swing();
    void FixCharacterToRopePos();
    void UpdateRopePosToUp();
    void OnEndAction();
    void TickAction(float DeltaTime);
    void OnBeginAction();
    void ExecuteUbergraph_BP_ActionNooseTrap(int32 EntryPoint);
}; // Size: 0x269

#endif
