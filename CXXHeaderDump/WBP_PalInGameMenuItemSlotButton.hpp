#ifndef UE4SS_SDK_WBP_PalInGameMenuItemSlotButton_HPP
#define UE4SS_SDK_WBP_PalInGameMenuItemSlotButton_HPP

class UWBP_PalInGameMenuItemSlotButton_C : public UWBP_PalItemSlotButtonBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0578 (size: 0x8)
    class UWidgetAnimation* Anm_UnselectToSelect;                                     // 0x0580 (size: 0x8)
    class UWidgetAnimation* Anm_Bg_Lock;                                              // 0x0588 (size: 0x8)
    class UWidgetAnimation* Anm_Focus;                                                // 0x0590 (size: 0x8)
    class UWidgetAnimation* Anm_Rarity_0To4;                                          // 0x0598 (size: 0x8)
    class UImage* Base;                                                               // 0x05A0 (size: 0x8)
    class UImage* Base_Empty;                                                         // 0x05A8 (size: 0x8)
    class UCanvasPanel* CanvasPanel_BaseShadow;                                       // 0x05B0 (size: 0x8)
    class UCanvasPanel* CanvasPanelCorrution;                                         // 0x05B8 (size: 0x8)
    class UCanvasPanel* CanvasPanelLineLock;                                          // 0x05C0 (size: 0x8)
    class UPalProgressBar* CorruptionProgressBar;                                     // 0x05C8 (size: 0x8)
    class UBP_PalTextBlock_C* CorruptionRemainTime;                                   // 0x05D0 (size: 0x8)
    class UImage* FocusBase;                                                          // 0x05D8 (size: 0x8)
    class UImage* FocusFrame;                                                         // 0x05E0 (size: 0x8)
    class UImage* Frame_Empty;                                                        // 0x05E8 (size: 0x8)
    class UOverlay* OverlayRepair;                                                    // 0x05F0 (size: 0x8)
    class UProgressBar* ProgressBar_Durable;                                          // 0x05F8 (size: 0x8)
    class UBP_PalTextBlock_C* Text_ItemWeight;                                        // 0x0600 (size: 0x8)
    class UWBP_InventoryEquipment_PalIcon_C* WBP_InventoryEquipment_PalIcon;          // 0x0608 (size: 0x8)
    class UWBP_PalInGameMenuItemSlot_C* WBP_PalInGameMenuItemSlot;                    // 0x0610 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton;                          // 0x0618 (size: 0x8)
    class UImage* WeightnumBase;                                                      // 0x0620 (size: 0x8)
    bool HasLiftting;                                                                 // 0x0628 (size: 0x1)

    void SetEnableDefaultClickSound(bool Enable);
    void SetPalGearIcon(FName ItemId);
    void Toggle Corruption Visibility(bool Visible);
    void OnSetCorruptionImpl();
    void On Notify Durability Impl(double MaxDurability, double NowDurability, class UWBP_PalItemSlotButtonBase_C* selfWidget);
    void OnSetEmptySlotImpl();
    void On Set Valid Slot Impl();
    void RegisterItemSlotWidget(class UWBP_PalItemSlotBase_C*& itemSlotWidget);
    void RegisterButton(class UCommonButtonBase*& Button);
    void AnmEvent_Focus();
    void AnmEvent_Unfocus();
    void AnmEvent_RepairMark(bool IsEnable);
    void AnmEvent_Rarity(int32 Rarity);
    void OnInitialized();
    void OnHoveredEvent(class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnDraggedEvent(class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnDroppedEvent(class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnLiftedEvent(int32 LiftNum, class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnUnhoveredEvent(class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnSetValidSlotEvent();
    void OnEmptyEvent();
    void SetSlotLock();
    void Destruct();
    void ToggleLock(bool Lock);
    void ExecuteUbergraph_WBP_PalInGameMenuItemSlotButton(int32 EntryPoint);
}; // Size: 0x629

#endif
