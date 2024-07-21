#ifndef UE4SS_SDK_BP_WorldSecurityLaw_AreaInvasion_HPP
#define UE4SS_SDK_BP_WorldSecurityLaw_AreaInvasion_HPP

class UBP_WorldSecurityLaw_AreaInvasion_C : public UPalWorldSecurityLawTrigger_AreaInvasion
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0040 (size: 0x8)

    bool Condition(class AActor* InvasionActor, class UPalIndividualCharacterHandle*& CriminalHandle);
    void ExecuteUbergraph_BP_WorldSecurityLaw_AreaInvasion(int32 EntryPoint);
}; // Size: 0x48

#endif
