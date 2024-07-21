#ifndef UE4SS_SDK_WBP_Title_BackupSelect_HPP
#define UE4SS_SDK_WBP_Title_BackupSelect_HPP

class UWBP_Title_BackupSelect_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UBP_PalTextBlock_C* Text_BackupInfo;                                        // 0x0410 (size: 0x8)
    class UBP_PalTextBlock_C* Text_NothingBackup;                                     // 0x0418 (size: 0x8)
    class UWBP_Menu_btn_C* WBP_Menu_btn;                                              // 0x0420 (size: 0x8)
    class UWBP_PalCommonScrollList_C* WBP_PalCommonScrollList;                        // 0x0428 (size: 0x8)
    FWBP_Title_BackupSelect_COnClickedCloseButton OnClickedCloseButton;               // 0x0430 (size: 0x10)
    void OnClickedCloseButton();
    FWBP_Title_BackupSelect_COnClickedBackup OnClickedBackup;                         // 0x0440 (size: 0x10)
    void OnClickedBackup(class UWBP_Title_BackupSelect_ListContent_C* Widget);

    class UWidget* CustomNavi_ToListTop(EUINavigation Navigation);
    class UWidget* CustomNavi_ToCloseButton(EUINavigation Navigation);
    void GetTopFocusTarget(class UWidget*& TargetWidget);
    void OnClickedBackupButton_Internal(class UWBP_Title_BackupSelect_ListContent_C* Widget);
    void SetBackupDisplayData(TArray<FPalUIBackupSaveDisplayData>& DisplayData);
    void BndEvt__WBP_Title_BackupSelect_WBP_Menu_btn_K2Node_ComponentBoundEvent_0_OnButtonClicked__DelegateSignature();
    void Destruct();
    void ExecuteUbergraph_WBP_Title_BackupSelect(int32 EntryPoint);
    void OnClickedBackup__DelegateSignature(class UWBP_Title_BackupSelect_ListContent_C* Widget);
    void OnClickedCloseButton__DelegateSignature();
}; // Size: 0x450

#endif
