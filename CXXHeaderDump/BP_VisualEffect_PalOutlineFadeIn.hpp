#ifndef UE4SS_SDK_BP_VisualEffect_PalOutlineFadeIn_HPP
#define UE4SS_SDK_BP_VisualEffect_PalOutlineFadeIn_HPP

class UBP_VisualEffect_PalOutlineFadeIn_C : public UPalVisualEffectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0070 (size: 0x8)
    double Alpha;                                                                     // 0x0078 (size: 0x8)
    double Fade Speed;                                                                // 0x0080 (size: 0x8)
    class UMaterialInstanceDynamic* Material;                                         // 0x0088 (size: 0x8)

    void OnBeginVisualEffect();
    void TickVisualEffect(float DeltaTime);
    void ExecuteUbergraph_BP_VisualEffect_PalOutlineFadeIn(int32 EntryPoint);
}; // Size: 0x90

#endif
