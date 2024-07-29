---@meta

---@class ABP_SkyCreatorLightingVolume_C : APalSkyCreatorLightingVolume
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field DefaultSceneRoot USceneComponent
ABP_SkyCreatorLightingVolume_C = {}

---@return ABP_SkyCreatorLightingVolume_C
function ABP_SkyCreatorLightingVolume_C:get() end

---@param OtherActor AActor
function ABP_SkyCreatorLightingVolume_C:ReceiveActorBeginOverlap(OtherActor) end
---@param OtherActor AActor
function ABP_SkyCreatorLightingVolume_C:ReceiveActorEndOverlap(OtherActor) end
---@param EntryPoint int32
function ABP_SkyCreatorLightingVolume_C:ExecuteUbergraph_BP_SkyCreatorLightingVolume(EntryPoint) end


