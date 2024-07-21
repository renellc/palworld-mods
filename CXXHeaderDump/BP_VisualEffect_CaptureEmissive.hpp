#ifndef UE4SS_SDK_BP_VisualEffect_CaptureEmissive_HPP
#define UE4SS_SDK_BP_VisualEffect_CaptureEmissive_HPP

class UBP_VisualEffect_CaptureEmissive_C : public UPalVisualEffectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0070 (size: 0x8)
    double EmissionTime;                                                              // 0x0078 (size: 0x8)
    double EmissionTimer;                                                             // 0x0080 (size: 0x8)
    double CurrentEmission;                                                           // 0x0088 (size: 0x8)
    double EmissionMax;                                                               // 0x0090 (size: 0x8)

    void OnBeginVisualEffect();
    void TickVisualEffect(float DeltaTime);
    void OnEndVisualEffect();
    void ExecuteUbergraph_BP_VisualEffect_CaptureEmissive(int32 EntryPoint);
}; // Size: 0x98

#endif
