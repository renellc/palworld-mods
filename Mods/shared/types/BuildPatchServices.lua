---@meta

---@class FChunkInfoData
---@field Guid FGuid
---@field Hash uint64
---@field ShaHash FSHAHashData
---@field FileSize int64
---@field GroupNumber uint8
FChunkInfoData = {}

---@return FChunkInfoData
function FChunkInfoData:get() end



---@class FChunkPartData
---@field Guid FGuid
---@field Offset uint32
---@field Size uint32
FChunkPartData = {}

---@return FChunkPartData
function FChunkPartData:get() end



---@class FCustomFieldData
---@field Key FString
---@field Value FString
FCustomFieldData = {}

---@return FCustomFieldData
function FCustomFieldData:get() end



---@class FFileManifestData
---@field Filename FString
---@field FileHash FSHAHashData
---@field FileChunkParts TArray<FChunkPartData>
---@field InstallTags TArray<FString>
---@field bIsUnixExecutable boolean
---@field SymlinkTarget FString
---@field bIsReadOnly boolean
---@field bIsCompressed boolean
FFileManifestData = {}

---@return FFileManifestData
function FFileManifestData:get() end



---@class FSHAHashData
---@field Hash uint8
FSHAHashData = {}

---@return FSHAHashData
function FSHAHashData:get() end



---@class UBuildPatchManifest : UObject
---@field ManifestFileVersion uint8
---@field bIsFileData boolean
---@field AppID uint32
---@field AppName FString
---@field BuildVersion FString
---@field LaunchExe FString
---@field LaunchCommand FString
---@field PrereqIds TSet<FString>
---@field PrereqName FString
---@field PrereqPath FString
---@field PrereqArgs FString
---@field FileManifestList TArray<FFileManifestData>
---@field ChunkList TArray<FChunkInfoData>
---@field CustomFields TArray<FCustomFieldData>
UBuildPatchManifest = {}

---@return UBuildPatchManifest
function UBuildPatchManifest:get() end



