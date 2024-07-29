---@meta

---@class ABP_BossBattle_BossCharacterSpawner_C : AActor
---@field StaticMesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field BossCharacterHandle UPalIndividualCharacterHandle
---@field StartPlayerNum int32
---@field OnOtherSpawned FBP_BossBattle_BossCharacterSpawner_COnOtherSpawned
---@field OtherCharacterHandles TArray<UPalIndividualCharacterHandle>
ABP_BossBattle_BossCharacterSpawner_C = {}

---@return ABP_BossBattle_BossCharacterSpawner_C
function ABP_BossBattle_BossCharacterSpawner_C:get() end

---@param BitFlag int32
---@param Result boolean
function ABP_BossBattle_BossCharacterSpawner_C:GetDebugNo(BitFlag, Result) end
---@param targetHandle UPalIndividualCharacterHandle
---@param Offset FVector
function ABP_BossBattle_BossCharacterSpawner_C:SetCharacterStartLocation(targetHandle, Offset) end
---@param SpawnCharacter APalCharacter
function ABP_BossBattle_BossCharacterSpawner_C:SetMultiPlayerHPRate(SpawnCharacter) end
---@param ID FPalInstanceID
function ABP_BossBattle_BossCharacterSpawner_C:SpawnOtherDelegate(ID) end
---@param CharacterID FName
---@param Level int32
---@param AIController TSubclassOf<APalAIController>
---@param IsOutAreaSpawn boolean
function ABP_BossBattle_BossCharacterSpawner_C:RequestOtherSpawn(CharacterID, Level, AIController, IsOutAreaSpawn) end
function ABP_BossBattle_BossCharacterSpawner_C:SetBossLocationToStartPoint() end
---@param Skip boolean
function ABP_BossBattle_BossCharacterSpawner_C:IsSkipCutscene(Skip) end
---@param ID FPalInstanceID
function ABP_BossBattle_BossCharacterSpawner_C:SpawnBossDelegate(ID) end
function ABP_BossBattle_BossCharacterSpawner_C:RequestDespawn() end
---@param CharacterID FName
---@param Level int32
function ABP_BossBattle_BossCharacterSpawner_C:RequestBossSpawn(CharacterID, Level) end
---@param SpawnCharacterHandle UPalIndividualCharacterHandle
function ABP_BossBattle_BossCharacterSpawner_C:OnOtherSpawned__DelegateSignature(SpawnCharacterHandle) end


