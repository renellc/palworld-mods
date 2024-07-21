#ifndef UE4SS_SDK_WBP_Title_WorldSelect_OverlayWindow_InputCode_HPP
#define UE4SS_SDK_WBP_Title_WorldSelect_OverlayWindow_InputCode_HPP

class UWBP_Title_WorldSelect_OverlayWindow_InputCode_C : public UPalUIJoinGameInputCodeBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0440 (size: 0x8)
    class UWidgetAnimation* Anm_Caution;                                              // 0x0448 (size: 0x8)
    class UWidgetAnimation* Anm_Edit_OnToOff;                                         // 0x0450 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_C_166;                                  // 0x0458 (size: 0x8)
    class UCircularThrobber* CircularThrobber_26;                                     // 0x0460 (size: 0x8)
    class UEditableTextBox* EditableTextBox_Code;                                     // 0x0468 (size: 0x8)
    class UImage* IconShowHide;                                                       // 0x0470 (size: 0x8)
    class UImage* Line;                                                               // 0x0478 (size: 0x8)
    class UOverlay* Overlay_Wait;                                                     // 0x0480 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Caution;                                           // 0x0488 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Title;                                             // 0x0490 (size: 0x8)
    class UWBP_Menu_btn_C* WBP_Menu_btn_Close;                                        // 0x0498 (size: 0x8)
    class UWBP_PalCommonWindow_C* WBP_PalCommonWindow;                                // 0x04A0 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton_ShoiwHideInviteCode;      // 0x04A8 (size: 0x8)
    class UWBP_Title_SettingsButton_C* WBP_Title_SettingsButton;                      // 0x04B0 (size: 0x8)
    FTimerHandle TimeoutTmerHandle;                                                   // 0x04B8 (size: 0x8)
    FDataTableRowHandle InputPassWordMsgID;                                           // 0x04C0 (size: 0x10)
    FDataTableRowHandle InputCodeMsgID;                                               // 0x04D0 (size: 0x10)
    FDataTableRowHandle HintTextMsgID;                                                // 0x04E0 (size: 0x10)
    EPalUIJoinGameInputCodeType InputMode;                                            // 0x04F0 (size: 0x1)
    bool bShowInviteCode;                                                             // 0x04F1 (size: 0x1)

    void ShowHideInputText();
    class UWidget* CustomNavi_ToTextBox(EUINavigation Navigation);
    class UWidget* CustomNavi_ToCloseButton(EUINavigation Navigation);
    void On Cancel Action();
    class UWidget* BP_GetDesiredFocusTarget();
    void OnNotifyVerifyInviteCodeImpl(bool IsValidCode, bool IsRequirePassword);
    void OnNotifyVerifyPasswordImpl(bool IsValidPassword);
    void OnConfirmInternal();
    void OnTimer_TimeoutWaitResponse();
    void CloseWaitWIndow();
    void OpenWaitWindow();
    void ChangeMode(EPalUIJoinGameInputCodeType InputMode);
    void OnSetup();
    void Construct();
    void OnNotifyVerifyInviteCode(bool IsValidCode, bool IsRequirePassword);
    void OnNotifyVerifyPassword(bool IsMatchPassword);
    void Destruct();
    void OnInitialized();
    void BndEvt__WBP_Title_WorldSelect_OverlayWindow_InputCode_WBP_Title_SettingsButton_K2Node_ComponentBoundEvent_0_OnClicked__DelegateSignature();
    void BndEvt__WBP_Title_WorldSelect_OverlayWindow_InputCode_EditableTextBox_Code_K2Node_ComponentBoundEvent_1_OnEditableTextBoxChangedEvent__DelegateSignature(const FText& Text);
    void BndEvt__WBP_Title_WorldSelect_OverlayWindow_InputCode_EditableTextBox_Code_K2Node_ComponentBoundEvent_2_OnEditableTextBoxCommittedEvent__DelegateSignature(const FText& Text, TEnumAsByte<ETextCommit::Type> CommitMethod);
    void BndEvt__WBP_Buildup_Player_WBP_Menu_btn_Close_K2Node_ComponentBoundEvent_2_OnButtonClicked__DelegateSignature();
    void BndEvt__WBP_Title_WorldSelect_OverlayWindow_InputCode_WBP_PalInvisibleButton_ShoiwHideInviteCode_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ExecuteUbergraph_WBP_Title_WorldSelect_OverlayWindow_InputCode(int32 EntryPoint);
}; // Size: 0x4F2

#endif
