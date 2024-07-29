---@meta

---@class AMoviePipelineGameMode : AGameModeBase
AMoviePipelineGameMode = {}

---@return AMoviePipelineGameMode
function AMoviePipelineGameMode:get() end


---@class FMoviePipelineCameraCutInfo
FMoviePipelineCameraCutInfo = {}

---@return FMoviePipelineCameraCutInfo
function FMoviePipelineCameraCutInfo:get() end


---@class FMoviePipelineFilenameResolveParams
---@field FrameNumber int32
---@field FrameNumberShot int32
---@field FrameNumberRel int32
---@field FrameNumberShotRel int32
---@field CameraNameOverride FString
---@field ShotNameOverride FString
---@field ZeroPadFrameNumberCount int32
---@field bForceRelativeFrameNumbers boolean
---@field FileNameOverride FString
---@field FileNameFormatOverrides TMap<FString, FString>
---@field FileMetadata TMap<FString, FString>
---@field InitializationTime FDateTime
---@field InitializationVersion int32
---@field Job UMoviePipelineExecutorJob
---@field ShotOverride UMoviePipelineExecutorShot
---@field AdditionalFrameNumberOffset int32
FMoviePipelineFilenameResolveParams = {}

---@return FMoviePipelineFilenameResolveParams
function FMoviePipelineFilenameResolveParams:get() end



---@class FMoviePipelineFormatArgs
---@field FilenameArguments TMap<FString, FString>
---@field FileMetadata TMap<FString, FString>
---@field InJob UMoviePipelineExecutorJob
FMoviePipelineFormatArgs = {}

---@return FMoviePipelineFormatArgs
function FMoviePipelineFormatArgs:get() end



---@class FMoviePipelineOutputData
---@field Pipeline UMoviePipeline
---@field Job UMoviePipelineExecutorJob
---@field bSuccess boolean
---@field ShotData TArray<FMoviePipelineShotOutputData>
FMoviePipelineOutputData = {}

---@return FMoviePipelineOutputData
function FMoviePipelineOutputData:get() end



---@class FMoviePipelinePassIdentifier
---@field Name FString
---@field CameraName FString
FMoviePipelinePassIdentifier = {}

---@return FMoviePipelinePassIdentifier
function FMoviePipelinePassIdentifier:get() end



---@class FMoviePipelineRenderPassOutputData
---@field FilePaths TArray<FString>
FMoviePipelineRenderPassOutputData = {}

---@return FMoviePipelineRenderPassOutputData
function FMoviePipelineRenderPassOutputData:get() end



---@class FMoviePipelineSegmentWorkMetrics
---@field SegmentName FString
---@field OutputFrameIndex int32
---@field TotalOutputFrameCount int32
---@field OutputSubSampleIndex int32
---@field TotalSubSampleCount int32
---@field EngineWarmUpFrameIndex int32
---@field TotalEngineWarmUpFrameCount int32
FMoviePipelineSegmentWorkMetrics = {}

---@return FMoviePipelineSegmentWorkMetrics
function FMoviePipelineSegmentWorkMetrics:get() end



---@class FMoviePipelineShotOutputData
---@field Shot TWeakObjectPtr<UMoviePipelineExecutorShot>
---@field RenderPassData TMap<FMoviePipelinePassIdentifier, FMoviePipelineRenderPassOutputData>
FMoviePipelineShotOutputData = {}

---@return FMoviePipelineShotOutputData
function FMoviePipelineShotOutputData:get() end



---@class FMoviePipelineSidecarCamera
---@field BindingId FGuid
---@field Name FString
FMoviePipelineSidecarCamera = {}

---@return FMoviePipelineSidecarCamera
function FMoviePipelineSidecarCamera:get() end



---@class UMoviePipeline : UObject
---@field OnMoviePipelineFinishedDelegate FMoviePipelineOnMoviePipelineFinishedDelegate
---@field OnMoviePipelineWorkFinishedDelegate FMoviePipelineOnMoviePipelineWorkFinishedDelegate
---@field OnMoviePipelineShotWorkFinishedDelegate FMoviePipelineOnMoviePipelineShotWorkFinishedDelegate
---@field CustomTimeStep UMoviePipelineCustomTimeStep
---@field CachedPrevCustomTimeStep UEngineCustomTimeStep
---@field TargetSequence ULevelSequence
---@field LevelSequenceActor ALevelSequenceActor
---@field DebugWidget UMovieRenderDebugWidget
---@field PreviewTexture UTexture
---@field DebugWidgetClass TSubclassOf<UMovieRenderDebugWidget>
---@field CurrentJob UMoviePipelineExecutorJob
UMoviePipeline = {}

