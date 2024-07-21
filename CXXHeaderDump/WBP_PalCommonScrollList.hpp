#ifndef UE4SS_SDK_WBP_PalCommonScrollList_HPP
#define UE4SS_SDK_WBP_PalCommonScrollList_HPP

class UWBP_PalCommonScrollList_C : public UPalCommonScrollListBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UCanvasPanel* Canvas_Root;                                                  // 0x0410 (size: 0x8)
    class UScrollBox* ScrollBox_0;                                                    // 0x0418 (size: 0x8)
    class UWBP_InventoryArrow_C* WBP_InventoryArrow_Bottom;                           // 0x0420 (size: 0x8)
    class UWBP_InventoryArrow_C* WBP_InventoryArrow_Top;                              // 0x0428 (size: 0x8)
    double lastScrollOffset;                                                          // 0x0430 (size: 0x8)
    bool IsDisplayArrow;                                                              // 0x0438 (size: 0x1)
    EScrollWhenFocusChanges GamePadFocusChangeScrollType;                             // 0x0439 (size: 0x1)

    void GetScrollBox(class UScrollBox*& ScrollBox);
    void AddWidget(class UUserWidget* Widget);
    void GetAllChildrenNum(int32& Index);
    void GetIndexFromWidget(class UWidget* Widget, int32& Index);
    void AddScrollOffset(double Offset);
    void OnInputMethodChanged(ECommonInputType bNewInputType);
    void ClearAllChildren();
    void UpdateArrowVisibilityAndAnimation(double CurrentOffset);
    void Construct();
    void Destruct();
    void BndEvt__WBP_PalCommonScrollList_ScrollBox_0_K2Node_ComponentBoundEvent_1_OnUserScrolledEvent__DelegateSignature(float CurrentOffset);
    void ExecuteUbergraph_WBP_PalCommonScrollList(int32 EntryPoint);
}; // Size: 0x43A

#endif
