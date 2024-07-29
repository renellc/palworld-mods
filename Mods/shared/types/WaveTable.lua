---@meta

---@class FWaveTableBankEntry
---@field Transform FWaveTableTransform
FWaveTableBankEntry = {}

---@return FWaveTableBankEntry
function FWaveTableBankEntry:get() end



---@class FWaveTableSettings
---@field FilePath FFilePath
---@field ChannelIndex int32
---@field Phase float
---@field Top float
---@field Tail float
---@field FadeIn float
---@field FadeOut float
---@field bNormalize boolean
---@field bRemoveOffset boolean
---@field SourcePCMData TArray<float>
FWaveTableSettings = {}

---@return FWaveTableSettings
function FWaveTableSettings:get() end



---@class FWaveTableTransform
---@field Curve EWaveTableCurve
---@field Scalar float
---@field CurveCustom FRichCurve
---@field CurveShared UCurveFloat
---@field WaveTable TArray<float>
FWaveTableTransform = {}

---@return FWaveTableTransform
function FWaveTableTransform:get() end



---@class UWaveTableBank : UObject
---@field Resolution EWaveTableResolution
---@field bBipolar boolean
---@field Entries TArray<FWaveTableBankEntry>
UWaveTableBank = {}

---@return UWaveTableBank
function UWaveTableBank:get() end