---@return UMoviePipeline
function UMoviePipeline:get() end

---@param bError boolean
function UMoviePipeline:Shutdown(bError) end
---@param InDateTime FDateTime
function UMoviePipeline:SetInitializationTime(InDateTime) end
---@param bIsError boolean
function UMoviePipeline:RequestShutdown(bIsError) end
function UMoviePipeline:OnMoviePipelineFinishedImpl() end
---@return boolean
function UMoviePipeline:IsShutdownRequested() end
---@param InJob UMoviePipelineExecutorJob
function UMoviePipeline:Initialize(InJob) end
---@return UTexture
function UMoviePipeline:GetPreviewTexture() end
---@return UMoviePipelineMasterConfig
function UMoviePipeline:GetPipelineMasterConfig() end
---@return FDateTime
function UMoviePipeline:GetInitializationTime() end
---@return UMoviePipelineExecutorJob
function UMoviePipeline:GetCurrentJob() end


---@class UMoviePipelineAntiAliasingSetting : UMoviePipelineSetting
---@field SpatialSampleCount int32
---@field TemporalSampleCount int32
---@field bOverrideAntiAliasing boolean
---@field AntiAliasingMethod EAntiAliasingMethod
---@field RenderWarmUpCount int32
---@field bUseCameraCutForWarmUp boolean
---@field EngineWarmUpCount int32
---@field bRenderWarmUpFrames boolean
UMoviePipelineAntiAliasingSetting = {}

---@return UMoviePipelineAntiAliasingSetting
function UMoviePipelineAntiAliasingSetting:get() end



---@class UMoviePipelineBlueprintLibrary : UBlueprintFunctionLibrary
UMoviePipelineBlueprintLibrary = {}

---@return UMoviePipelineBlueprintLibrary
function UMoviePipelineBlueprintLibrary:get() end

