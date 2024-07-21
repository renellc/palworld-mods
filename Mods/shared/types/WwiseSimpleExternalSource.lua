---@meta

---@class FWwiseExternalSourceCookieDefaultMedia : FTableRowBase
---@field ExternalSourceCookie int32
---@field ExternalSourceName FString
---@field MediaInfoId int32
---@field MediaName FString
FWwiseExternalSourceCookieDefaultMedia = {}



---@class FWwiseExternalSourceMediaInfo : FTableRowBase
---@field ExternalSourceMediaInfoId int32
---@field MediaName FName
---@field CodecID int32
---@field bIsStreamed boolean
---@field bUseDeviceMemory boolean
---@field MemoryAlignment int32
---@field PrefetchSize int32
FWwiseExternalSourceMediaInfo = {}



---@class UWwiseExternalSourceSettings : UObject
---@field MediaInfoTable FSoftObjectPath
---@field ExternalSourceDefaultMedia FSoftObjectPath
---@field ExternalSourceStagingDirectory FDirectoryPath
UWwiseExternalSourceSettings = {}



