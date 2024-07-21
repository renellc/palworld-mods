#ifndef UE4SS_SDK_BP_VisualEffect_Fadeout_HPP
#define UE4SS_SDK_BP_VisualEffect_Fadeout_HPP

class UBP_VisualEffect_Fadeout_C : public UPalVisualEffectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0070 (size: 0x8)
    double FadeTime;                                                                  // 0x0078 (size: 0x8)
    double FadeTimer;                                                                 // 0x0080 (size: 0x8)

    void TickVisualEffect(float DeltaTime);
    void OnBeginVisualEffect();
    void ExecuteUbergraph_BP_VisualEffect_Fadeout(int32 EntryPoint);
}; // Size: 0x88

#endif
