---@meta

---@class FWwiseExternalSourceCookieDefaultMedia : FTableRowBase
---@field ExternalSourceCookie int32
---@field ExternalSourceName FString
---@field MediaInfoId int32
---@field MediaName FString
FWwiseExternalSourceCookieDefaultMedia = {}

---@return FWwiseExternalSourceCookieDefaultMedia
function FWwiseExternalSourceCookieDefaultMedia:get() end



---@class FWwiseExternalSourceMediaInfo : FTableRowBase
---@field ExternalSourceMediaInfoId int32
---@field MediaName FName
---@field CodecID int32
---@field bIsStreamed boolean
---@field bUseDeviceMemory boolean
---@field MemoryAlignment int32
---@field PrefetchSize int32
FWwiseExternalSourceMediaInfo = {}

---@return FWwiseExternalSourceMediaInfo
function FWwiseExternalSourceMediaInfo:get() end



---@class UWwiseExternalSourceSettings : UObject
---@field MediaInfoTable FSoftObjectPath
---@field ExternalSourceDefaultMedia FSoftObjectPath
---@field ExternalSourceStagingDirectory FDirectoryPath
UWwiseExternalSourceSettings = {}

---@return UWwiseExternalSourceSettings
function UWwiseExternalSourceSettings:get() end



