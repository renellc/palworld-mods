#ifndef UE4SS_SDK_BP_ActionDamage_HPP
#define UE4SS_SDK_BP_ActionDamage_HPP

class UBP_ActionDamage_C : public UBP_ActionSimpleMonoMontage_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0168 (size: 0x8)

    void GetEffectPosition(FVector& Location);
    void ShowEffect();
    void OnEndAction();
    void OnBeginAction();
    void ExecuteUbergraph_BP_ActionDamage(int32 EntryPoint);
}; // Size: 0x170

#endif
