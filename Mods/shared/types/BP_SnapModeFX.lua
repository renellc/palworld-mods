---@meta

---@class ABP_SnapModeFX_C : APalSnapModeFX
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SM_Laser UStaticMeshComponent
---@field LaserRoot UStaticMeshComponent
---@field BoxEffect UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field BoxDefaultSize double
---@field LaserDefaultSize double
---@field CenterSnapEffectOffsetZ double
---@field OriginLineWorldScale FVector
---@field DefaultLineScaleXY double
---@field IsSnapMode boolean
ABP_SnapModeFX_C = {}

function ABP_SnapModeFX_C:Hide() end
---@param Location FVector
---@param Rotation FRotator
---@param BoxExtent FVector
---@param SnapStart FVector
---@param SnapEnd FVector
---@param IsAttachWall boolean
function ABP_SnapModeFX_C:ShowCenterSnap(Location, Rotation, BoxExtent, SnapStart, SnapEnd, IsAttachWall) end
---@param Location FVector
---@param Rotation FRotator
---@param BoxExtent FVector
function ABP_SnapModeFX_C:ShowSnap(Location, Rotation, BoxExtent) end
function ABP_SnapModeFX_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_SnapModeFX_C:ExecuteUbergraph_BP_SnapModeFX(EntryPoint) end


