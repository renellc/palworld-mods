#ifndef UE4SS_SDK_BP_ActionReturnToBaseCamp_HPP
#define UE4SS_SDK_BP_ActionReturnToBaseCamp_HPP

class UBP_ActionReturnToBaseCamp_C : public UBP_ActionSimpleMonoMontage_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0168 (size: 0x8)
    FName flagName;                                                                   // 0x0170 (size: 0x8)

    void OnBeginAction();
    void TickAction(float DeltaTime);
    void OnEndAction();
    void OnNotifyBegin(FName NotifyName);
    void ExecuteUbergraph_BP_ActionReturnToBaseCamp(int32 EntryPoint);
}; // Size: 0x178

#endif
