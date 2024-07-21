#ifndef UE4SS_SDK_WBP_CommonPopupWindow_HPP
#define UE4SS_SDK_WBP_CommonPopupWindow_HPP

class UWBP_CommonPopupWindow_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Close;                                                // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_Open;                                                 // 0x0288 (size: 0x8)
    class UBP_PalRichTextBlock_C* BP_PalRichTextBlock_Message;                        // 0x0290 (size: 0x8)
    class USizeBox* SizeBox_RButton;                                                  // 0x0298 (size: 0x8)
    class UWBP_CommonButton_C* WBP_CommonButton_L;                                    // 0x02A0 (size: 0x8)
    class UWBP_CommonButton_C* WBP_CommonButton_R;                                    // 0x02A8 (size: 0x8)
    class UWBP_PalCommonWindow_C* WBP_PalCommonWindow;                                // 0x02B0 (size: 0x8)
    FDataTableRowHandle LeftButtonMsgID;                                              // 0x02B8 (size: 0x10)
    FDataTableRowHandle RightButtonMsgID;                                             // 0x02C8 (size: 0x10)
    FWBP_CommonPopupWindow_COnClickedLeftButton OnClickedLeftButton;                  // 0x02D8 (size: 0x10)
    void OnClickedLeftButton();
    FWBP_CommonPopupWindow_COnClickedRightButton OnClickedRightButton;                // 0x02E8 (size: 0x10)
    void OnClickedRightButton();

    void SetOneButton(bool IsOneButton);
    void GetRightButton(class UCommonButtonBase*& Button);
    void GetLeftButton(class UCommonButtonBase*& rightButton);
    void OverrideRightButtonText(FText Text);
    void OverrideLeftButtonText(FText Text);
    void SetMainText(FText Text);
    void OnInitialized();
    void BndEvt__WBP_CommonPopupWindow_WBP_CommonButton_L_K2Node_ComponentBoundEvent_0_OnClicked__DelegateSignature();
    void BndEvt__WBP_CommonPopupWindow_WBP_CommonButton_R_K2Node_ComponentBoundEvent_1_OnClicked__DelegateSignature();
    void BndEvt__WBP_CommonPopupWindow_WBP_CommonButton_L_K2Node_ComponentBoundEvent_2_OnHovered__DelegateSignature();
    void BndEvt__WBP_CommonPopupWindow_WBP_CommonButton_R_K2Node_ComponentBoundEvent_3_OnHovered__DelegateSignature();
    void ExecuteUbergraph_WBP_CommonPopupWindow(int32 EntryPoint);
    void OnClickedRightButton__DelegateSignature();
    void OnClickedLeftButton__DelegateSignature();
}; // Size: 0x2F8

#endif
