#ifndef UE4SS_SDK_WBP_NoData_HPP
#define UE4SS_SDK_WBP_NoData_HPP

class UWBP_NoData_C : public UUserWidget
{
    class UBP_PalTextBlock_C* BP_PalTextBlock_C;                                      // 0x0278 (size: 0x8)
    class UImage* Image;                                                              // 0x0280 (size: 0x8)
    class UImage* Image_1;                                                            // 0x0288 (size: 0x8)
    class UImage* Image_2;                                                            // 0x0290 (size: 0x8)
    class UImage* Image_3;                                                            // 0x0298 (size: 0x8)
    class UImage* Image_4;                                                            // 0x02A0 (size: 0x8)
    class UImage* Image_5;                                                            // 0x02A8 (size: 0x8)
    class UImage* Image_32;                                                           // 0x02B0 (size: 0x8)
    class UImage* Image_80;                                                           // 0x02B8 (size: 0x8)
    class UImage* Image_142;                                                          // 0x02C0 (size: 0x8)

    void SetText(FText Text);
}; // Size: 0x2C8

#endif
