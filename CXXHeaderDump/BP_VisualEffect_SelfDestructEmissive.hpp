#ifndef UE4SS_SDK_BP_VisualEffect_SelfDestructEmissive_HPP
#define UE4SS_SDK_BP_VisualEffect_SelfDestructEmissive_HPP

class UBP_VisualEffect_SelfDestructEmissive_C : public UPalVisualEffectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0070 (size: 0x8)
    FMaterialParameterInfo Material Parameter Info;                                   // 0x0078 (size: 0x10)
    bool isBlinking;                                                                  // 0x0088 (size: 0x1)
    double ElapsedTime;                                                               // 0x0090 (size: 0x8)
    double DefaultEmissiveDuration;                                                   // 0x0098 (size: 0x8)
    double DefaultNoEmissiveDuration;                                                 // 0x00A0 (size: 0x8)
    double MinEmissiveDuration;                                                       // 0x00A8 (size: 0x8)
    double DecayRateOfEmissiveTime;                                                   // 0x00B0 (size: 0x8)
    bool IsEndAction;                                                                 // 0x00B8 (size: 0x1)
    class UNiagaraComponent* NiagaraEffect;                                           // 0x00C0 (size: 0x8)

    void Initialize Float Parameters();
    void FlashWithAcceleration(double DeltaTime);
    void SetOverlayMaterial(class UMaterialInterface* NewOverlayMaterial);
    void SetEmissive(float Value);
    void OnBeginVisualEffect();
    void TickVisualEffect(float DeltaTime);
    void OnEndVisualEffect();
    void ExecuteUbergraph_BP_VisualEffect_SelfDestructEmissive(int32 EntryPoint);
}; // Size: 0xC8

#endif
