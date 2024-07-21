---@meta

---@class UBP_PalSupplyIncident_C : UPalRandomIncidentBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Parameter UPalIncidentDynamicParameterRandom
---@field SettingDT UDataTable
---@field action UPalRandomIncidentActionBase
---@field SpawnedNpcNames TArray<FName>
---@field NPCSpawner ABP_PalRandomIncidentNPCSpawner_C
---@field ExcludedEvenOnce boolean
---@field InsideActionAreaEvenOnce boolean
---@field OutbreakMonsters TArray<FPalRandomIncidentSpawnMonsterData>
---@field OutbreakMonsterNames TArray<FName>
UBP_PalSupplyIncident_C = {}

---@param IsLivePal boolean
function UBP_PalSupplyIncident_C:CheckLive(IsLivePal) end
---@param InName FName
function UBP_PalSupplyIncident_C:ShowErrorNameDuplication(InName) end
function UBP_PalSupplyIncident_C:SetupOutbreakData() end
---@param GroupNo TArray<int32>
function UBP_PalSupplyIncident_C:GetGroupList(GroupNo) end
---@param NotifyType EPalRandomIncidentActionNotifyType
function UBP_PalSupplyIncident_C:OnRandomIncidentActionNotify(NotifyType) end
---@param isDisable boolean
function UBP_PalSupplyIncident_C:SetDisableFlagForNPCSpawner_BP(isDisable) end
---@param DestroyedActor AActor
function UBP_PalSupplyIncident_C:OnNPCSpawnerDestroyed(DestroyedActor) end
---@param RowName FName
function UBP_PalSupplyIncident_C:OnNpcDespawned(RowName) end
function UBP_PalSupplyIncident_C:TerminateAction() end
function UBP_PalSupplyIncident_C:OnEndProc() end
---@return APalRandomIncidentNPCSpawner
function UBP_PalSupplyIncident_C:GetNPCSpawner() end
function UBP_PalSupplyIncident_C:StartAction() end
---@return boolean
function UBP_PalSupplyIncident_C:IsExcludeOtherPal() end
function UBP_PalSupplyIncident_C:ExcludeOtherPal() end
---@param AreaType EPalRandomIncidentSpawnerAreaType
---@param PlayerId int32
function UBP_PalSupplyIncident_C:OnExitAnyArea_Impl(AreaType, PlayerId) end
---@param AreaType EPalRandomIncidentSpawnerAreaType
---@param PlayerId int32
function UBP_PalSupplyIncident_C:OnEnterAnyArea_Impl(AreaType, PlayerId) end
---@param IsSpawned boolean
function UBP_PalSupplyIncident_C:IsAllNpcSpawned(IsSpawned) end
---@param RowName FName
function UBP_PalSupplyIncident_C:OnNpcSpawned(RowName) end
---@param SpawnDataList UDataTable
UBP_PalSupplyIncident_C['Spawn NPCs'] = function(SpawnDataList) end
---@param SpawnDataList UDataTable
UBP_PalSupplyIncident_C['Spawn Monsters'] = function(SpawnDataList) end
UBP_PalSupplyIncident_C['Spawn Characters'] = function() end
function UBP_PalSupplyIncident_C:OnGroupCreated() end
---@param CharacterIds TArray<FName>
function UBP_PalSupplyIncident_C:CreateCharacterIdList(CharacterIds) end
---@param Result boolean
---@param Data FPalRandomIncidentSettings
UBP_PalSupplyIncident_C['Get Setting Table Row'] = function(Result, Data) end
---@param IncidentSpawner APalRandomIncidentSpawnerBase
UBP_PalSupplyIncident_C['Get Incident Spawner'] = function(IncidentSpawner) end
function UBP_PalSupplyIncident_C:CreateAction() end
function UBP_PalSupplyIncident_C:CreateNpcSpawner() end
function UBP_PalSupplyIncident_C:SetupIncident() end
function UBP_PalSupplyIncident_C:OnBegin() end
function UBP_PalSupplyIncident_C:BindIDelegate_AreaInOut() end
function UBP_PalSupplyIncident_C:UnbindIDelegate_AreaInOut() end
function UBP_PalSupplyIncident_C:BindDelegate_NpcSpawner() end
function UBP_PalSupplyIncident_C:UnbindDelegate_NpcSpawner() end
---@param AreaType EPalRandomIncidentSpawnerAreaType
---@param PlayerId int32
function UBP_PalSupplyIncident_C:OnEnterAnyAreaEvent(AreaType, PlayerId) end
---@param AreaType EPalRandomIncidentSpawnerAreaType
---@param PlayerId int32
function UBP_PalSupplyIncident_C:OnExitAnyAreaEvent(AreaType, PlayerId) end
function UBP_PalSupplyIncident_C:OnEnd() end
function UBP_PalSupplyIncident_C:BindDelegate_Action() end
function UBP_PalSupplyIncident_C:UnbindDelegate_Action() end
---@param DeltaTime float
function UBP_PalSupplyIncident_C:Tick(DeltaTime) end
---@param EntryPoint int32
function UBP_PalSupplyIncident_C:ExecuteUbergraph_BP_PalSupplyIncident(EntryPoint) end


