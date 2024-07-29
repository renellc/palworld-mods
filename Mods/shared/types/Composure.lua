---@meta

---@class ACompositingCaptureBase : ACompositingElement
---@field SceneCaptureComponent2D USceneCaptureComponent2D
---@field bApplyDistortion boolean
---@field LensComponentPicker FComponentReference
---@field OverscanFactor float
---@field OriginalFocalLength float
---@field LastDistortionMID UMaterialInstanceDynamic
ACompositingCaptureBase = {}

---@return ACompositingCaptureBase
function ACompositingCaptureBase:get() end

function ACompositingCaptureBase:UpdateDistortion() end


---@class ACompositingElement : AComposurePipelineBaseActor
---@field CompositingTarget UComposureCompositingTargetComponent
---@field PostProcessProxy UComposurePostProcessingPassProxy
---@field Inputs TArray<UCompositingElementInput>
---@field TransformPasses TArray<UCompositingElementTransform>
---@field Outputs TArray<UCompositingElementOutput>
---@field CameraSource ESceneCameraLinkType
---@field TargetCameraActor TLazyObjectPtr<ACameraActor>
---@field ResolutionSource EInheritedSourceType
---@field RenderResolution FIntPoint
---@field RenderFormat ETextureRenderTargetFormat
---@field bUseSharedTargetPool boolean
---@field FreezeFrameMask int32
---@field OnTransformPassRendered_BP FCompositingElementOnTransformPassRendered_BP
---@field OnFinalPassRendered_BP FCompositingElementOnFinalPassRendered_BP
---@field CompShotIdName FName
---@field Parent ACompositingElement
---@field ChildLayers TArray<ACompositingElement>
---@field OutputOpacity float
---@field UserConstructedInputs TMap<UCompositingElementInput, ECompPassConstructionType>
---@field UserConstructedTransforms TMap<UCompositingElementTransform, ECompPassConstructionType>
---@field UserConstructedOutputs TMap<UCompositingElementOutput, ECompPassConstructionType>
---@field InternalInputs TArray<UCompositingElementInput>
---@field InternalTransformPasses TArray<UCompositingElementTransform>
---@field InternalOutputs TArray<UCompositingElementOutput>
---@field InternalAlphaPass UAlphaTransformPass
ACompositingElement = {}

---@return ACompositingElement
function ACompositingElement:get() end

