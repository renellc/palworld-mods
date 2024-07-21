---@meta

---@class UBP_PalRaidBossComponent_C : UPalRaidBossComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VolumeActor AActor
UBP_PalRaidBossComponent_C = {}

function UBP_PalRaidBossComponent_C:DespawnVolume() end
UBP_PalRaidBossComponent_C['Spawn Volume'] = function() end
---@param ID FPalInstanceID
UBP_PalRaidBossComponent_C['Spawn Delegate'] = function(ID) end
---@param SpawnInfo FPalRaidBossSpawnInfo
---@param Index int32
---@param SpawnerTransform FTransform
---@param Handle UPalIndividualCharacterHandle
UBP_PalRaidBossComponent_C['Spawn One Pal'] = function(SpawnInfo, Index, SpawnerTransform, Handle) end
---@param SpawnInfo FPalRaidBossSpawnInfoList
---@param SpawnTransform FTransform
function UBP_PalRaidBossComponent_C:SpawnRaidBoss_BP(SpawnInfo, SpawnTransform) end
---@param DeltaSeconds float
function UBP_PalRaidBossComponent_C:ReceiveTick(DeltaSeconds) end
---@param EndPlayReason EEndPlayReason::Type
function UBP_PalRaidBossComponent_C:ReceiveEndPlay(EndPlayReason) end
function UBP_PalRaidBossComponent_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function UBP_PalRaidBossComponent_C:ExecuteUbergraph_BP_PalRaidBossComponent(EntryPoint) end


