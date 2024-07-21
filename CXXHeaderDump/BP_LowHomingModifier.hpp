#ifndef UE4SS_SDK_BP_LowHomingModifier_HPP
#define UE4SS_SDK_BP_LowHomingModifier_HPP

class UBP_LowHomingModifier_C : public UPalBulletModifierComponent
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00A0 (size: 0x8)
    class UProjectileMovementComponent* ProjectileComponent;                          // 0x00A8 (size: 0x8)

    void SetHomingTarget(class AActor* Actor, bool& IsSuccess);
    void OnOverlap(class UPrimitiveComponent* OverlappedComponent, class AActor* OtherActor, class UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult);
    void Initialize(const class APalBullet* Bullet);
    void ExecuteUbergraph_BP_LowHomingModifier(int32 EntryPoint);
}; // Size: 0xB0

#endif
