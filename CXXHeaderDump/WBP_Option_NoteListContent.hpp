#ifndef UE4SS_SDK_WBP_Option_NoteListContent_HPP
#define UE4SS_SDK_WBP_Option_NoteListContent_HPP

class UWBP_Option_NoteListContent_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_Title;                                  // 0x0280 (size: 0x8)
    class UCanvasPanel* CanvasPanelNEW;                                               // 0x0288 (size: 0x8)
    class UImage* Frame;                                                              // 0x0290 (size: 0x8)
    class UImage* Frame_1;                                                            // 0x0298 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton;                          // 0x02A0 (size: 0x8)
    FWBP_Option_NoteListContent_COnNoteListClicked OnNoteListClicked;                 // 0x02A8 (size: 0x10)
    void OnNoteListClicked(FName Title);
    FName Title;                                                                      // 0x02B8 (size: 0x8)

    void SetNoteList(FName Title, bool IsChecked, FText Desc);
    void BndEvt__WBP_Option_NoteListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_Option_NoteListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_Option_NoteListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ExecuteUbergraph_WBP_Option_NoteListContent(int32 EntryPoint);
    void OnNoteListClicked__DelegateSignature(FName Title);
}; // Size: 0x2C0

#endif
