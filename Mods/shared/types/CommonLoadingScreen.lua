---@meta

---@class ILoadingProcessInterface : IInterface
ILoadingProcessInterface = {}

---@return ILoadingProcessInterface
function ILoadingProcessInterface:get() end


---@class UCommonLoadingScreenSettings : UDeveloperSettingsBackedByCVars
---@field LoadingScreenWidget FSoftClassPath
---@field LoadingScreenZOrder int32
---@field HoldLoadingScreenAdditionalSecs float
---@field LoadingScreenHeartbeatHangDuration float
---@field LogLoadingScreenHeartbeatInterval float
---@field LogLoadingScreenReasonEveryFrame boolean
---@field ForceLoadingScreenVisible boolean
---@field HoldLoadingScreenAdditionalSecsEvenInEditor boolean
---@field ForceTickLoadingScreenEvenInEditor boolean
UCommonLoadingScreenSettings = {}

---@return UCommonLoadingScreenSettings
function UCommonLoadingScreenSettings:get() end



---@class ULoadingProcessTask : UObject
ULoadingProcessTask = {}

---@return ULoadingProcessTask
function ULoadingProcessTask:get() end

function ULoadingProcessTask:Unregister() end
---@param InReason FString
function ULoadingProcessTask:SetShowLoadingScreenReason(InReason) end
---@param WorldContextObject UObject
---@param ShowLoadingScreenReason FString
---@return ULoadingProcessTask
function ULoadingProcessTask:CreateLoadingScreenProcessTask(WorldContextObject, ShowLoadingScreenReason) end


---@class ULoadingScreenManager : UGameInstanceSubsystem
ULoadingScreenManager = {}

---@return ULoadingScreenManager
function ULoadingScreenManager:get() end

---@return FString
function ULoadingScreenManager:GetDebugReasonForShowingOrHidingLoadingScreen() end


