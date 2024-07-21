#ifndef UE4SS_SDK_WBP_InventoryEquipment_PalIcon_HPP
#define UE4SS_SDK_WBP_InventoryEquipment_PalIcon_HPP

class UWBP_InventoryEquipment_PalIcon_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UImage* IconPal;                                                            // 0x0280 (size: 0x8)
    class UMaterialInstanceDynamic* dynamicMaterial;                                  // 0x0288 (size: 0x8)

    void Setup(FName IconId);
    void ExecuteUbergraph_WBP_InventoryEquipment_PalIcon(int32 EntryPoint);
}; // Size: 0x290

#endif
