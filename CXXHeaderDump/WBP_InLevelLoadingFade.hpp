#ifndef UE4SS_SDK_WBP_InLevelLoadingFade_HPP
#define UE4SS_SDK_WBP_InLevelLoadingFade_HPP

class UWBP_InLevelLoadingFade_C : public UWBP_PalFadeWidgetBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0410 (size: 0x8)
    class UWidgetAnimation* In;                                                       // 0x0418 (size: 0x8)
    class UWBP_LoadingScreen_C* WBP_LoadingScreen;                                    // 0x0420 (size: 0x8)
    class UWBP_Title_ProgressBar_C* WBP_Title_ProgressBar;                            // 0x0428 (size: 0x8)
    int32 Step;                                                                       // 0x0430 (size: 0x4)
    bool ProgressDisplay;                                                             // 0x0434 (size: 0x1)

    void FadeOut();
    void FadeIn();
    void Setup_ForOverride();
    void Finished_50648C2D41952F044CFD8F9629D4027A();
    void Finished_BCA2D9DB46EBD8925174F885E2A96DAA();
    void AnmEvent_In();
    void AnmEvent_Out();
    void Construct();
    void Destruct();
    void Setup(class UPalHUDDispatchParameter_FadeWidget* FadeParameter);
    void UpdateProgressStep(int32 AddStep, int32 MaxStep);
    void ExecuteUbergraph_WBP_InLevelLoadingFade(int32 EntryPoint);
}; // Size: 0x435

#endif
