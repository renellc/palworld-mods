---@meta

---@class FBoolToStringDataflowNode : FDataflowNode
---@field bool boolean
---@field String FString
FBoolToStringDataflowNode = {}

---@return FBoolToStringDataflowNode
function FBoolToStringDataflowNode:get() end



---@class FBoundingBoxDataflowNode : FDataflowNode
---@field Collection FManagedArrayCollection
---@field BoundingBox FBox
FBoundingBoxDataflowNode = {}

---@return FBoundingBoxDataflowNode
function FBoundingBoxDataflowNode:get() end



---@class FCloseGeometryOnCollectionDataflowNode : FDataflowNode
---@field Collection FManagedArrayCollection
FCloseGeometryOnCollectionDataflowNode = {}

---@return FCloseGeometryOnCollectionDataflowNode
function FCloseGeometryOnCollectionDataflowNode:get() end



---@class FCreateNonOverlappingConvexHullsDataflowNode : FDataflowNode
---@field Collection FManagedArrayCollection
---@field CanRemoveFraction float
---@field CanExceedFraction float
---@field SimplificationDistanceThreshold float
FCreateNonOverlappingConvexHullsDataflowNode = {}

---@return FCreateNonOverlappingConvexHullsDataflowNode
function FCreateNonOverlappingConvexHullsDataflowNode:get() end



---@class FDegreesToRadiansDataflowNode : FDataflowNode
---@field Degrees float
---@field Radians float
FDegreesToRadiansDataflowNode = {}

---@return FDegreesToRadiansDataflowNode
function FDegreesToRadiansDataflowNode:get() end



---@class FExampleCollectionEditDataflowNode : FDataflowNode
---@field Scale float
---@field Collection FManagedArrayCollection
FExampleCollectionEditDataflowNode = {}

---@return FExampleCollectionEditDataflowNode
function FExampleCollectionEditDataflowNode:get() end



---@class FExpandBoundingBoxDataflowNode : FDataflowNode
---@field BoundingBox FBox
---@field Min FVector
---@field Max FVector
---@field Center FVector
---@field HalfExtents FVector
---@field Volume float
FExpandBoundingBoxDataflowNode = {}

---@return FExpandBoundingBoxDataflowNode
function FExpandBoundingBoxDataflowNode:get() end



---@class FExpandVectorDataflowNode : FDataflowNode
---@field Vector FVector
---@field X float
---@field Y float
---@field Z float
FExpandVectorDataflowNode = {}

---@return FExpandVectorDataflowNode
function FExpandVectorDataflowNode:get() end



---@class FExplodedViewDataflowNode : FDataflowNode
---@field Collection FManagedArrayCollection
---@field UniformScale float
---@field Scale FVector
FExplodedViewDataflowNode = {}

---@return FExplodedViewDataflowNode
function FExplodedViewDataflowNode:get() end



---@class FFloatToIntDataflowNode : FDataflowNode
---@field Function EFloatToIntFunctionEnum
---@field float float
---@field Int int32
FFloatToIntDataflowNode = {}

---@return FFloatToIntDataflowNode
function FFloatToIntDataflowNode:get() end



---@class FFloatToStringDataflowNode : FDataflowNode
---@field float float
---@field String FString
FFloatToStringDataflowNode = {}

---@return FFloatToStringDataflowNode
function FFloatToStringDataflowNode:get() end



---@class FGenerateTetrahedralCollectionDataflowNodes : FDataflowNode
---@field Collection FManagedArrayCollection
FGenerateTetrahedralCollectionDataflowNodes = {}

---@return FGenerateTetrahedralCollectionDataflowNodes
function FGenerateTetrahedralCollectionDataflowNodes:get() end



---@class FGetCollectionAssetDataflowNode : FDataflowNode
---@field Output FManagedArrayCollection
FGetCollectionAssetDataflowNode = {}

---@return FGetCollectionAssetDataflowNode
function FGetCollectionAssetDataflowNode:get() end



---@class FHashStringDataflowNode : FDataflowNode
---@field String FString
---@field Hash int32
FHashStringDataflowNode = {}

---@return FHashStringDataflowNode
function FHashStringDataflowNode:get() end



---@class FHashVectorDataflowNode : FDataflowNode
---@field Vector FVector
---@field Hash int32
FHashVectorDataflowNode = {}

