---@meta

---@class UBP_AIActionPairCall_Petting_C : UBP_AIActionPairCallBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
UBP_AIActionPairCall_Petting_C = {}

---@return UBP_AIActionPairCall_Petting_C
function UBP_AIActionPairCall_Petting_C:get() end

---@return boolean
function UBP_AIActionPairCall_Petting_C:IsMomoChyo() end
function UBP_AIActionPairCall_Petting_C:OnStartPair() end
function UBP_AIActionPairCall_Petting_C:OnFinish() end
---@param ControlledPawn APawn
function UBP_AIActionPairCall_Petting_C:ActionAbort(ControlledPawn) end
---@param EntryPoint int32
function UBP_AIActionPairCall_Petting_C:ExecuteUbergraph_BP_AIActionPairCall_Petting(EntryPoint) end


