---@meta

---@class ABP_RaidBossModeChangeEffect_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field DefaultSceneRoot USceneComponent
---@field TargetCharacter APalCharacter
ABP_RaidBossModeChangeEffect_C = {}

---@return ABP_RaidBossModeChangeEffect_C
function ABP_RaidBossModeChangeEffect_C:get() end

---@param Pal APalCharacter
ABP_RaidBossModeChangeEffect_C['Set Target Pal'] = function(Pal) end
---@param DeltaSeconds float
function ABP_RaidBossModeChangeEffect_C:ReceiveTick(DeltaSeconds) end
function ABP_RaidBossModeChangeEffect_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_RaidBossModeChangeEffect_C:ExecuteUbergraph_BP_RaidBossModeChangeEffect(EntryPoint) end


