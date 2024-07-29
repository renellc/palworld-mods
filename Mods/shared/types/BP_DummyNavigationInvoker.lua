---@meta

---@class ABP_DummyNavigationInvoker_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PalNavigationInvoker UPalNavigationInvokerComponent
---@field DefaultSceneRoot USceneComponent
ABP_DummyNavigationInvoker_C = {}

---@return ABP_DummyNavigationInvoker_C
function ABP_DummyNavigationInvoker_C:get() end

---@param EntryPoint int32
function ABP_DummyNavigationInvoker_C:ExecuteUbergraph_BP_DummyNavigationInvoker(EntryPoint) end


