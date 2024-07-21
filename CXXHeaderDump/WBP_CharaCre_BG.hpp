#ifndef UE4SS_SDK_WBP_CharaCre_BG_HPP
#define UE4SS_SDK_WBP_CharaCre_BG_HPP

class UWBP_CharaCre_BG_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Light_OnToOff;                                        // 0x0280 (size: 0x8)
    class UImage* Image;                                                              // 0x0288 (size: 0x8)
    class UImage* Image_1;                                                            // 0x0290 (size: 0x8)
    class UImage* Image_2;                                                            // 0x0298 (size: 0x8)
    class UImage* Image_132;                                                          // 0x02A0 (size: 0x8)
    class UImage* Image_181;                                                          // 0x02A8 (size: 0x8)
    class UImage* Image_591;                                                          // 0x02B0 (size: 0x8)

    void AnmEvent_FloorIn();
    void AnmEvent_FloorOut();
    void ExecuteUbergraph_WBP_CharaCre_BG(int32 EntryPoint);
}; // Size: 0x2B8

#endif
