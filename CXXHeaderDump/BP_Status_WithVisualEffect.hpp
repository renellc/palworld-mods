#ifndef UE4SS_SDK_BP_Status_WithVisualEffect_HPP
#define UE4SS_SDK_BP_Status_WithVisualEffect_HPP

class UBP_Status_WithVisualEffect_C : public UPalStatusBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0048 (size: 0x8)
    EPalVisualEffectID VisualEffectID;                                                // 0x0050 (size: 0x1)
    bool AutoRemoveWhenOtherElemetAdd;                                                // 0x0051 (size: 0x1)
    EPalElementType DamageUpElement;                                                  // 0x0052 (size: 0x1)
    EPalElementType DamageDownElement;                                                // 0x0053 (size: 0x1)
    FName CommonFlagName;                                                             // 0x0054 (size: 0x8)
    bool IsHideEffect;                                                                // 0x005C (size: 0x1)

    void HideReAddEffectWhenInActiveOtomo();
    void IsIgnoreElement(EPalAdditionalEffectType AddEffect, bool& Ignore);
    void HideReAddEffect();
    void ResetDamageDown();
    void ResetDamageUp();
    void SetDamageDown();
    void SetDamageUp();
    void HasSelfPalElement(EPalElementType MyElement, bool& Has);
    void OnBeginStatus();
    void OnEndStatus();
    void カスタムイベント_OtherStatusAdd(const class UPalStatusComponent* StatusComponent, EPalStatusID StatusId, class UPalStatusBase* Status);
    void カスタムイベント_Dead(FPalDeadInfo DeadInfo);
    void TickStatus(float DeltaTime);
    void ExecuteUbergraph_BP_Status_WithVisualEffect(int32 EntryPoint);
}; // Size: 0x5D

#endif
