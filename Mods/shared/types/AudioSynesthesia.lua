---@meta

---@class FLoudnessResults
---@field Loudness float
---@field NormalizedLoudness float
---@field PerceptualEnergy float
---@field TimeSeconds float
FLoudnessResults = {}

---@return FLoudnessResults
function FLoudnessResults:get() end



---@class FMeterResults
---@field TimeSeconds float
---@field MeterValue float
---@field PeakValue float
---@field NumSamplesClipping int32
---@field ClippingValue float
FMeterResults = {}

---@return FMeterResults
function FMeterResults:get() end



---@class FSynesthesiaSpectrumResults
---@field TimeSeconds float
---@field SpectrumValues TArray<float>
FSynesthesiaSpectrumResults = {}

---@return FSynesthesiaSpectrumResults
function FSynesthesiaSpectrumResults:get() end



---@class UAudioSynesthesiaNRT : UAudioAnalyzerNRT
UAudioSynesthesiaNRT = {}

---@return UAudioSynesthesiaNRT
function UAudioSynesthesiaNRT:get() end


---@class UAudioSynesthesiaNRTSettings : UAudioAnalyzerNRTSettings
UAudioSynesthesiaNRTSettings = {}

---@return UAudioSynesthesiaNRTSettings
function UAudioSynesthesiaNRTSettings:get() end


---@class UAudioSynesthesiaSettings : UAudioAnalyzerSettings
UAudioSynesthesiaSettings = {}

---@return UAudioSynesthesiaSettings
function UAudioSynesthesiaSettings:get() end


---@class UConstantQNRT : UAudioSynesthesiaNRT
---@field Settings UConstantQNRTSettings
UConstantQNRT = {}

---@return UConstantQNRT
function UConstantQNRT:get() end

---@param InSeconds float
---@param InChannel int32
---@param OutConstantQ TArray<float>
function UConstantQNRT:GetNormalizedChannelConstantQAtTime(InSeconds, InChannel, OutConstantQ) end
---@param InSeconds float
---@param InChannel int32
---@param OutConstantQ TArray<float>
function UConstantQNRT:GetChannelConstantQAtTime(InSeconds, InChannel, OutConstantQ) end


---@class UConstantQNRTSettings : UAudioSynesthesiaNRTSettings
---@field StartingFrequency float
---@field NumBands int32
---@field NumBandsPerOctave float
---@field AnalysisPeriod float
---@field bDownmixToMono boolean
---@field FFTSize EConstantQFFTSizeEnum
---@field WindowType EFFTWindowType
---@field SpectrumType EAudioSpectrumType
---@field BandWidthStretch float
---@field CQTNormalization EConstantQNormalizationEnum
---@field NoiseFloorDb float
UConstantQNRTSettings = {}

---@return UConstantQNRTSettings
function UConstantQNRTSettings:get() end



---@class ULoudnessAnalyzer : UAudioAnalyzer
---@field Settings ULoudnessSettings
---@field OnOverallLoudnessResults FLoudnessAnalyzerOnOverallLoudnessResults
---@field OnPerChannelLoudnessResults FLoudnessAnalyzerOnPerChannelLoudnessResults
---@field OnLatestOverallLoudnessResults FLoudnessAnalyzerOnLatestOverallLoudnessResults
---@field OnLatestPerChannelLoudnessResults FLoudnessAnalyzerOnLatestPerChannelLoudnessResults
ULoudnessAnalyzer = {}

---@return ULoudnessAnalyzer
function ULoudnessAnalyzer:get() end



---@class ULoudnessNRT : UAudioSynesthesiaNRT
---@field Settings ULoudnessNRTSettings
ULoudnessNRT = {}

---@return ULoudnessNRT
function ULoudnessNRT:get() end

---@param InSeconds float
---@param OutLoudness float
function ULoudnessNRT:GetNormalizedLoudnessAtTime(InSeconds, OutLoudness) end
---@param InSeconds float
---@param InChannel int32
---@param OutLoudness float
function ULoudnessNRT:GetNormalizedChannelLoudnessAtTime(InSeconds, InChannel, OutLoudness) end
---@param InSeconds float
---@param OutLoudness float
function ULoudnessNRT:GetLoudnessAtTime(InSeconds, OutLoudness) end
---@param InSeconds float
---@param InChannel int32
---@param OutLoudness float
function ULoudnessNRT:GetChannelLoudnessAtTime(InSeconds, InChannel, OutLoudness) end


