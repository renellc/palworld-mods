#ifndef UE4SS_SDK_WBP_LoadingScreen_HPP
#define UE4SS_SDK_WBP_LoadingScreen_HPP

class UWBP_LoadingScreen_C : public UPalLoadingScreenWidgetBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Default_In;                                               // 0x0410 (size: 0x8)
    class UCanvasPanel* CanvasPanel_0;                                                // 0x0418 (size: 0x8)
    class UImage* Image_0;                                                            // 0x0420 (size: 0x8)
    class UImage* Image_50;                                                           // 0x0428 (size: 0x8)
    class UWBP_Common_LoadingIcon_C* WBP_Common_LoadingIcon;                          // 0x0430 (size: 0x8)

    void SetBgColor(FLinearColor Color);
    void Construct();
    void ToggleVisibility(bool Visiable);
    void ExecuteUbergraph_WBP_LoadingScreen(int32 EntryPoint);
}; // Size: 0x438

#endif
