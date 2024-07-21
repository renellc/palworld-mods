#ifndef UE4SS_SDK_BP_ActionGenerateEnergy_Electric_HPP
#define UE4SS_SDK_BP_ActionGenerateEnergy_Electric_HPP

class UBP_ActionGenerateEnergy_Electric_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    class AActor* ターゲット;                                                         // 0x0148 (size: 0x8)
    class UNiagaraComponent* SpawnedEffect;                                           // 0x0150 (size: 0x8)

    void OnNotifyEnd_A4DA4EDD4B8DD41C2D78A1B27DF1132F(FName NotifyName);
    void OnNotifyBegin_A4DA4EDD4B8DD41C2D78A1B27DF1132F(FName NotifyName);
    void OnInterrupted_A4DA4EDD4B8DD41C2D78A1B27DF1132F(FName NotifyName);
    void OnBlendOut_A4DA4EDD4B8DD41C2D78A1B27DF1132F(FName NotifyName);
    void OnCompleted_A4DA4EDD4B8DD41C2D78A1B27DF1132F(FName NotifyName);
    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_ActionGenerateEnergy_Electric(int32 EntryPoint);
}; // Size: 0x158

#endif
