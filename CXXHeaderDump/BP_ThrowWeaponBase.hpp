#ifndef UE4SS_SDK_BP_ThrowWeaponBase_HPP
#define UE4SS_SDK_BP_ThrowWeaponBase_HPP

class ABP_ThrowWeaponBase_C : public APalWeaponBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0570 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x0578 (size: 0x8)
    FBP_ThrowWeaponBase_CThrowEventDispatcher ThrowEventDispatcher;                   // 0x0580 (size: 0x10)
    void ThrowEventDispatcher(class AActor* Bullet);

    bool IsEnableAutoAim();
    void GetBulletShootRotation(FRotator& BulletRotate);
    void ChangeRideThrowMontage();
    void GetRideMontageByDirection(bool& Suceess, class UAnimMontage*& NextAnim);
    void GetTargetLocation(FVector& Location);
    void GetThrowObjectClass(TSubclassOf<class AActor>& ThrowObject);
    void On Throw();
    void ReceiveBeginPlay();
    void OnWeaponNotify(EWeaponNotifyType Type);
    void OnPullTrigger();
    void ExecuteUbergraph_BP_ThrowWeaponBase(int32 EntryPoint);
    void ThrowEventDispatcher__DelegateSignature(class AActor* Bullet);
}; // Size: 0x590

#endif
