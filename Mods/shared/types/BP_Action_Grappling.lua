---@meta

---@class UBP_Action_Grappling_C : UPalActionBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MoveSpeed double
---@field flagName FName
---@field IsClimb boolean
---@field JumpPower double
---@field IsEndCompleted boolean
---@field MeshRotationCache FQuat
---@field MeshLocationCache FVector
UBP_Action_Grappling_C = {}

function UBP_Action_Grappling_C:TryClimb() end
function UBP_Action_Grappling_C:GetOffRide() end
---@param DeltaTime float
function UBP_Action_Grappling_C:UpdateMeshRotation(DeltaTime) end
---@param Velocity FVector
function UBP_Action_Grappling_C:SetPlayerVelocity(Velocity) end
---@param HitLocation FVector
---@param CoolTimeRate double
function UBP_Action_Grappling_C:NotifyStartToWeapon(HitLocation, CoolTimeRate) end
function UBP_Action_Grappling_C:NotifyFinishToWeapon() end
---@param Disable boolean
function UBP_Action_Grappling_C:DisableShooter(Disable) end
---@param NotifyName FName
function UBP_Action_Grappling_C:OnNotifyEnd_6CB4C09840328B4E3D8F4680A0904209(NotifyName) end
---@param NotifyName FName
function UBP_Action_Grappling_C:OnNotifyBegin_6CB4C09840328B4E3D8F4680A0904209(NotifyName) end
---@param NotifyName FName
function UBP_Action_Grappling_C:OnInterrupted_6CB4C09840328B4E3D8F4680A0904209(NotifyName) end
---@param NotifyName FName
function UBP_Action_Grappling_C:OnBlendOut_6CB4C09840328B4E3D8F4680A0904209(NotifyName) end
---@param NotifyName FName
function UBP_Action_Grappling_C:OnCompleted_6CB4C09840328B4E3D8F4680A0904209(NotifyName) end
function UBP_Action_Grappling_C:OnBreakAction() end
---@param DeltaTime float
function UBP_Action_Grappling_C:TickAction(DeltaTime) end
function UBP_Action_Grappling_C:OnEndAction() end
function UBP_Action_Grappling_C:OnBeginAction() end
---@param EntryPoint int32
function UBP_Action_Grappling_C:ExecuteUbergraph_BP_Action_Grappling(EntryPoint) end