---@param NewCameraActor ACameraActor
function ACompositingElement:SetTargetCamera(NewCameraActor) end
---@param NewResolution FIntPoint
function ACompositingElement:SetRenderResolution(NewResolution) end
---@param NewOpacity float
function ACompositingElement:SetOpacity(NewOpacity) end
---@param NewName FName
function ACompositingElement:SetElementName(NewName) end
---@param PickingTarget UTextureRenderTarget2D
function ACompositingElement:SetEditorColorPickingTarget(PickingTarget) end
---@param PickerDisplayImage UTexture
function ACompositingElement:SetEditorColorPickerDisplayImage(PickerDisplayImage) end
---@param ReferenceName FName
---@param RenderPercentage float
---@param UsageTag ETargetUsageFlags
---@return UTextureRenderTarget2D
function ACompositingElement:RequestNamedRenderTarget(ReferenceName, RenderPercentage, UsageTag) end
---@param CompMaterial FCompositingMaterial
---@param RenderTarget UTextureRenderTarget2D
---@param ResultLookupName FName
---@return UTextureRenderTarget2D
function ACompositingElement:RenderCompositingMaterialToTarget(CompMaterial, RenderTarget, ResultLookupName) end
---@param CompMaterial FCompositingMaterial
---@param RenderScale float
---@param ResultLookupName FName
---@param UsageTag ETargetUsageFlags
---@return UTexture
function ACompositingElement:RenderCompositingMaterial(CompMaterial, RenderScale, ResultLookupName, UsageTag) end
---@param bCameraCutThisFrame boolean
---@return UTexture
function ACompositingElement:RenderCompElement(bCameraCutThisFrame) end
---@param OwnedTarget UTextureRenderTarget2D
---@return boolean
function ACompositingElement:ReleaseOwnedTarget(OwnedTarget) end
---@param ReferenceName FName
---@param PassResult UTexture
---@param bSetAsLatestRenderResult boolean
function ACompositingElement:RegisterPassResult(ReferenceName, PassResult, bSetAsLatestRenderResult) end
---@return boolean
function ACompositingElement:IsSubElement() end
---@return TArray<UCompositingElementTransform>
function ACompositingElement:GetTransformsList() end
---@return FIntPoint
function ACompositingElement:GetRenderResolution() end
---@return int32
function ACompositingElement:GetRenderPriority() end
---@return TArray<UCompositingElementOutput>
function ACompositingElement:GetOutputsList() end
---@return float
function ACompositingElement:GetOpacity() end
---@return UTexture
function ACompositingElement:GetLatestRenderResult() end
---@return TArray<UCompositingElementInput>
function ACompositingElement:GetInputsList() end
---@return ACompositingElement
function ACompositingElement:GetElementParent() end
---@return FName
function ACompositingElement:GetCompElementName() end
---@return TArray<ACompositingElement>
function ACompositingElement:GetChildElements() end
---@param TransformType TSubclassOf<UCompositingElementTransform>
---@param PassResult UTexture
---@param OptionalPassName FName
---@return UCompositingElementTransform
function ACompositingElement:FindTransformPass(TransformType, PassResult, OptionalPassName) end
---@return ACameraActor
function ACompositingElement:FindTargetCamera() end
---@param OutputType TSubclassOf<UCompositingElementOutput>
---@param OptionalPassName FName
---@return UCompositingElementOutput
function ACompositingElement:FindOutputPass(OutputType, OptionalPassName) end
---@param PassName FName
---@param bSearchSubElements boolean
---@return UTexture
function ACompositingElement:FindNamedRenderResult(PassName, bSearchSubElements) end
---@param InputType TSubclassOf<UCompositingElementInput>
---@param PassResult UTexture
---@param OptionalPassName FName
---@return UCompositingElementInput
function ACompositingElement:FindInputPass(InputType, PassResult, OptionalPassName) end
---@param PassToDelete UCompositingElementPass
---@return boolean
function ACompositingElement:DeletePass(PassToDelete) end
---@param PassName FName
---@param TransformType TSubclassOf<UCompositingElementTransform>
---@return UCompositingElementTransform
function ACompositingElement:CreateNewTransformPass(PassName, TransformType) end
---@param PassName FName
---@param OutputType TSubclassOf<UCompositingElementOutput>
---@return UCompositingElementOutput
function ACompositingElement:CreateNewOutputPass(PassName, OutputType) end
---@param PassName FName
---@param InputType TSubclassOf<UCompositingElementInput>
---@return UCompositingElementInput
function ACompositingElement:CreateNewInputPass(PassName, InputType) end
---@param PassName FName
---@param TransformType TSubclassOf<UCompositingElementTransform>
---@return UCompositingElementTransform
function ACompositingElement:AddNewTransformPass(PassName, TransformType) end
---@param PassName FName
---@param OutputType TSubclassOf<UCompositingElementOutput>
---@return UCompositingElementOutput
function ACompositingElement:AddNewOutputPass(PassName, OutputType) end
---@param PassName FName
---@param InputType TSubclassOf<UCompositingElementInput>
---@return UCompositingElementInput
function ACompositingElement:AddNewInputPass(PassName, InputType) end


---@class AComposurePipelineBaseActor : AActor
---@field bAutoRun boolean
---@field bAutoRunChildElementsAndSelf boolean
AComposurePipelineBaseActor = {}

---@return AComposurePipelineBaseActor
function AComposurePipelineBaseActor:get() end

---@param bAutoRunChildAndSelf boolean
function AComposurePipelineBaseActor:SetAutoRunChildrenAndSelf(bAutoRunChildAndSelf) end
---@param bNewAutoRunVal boolean
function AComposurePipelineBaseActor:SetAutoRun(bNewAutoRunVal) end
---@return boolean
function AComposurePipelineBaseActor:IsActivelyRunning() end
---@param bCameraCutThisFrame boolean
function AComposurePipelineBaseActor:EnqueueRendering(bCameraCutThisFrame) end
---@return boolean
function AComposurePipelineBaseActor:AreChildrenAndSelfAutoRun() end


