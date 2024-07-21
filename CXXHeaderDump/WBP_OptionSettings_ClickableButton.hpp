#ifndef UE4SS_SDK_WBP_OptionSettings_ClickableButton_HPP
#define UE4SS_SDK_WBP_OptionSettings_ClickableButton_HPP

class UWBP_OptionSettings_ClickableButton_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Click;                                                // 0x0280 (size: 0x8)
    class UButton* Button_ON;                                                         // 0x0288 (size: 0x8)
    class UCanvasPanel* CanvasPanel_Hover;                                            // 0x0290 (size: 0x8)
    FWBP_OptionSettings_ClickableButton_COnClicked OnClicked;                         // 0x0298 (size: 0x10)
    void OnClicked();

    void BndEvt__WBP_OptionSettings_ListContentSwitch_Button_ON_K2Node_ComponentBoundEvent_3_OnButtonHoverEvent__DelegateSignature();
    void BndEvt__WBP_OptionSettings_ListContentSwitch_Button_ON_K2Node_ComponentBoundEvent_4_OnButtonHoverEvent__DelegateSignature();
    void BndEvt__WBP_OptionSettings_ListContentSwitch_Button_ON_K2Node_ComponentBoundEvent_6_OnButtonClickedEvent__DelegateSignature();
    void ExecuteUbergraph_WBP_OptionSettings_ClickableButton(int32 EntryPoint);
    void OnClicked__DelegateSignature();
}; // Size: 0x2A8

#endif
