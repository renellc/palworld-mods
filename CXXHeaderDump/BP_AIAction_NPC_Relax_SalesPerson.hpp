#ifndef UE4SS_SDK_BP_AIAction_NPC_Relax_SalesPerson_HPP
#define UE4SS_SDK_BP_AIAction_NPC_Relax_SalesPerson_HPP

class UBP_AIAction_NPC_Relax_SalesPerson_C : public UBP_AIAction_NPC_RelaxBase_C
{

    void GetTransitionableJudgementType(TArray<EPalAISightJudgementType>& JudgeTypeList);
    void SoundEvent(FVector EmitLocation);
}; // Size: 0x1F1

#endif