---@return FHashVectorDataflowNode
function FHashVectorDataflowNode:get() end



---@class FIntToFloatDataflowNode : FDataflowNode
---@field Int int32
---@field float float
FIntToFloatDataflowNode = {}

---@return FIntToFloatDataflowNode
function FIntToFloatDataflowNode:get() end



---@class FIntToStringDataflowNode : FDataflowNode
---@field Int int32
---@field String FString
FIntToStringDataflowNode = {}

---@return FIntToStringDataflowNode
function FIntToStringDataflowNode:get() end



---@class FLogStringDataflowNode : FDataflowNode
---@field PrintToLog boolean
---@field String FString
FLogStringDataflowNode = {}

---@return FLogStringDataflowNode
function FLogStringDataflowNode:get() end



---@class FMakeBoxDataflowNode : FDataflowNode
---@field DataType EMakeBoxDataTypeEnum
---@field Min FVector
---@field Max FVector
---@field Center FVector
---@field Size FVector
---@field Box FBox
FMakeBoxDataflowNode = {}

---@return FMakeBoxDataflowNode
function FMakeBoxDataflowNode:get() end



---@class FMakeLiteralBoolDataflowNode : FDataflowNode
---@field Value boolean
---@field bool boolean
FMakeLiteralBoolDataflowNode = {}

---@return FMakeLiteralBoolDataflowNode
function FMakeLiteralBoolDataflowNode:get() end



---@class FMakeLiteralFloatDataflowNode : FDataflowNode
---@field Value float
---@field float float
FMakeLiteralFloatDataflowNode = {}

---@return FMakeLiteralFloatDataflowNode
function FMakeLiteralFloatDataflowNode:get() end



---@class FMakeLiteralIntDataflowNode : FDataflowNode
---@field Value int32
---@field Int int32
FMakeLiteralIntDataflowNode = {}

---@return FMakeLiteralIntDataflowNode
function FMakeLiteralIntDataflowNode:get() end



---@class FMakeLiteralStringDataflowNode : FDataflowNode
---@field Value FString
---@field String FString
FMakeLiteralStringDataflowNode = {}

---@return FMakeLiteralStringDataflowNode
function FMakeLiteralStringDataflowNode:get() end



---@class FMakeLiteralVectorDataflowNode : FDataflowNode
---@field Value FVector
---@field Vector FVector
FMakeLiteralVectorDataflowNode = {}

---@return FMakeLiteralVectorDataflowNode
function FMakeLiteralVectorDataflowNode:get() end



---@class FMakePointsDataflowNode : FDataflowNode
---@field Point TArray<FVector>
---@field Points TArray<FVector>
FMakePointsDataflowNode = {}

---@return FMakePointsDataflowNode
function FMakePointsDataflowNode:get() end



---@class FMathConstantsDataflowNode : FDataflowNode
---@field Constant EMathConstantsEnum
---@field float float
FMathConstantsDataflowNode = {}

---@return FMathConstantsDataflowNode
function FMathConstantsDataflowNode:get() end



---@class FPlaneCutterDataflowNode : FDataflowNode
---@field Collection FManagedArrayCollection
---@field BoundingBox FBox
---@field NumPlanes int32
---@field RandomSeed float
---@field Grout float
---@field Amplitude float
---@field Frequency float
---@field Persistence float
---@field Lacunarity float
---@field OctaveNumber int32
---@field PointSpacing float
---@field AddSamplesForCollision boolean
---@field CollisionSampleSpacing float
FPlaneCutterDataflowNode = {}

---@return FPlaneCutterDataflowNode
function FPlaneCutterDataflowNode:get() end



---@class FPrintStringDataflowNode : FDataflowNode
---@field PrintToScreen boolean
---@field PrintToLog boolean
---@field Color FColor
---@field Duration float
---@field String FString
FPrintStringDataflowNode = {}

---@return FPrintStringDataflowNode
function FPrintStringDataflowNode:get() end



---@class FRadialScatterPointsDataflowNode : FDataflowNode
---@field Center FVector
---@field Normal FVector
---@field Radius float
---@field AngularSteps int32
---@field RadialSteps int32
---@field AngleOffset float
---@field Variability float
---@field RandomSeed float
---@field Points TArray<FVector>
FRadialScatterPointsDataflowNode = {}

