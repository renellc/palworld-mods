#ifndef UE4SS_SDK_BP_Status_RaidBossModeChange_HPP
#define UE4SS_SDK_BP_Status_RaidBossModeChange_HPP

class UBP_Status_RaidBossModeChange_C : public UPalStatusBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0048 (size: 0x8)
    double ReGeneTime;                                                                // 0x0050 (size: 0x8)
    double ReGeneRate;                                                                // 0x0058 (size: 0x8)
    double Timer;                                                                     // 0x0060 (size: 0x8)
    TArray<EPalStatusID> IgnoreStatusID;                                              // 0x0068 (size: 0x10)
    FPalRaidBossSpawnInfo Boss Info;                                                  // 0x0078 (size: 0x58)

    void FindModeChangeVisualEffectType(EPalElementType Element, EPalVisualEffectID& VisualEffect);
    void FindRaidBossData(FPalRaidBossSpawnInfo& BossInfo);
    void OnBeginStatus();
    void TickStatus(float DeltaTime);
    void OnEndStatus();
    void ExecuteUbergraph_BP_Status_RaidBossModeChange(int32 EntryPoint);
}; // Size: 0xD0

#endif
