---@meta

---@class URecomputeUVsOpFactory : UObject
---@field Settings URecomputeUVsToolProperties
URecomputeUVsOpFactory = {}

---@return URecomputeUVsOpFactory
function URecomputeUVsOpFactory:get() end



---@class URecomputeUVsToolProperties : UInteractiveToolPropertySet
---@field bEnablePolygroupSupport boolean
---@field IslandGeneration ERecomputeUVsPropertiesIslandMode
---@field UnwrapType ERecomputeUVsPropertiesUnwrapType
---@field AutoRotation ERecomputeUVsToolOrientationMode
---@field bPreserveIrregularity boolean
---@field SmoothingSteps int32
---@field SmoothingAlpha float
---@field MergingDistortionThreshold float
---@field MergingAngleThreshold float
---@field LayoutType ERecomputeUVsPropertiesLayoutType
---@field TextureResolution int32
---@field NormalizeScale float
URecomputeUVsToolProperties = {}

---@return URecomputeUVsToolProperties
function URecomputeUVsToolProperties:get() end



---@class UUVLayoutOperatorFactory : UObject
---@field Settings UUVLayoutProperties
UUVLayoutOperatorFactory = {}

---@return UUVLayoutOperatorFactory
function UUVLayoutOperatorFactory:get() end



---@class UUVLayoutProperties : UInteractiveToolPropertySet
---@field LayoutType EUVLayoutType
---@field TextureResolution int32
---@field Scale float
---@field Translation FVector2D
---@field bAllowFlips boolean
UUVLayoutProperties = {}

---@return UUVLayoutProperties
function UUVLayoutProperties:get() end



