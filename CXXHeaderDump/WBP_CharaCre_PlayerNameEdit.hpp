#ifndef UE4SS_SDK_WBP_CharaCre_PlayerNameEdit_HPP
#define UE4SS_SDK_WBP_CharaCre_PlayerNameEdit_HPP

class UWBP_CharaCre_PlayerNameEdit_C : public UPalUserWidgetOverlayUI
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0430 (size: 0x8)
    class UEditableTextBox* EditableTextBox_Name;                                     // 0x0438 (size: 0x8)
    class UImage* Image_57;                                                           // 0x0440 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Head;                                              // 0x0448 (size: 0x8)
    class UWBP_CommonButton_C* WBP_CommonButton;                                      // 0x0450 (size: 0x8)
    class UWBP_Menu_btn_C* WBP_Menu_btn;                                              // 0x0458 (size: 0x8)
    class UWBP_PalCommonWindow_C* WBP_PalCommonWindow;                                // 0x0460 (size: 0x8)
    FDataTableRowHandle NoPlayerNameMsgID;                                            // 0x0468 (size: 0x10)
    FDataTableRowHandle NoPalNameMsgID;                                               // 0x0478 (size: 0x10)
    int32 MaxNameLength;                                                              // 0x0488 (size: 0x4)
    FPalDataTableRowName_UIInputAction ShortcutConfirmInputAction;                    // 0x048C (size: 0x8)
    FPalUIActionBindData ShortcutConfirmInputActionHandle;                            // 0x0494 (size: 0x4)
    bool ForPlayer;                                                                   // 0x0498 (size: 0x1)
    FDataTableRowHandle TitleMsgID_Player;                                            // 0x04A0 (size: 0x10)
    FDataTableRowHandle TitleMsgID_Pal;                                               // 0x04B0 (size: 0x10)

    void ClampInputName(FText InText, FText& clampedNickName);
    void OnShortcutConfirm();
    class UWidget* BP_GetDesiredFocusTarget();
    void SetEnableConfirmButton(bool IsEnable);
    void OnSetup();
    void BndEvt__WBP_CharaCre_PlayerNameEdit_EditableTextBox_Name_K2Node_ComponentBoundEvent_0_OnEditableTextBoxChangedEvent__DelegateSignature(const FText& Text);
    void BndEvt__WBP_CharaCre_PlayerNameEdit_EditableTextBox_Name_K2Node_ComponentBoundEvent_1_OnEditableTextBoxCommittedEvent__DelegateSignature(const FText& Text, TEnumAsByte<ETextCommit::Type> CommitMethod);
    void BndEvt__WBP_CharaCre_PlayerNameEdit_WBP_CommonButton_K2Node_ComponentBoundEvent_2_OnClicked__DelegateSignature();
    void BndEvt__WBP_CharaCre_PlayerNameEdit_WBP_Menu_btn_K2Node_ComponentBoundEvent_3_OnButtonClicked__DelegateSignature();
    void OnCancelAction();
    void ExecuteUbergraph_WBP_CharaCre_PlayerNameEdit(int32 EntryPoint);
}; // Size: 0x4C0

#endif