---@class FCompositingMaterial : FCompositingParamPayload
---@field Material UMaterialInterface
---@field ParamPassMappings TMap<FName, FName>
---@field RequiredMaterialParams TMap<FName, FNamedCompMaterialParam>
---@field CachedMID UMaterialInstanceDynamic
FCompositingMaterial = {}

---@return FCompositingMaterial
function FCompositingMaterial:get() end



---@class FCompositingParamPayload
---@field ScalarParamOverrides TMap<FName, float>
---@field VectorParamOverrides TMap<FName, FLinearColor>
---@field TextureParamOverrides TMap<FName, UTexture>
FCompositingParamPayload = {}

---@return FCompositingParamPayload
function FCompositingParamPayload:get() end



---@class FComposurePostMoveSettings
---@field Pivot FVector2D
---@field Translation FVector2D
---@field RotationAngle float
---@field Scale float
FComposurePostMoveSettings = {}

---@return FComposurePostMoveSettings
function FComposurePostMoveSettings:get() end



---@class FComposureUVMapSettings
---@field PreUVDisplacementMatrix FMatrix
---@field PostUVDisplacementMatrix FMatrix
---@field DisplacementDecodeParameters FVector2D
---@field DisplacementTexture UTexture
---@field bUseDisplacementBlueAndAlphaChannels boolean
FComposureUVMapSettings = {}

---@return FComposureUVMapSettings
function FComposureUVMapSettings:get() end



---@class FMovieSceneComposureExportPass
---@field TransformPassName FName
---@field bRenamePass boolean
---@field ExportedAs FName
FMovieSceneComposureExportPass = {}

---@return FMovieSceneComposureExportPass
function FMovieSceneComposureExportPass:get() end



---@class FMovieSceneComposureExportSectionTemplate : FMovieSceneEvalTemplate
---@field Pass FMovieSceneComposureExportPass
FMovieSceneComposureExportSectionTemplate = {}

---@return FMovieSceneComposureExportSectionTemplate
function FMovieSceneComposureExportSectionTemplate:get() end



---@class FMovieSceneComposurePostMoveSettingsSectionTemplate : FMovieScenePropertySectionTemplate
---@field Pivot FMovieSceneFloatChannel
---@field Translation FMovieSceneFloatChannel
---@field RotationAngle FMovieSceneFloatChannel
---@field Scale FMovieSceneFloatChannel
---@field BlendType EMovieSceneBlendType
FMovieSceneComposurePostMoveSettingsSectionTemplate = {}

---@return FMovieSceneComposurePostMoveSettingsSectionTemplate
function FMovieSceneComposurePostMoveSettingsSectionTemplate:get() end



---@class FNamedCompMaterialParam
---@field ParamName FName
FNamedCompMaterialParam = {}

---@return FNamedCompMaterialParam
function FNamedCompMaterialParam:get() end



---@class ICompEditorImagePreviewInterface : IInterface
ICompEditorImagePreviewInterface = {}

---@return ICompEditorImagePreviewInterface
function ICompEditorImagePreviewInterface:get() end


---@class ICompImageColorPickerInterface : ICompEditorImagePreviewInterface
ICompImageColorPickerInterface = {}

---@return ICompImageColorPickerInterface
function ICompImageColorPickerInterface:get() end


---@class ICompositingInputInterface : IInterface
ICompositingInputInterface = {}

---@return ICompositingInputInterface
function ICompositingInputInterface:get() end

---@param Proxy UCompositingInputInterfaceProxy
function ICompositingInputInterface:OnFrameEnd(Proxy) end
---@param Proxy UCompositingInputInterfaceProxy
---@param bCameraCutThisFrame boolean
function ICompositingInputInterface:OnFrameBegin(Proxy, bCameraCutThisFrame) end
---@param Proxy UCompositingInputInterfaceProxy
---@return UTexture
function ICompositingInputInterface:GenerateInput(Proxy) end


---@class ICompositingTextureLookupTable : IInterface
ICompositingTextureLookupTable = {}

---@return ICompositingTextureLookupTable
function ICompositingTextureLookupTable:get() end

