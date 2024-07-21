#ifndef UE4SS_SDK_BP_ActionFriendlyLookat_HPP
#define UE4SS_SDK_BP_ActionFriendlyLookat_HPP

class UBP_ActionFriendlyLookat_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    class UNiagaraComponent* Niagra;                                                  // 0x0148 (size: 0x8)
    double Offset;                                                                    // 0x0150 (size: 0x8)

    void ChangeFace(bool Smile);
    void OnBeginAction();
    void OnEndAction();
    void TickAction(float DeltaTime);
    void ExecuteUbergraph_BP_ActionFriendlyLookat(int32 EntryPoint);
}; // Size: 0x158

#endif
