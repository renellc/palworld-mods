---@meta

---@class FAudioCaptureDeviceInfo
---@field DeviceName FName
---@field NumInputChannels int32
---@field SampleRate int32
FAudioCaptureDeviceInfo = {}

---@return FAudioCaptureDeviceInfo
function FAudioCaptureDeviceInfo:get() end



---@class FAudioInputDeviceInfo
---@field DeviceName FString
---@field DeviceID FString
---@field InputChannels int32
---@field PreferredSampleRate int32
---@field bSupportsHardwareAEC boolean
FAudioInputDeviceInfo = {}

---@return FAudioInputDeviceInfo
function FAudioInputDeviceInfo:get() end



---@class UAudioCapture : UAudioGenerator
UAudioCapture = {}

---@return UAudioCapture
function UAudioCapture:get() end

function UAudioCapture:StopCapturingAudio() end
function UAudioCapture:StartCapturingAudio() end
---@return boolean
function UAudioCapture:IsCapturingAudio() end
---@param OutInfo FAudioCaptureDeviceInfo
---@return boolean
function UAudioCapture:GetAudioCaptureDeviceInfo(OutInfo) end


---@class UAudioCaptureBlueprintLibrary : UBlueprintFunctionLibrary
UAudioCaptureBlueprintLibrary = {}

---@return UAudioCaptureBlueprintLibrary
function UAudioCaptureBlueprintLibrary:get() end

---@param WorldContextObject UObject
---@param OnObtainDevicesEvent FGetAvailableAudioInputDevicesOnObtainDevicesEvent
function UAudioCaptureBlueprintLibrary:GetAvailableAudioInputDevices(WorldContextObject, OnObtainDevicesEvent) end
---@param Info FAudioInputDeviceInfo
---@return FString
function UAudioCaptureBlueprintLibrary:Conv_AudioInputDeviceInfoToString(Info) end


---@class UAudioCaptureComponent : USynthComponent
---@field JitterLatencyFrames int32
UAudioCaptureComponent = {}

---@return UAudioCaptureComponent
function UAudioCaptureComponent:get() end



---@class UAudioCaptureFunctionLibrary : UBlueprintFunctionLibrary
UAudioCaptureFunctionLibrary = {}

---@return UAudioCaptureFunctionLibrary
function UAudioCaptureFunctionLibrary:get() end

---@return UAudioCapture
function UAudioCaptureFunctionLibrary:CreateAudioCapture() end


