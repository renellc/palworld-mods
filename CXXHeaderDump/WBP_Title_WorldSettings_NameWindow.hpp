#ifndef UE4SS_SDK_WBP_Title_WorldSettings_NameWindow_HPP
#define UE4SS_SDK_WBP_Title_WorldSettings_NameWindow_HPP

class UWBP_Title_WorldSettings_NameWindow_C : public UPalUserWidgetOverlayUI
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0430 (size: 0x8)
    class UEditableTextBox* EditableTextBox_Name;                                     // 0x0438 (size: 0x8)
    class UImage* Image_57;                                                           // 0x0440 (size: 0x8)
    class UWBP_CommonButton_C* WBP_CommonButton;                                      // 0x0448 (size: 0x8)
    class UWBP_PalCommonWindow_C* WBP_PalCommonWindow;                                // 0x0450 (size: 0x8)
    FString Default Input Name;                                                       // 0x0458 (size: 0x10)

    class UWidget* BP_GetDesiredFocusTarget();
    void OnSetup();
    void BndEvt__WBP_Title_WorldSettings_NameWindow_EditableTextBox_Name_K2Node_ComponentBoundEvent_0_OnEditableTextBoxChangedEvent__DelegateSignature(const FText& Text);
    void BndEvt__WBP_Title_WorldSettings_NameWindow_EditableTextBox_Name_K2Node_ComponentBoundEvent_1_OnEditableTextBoxCommittedEvent__DelegateSignature(const FText& Text, TEnumAsByte<ETextCommit::Type> CommitMethod);
    void BndEvt__WBP_Title_WorldSettings_NameWindow_WBP_CommonButton_K2Node_ComponentBoundEvent_2_OnClicked__DelegateSignature();
    void ExecuteUbergraph_WBP_Title_WorldSettings_NameWindow(int32 EntryPoint);
}; // Size: 0x468

#endif
