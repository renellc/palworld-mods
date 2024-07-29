---@meta

---@class FBrushEffectBlurring
---@field bBlurShape boolean
---@field Radius int32
FBrushEffectBlurring = {}

---@return FBrushEffectBlurring
function FBrushEffectBlurring:get() end



---@class FBrushEffectCurlNoise
---@field Curl1Amount float
---@field Curl2Amount float
---@field Curl1Tiling float
---@field Curl2Tiling float
FBrushEffectCurlNoise = {}

---@return FBrushEffectCurlNoise
function FBrushEffectCurlNoise:get() end



---@class FBrushEffectCurves
---@field bUseCurveChannel boolean
---@field ElevationCurveAsset UCurveFloat
---@field ChannelEdgeOffset float
---@field ChannelDepth float
---@field CurveRampWidth float
FBrushEffectCurves = {}

---@return FBrushEffectCurves
function FBrushEffectCurves:get() end



---@class FBrushEffectDisplacement
---@field DisplacementHeight float
---@field DisplacementTiling float
---@field Texture UTexture2D
---@field Midpoint float
---@field Channel FLinearColor
---@field WeightmapInfluence float
FBrushEffectDisplacement = {}

---@return FBrushEffectDisplacement
function FBrushEffectDisplacement:get() end



---@class FBrushEffectSmoothBlending
---@field InnerSmoothDistance float
---@field OuterSmoothDistance float
FBrushEffectSmoothBlending = {}

---@return FBrushEffectSmoothBlending
function FBrushEffectSmoothBlending:get() end



---@class FBrushEffectTerracing
---@field TerraceAlpha float
---@field TerraceSpacing float
---@field TerraceSmoothness float
---@field MaskLength float
---@field MaskStartOffset float
FBrushEffectTerracing = {}

---@return FBrushEffectTerracing
function FBrushEffectTerracing:get() end



---@class FLandmassBrushEffectsList
---@field Blurring FBrushEffectBlurring
---@field CurlNoise FBrushEffectCurlNoise
---@field Displacement FBrushEffectDisplacement
---@field SmoothBlending FBrushEffectSmoothBlending
---@field Terracing FBrushEffectTerracing
FLandmassBrushEffectsList = {}

---@return FLandmassBrushEffectsList
function FLandmassBrushEffectsList:get() end



---@class FLandmassFalloffSettings
---@field FalloffMode EBrushFalloffMode
---@field FalloffAngle float
---@field FalloffWidth float
---@field EdgeOffset float
---@field ZOffset float
FLandmassFalloffSettings = {}

---@return FLandmassFalloffSettings
function FLandmassFalloffSettings:get() end



---@class FLandmassTerrainCarvingSettings
---@field BlendMode EBrushBlendType
---@field bInvertShape boolean
---@field FalloffSettings FLandmassFalloffSettings
---@field Effects FLandmassBrushEffectsList
---@field Priority int32
FLandmassTerrainCarvingSettings = {}

---@return FLandmassTerrainCarvingSettings
function FLandmassTerrainCarvingSettings:get() end



