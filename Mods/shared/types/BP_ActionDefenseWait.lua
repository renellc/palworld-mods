---@meta

---@class UBP_ActionDefenseWait_C : UPalActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field tempMontage UAnimMontage
---@field ActionType EPalActionType
---@field MontageType EPalGeneralMontageType
UBP_ActionDefenseWait_C = {}

---@return UBP_ActionDefenseWait_C
function UBP_ActionDefenseWait_C:get() end

function UBP_ActionDefenseWait_C:SetupMontage() end
function UBP_ActionDefenseWait_C:OnBeginAction() end
function UBP_ActionDefenseWait_C:OnEndAction() end
---@param DeltaTime float
function UBP_ActionDefenseWait_C:TickAction(DeltaTime) end
---@param EntryPoint int32
function UBP_ActionDefenseWait_C:ExecuteUbergraph_BP_ActionDefenseWait(EntryPoint) end


