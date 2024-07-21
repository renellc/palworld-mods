---@meta

---@class UBP_AIActionRideCall_C : UBP_AIAction_CallBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NotifyTimer double
---@field Const_NotifyInterval double
UBP_AIActionRideCall_C = {}

---@param HitWall boolean
function UBP_AIActionRideCall_C:CheckWallRaycast(HitWall) end
---@param CanRide boolean
function UBP_AIActionRideCall_C:CanRide(CanRide) end
---@param ControlledPawn APawn
function UBP_AIActionRideCall_C:DoRide(ControlledPawn) end
---@param ControlledPawn APawn
---@param DeltaSeconds float
function UBP_AIActionRideCall_C:ActionTick(ControlledPawn, DeltaSeconds) end
---@param EntryPoint int32
function UBP_AIActionRideCall_C:ExecuteUbergraph_BP_AIActionRideCall(EntryPoint) end