---@param InSequence ULevelSequence
---@param InJob UMoviePipelineExecutorJob
---@param bShotsChanged boolean
function UMoviePipelineBlueprintLibrary:UpdateJobShotListFromSequence(InSequence, InJob, bShotsChanged) end
---@param InParams FMoviePipelineFilenameResolveParams
---@return int32
function UMoviePipelineBlueprintLibrary:ResolveVersionNumber(InParams) end
---@param InFormatString FString
---@param InParams FMoviePipelineFilenameResolveParams
---@param OutFinalPath FString
---@param OutMergedFormatArgs FMoviePipelineFormatArgs
function UMoviePipelineBlueprintLibrary:ResolveFilenameFormatArguments(InFormatString, InParams, OutFinalPath, OutMergedFormatArgs) end
---@param InManifestFilePath FString
---@return UMoviePipelineQueue
function UMoviePipelineBlueprintLibrary:LoadManifestFileFromString(InManifestFilePath) end
---@param InPipeline UMoviePipeline
---@return EMovieRenderPipelineState
function UMoviePipelineBlueprintLibrary:GetPipelineState(InPipeline) end
---@param InMoviePipeline UMoviePipeline
---@param OutCurrentIndex int32
---@param OutTotalCount int32
function UMoviePipelineBlueprintLibrary:GetOverallSegmentCounts(InMoviePipeline, OutCurrentIndex, OutTotalCount) end
---@param InMoviePipeline UMoviePipeline
---@param OutCurrentIndex int32
---@param OutTotalCount int32
function UMoviePipelineBlueprintLibrary:GetOverallOutputFrames(InMoviePipeline, OutCurrentIndex, OutTotalCount) end
---@param InMoviePipeline UMoviePipeline
---@return FText
function UMoviePipelineBlueprintLibrary:GetMoviePipelineEngineChangelistLabel(InMoviePipeline) end
---@param InMoviePipeline UMoviePipeline
---@return FTimecode
function UMoviePipelineBlueprintLibrary:GetMasterTimecode(InMoviePipeline) end
---@param InMoviePipeline UMoviePipeline
---@return FFrameNumber
function UMoviePipelineBlueprintLibrary:GetMasterFrameNumber(InMoviePipeline) end
---@param InJob UMoviePipelineExecutorJob
---@return FString
function UMoviePipelineBlueprintLibrary:GetMapPackageName(InJob) end
---@param InMoviePipeline UMoviePipeline
---@return FText
function UMoviePipelineBlueprintLibrary:GetJobName(InMoviePipeline) end
---@param InMoviePipeline UMoviePipeline
---@return FDateTime
function UMoviePipelineBlueprintLibrary:GetJobInitializationTime(InMoviePipeline) end
---@param InMoviePipeline UMoviePipeline
---@return FText
function UMoviePipelineBlueprintLibrary:GetJobAuthor(InMoviePipeline) end
---@param InPipeline UMoviePipeline
---@param OutEstimate FTimespan
---@return boolean
function UMoviePipelineBlueprintLibrary:GetEstimatedTimeRemaining(InPipeline, OutEstimate) end
---@param InMasterConfig UMoviePipelineMasterConfig
---@param InPipelineExecutorShot UMoviePipelineExecutorShot
---@return FIntPoint
function UMoviePipelineBlueprintLibrary:GetEffectiveOutputResolution(InMasterConfig, InPipelineExecutorShot) end
---@param InMoviePipeline UMoviePipeline
---@return FTimecode
function UMoviePipelineBlueprintLibrary:GetCurrentShotTimecode(InMoviePipeline) end
---@param InMoviePipeline UMoviePipeline
---@return FFrameNumber
function UMoviePipelineBlueprintLibrary:GetCurrentShotFrameNumber(InMoviePipeline) end
---@param InMoviePipeline UMoviePipeline
---@return ULevelSequence
function UMoviePipelineBlueprintLibrary:GetCurrentSequence(InMoviePipeline) end
---@param InMoviePipeline UMoviePipeline
---@return FMoviePipelineSegmentWorkMetrics
function UMoviePipelineBlueprintLibrary:GetCurrentSegmentWorkMetrics(InMoviePipeline) end
---@param InMoviePipeline UMoviePipeline
---@return EMovieRenderShotState
function UMoviePipelineBlueprintLibrary:GetCurrentSegmentState(InMoviePipeline) end
---@param InMoviePipeline UMoviePipeline
---@param OutOuterName FText
---@param OutInnerName FText
function UMoviePipelineBlueprintLibrary:GetCurrentSegmentName(InMoviePipeline, OutOuterName, OutInnerName) end
---@param InMoviePipeline UMoviePipeline
---@return float
function UMoviePipelineBlueprintLibrary:GetCurrentFocusDistance(InMoviePipeline) end
---@param InMoviePipeline UMoviePipeline
---@return float
function UMoviePipelineBlueprintLibrary:GetCurrentFocalLength(InMoviePipeline) end
---@param InMoviePipeline UMoviePipeline
---@return UMoviePipelineExecutorShot
function UMoviePipelineBlueprintLibrary:GetCurrentExecutorShot(InMoviePipeline) end
---@param InMoviePipeline UMoviePipeline
---@return float
function UMoviePipelineBlueprintLibrary:GetCurrentAperture(InMoviePipeline) end
---@param InPipeline UMoviePipeline
---@return float
function UMoviePipelineBlueprintLibrary:GetCompletionPercentage(InPipeline) end
---@param InSettingType TSubclassOf<UMoviePipelineSetting>
---@param InMasterConfig UMoviePipelineMasterConfig
---@param InShot UMoviePipelineExecutorShot
---@return UMoviePipelineSetting
function UMoviePipelineBlueprintLibrary:FindOrGetDefaultSettingForShot(InSettingType, InMasterConfig, InShot) end
---@param Outer UObject
---@param InSequence UMovieSceneSequence
---@return UMovieSceneSequence
function UMoviePipelineBlueprintLibrary:DuplicateSequence(Outer, InSequence) end


---@class UMoviePipelineCameraSetting : UMoviePipelineSetting
---@field ShutterTiming EMoviePipelineShutterTiming
---@field OverscanPercentage float
---@field bRenderAllCameras boolean
UMoviePipelineCameraSetting = {}

---@return UMoviePipelineCameraSetting
function UMoviePipelineCameraSetting:get() end



---@class UMoviePipelineColorSetting : UMoviePipelineSetting
---@field OCIOConfiguration FOpenColorIODisplayConfiguration
---@field bDisableToneCurve boolean
UMoviePipelineColorSetting = {}

---@return UMoviePipelineColorSetting
function UMoviePipelineColorSetting:get() end



