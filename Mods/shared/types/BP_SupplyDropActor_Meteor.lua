---@meta

---@class ABP_SupplyDropActor_Meteor_C : APalSupplyDropActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Sphere UStaticMeshComponent
---@field Niagara UNiagaraComponent
---@field DefaultSceneRoot USceneComponent
ABP_SupplyDropActor_Meteor_C = {}

---@return ABP_SupplyDropActor_Meteor_C
function ABP_SupplyDropActor_Meteor_C:get() end

function ABP_SupplyDropActor_Meteor_C:ReceiveBeginPlay() end
function ABP_SupplyDropActor_Meteor_C:OnLanded_BP() end
---@param EntryPoint int32
function ABP_SupplyDropActor_Meteor_C:ExecuteUbergraph_BP_SupplyDropActor_Meteor(EntryPoint) end


