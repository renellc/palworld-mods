---@meta

---@class FEyeTrackerGazeData
---@field GazeOrigin FVector
---@field GazeDirection FVector
---@field FixationPoint FVector
---@field ConfidenceValue float
---@field bIsLeftEyeBlink boolean
---@field bIsRightEyeBlink boolean
---@field LeftPupilDiameter float
---@field RightPupilDiameter float
FEyeTrackerGazeData = {}

---@return FEyeTrackerGazeData
function FEyeTrackerGazeData:get() end



---@class FEyeTrackerStereoGazeData
---@field LeftEyeOrigin FVector
---@field LeftEyeDirection FVector
---@field RightEyeOrigin FVector
---@field RightEyeDirection FVector
---@field FixationPoint FVector
---@field ConfidenceValue float
FEyeTrackerStereoGazeData = {}

---@return FEyeTrackerStereoGazeData
function FEyeTrackerStereoGazeData:get() end



---@class UEyeTrackerFunctionLibrary : UBlueprintFunctionLibrary
UEyeTrackerFunctionLibrary = {}

---@return UEyeTrackerFunctionLibrary
function UEyeTrackerFunctionLibrary:get() end

---@param PlayerController APlayerController
function UEyeTrackerFunctionLibrary:SetEyeTrackedPlayer(PlayerController) end
---@return boolean
function UEyeTrackerFunctionLibrary:IsStereoGazeDataAvailable() end
---@return boolean
function UEyeTrackerFunctionLibrary:IsEyeTrackerConnected() end
---@param OutGazeData FEyeTrackerStereoGazeData
---@return boolean
function UEyeTrackerFunctionLibrary:GetStereoGazeData(OutGazeData) end
---@param OutGazeData FEyeTrackerGazeData
---@return boolean
function UEyeTrackerFunctionLibrary:GetGazeData(OutGazeData) end