---@class UMoviePipelineCommandLineEncoder : UMoviePipelineSetting
---@field FileNameFormatOverride FString
---@field Quality EMoviePipelineEncodeQuality
---@field AdditionalCommandLineArgs FString
---@field bDeleteSourceFiles boolean
---@field bSkipEncodeOnRenderCanceled boolean
---@field bWriteEachFrameDuration boolean
UMoviePipelineCommandLineEncoder = {}

---@return UMoviePipelineCommandLineEncoder
function UMoviePipelineCommandLineEncoder:get() end



---@class UMoviePipelineCommandLineEncoderSettings : UDeveloperSettings
---@field ExecutablePath FString
---@field CodecHelpText FText
---@field VideoCodec FString
---@field AudioCodec FString
---@field OutputFileExtension FString
---@field CommandLineFormat FString
---@field VideoInputStringFormat FString
---@field AudioInputStringFormat FString
---@field EncodeSettings_Low FString
---@field EncodeSettings_Med FString
---@field EncodeSettings_High FString
---@field EncodeSettings_Epic FString
UMoviePipelineCommandLineEncoderSettings = {}

---@return UMoviePipelineCommandLineEncoderSettings
function UMoviePipelineCommandLineEncoderSettings:get() end



---@class UMoviePipelineConfigBase : UObject
---@field DisplayName FString
---@field Settings TArray<UMoviePipelineSetting>
UMoviePipelineConfigBase = {}

---@return UMoviePipelineConfigBase
function UMoviePipelineConfigBase:get() end

---@param InSetting UMoviePipelineSetting
function UMoviePipelineConfigBase:RemoveSetting(InSetting) end
---@return TArray<UMoviePipelineSetting>
function UMoviePipelineConfigBase:GetUserSettings() end
---@param InClass TSubclassOf<UMoviePipelineSetting>
---@param bIncludeDisabledSettings boolean
---@return TArray<UMoviePipelineSetting>
function UMoviePipelineConfigBase:FindSettingsByClass(InClass, bIncludeDisabledSettings) end
---@param InClass TSubclassOf<UMoviePipelineSetting>
---@param bIncludeDisabledSettings boolean
---@return UMoviePipelineSetting
function UMoviePipelineConfigBase:FindSettingByClass(InClass, bIncludeDisabledSettings) end
---@param InClass TSubclassOf<UMoviePipelineSetting>
---@param bIncludeDisabledSettings boolean
---@return UMoviePipelineSetting
function UMoviePipelineConfigBase:FindOrAddSettingByClass(InClass, bIncludeDisabledSettings) end
---@param InConfig UMoviePipelineConfigBase
function UMoviePipelineConfigBase:CopyFrom(InConfig) end


---@class UMoviePipelineCustomTimeStep : UEngineCustomTimeStep
UMoviePipelineCustomTimeStep = {}

---@return UMoviePipelineCustomTimeStep
function UMoviePipelineCustomTimeStep:get() end


---@class UMoviePipelineDebugSettings : UMoviePipelineSetting
---@field bWriteAllSamples boolean
---@field bCaptureFramesWithRenderDoc boolean
---@field CaptureFrame int32
---@field bCaptureUnrealInsightsTrace boolean
UMoviePipelineDebugSettings = {}

---@return UMoviePipelineDebugSettings
function UMoviePipelineDebugSettings:get() end



---@class UMoviePipelineExecutorBase : UObject
---@field OnExecutorFinishedDelegate FMoviePipelineExecutorBaseOnExecutorFinishedDelegate
---@field OnExecutorErroredDelegate FMoviePipelineExecutorBaseOnExecutorErroredDelegate
---@field SocketMessageRecievedDelegate FMoviePipelineExecutorBaseSocketMessageRecievedDelegate
---@field HTTPResponseRecievedDelegate FMoviePipelineExecutorBaseHTTPResponseRecievedDelegate
---@field DebugWidgetClass TSubclassOf<UMovieRenderDebugWidget>
---@field UserData FString
---@field TargetPipelineClass TSubclassOf<UMoviePipeline>
UMoviePipelineExecutorBase = {}

---@return UMoviePipelineExecutorBase
function UMoviePipelineExecutorBase:get() end

