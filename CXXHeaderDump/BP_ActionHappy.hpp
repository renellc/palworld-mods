#ifndef UE4SS_SDK_BP_ActionHappy_HPP
#define UE4SS_SDK_BP_ActionHappy_HPP

class UBP_ActionHappy_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    class UNiagaraComponent* Niagara;                                                 // 0x0148 (size: 0x8)
    double Timer;                                                                     // 0x0150 (size: 0x8)

    void ChangeFace(bool Smile);
    void OnLoaded_EC2E853A48D294FC93D7F1A792BBC3C8(class UObject* Loaded);
    void OnBeginAction();
    void OnEndAction();
    void TickAction(float DeltaTime);
    void ExecuteUbergraph_BP_ActionHappy(int32 EntryPoint);
}; // Size: 0x158

#endif
