#ifndef UE4SS_SDK_WBP_PalItemSlotDragDropIcon_HPP
#define UE4SS_SDK_WBP_PalItemSlotDragDropIcon_HPP

class UWBP_PalItemSlotDragDropIcon_C : public UPalUserWidget
{
    class UWBP_PalInGameMenuItemSlotButton_C* WBP_PalInGameMenuItemSlotButton;        // 0x0408 (size: 0x8)

    void Setup(FName StaticItemId, int32 DisplayNum);
}; // Size: 0x410

#endif
