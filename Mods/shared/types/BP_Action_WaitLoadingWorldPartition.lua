---@meta

---@class UBP_Action_WaitLoadingWorldPartition_C : UPalActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field flagName FName
---@field DelayTime double
---@field DelayTimer double
---@field PlayerCharacter APalPlayerCharacter
---@field TimeoutTimer double
---@field IsLoaded boolean
---@field WaitWPLocation FVector
---@field TimerHandle FTimerHandle
---@field forGroundTimer double
---@field forWaterTimer double
---@field IsShortRayLength boolean
UBP_Action_WaitLoadingWorldPartition_C = {}

---@return UBP_Action_WaitLoadingWorldPartition_C
function UBP_Action_WaitLoadingWorldPartition_C:get() end

---@param DeltaTime double
---@param IsEnd boolean
function UBP_Action_WaitLoadingWorldPartition_C:CheckEndAction(DeltaTime, IsEnd) end
---@param TargetActor AActor
---@param IsWater boolean
function UBP_Action_WaitLoadingWorldPartition_C:IsWaterActor(TargetActor, IsWater) end
---@param Result EGroundHitResult::Type
function UBP_Action_WaitLoadingWorldPartition_C:CheckGround(Result) end
---@param CanTimeout boolean
function UBP_Action_WaitLoadingWorldPartition_C:CanTimeout(CanTimeout) end
function UBP_Action_WaitLoadingWorldPartition_C:RequestWaitWorldPartition() end
---@param IsReWait boolean
function UBP_Action_WaitLoadingWorldPartition_C:CheckLoadLocationDistance(IsReWait) end
---@param NewParam UPalHUDDispatchParameter_FadeWidget
function UBP_Action_WaitLoadingWorldPartition_C:GetFadeInParameter(NewParam) end
function UBP_Action_WaitLoadingWorldPartition_C:ResetCamera() end
---@param Disable boolean
function UBP_Action_WaitLoadingWorldPartition_C:SetMoveDisable(Disable) end
function UBP_Action_WaitLoadingWorldPartition_C:OnBeginAction() end
function UBP_Action_WaitLoadingWorldPartition_C:OnEndAction() end
---@param DeltaTime float
function UBP_Action_WaitLoadingWorldPartition_C:TickAction(DeltaTime) end
function UBP_Action_WaitLoadingWorldPartition_C:OnCompleteLoad() end
function UBP_Action_WaitLoadingWorldPartition_C:OnBreakAction() end
---@param EntryPoint int32
function UBP_Action_WaitLoadingWorldPartition_C:ExecuteUbergraph_BP_Action_WaitLoadingWorldPartition(EntryPoint) end


