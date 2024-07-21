#ifndef UE4SS_SDK_BP_VisualEffect_Status_Flamed_HPP
#define UE4SS_SDK_BP_VisualEffect_Status_Flamed_HPP

class UBP_VisualEffect_Status_Flamed_C : public UPalVisualEffectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0070 (size: 0x8)
    double Scale;                                                                     // 0x0078 (size: 0x8)
    class UNiagaraComponent* Niagara;                                                 // 0x0080 (size: 0x8)

    void OnBeginVisualEffect();
    void TickVisualEffect(float DeltaTime);
    void OnEndVisualEffect();
    void ExecuteUbergraph_BP_VisualEffect_Status_Flamed(int32 EntryPoint);
}; // Size: 0x88

#endif
