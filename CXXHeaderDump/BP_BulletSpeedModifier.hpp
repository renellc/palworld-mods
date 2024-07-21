#ifndef UE4SS_SDK_BP_BulletSpeedModifier_HPP
#define UE4SS_SDK_BP_BulletSpeedModifier_HPP

class UBP_BulletSpeedModifier_C : public UPalBulletModifierComponent
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00A0 (size: 0x8)

    void Initialize(const class APalBullet* Bullet);
    void ExecuteUbergraph_BP_BulletSpeedModifier(int32 EntryPoint);
}; // Size: 0xA8

#endif
