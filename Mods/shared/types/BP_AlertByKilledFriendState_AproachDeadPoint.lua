---@meta

---@class UBP_AlertByKilledFriendState_AproachDeadPoint_C : UPalStateMachineStateBase_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_AlertByKilledFriendState_AproachDeadPoint_C = {}

---@return UBP_AlertByKilledFriendState_AproachDeadPoint_C
function UBP_AlertByKilledFriendState_AproachDeadPoint_C:get() end

---@param DeltaTime float
function UBP_AlertByKilledFriendState_AproachDeadPoint_C:StateTick(DeltaTime) end
function UBP_AlertByKilledFriendState_AproachDeadPoint_C:StateExit() end
---@param EntryPoint int32
function UBP_AlertByKilledFriendState_AproachDeadPoint_C:ExecuteUbergraph_BP_AlertByKilledFriendState_AproachDeadPoint(EntryPoint) end


