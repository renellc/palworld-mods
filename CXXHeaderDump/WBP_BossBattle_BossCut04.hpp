#ifndef UE4SS_SDK_WBP_BossBattle_BossCut04_HPP
#define UE4SS_SDK_WBP_BossBattle_BossCut04_HPP

class UWBP_BossBattle_BossCut04_C : public UUserWidget
{
    class UWidgetAnimation* Anm_Open;                                                 // 0x0278 (size: 0x8)
    class UImage* AddLight;                                                           // 0x0280 (size: 0x8)
    class UImage* AddLight_1;                                                         // 0x0288 (size: 0x8)
    class UImage* BaseLight;                                                          // 0x0290 (size: 0x8)
    class UImage* FadeBlack;                                                          // 0x0298 (size: 0x8)
    class UImage* Flash;                                                              // 0x02A0 (size: 0x8)
    class UImage* MainLight;                                                          // 0x02A8 (size: 0x8)
    class URetainerBox* RetainerBox_0;                                                // 0x02B0 (size: 0x8)
    class UBP_PalTextBlock_C* Text_MainName;                                          // 0x02B8 (size: 0x8)
    class UBP_PalTextBlock_C* Text_SubName;                                           // 0x02C0 (size: 0x8)

    void SetTexts(FText MainName, FText SubName);
}; // Size: 0x2C8

#endif
