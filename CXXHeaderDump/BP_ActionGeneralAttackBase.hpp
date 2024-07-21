#ifndef UE4SS_SDK_BP_ActionGeneralAttackBase_HPP
#define UE4SS_SDK_BP_ActionGeneralAttackBase_HPP

class UBP_ActionGeneralAttackBase_C : public UPalActionWazaBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0150 (size: 0x8)
    TArray<FSkillEffectSpawnParameter> SkillEffectSpawnParameters;                    // 0x0158 (size: 0x10)
    TArray<FSkillEffectSpawnParameter> GeneralEffectSpawnParameters;                  // 0x0168 (size: 0x10)
    bool IsStartMovement;                                                             // 0x0178 (size: 0x1)
    bool IsTerminatingAction;                                                         // 0x0179 (size: 0x1)
    TArray<FTimerHandle> TimerHandles;                                                // 0x0180 (size: 0x10)
    TArray<TSoftObjectPtr<APalSkillEffectBase>> SpawnedEffects;                       // 0x0190 (size: 0x10)
    double ReadyAnimationTime;                                                        // 0x01A0 (size: 0x8)
    double ProcessAnimationTime;                                                      // 0x01A8 (size: 0x8)
    double AfterAnimationTime;                                                        // 0x01B0 (size: 0x8)
    EPalGeneralMontageType ReadyAnimationType;                                        // 0x01B8 (size: 0x1)
    EPalGeneralMontageType ReadyLoopAnimationType;                                    // 0x01B9 (size: 0x1)
    EPalGeneralMontageType ProcessAnimationType;                                      // 0x01BA (size: 0x1)
    EPalGeneralMontageType ProcessLoopAnimationType;                                  // 0x01BB (size: 0x1)
    EPalGeneralMontageType AfterAnimationType;                                        // 0x01BC (size: 0x1)
    class UPalStaticCharacterParameterComponent* StaticCharacterComponent;            // 0x01C0 (size: 0x8)
    FName flagName;                                                                   // 0x01C8 (size: 0x8)
    bool IsDisableMovement;                                                           // 0x01D0 (size: 0x1)
    double BeginMovementDisableTime;                                                  // 0x01D8 (size: 0x8)
    double EndMovementDisableTimeFromEnd;                                             // 0x01E0 (size: 0x8)
    double YawRate;                                                                   // 0x01E8 (size: 0x8)
    double BreakActionBlendTime;                                                      // 0x01F0 (size: 0x8)
    double MovementStartOffset;                                                       // 0x01F8 (size: 0x8)
    double MovementTime;                                                              // 0x0200 (size: 0x8)
    double MovementTimer;                                                             // 0x0208 (size: 0x8)
    class UCurveFloat* MovementCurve;                                                 // 0x0210 (size: 0x8)
    double MovementPerSec;                                                            // 0x0218 (size: 0x8)
    bool IsUseMontageFacialNotify;                                                    // 0x0220 (size: 0x1)
    bool EnableShorteningAnimationTimeWhenPalRidden;                                  // 0x0221 (size: 0x1)
    bool IsFindTargetOnRiding;                                                        // 0x0222 (size: 0x1)
    double FindTargetHeight;                                                          // 0x0228 (size: 0x8)
    double FindTargetDegree;                                                          // 0x0230 (size: 0x8)
    double FindTargetDistance;                                                        // 0x0238 (size: 0x8)
    FBP_ActionGeneralAttackBase_COnProcess OnProcess;                                 // 0x0240 (size: 0x10)
    void OnProcess();

    void Get Attack Owner(class AActor*& ownerActor);
    void SetWalkSpeed(bool IsSlow);
    void GetSkillEffectTarget(class AActor*& ActionTarget);
    void SetSkillEffectClass(FSkillEffectSpawnParameter& SkillEffectParams, TSubclassOf<class APalSkillEffectBase> NewEffectClass);
    void SetSkillEffectTimeOffset(FSkillEffectSpawnParameter& EffectSpawnParams, double NewTimeOffset);
    void ShortenAnimationTimeWhenPalRidden();
    void CheckMontageFacialNotify_OneAnime(EPalGeneralMontageType AnimType, bool& UseMontageFacialNotify);
    void CheckMontageFacialNotify();
    void EndFacial();
    void TickMovement(double DeltaTime);
    void AttachToOwner(class APalSkillEffectBase* Effect, FVector Offset, FName SocketName, EPalBodyLocationType BodyLocation);
    bool CanGainSP();
    bool CanStepCancel();
    void CheckFastTerminate(double DeltaTime);
    void StopAnimation();
    void OnSpawnEffect(class APalSkillEffectBase* Effect);
    void SetYawRotateRate(double Rate);
    void Set Disable Movement(bool Enable);
    void OnStartAfterAnimation();
    void OnStartProcessAnimation();
    void OnStartReadyAnimation();
    void PlayAfterAnimation();
    void FindEffectByClass(TSubclassOf<class APalSkillEffectBase> EffectClass, class APalSkillEffectBase*& Effect);
    void OnBeginAction();
    void OnEndAction();
    void PlayEffectByTime(TArray<FSkillEffectSpawnParameter>& EffectList);
    void DoProcessAnimation();
    void DoAfterAnimation();
    void DoEnd();
    void SetupMovementControl();
    void SetDisableMovement();
    void Movement Enable();
    void OnBreakAction();
    void TickAction(float DeltaTime);
    void PlayReadyAnimation();
    void PlayProcessAnimation();
    void CallEffect(const FSkillEffectSpawnParameter& Parameter);
    void DoStartMovement();
    void ExecuteUbergraph_BP_ActionGeneralAttackBase(int32 EntryPoint);
    void OnProcess__DelegateSignature();
}; // Size: 0x250

#endif
