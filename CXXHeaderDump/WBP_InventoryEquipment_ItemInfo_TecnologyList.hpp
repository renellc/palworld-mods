#ifndef UE4SS_SDK_WBP_InventoryEquipment_ItemInfo_TecnologyList_HPP
#define UE4SS_SDK_WBP_InventoryEquipment_ItemInfo_TecnologyList_HPP

class UWBP_InventoryEquipment_ItemInfo_TecnologyList_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UImage* Base;                                                               // 0x0280 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_Name;                                   // 0x0288 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_Num;                                    // 0x0290 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_sp;                                     // 0x0298 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_Stock;                                  // 0x02A0 (size: 0x8)
    class UImage* Icon;                                                               // 0x02A8 (size: 0x8)

    void SetInfo(FText Name, int32 Num, TSoftObjectPtr<UTexture2D> Icon, int32 Stock);
    void ExecuteUbergraph_WBP_InventoryEquipment_ItemInfo_TecnologyList(int32 EntryPoint);
}; // Size: 0x2B0

#endif