---@class ULoudnessNRTSettings : UAudioSynesthesiaNRTSettings
---@field AnalysisPeriod float
---@field MinimumFrequency float
---@field MaximumFrequency float
---@field CurveType ELoudnessNRTCurveTypeEnum
---@field NoiseFloorDb float
ULoudnessNRTSettings = {}

---@return ULoudnessNRTSettings
function ULoudnessNRTSettings:get() end



---@class ULoudnessSettings : UAudioSynesthesiaSettings
---@field AnalysisPeriod float
---@field MinimumFrequency float
---@field MaximumFrequency float
---@field CurveType ELoudnessCurveTypeEnum
---@field NoiseFloorDb float
---@field ExpectedMaxLoudness float
ULoudnessSettings = {}

---@return ULoudnessSettings
function ULoudnessSettings:get() end



---@class UMeterAnalyzer : UAudioAnalyzer
---@field Settings UMeterSettings
---@field OnOverallMeterResults FMeterAnalyzerOnOverallMeterResults
---@field OnPerChannelMeterResults FMeterAnalyzerOnPerChannelMeterResults
---@field OnLatestOverallMeterResults FMeterAnalyzerOnLatestOverallMeterResults
---@field OnLatestPerChannelMeterResults FMeterAnalyzerOnLatestPerChannelMeterResults
UMeterAnalyzer = {}

---@return UMeterAnalyzer
function UMeterAnalyzer:get() end



---@class UMeterSettings : UAudioSynesthesiaSettings
---@field AnalysisPeriod float
---@field PeakMode EMeterPeakType
---@field MeterAttackTime int32
---@field MeterReleaseTime int32
---@field PeakHoldTime int32
---@field ClippingThreshold float
UMeterSettings = {}

---@return UMeterSettings
function UMeterSettings:get() end



---@class UOnsetNRT : UAudioSynesthesiaNRT
---@field Settings UOnsetNRTSettings
UOnsetNRT = {}

---@return UOnsetNRT
function UOnsetNRT:get() end

---@param InStartSeconds float
---@param InEndSeconds float
---@param InChannel int32
---@param OutOnsetTimestamps TArray<float>
---@param OutOnsetStrengths TArray<float>
function UOnsetNRT:GetNormalizedChannelOnsetsBetweenTimes(InStartSeconds, InEndSeconds, InChannel, OutOnsetTimestamps, OutOnsetStrengths) end
---@param InStartSeconds float
---@param InEndSeconds float
---@param InChannel int32
---@param OutOnsetTimestamps TArray<float>
---@param OutOnsetStrengths TArray<float>
function UOnsetNRT:GetChannelOnsetsBetweenTimes(InStartSeconds, InEndSeconds, InChannel, OutOnsetTimestamps, OutOnsetStrengths) end


---@class UOnsetNRTSettings : UAudioSynesthesiaNRTSettings
---@field bDownmixToMono boolean
---@field GranularityInSeconds float
---@field Sensitivity float
---@field MinimumFrequency float
---@field MaximumFrequency float
UOnsetNRTSettings = {}

---@return UOnsetNRTSettings
function UOnsetNRTSettings:get() end



---@class USynesthesiaSpectrumAnalysisSettings : UAudioSynesthesiaSettings
---@field AnalysisPeriod float
---@field FFTSize EFFTSize
---@field SpectrumType EAudioSpectrumType
---@field WindowType EFFTWindowType
---@field bDownmixToMono boolean
USynesthesiaSpectrumAnalysisSettings = {}

---@return USynesthesiaSpectrumAnalysisSettings
function USynesthesiaSpectrumAnalysisSettings:get() end



---@class USynesthesiaSpectrumAnalyzer : UAudioAnalyzer
---@field Settings USynesthesiaSpectrumAnalysisSettings
---@field OnSpectrumResults FSynesthesiaSpectrumAnalyzerOnSpectrumResults
---@field OnLatestSpectrumResults FSynesthesiaSpectrumAnalyzerOnLatestSpectrumResults
USynesthesiaSpectrumAnalyzer = {}

---@return USynesthesiaSpectrumAnalyzer
function USynesthesiaSpectrumAnalyzer:get() end

---@return int32
function USynesthesiaSpectrumAnalyzer:GetNumCenterFrequencies() end
---@param InSampleRate float
---@param OutCenterFrequencies TArray<float>
function USynesthesiaSpectrumAnalyzer:GetCenterFrequencies(InSampleRate, OutCenterFrequencies) end


