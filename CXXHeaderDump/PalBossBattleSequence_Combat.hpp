#ifndef UE4SS_SDK_PalBossBattleSequence_Combat_HPP
#define UE4SS_SDK_PalBossBattleSequence_Combat_HPP

class UPalBossBattleSequence_Combat_C : public UPalBossBattleSequenceBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0040 (size: 0x8)
    bool IsBossDead;                                                                  // 0x0048 (size: 0x1)
    bool IsResultCompleted;                                                           // 0x0049 (size: 0x1)

    void CheckCombatFinish();
    void SetTimerEnable(bool IsEnable);
    void OnBeginSequence();
    void OnDeadBoss(FPalDeadInfo DeadInfo);
    void TickSequence(float DeltaTime);
    void ExecuteUbergraph_PalBossBattleSequence_Combat(int32 EntryPoint);
}; // Size: 0x4A

#endif
