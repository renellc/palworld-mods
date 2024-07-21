#ifndef UE4SS_SDK_WBP_OptionSettings_ListContent_ReticlePreview_HPP
#define UE4SS_SDK_WBP_OptionSettings_ListContent_ReticlePreview_HPP

class UWBP_OptionSettings_ListContent_ReticlePreview_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UImage* Image_Outline;                                                      // 0x0280 (size: 0x8)
    class UImage* Image_Outline_1;                                                    // 0x0288 (size: 0x8)
    class UImage* Image_Reticle;                                                      // 0x0290 (size: 0x8)
    class UImage* Image_Reticle_1;                                                    // 0x0298 (size: 0x8)

    void SetReticleColor(int32 ColorIndex);
    void SetOutline(double OutlineOpacity);
    void ExecuteUbergraph_WBP_OptionSettings_ListContent_ReticlePreview(int32 EntryPoint);
}; // Size: 0x2A0

#endif
