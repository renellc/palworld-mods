---@meta

---@class UBP_PalSupplyIncidentAction_C : UBP_PalIncidentRandomActionBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field IsAllNpcSpawned boolean
UBP_PalSupplyIncidentAction_C = {}

---@param bIsPalSpawner boolean
---@param Result APalRandomIncidentNPCSpawner
function UBP_PalSupplyIncidentAction_C:GetNPCSpawner(bIsPalSpawner, Result) end
---@param SourceCharacters TArray<APalCharacter>
---@param TargetCharacters TArray<APalCharacter>
function UBP_PalSupplyIncidentAction_C:CollectChangeHateTargets(SourceCharacters, TargetCharacters) end
---@param Spawmer APalRandomIncidentNPCSpawner
function UBP_PalSupplyIncidentAction_C:GetSpawner(Spawmer) end
---@param NPCSpawner boolean
---@param IsAlive boolean
function UBP_PalSupplyIncidentAction_C:ExistsAliveCharacter(NPCSpawner, IsAlive) end
---@param Controller APalAIController
---@param Found boolean
---@param Location FVector
function UBP_PalSupplyIncidentAction_C:GetSpawnedLocation(Controller, Found, Location) end
---@param Radius double
function UBP_PalSupplyIncidentAction_C:GetSpawnRadius(Radius) end
---@param Location FVector
function UBP_PalSupplyIncidentAction_C:GetSpawnerLocation(Location) end
---@param Controller ABP_MonsterAIControllerBase_C
function UBP_PalSupplyIncidentAction_C:ResetAIController_Monster(Controller) end
---@param Controller ABP_NPCAIController_C
function UBP_PalSupplyIncidentAction_C:ResetAIController_NPC(Controller) end
---@param NPCSpawner boolean
function UBP_PalSupplyIncidentAction_C:ResetAIController(NPCSpawner) end
---@param Character APalCharacter
---@param Targets TArray<APalCharacter>
UBP_PalSupplyIncidentAction_C['Set Hate To Targets'] = function(Character, Targets) end
function UBP_PalSupplyIncidentAction_C:SetHate() end
function UBP_PalSupplyIncidentAction_C:OnAllNpcSpawned() end
function UBP_PalSupplyIncidentAction_C:OnInitialized() end
function UBP_PalSupplyIncidentAction_C:OnStart() end
function UBP_PalSupplyIncidentAction_C:OnTerminate() end
---@param DeltaTime float
function UBP_PalSupplyIncidentAction_C:OnTick(DeltaTime) end
---@param EntryPoint int32
function UBP_PalSupplyIncidentAction_C:ExecuteUbergraph_BP_PalSupplyIncidentAction(EntryPoint) end


