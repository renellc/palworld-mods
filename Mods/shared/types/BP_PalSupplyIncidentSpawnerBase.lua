---@meta

---@class ABP_PalSupplyIncidentSpawnerBase_C : ABP_PalRandomIncidentSpawnerTemplate_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field bIsPalSpawner boolean
---@field bWipedOut boolean
ABP_PalSupplyIncidentSpawnerBase_C = {}

function ABP_PalSupplyIncidentSpawnerBase_C:ReleaseIncident() end
function ABP_PalSupplyIncidentSpawnerBase_C:WipedOut() end
function ABP_PalSupplyIncidentSpawnerBase_C:ReceiveBeginPlay() end
---@param Incident UPalIncidentBase
---@param DynamicParameter UPalIncidentDynamicParameterRandom
function ABP_PalSupplyIncidentSpawnerBase_C:OnIncidentSpawned(Incident, DynamicParameter) end
---@param EntryPoint int32
function ABP_PalSupplyIncidentSpawnerBase_C:ExecuteUbergraph_BP_PalSupplyIncidentSpawnerBase(EntryPoint) end


