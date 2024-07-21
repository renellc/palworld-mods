#ifndef UE4SS_SDK_BP_Status_LavaDamage_HPP
#define UE4SS_SDK_BP_Status_LavaDamage_HPP

class UBP_Status_LavaDamage_C : public UPalStatusBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0048 (size: 0x8)
    FTimerHandle Timer;                                                               // 0x0050 (size: 0x8)
    double DurationTimer_BP;                                                          // 0x0058 (size: 0x8)
    FName KeyName;                                                                    // 0x0060 (size: 0x8)
    double DamageRate;                                                                // 0x0068 (size: 0x8)

    void Setup();
    void LavaDamage();
    int32 GetLavaDamage();
    void HasSelfPalElement(EPalElementType MyElement, bool& Has);
    void OnBeginStatus();
    void OnEndStatus();
    void TickStatus(float DeltaTime);
    void OnCompleteInitializeParameter(class APalCharacter* InCharacter);
    void ExecuteUbergraph_BP_Status_LavaDamage(int32 EntryPoint);
}; // Size: 0x70

#endif
