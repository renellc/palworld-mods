#ifndef UE4SS_SDK_BP_ActionSimpleMonoMontage_HPP
#define UE4SS_SDK_BP_ActionSimpleMonoMontage_HPP

class UBP_ActionSimpleMonoMontage_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    EPalActionType ActionType;                                                        // 0x0148 (size: 0x1)
    FString ErrorString;                                                              // 0x0150 (size: 0x10)
    double AnimPlayRate;                                                              // 0x0160 (size: 0x8)

    void FindMontage(class UAnimMontage*& Montage, bool& Exist);
    void OnNotifyEnd_1447BCF549F3A6CB485DC2BA183FE6B8(FName NotifyName);
    void OnNotifyBegin_1447BCF549F3A6CB485DC2BA183FE6B8(FName NotifyName);
    void OnInterrupted_1447BCF549F3A6CB485DC2BA183FE6B8(FName NotifyName);
    void OnBlendOut_1447BCF549F3A6CB485DC2BA183FE6B8(FName NotifyName);
    void OnCompleted_1447BCF549F3A6CB485DC2BA183FE6B8(FName NotifyName);
    void OnBeginAction();
    void OnEndAction();
    void OnNotifyBegin(FName NotifyName);
    void OnNotifyEnd(FName NotifyName);
    void ExecuteUbergraph_BP_ActionSimpleMonoMontage(int32 EntryPoint);
}; // Size: 0x168

#endif
