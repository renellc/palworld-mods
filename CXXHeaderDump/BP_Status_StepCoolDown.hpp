#ifndef UE4SS_SDK_BP_Status_StepCoolDown_HPP
#define UE4SS_SDK_BP_Status_StepCoolDown_HPP

class UBP_Status_StepCoolDown_C : public UPalStatusBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0048 (size: 0x8)
    double Timer;                                                                     // 0x0050 (size: 0x8)

    void TickStatus(float DeltaTime);
    void OnBeginStatus();
    void ExecuteUbergraph_BP_Status_StepCoolDown(int32 EntryPoint);
}; // Size: 0x58

#endif
