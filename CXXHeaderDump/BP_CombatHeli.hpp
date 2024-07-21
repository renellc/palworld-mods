#ifndef UE4SS_SDK_BP_CombatHeli_HPP
#define UE4SS_SDK_BP_CombatHeli_HPP

class ABP_CombatHeli_C : public APalNPC
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0940 (size: 0x8)
    class UStaticMeshComponent* CombatHeli_HeliBody;                                  // 0x0948 (size: 0x8)
    class UStaticMeshComponent* CombatHeli_Gun;                                       // 0x0950 (size: 0x8)
    class UPalBodyPartsBoxComponent* PalBodyPartsBox;                                 // 0x0958 (size: 0x8)
    class UBP_CombatHeliRpidWeaponComponent_Bomber_C* BP_CombatHeliRpidWeaponComponent_Bomber; // 0x0960 (size: 0x8)
    class UBP_CombatHeliRpidWeaponComponent_WingMiso_C* BP_CombatHeliRpidWeaponComponent_WingMiso; // 0x0968 (size: 0x8)
    class UBP_CombatHeliRpidWeaponComponent_FrontMG_C* BP_CombatHeliRpidWeaponComponent_FrontMG; // 0x0970 (size: 0x8)
    class AActor* TargetActor;                                                        // 0x0978 (size: 0x8)

    void SetHideAll();
    void ShootMGBullet();
    void ReceiveBeginPlay();
    void ExecuteUbergraph_BP_CombatHeli(int32 EntryPoint);
}; // Size: 0x980

#endif