---@param LookupName FName
---@param OutTexture UTexture
---@return boolean
function ICompositingTextureLookupTable:FindNamedPassResult(LookupName, OutTexture) end


---@class IComposurePlayerCompositingInterface : IInterface
IComposurePlayerCompositingInterface = {}

---@return IComposurePlayerCompositingInterface
function IComposurePlayerCompositingInterface:get() end


---@class IMovieSceneComposureExportClient : IInterface
IMovieSceneComposureExportClient = {}

---@return IMovieSceneComposureExportClient
function IMovieSceneComposureExportClient:get() end

---@param ExportInitializer UMovieSceneComposureExportInitializer
function IMovieSceneComposureExportClient:InitializeForExport(ExportInitializer) end


---@class UAlphaTransformPass : UCompositingElementTransform
---@field AlphaScale float
---@field DefaultMaterial UMaterialInterface
---@field AlphaTransformMID UMaterialInstanceDynamic
UAlphaTransformPass = {}

---@return UAlphaTransformPass
function UAlphaTransformPass:get() end



---@class UColorConverterOutputPass : UCompositingElementOutput
---@field ColorConverter UCompositingElementTransform
---@field DefaultConverterClass TSubclassOf<UCompositingElementTransform>
UColorConverterOutputPass = {}

---@return UColorConverterOutputPass
function UColorConverterOutputPass:get() end



---@class UCompositingElementInput : UCompositingElementPass
---@field bIntermediate boolean
UCompositingElementInput = {}

---@return UCompositingElementInput
function UCompositingElementInput:get() end

---@return UTexture
function UCompositingElementInput:GenerateInput() end


---@class UCompositingElementMaterialPass : UCompositingPostProcessPass
---@field Material FCompositingMaterial
UCompositingElementMaterialPass = {}

---@return UCompositingElementMaterialPass
function UCompositingElementMaterialPass:get() end

---@param TextureParamName FName
---@param ComposureLayerName FName
---@return boolean
function UCompositingElementMaterialPass:SetParameterMapping(TextureParamName, ComposureLayerName) end
---@param NewMaterial UMaterialInterface
function UCompositingElementMaterialPass:SetMaterialInterface(NewMaterial) end
---@param Mid UMaterialInstanceDynamic
function UCompositingElementMaterialPass:ApplyMaterialParams(Mid) end


---@class UCompositingElementOutput : UCompositingElementPass
UCompositingElementOutput = {}

---@return UCompositingElementOutput
function UCompositingElementOutput:get() end

---@param FinalResult UTexture
---@param PostProcessProxy UComposurePostProcessingPassProxy
function UCompositingElementOutput:RelayOutput(FinalResult, PostProcessProxy) end


---@class UCompositingElementPass : UObject
---@field bEnabled boolean
---@field PassName FName
UCompositingElementPass = {}

---@return UCompositingElementPass
function UCompositingElementPass:get() end

---@param bSetEnabledTo boolean
function UCompositingElementPass:SetPassEnabled(bSetEnabledTo) end
function UCompositingElementPass:Reset() end
---@param Dimensions FIntPoint
---@param Format ETextureRenderTargetFormat
---@return UTextureRenderTarget2D
function UCompositingElementPass:RequestRenderTarget(Dimensions, Format) end
---@param RenderScale float
---@return UTextureRenderTarget2D
function UCompositingElementPass:RequestNativelyFormattedTarget(RenderScale) end
---@param AssignedTarget UTextureRenderTarget2D
---@return boolean
function UCompositingElementPass:ReleaseRenderTarget(AssignedTarget) end
function UCompositingElementPass:OnFrameEnd() end
---@param bCameraCutThisFrame boolean
function UCompositingElementPass:OnFrameBegin(bCameraCutThisFrame) end
function UCompositingElementPass:OnEnabled() end
function UCompositingElementPass:OnDisabled() end
---@return boolean
function UCompositingElementPass:IsPassEnabled() end


---@class UCompositingElementTransform : UCompositingElementPass
---@field bIntermediate boolean
UCompositingElementTransform = {}

---@return UCompositingElementTransform
function UCompositingElementTransform:get() end

