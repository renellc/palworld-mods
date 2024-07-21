#ifndef UE4SS_SDK_WBP_PalFadeWidgetBase_HPP
#define UE4SS_SDK_WBP_PalFadeWidgetBase_HPP

class UWBP_PalFadeWidgetBase_C : public UPalFadeWidgetBase
{
    class UPalHUDDispatchParameter_FadeWidget* FadeParameter;                         // 0x0408 (size: 0x8)

    void NotifyEndFadeOut();
    void NotifyStartFadeOut();
    void NotifyEndFadeIn();
    void NotifyStartFadeIn();
    void Setup_ForOverride();
    void Setup(class UPalHUDDispatchParameter_FadeWidget* FadeParameter);
    void FadeOut();
    void FadeIn();
}; // Size: 0x410

#endif
