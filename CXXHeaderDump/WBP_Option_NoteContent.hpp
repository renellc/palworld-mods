#ifndef UE4SS_SDK_WBP_Option_NoteContent_HPP
#define UE4SS_SDK_WBP_Option_NoteContent_HPP

class UWBP_Option_NoteContent_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UBP_PalRichTextBlock_C* BP_PalRichTextBlock_Content;                        // 0x0280 (size: 0x8)
    class UCanvasPanel* CanvasPanelImage;                                             // 0x0288 (size: 0x8)
    class UImage* Image;                                                              // 0x0290 (size: 0x8)
    class UScrollBox* ScrollBox_Content;                                              // 0x0298 (size: 0x8)
    double New Offset;                                                                // 0x02A0 (size: 0x8)

    void ChangeOffset(double NewOffset);
    void SetNoteContent(class UPalNoteData* NoteData, FText Desc);
    void Tick(FGeometry MyGeometry, float InDeltaTime);
    void ExecuteUbergraph_WBP_Option_NoteContent(int32 EntryPoint);
}; // Size: 0x2A8

#endif
