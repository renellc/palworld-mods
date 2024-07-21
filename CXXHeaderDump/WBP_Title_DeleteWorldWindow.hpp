#ifndef UE4SS_SDK_WBP_Title_DeleteWorldWindow_HPP
#define UE4SS_SDK_WBP_Title_DeleteWorldWindow_HPP

class UWBP_Title_DeleteWorldWindow_C : public UPalUserWidgetOverlayUI
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0430 (size: 0x8)
    class UEditableTextBox* EditableTextBox_DELETE;                                   // 0x0438 (size: 0x8)
    class UImage* Image_57;                                                           // 0x0440 (size: 0x8)
    class UWBP_CommonButton_C* WBP_CommonButton_Cancel;                               // 0x0448 (size: 0x8)
    class UWBP_CommonButton_C* WBP_CommonButton_Confirm;                              // 0x0450 (size: 0x8)
    class UWBP_PalCommonWindow_C* WBP_PalCommonWindow;                                // 0x0458 (size: 0x8)

    void OnClosedDeleteCheckDialog(bool bResult);
    void OpenCheckDialog();
    class UWidget* BP_GetDesiredFocusTarget();
    void SetEnableConfirmButton(bool IsEnable);
    void Construct();
    void OnSetup();
    void BndEvt__WBP_CharaCre_PlayerNameEdit_EditableTextBox_Name_K2Node_ComponentBoundEvent_0_OnEditableTextBoxChangedEvent__DelegateSignature(const FText& Text);
    void BndEvt__WBP_CharaCre_PlayerNameEdit_EditableTextBox_Name_K2Node_ComponentBoundEvent_1_OnEditableTextBoxCommittedEvent__DelegateSignature(const FText& Text, TEnumAsByte<ETextCommit::Type> CommitMethod);
    void BndEvt__WBP_CharaCre_PlayerNameEdit_WBP_CommonButton_K2Node_ComponentBoundEvent_2_OnClicked__DelegateSignature();
    void BndEvt__WBP_Title_DeleteWorldWindow_WBP_CommonButton_Cancel_K2Node_ComponentBoundEvent_3_OnClicked__DelegateSignature();
    void ExecuteUbergraph_WBP_Title_DeleteWorldWindow(int32 EntryPoint);
}; // Size: 0x460

#endif
