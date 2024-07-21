#ifndef UE4SS_SDK_WBP_LoadingScreen_Transition_HPP
#define UE4SS_SDK_WBP_LoadingScreen_Transition_HPP

class UWBP_LoadingScreen_Transition_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* FadeOut;                                                  // 0x0410 (size: 0x8)
    class UWidgetAnimation* FadeIn;                                                   // 0x0418 (size: 0x8)
    class UWidgetAnimation* Default_In;                                               // 0x0420 (size: 0x8)
    class UCanvasPanel* CanvasPanel_0;                                                // 0x0428 (size: 0x8)
    class UWBP_LoadingScreen_C* WBP_LoadingScreen;                                    // 0x0430 (size: 0x8)

    void SetBgColor(FLinearColor Color);
    void Finished_65AD92BC4646C00F05936392250F90EA();
    void Finished_D300E47D4C210C5B9AC12E8500F6AC11();
    void Construct();
    void StartFadeIn();
    void StartFadeOut();
    void ToggleVisibility(bool Visiable);
    void ExecuteUbergraph_WBP_LoadingScreen_Transition(int32 EntryPoint);
}; // Size: 0x438

#endif
