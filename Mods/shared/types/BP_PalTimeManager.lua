---@meta

---@class UBP_PalTimeManager_C : UPalTimeManager
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NPCSetTime double
UBP_PalTimeManager_C = {}

---@return UBP_PalTimeManager_C
function UBP_PalTimeManager_C:get() end

---@param DeltaTime float
function UBP_PalTimeManager_C:Tick_BP(DeltaTime) end
---@param EntryPoint int32
function UBP_PalTimeManager_C:ExecuteUbergraph_BP_PalTimeManager(EntryPoint) end


