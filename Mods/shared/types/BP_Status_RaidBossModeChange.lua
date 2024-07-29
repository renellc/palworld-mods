---@meta

---@class UBP_Status_RaidBossModeChange_C : UPalStatusBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ReGeneTime double
---@field ReGeneRate double
---@field Timer double
---@field IgnoreStatusID TArray<EPalStatusID>
---@field ['Boss Info'] FPalRaidBossSpawnInfo
UBP_Status_RaidBossModeChange_C = {}

---@return UBP_Status_RaidBossModeChange_C
function UBP_Status_RaidBossModeChange_C:get() end

---@param Element EPalElementType
---@param VisualEffect EPalVisualEffectID
function UBP_Status_RaidBossModeChange_C:FindModeChangeVisualEffectType(Element, VisualEffect) end
---@param BossInfo FPalRaidBossSpawnInfo
function UBP_Status_RaidBossModeChange_C:FindRaidBossData(BossInfo) end
function UBP_Status_RaidBossModeChange_C:OnBeginStatus() end
---@param DeltaTime float
function UBP_Status_RaidBossModeChange_C:TickStatus(DeltaTime) end
function UBP_Status_RaidBossModeChange_C:OnEndStatus() end
---@param EntryPoint int32
function UBP_Status_RaidBossModeChange_C:ExecuteUbergraph_BP_Status_RaidBossModeChange(EntryPoint) end


