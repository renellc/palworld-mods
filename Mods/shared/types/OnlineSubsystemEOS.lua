---@meta

---@class FArtifactSettings
---@field ArtifactName FString
---@field ClientId FString
---@field ClientSecret FString
---@field ProductId FString
---@field SandboxId FString
---@field DeploymentId FString
---@field EncryptionKey FString
FArtifactSettings = {}

---@return FArtifactSettings
function FArtifactSettings:get() end



---@class UDEPRECATED_EOSArtifactSettings : UDataAsset
UDEPRECATED_EOSArtifactSettings = {}

---@return UDEPRECATED_EOSArtifactSettings
function UDEPRECATED_EOSArtifactSettings:get() end


---@class UEOSSettings : URuntimeOptionsBase
---@field CacheDir FString
---@field DefaultArtifactName FString
---@field TickBudgetInMilliseconds int32
---@field bEnableOverlay boolean
---@field bEnableSocialOverlay boolean
---@field bEnableEditorOverlay boolean
---@field bShouldEnforceBeingLaunchedByEGS boolean
---@field TitleStorageTags TArray<FString>
---@field TitleStorageReadChunkLength int32
---@field Artifacts TArray<FArtifactSettings>
---@field bUseEAS boolean
---@field bUseEOSConnect boolean
---@field bMirrorStatsToEOS boolean
---@field bMirrorAchievementsToEOS boolean
---@field bUseEOSSessions boolean
---@field bMirrorPresenceToEAS boolean
---@field bUseDeviceIdLogin boolean
---@field bOverrideDedicatedServer boolean
UEOSSettings = {}

---@return UEOSSettings
function UEOSSettings:get() end



---@class UNetDriverEOS : UNetDriverEOSBase
UNetDriverEOS = {}

---@return UNetDriverEOS
function UNetDriverEOS:get() end