---@return FRadialScatterPointsDataflowNode
function FRadialScatterPointsDataflowNode:get() end



---@class FRadiansToDegreesDataflowNode : FDataflowNode
---@field Radians float
---@field Degrees float
FRadiansToDegreesDataflowNode = {}

---@return FRadiansToDegreesDataflowNode
function FRadiansToDegreesDataflowNode:get() end



---@class FRandomFloatDataflowNode : FDataflowNode
---@field Deterministic boolean
---@field RandomSeed float
---@field float float
FRandomFloatDataflowNode = {}

---@return FRandomFloatDataflowNode
function FRandomFloatDataflowNode:get() end



---@class FRandomFloatInRangeDataflowNode : FDataflowNode
---@field Deterministic boolean
---@field RandomSeed float
---@field Min float
---@field Max float
---@field float float
FRandomFloatInRangeDataflowNode = {}

---@return FRandomFloatInRangeDataflowNode
function FRandomFloatInRangeDataflowNode:get() end



---@class FRandomUnitVectorDataflowNode : FDataflowNode
---@field Deterministic boolean
---@field RandomSeed float
---@field Vector FVector
FRandomUnitVectorDataflowNode = {}

---@return FRandomUnitVectorDataflowNode
function FRandomUnitVectorDataflowNode:get() end



---@class FRandomUnitVectorInConeDataflowNode : FDataflowNode
---@field Deterministic boolean
---@field RandomSeed float
---@field ConeDirection FVector
---@field ConeHalfAngle float
---@field Vector FVector
FRandomUnitVectorInConeDataflowNode = {}

---@return FRandomUnitVectorInConeDataflowNode
function FRandomUnitVectorInConeDataflowNode:get() end



---@class FResetGeometryCollectionDataflowNode : FDataflowNode
---@field Collection FManagedArrayCollection
FResetGeometryCollectionDataflowNode = {}

---@return FResetGeometryCollectionDataflowNode
function FResetGeometryCollectionDataflowNode:get() end



---@class FSetCollectionAssetDataflowNode : FDataflowNode
---@field Collection FManagedArrayCollection
FSetCollectionAssetDataflowNode = {}

---@return FSetCollectionAssetDataflowNode
function FSetCollectionAssetDataflowNode:get() end



---@class FSkeletalMeshToCollectionDataflowNode : FDataflowNode
---@field SkeletalMesh USkeletalMesh
---@field Collection FManagedArrayCollection
FSkeletalMeshToCollectionDataflowNode = {}

---@return FSkeletalMeshToCollectionDataflowNode
function FSkeletalMeshToCollectionDataflowNode:get() end



---@class FStringAppendDataflowNode : FDataflowNode
---@field String1 FString
---@field String2 FString
---@field String FString
FStringAppendDataflowNode = {}

---@return FStringAppendDataflowNode
function FStringAppendDataflowNode:get() end



---@class FUniformScatterPointsDataflowNode : FDataflowNode
---@field MinNumberOfPoints int32
---@field MaxNumberOfPoints int32
---@field RandomSeed float
---@field BoundingBox FBox
---@field Points TArray<FVector>
FUniformScatterPointsDataflowNode = {}

---@return FUniformScatterPointsDataflowNode
function FUniformScatterPointsDataflowNode:get() end



---@class FVectorToStringDataflowNode : FDataflowNode
---@field Vector FVector
---@field String FString
FVectorToStringDataflowNode = {}

---@return FVectorToStringDataflowNode
function FVectorToStringDataflowNode:get() end



---@class FVoronoiFractureDataflowNode : FDataflowNode
---@field Collection FManagedArrayCollection
---@field Points TArray<FVector>
---@field RandomSeed float
---@field ChanceToFracture float
---@field GroupFracture boolean
---@field Grout float
---@field Amplitude float
---@field Frequency float
---@field Persistence float
---@field Lacunarity float
---@field OctaveNumber int32
---@field PointSpacing float
---@field AddSamplesForCollision boolean
---@field CollisionSampleSpacing float
FVoronoiFractureDataflowNode = {}

---@return FVoronoiFractureDataflowNode
function FVoronoiFractureDataflowNode:get() end



