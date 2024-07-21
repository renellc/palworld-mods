#ifndef UE4SS_SDK_BP_CombatHeliRpidWeaponComponent_FrontMG_HPP
#define UE4SS_SDK_BP_CombatHeliRpidWeaponComponent_FrontMG_HPP

class UBP_CombatHeliRpidWeaponComponent_FrontMG_C : public UBP_CombatHeliRpidWeaponComponent_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00E8 (size: 0x8)

    void ReceiveTick(float DeltaSeconds);
    void ExecuteUbergraph_BP_CombatHeliRpidWeaponComponent_FrontMG(int32 EntryPoint);
}; // Size: 0xF0

#endif