---@param PassLookupName FName
---@return UTexture
function UCompositingElementTransform:FindNamedPrePassResult(PassLookupName) end
---@param Input UTexture
---@param PostProcessProxy UComposurePostProcessingPassProxy
---@param TargetCamera ACameraActor
---@return UTexture
function UCompositingElementTransform:ApplyTransform(Input, PostProcessProxy, TargetCamera) end


---@class UCompositingInputInterfaceProxy : UCompositingElementInput
---@field CompositingInput TScriptInterface<ICompositingInputInterface>
UCompositingInputInterfaceProxy = {}

---@return UCompositingInputInterfaceProxy
function UCompositingInputInterfaceProxy:get() end



---@class UCompositingMediaCaptureOutput : UColorConverterOutputPass
---@field CaptureOutput UMediaOutput
---@field ActiveCapture UMediaCapture
UCompositingMediaCaptureOutput = {}

---@return UCompositingMediaCaptureOutput
function UCompositingMediaCaptureOutput:get() end



---@class UCompositingMediaInput : UCompositingElementInput
---@field MediaTransformMaterial FCompositingMaterial
---@field DefaultMaterial UMaterialInterface
---@field DefaultTestPlateMaterial UMaterialInterface
---@field FallbackMID UMaterialInstanceDynamic
UCompositingMediaInput = {}

---@return UCompositingMediaInput
function UCompositingMediaInput:get() end



---@class UCompositingOpenColorIOPass : UCompositingElementTransform
---@field ColorConversionSettings FOpenColorIOColorConversionSettings
UCompositingOpenColorIOPass = {}

---@return UCompositingOpenColorIOPass
function UCompositingOpenColorIOPass:get() end



---@class UCompositingPickerAsyncTask : UBlueprintAsyncActionBase
---@field OnPick FCompositingPickerAsyncTaskOnPick
---@field OnCancel FCompositingPickerAsyncTaskOnCancel
---@field OnAccept FCompositingPickerAsyncTaskOnAccept
---@field PickerTarget UTextureRenderTarget2D
---@field PickerDisplayImage UTexture
UCompositingPickerAsyncTask = {}

---@return UCompositingPickerAsyncTask
function UCompositingPickerAsyncTask:get() end

---@param PickerTarget UTextureRenderTarget2D
---@param DisplayImage UTexture
---@param WindowTitle FText
---@param bAverageColorOnDrag boolean
---@param bUseImplicitGamma boolean
---@return UCompositingPickerAsyncTask
function UCompositingPickerAsyncTask:OpenCompositingPicker(PickerTarget, DisplayImage, WindowTitle, bAverageColorOnDrag, bUseImplicitGamma) end


---@class UCompositingPostProcessPass : UCompositingElementTransform
---@field RenderScale float
---@field PostProcessPasses TArray<UComposurePostProcessPassPolicy>
UCompositingPostProcessPass = {}

---@return UCompositingPostProcessPass
function UCompositingPostProcessPass:get() end



---@class UCompositingTonemapPass : UCompositingElementTransform
---@field ColorGradingSettings FColorGradingSettings
---@field FilmStockSettings FFilmStockSettings
---@field ChromaticAberration float
---@field TonemapPolicy UComposureTonemapperPassPolicy
UCompositingTonemapPass = {}

---@return UCompositingTonemapPass
function UCompositingTonemapPass:get() end



---@class UComposureBlueprintLibrary : UBlueprintFunctionLibrary
UComposureBlueprintLibrary = {}

---@return UComposureBlueprintLibrary
function UComposureBlueprintLibrary:get() end

