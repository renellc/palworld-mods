#ifndef UE4SS_SDK_WBP_OptionSettings_ListContentLR_HPP
#define UE4SS_SDK_WBP_OptionSettings_ListContentLR_HPP

class UWBP_OptionSettings_ListContentLR_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_Name;                                   // 0x0280 (size: 0x8)
    class UHorizontalBox* HorizontalBox_LRBars;                                       // 0x0288 (size: 0x8)
    class UWBP_OptionSettings_ListContentLRArrow_C* WBP_OptionSettings_ListContentLArrow; // 0x0290 (size: 0x8)
    class UWBP_OptionSettings_ListContentLRArrow_C* WBP_OptionSettings_ListContentRArrow; // 0x0298 (size: 0x8)
    TArray<class UWBP_OptionSettings_ListContentLRBar_C*> LRBars;                     // 0x02A0 (size: 0x10)
    int32 Current;                                                                    // 0x02B0 (size: 0x4)
    TArray<FString> Selections;                                                       // 0x02B8 (size: 0x10)
    FWBP_OptionSettings_ListContentLR_COnSelectionChanged OnSelectionChanged;         // 0x02C8 (size: 0x10)
    void OnSelectionChanged(int32 Selection);

    void SelectByIndex(int32 Index);
    void GetCurrentIndex(int32& Index);
    void MoveRight();
    void MoveLeft();
    void SetupSelections(const TArray<FString>& Selections, const int32 Current);
    void BndEvt__WBP_OptionSettings_ListContentLR_WBP_OptionSettings_ListContentLArrow_K2Node_ComponentBoundEvent_0_OnClicked__DelegateSignature();
    void BndEvt__WBP_OptionSettings_ListContentLR_WBP_OptionSettings_ListContentRArrow_K2Node_ComponentBoundEvent_1_OnClicked__DelegateSignature();
    void Destruct();
    void ExecuteUbergraph_WBP_OptionSettings_ListContentLR(int32 EntryPoint);
    void OnSelectionChanged__DelegateSignature(int32 Selection);
}; // Size: 0x2D8

#endif
