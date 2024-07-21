#ifndef UE4SS_SDK_WBP_Menu_btn_HPP
#define UE4SS_SDK_WBP_Menu_btn_HPP

class UWBP_Menu_btn_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Push;                                                 // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_Normal;                                               // 0x0288 (size: 0x8)
    class UWidgetAnimation* Anm_Focus;                                                // 0x0290 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton;                          // 0x0298 (size: 0x8)
    FWBP_Menu_btn_COnButtonClicked OnButtonClicked;                                   // 0x02A0 (size: 0x10)
    void OnButtonClicked();

    void AnmEvent_Click();
    void AnmEvent_Hover();
    void AnmEvent_Unhover();
    void Construct();
    void BndEvt__WBP_Menu_btn_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_Menu_btn_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_Menu_btn_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_5_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ExecuteUbergraph_WBP_Menu_btn(int32 EntryPoint);
    void OnButtonClicked__DelegateSignature();
}; // Size: 0x2B0

#endif
