#ifndef UE4SS_SDK_WBP_Common_LoadingIcon_HPP
#define UE4SS_SDK_WBP_Common_LoadingIcon_HPP

class UWBP_Common_LoadingIcon_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Loop;                                                 // 0x0280 (size: 0x8)
    class UImage* Image_Icon_0;                                                       // 0x0288 (size: 0x8)
    class UImage* Image_Icon_1;                                                       // 0x0290 (size: 0x8)
    class UImage* Image_Icon_10;                                                      // 0x0298 (size: 0x8)
    class UOverlay* Overlay_166;                                                      // 0x02A0 (size: 0x8)

    void Construct();
    void ExecuteUbergraph_WBP_Common_LoadingIcon(int32 EntryPoint);
}; // Size: 0x2A8

#endif
