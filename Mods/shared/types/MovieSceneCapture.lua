---@meta

---@class FCaptureResolution
---@field ResX int32
---@field ResY int32
FCaptureResolution = {}

---@return FCaptureResolution
function FCaptureResolution:get() end



---@class FCapturedPixels
FCapturedPixels = {}

---@return FCapturedPixels
function FCapturedPixels:get() end


---@class FCapturedPixelsID
---@field Identifiers TMap<FName, FName>
FCapturedPixelsID = {}

---@return FCapturedPixelsID
function FCapturedPixelsID:get() end



---@class FCompositionGraphCapturePasses
---@field Value TArray<FString>
FCompositionGraphCapturePasses = {}

---@return FCompositionGraphCapturePasses
function FCompositionGraphCapturePasses:get() end



---@class FFrameMetrics
---@field TotalElapsedTime float
---@field FrameDelta float
---@field FrameNumber int32
---@field NumDroppedFrames int32
FFrameMetrics = {}

---@return FFrameMetrics
function FFrameMetrics:get() end



---@class FMovieSceneCaptureSettings
---@field OutputDirectory FDirectoryPath
---@field GameModeOverride TSubclassOf<AGameModeBase>
---@field OutputFormat FString
---@field bOverwriteExisting boolean
---@field bUseRelativeFrameNumbers boolean
---@field HandleFrames int32
---@field MovieExtension FString
---@field ZeroPadFrameNumbers uint8
---@field FrameRate FFrameRate
---@field bUseCustomFrameRate boolean
---@field CustomFrameRate FFrameRate
---@field Resolution FCaptureResolution
---@field bEnableTextureStreaming boolean
---@field bCinematicEngineScalability boolean
---@field bCinematicMode boolean
---@field bAllowMovement boolean
---@field bAllowTurning boolean
---@field bShowPlayer boolean
---@field bShowHUD boolean
---@field bUsePathTracer boolean
---@field PathTracerSamplePerPixel int32
FMovieSceneCaptureSettings = {}

---@return FMovieSceneCaptureSettings
function FMovieSceneCaptureSettings:get() end



---@class IMovieSceneCaptureInterface : IInterface
IMovieSceneCaptureInterface = {}

---@return IMovieSceneCaptureInterface
function IMovieSceneCaptureInterface:get() end


---@class UCompositionGraphCaptureProtocol : UMovieSceneImageCaptureProtocolBase
---@field IncludeRenderPasses FCompositionGraphCapturePasses
---@field bCaptureFramesInHDR boolean
---@field HDRCompressionQuality int32
---@field CaptureGamut EHDRCaptureGamut
---@field PostProcessingMaterial FSoftObjectPath
---@field bDisableScreenPercentage boolean
---@field PostProcessingMaterialPtr UMaterialInterface
UCompositionGraphCaptureProtocol = {}

---@return UCompositionGraphCaptureProtocol
function UCompositionGraphCaptureProtocol:get() end



---@class UCompressedImageSequenceProtocol : UImageSequenceProtocol
---@field CompressionQuality int32
UCompressedImageSequenceProtocol = {}

---@return UCompressedImageSequenceProtocol
function UCompressedImageSequenceProtocol:get() end



---@class UFrameGrabberProtocol : UMovieSceneImageCaptureProtocolBase
UFrameGrabberProtocol = {}

---@return UFrameGrabberProtocol
function UFrameGrabberProtocol:get() end


---@class UImageSequenceProtocol : UFrameGrabberProtocol
UImageSequenceProtocol = {}

---@return UImageSequenceProtocol
function UImageSequenceProtocol:get() end


---@class UImageSequenceProtocol_BMP : UImageSequenceProtocol
UImageSequenceProtocol_BMP = {}

---@return UImageSequenceProtocol_BMP
function UImageSequenceProtocol_BMP:get() end


