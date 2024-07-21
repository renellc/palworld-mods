#ifndef UE4SS_SDK_LS_Arena_PreBattle_Cutscene_HPP
#define UE4SS_SDK_LS_Arena_PreBattle_Cutscene_HPP

class ULS_Arena_PreBattle_Cutscene (Director BP)_C : public ULevelSequenceDirector
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0038 (size: 0x8)

    void SequenceEvent__ENTRYPOINTLS_Arena_PreBattle_Cutscene (Director BP)_0(class APalArenaPreBattleCutsceneEvent* PreBattleEvent);
    void SequenceEvent__ENTRYPOINTLS_Arena_PreBattle_Cutscene (Director BP)(class APalArenaPreBattleCutsceneEvent* PreBattleEvent);
    void PreBattleEvent_Event(class APalArenaPreBattleCutsceneEvent* PreBattleEvent, EPalArenaPlayerIndex PlayerIndex);
    void PreBattleEvent_Event_0(class APalArenaPreBattleCutsceneEvent* PreBattleEvent, EPalArenaPlayerIndex PlayerIndex);
    void ExecuteUbergraph_LS_Arena_PreBattle_Cutscene (Director BP)(int32 EntryPoint);
}; // Size: 0x40

#endif
