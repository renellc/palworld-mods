#ifndef UE4SS_SDK_BP_ActionAngerLoop_HPP
#define UE4SS_SDK_BP_ActionAngerLoop_HPP

class UBP_ActionAngerLoop_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    class UNiagaraComponent* Niagara;                                                 // 0x0148 (size: 0x8)
    FTimerHandle Timer;                                                               // 0x0150 (size: 0x8)

    void OnBeginAction();
    void OnEndAction();
    void TickAction(float DeltaTime);
    void カスタムイベント_0();
    void ExecuteUbergraph_BP_ActionAngerLoop(int32 EntryPoint);
}; // Size: 0x158

#endif
