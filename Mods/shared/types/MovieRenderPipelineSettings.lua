---@meta

---@class UMoviePipelineBurnInSetting : UMoviePipelineRenderPass
---@field BurnInClass FSoftClassPath
---@field bCompositeOntoFinalImage boolean
---@field RenderTarget UTextureRenderTarget2D
---@field BurnInWidgetInstances TArray<UMoviePipelineBurnInWidget>
UMoviePipelineBurnInSetting = {}

---@return UMoviePipelineBurnInSetting
function UMoviePipelineBurnInSetting:get() end



---@class UMoviePipelineBurnInWidget : UUserWidget
UMoviePipelineBurnInWidget = {}

---@return UMoviePipelineBurnInWidget
function UMoviePipelineBurnInWidget:get() end

---@param ForPipeline UMoviePipeline
function UMoviePipelineBurnInWidget:OnOutputFrameStarted(ForPipeline) end


---@class UMoviePipelineConsoleVariableSetting : UMoviePipelineSetting
---@field ConsoleVariables TMap<FString, float>
---@field StartConsoleCommands TArray<FString>
---@field EndConsoleCommands TArray<FString>
UMoviePipelineConsoleVariableSetting = {}

---@return UMoviePipelineConsoleVariableSetting
function UMoviePipelineConsoleVariableSetting:get() end



---@class UMoviePipelineWidgetRenderer : UMoviePipelineRenderPass
---@field bCompositeOntoFinalImage boolean
---@field RenderTarget UTextureRenderTarget2D
UMoviePipelineWidgetRenderer = {}

---@return UMoviePipelineWidgetRenderer
function UMoviePipelineWidgetRenderer:get() end



