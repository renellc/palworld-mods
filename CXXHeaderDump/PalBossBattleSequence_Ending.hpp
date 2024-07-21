#ifndef UE4SS_SDK_PalBossBattleSequence_Ending_HPP
#define UE4SS_SDK_PalBossBattleSequence_Ending_HPP

class UPalBossBattleSequence_Ending_C : public UPalBossBattleSequenceBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0040 (size: 0x8)
    class UPalBossBattleSequencer* Sequencer;                                         // 0x0048 (size: 0x8)

    void Gift();
    void OnBeginSequence();
    void ExecuteUbergraph_PalBossBattleSequence_Ending(int32 EntryPoint);
}; // Size: 0x50

#endif
