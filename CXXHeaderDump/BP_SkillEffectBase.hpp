#ifndef UE4SS_SDK_BP_SkillEffectBase_HPP
#define UE4SS_SDK_BP_SkillEffectBase_HPP

class ABP_SkillEffectBase_C : public APalSkillEffectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0330 (size: 0x8)
    class USphereComponent* HomingLimit;                                              // 0x0338 (size: 0x8)
    class USphereComponent* MovementSphereRoot;                                       // 0x0340 (size: 0x8)
    bool SpanwHitGroundEffect;                                                        // 0x0348 (size: 0x1)
    EPalWazaID Waza;                                                                  // 0x0349 (size: 0x1)
    TArray<class UNiagaraSystem*> Load Cache;                                         // 0x0350 (size: 0x10)
    TArray<int32> Foliage Index;                                                      // 0x0360 (size: 0x10)
    bool Is Poison;                                                                   // 0x0370 (size: 0x1)
    bool DoDestroyOnHitGround;                                                        // 0x0371 (size: 0x1)
    bool StartEffectFadeOut;                                                          // 0x0372 (size: 0x1)
    double FadeOutTimer;                                                              // 0x0378 (size: 0x8)
    double FadeOutTime;                                                               // 0x0380 (size: 0x8)
    class UCurveFloat* FadeOutCurve;                                                  // 0x0388 (size: 0x8)
    TSubclassOf<class UPalHitEffectSlot> HitEffectSlot;                               // 0x0390 (size: 0x8)
    TArray<FTimerHandle> TimerHandles;                                                // 0x0398 (size: 0x10)
    class ABP_PredictedTarget_C* PredictedTarget;                                     // 0x03A8 (size: 0x8)
    bool EnableDisplayHitNum;                                                         // 0x03B0 (size: 0x1)
    class UPrimitiveComponent* Other Hit Component;                                   // 0x03B8 (size: 0x8)

    void GetAttackLocationByTargetActor(class AActor* TargetActor, FVector& AttackLocation);
    void FindTargetLocationConsiderRide(FVector& TargetPos);
    void GetHomingEndDot(double& Dot);
    void FindTargetConsiderRide(class AActor*& TargetActor);
    void Is Hitable Target Collision(class UPrimitiveComponent* MyHitComp, class AActor* OtherActor, class UPrimitiveComponent* OtherHitComp, bool& IsHitAble);
    void GetPredictedTargetLocation(FVector& Location);
    void GetOwnerAction(class UPalActionBase*& action);
    bool HasProjectileMoveComp();
    void SetHomingTarget(class AActor* Target, bool& Success);
    void CheckToStopHoming();
    void ApplyDamageCustomHit(class AActor* Defender, class USceneComponent* AttackerHitComponent, class USceneComponent* DefenderHitComponent, FVector HitLocation, TArray<int32>& FoliageIndex);
    void IsValidHitCustomRange(class AActor* HitTarget, class UPrimitiveComponent* MyHitComponent, class UPrimitiveComponent* HitTargetComponent, bool& IsHit);
    void Print Log When Collision Object Type Is Bullet();
    void Spawn Elemental Hit Effect Far(FVector Location, double EffectScale);
    void OnLoaded_15409DED4FCA4A2F1D5599B619A24205(class UObject* Loaded);
    void ReceiveBeginPlay();
    void ReceiveTick(float DeltaSeconds);
    void OnHitDelegate_イベント(class UPrimitiveComponent* MyHitComponent, class AActor* OtherHitActor, class UPrimitiveComponent* OtherHitComponent, const TArray<int32>& FoliageIndex, FVector HitLocation, int32 HitCount);
    void LoadAndPlayEffect(TSoftObjectPtr<UNiagaraSystem> Niagara System, FTransform Transform);
    void FadeOutEffect(double DeltaSecond);
    void OnHitGround();
    void OnHitCustomRange(class UPrimitiveComponent* MyHitComponent, class AActor* OtherHitActor, class UPrimitiveComponent* OtherHitComponent, const TArray<int32>& FoliageIndex, FVector HitLocation, int32 HitCount);
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void BndEvt__BP_SkillEffectBase_AttackFilter_K2Node_ComponentBoundEvent_1_OnAttackDelegate__DelegateSignature(class AActor* Defencer, FPalDamageInfo DamageInfo, int32 HitCount, class UPrimitiveComponent* AttackerComponent);
    void ExecuteUbergraph_BP_SkillEffectBase(int32 EntryPoint);
}; // Size: 0x3C0

#endif
