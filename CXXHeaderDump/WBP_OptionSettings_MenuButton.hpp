#ifndef UE4SS_SDK_WBP_OptionSettings_MenuButton_HPP
#define UE4SS_SDK_WBP_OptionSettings_MenuButton_HPP

class UWBP_OptionSettings_MenuButton_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_NormalToFocus;                                        // 0x0280 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_Name;                                   // 0x0288 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton;                          // 0x0290 (size: 0x8)
    FDataTableRowHandle LocalizeMsgID;                                                // 0x0298 (size: 0x10)
    FWBP_OptionSettings_MenuButton_COnClicked OnClicked;                              // 0x02A8 (size: 0x10)
    void OnClicked();
    bool IsFocusing;                                                                  // 0x02B8 (size: 0x1)

    void Construct();
    void BndEvt__WBP_OptionSettings_MenuButton_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_OptionSettings_MenuButton_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_OptionSettings_MenuButton_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ReleaseFocus();
    void ExecuteUbergraph_WBP_OptionSettings_MenuButton(int32 EntryPoint);
    void OnClicked__DelegateSignature();
}; // Size: 0x2B9

#endif
