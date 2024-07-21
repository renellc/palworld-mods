#ifndef UE4SS_SDK_WBP_InventoryEquipment_ItemInfo_Caution_HPP
#define UE4SS_SDK_WBP_InventoryEquipment_ItemInfo_Caution_HPP

class UWBP_InventoryEquipment_ItemInfo_Caution_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UBP_PalRichTextBlock_C* RichText_ItemName;                                  // 0x0280 (size: 0x8)

    void SetRequireName(FText Name);
    void ExecuteUbergraph_WBP_InventoryEquipment_ItemInfo_Caution(int32 EntryPoint);
}; // Size: 0x288

#endif
