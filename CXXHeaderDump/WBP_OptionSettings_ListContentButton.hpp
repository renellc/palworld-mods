#ifndef UE4SS_SDK_WBP_OptionSettings_ListContentButton_HPP
#define UE4SS_SDK_WBP_OptionSettings_ListContentButton_HPP

class UWBP_OptionSettings_ListContentButton_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UCanvasPanel* CanvasPanel_Warning;                                          // 0x0280 (size: 0x8)
    class UImage* Image_Key;                                                          // 0x0288 (size: 0x8)
    class UWBP_PalKeyGuideIcon_C* WBP_PalKeyGuideIcon;                                // 0x0290 (size: 0x8)

    void GetCurrentIcon(FSlateBrush& Brush);
    void SetIcon(FSlateBrush KeyIcon);
    void EnableWarning(bool IsEnable);
    void SetUIIcon(const FSlateBrush& InBrush, FName ActionName, ECommonInputType InputType);
    void ExecuteUbergraph_WBP_OptionSettings_ListContentButton(int32 EntryPoint);
}; // Size: 0x298

#endif
