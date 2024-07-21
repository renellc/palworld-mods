#ifndef UE4SS_SDK_BP_ArenaSequence_InBattle_HPP
#define UE4SS_SDK_BP_ArenaSequence_InBattle_HPP

class UBP_ArenaSequence_InBattle_C : public UPalArenaSequenceInBattle
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0048 (size: 0x8)
    bool Timeup;                                                                      // 0x0050 (size: 0x1)
    FTimerHandle BattleTimerHandle;                                                   // 0x0058 (size: 0x8)
    FName flagName;                                                                   // 0x0060 (size: 0x8)
    FBP_ArenaSequence_InBattle_COnTimerTick OnTimerTick;                              // 0x0068 (size: 0x10)
    void OnTimerTick(int32 Time);

    void SetDisableOtomoDeadReturn(bool Disable);
    void SetInBattleControllerSetting(bool InBattle);
    void CheckBattleEnd();
    void EnableMovement();
    void ChangeArenaInBattleCharacterts(bool InBattle);
    void OnBeginSequence();
    void TickSequence(float DeltaTime);
    void OnDeadCharacter(FPalDeadInfo DeadInfo);
    void OnEndSequence();
    void OnTimeup();
    void OnBreakSequence();
    void ExecuteUbergraph_BP_ArenaSequence_InBattle(int32 EntryPoint);
    void OnTimerTick__DelegateSignature(int32 Time);
}; // Size: 0x78

#endif
