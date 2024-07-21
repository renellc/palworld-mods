#ifndef UE4SS_SDK_BP_Status_Burn_HPP
#define UE4SS_SDK_BP_Status_Burn_HPP

class UBP_Status_Burn_C : public UBP_Status_WithVisualEffect_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0060 (size: 0x8)
    FTimerHandle Timer;                                                               // 0x0068 (size: 0x8)
    double DurationTimer_BP;                                                          // 0x0070 (size: 0x8)
    FName KeyName;                                                                    // 0x0078 (size: 0x8)
    double Rate;                                                                      // 0x0080 (size: 0x8)

    void OnBeginStatus();
    void OnEndStatus();
    void カスタムイベント_SlipDamage();
    void カスタムイベント_2();
    void TickStatus(float DeltaTime);
    void ExecuteUbergraph_BP_Status_Burn(int32 EntryPoint);
}; // Size: 0x88

#endif
