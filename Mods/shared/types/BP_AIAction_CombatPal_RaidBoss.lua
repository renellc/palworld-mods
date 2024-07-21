---@meta

---@class UBP_AIAction_CombatPal_RaidBoss_C : UBP_AIAction_CombatPal_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field IsPowerUpMode boolean
---@field ['Camp ID'] FGuid
---@field CanModeChange boolean
---@field HPOneTimer double
---@field Const_NotActionTime double
---@field PlayerNotTargetCounter int32
UBP_AIAction_CombatPal_RaidBoss_C = {}

---@param ModuleRaidBoss UPalAICombatModule_RaidBoss
function UBP_AIAction_CombatPal_RaidBoss_C:GetCombatModuleRaid(ModuleRaidBoss) end
---@param Dead FPalDeadInfo
function UBP_AIAction_CombatPal_RaidBoss_C:OnDead(Dead) end
---@param Actor AActor
---@param Status EPalStatusID
function UBP_AIAction_CombatPal_RaidBoss_C:AddStatusOneCharacter(Actor, Status) end
---@param action UPalActionBase
function UBP_AIAction_CombatPal_RaidBoss_C:OnPlayAction(action) end
UBP_AIAction_CombatPal_RaidBoss_C['Add Status by Action End Timing'] = function() end
function UBP_AIAction_CombatPal_RaidBoss_C:ChangeNextAction_ConsiderBaseCamp() end
---@param Change boolean
function UBP_AIAction_CombatPal_RaidBoss_C:ChangeCombatStartLocation(Change) end
---@param TargetActor AActor
function UBP_AIAction_CombatPal_RaidBoss_C:FindNearestCampTarget(TargetActor) end
function UBP_AIAction_CombatPal_RaidBoss_C:PlayWarpAction() end
---@param IsFar boolean
function UBP_AIAction_CombatPal_RaidBoss_C:IsFarFromBaseCamp(IsFar) end
---@param BossInfo FPalRaidBossSpawnInfo
function UBP_AIAction_CombatPal_RaidBoss_C:GetSelfPalSpawnInfo(BossInfo) end
---@param Status EPalStatusID
function UBP_AIAction_CombatPal_RaidBoss_C:AddStatusToAllTarget(Status) end
function UBP_AIAction_CombatPal_RaidBoss_C:ChangeNextAction() end
---@param ControlledPawn APawn
function UBP_AIAction_CombatPal_RaidBoss_C:ActionStart(ControlledPawn) end
---@param ControlledPawn APawn
---@param DeltaSeconds float
function UBP_AIAction_CombatPal_RaidBoss_C:ActionTick(ControlledPawn, DeltaSeconds) end
---@param EntryPoint int32
function UBP_AIAction_CombatPal_RaidBoss_C:ExecuteUbergraph_BP_AIAction_CombatPal_RaidBoss(EntryPoint) end


