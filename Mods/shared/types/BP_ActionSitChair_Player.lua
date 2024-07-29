---@meta

---@class UBP_ActionSitChair_Player_C : UBP_ActionInteractBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Flag Name'] FName
UBP_ActionSitChair_Player_C = {}

---@return UBP_ActionSitChair_Player_C
function UBP_ActionSitChair_Player_C:get() end

function UBP_ActionSitChair_Player_C:OnBeginAction() end
function UBP_ActionSitChair_Player_C:OnEndAction() end
---@param EntryPoint int32
function UBP_ActionSitChair_Player_C:ExecuteUbergraph_BP_ActionSitChair_Player(EntryPoint) end


