---@meta

---@class FAimConstraintDescription : FConstraintDescriptionEx
---@field LookAt_Axis FAxis
---@field LookUp_Axis FAxis
---@field bUseLookUp boolean
---@field LookUpTarget FVector
FAimConstraintDescription = {}

---@return FAimConstraintDescription
function FAimConstraintDescription:get() end



---@class FAxis
---@field Axis FVector
---@field bInLocalSpace boolean
FAxis = {}

---@return FAxis
function FAxis:get() end



---@class FCCDIKChainLink
FCCDIKChainLink = {}

---@return FCCDIKChainLink
function FCCDIKChainLink:get() end


---@class FConstraintData
---@field Constraint FConstraintDescriptor
---@field Weight float
---@field bMaintainOffset boolean
---@field Offset FTransform
---@field CurrentTransform FTransform
FConstraintData = {}

---@return FConstraintData
function FConstraintData:get() end



---@class FConstraintDescription
---@field bTranslation boolean
---@field bRotation boolean
---@field bScale boolean
---@field bParent boolean
---@field TranslationAxes FFilterOptionPerAxis
---@field RotationAxes FFilterOptionPerAxis
---@field ScaleAxes FFilterOptionPerAxis
FConstraintDescription = {}

---@return FConstraintDescription
function FConstraintDescription:get() end



---@class FConstraintDescriptionEx
---@field AxesFilterOption FFilterOptionPerAxis
FConstraintDescriptionEx = {}

---@return FConstraintDescriptionEx
function FConstraintDescriptionEx:get() end



---@class FConstraintDescriptor
---@field Type EConstraintType
FConstraintDescriptor = {}

---@return FConstraintDescriptor
function FConstraintDescriptor:get() end



---@class FConstraintOffset
---@field Translation FVector
---@field Rotation FQuat
---@field Scale FVector
---@field Parent FTransform
FConstraintOffset = {}

---@return FConstraintOffset
function FConstraintOffset:get() end



---@class FEulerTransform
---@field Location FVector
---@field Rotation FRotator
---@field Scale FVector
FEulerTransform = {}

---@return FEulerTransform
function FEulerTransform:get() end



---@class FFABRIKChainLink
FFABRIKChainLink = {}

---@return FFABRIKChainLink
function FFABRIKChainLink:get() end


---@class FFilterOptionPerAxis
---@field bX boolean
---@field bY boolean
---@field bZ boolean
FFilterOptionPerAxis = {}

---@return FFilterOptionPerAxis
function FFilterOptionPerAxis:get() end



---@class FNodeChain
---@field Nodes TArray<FName>
FNodeChain = {}

---@return FNodeChain
function FNodeChain:get() end



---@class FNodeHierarchyData
---@field Nodes TArray<FNodeObject>
---@field Transforms TArray<FTransform>
---@field NodeNameToIndexMapping TMap<FName, int32>
FNodeHierarchyData = {}

---@return FNodeHierarchyData
function FNodeHierarchyData:get() end



---@class FNodeHierarchyWithUserData
---@field Hierarchy FNodeHierarchyData
FNodeHierarchyWithUserData = {}

---@return FNodeHierarchyWithUserData
function FNodeHierarchyWithUserData:get() end



---@class FNodeObject
---@field Name FName
---@field ParentName FName
FNodeObject = {}

---@return FNodeObject
function FNodeObject:get() end



---@class FTransformConstraint
---@field Operator FConstraintDescription
---@field SourceNode FName
---@field TargetNode FName
---@field Weight float
---@field bMaintainOffset boolean
FTransformConstraint = {}

---@return FTransformConstraint
function FTransformConstraint:get() end



---@class FTransformConstraintDescription : FConstraintDescriptionEx
---@field TransformType ETransformConstraintType
FTransformConstraintDescription = {}

---@return FTransformConstraintDescription
function FTransformConstraintDescription:get() end



---@class FTransformFilter
---@field TranslationFilter FFilterOptionPerAxis
---@field RotationFilter FFilterOptionPerAxis
---@field ScaleFilter FFilterOptionPerAxis
FTransformFilter = {}

---@return FTransformFilter
function FTransformFilter:get() end



---@class FTransformNoScale
---@field Location FVector
---@field Rotation FQuat
FTransformNoScale = {}

---@return FTransformNoScale
function FTransformNoScale:get() end



---@class UAnimationDataSourceRegistry : UObject
---@field DataSources TMap<FName, TWeakObjectPtr<UObject>>
UAnimationDataSourceRegistry = {}

---@return UAnimationDataSourceRegistry
function UAnimationDataSourceRegistry:get() end



