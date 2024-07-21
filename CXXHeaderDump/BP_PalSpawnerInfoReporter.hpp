#ifndef UE4SS_SDK_BP_PalSpawnerInfoReporter_HPP
#define UE4SS_SDK_BP_PalSpawnerInfoReporter_HPP

class ABP_PalSpawnerInfoReporter_C : public APalDebug_SpawnInfoReporter
{
    class USceneComponent* DefaultSceneRoot;                                          // 0x02A0 (size: 0x8)

    FString GetDebugInfoString(class APalNPCSpawnerBase* spawner);
}; // Size: 0x2A8

#endif
