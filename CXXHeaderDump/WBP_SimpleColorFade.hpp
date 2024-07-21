#ifndef UE4SS_SDK_WBP_SimpleColorFade_HPP
#define UE4SS_SDK_WBP_SimpleColorFade_HPP

class UWBP_SimpleColorFade_C : public UWBP_PalFadeWidgetBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0410 (size: 0x8)
    class UWidgetAnimation* In;                                                       // 0x0418 (size: 0x8)
    class UImage* Image_14;                                                           // 0x0420 (size: 0x8)

    void Setup_ForOverride();
    void FadeOut();
    void FadeIn();
    void Finished_DE82E8EE4E2FF74CE3788F9F262A873A();
    void Finished_212EE08E4C1C909EB4116D9853386FC5();
    void AnmEvent_In();
    void AnmEvent_Out();
    void Construct();
    void ToggleVisibility(bool Visiable);
    void ExecuteUbergraph_WBP_SimpleColorFade(int32 EntryPoint);
}; // Size: 0x428

#endif
