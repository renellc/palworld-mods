#ifndef UE4SS_SDK_WBP_ShopSellPrice_HPP
#define UE4SS_SDK_WBP_ShopSellPrice_HPP

class UWBP_ShopSellPrice_C : public UPalUserWidget
{
    class UImage* IconMoney;                                                          // 0x0408 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Price;                                             // 0x0410 (size: 0x8)

    void SetPrice(int32 Price, int32 AdditionalPrice);
}; // Size: 0x418

#endif