---@param InProgress float
function UMoviePipelineExecutorBase:SetStatusProgress(InProgress) end
---@param InStatus FString
function UMoviePipelineExecutorBase:SetStatusMessage(InStatus) end
---@param InPipelineClass UClass
function UMoviePipelineExecutorBase:SetMoviePipelineClass(InPipelineClass) end
---@param InMessage FString
---@return boolean
function UMoviePipelineExecutorBase:SendSocketMessage(InMessage) end
---@param InURL FString
---@param InVerb FString
---@param InMessage FString
---@param InHeaders TMap<FString, FString>
---@return int32
function UMoviePipelineExecutorBase:SendHTTPRequest(InURL, InVerb, InMessage, InHeaders) end
function UMoviePipelineExecutorBase:OnExecutorFinishedImpl() end
---@param ErroredPipeline UMoviePipeline
---@param bFatal boolean
---@param ErrorReason FText
function UMoviePipelineExecutorBase:OnExecutorErroredImpl(ErroredPipeline, bFatal, ErrorReason) end
function UMoviePipelineExecutorBase:OnBeginFrame() end
---@return boolean
function UMoviePipelineExecutorBase:IsSocketConnected() end
---@return boolean
function UMoviePipelineExecutorBase:IsRendering() end
---@return float
function UMoviePipelineExecutorBase:GetStatusProgress() end
---@return FString
function UMoviePipelineExecutorBase:GetStatusMessage() end
---@param InPipelineQueue UMoviePipelineQueue
function UMoviePipelineExecutorBase:Execute(InPipelineQueue) end
function UMoviePipelineExecutorBase:DisconnectSocket() end
---@param InHostName FString
---@param InPort int32
---@return boolean
function UMoviePipelineExecutorBase:ConnectSocket(InHostName, InPort) end
function UMoviePipelineExecutorBase:CancelCurrentJob() end
function UMoviePipelineExecutorBase:CancelAllJobs() end


---@class UMoviePipelineExecutorJob : UObject
---@field JobName FString
---@field Sequence FSoftObjectPath
---@field Map FSoftObjectPath
---@field Author FString
---@field Comment FString
---@field ShotInfo TArray<UMoviePipelineExecutorShot>
---@field UserData FString
---@field StatusMessage FString
---@field StatusProgress float
---@field bIsConsumed boolean
---@field Configuration UMoviePipelineMasterConfig
---@field PresetOrigin TSoftObjectPtr<UMoviePipelineMasterConfig>
---@field bEnabled boolean
UMoviePipelineExecutorJob = {}

---@return UMoviePipelineExecutorJob
function UMoviePipelineExecutorJob:get() end

---@param InProgress float
function UMoviePipelineExecutorJob:SetStatusProgress(InProgress) end
---@param InStatus FString
function UMoviePipelineExecutorJob:SetStatusMessage(InStatus) end
---@param InSequence FSoftObjectPath
function UMoviePipelineExecutorJob:SetSequence(InSequence) end
---@param InPreset UMoviePipelineMasterConfig
function UMoviePipelineExecutorJob:SetPresetOrigin(InPreset) end
---@param bInEnabled boolean
function UMoviePipelineExecutorJob:SetIsEnabled(bInEnabled) end
---@param bInConsumed boolean
function UMoviePipelineExecutorJob:SetConsumed(bInConsumed) end
---@param InPreset UMoviePipelineMasterConfig
function UMoviePipelineExecutorJob:SetConfiguration(InPreset) end
function UMoviePipelineExecutorJob:OnDuplicated() end
---@return boolean
function UMoviePipelineExecutorJob:IsEnabled() end
---@return boolean
function UMoviePipelineExecutorJob:IsConsumed() end
---@return float
function UMoviePipelineExecutorJob:GetStatusProgress() end
---@return FString
function UMoviePipelineExecutorJob:GetStatusMessage() end
---@return UMoviePipelineMasterConfig
function UMoviePipelineExecutorJob:GetPresetOrigin() end
---@return UMoviePipelineMasterConfig
function UMoviePipelineExecutorJob:GetConfiguration() end


---@class UMoviePipelineExecutorShot : UObject
---@field bEnabled boolean
---@field OuterName FString
---@field InnerName FString
---@field SidecarCameras TArray<FMoviePipelineSidecarCamera>
---@field Progress float
---@field StatusMessage FString
---@field ShotOverrideConfig UMoviePipelineShotConfig
---@field ShotOverridePresetOrigin TSoftObjectPtr<UMoviePipelineShotConfig>
UMoviePipelineExecutorShot = {}

---@return UMoviePipelineExecutorShot
function UMoviePipelineExecutorShot:get() end

