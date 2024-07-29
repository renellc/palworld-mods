---@meta

---@class UBP_Status_RarePal_C : UPalStatusBase
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_Status_RarePal_C = {}

---@return UBP_Status_RarePal_C
function UBP_Status_RarePal_C:get() end

function UBP_Status_RarePal_C:OnBeginStatus() end
---@param EntryPoint int32
function UBP_Status_RarePal_C:ExecuteUbergraph_BP_Status_RarePal(EntryPoint) end


