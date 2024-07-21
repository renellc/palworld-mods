#ifndef UE4SS_SDK_BP_WorldSecurityLaw_AttackToNonCriminal_HPP
#define UE4SS_SDK_BP_WorldSecurityLaw_AttackToNonCriminal_HPP

class UBP_WorldSecurityLaw_AttackToNonCriminal_C : public UPalWorldSecurityLawTrigger_CharacterDamaged
{

    void IsValidCharacterActor(class AActor* Actor, bool& bValid, class UPalCharacterParameterComponent*& CharacterParameter);
    void IsOrganizationCitizen(EPalOrganizationType OrganizationType, bool& bCitizen);
    bool Condition(const FPalDamageResult& DamageResult, class UPalIndividualCharacterHandle*& CriminalHandle);
}; // Size: 0x40

#endif
