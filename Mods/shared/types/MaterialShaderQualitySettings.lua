---@meta

---@class FMaterialQualityOverrides
---@field bDiscardQualityDuringCook boolean
---@field bEnableOverride boolean
---@field bForceFullyRough boolean
---@field bForceNonMetal boolean
---@field bForceDisableLMDirectionality boolean
---@field bForceDisablePreintegratedGF boolean
---@field bDisableMaterialNormalCalculation boolean
---@field MobileShadowQuality EMobileShadowQuality
FMaterialQualityOverrides = {}

---@return FMaterialQualityOverrides
function FMaterialQualityOverrides:get() end



---@class UMaterialShaderQualitySettings : UObject
---@field ForwardSettingMap TMap<FName, UShaderPlatformQualitySettings>
UMaterialShaderQualitySettings = {}

---@return UMaterialShaderQualitySettings
function UMaterialShaderQualitySettings:get() end



---@class UShaderPlatformQualitySettings : UObject
---@field QualityOverrides FMaterialQualityOverrides
UShaderPlatformQualitySettings = {}

---@return UShaderPlatformQualitySettings
function UShaderPlatformQualitySettings:get() end



