#ifndef UE4SS_SDK_WBP_InventoryArrow_HPP
#define UE4SS_SDK_WBP_InventoryArrow_HPP

class UWBP_InventoryArrow_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_ArrowScroll;                                          // 0x0280 (size: 0x8)
    class UImage* ListArrow;                                                          // 0x0288 (size: 0x8)
    FWBP_InventoryArrow_COnClicked OnClicked;                                         // 0x0290 (size: 0x10)
    void OnClicked();

    void AnmEvent_Cursor();
    void ExecuteUbergraph_WBP_InventoryArrow(int32 EntryPoint);
    void OnClicked__DelegateSignature();
}; // Size: 0x2A0

#endif
