#ifndef UE4SS_SDK_BP_PalCheatManager_HPP
#define UE4SS_SDK_BP_PalCheatManager_HPP

class UBP_PalCheatManager_C : public UPalCheatManager
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00C8 (size: 0x8)
    class AActor* tempPlayer;                                                         // 0x00D0 (size: 0x8)

    void ToggleAllDebugInfo();
    void StartWildPalCombat();
    void TimeStopForBP();
    void OpenMultiBattleMapForBP();
    void OpenPrivateServerForBP();
    void SpectatorOnForBP();
    void ToggleRevision_BP();
    void HideTutorialQuest_BP();
    void ExecuteUbergraph_BP_PalCheatManager(int32 EntryPoint);
}; // Size: 0xD8

#endif
