#ifndef UE4SS_SDK_BP_Status_Freeze_HPP
#define UE4SS_SDK_BP_Status_Freeze_HPP

class UBP_Status_Freeze_C : public UBP_Status_WithVisualEffect_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0060 (size: 0x8)
    class UPalAIActionBase* AIActionFreeze;                                           // 0x0068 (size: 0x8)
    FVector StartLocation;                                                            // 0x0070 (size: 0x18)

    void SetFlag(bool IsFreeze);
    void OnBeginStatus();
    void OnEndStatus();
    void TickStatus(float DeltaTime);
    void ExecuteUbergraph_BP_Status_Freeze(int32 EntryPoint);
}; // Size: 0x88

#endif
