---@meta

---@class ABP_Prop_Base_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Mesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field HandleLocation FVector
---@field HandleRotation FRotator
ABP_Prop_Base_C = {}

---@return ABP_Prop_Base_C
function ABP_Prop_Base_C:get() end

---@param EntryPoint int32
function ABP_Prop_Base_C:ExecuteUbergraph_BP_Prop_Base(EntryPoint) end


