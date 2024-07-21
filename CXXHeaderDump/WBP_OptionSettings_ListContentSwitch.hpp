#ifndef UE4SS_SDK_WBP_OptionSettings_ListContentSwitch_HPP
#define UE4SS_SDK_WBP_OptionSettings_ListContentSwitch_HPP

class UWBP_OptionSettings_ListContentSwitch_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_OffToOn;                                              // 0x0280 (size: 0x8)
    class UCanvasPanel* CanvasPanel_OFFHover;                                         // 0x0288 (size: 0x8)
    class UCanvasPanel* CanvasPanel_ONHover;                                          // 0x0290 (size: 0x8)
    class UWBP_PalCommonButton_C* WBP_PalCommonButton_OFF;                            // 0x0298 (size: 0x8)
    class UWBP_PalCommonButton_C* WBP_PalCommonButton_ON;                             // 0x02A0 (size: 0x8)
    bool CurrentIsOn;                                                                 // 0x02A8 (size: 0x1)
    FWBP_OptionSettings_ListContentSwitch_COnSwitcherChanged OnSwitcherChanged;       // 0x02B0 (size: 0x10)
    void OnSwitcherChanged(bool IsOn);

    void IsOn(bool& IsOn);
    void Setup(bool IsOn);
    void SWITCH();
    void BndEvt__WBP_OptionSettings_ListContentSwitch_WBP_PalCommonButton_OFF_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_OptionSettings_ListContentSwitch_WBP_PalCommonButton_OFF_K2Node_ComponentBoundEvent_7_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_OptionSettings_ListContentSwitch_WBP_PalCommonButton_OFF_K2Node_ComponentBoundEvent_8_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_OptionSettings_ListContentSwitch_WBP_PalCommonButton_ON_K2Node_ComponentBoundEvent_9_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_OptionSettings_ListContentSwitch_WBP_PalCommonButton_ON_K2Node_ComponentBoundEvent_10_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_OptionSettings_ListContentSwitch_WBP_PalCommonButton_ON_K2Node_ComponentBoundEvent_11_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ExecuteUbergraph_WBP_OptionSettings_ListContentSwitch(int32 EntryPoint);
    void OnSwitcherChanged__DelegateSignature(bool IsOn);
}; // Size: 0x2C0

#endif
