#ifndef UE4SS_SDK_BP_Status_Electrical_HPP
#define UE4SS_SDK_BP_Status_Electrical_HPP

class UBP_Status_Electrical_C : public UBP_Status_WithVisualEffect_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0060 (size: 0x8)
    FTimerHandle Timer;                                                               // 0x0068 (size: 0x8)

    void PlayElecShockAction();
    void OnBeginStatus();
    void OnBeginSomeStatus();
    void ExecuteUbergraph_BP_Status_Electrical(int32 EntryPoint);
}; // Size: 0x70

#endif