---@param UVMapSettings FComposureUVMapSettings
---@param Material UMaterialInstanceDynamic
function UComposureBlueprintLibrary:SetUVMapSettingsToMaterialParameters(UVMapSettings, Material) end
function UComposureBlueprintLibrary:RequestRedrawComposureViewport() end
---@param OriginalElementName FName
---@param NewElementName FName
---@return boolean
function UComposureBlueprintLibrary:RenameComposureElement(OriginalElementName, NewElementName) end
function UComposureBlueprintLibrary:RefreshComposureElementList() end
---@param CompElement ACompositingElement
---@return boolean
function UComposureBlueprintLibrary:IsComposureElementDrawing(CompElement) end
---@param In FVector2D
---@param Out FVector2D
function UComposureBlueprintLibrary:InvertUVDisplacementMapEncodingParameters(In, Out) end
---@param ChromaticAberrationAmount float
---@param RedGreenUVFactors FVector2D
function UComposureBlueprintLibrary:GetRedGreenUVFactorsFromChromaticAberration(ChromaticAberrationAmount, RedGreenUVFactors) end
---@param PostMoveSettings FComposurePostMoveSettings
---@param HorizontalFOVAngle float
---@param AspectRatio float
---@param ProjectionMatrix FMatrix
function UComposureBlueprintLibrary:GetProjectionMatrixFromPostMoveSettings(PostMoveSettings, HorizontalFOVAngle, AspectRatio, ProjectionMatrix) end
---@param PlayerCameraManager APlayerCameraManager
---@param DisplayGamma float
function UComposureBlueprintLibrary:GetPlayerDisplayGamma(PlayerCameraManager, DisplayGamma) end
---@param PostMoveSettings FComposurePostMoveSettings
---@param AspectRatio float
---@param CropingUVTransformationMatrix FMatrix
---@param UncropingUVTransformationMatrix FMatrix
function UComposureBlueprintLibrary:GetCroppingUVTransformationMatrixFromPostMoveSettings(PostMoveSettings, AspectRatio, CropingUVTransformationMatrix, UncropingUVTransformationMatrix) end
---@param ElementName FName
---@return ACompositingElement
function UComposureBlueprintLibrary:GetComposureElement(ElementName) end
---@param ElementToDelete FName
function UComposureBlueprintLibrary:DeleteComposureElementAndChildren(ElementToDelete) end
---@param WorldContextObject UObject
---@return UComposurePlayerCompositingTarget
function UComposureBlueprintLibrary:CreatePlayerCompositingTarget(WorldContextObject) end
---@param ElementName FName
---@param ClassType TSubclassOf<ACompositingElement>
---@param LevelContext AActor
---@return ACompositingElement
function UComposureBlueprintLibrary:CreateComposureElement(ElementName, ClassType, LevelContext) end
---@param SrcCamera UCameraComponent
---@param DstCaptureComponent USceneCaptureComponent2D
---@param OriginalFocalLength float
---@param OverscanFactor float
function UComposureBlueprintLibrary:CopyCameraSettingsToSceneCapture(SrcCamera, DstCaptureComponent, OriginalFocalLength, OverscanFactor) end
---@param ParentName FName
---@param ChildName FName
---@return boolean
function UComposureBlueprintLibrary:AttachComposureElement(ParentName, ChildName) end


---@class UComposureCompositingTargetComponent : UActorComponent
---@field DisplayTexture UTexture
UComposureCompositingTargetComponent = {}

---@return UComposureCompositingTargetComponent
function UComposureCompositingTargetComponent:get() end

---@param DisplayTexture UTexture
function UComposureCompositingTargetComponent:SetDisplayTexture(DisplayTexture) end
---@return UTexture
function UComposureCompositingTargetComponent:GetDisplayTexture() end


---@class UComposureGameSettings : UObject
---@field StaticVideoPlateDebugImage FSoftObjectPath
---@field bSceneCapWarnOfMissingCam boolean
---@field FallbackCompositingTexture FSoftObjectPath
---@field FallbackCompositingTextureObj UTexture
UComposureGameSettings = {}

---@return UComposureGameSettings
function UComposureGameSettings:get() end



---@class UComposureLensBloomPass : UComposurePostProcessPass
---@field Settings FLensBloomSettings
---@field TonemapperReplacingMID UMaterialInstanceDynamic
UComposureLensBloomPass = {}

---@return UComposureLensBloomPass
function UComposureLensBloomPass:get() end

---@param Material UMaterialInstanceDynamic
function UComposureLensBloomPass:SetTonemapperReplacingMaterial(Material) end
function UComposureLensBloomPass:BloomToRenderTarget() end


---@class UComposureLensBloomPassPolicy : UComposurePostProcessPassPolicy
---@field Settings FLensBloomSettings
---@field ReplacementMaterial UMaterialInterface
---@field BloomIntensityParamName FName
---@field TonemapperReplacmentMID UMaterialInstanceDynamic
UComposureLensBloomPassPolicy = {}

