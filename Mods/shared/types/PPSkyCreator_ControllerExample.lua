---@meta

---@class APPSkyCreator_ControllerExample_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SoundRain UAudioComponent
---@field TextRender UTextRenderComponent
---@field DefaultSceneRoot USceneComponent
---@field SkyCreatorTarget APPSkyCreator
---@field bRealtimeTimeOfDay boolean
---@field RealtimeTimeOfDayStart double
---@field RealtimeTimeOfDayDuration double
---@field bRealtimeWeatherChange boolean
---@field ChangeIntervalTimeMin double
---@field ChangeIntervalTimeMax double
---@field StartWeatherPreset UPPSkyCreatorWeatherPreset
---@field InterpolateDurationTimeMin double
---@field InterpolateDurationTimeMax double
---@field RandomWeatherPresets TArray<UPPSkyCreatorWeatherPreset>
---@field DrawDebugMessages boolean
---@field Rain USoundCue
---@field NextWeatherPreset UPPSkyCreatorWeatherPreset
---@field CurrentWeatherSettings FPPSkyCreatorWeatherSettings
---@field NextWeatherSettings FPPSkyCreatorWeatherSettings
---@field WeatherInterpolateDuration double
---@field InterpolateDurationAlpha double
---@field CurrentChangeInterval double
---@field Timer_WeatherInterpolateDuration FTimerHandle
---@field Timer_WeatherChangeInterval FTimerHandle
---@field bEnableRandomWind boolean
---@field CloudWindSpeedMin double
---@field CloudWindSpeedMax double
---@field CurrentWindSettings FPPSkyCreatorWindSettings
---@field NextWindSettings FPPSkyCreatorWindSettings
---@field CurrentWindDirection double
---@field CurrentWindSpeed double
---@field WetnessAccumulateDuration double
---@field WetnessDryDuration double
---@field PuddlesAccumulateDuration double
---@field PuddlesDryDuration double
---@field SnowAccumulateDuration double
---@field SnowMeltDuration double
---@field WetnessAccumulationTimer FTimerHandle
---@field WetnessDryTimer FTimerHandle
---@field PuddlesAccumulationTimer FTimerHandle
---@field PuddlesDryTimer FTimerHandle
---@field SnowAccumulationTimer FTimerHandle
---@field SnowMeltTimer FTimerHandle
---@field CurrentWetnessAmount double
---@field NextWetnessAmount double
---@field CurrentPuddlesAmount double
---@field NextPuddlesAmount double
---@field CurrentSnowAmount double
---@field NextSnowAmount double
---@field Lightnings USoundBase
APPSkyCreator_ControllerExample_C = {}

---@return APPSkyCreator_ControllerExample_C
function APPSkyCreator_ControllerExample_C:get() end

function APPSkyCreator_ControllerExample_C:SetRainVolume() end
function APPSkyCreator_ControllerExample_C:WeatherMaterialFX_Interpolation() end
function APPSkyCreator_ControllerExample_C:UserConstructionScript() end
function APPSkyCreator_ControllerExample_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function APPSkyCreator_ControllerExample_C:ReceiveTick(DeltaSeconds) end
function APPSkyCreator_ControllerExample_C:Start_WeatherInterpolation() end
function APPSkyCreator_ControllerExample_C:Finish_WeatherInterpolation() end
function APPSkyCreator_ControllerExample_C:Start_WeatherChangeInterval() end
function APPSkyCreator_ControllerExample_C:Finish_WeatherChangeInterval() end
function APPSkyCreator_ControllerExample_C:Finish_PuddlesAccumulation() end
function APPSkyCreator_ControllerExample_C:Finish_WetnessAccumulation() end
function APPSkyCreator_ControllerExample_C:Finish_WetnessDry() end
function APPSkyCreator_ControllerExample_C:Finish_PuddlesDry() end
function APPSkyCreator_ControllerExample_C:Start_WetnessAccumulate() end
function APPSkyCreator_ControllerExample_C:Start_WetnessDry() end
function APPSkyCreator_ControllerExample_C:Start_PuddlesAccumulate() end
function APPSkyCreator_ControllerExample_C:Start_PuddlesDry() end
function APPSkyCreator_ControllerExample_C:Start_SnowAccumulate() end
function APPSkyCreator_ControllerExample_C:Start_SnowMelt() end
function APPSkyCreator_ControllerExample_C:Finish_SnowAccumulate() end
function APPSkyCreator_ControllerExample_C:Finish_SnowDry() end
---@param LightningPosition FVector
function APPSkyCreator_ControllerExample_C:LightningStrike(LightningPosition) end
---@param EntryPoint int32
function APPSkyCreator_ControllerExample_C:ExecuteUbergraph_PPSkyCreator_ControllerExample(EntryPoint) end


