#ifndef UE4SS_SDK_BP_PalRaidBossBattle_HPP
#define UE4SS_SDK_BP_PalRaidBossBattle_HPP

class ABP_PalRaidBossBattle_C : public AActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class UBP_PalRaidBossComponent_C* BP_PalRaidBossComponent;                        // 0x0298 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02A0 (size: 0x8)

    void ExecuteUbergraph_BP_PalRaidBossBattle(int32 EntryPoint);
}; // Size: 0x2A8

#endif
