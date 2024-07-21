#ifndef UE4SS_SDK_BP_VisualEffect_ChangeElementBase_HPP
#define UE4SS_SDK_BP_VisualEffect_ChangeElementBase_HPP

class UBP_VisualEffect_ChangeElementBase_C : public UPalVisualEffectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0070 (size: 0x8)
    class UNiagaraSystem* EffectAsset;                                                // 0x0078 (size: 0x8)
    class UNiagaraComponent* EffectInstance;                                          // 0x0080 (size: 0x8)
    class UNiagaraSystem* ChangeEffectAsset;                                          // 0x0088 (size: 0x8)

    void DeleteEffect();
    void SpawnhEffect();
    void SetLimLight(double Intensity);
    void OnBeginVisualEffect();
    void OnEndVisualEffect();
    void TickVisualEffect(float DeltaTime);
    void ExecuteUbergraph_BP_VisualEffect_ChangeElementBase(int32 EntryPoint);
}; // Size: 0x90

#endif