---@return boolean
function UMoviePipelineExecutorShot:ShouldRender() end
---@param InProgress float
function UMoviePipelineExecutorShot:SetStatusProgress(InProgress) end
---@param InStatus FString
function UMoviePipelineExecutorShot:SetStatusMessage(InStatus) end
---@param InPreset UMoviePipelineShotConfig
function UMoviePipelineExecutorShot:SetShotOverridePresetOrigin(InPreset) end
---@param InPreset UMoviePipelineShotConfig
function UMoviePipelineExecutorShot:SetShotOverrideConfiguration(InPreset) end
---@return float
function UMoviePipelineExecutorShot:GetStatusProgress() end
---@return FString
function UMoviePipelineExecutorShot:GetStatusMessage() end
---@return UMoviePipelineShotConfig
function UMoviePipelineExecutorShot:GetShotOverridePresetOrigin() end
---@return UMoviePipelineShotConfig
function UMoviePipelineExecutorShot:GetShotOverrideConfiguration() end
---@param InCameraIndex int32
---@return FString
function UMoviePipelineExecutorShot:GetCameraName(InCameraIndex) end
---@param InConfigType TSubclassOf<UMoviePipelineShotConfig>
---@return UMoviePipelineShotConfig
function UMoviePipelineExecutorShot:AllocateNewShotOverrideConfig(InConfigType) end


---@class UMoviePipelineFCPXMLExporter : UMoviePipelineOutputBase
---@field FileNameFormatOverride FString
---@field DataSource FCPXMLExportDataSource
UMoviePipelineFCPXMLExporter = {}

---@return UMoviePipelineFCPXMLExporter
function UMoviePipelineFCPXMLExporter:get() end



---@class UMoviePipelineGameOverrideSetting : UMoviePipelineSetting
---@field GameModeOverride TSubclassOf<AGameModeBase>
---@field bCinematicQualitySettings boolean
---@field TextureStreaming EMoviePipelineTextureStreamingMethod
---@field bUseLODZero boolean
---@field bDisableHLODs boolean
---@field bUseHighQualityShadows boolean
---@field ShadowDistanceScale int32
---@field ShadowRadiusThreshold float
---@field bOverrideViewDistanceScale boolean
---@field ViewDistanceScale int32
---@field bFlushGrassStreaming boolean
---@field bFlushStreamingManagers boolean
---@field bOverrideVirtualTextureFeedbackFactor boolean
---@field VirtualTextureFeedbackFactor int32
UMoviePipelineGameOverrideSetting = {}

---@return UMoviePipelineGameOverrideSetting
function UMoviePipelineGameOverrideSetting:get() end



---@class UMoviePipelineHighResSetting : UMoviePipelineSetting
---@field TileCount int32
---@field TextureSharpnessBias float
---@field OverlapRatio float
---@field bOverrideSubSurfaceScattering boolean
---@field BurleySampleCount int32
---@field bAllocateHistoryPerTile boolean
UMoviePipelineHighResSetting = {}

---@return UMoviePipelineHighResSetting
function UMoviePipelineHighResSetting:get() end



---@class UMoviePipelineInProcessExecutor : UMoviePipelineLinearExecutorBase
---@field bUseCurrentLevel boolean
UMoviePipelineInProcessExecutor = {}

---@return UMoviePipelineInProcessExecutor
function UMoviePipelineInProcessExecutor:get() end



---@class UMoviePipelineInProcessExecutorSettings : UDeveloperSettings
---@field bCloseEditor boolean
---@field AdditionalCommandLineArguments FString
---@field InheritedCommandLineArguments FString
---@field InitialDelayFrameCount int32
UMoviePipelineInProcessExecutorSettings = {}

---@return UMoviePipelineInProcessExecutorSettings
function UMoviePipelineInProcessExecutorSettings:get() end



---@class UMoviePipelineLinearExecutorBase : UMoviePipelineExecutorBase
---@field Queue UMoviePipelineQueue
---@field ActiveMoviePipeline UMoviePipeline
UMoviePipelineLinearExecutorBase = {}

---@return UMoviePipelineLinearExecutorBase
function UMoviePipelineLinearExecutorBase:get() end



---@class UMoviePipelineMasterConfig : UMoviePipelineConfigBase
---@field PerShotConfigMapping TMap<FString, UMoviePipelineShotConfig>
---@field OutputSetting UMoviePipelineOutputSetting
---@field TransientSettings TArray<UMoviePipelineSetting>
UMoviePipelineMasterConfig = {}

---@return UMoviePipelineMasterConfig
function UMoviePipelineMasterConfig:get() end