---@class UImageSequenceProtocol_EXR : UImageSequenceProtocol
---@field bCompressed boolean
---@field CaptureGamut EHDRCaptureGamut
UImageSequenceProtocol_EXR = {}

---@return UImageSequenceProtocol_EXR
function UImageSequenceProtocol_EXR:get() end



---@class UImageSequenceProtocol_JPG : UCompressedImageSequenceProtocol
UImageSequenceProtocol_JPG = {}

---@return UImageSequenceProtocol_JPG
function UImageSequenceProtocol_JPG:get() end


---@class UImageSequenceProtocol_PNG : UCompressedImageSequenceProtocol
UImageSequenceProtocol_PNG = {}

---@return UImageSequenceProtocol_PNG
function UImageSequenceProtocol_PNG:get() end


---@class ULevelCapture : UMovieSceneCapture
---@field bAutoStartCapture boolean
---@field PrerequisiteActorId FGuid
ULevelCapture = {}

---@return ULevelCapture
function ULevelCapture:get() end



---@class UMasterAudioSubmixCaptureProtocol : UMovieSceneAudioCaptureProtocolBase
---@field Filename FString
UMasterAudioSubmixCaptureProtocol = {}

---@return UMasterAudioSubmixCaptureProtocol
function UMasterAudioSubmixCaptureProtocol:get() end



---@class UMovieSceneAudioCaptureProtocolBase : UMovieSceneCaptureProtocolBase
UMovieSceneAudioCaptureProtocolBase = {}

---@return UMovieSceneAudioCaptureProtocolBase
function UMovieSceneAudioCaptureProtocolBase:get() end


---@class UMovieSceneCapture : UObject
---@field ImageCaptureProtocolType FSoftClassPath
---@field AudioCaptureProtocolType FSoftClassPath
---@field ImageCaptureProtocol UMovieSceneImageCaptureProtocolBase
---@field AudioCaptureProtocol UMovieSceneAudioCaptureProtocolBase
---@field Settings FMovieSceneCaptureSettings
---@field bUseSeparateProcess boolean
---@field bCloseEditorWhenCaptureStarts boolean
---@field AdditionalCommandLineArguments FString
---@field InheritedCommandLineArguments FString
UMovieSceneCapture = {}

---@return UMovieSceneCapture
function UMovieSceneCapture:get() end

---@param ProtocolType TSubclassOf<UMovieSceneCaptureProtocolBase>
function UMovieSceneCapture:SetImageCaptureProtocolType(ProtocolType) end
---@param ProtocolType TSubclassOf<UMovieSceneCaptureProtocolBase>
function UMovieSceneCapture:SetAudioCaptureProtocolType(ProtocolType) end
---@return UMovieSceneCaptureProtocolBase
function UMovieSceneCapture:GetImageCaptureProtocol() end
---@return UMovieSceneCaptureProtocolBase
function UMovieSceneCapture:GetAudioCaptureProtocol() end


---@class UMovieSceneCaptureEnvironment : UObject
UMovieSceneCaptureEnvironment = {}

---@return UMovieSceneCaptureEnvironment
function UMovieSceneCaptureEnvironment:get() end

---@return boolean
function UMovieSceneCaptureEnvironment:IsCaptureInProgress() end
---@return int32
function UMovieSceneCaptureEnvironment:GetCaptureFrameNumber() end
---@return float
function UMovieSceneCaptureEnvironment:GetCaptureElapsedTime() end
---@return UMovieSceneImageCaptureProtocolBase
function UMovieSceneCaptureEnvironment:FindImageCaptureProtocol() end
---@return UMovieSceneAudioCaptureProtocolBase
function UMovieSceneCaptureEnvironment:FindAudioCaptureProtocol() end


---@class UMovieSceneCaptureProtocolBase : UObject
---@field State EMovieSceneCaptureProtocolState
UMovieSceneCaptureProtocolBase = {}

---@return UMovieSceneCaptureProtocolBase
function UMovieSceneCaptureProtocolBase:get() end

