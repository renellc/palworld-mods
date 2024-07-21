#ifndef UE4SS_SDK_BP_PalRaidBossComponent_HPP
#define UE4SS_SDK_BP_PalRaidBossComponent_HPP

class UBP_PalRaidBossComponent_C : public UPalRaidBossComponent
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0170 (size: 0x8)
    class AActor* VolumeActor;                                                        // 0x0178 (size: 0x8)

    void DespawnVolume();
    void Spawn Volume();
    void Spawn Delegate(FPalInstanceID ID);
    void Spawn One Pal(FPalRaidBossSpawnInfo SpawnInfo, int32 Index, FTransform SpawnerTransform, class UPalIndividualCharacterHandle*& Handle);
    void SpawnRaidBoss_BP(FPalRaidBossSpawnInfoList SpawnInfo, const FTransform& SpawnTransform);
    void ReceiveTick(float DeltaSeconds);
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void ReceiveBeginPlay();
    void ExecuteUbergraph_BP_PalRaidBossComponent(int32 EntryPoint);
}; // Size: 0x180

#endif
