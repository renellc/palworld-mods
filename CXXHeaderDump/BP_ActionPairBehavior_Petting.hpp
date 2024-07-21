#ifndef UE4SS_SDK_BP_ActionPairBehavior_Petting_HPP
#define UE4SS_SDK_BP_ActionPairBehavior_Petting_HPP

class UBP_ActionPairBehavior_Petting_C : public UBP_ActionPairBehaviorBase_C
{

    class UNiagaraComponent* SpawnNiagara(FVector Location, class UObject* Object);
    void OnCompleted(class AActor* Human, class AActor* Monster);
    void GetHumanAnime(class UAnimMontage*& Montage);
}; // Size: 0x251

#endif
