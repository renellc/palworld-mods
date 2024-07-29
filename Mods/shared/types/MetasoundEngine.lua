---@meta

---@class FDefaultMetaSoundAssetAutoUpdateSettings
---@field Metasound FSoftObjectPath
FDefaultMetaSoundAssetAutoUpdateSettings = {}

---@return FDefaultMetaSoundAssetAutoUpdateSettings
function FDefaultMetaSoundAssetAutoUpdateSettings:get() end



---@class FMetaSoundAssetDirectory
---@field Directory FDirectoryPath
FMetaSoundAssetDirectory = {}

---@return FMetaSoundAssetDirectory
function FMetaSoundAssetDirectory:get() end



---@class FMetaSoundAsyncAssetDependencies
---@field Metasound UObject
FMetaSoundAsyncAssetDependencies = {}

---@return FMetaSoundAsyncAssetDependencies
function FMetaSoundAsyncAssetDependencies:get() end



---@class UMetaSoundAssetSubsystem : UEngineSubsystem
---@field LoadingDependencies TArray<FMetaSoundAsyncAssetDependencies>
UMetaSoundAssetSubsystem = {}

---@return UMetaSoundAssetSubsystem
function UMetaSoundAssetSubsystem:get() end

---@param Directories TArray<FMetaSoundAssetDirectory>
function UMetaSoundAssetSubsystem:UnregisterAssetClassesInDirectories(Directories) end
---@param Directories TArray<FMetaSoundAssetDirectory>
function UMetaSoundAssetSubsystem:RegisterAssetClassesInDirectories(Directories) end


---@class UMetaSoundPatch : UObject
---@field RootMetaSoundDocument FMetasoundFrontendDocument
---@field ReferencedAssetClassKeys TSet<FString>
---@field ReferencedAssetClassObjects TSet<UObject>
---@field ReferenceAssetClassCache TSet<FSoftObjectPath>
---@field AssetClassID FGuid
UMetaSoundPatch = {}

---@return UMetaSoundPatch
function UMetaSoundPatch:get() end



---@class UMetaSoundSettings : UDeveloperSettings
---@field bAutoUpdateEnabled boolean
---@field AutoUpdateDenylist TArray<FMetasoundFrontendClassName>
---@field AutoUpdateAssetDenylist TArray<FDefaultMetaSoundAssetAutoUpdateSettings>
---@field bAutoUpdateLogWarningOnDroppedConnection boolean
---@field DirectoriesToRegister TArray<FDirectoryPath>
---@field DenyListCacheChangeID int32
UMetaSoundSettings = {}

---@return UMetaSoundSettings
function UMetaSoundSettings:get() end



---@class UMetaSoundSource : USoundWaveProcedural
---@field RootMetaSoundDocument FMetasoundFrontendDocument
---@field ReferencedAssetClassKeys TSet<FString>
---@field ReferencedAssetClassObjects TSet<UObject>
---@field ReferenceAssetClassCache TSet<FSoftObjectPath>
---@field OutputFormat EMetasoundSourceAudioFormat
---@field AssetClassID FGuid
UMetaSoundSource = {}

---@return UMetaSoundSource
function UMetaSoundSource:get() end



---@class UMetasoundEditorGraphBase : UEdGraph
UMetasoundEditorGraphBase = {}

---@return UMetasoundEditorGraphBase
function UMetasoundEditorGraphBase:get() end


