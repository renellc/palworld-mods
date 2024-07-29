---@meta

---@class ABP_PalRaidBossBattle_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BP_PalRaidBossComponent UBP_PalRaidBossComponent_C
---@field DefaultSceneRoot USceneComponent
ABP_PalRaidBossBattle_C = {}

---@return ABP_PalRaidBossBattle_C
function ABP_PalRaidBossBattle_C:get() end

---@param EntryPoint int32
function ABP_PalRaidBossBattle_C:ExecuteUbergraph_BP_PalRaidBossBattle(EntryPoint) end


