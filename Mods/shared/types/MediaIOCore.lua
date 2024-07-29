---@meta

---@class FMediaCaptureOptions
---@field OverrunAction EMediaCaptureOverrunAction
---@field Crop EMediaCaptureCroppingType
---@field CustomCapturePoint FIntPoint
---@field bResizeSourceBuffer boolean
---@field bSkipFrameWhenRunningExpensiveTasks boolean
---@field bConvertToDesiredPixelFormat boolean
---@field bForceAlphaToOneOnConversion boolean
---@field bApplyLinearToSRGBConversion boolean
---@field bAutostopOnCapture boolean
---@field NumberOfFramesToCapture int32
FMediaCaptureOptions = {}

---@return FMediaCaptureOptions
function FMediaCaptureOptions:get() end



---@class FMediaIOAutoDetectableTimecodeFormat_Backup
---@field TimecodeFormat EMediaIOTimecodeFormat
---@field bAutoDetect boolean
FMediaIOAutoDetectableTimecodeFormat_Backup = {}

---@return FMediaIOAutoDetectableTimecodeFormat_Backup
function FMediaIOAutoDetectableTimecodeFormat_Backup:get() end



---@class FMediaIOConfiguration
---@field bIsInput boolean
---@field MediaConnection FMediaIOConnection
---@field MediaMode FMediaIOMode
FMediaIOConfiguration = {}

---@return FMediaIOConfiguration
function FMediaIOConfiguration:get() end



---@class FMediaIOConnection
---@field Device FMediaIODevice
---@field protocol FName
---@field TransportType EMediaIOTransportType
---@field QuadTransportType EMediaIOQuadLinkTransportType
---@field PortIdentifier int32
FMediaIOConnection = {}

---@return FMediaIOConnection
function FMediaIOConnection:get() end



---@class FMediaIODevice
---@field DeviceName FName
---@field DeviceIdentifier int32
FMediaIODevice = {}

---@return FMediaIODevice
function FMediaIODevice:get() end



---@class FMediaIOInputConfiguration
---@field MediaConfiguration FMediaIOConfiguration
---@field InputType EMediaIOInputType
---@field KeyPortIdentifier int32
FMediaIOInputConfiguration = {}

---@return FMediaIOInputConfiguration
function FMediaIOInputConfiguration:get() end



---@class FMediaIOMode
---@field FrameRate FFrameRate
---@field Resolution FIntPoint
---@field Standard EMediaIOStandardType
---@field DeviceModeIdentifier int32
FMediaIOMode = {}

---@return FMediaIOMode
function FMediaIOMode:get() end



---@class FMediaIOOutputConfiguration
---@field MediaConfiguration FMediaIOConfiguration
---@field OutputType EMediaIOOutputType
---@field KeyPortIdentifier int32
---@field OutputReference EMediaIOReferenceType
---@field ReferencePortIdentifier int32
FMediaIOOutputConfiguration = {}

---@return FMediaIOOutputConfiguration
function FMediaIOOutputConfiguration:get() end



---@class FMediaIOVideoTimecodeConfiguration
---@field MediaConfiguration FMediaIOConfiguration
---@field TimecodeFormat EMediaIOAutoDetectableTimecodeFormat
FMediaIOVideoTimecodeConfiguration = {}

---@return FMediaIOVideoTimecodeConfiguration
function FMediaIOVideoTimecodeConfiguration:get() end



---@class UFileMediaCapture : UMediaCapture
UFileMediaCapture = {}

---@return UFileMediaCapture
function UFileMediaCapture:get() end


---@class UFileMediaOutput : UMediaOutput
---@field WriteOptions FImageWriteOptions
---@field FilePath FDirectoryPath
---@field BaseFileName FString
---@field bOverrideDesiredSize boolean
---@field DesiredSize FIntPoint
---@field bOverridePixelFormat boolean
---@field DesiredPixelFormat EFileMediaOutputPixelFormat
---@field bInvertAlpha boolean
UFileMediaOutput = {}

---@return UFileMediaOutput
function UFileMediaOutput:get() end



---@class UMediaCapture : UObject
---@field OnStateChanged FMediaCaptureOnStateChanged
---@field MediaOutput UMediaOutput
---@field CapturingRenderTarget UTextureRenderTarget2D
UMediaCapture = {}

---@return UMediaCapture
function UMediaCapture:get() end

---@param RenderTarget UTextureRenderTarget2D
---@return boolean
function UMediaCapture:UpdateTextureRenderTarget2D(RenderTarget) end
---@param bAllowPendingFrameToBeProcess boolean
function UMediaCapture:StopCapture(bAllowPendingFrameToBeProcess) end
---@param InMediaOutput UMediaOutput
function UMediaCapture:SetMediaOutput(InMediaOutput) end
---@return EMediaCaptureState
function UMediaCapture:GetState() end
---@return FIntPoint
function UMediaCapture:GetDesiredSize() end
---@return EPixelFormat
function UMediaCapture:GetDesiredPixelFormat() end
---@param RenderTarget UTextureRenderTarget2D
---@param CaptureOptions FMediaCaptureOptions
---@return boolean
function UMediaCapture:CaptureTextureRenderTarget2D(RenderTarget, CaptureOptions) end
---@param CaptureOptions FMediaCaptureOptions
---@return boolean
function UMediaCapture:CaptureActiveSceneViewport(CaptureOptions) end


---@class UMediaIOCoreSubsystem : UEngineSubsystem
UMediaIOCoreSubsystem = {}

---@return UMediaIOCoreSubsystem
function UMediaIOCoreSubsystem:get() end


---@class UMediaOutput : UObject
---@field NumberOfTextureBuffers int32
UMediaOutput = {}

---@return UMediaOutput
function UMediaOutput:get() end

---@param OutFailureReason FString
---@return boolean
function UMediaOutput:Validate(OutFailureReason) end
---@return UMediaCapture
function UMediaOutput:CreateMediaCapture() end


