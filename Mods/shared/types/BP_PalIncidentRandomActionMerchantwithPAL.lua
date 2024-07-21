---@meta

---@class UBP_PalIncidentRandomActionMerchantwithPAL_C : UBP_PalIncidentRandomActionBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SpawnNPCList TArray<APalNPC>
---@field SpawnMonsterList TArray<APalMonsterCharacter>
---@field IsBinding boolean
UBP_PalIncidentRandomActionMerchantwithPAL_C = {}

---@param DamageResult FPalDamageResult
function UBP_PalIncidentRandomActionMerchantwithPAL_C:OnDamage(DamageResult) end
function UBP_PalIncidentRandomActionMerchantwithPAL_C:CollectSpawnCharacter() end
function UBP_PalIncidentRandomActionMerchantwithPAL_C:UnbindOnDamage() end
function UBP_PalIncidentRandomActionMerchantwithPAL_C:BindOnDamage() end
function UBP_PalIncidentRandomActionMerchantwithPAL_C:OnAllNpcSpawned() end
function UBP_PalIncidentRandomActionMerchantwithPAL_C:OnTerminate() end
---@param EntryPoint int32
function UBP_PalIncidentRandomActionMerchantwithPAL_C:ExecuteUbergraph_BP_PalIncidentRandomActionMerchantwithPAL(EntryPoint) end


