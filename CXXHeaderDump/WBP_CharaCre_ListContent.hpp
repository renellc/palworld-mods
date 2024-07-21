#ifndef UE4SS_SDK_WBP_CharaCre_ListContent_HPP
#define UE4SS_SDK_WBP_CharaCre_ListContent_HPP

class UWBP_CharaCre_ListContent_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Focus;                                                // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_Normal;                                               // 0x0288 (size: 0x8)
    class UNamedSlot* NamedSlot_InnnerVerticalBox;                                    // 0x0290 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Title;                                             // 0x0298 (size: 0x8)
    FDataTableRowHandle TitleMsgID;                                                   // 0x02A0 (size: 0x10)

    void OnInitialized();
    void ExecuteUbergraph_WBP_CharaCre_ListContent(int32 EntryPoint);
}; // Size: 0x2B0

#endif
