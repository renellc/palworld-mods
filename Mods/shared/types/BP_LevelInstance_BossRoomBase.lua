---@meta

---@class ABP_LevelInstance_BossRoomBase_C : APalBossBattleLevelInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TowerBox8 UBoxComponent
---@field TowerBox7 UBoxComponent
---@field TowerBox6 UBoxComponent
---@field TowerBox5 UBoxComponent
---@field TowerBox4 UBoxComponent
---@field TowerBox3 UBoxComponent
---@field TowerBox2 UBoxComponent
---@field TowerBox1 UBoxComponent
---@field ForNavMesh_Ground UBoxComponent
---@field EdgeBox3 UBoxComponent
---@field EdgeBox2 UBoxComponent
---@field EdgeBox1 UBoxComponent
---@field EdgeBox UBoxComponent
---@field GroundCheckPoint USceneComponent
---@field WallBox4 UBoxComponent
---@field WallBox3 UBoxComponent
---@field WallBox2 UBoxComponent
---@field WallBox1 UBoxComponent
---@field CeilingBox UBoxComponent
---@field SequencerTransform UStaticMeshComponent
---@field SM_EnemyPoint UStaticMeshComponent
---@field PlayerStartPoint UStaticMeshComponent
---@field BossSpawner ABP_BossBattle_BossCharacterSpawner_C
---@field OnSetBoss FBP_LevelInstance_BossRoomBase_COnSetBoss
---@field OnLoadedLevel FBP_LevelInstance_BossRoomBase_COnLoadedLevel
---@field IsLoaded boolean
ABP_LevelInstance_BossRoomBase_C = {}

---@param BossSpawner ABP_BossBattle_BossCharacterSpawner_C
function ABP_LevelInstance_BossRoomBase_C:GetBossSpawner(BossSpawner) end
---@return FTransform
function ABP_LevelInstance_BossRoomBase_C:GetSequencerTransform() end
---@return boolean
function ABP_LevelInstance_BossRoomBase_C:CheckLevelLoaded() end
---@return FTransform
function ABP_LevelInstance_BossRoomBase_C:GetPlayerStartTransform() end
---@param Boss EPalBossType
---@param JoinPlayerNum int32
ABP_LevelInstance_BossRoomBase_C['Spawn Boss Spawner_Internal'] = function(Boss, JoinPlayerNum) end
---@param Boss APalCharacter
ABP_LevelInstance_BossRoomBase_C['Set Spawn Boss Character'] = function(Boss) end
---@param EndPlayReason EEndPlayReason::Type
function ABP_LevelInstance_BossRoomBase_C:ReceiveEndPlay(EndPlayReason) end
function ABP_LevelInstance_BossRoomBase_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_LevelInstance_BossRoomBase_C:ReceiveTick(DeltaSeconds) end
function ABP_LevelInstance_BossRoomBase_C:ResetBossLocation() end
---@param BossType EPalBossType
---@param JoinPlayerNum int32
function ABP_LevelInstance_BossRoomBase_C:SpawnBossSpawner(BossType, JoinPlayerNum) end
---@param EntryPoint int32
function ABP_LevelInstance_BossRoomBase_C:ExecuteUbergraph_BP_LevelInstance_BossRoomBase(EntryPoint) end
function ABP_LevelInstance_BossRoomBase_C:OnLoadedLevel__DelegateSignature() end
---@param Boss APalCharacter
function ABP_LevelInstance_BossRoomBase_C:OnSetBoss__DelegateSignature(Boss) end


