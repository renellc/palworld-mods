#ifndef UE4SS_SDK_WBP_TitleLocalWorldBackupSelect_HPP
#define UE4SS_SDK_WBP_TitleLocalWorldBackupSelect_HPP

class UWBP_TitleLocalWorldBackupSelect_C : public UPalUIWorldBackupSelect
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0430 (size: 0x8)
    class UImage* Image_69;                                                           // 0x0438 (size: 0x8)
    class UOverlay* Overlay_Root;                                                     // 0x0440 (size: 0x8)
    class UWBP_Title_BackupSelect_C* WBP_Title_BackupSelect;                          // 0x0448 (size: 0x8)
    class UWBP_Title_WorldMenu_Head_C* WBP_Title_WorldMenu_Head;                      // 0x0450 (size: 0x8)
    class UWBP_Title_BackupSelect_ListContent_C* LastClickedButton;                   // 0x0458 (size: 0x8)
    FDataTableRowHandle CheckDialogMsgID;                                             // 0x0460 (size: 0x10)
    FDataTableRowHandle SuccessDialogMsgID;                                           // 0x0470 (size: 0x10)
    FDataTableRowHandle FailedDialogMsgID;                                            // 0x0480 (size: 0x10)

    void OnCloseSuccessDialog(bool bResult);
    void OnCloseFailedDialog(bool bResult);
    void OnClosedCheckDialog(bool bResult);
    void OpenFailedDialog();
    void OpenSuccessDialog();
    void OpenCheckDialog();
    void Get Focus Target Internal(class UWidget*& Widget);
    class UWidget* BP_GetDesiredFocusTarget();
    void Setup();
    void OnSetup();
    void BndEvt__WBP_TitleLocalWorldBackupSelect_WBP_Title_BackupSelect_K2Node_ComponentBoundEvent_0_OnClickedCloseButton__DelegateSignature();
    void BndEvt__WBP_TitleLocalWorldBackupSelect_WBP_Title_BackupSelect_K2Node_ComponentBoundEvent_1_OnClickedBackup__DelegateSignature(class UWBP_Title_BackupSelect_ListContent_C* Widget);
    void Destruct();
    void ExecuteUbergraph_WBP_TitleLocalWorldBackupSelect(int32 EntryPoint);
}; // Size: 0x490

#endif
