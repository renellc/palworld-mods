#ifndef UE4SS_SDK_BP_PalBossBattleManager_HPP
#define UE4SS_SDK_BP_PalBossBattleManager_HPP

class UBP_PalBossBattleManager_C : public UPalBossBattleManager
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0218 (size: 0x8)

    void DisableSky(bool Activce, class APPSkyCreator* Sky);
    void DisableSkyCreator(bool Disable);
    void ExecuteUbergraph_BP_PalBossBattleManager(int32 EntryPoint);
}; // Size: 0x220

#endif
