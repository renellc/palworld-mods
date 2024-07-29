---@meta

---@class ABP_SupplyDropActor_Capsule_C : APalSupplyDropActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SM_frameContainer_B5 UStaticMeshComponent
---@field SM_frameContainer_B4 UStaticMeshComponent
---@field SM_frameContainer_B3 UStaticMeshComponent
---@field SM_frameContainer_B2 UStaticMeshComponent
---@field SM_frameContainer_B1 UStaticMeshComponent
---@field SM_frameContainer_B UStaticMeshComponent
---@field Cylinder UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
ABP_SupplyDropActor_Capsule_C = {}

---@return ABP_SupplyDropActor_Capsule_C
function ABP_SupplyDropActor_Capsule_C:get() end

function ABP_SupplyDropActor_Capsule_C:ReceiveBeginPlay() end
function ABP_SupplyDropActor_Capsule_C:OnLanded_BP() end
---@param EntryPoint int32
function ABP_SupplyDropActor_Capsule_C:ExecuteUbergraph_BP_SupplyDropActor_Capsule(EntryPoint) end


