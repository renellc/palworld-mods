#ifndef UE4SS_SDK_BP_ActionRandomRest_HPP
#define UE4SS_SDK_BP_ActionRandomRest_HPP

class UBP_ActionRandomRest_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    class UAnimMontage* CurrentMontage;                                               // 0x0148 (size: 0x8)
    FPalRandomRestInfo CurrentRestInfo;                                               // 0x0150 (size: 0x18)
    int32 CurrentLoopMaxNum;                                                          // 0x0168 (size: 0x4)
    int32 CurrentLoopingCount;                                                        // 0x016C (size: 0x4)
    double tempRand;                                                                  // 0x0170 (size: 0x8)

    FPalRandomRestInfo GetRandomRestInfo();
    void OnNotifyEnd_903852264ADDCC5C76468EB1B01885D1(FName NotifyName);
    void OnNotifyBegin_903852264ADDCC5C76468EB1B01885D1(FName NotifyName);
    void OnInterrupted_903852264ADDCC5C76468EB1B01885D1(FName NotifyName);
    void OnBlendOut_903852264ADDCC5C76468EB1B01885D1(FName NotifyName);
    void OnCompleted_903852264ADDCC5C76468EB1B01885D1(FName NotifyName);
    void OnNotifyEnd_4551F62E41169AB9D4D27C8A2A1A7EE2(FName NotifyName);
    void OnNotifyBegin_4551F62E41169AB9D4D27C8A2A1A7EE2(FName NotifyName);
    void OnInterrupted_4551F62E41169AB9D4D27C8A2A1A7EE2(FName NotifyName);
    void OnBlendOut_4551F62E41169AB9D4D27C8A2A1A7EE2(FName NotifyName);
    void OnCompleted_4551F62E41169AB9D4D27C8A2A1A7EE2(FName NotifyName);
    void OnBeginAction();
    void OnEndAction();
    void Play_Idle();
    void Play_MontageLoop();
    void ExecuteUbergraph_BP_ActionRandomRest(int32 EntryPoint);
}; // Size: 0x178

#endif
