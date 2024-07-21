#ifndef UE4SS_SDK_BP_BossBattleEventBase_HPP
#define UE4SS_SDK_BP_BossBattleEventBase_HPP

class UBP_BossBattleEventBase_C : public UPalBossBattleEventBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0040 (size: 0x8)
    class ABP_BossBattle_BossCharacterSpawner_C* BossSpawner;                         // 0x0048 (size: 0x8)

    void ActivateCharacter(class UPalIndividualCharacterHandle* IndividualHandle, const FVector Offset);
    void GetDebugNo(int32 BitFlag, bool& Result);
    void SetSpawner(class ABP_BossBattle_BossCharacterSpawner_C* spawner);
    void OnTerminate();
    void ExecuteUbergraph_BP_BossBattleEventBase(int32 EntryPoint);
}; // Size: 0x50

#endif
