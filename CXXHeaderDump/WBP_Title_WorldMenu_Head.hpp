#ifndef UE4SS_SDK_WBP_Title_WorldMenu_Head_HPP
#define UE4SS_SDK_WBP_Title_WorldMenu_Head_HPP

class UWBP_Title_WorldMenu_Head_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Title;                                             // 0x0280 (size: 0x8)
    FDataTableRowHandle MsgId;                                                        // 0x0288 (size: 0x10)

    void OnInitialized();
    void ExecuteUbergraph_WBP_Title_WorldMenu_Head(int32 EntryPoint);
}; // Size: 0x298

#endif
