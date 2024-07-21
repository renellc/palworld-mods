---@meta

---@class ABP_GrapplingGun_Bullet_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Anchor UStaticMeshComponent
---@field Cable UCableComponent
---@field DefaultSceneRoot USceneComponent
ABP_GrapplingGun_Bullet_C = {}

---@param Start FVector
---@param End FVector
---@param IsHit boolean
---@param IsVisible boolean
function ABP_GrapplingGun_Bullet_C:UpdateCable(Start, End, IsHit, IsVisible) end
function ABP_GrapplingGun_Bullet_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_GrapplingGun_Bullet_C:ExecuteUbergraph_BP_GrapplingGun_Bullet(EntryPoint) end


