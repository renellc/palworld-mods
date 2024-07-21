#ifndef UE4SS_SDK_BP_VIsualEffect_Status_Getwet_HPP
#define UE4SS_SDK_BP_VIsualEffect_Status_Getwet_HPP

class UBP_VIsualEffect_Status_Getwet_C : public UPalVisualEffectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0070 (size: 0x8)
    class UNiagaraComponent* Effect;                                                  // 0x0078 (size: 0x8)
    double FadeOutTime;                                                               // 0x0080 (size: 0x8)
    double FadeOutTimer;                                                              // 0x0088 (size: 0x8)
    double currentfade;                                                               // 0x0090 (size: 0x8)
    double fadeoutmax;                                                                // 0x0098 (size: 0x8)

    void Set Wet(double Value);
    void OnBeginVisualEffect();
    void OnEndVisualEffect();
    void TerminatingTickVisualEffect(float DeltaTime);
    void OnDeleteInstance();
    void ExecuteUbergraph_BP_VIsualEffect_Status_Getwet(int32 EntryPoint);
}; // Size: 0xA0

#endif
