---@meta

---@class UBP_ActionInteractBase_C : UBP_ActionSimpleMonoMontage_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractFlagName FName
---@field MovableTimer FTimerHandle
UBP_ActionInteractBase_C = {}

---@param Component UPalCharacterMovementComponent
function UBP_ActionInteractBase_C:OnJumpDelegate(Component) end
function UBP_ActionInteractBase_C:EnableMove() end
function UBP_ActionInteractBase_C:UnbindDelegates() end
function UBP_ActionInteractBase_C:CancelInteract() end
function UBP_ActionInteractBase_C:BindDelegates() end
---@param isDisable boolean
function UBP_ActionInteractBase_C:SetPlayerFlags(isDisable) end
function UBP_ActionInteractBase_C:OnBeginAction() end
function UBP_ActionInteractBase_C:OnEndAction() end
---@param EntryPoint int32
function UBP_ActionInteractBase_C:ExecuteUbergraph_BP_ActionInteractBase(EntryPoint) end