---@return UComposureLensBloomPassPolicy
function UComposureLensBloomPassPolicy:get() end



---@class UComposurePlayerCompositingCameraModifier : UCameraModifier
---@field Target TScriptInterface<IComposurePlayerCompositingInterface>
UComposurePlayerCompositingCameraModifier = {}

---@return UComposurePlayerCompositingCameraModifier
function UComposurePlayerCompositingCameraModifier:get() end



---@class UComposurePlayerCompositingTarget : UObject
---@field PlayerCameraManager APlayerCameraManager
---@field PlayerCameraModifier UComposurePlayerCompositingCameraModifier
---@field ReplaceTonemapperMID UMaterialInstanceDynamic
UComposurePlayerCompositingTarget = {}

---@return UComposurePlayerCompositingTarget
function UComposurePlayerCompositingTarget:get() end

---@param RenderTarget UTextureRenderTarget2D
function UComposurePlayerCompositingTarget:SetRenderTarget(RenderTarget) end
---@param PlayerCameraManager APlayerCameraManager
---@return APlayerCameraManager
function UComposurePlayerCompositingTarget:SetPlayerCameraManager(PlayerCameraManager) end
---@return APlayerCameraManager
function UComposurePlayerCompositingTarget:GetPlayerCameraManager() end


---@class UComposurePostProcessBlendable : UObject
---@field Target UComposurePostProcessPass
UComposurePostProcessBlendable = {}

---@return UComposurePostProcessBlendable
function UComposurePostProcessBlendable:get() end



---@class UComposurePostProcessPass : USceneComponent
---@field SceneCapture USceneCaptureComponent2D
---@field BlendableInterface UComposurePostProcessBlendable
---@field SetupMaterial UMaterialInterface
---@field TonemapperReplacement UMaterialInterface
UComposurePostProcessPass = {}

---@return UComposurePostProcessPass
function UComposurePostProcessPass:get() end

---@param Material UMaterialInterface
function UComposurePostProcessPass:SetSetupMaterial(Material) end
---@param RenderTarget UTextureRenderTarget2D
function UComposurePostProcessPass:SetOutputRenderTarget(RenderTarget) end
---@return UMaterialInterface
function UComposurePostProcessPass:GetSetupMaterial() end
---@return UTextureRenderTarget2D
function UComposurePostProcessPass:GetOutputRenderTarget() end


---@class UComposurePostProcessPassPolicy : UObject
UComposurePostProcessPassPolicy = {}

---@return UComposurePostProcessPassPolicy
function UComposurePostProcessPassPolicy:get() end

---@param SceneCapture USceneCaptureComponent2D
---@param TonemapperOverride UMaterialInterface
function UComposurePostProcessPassPolicy:SetupPostProcess(SceneCapture, TonemapperOverride) end


---@class UComposurePostProcessingPassProxy : UComposurePostProcessPass
---@field SetupMID UMaterialInstanceDynamic
UComposurePostProcessingPassProxy = {}

---@return UComposurePostProcessingPassProxy
function UComposurePostProcessingPassProxy:get() end

---@param PrePassInput UTexture
---@param PostProcessPass UComposurePostProcessPassPolicy
function UComposurePostProcessingPassProxy:Execute(PrePassInput, PostProcessPass) end


---@class UComposureTonemapperPass : UComposurePostProcessPass
---@field ColorGradingSettings FColorGradingSettings
---@field FilmStockSettings FFilmStockSettings
---@field ChromaticAberration float
UComposureTonemapperPass = {}

---@return UComposureTonemapperPass
function UComposureTonemapperPass:get() end

function UComposureTonemapperPass:TonemapToRenderTarget() end


---@class UComposureTonemapperPassPolicy : UComposurePostProcessPassPolicy
---@field ColorGradingSettings FColorGradingSettings
---@field FilmStockSettings FFilmStockSettings
---@field ChromaticAberration float
UComposureTonemapperPassPolicy = {}

---@return UComposureTonemapperPassPolicy
function UComposureTonemapperPassPolicy:get() end



