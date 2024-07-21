#ifndef UE4SS_SDK_WBP_InventoryEquipment_ItemInfo_addeffect_HPP
#define UE4SS_SDK_WBP_InventoryEquipment_ItemInfo_addeffect_HPP

class UWBP_InventoryEquipment_ItemInfo_addeffect_C : public UUserWidget
{
    class UCanvasPanel* CanvasPanelAddEff;                                            // 0x0278 (size: 0x8)
    class UCanvasPanel* CanvasPanelGun;                                               // 0x0280 (size: 0x8)
    class UImage* Frame;                                                              // 0x0288 (size: 0x8)
    class UImage* Frame_1;                                                            // 0x0290 (size: 0x8)
    class UImage* Rank;                                                               // 0x0298 (size: 0x8)
    class UBP_PalTextBlock_C* Text_ImportantDesc;                                     // 0x02A0 (size: 0x8)
    class UBP_PalTextBlock_C* Text_SimpleDesc;                                        // 0x02A8 (size: 0x8)

    void SetImportantDescription(FText Text);
    void SetSimpleDescription(FText Text);
}; // Size: 0x2B0

#endif
