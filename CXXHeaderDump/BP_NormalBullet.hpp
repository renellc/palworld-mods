#ifndef UE4SS_SDK_BP_NormalBullet_HPP
#define UE4SS_SDK_BP_NormalBullet_HPP

class ABP_NormalBullet_C : public ABP_AttackBulletBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0370 (size: 0x8)
    class UStaticMeshComponent* 14_5_x_114_mm_Bullet;                                 // 0x0378 (size: 0x8)

    void GetHitEffect(class UNiagaraSystem*& NiagaraEffect);
    void SpawnHitEffectsInStun(FVector ImpactPoint);
    void SpawnHitEffects(FVector ImpactPoint, FVector ImpactNormal);
    void OnDestroy(class UPrimitiveComponent* HitComp, class AActor* OtherCharacter, class UPrimitiveComponent* OtherComp, const FHitResult& Hit);
    void ExecuteUbergraph_BP_NormalBullet(int32 EntryPoint);
}; // Size: 0x380

#endif
