#ifndef UE4SS_SDK_BP_VisualEffect_CameraBase_HPP
#define UE4SS_SDK_BP_VisualEffect_CameraBase_HPP

class UBP_VisualEffect_CameraBase_C : public UPalVisualEffectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0070 (size: 0x8)
    double FadeInTime;                                                                // 0x0078 (size: 0x8)
    double FadeOutTime;                                                               // 0x0080 (size: 0x8)
    double TimeEventTime;                                                             // 0x0088 (size: 0x8)
    double Weight;                                                                    // 0x0090 (size: 0x8)
    FTimerHandle FadeInTimerHanhdle;                                                  // 0x0098 (size: 0x8)
    FTimerHandle FadeOutTimerHanhdle;                                                 // 0x00A0 (size: 0x8)

    void UpdateEffectValue(double WeightValue);
    void OnBeginVisualEffect();
    void OnEndVisualEffect();
    void カスタムイベント_FadeIIn();
    void カスタムイベント_FadeOut();
    void ExecuteUbergraph_BP_VisualEffect_CameraBase(int32 EntryPoint);
}; // Size: 0xA8

#endif
