#ifndef UE4SS_SDK_BP_PalBossBattleSequencer_HPP
#define UE4SS_SDK_BP_PalBossBattleSequencer_HPP

class UBP_PalBossBattleSequencer_C : public UPalBossBattleSequencer
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0148 (size: 0x8)

    void Tick_ForBP(float DeltaTime);
    void ExecuteUbergraph_BP_PalBossBattleSequencer(int32 EntryPoint);
}; // Size: 0x150

#endif
