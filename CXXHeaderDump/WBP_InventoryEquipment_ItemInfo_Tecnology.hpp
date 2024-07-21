#ifndef UE4SS_SDK_WBP_InventoryEquipment_ItemInfo_Tecnology_HPP
#define UE4SS_SDK_WBP_InventoryEquipment_ItemInfo_Tecnology_HPP

class UWBP_InventoryEquipment_ItemInfo_Tecnology_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UCanvasPanel* CanvasPanel_WorkSpace;                                        // 0x0280 (size: 0x8)
    class UVerticalBox* VerticalBox_TechDetails;                                      // 0x0288 (size: 0x8)
    class UImage* WorkSpaceInfo;                                                      // 0x0290 (size: 0x8)

    void GetStockNum(FName StaticItemId, bool WithStock, int32& Stock);
    void SetWorkSpaceInfo();
    void SetDetails(const TArray<FPalStaticItemIdAndNum>& MatDetail, bool WithStock);
    void ExecuteUbergraph_WBP_InventoryEquipment_ItemInfo_Tecnology(int32 EntryPoint);
}; // Size: 0x298

#endif
