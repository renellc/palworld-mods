---@meta

---@class FLiveLinkCameraControllerUpdateFlags
---@field bApplyFieldOfView boolean
---@field bApplyAspectRatio boolean
---@field bApplyFocalLength boolean
---@field bApplyProjectionMode boolean
---@field bApplyFilmBack boolean
---@field bApplyAperture boolean
---@field bApplyFocusDistance boolean
FLiveLinkCameraControllerUpdateFlags = {}

---@return FLiveLinkCameraControllerUpdateFlags
function FLiveLinkCameraControllerUpdateFlags:get() end



---@class ULiveLinkCameraController : ULiveLinkControllerBase
---@field bUseCameraRange boolean
---@field LensFilePicker FLensFilePicker
---@field UpdateFlags FLiveLinkCameraControllerUpdateFlags
ULiveLinkCameraController = {}

---@return ULiveLinkCameraController
function ULiveLinkCameraController:get() end



