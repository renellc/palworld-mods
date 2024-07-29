---@meta

---@class ABP_WantedPolice_NPCSpawner_C : ABP_MonoNPCSpawner_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BoxCollision UBoxComponent
---@field DummyPlayer UStaticMeshComponent
---@field SpawnPointNum int32
---@field SpawnPointRadius double
---@field RespawnDistance double
---@field NPCAIController ABP_NPCAIController_C
---@field OwnerHandle UPalIndividualCharacterHandle
---@field OwnerCharacter APalCharacter
---@field IsWanted boolean
---@field LostSearchTime double
---@field LostSearchTimer double
---@field PoliceHumanDataArray TMap<int32, FPalDataTableRowName_PalHumanData>
---@field DespawnHandle UPalIndividualCharacterHandle
---@field NPCMap TMap<UPalIndividualCharacterHandle, ABP_NPCAIController_C>
---@field PreNPCMap TMap<UPalIndividualCharacterHandle, ABP_NPCAIController_C>
---@field SpawnNum int32
---@field SpawnHeightOffset double
---@field TotalReward int32
---@field CharacterID FName
---@field FloorCheckHeight double
---@field PoliceLevel int32
---@field RespawnCheckCount int32
---@field RespawnCount int32
---@field RespawnCheckTimer double
---@field RespawnCheckTime double
---@field IsForceSpawn boolean
---@field PreLocations TArray<FVector>
---@field PreTargetReward int32
---@field TargetReward int32
---@field StuckCheckDistance double
---@field MoveFailedRespawnTime double
---@field MoveFailedRespawnTimer double
---@field MoveFailedNPCs TArray<ABP_NPCAIController_C>
---@field PoliceHate double
---@field CheckMoveFailedTimerHandle FTimerHandle
---@field CheckMoveFailedTime double
---@field NPCPreLocationMap TMap<ABP_NPCAIController_C, FVector>
---@field IsSpawnFailed boolean
---@field SpawnFailedCheckTimer FTimerHandle
---@field SpawnFailedCheckTime double
---@field CurrentWantedStateInfo FPalWorldSecurityWantedStateInfo
ABP_WantedPolice_NPCSpawner_C = {}

---@return ABP_WantedPolice_NPCSpawner_C
function ABP_WantedPolice_NPCSpawner_C:get() end

function ABP_WantedPolice_NPCSpawner_C:TrySpawnPolices() end
function ABP_WantedPolice_NPCSpawner_C:CheckSpawnFailed() end
---@param Start FVector
---@param End FVector
---@param IsWaterOrSky boolean
function ABP_WantedPolice_NPCSpawner_C:CheckWaterOrSky(Start, End, IsWaterOrSky) end
---@param AIController ABP_NPCAIController_C
---@param IsStuck boolean
function ABP_WantedPolice_NPCSpawner_C:IsStuckMove(AIController, IsStuck) end
---@param DeltaTime double
---@param IsRelease boolean
function ABP_WantedPolice_NPCSpawner_C:CheckReleaseWantedTimer(DeltaTime, IsRelease) end
---@param NPC ABP_NPCAIController_C
---@param InSight boolean
function ABP_WantedPolice_NPCSpawner_C:CheckPoliceInSight(NPC, InSight) end
---@param NoOneInSight boolean
function ABP_WantedPolice_NPCSpawner_C:IsPoliceInSight(NoOneInSight) end
---@param OrganizationType EPalOrganizationType
---@param bCitizen boolean
function ABP_WantedPolice_NPCSpawner_C:IsOrganizationCitizen(OrganizationType, bCitizen) end
---@param AIController ABP_NPCAIController_C
---@param IsFailed boolean
function ABP_WantedPolice_NPCSpawner_C:IsFailedMove(AIController, IsFailed) end
function ABP_WantedPolice_NPCSpawner_C:CheckRespawnByFailedMove() end
---@param NPCController ABP_NPCAIController_C
---@param HasWeapon boolean
function ABP_WantedPolice_NPCSpawner_C:HasWeapon(NPCController, HasWeapon) end
---@param Reporter APalCharacter
---@param Criminal APalCharacter
function ABP_WantedPolice_NPCSpawner_C:ReporterChangeAction(Reporter, Criminal) end
function ABP_WantedPolice_NPCSpawner_C:CheckReportCriminal() end
---@param DespawnHandles TArray<UPalIndividualCharacterHandle>
function ABP_WantedPolice_NPCSpawner_C:DespawnPolices(DespawnHandles) end
function ABP_WantedPolice_NPCSpawner_C:SpawnPolices() end
---@param AIController ABP_NPCAIController_C
---@param CombatAIAction UBP_AIAction_NPC_Combat_Gun_C
function ABP_WantedPolice_NPCSpawner_C:GetCombatGunBP(AIController, CombatAIAction) end
---@param TargetLocation FVector
---@param Location FVector
---@param IsValid boolean
function ABP_WantedPolice_NPCSpawner_C:CheckValidSpawnLocation(TargetLocation, Location, IsValid) end
function ABP_WantedPolice_NPCSpawner_C:ReleaseWanted() end
function ABP_WantedPolice_NPCSpawner_C:SetupOwnerAndHandle() end
---@param CharacterHandle UPalIndividualCharacterHandle
---@param IsSelf boolean
function ABP_WantedPolice_NPCSpawner_C:IsSelf(CharacterHandle, IsSelf) end
---@param CheckLocation FVector
---@param IsRespawn boolean
function ABP_WantedPolice_NPCSpawner_C:CheckRespawn(CheckLocation, IsRespawn) end
---@param Location FVector
---@param IsSuccess boolean
function ABP_WantedPolice_NPCSpawner_C:FindSpawnLocation(Location, IsSuccess) end
---@param ID FPalInstanceID
function ABP_WantedPolice_NPCSpawner_C:SpawnDelegate(ID) end
function ABP_WantedPolice_NPCSpawner_C:Despawn() end
function ABP_WantedPolice_NPCSpawner_C:Spawn() end
---@param Points TArray<FVector>
function ABP_WantedPolice_NPCSpawner_C:CorrectPoints(Points) end
function ABP_WantedPolice_NPCSpawner_C:ReceiveBeginPlay() end
---@param DeltaTime float
function ABP_WantedPolice_NPCSpawner_C:BlueprintTick(DeltaTime) end
function ABP_WantedPolice_NPCSpawner_C:OnInitializedNPC() end
function ABP_WantedPolice_NPCSpawner_C:ChangeCombatMode() end
---@param CriminalHandle UPalIndividualCharacterHandle
function ABP_WantedPolice_NPCSpawner_C:OnReleaseWanted(CriminalHandle) end
---@param CriminalHandle UPalIndividualCharacterHandle
---@param WantedStateInfo FPalWorldSecurityWantedStateInfo
function ABP_WantedPolice_NPCSpawner_C:OnWanted(CriminalHandle, WantedStateInfo) end
---@param DeltaTime double
function ABP_WantedPolice_NPCSpawner_C:DebugShowPoints(DeltaTime) end
---@param EntryPoint int32
function ABP_WantedPolice_NPCSpawner_C:ExecuteUbergraph_BP_WantedPolice_NPCSpawner(EntryPoint) end


