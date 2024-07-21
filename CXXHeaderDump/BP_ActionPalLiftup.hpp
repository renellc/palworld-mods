#ifndef UE4SS_SDK_BP_ActionPalLiftup_HPP
#define UE4SS_SDK_BP_ActionPalLiftup_HPP

class UBP_ActionPalLiftup_C : public UPalAction_Liftup
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)

    void StopAnimation();
    void OnEndAction();
    void OnBreakAction();
    void PlayStartLiftupMontage();
    void ExecuteUbergraph_BP_ActionPalLiftup(int32 EntryPoint);
}; // Size: 0x148

#endif
