---@meta

---@class UBP_ActionDigOut_C : UBP_ActionInteractBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field flagName FName
---@field AkEventPlayerCrafting UAkAudioEvent
UBP_ActionDigOut_C = {}

function UBP_ActionDigOut_C:OnEndAction() end
function UBP_ActionDigOut_C:OnBeginAction() end
---@param EntryPoint int32
function UBP_ActionDigOut_C:ExecuteUbergraph_BP_ActionDigOut(EntryPoint) end


