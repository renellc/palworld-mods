---@meta

---@class ULS_Arena_PreBattle_Cutscene_C : ULevelSequenceDirector
---@field UberGraphFrame FPointerToUberGraphFrame
ULS_Arena_PreBattle_Cutscene_C = {}

---@param PreBattleEvent APalArenaPreBattleCutsceneEvent
function ULS_Arena_PreBattle_Cutscene_C:SequenceEvent_ENTRYPOINTLS_Arena_PreBattle_Cutscene_0(PreBattleEvent) end

---@param PreBattleEvent APalArenaPreBattleCutsceneEvent
function ULS_Arena_PreBattle_Cutscene_C:SequenceEvent_ENTRYPOINTLS_Arena_PreBattle_Cutscene(PreBattleEvent) end

---@param PreBattleEvent APalArenaPreBattleCutsceneEvent
---@param PlayerIndex EPalArenaPlayerIndex
function ULS_Arena_PreBattle_Cutscene_C:PreBattleEvent_Event(PreBattleEvent, PlayerIndex) end

---@param PreBattleEvent APalArenaPreBattleCutsceneEvent
---@param PlayerIndex EPalArenaPlayerIndex
function ULS_Arena_PreBattle_Cutscene_C:PreBattleEvent_Event_0(PreBattleEvent, PlayerIndex) end

---@param EntryPoint int32
function ULS_Arena_PreBattle_Cutscene_C:ExecuteUbergraph_LS_Arena_PreBattle_Cutscene(EntryPoint) end
