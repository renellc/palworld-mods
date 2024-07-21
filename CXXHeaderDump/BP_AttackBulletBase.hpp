#ifndef UE4SS_SDK_BP_AttackBulletBase_HPP
#define UE4SS_SDK_BP_AttackBulletBase_HPP

class ABP_AttackBulletBase_C : public APalBullet
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0368 (size: 0x8)

    bool SetBulletHoleDecal(const FHitResult& Hit, float LifeSpan, float FadeTime, float fadeScreenSize);
    void GetOverrideNetworkOwner(class AActor*& Actor);
    void GetEffectValue(int32& Value);
    void GetEffectType(EPalAdditionalEffectType& Effect);
    void GetExplosionClass(TSubclassOf<class ABP_ExplosionAttackBase_C>& ExplosionClass);
    void GetBulletAttackType(EPalAttackType& AttackType);
    void SpawnBulletHole(FHitResult Hit Result);
    void GetOwnerActor(class AActor*& ownerActor);
    void OnHitToActor(class UPrimitiveComponent* HitComp, class AActor* OtherActor, class UPrimitiveComponent* OtherComp, const FHitResult& Hit);
    void GetBulletElementType(EPalElementType& NewParam);
    void ReceiveTick(float DeltaSeconds);
    void ExecuteUbergraph_BP_AttackBulletBase(int32 EntryPoint);
}; // Size: 0x370

#endif