---@return boolean
function UMovieSceneCaptureProtocolBase:IsCapturing() end
---@return EMovieSceneCaptureProtocolState
function UMovieSceneCaptureProtocolBase:GetState() end


---@class UMovieSceneImageCaptureProtocolBase : UMovieSceneCaptureProtocolBase
UMovieSceneImageCaptureProtocolBase = {}

---@return UMovieSceneImageCaptureProtocolBase
function UMovieSceneImageCaptureProtocolBase:get() end


---@class UNullAudioCaptureProtocol : UMovieSceneAudioCaptureProtocolBase
UNullAudioCaptureProtocol = {}

---@return UNullAudioCaptureProtocol
function UNullAudioCaptureProtocol:get() end


---@class UUserDefinedCaptureProtocol : UMovieSceneImageCaptureProtocolBase
---@field World UWorld
UUserDefinedCaptureProtocol = {}

---@return UUserDefinedCaptureProtocol
function UUserDefinedCaptureProtocol:get() end

function UUserDefinedCaptureProtocol:StopCapturingFinalPixels() end
---@param StreamID FCapturedPixelsID
function UUserDefinedCaptureProtocol:StartCapturingFinalPixels(StreamID) end
---@param Buffer UTexture
---@param BufferID FCapturedPixelsID
function UUserDefinedCaptureProtocol:ResolveBuffer(Buffer, BufferID) end
function UUserDefinedCaptureProtocol:OnWarmUp() end
function UUserDefinedCaptureProtocol:OnTick() end
function UUserDefinedCaptureProtocol:OnStartCapture() end
---@return boolean
function UUserDefinedCaptureProtocol:OnSetup() end
function UUserDefinedCaptureProtocol:OnPreTick() end
---@param Pixels FCapturedPixels
---@param ID FCapturedPixelsID
---@param FrameMetrics FFrameMetrics
function UUserDefinedCaptureProtocol:OnPixelsReceived(Pixels, ID, FrameMetrics) end
function UUserDefinedCaptureProtocol:OnPauseCapture() end
function UUserDefinedCaptureProtocol:OnFinalize() end
function UUserDefinedCaptureProtocol:OnCaptureFrame() end
---@return boolean
function UUserDefinedCaptureProtocol:OnCanFinalize() end
function UUserDefinedCaptureProtocol:OnBeginFinalize() end
---@return FFrameMetrics
function UUserDefinedCaptureProtocol:GetCurrentFrameMetrics() end
---@param InFrameMetrics FFrameMetrics
---@return FString
function UUserDefinedCaptureProtocol:GenerateFilename(InFrameMetrics) end


---@class UUserDefinedImageCaptureProtocol : UUserDefinedCaptureProtocol
---@field Format EDesiredImageFormat
---@field bEnableCompression boolean
---@field CompressionQuality int32
UUserDefinedImageCaptureProtocol = {}

---@return UUserDefinedImageCaptureProtocol
function UUserDefinedImageCaptureProtocol:get() end

---@param PixelData FCapturedPixels
---@param StreamID FCapturedPixelsID
---@param FrameMetrics FFrameMetrics
---@param bCopyImageData boolean
function UUserDefinedImageCaptureProtocol:WriteImageToDisk(PixelData, StreamID, FrameMetrics, bCopyImageData) end
---@return FString
function UUserDefinedImageCaptureProtocol:GenerateFilenameForCurrentFrame() end
---@param Buffer UTexture
---@param StreamID FCapturedPixelsID
---@return FString
function UUserDefinedImageCaptureProtocol:GenerateFilenameForBuffer(Buffer, StreamID) end


---@class UVideoCaptureProtocol : UFrameGrabberProtocol
---@field bUseCompression boolean
---@field CompressionQuality float
UVideoCaptureProtocol = {}

---@return UVideoCaptureProtocol
function UVideoCaptureProtocol:get() end



