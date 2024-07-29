---@meta

---@class FLiveLinkTransformControllerData
---@field bWorldTransform boolean
---@field bUseLocation boolean
---@field bUseRotation boolean
---@field bUseScale boolean
---@field bSweep boolean
---@field bTeleport boolean
FLiveLinkTransformControllerData = {}

---@return FLiveLinkTransformControllerData
function FLiveLinkTransformControllerData:get() end



---@class ULiveLinkComponentController : UActorComponent
---@field SubjectRepresentation FLiveLinkSubjectRepresentation
---@field ControllerMap TMap<TSubclassOf<ULiveLinkRole>, ULiveLinkControllerBase>
---@field bUpdateInEditor boolean
---@field OnLiveLinkUpdated FLiveLinkComponentControllerOnLiveLinkUpdated
---@field OnControllerMapUpdatedDelegate FLiveLinkComponentControllerOnControllerMapUpdatedDelegate
---@field bDisableEvaluateLiveLinkWhenSpawnable boolean
---@field bEvaluateLiveLink boolean
---@field bUpdateInPreviewEditor boolean
ULiveLinkComponentController = {}

---@return ULiveLinkComponentController
function ULiveLinkComponentController:get() end

---@param InSubjectRepresentation FLiveLinkSubjectRepresentation
function ULiveLinkComponentController:SetSubjectRepresentation(InSubjectRepresentation) end
---@return FLiveLinkSubjectRepresentation
function ULiveLinkComponentController:GetSubjectRepresentation() end


---@class ULiveLinkComponentSettings : UObject
---@field DefaultControllerForRole TMap<TSubclassOf<ULiveLinkRole>, TSubclassOf<ULiveLinkControllerBase>>
ULiveLinkComponentSettings = {}

---@return ULiveLinkComponentSettings
function ULiveLinkComponentSettings:get() end



---@class ULiveLinkControllerBase : UObject
---@field ComponentPicker FComponentReference
ULiveLinkControllerBase = {}

---@return ULiveLinkControllerBase
function ULiveLinkControllerBase:get() end



---@class ULiveLinkLightController : ULiveLinkControllerBase
ULiveLinkLightController = {}

---@return ULiveLinkLightController
function ULiveLinkLightController:get() end


---@class ULiveLinkTransformController : ULiveLinkControllerBase
---@field TransformData FLiveLinkTransformControllerData
ULiveLinkTransformController = {}

---@return ULiveLinkTransformController
function ULiveLinkTransformController:get() end



