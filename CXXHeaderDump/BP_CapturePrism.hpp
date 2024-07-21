#ifndef UE4SS_SDK_BP_CapturePrism_HPP
#define UE4SS_SDK_BP_CapturePrism_HPP

class ABP_CapturePrism_C : public ABP_ThrowWeaponBase_C
{
    class USkeletalMeshComponent* SK_Weapon_PalSphere_001;                            // 0x0590 (size: 0x8)
    EPalCaptureSphereLevelType CaptureSphereType;                                     // 0x0598 (size: 0x1)

    void OnThrowInternal(class AActor* Bullet);
    void GetCaptureLevel(int32& Level);
    void OnEndShootAnimation(class UAnimMontage* Montage);
    void On Throw();
    bool DecrementBullet();
    void GetThrowObjectClass(TSubclassOf<class AActor>& ThrowObject);
    FName GetEquipSocketName();
}; // Size: 0x599

#endif
