---@meta

---@class UBP_ActionDeforest_Player_C : UBP_ActionInteractBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field flagName FName
UBP_ActionDeforest_Player_C = {}

---@return UBP_ActionDeforest_Player_C
function UBP_ActionDeforest_Player_C:get() end

function UBP_ActionDeforest_Player_C:OnBeginAction() end
function UBP_ActionDeforest_Player_C:OnEndAction() end
---@param EntryPoint int32
function UBP_ActionDeforest_Player_C:ExecuteUbergraph_BP_ActionDeforest_Player(EntryPoint) end


