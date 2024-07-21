#ifndef UE4SS_SDK_BP_Status_LifeSteal_HPP
#define UE4SS_SDK_BP_Status_LifeSteal_HPP

class UBP_Status_LifeSteal_C : public UPalStatusLifeSteal
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0048 (size: 0x8)
    FString OutText;                                                                  // 0x0050 (size: 0x10)
    double EffectIntervalTimeSec;                                                     // 0x0060 (size: 0x8)
    double SpawnEffectWaitTimer;                                                      // 0x0068 (size: 0x8)

    void OnBeginStatus();
    void OnEndStatus();
    void OnLifeSteal(int32 Damage);
    void TickStatus(float DeltaTime);
    void ExecuteUbergraph_BP_Status_LifeSteal(int32 EntryPoint);
}; // Size: 0x70

#endif
