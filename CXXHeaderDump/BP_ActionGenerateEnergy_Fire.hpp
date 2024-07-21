#ifndef UE4SS_SDK_BP_ActionGenerateEnergy_Fire_HPP
#define UE4SS_SDK_BP_ActionGenerateEnergy_Fire_HPP

class UBP_ActionGenerateEnergy_Fire_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    class AActor* ターゲット;                                                         // 0x0148 (size: 0x8)
    class UNiagaraComponent* SpawnedEffect;                                           // 0x0150 (size: 0x8)
    class UNiagaraComponent* Effect;                                                  // 0x0158 (size: 0x8)

    void SpawnEffect();
    void Find Cooking Montage(class UAnimMontage*& Montage, bool& Exist);
    void OnNotifyEnd_75F2495A430312E64BC5728E3519E8BE(FName NotifyName);
    void OnNotifyBegin_75F2495A430312E64BC5728E3519E8BE(FName NotifyName);
    void OnInterrupted_75F2495A430312E64BC5728E3519E8BE(FName NotifyName);
    void OnBlendOut_75F2495A430312E64BC5728E3519E8BE(FName NotifyName);
    void OnCompleted_75F2495A430312E64BC5728E3519E8BE(FName NotifyName);
    void OnNotifyEnd_6E0595B24F14FA16B8F98E8F7D2908AA(FName NotifyName);
    void OnNotifyBegin_6E0595B24F14FA16B8F98E8F7D2908AA(FName NotifyName);
    void OnInterrupted_6E0595B24F14FA16B8F98E8F7D2908AA(FName NotifyName);
    void OnBlendOut_6E0595B24F14FA16B8F98E8F7D2908AA(FName NotifyName);
    void OnCompleted_6E0595B24F14FA16B8F98E8F7D2908AA(FName NotifyName);
    void OnEndAction();
    void OnBeginAction();
    void ExecuteUbergraph_BP_ActionGenerateEnergy_Fire(int32 EntryPoint);
}; // Size: 0x160

#endif
