#ifndef UE4SS_SDK_WBP_Option_HelpGuide_HPP
#define UE4SS_SDK_WBP_Option_HelpGuide_HPP

class UWBP_Option_HelpGuide_C : public UPalUserWidgetOverlayUI
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0430 (size: 0x8)
    class UWidgetAnimation* Anm_Open;                                                 // 0x0438 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_NoteCount;                              // 0x0440 (size: 0x8)
    class UWBP_NoData_C* WBP_NoData;                                                  // 0x0448 (size: 0x8)
    class UWBP_Option_NoteContent_C* WBP_Option_NoteContent;                          // 0x0450 (size: 0x8)
    class UWBP_PalCommonScrollList_C* WBP_PalCommonScrollList;                        // 0x0458 (size: 0x8)
    FName CurrentNoteTitle;                                                           // 0x0460 (size: 0x8)
    class UWBP_PalInvisibleButton_C* FocusTarget;                                     // 0x0468 (size: 0x8)
    FName CloseActionName;                                                            // 0x0470 (size: 0x8)

    FEventReply OnAnalogValueChanged(FGeometry MyGeometry, FAnalogInputEvent InAnalogInputEvent);
    class UWidget* BP_GetDesiredFocusTarget();
    void Change Note Content(FName NoteTitle);
    void Setup(FName NoteTitle);
    void Finished_80D7C1A8449D6AAAECA77A96E24A7B39();
    void OnSetup();
    void ClosePanel();
    void ExecuteUbergraph_WBP_Option_HelpGuide(int32 EntryPoint);
}; // Size: 0x478

#endif
