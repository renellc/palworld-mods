#ifndef UE4SS_SDK_BP_VisualEffect_Status_Electricshock_HPP
#define UE4SS_SDK_BP_VisualEffect_Status_Electricshock_HPP

class UBP_VisualEffect_Status_Electricshock_C : public UPalVisualEffectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0070 (size: 0x8)
    class UNiagaraComponent* Niagara;                                                 // 0x0078 (size: 0x8)

    void OnBeginVisualEffect();
    void OnEndVisualEffect();
    void ExecuteUbergraph_BP_VisualEffect_Status_Electricshock(int32 EntryPoint);
}; // Size: 0x80

#endif