function UMoviePipelineMasterConfig:InitializeTransientSettings() end
---@return TArray<UMoviePipelineSetting>
function UMoviePipelineMasterConfig:GetTransientSettings() end
---@param InSequence ULevelSequence
---@return FFrameRate
function UMoviePipelineMasterConfig:GetEffectiveFrameRate(InSequence) end
---@param bIncludeDisabledSettings boolean
---@param bIncludeTransientSettings boolean
---@return TArray<UMoviePipelineSetting>
function UMoviePipelineMasterConfig:GetAllSettings(bIncludeDisabledSettings, bIncludeTransientSettings) end


---@class UMoviePipelineOutputBase : UMoviePipelineSetting
UMoviePipelineOutputBase = {}

---@return UMoviePipelineOutputBase
function UMoviePipelineOutputBase:get() end


---@class UMoviePipelineOutputSetting : UMoviePipelineSetting
---@field OutputDirectory FDirectoryPath
---@field FilenameFormat FString
---@field OutputResolution FIntPoint
---@field bUseCustomFrameRate boolean
---@field OutputFrameRate FFrameRate
---@field bOverrideExistingOutput boolean
---@field HandleFrameCount int32
---@field OutputFrameStep int32
---@field bUseCustomPlaybackRange boolean
---@field CustomStartFrame int32
---@field CustomEndFrame int32
---@field VersionNumber int32
---@field bAutoVersion boolean
---@field ZeroPadFrameNumbers int32
---@field FrameNumberOffset int32
---@field bFlushDiskWritesPerShot boolean
UMoviePipelineOutputSetting = {}

---@return UMoviePipelineOutputSetting
function UMoviePipelineOutputSetting:get() end



---@class UMoviePipelinePythonHostExecutor : UMoviePipelineExecutorBase
---@field ExecutorClass TSubclassOf<UMoviePipelinePythonHostExecutor>
---@field PipelineQueue UMoviePipelineQueue
---@field LastLoadedWorld UWorld
UMoviePipelinePythonHostExecutor = {}

---@return UMoviePipelinePythonHostExecutor
function UMoviePipelinePythonHostExecutor:get() end

---@param InWorld UWorld
function UMoviePipelinePythonHostExecutor:OnMapLoad(InWorld) end
---@return UWorld
function UMoviePipelinePythonHostExecutor:GetLastLoadedWorld() end
---@param InPipelineQueue UMoviePipelineQueue
function UMoviePipelinePythonHostExecutor:ExecuteDelayed(InPipelineQueue) end


---@class UMoviePipelineQueue : UObject
---@field Jobs TArray<UMoviePipelineExecutorJob>
UMoviePipelineQueue = {}

---@return UMoviePipelineQueue
function UMoviePipelineQueue:get() end

---@param InJob UMoviePipelineExecutorJob
---@param Index int32
function UMoviePipelineQueue:SetJobIndex(InJob, Index) end
---@return TArray<UMoviePipelineExecutorJob>
function UMoviePipelineQueue:GetJobs() end
---@param InJob UMoviePipelineExecutorJob
---@return UMoviePipelineExecutorJob
function UMoviePipelineQueue:DuplicateJob(InJob) end
---@param InJob UMoviePipelineExecutorJob
function UMoviePipelineQueue:DeleteJob(InJob) end
function UMoviePipelineQueue:DeleteAllJobs() end
---@param InQueue UMoviePipelineQueue
function UMoviePipelineQueue:CopyFrom(InQueue) end
---@param InJobType TSubclassOf<UMoviePipelineExecutorJob>
---@return UMoviePipelineExecutorJob
function UMoviePipelineQueue:AllocateNewJob(InJobType) end


---@class UMoviePipelineQueueEngineSubsystem : UEngineSubsystem
---@field OnRenderFinished FMoviePipelineQueueEngineSubsystemOnRenderFinished
---@field ActiveExecutor UMoviePipelineExecutorBase
---@field CurrentQueue UMoviePipelineQueue
UMoviePipelineQueueEngineSubsystem = {}

---@return UMoviePipelineQueueEngineSubsystem
function UMoviePipelineQueueEngineSubsystem:get() end

