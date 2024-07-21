---@meta

---@class ABP_MonsterAIController_MarchantPal_C : ABP_MonsterAIControllerBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Spawned Position'] FVector
---@field EscapeMode boolean
---@field DespawnDelay boolean
ABP_MonsterAIController_MarchantPal_C = {}

function ABP_MonsterAIController_MarchantPal_C:SetupSpawnedPosition() end
---@param IsEscapeEnd boolean
function ABP_MonsterAIController_MarchantPal_C:IsEscapeEnd(IsEscapeEnd) end
---@param DeltaSeconds float
function ABP_MonsterAIController_MarchantPal_C:ReceiveTick(DeltaSeconds) end
---@param PossessedPawn APawn
function ABP_MonsterAIController_MarchantPal_C:ReceivePossess(PossessedPawn) end
---@param ID FPalInstanceID
ABP_MonsterAIController_MarchantPal_C['カスタムイベント'] = function(ID) end
---@param TargetActor AActor
function ABP_MonsterAIController_MarchantPal_C:StartEscape(TargetActor) end
---@param DeadInfo FPalDeadInfo
ABP_MonsterAIController_MarchantPal_C['カスタムイベント_1'] = function(DeadInfo) end
---@param VisualEffect UPalVisualEffectBase
ABP_MonsterAIController_MarchantPal_C['カスタムイベント_2'] = function(VisualEffect) end
---@param EntryPoint int32
function ABP_MonsterAIController_MarchantPal_C:ExecuteUbergraph_BP_MonsterAIController_MarchantPal(EntryPoint) end


