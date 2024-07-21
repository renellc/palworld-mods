#ifndef UE4SS_SDK_WBP_PalItemSlotBase_HPP
#define UE4SS_SDK_WBP_PalItemSlotBase_HPP

class UWBP_PalItemSlotBase_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWBP_PalItemIconBase_C* myIconWidget;                                       // 0x0410 (size: 0x8)
    class UPalItemSlot* TargetSlot;                                                   // 0x0418 (size: 0x8)
    FWBP_PalItemSlotBase_COnUpdateSlot OnUpdateSlot;                                  // 0x0420 (size: 0x10)
    void OnUpdateSlot(class UPalItemSlot* TargetSlot);
    FWBP_PalItemSlotBase_COnSetEmpty OnSetEmpty;                                      // 0x0430 (size: 0x10)
    void OnSetEmpty();
    FWBP_PalItemSlotBase_COnSetValidSlot OnSetValidSlot;                              // 0x0440 (size: 0x10)
    void OnSetValidSlot();
    bool IsDisplayEmpty;                                                              // 0x0450 (size: 0x1)
    FWBP_PalItemSlotBase_COnLiftedSlot OnLiftedSlot;                                  // 0x0458 (size: 0x10)
    void OnLiftedSlot(int32 LiftedItemNum);
    FWBP_PalItemSlotBase_COnFinishedLiftSlot OnFinishedLiftSlot;                      // 0x0468 (size: 0x10)
    void OnFinishedLiftSlot();
    FTimerHandle CheckDurabilityTimerHandle;                                          // 0x0478 (size: 0x8)
    FWBP_PalItemSlotBase_COnNotifyDurability OnNotifyDurability;                      // 0x0480 (size: 0x10)
    void OnNotifyDurability(double MaxDurability, double NowDurability);
    FWBP_PalItemSlotBase_COnCorruptionUpdate OnCorruptionUpdate;                      // 0x0490 (size: 0x10)
    void OnCorruptionUpdate();

    void OnUpdateDurability_Internal(float OldDurability, float NewDurability);
    void OnUpdateSlotCorruption_Internal(class UPalItemSlot* Slot);
    void OnTimer_CheckDurability();
    void OnFinishedLiftItem_Internal();
    void Setup(class UPalItemSlot* TargetSlot);
    void OnLiftedSlot_Internal(const int32 LiftItemNum);
    void Unbind Event();
    void BindEvent();
    void On Update Slot Internal(class UPalItemSlot* Slot);
    void RegisterItemIconWidget(class UWBP_PalItemIconBase_C*& iconWidget);
    void OnInitialized();
    void Destruct();
    void ExecuteUbergraph_WBP_PalItemSlotBase(int32 EntryPoint);
    void OnCorruptionUpdate__DelegateSignature();
    void OnNotifyDurability__DelegateSignature(double MaxDurability, double NowDurability);
    void OnFinishedLiftSlot__DelegateSignature();
    void OnLiftedSlot__DelegateSignature(int32 LiftedItemNum);
    void OnSetValidSlot__DelegateSignature();
    void OnSetEmpty__DelegateSignature();
    void OnUpdateSlot__DelegateSignature(class UPalItemSlot* TargetSlot);
}; // Size: 0x4A0

#endif
