enum class ECSGOperation {
    DifferenceAB = 0,
    DifferenceBA = 1,
    Intersect = 2,
    Union = 3,
    ECSGOperation_MAX = 4,
};

enum class EHoleFillOpFillType {
    TriangleFan = 0,
    PolygonEarClipping = 1,
    Planar = 2,
    Minimal = 3,
    Smooth = 4,
    EHoleFillOpFillType_MAX = 5,
};

enum class EMorphologyOperation {
    Dilate = 0,
    Contract = 1,
    Close = 2,
    Open = 3,
    EMorphologyOperation_MAX = 4,
};

enum class ENormalCalculationMethod {
    AreaWeighted = 0,
    AngleWeighted = 1,
    AreaAngleWeighting = 2,
    ENormalCalculationMethod_MAX = 3,
};

enum class ERecomputeUVsPropertiesIslandMode {
    PolyGroups = 0,
    ExistingUVs = 1,
    ERecomputeUVsPropertiesIslandMode_MAX = 2,
};

enum class ERecomputeUVsPropertiesLayoutType {
    None = 0,
    Repack = 1,
    NormalizeToBounds = 2,
    NormalizeToWorld = 3,
    ERecomputeUVsPropertiesLayoutType_MAX = 4,
};

enum class ERecomputeUVsPropertiesUnwrapType {
    ExpMap = 0,
    Conformal = 1,
    SpectralConformal = 2,
    IslandMerging = 3,
    ERecomputeUVsPropertiesUnwrapType_MAX = 4,
};

enum class ERecomputeUVsToolOrientationMode {
    None = 0,
    MinBounds = 1,
    ERecomputeUVsToolOrientationMode_MAX = 2,
};

enum class ERemeshSmoothingType {
    Uniform = 0,
    Cotangent = 1,
    MeanValue = 2,
    ERemeshSmoothingType_MAX = 3,
};

enum class ERemeshType {
    Standard = 0,
    FullPass = 1,
    NormalFlow = 2,
    ERemeshType_MAX = 3,
};

enum class ESplitNormalMethod {
    UseExistingTopology = 0,
    FaceNormalThreshold = 1,
    FaceGroupID = 2,
    PerTriangle = 3,
    PerVertex = 4,
    ESplitNormalMethod_MAX = 5,
};

enum class ETrimOperation {
    TrimA = 0,
    TrimB = 1,
    ETrimOperation_MAX = 2,
};

enum class ETrimSide {
    RemoveInside = 0,
    RemoveOutside = 1,
    ETrimSide_MAX = 2,
};

enum class EUVLayoutType {
    Transform = 0,
    Stack = 1,
    Repack = 2,
    EUVLayoutType_MAX = 3,
};

enum class EUVProjectionMethod {
    Box = 0,
    Cylinder = 1,
    Plane = 2,
    ExpMap = 3,
    EUVProjectionMethod_MAX = 4,
};

