---@meta

---@class UAudioAnalyzer : UObject
---@field AudioBus UAudioBus
---@field AudioAnalyzerSubsystem UAudioAnalyzerSubsystem
UAudioAnalyzer = {}

---@return UAudioAnalyzer
function UAudioAnalyzer:get() end

---@param WorldContextObject UObject
function UAudioAnalyzer:StopAnalyzing(WorldContextObject) end
---@param WorldContextObject UObject
---@param AudioBusToAnalyze UAudioBus
function UAudioAnalyzer:StartAnalyzing(WorldContextObject, AudioBusToAnalyze) end


---@class UAudioAnalyzerAssetBase : UObject
UAudioAnalyzerAssetBase = {}

---@return UAudioAnalyzerAssetBase
function UAudioAnalyzerAssetBase:get() end


---@class UAudioAnalyzerNRT : UAudioAnalyzerAssetBase
---@field Sound USoundWave
---@field DurationInSeconds float
UAudioAnalyzerNRT = {}

---@return UAudioAnalyzerNRT
function UAudioAnalyzerNRT:get() end



---@class UAudioAnalyzerNRTSettings : UAudioAnalyzerAssetBase
UAudioAnalyzerNRTSettings = {}

---@return UAudioAnalyzerNRTSettings
function UAudioAnalyzerNRTSettings:get() end


---@class UAudioAnalyzerSettings : UAudioAnalyzerAssetBase
UAudioAnalyzerSettings = {}

---@return UAudioAnalyzerSettings
function UAudioAnalyzerSettings:get() end


---@class UAudioAnalyzerSubsystem : UEngineSubsystem
---@field AudioAnalyzers TArray<UAudioAnalyzer>
UAudioAnalyzerSubsystem = {}

---@return UAudioAnalyzerSubsystem
function UAudioAnalyzerSubsystem:get() end



