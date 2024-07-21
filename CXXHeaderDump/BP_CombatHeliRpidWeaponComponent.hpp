#ifndef UE4SS_SDK_BP_CombatHeliRpidWeaponComponent_HPP
#define UE4SS_SDK_BP_CombatHeliRpidWeaponComponent_HPP

class UBP_CombatHeliRpidWeaponComponent_C : public UActorComponent
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00A0 (size: 0x8)
    class UStaticMeshComponent* GunMesh;                                              // 0x00A8 (size: 0x8)
    int32 Const_WeaponDamage;                                                         // 0x00B0 (size: 0x4)
    double Const_BulletSpeed;                                                         // 0x00B8 (size: 0x8)
    double Const_BulletAngle;                                                         // 0x00C0 (size: 0x8)
    FTimerHandle TimerHandle;                                                         // 0x00C8 (size: 0x8)
    double Const_ShootInterval;                                                       // 0x00D0 (size: 0x8)
    TSubclassOf<class APalBullet> Const_BulletClass;                                  // 0x00D8 (size: 0x8)
    int32 CurrentShootCount;                                                          // 0x00E0 (size: 0x4)
    bool IsShooting;                                                                  // 0x00E4 (size: 0x1)

    void GunAim(double DeltaTime, class AActor* Target);
    void GetMuzzleTransform(FTransform& MzlTF);
    void ShootBullet();
    void SetGunMesh(class UStaticMeshComponent* GunMesh);
    void PullTrigger();
    void ReleaseTrigger();
    void ExecuteUbergraph_BP_CombatHeliRpidWeaponComponent(int32 EntryPoint);
}; // Size: 0xE5

#endif
