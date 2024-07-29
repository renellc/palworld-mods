---@meta

---@class ABP_PalSpawnerInfoReporter_C : APalDebug_SpawnInfoReporter
---@field DefaultSceneRoot USceneComponent
ABP_PalSpawnerInfoReporter_C = {}

---@return ABP_PalSpawnerInfoReporter_C
function ABP_PalSpawnerInfoReporter_C:get() end

---@param spawner APalNPCSpawnerBase
---@return FString
function ABP_PalSpawnerInfoReporter_C:GetDebugInfoString(spawner) end


