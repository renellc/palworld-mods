#ifndef UE4SS_SDK_WBP_MainMenu_Pal_WorkIconText_HPP
#define UE4SS_SDK_WBP_MainMenu_Pal_WorkIconText_HPP

class UWBP_MainMenu_Pal_WorkIconText_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_C;                                      // 0x0280 (size: 0x8)
    class UCanvasPanel* CanvasPanel_2;                                                // 0x0288 (size: 0x8)
    class UHorizontalBox* HorizontalBox_0;                                            // 0x0290 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Title;                                             // 0x0298 (size: 0x8)
    class UWBP_MainMenu_Pal_WorkIcon_C* WBP_MainMenu_Pal_WorkIcon;                    // 0x02A0 (size: 0x8)

    void SetSuitability(EPalWorkSuitability Suitability, int32 Rank);
    void AnmEvent_OffToOn();
    void AnmEvent_ForceOff();
    void ExecuteUbergraph_WBP_MainMenu_Pal_WorkIconText(int32 EntryPoint);
}; // Size: 0x2A8

#endif