---@class UEXRFileCompositingOutput : UCompositingElementOutput
---@field OutputDirectiory FDirectoryPath
---@field FilenameFormat FString
---@field OutputFrameRate FFrameRate
---@field Compression EExrCompressionOptions
UEXRFileCompositingOutput = {}

---@return UEXRFileCompositingOutput
function UEXRFileCompositingOutput:get() end



---@class UMediaTextureCompositingInput : UCompositingMediaInput
---@field MediaSource UMediaTexture
UMediaTextureCompositingInput = {}

---@return UMediaTextureCompositingInput
function UMediaTextureCompositingInput:get() end



---@class UMovieSceneComposureExportInitializer : UObject
UMovieSceneComposureExportInitializer = {}

---@return UMovieSceneComposureExportInitializer
function UMovieSceneComposureExportInitializer:get() end

---@param CompShotElement ACompositingElement
---@param SceneCapture USceneCaptureComponent2D
---@param BuffersToExport TArray<FString>
function UMovieSceneComposureExportInitializer:ExportSceneCaptureBuffers(CompShotElement, SceneCapture, BuffersToExport) end


---@class UMovieSceneComposureExportSection : UMovieSceneSection
UMovieSceneComposureExportSection = {}

---@return UMovieSceneComposureExportSection
function UMovieSceneComposureExportSection:get() end


---@class UMovieSceneComposureExportTrack : UMovieSceneTrack
---@field Pass FMovieSceneComposureExportPass
---@field Sections TArray<UMovieSceneSection>
UMovieSceneComposureExportTrack = {}

---@return UMovieSceneComposureExportTrack
function UMovieSceneComposureExportTrack:get() end



---@class UMovieSceneComposurePostMoveSettingsSection : UMovieSceneSection
---@field Pivot FMovieSceneFloatChannel
---@field Translation FMovieSceneFloatChannel
---@field RotationAngle FMovieSceneFloatChannel
---@field Scale FMovieSceneFloatChannel
UMovieSceneComposurePostMoveSettingsSection = {}

---@return UMovieSceneComposurePostMoveSettingsSection
function UMovieSceneComposurePostMoveSettingsSection:get() end



---@class UMovieSceneComposurePostMoveSettingsTrack : UMovieScenePropertyTrack
UMovieSceneComposurePostMoveSettingsTrack = {}

---@return UMovieSceneComposurePostMoveSettingsTrack
function UMovieSceneComposurePostMoveSettingsTrack:get() end


---@class UMultiPassChromaKeyer : UCompositingElementTransform
---@field KeyColors TArray<FLinearColor>
---@field KeyerMaterial FCompositingMaterial
---@field DefaultWhiteTexture UTexture
UMultiPassChromaKeyer = {}

---@return UMultiPassChromaKeyer
function UMultiPassChromaKeyer:get() end



---@class UMultiPassDespill : UCompositingElementTransform
---@field KeyColors TArray<FLinearColor>
---@field KeyerMaterial FCompositingMaterial
---@field DefaultWhiteTexture UTexture
UMultiPassDespill = {}

---@return UMultiPassDespill
function UMultiPassDespill:get() end



---@class UPlayerCompOutputCameraModifier : UCameraModifier
---@field Owner UPlayerViewportCompositingOutput
UPlayerCompOutputCameraModifier = {}

---@return UPlayerCompOutputCameraModifier
function UPlayerCompOutputCameraModifier:get() end



---@class UPlayerViewportCompositingOutput : UColorConverterOutputPass
---@field PlayerIndex int32
---@field ApplyToneCurve boolean
---@field ActiveCamModifier UPlayerCompOutputCameraModifier
---@field TonemapperBaseMat UMaterialInterface
---@field PreTonemapBaseMat UMaterialInterface
---@field ViewportOverrideMID UMaterialInstanceDynamic
UPlayerViewportCompositingOutput = {}

---@return UPlayerViewportCompositingOutput
function UPlayerViewportCompositingOutput:get() end



---@class URenderTargetCompositingOutput : UCompositingElementOutput
---@field RenderTarget UTextureRenderTarget2D
URenderTargetCompositingOutput = {}

---@return URenderTargetCompositingOutput
function URenderTargetCompositingOutput:get() end



