---@meta

---@class ABP_CutsceneActor_Arena_PreBattle_C : ABP_CutsceneActorBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PreBattleBindParameter UPalCutsceneArenaPreBattleBindParameter
ABP_CutsceneActor_Arena_PreBattle_C = {}

---@param BindParameter UPalCutsceneBindParameter
function ABP_CutsceneActor_Arena_PreBattle_C:SetBindParameter(BindParameter) end
function ABP_CutsceneActor_Arena_PreBattle_C:OnPrePlayCutscene() end
---@param EntryPoint int32
function ABP_CutsceneActor_Arena_PreBattle_C:ExecuteUbergraph_BP_CutsceneActor_Arena_PreBattle(EntryPoint) end


