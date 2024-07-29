---@meta

---@class FGLTFExportMessages
---@field Suggestions TArray<FString>
---@field Warnings TArray<FString>
---@field Errors TArray<FString>
FGLTFExportMessages = {}

---@return FGLTFExportMessages
function FGLTFExportMessages:get() end



---@class FGLTFOverrideMaterialBakeSettings
---@field bOverrideSize boolean
---@field Size EGLTFMaterialBakeSizePOT
---@field bOverrideFilter boolean
---@field Filter TextureFilter
---@field bOverrideTiling boolean
---@field Tiling TextureAddress
FGLTFOverrideMaterialBakeSettings = {}

---@return FGLTFOverrideMaterialBakeSettings
function FGLTFOverrideMaterialBakeSettings:get() end



---@class UGLTFAnimSequenceExporter : UGLTFExporter
UGLTFAnimSequenceExporter = {}

---@return UGLTFAnimSequenceExporter
function UGLTFAnimSequenceExporter:get() end


---@class UGLTFExportOptions : UObject
---@field ExportUniformScale float
---@field bExportPreviewMesh boolean
---@field bStrictCompliance boolean
---@field bSkipNearDefaultValues boolean
---@field bIncludeGeneratorVersion boolean
---@field bExportProxyMaterials boolean
---@field bExportUnlitMaterials boolean
---@field bExportClearCoatMaterials boolean
---@field bExportExtraBlendModes boolean
---@field BakeMaterialInputs EGLTFMaterialBakeMode
---@field DefaultMaterialBakeSize EGLTFMaterialBakeSizePOT
---@field DefaultMaterialBakeFilter TextureFilter
---@field DefaultMaterialBakeTiling TextureAddress
---@field DefaultInputBakeSettings TMap<EGLTFMaterialPropertyGroup, FGLTFOverrideMaterialBakeSettings>
---@field DefaultLevelOfDetail int32
---@field bExportVertexColors boolean
---@field bExportVertexSkinWeights boolean
---@field bUseMeshQuantization boolean
---@field bExportLevelSequences boolean
---@field bExportAnimationSequences boolean
---@field bExportPlaybackSettings boolean
---@field TextureImageFormat EGLTFTextureImageFormat
---@field TextureImageQuality int32
---@field NoLossyImageFormatFor int32
---@field bExportTextureTransforms boolean
---@field bExportLightmaps boolean
---@field TextureHDREncoding EGLTFTextureHDREncoding
---@field bAdjustNormalmaps boolean
---@field bExportHiddenInGame boolean
---@field ExportLights int32
---@field bExportCameras boolean
---@field bExportHDRIBackdrops boolean
---@field bExportSkySpheres boolean
---@field VariantSetsMode EGLTFVariantSetsMode
---@field ExportMaterialVariants EGLTFMaterialVariantMode
---@field bExportMeshVariants boolean
---@field bExportVisibilityVariants boolean
UGLTFExportOptions = {}

---@return UGLTFExportOptions
function UGLTFExportOptions:get() end

function UGLTFExportOptions:ResetToDefault() end


---@class UGLTFExporter : UExporter
UGLTFExporter = {}

---@return UGLTFExporter
function UGLTFExporter:get() end

---@param Object UObject
---@param FilePath FString
---@param Options UGLTFExportOptions
---@param SelectedActors TSet<AActor>
---@param OutMessages FGLTFExportMessages
---@return boolean
function UGLTFExporter:ExportToGLTF(Object, FilePath, Options, SelectedActors, OutMessages) end


---@class UGLTFLevelExporter : UGLTFExporter
UGLTFLevelExporter = {}

---@return UGLTFLevelExporter
function UGLTFLevelExporter:get() end


---@class UGLTFLevelSequenceExporter : UGLTFExporter
UGLTFLevelSequenceExporter = {}

---@return UGLTFLevelSequenceExporter
function UGLTFLevelSequenceExporter:get() end


---@class UGLTFLevelVariantSetsExporter : UGLTFExporter
UGLTFLevelVariantSetsExporter = {}

---@return UGLTFLevelVariantSetsExporter
function UGLTFLevelVariantSetsExporter:get() end


---@class UGLTFMaterialExportOptions : UAssetUserData
---@field Proxy UMaterialInterface
---@field Default FGLTFOverrideMaterialBakeSettings
---@field Inputs TMap<EGLTFMaterialPropertyGroup, FGLTFOverrideMaterialBakeSettings>
UGLTFMaterialExportOptions = {}

---@return UGLTFMaterialExportOptions
function UGLTFMaterialExportOptions:get() end



---@class UGLTFMaterialExporter : UGLTFExporter
---@field DefaultPreviewMesh UStaticMesh
UGLTFMaterialExporter = {}

---@return UGLTFMaterialExporter
function UGLTFMaterialExporter:get() end



---@class UGLTFProxyOptions : UObject
---@field bBakeMaterialInputs boolean
---@field DefaultMaterialBakeSize EGLTFMaterialBakeSizePOT
---@field DefaultMaterialBakeFilter TextureFilter
---@field DefaultMaterialBakeTiling TextureAddress
---@field DefaultInputBakeSettings TMap<EGLTFMaterialPropertyGroup, FGLTFOverrideMaterialBakeSettings>
UGLTFProxyOptions = {}

---@return UGLTFProxyOptions
function UGLTFProxyOptions:get() end

function UGLTFProxyOptions:ResetToDefault() end


---@class UGLTFSkeletalMeshExporter : UGLTFExporter
UGLTFSkeletalMeshExporter = {}

---@return UGLTFSkeletalMeshExporter
function UGLTFSkeletalMeshExporter:get() end


---@class UGLTFStaticMeshExporter : UGLTFExporter
UGLTFStaticMeshExporter = {}

---@return UGLTFStaticMeshExporter
function UGLTFStaticMeshExporter:get() end


