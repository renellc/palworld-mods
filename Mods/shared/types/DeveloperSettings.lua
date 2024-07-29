---@meta

---@class FPerPlatformSettings
---@field Settings TArray<UPlatformSettings>
FPerPlatformSettings = {}

---@return FPerPlatformSettings
function FPerPlatformSettings:get() end



---@class FPlatformSettingsInstances
---@field PlatformInstance UPlatformSettings
---@field OtherPlatforms TMap<FName, UPlatformSettings>
FPlatformSettingsInstances = {}

---@return FPlatformSettingsInstances
function FPlatformSettingsInstances:get() end



---@class UDeveloperSettings : UObject
UDeveloperSettings = {}

---@return UDeveloperSettings
function UDeveloperSettings:get() end


---@class UDeveloperSettingsBackedByCVars : UDeveloperSettings
UDeveloperSettingsBackedByCVars = {}

---@return UDeveloperSettingsBackedByCVars
function UDeveloperSettingsBackedByCVars:get() end


---@class UPlatformSettings : UObject
UPlatformSettings = {}

---@return UPlatformSettings
function UPlatformSettings:get() end


---@class UPlatformSettingsManager : UObject
---@field SettingsMap TMap<TSubclassOf<UPlatformSettings>, FPlatformSettingsInstances>
UPlatformSettingsManager = {}

---@return UPlatformSettingsManager
function UPlatformSettingsManager:get() end



