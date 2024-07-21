#ifndef UE4SS_SDK_BP_AIADamageReaction_HPP
#define UE4SS_SDK_BP_AIADamageReaction_HPP

class UBP_AIADamageReaction_C : public UPalAIDamageReactionComponent
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00A8 (size: 0x8)
    TSoftObjectPtr<UPalAIActionComponent> PalAIActionComponent;                       // 0x00B0 (size: 0x30)
    TSoftObjectPtr<UPalDamageReactionComponent> DamageReactionComponent;              // 0x00E0 (size: 0x30)
    class UPalDamageReactionComponent* LocalDamageReactionComponent;                  // 0x0110 (size: 0x8)
    TArray<class TSubclassOf<UPalAIActionBase>> OnDamageIgnoreAIActionArray;          // 0x0118 (size: 0x10)
    double StepPercentage;                                                            // 0x0128 (size: 0x8)
    class APalCharacter* DefaultPawn;                                                 // 0x0130 (size: 0x8)

    void IsNooseTrapAction(bool& IsNoose);
    void OnHitNooseTrap(class AActor* TrapActor, FVector FixPos);
    void OnChangeTrapMovingPanel(bool Exist);
    void GetCharacterParam(class UPalCharacterParameterComponent*& CPC);
    void OnChangeTrapLegHold(bool Exist);
    void IsPlayElecShockAction(bool& IsSlecShock);
    void GetSelfPawn(class AActor*& Actor);
    void CheckIgnoreAction(bool& IsIgnore);
    void HasSideStep(bool& HasSideStep);
    void IsRiding(bool& IsRiding);
    void OnEachDamage(FPalEachDamageRactionInfo EachReactionInfo);
    void OnDamageReaction(FPalDamageRactionInfo ReactionInfo);
    void OnSleep(int32 LastDamage);
    void OnDead(FPalDeadInfo DeadInfo);
    void Setup_AIDamageReaction();
    void Reset_AIDamageReaction();
    void ExecuteUbergraph_BP_AIADamageReaction(int32 EntryPoint);
}; // Size: 0x138

#endif
