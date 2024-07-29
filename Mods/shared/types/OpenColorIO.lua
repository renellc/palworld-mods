---@meta

---@class FOpenColorIOColorConversionSettings
---@field ConfigurationSource UOpenColorIOConfiguration
---@field SourceColorSpace FOpenColorIOColorSpace
---@field DestinationColorSpace FOpenColorIOColorSpace
---@field DestinationDisplayView FOpenColorIODisplayView
---@field DisplayViewDirection EOpenColorIOViewTransformDirection
FOpenColorIOColorConversionSettings = {}

---@return FOpenColorIOColorConversionSettings
function FOpenColorIOColorConversionSettings:get() end



---@class FOpenColorIOColorSpace
---@field ColorSpaceName FString
---@field ColorSpaceIndex int32
---@field FamilyName FString
FOpenColorIOColorSpace = {}

---@return FOpenColorIOColorSpace
function FOpenColorIOColorSpace:get() end



---@class FOpenColorIODisplayConfiguration
---@field bIsEnabled boolean
---@field ColorConfiguration FOpenColorIOColorConversionSettings
FOpenColorIODisplayConfiguration = {}

---@return FOpenColorIODisplayConfiguration
function FOpenColorIODisplayConfiguration:get() end



---@class FOpenColorIODisplayView
---@field Display FString
---@field View FString
FOpenColorIODisplayView = {}

---@return FOpenColorIODisplayView
function FOpenColorIODisplayView:get() end



---@class UOpenColorIOBlueprintLibrary : UBlueprintFunctionLibrary
UOpenColorIOBlueprintLibrary = {}

---@return UOpenColorIOBlueprintLibrary
function UOpenColorIOBlueprintLibrary:get() end

---@param WorldContextObject UObject
---@param ConversionSettings FOpenColorIOColorConversionSettings
---@param InputTexture UTexture
---@param OutputRenderTarget UTextureRenderTarget2D
---@return boolean
function UOpenColorIOBlueprintLibrary:ApplyColorSpaceTransform(WorldContextObject, ConversionSettings, InputTexture, OutputRenderTarget) end


---@class UOpenColorIOColorTransform : UObject
---@field ConfigurationOwner UOpenColorIOConfiguration
---@field bIsDisplayViewType boolean
---@field SourceColorSpace FString
---@field DestinationColorSpace FString
---@field Display FString
---@field View FString
---@field DisplayViewDirection EOpenColorIOViewTransformDirection
---@field Textures TMap<int32, UTexture>
UOpenColorIOColorTransform = {}

---@return UOpenColorIOColorTransform
function UOpenColorIOColorTransform:get() end



---@class UOpenColorIOConfiguration : UObject
---@field ConfigurationFile FFilePath
---@field DesiredColorSpaces TArray<FOpenColorIOColorSpace>
---@field DesiredDisplayViews TArray<FOpenColorIODisplayView>
---@field ColorTransforms TArray<UOpenColorIOColorTransform>
UOpenColorIOConfiguration = {}

---@return UOpenColorIOConfiguration
function UOpenColorIOConfiguration:get() end



---@class UOpenColorIODisplayExtensionWrapper : UObject
UOpenColorIODisplayExtensionWrapper = {}

---@return UOpenColorIODisplayExtensionWrapper
function UOpenColorIODisplayExtensionWrapper:get() end

---@param IsActiveFunctions TArray<FSceneViewExtensionIsActiveFunctor>
function UOpenColorIODisplayExtensionWrapper:SetSceneExtensionIsActiveFunctions(IsActiveFunctions) end
---@param IsActiveFunction FSceneViewExtensionIsActiveFunctor
function UOpenColorIODisplayExtensionWrapper:SetSceneExtensionIsActiveFunction(IsActiveFunction) end
---@param InDisplayConfiguration FOpenColorIODisplayConfiguration
function UOpenColorIODisplayExtensionWrapper:SetOpenColorIOConfiguration(InDisplayConfiguration) end
function UOpenColorIODisplayExtensionWrapper:RemoveSceneExtension() end
---@param InDisplayConfiguration FOpenColorIODisplayConfiguration
---@param IsActiveFunction FSceneViewExtensionIsActiveFunctor
---@return UOpenColorIODisplayExtensionWrapper
function UOpenColorIODisplayExtensionWrapper:CreateOpenColorIODisplayExtension(InDisplayConfiguration, IsActiveFunction) end
---@param InDisplayConfiguration FOpenColorIODisplayConfiguration
---@return UOpenColorIODisplayExtensionWrapper
function UOpenColorIODisplayExtensionWrapper:CreateInGameOpenColorIODisplayExtension(InDisplayConfiguration) end


---@class UOpenColorIOSettings : UDeveloperSettings
---@field bUseLegacyProcessor boolean
---@field bUse32fLUT boolean
UOpenColorIOSettings = {}

---@return UOpenColorIOSettings
function UOpenColorIOSettings:get() end



