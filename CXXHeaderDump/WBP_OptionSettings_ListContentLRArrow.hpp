#ifndef UE4SS_SDK_WBP_OptionSettings_ListContentLRArrow_HPP
#define UE4SS_SDK_WBP_OptionSettings_ListContentLRArrow_HPP

class UWBP_OptionSettings_ListContentLRArrow_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Push;                                                 // 0x0280 (size: 0x8)
    class UImage* ArrowHover;                                                         // 0x0288 (size: 0x8)
    class UButton* Button_Dummy;                                                      // 0x0290 (size: 0x8)
    class UWBP_PalCommonButton_C* WBP_PalCommonButton;                                // 0x0298 (size: 0x8)
    FWBP_OptionSettings_ListContentLRArrow_COnClicked OnClicked;                      // 0x02A0 (size: 0x10)
    void OnClicked();

    void ClickInternal();
    void Click();
    void BndEvt__WBP_OptionSettings_ListContentLRArrow_WBP_PalCommonButton_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_OptionSettings_ListContentLRArrow_WBP_PalCommonButton_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_OptionSettings_ListContentLRArrow_WBP_PalCommonButton_K2Node_ComponentBoundEvent_5_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ExecuteUbergraph_WBP_OptionSettings_ListContentLRArrow(int32 EntryPoint);
    void OnClicked__DelegateSignature();
}; // Size: 0x2B0

#endif
