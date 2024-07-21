#ifndef UE4SS_SDK_PalBossBattleSequence_Completed_HPP
#define UE4SS_SDK_PalBossBattleSequence_Completed_HPP

class UPalBossBattleSequence_Completed_C : public UPalBossBattleSequenceBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0040 (size: 0x8)

    void WarpTowerTop();
    void OnBeginSequence();
    void ExecuteUbergraph_PalBossBattleSequence_Completed(int32 EntryPoint);
}; // Size: 0x48

#endif
