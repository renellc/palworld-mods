#ifndef UE4SS_SDK_BP_Status_Wetness_HPP
#define UE4SS_SDK_BP_Status_Wetness_HPP

class UBP_Status_Wetness_C : public UBP_Status_WithVisualEffect_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0060 (size: 0x8)
    double DurationTimer_BP;                                                          // 0x0068 (size: 0x8)

    void IsOwnerActivate(bool& IsActivate);
    void OnBeginStatus();
    void OnEndStatus();
    void TickStatus(float DeltaTime);
    void ExecuteUbergraph_BP_Status_Wetness(int32 EntryPoint);
}; // Size: 0x70

#endif
