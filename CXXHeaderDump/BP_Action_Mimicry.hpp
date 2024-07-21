#ifndef UE4SS_SDK_BP_Action_Mimicry_HPP
#define UE4SS_SDK_BP_Action_Mimicry_HPP

class UBP_Action_Mimicry_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    class UAnimMontage* MimicMontage;                                                 // 0x0148 (size: 0x8)

    void FindMimicMontage(class UAnimMontage*& Montage);
    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_Action_Mimicry(int32 EntryPoint);
}; // Size: 0x150

#endif
