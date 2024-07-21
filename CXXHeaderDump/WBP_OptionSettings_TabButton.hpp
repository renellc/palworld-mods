#ifndef UE4SS_SDK_WBP_OptionSettings_TabButton_HPP
#define UE4SS_SDK_WBP_OptionSettings_TabButton_HPP

class UWBP_OptionSettings_TabButton_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_NormalToFocus;                                        // 0x0280 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_Name;                                   // 0x0288 (size: 0x8)
    class UWBP_PalCommonButton_C* WBP_PalCommonButton;                                // 0x0290 (size: 0x8)
    bool IsActive;                                                                    // 0x0298 (size: 0x1)
    int32 Index;                                                                      // 0x029C (size: 0x4)
    FWBP_OptionSettings_TabButton_CSwitchTabTo SwitchTabTo;                           // 0x02A0 (size: 0x10)
    void SwitchTabTo(int32 Index);

    void SetName(FText Name, int32 Index);
    void SetTabActive(bool Active);
    void BndEvt__WBP_OptionSettings_TabButton_WBP_PalCommonButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ExecuteUbergraph_WBP_OptionSettings_TabButton(int32 EntryPoint);
    void SwitchTabTo__DelegateSignature(int32 Index);
}; // Size: 0x2B0

#endif
