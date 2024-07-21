#ifndef UE4SS_SDK_BP_ExplosiveModifierBase_HPP
#define UE4SS_SDK_BP_ExplosiveModifierBase_HPP

class UBP_ExplosiveModifierBase_C : public UPalBulletModifierComponent
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00A0 (size: 0x8)
    TSubclassOf<class ABP_ExplosionAttackBase_C> ExplosiveBullet;                     // 0x00A8 (size: 0x8)
    class UNiagaraSystem* TrailEffect;                                                // 0x00B0 (size: 0x8)

    void Initialize(const class APalBullet* Bullet);
    void カスタムイベント_0(class UPrimitiveComponent* HitComp, class AActor* OtherCharacter, class UPrimitiveComponent* OtherComp, const FHitResult& Hi);
    void ExecuteUbergraph_BP_ExplosiveModifierBase(int32 EntryPoint);
}; // Size: 0xB8

#endif
