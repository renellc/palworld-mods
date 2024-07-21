#ifndef UE4SS_SDK_BP_ActionGeneralAttackFarBase_HPP
#define UE4SS_SDK_BP_ActionGeneralAttackFarBase_HPP

class UBP_ActionGeneralAttackFarBase_C : public UBP_ActionGeneralAttackBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0250 (size: 0x8)
    bool IsBullet;                                                                    // 0x0258 (size: 0x1)
    bool IsHoming;                                                                    // 0x0259 (size: 0x1)
    double BulletSpeed;                                                               // 0x0260 (size: 0x8)
    bool HasStartedAction;                                                            // 0x0268 (size: 0x1)
    bool RotPitchTowardTarget;                                                        // 0x0269 (size: 0x1)
    bool RotPitchTowardReticle;                                                       // 0x026A (size: 0x1)
    float ReadyTargetingSpeed;                                                        // 0x026C (size: 0x4)
    float ProcessTargetingSpeed;                                                      // 0x0270 (size: 0x4)
    bool HasSpawnedEffect;                                                            // 0x0274 (size: 0x1)
    class APalSkillEffectBase* Effect;                                                // 0x0278 (size: 0x8)
    bool DoPredict?;                                                                  // 0x0280 (size: 0x1)
    TSubclassOf<class AActor> PredictedTargetClass;                                   // 0x0288 (size: 0x8)
    class AActor* PredictedTarget;                                                    // 0x0290 (size: 0x8)
    float PredictPowerRate;                                                           // 0x0298 (size: 0x4)
    double PredictWeekDistance;                                                       // 0x02A0 (size: 0x8)
    bool EnableDestroyEffectOnBreakAction;                                            // 0x02A8 (size: 0x1)
    float CurrentMeshPitch;                                                           // 0x02AC (size: 0x4)
    bool IsInitialUpdateMeshPitch;                                                    // 0x02B0 (size: 0x1)
    bool OnAfterAnimation;                                                            // 0x02B1 (size: 0x1)
    bool DestroyPredictedTargetOnEndAction;                                           // 0x02B2 (size: 0x1)

    void SetEffectVelocityTowardNearestEnemy(bool& Success);
    void SetEffectVelocityTowardReticle();
    class APalCharacter* GetTargetEnemy();
    void SetHomingTarget(class APalSkillEffectBase* Effect);
    bool IsSpecificEffect(class APalSkillEffectBase* Effect, TEnumAsByte<EEffectSpawnParametersType::Type> ParametersType, int32 Index);
    void OnStartAfterAnimation();
    void RestorePalPitch();
    void GetPredictedTargetLocation(FVector& Location);
    void UpdatePredictedTargetLocation();
    void SetPredictedTarget();
    void AdjustEffectRotPitchToTarget();
    void UpdatePalYawAndPitchToTarget();
    void SetBulletSpeed(class APalSkillEffectBase*& Effect);
    void UpdateEffectPitchToTarget();
    void UpdateRiddenPalYawToTarget();
    void BulletHasShooted(class APalSkillEffectBase* Effect);
    void OnLoaded_8D503426441FF5C878F58A8373F67BE7(class UObject* Loaded);
    void CallEffect(const FSkillEffectSpawnParameter& Parameter);
    void OnBreakAction();
    void TickAction(float DeltaTime);
    void OnStartReadyAnimation();
    void OnStartProcessAnimation();
    void OnSpawnEffect(class APalSkillEffectBase* Effect);
    void OnEndAction();
    void OnBeginAction();
    void ExecuteUbergraph_BP_ActionGeneralAttackFarBase(int32 EntryPoint);
}; // Size: 0x2B3

#endif
