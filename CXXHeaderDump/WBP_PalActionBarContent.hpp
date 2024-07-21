#ifndef UE4SS_SDK_WBP_PalActionBarContent_HPP
#define UE4SS_SDK_WBP_PalActionBarContent_HPP

class UWBP_PalActionBarContent_C : public UPalCommonBoundActionButton
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x1510 (size: 0x8)
    class UHorizontalBox* HorizontalBox_32;                                           // 0x1518 (size: 0x8)

    void OnUpdateInputAction();
    void ExecuteUbergraph_WBP_PalActionBarContent(int32 EntryPoint);
}; // Size: 0x1520

#endif
