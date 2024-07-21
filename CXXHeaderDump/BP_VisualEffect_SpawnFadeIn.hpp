#ifndef UE4SS_SDK_BP_VisualEffect_SpawnFadeIn_HPP
#define UE4SS_SDK_BP_VisualEffect_SpawnFadeIn_HPP

class UBP_VisualEffect_SpawnFadeIn_C : public UPalVisualEffectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0070 (size: 0x8)
    double Opacity;                                                                   // 0x0078 (size: 0x8)
    float TickInterval;                                                               // 0x0080 (size: 0x4)
    FTimerHandle TimerHandle;                                                         // 0x0088 (size: 0x8)

    void SetOpacity(double Intensity);
    void OnEndVisualEffect();
    void OnBeginVisualEffect();
    void Update();
    void ExecuteUbergraph_BP_VisualEffect_SpawnFadeIn(int32 EntryPoint);
}; // Size: 0x90

#endif