---@param InProgressWidgetClass TSubclassOf<UMovieRenderDebugWidget>
---@param bRenderPlayerViewport boolean
function UMoviePipelineQueueEngineSubsystem:SetConfiguration(InProgressWidgetClass, bRenderPlayerViewport) end
---@param InExecutor UMoviePipelineExecutorBase
function UMoviePipelineQueueEngineSubsystem:RenderQueueWithExecutorInstance(InExecutor) end
---@param InExecutorType TSubclassOf<UMoviePipelineExecutorBase>
---@return UMoviePipelineExecutorBase
function UMoviePipelineQueueEngineSubsystem:RenderQueueWithExecutor(InExecutorType) end
---@param InJob UMoviePipelineExecutorJob
function UMoviePipelineQueueEngineSubsystem:RenderJob(InJob) end
---@return boolean
function UMoviePipelineQueueEngineSubsystem:IsRendering() end
---@return UMoviePipelineQueue
function UMoviePipelineQueueEngineSubsystem:GetQueue() end
---@return UMoviePipelineExecutorBase
function UMoviePipelineQueueEngineSubsystem:GetActiveExecutor() end
---@param InSequence ULevelSequence
---@return UMoviePipelineExecutorJob
function UMoviePipelineQueueEngineSubsystem:AllocateJob(InSequence) end


---@class UMoviePipelineRenderPass : UMoviePipelineSetting
UMoviePipelineRenderPass = {}

---@return UMoviePipelineRenderPass
function UMoviePipelineRenderPass:get() end


---@class UMoviePipelineSetting : UObject
---@field CachedPipeline TWeakObjectPtr<UMoviePipeline>
---@field bEnabled boolean
UMoviePipelineSetting = {}

---@return UMoviePipelineSetting
function UMoviePipelineSetting:get() end

---@param bInEnabled boolean
function UMoviePipelineSetting:SetIsEnabled(bInEnabled) end
---@return boolean
function UMoviePipelineSetting:IsEnabled() end
---@param InOutUnrealURLParams TArray<FString>
---@param InOutCommandLineArgs TArray<FString>
---@param InOutDeviceProfileCvars TArray<FString>
---@param InOutExecCmds TArray<FString>
function UMoviePipelineSetting:BuildNewProcessCommandLineArgs(InOutUnrealURLParams, InOutCommandLineArgs, InOutDeviceProfileCvars, InOutExecCmds) end
---@param InOutUnrealURLParams FString
---@param InOutCommandLineArgs FString
function UMoviePipelineSetting:BuildNewProcessCommandLine(InOutUnrealURLParams, InOutCommandLineArgs) end


---@class UMoviePipelineSetting_BlueprintBase : UMoviePipelineSetting
---@field CategoryText FText
---@field bIsValidOnMaster boolean
---@field bIsValidOnShots boolean
---@field bCanBeDisabled boolean
UMoviePipelineSetting_BlueprintBase = {}

---@return UMoviePipelineSetting_BlueprintBase
function UMoviePipelineSetting_BlueprintBase:get() end

---@param InPipeline UMoviePipeline
function UMoviePipelineSetting_BlueprintBase:ReceiveTeardownForPipelineImpl(InPipeline) end
---@param InPipeline UMoviePipeline
function UMoviePipelineSetting_BlueprintBase:ReceiveSetupForPipelineImpl(InPipeline) end
---@param InOutFormatArgs FMoviePipelineFormatArgs
---@return FMoviePipelineFormatArgs
function UMoviePipelineSetting_BlueprintBase:ReceiveGetFormatArguments(InOutFormatArgs) end
function UMoviePipelineSetting_BlueprintBase:OnEngineTickBeginFrame() end


---@class UMoviePipelineShotConfig : UMoviePipelineConfigBase
UMoviePipelineShotConfig = {}

---@return UMoviePipelineShotConfig
function UMoviePipelineShotConfig:get() end


---@class UMoviePipelineVideoOutputBase : UMoviePipelineOutputBase
UMoviePipelineVideoOutputBase = {}

---@return UMoviePipelineVideoOutputBase
function UMoviePipelineVideoOutputBase:get() end


---@class UMoviePipelineViewFamilySetting : UMoviePipelineSetting
UMoviePipelineViewFamilySetting = {}

---@return UMoviePipelineViewFamilySetting
function UMoviePipelineViewFamilySetting:get() end


---@class UMovieRenderDebugWidget : UUserWidget
UMovieRenderDebugWidget = {}

---@return UMovieRenderDebugWidget
function UMovieRenderDebugWidget:get() end

---@param ForPipeline UMoviePipeline
function UMovieRenderDebugWidget:OnInitializedForPipeline(ForPipeline) end


