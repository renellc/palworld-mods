---@meta

---@class FFBIKBoneLimit
---@field LimitType_X EFBIKBoneLimitType
---@field LimitType_Y EFBIKBoneLimitType
---@field LimitType_Z EFBIKBoneLimitType
---@field Limit FVector
FFBIKBoneLimit = {}

---@return FFBIKBoneLimit
function FFBIKBoneLimit:get() end



---@class FFBIKConstraintOption
---@field Item FRigElementKey
---@field bEnabled boolean
---@field bUseStiffness boolean
---@field LinearStiffness FVector
---@field AngularStiffness FVector
---@field bUseAngularLimit boolean
---@field AngularLimit FFBIKBoneLimit
---@field bUsePoleVector boolean
---@field PoleVectorOption EPoleVectorOption
---@field PoleVector FVector
---@field OffsetRotation FRotator
FFBIKConstraintOption = {}

---@return FFBIKConstraintOption
function FFBIKConstraintOption:get() end



---@class FFBIKDebugOption
---@field bDrawDebugHierarchy boolean
---@field bColorAngularMotionStrength boolean
---@field bColorLinearMotionStrength boolean
---@field bDrawDebugAxes boolean
---@field bDrawDebugEffector boolean
---@field bDrawDebugConstraints boolean
---@field DrawWorldOffset FTransform
---@field DrawSize float
FFBIKDebugOption = {}

---@return FFBIKDebugOption
function FFBIKDebugOption:get() end



---@class FFBIKEndEffector
---@field Item FRigElementKey
---@field Position FVector
---@field PositionAlpha float
---@field PositionDepth int32
---@field Rotation FQuat
---@field RotationAlpha float
---@field RotationDepth int32
---@field Pull float
FFBIKEndEffector = {}

---@return FFBIKEndEffector
function FFBIKEndEffector:get() end



---@class FMotionProcessInput
---@field bForceEffectorRotationTarget boolean
---@field bOnlyApplyWhenReachedToTarget boolean
FMotionProcessInput = {}

---@return FMotionProcessInput
function FMotionProcessInput:get() end



---@class FRigUnit_FullbodyIK : FRigUnit_HighlevelBaseMutable
---@field Root FRigElementKey
---@field Effectors TArray<FFBIKEndEffector>
---@field Constraints TArray<FFBIKConstraintOption>
---@field SolverProperty FSolverInput
---@field MotionProperty FMotionProcessInput
---@field bPropagateToChildren boolean
---@field DebugOption FFBIKDebugOption
---@field WorkData FRigUnit_FullbodyIK_WorkData
FRigUnit_FullbodyIK = {}

---@return FRigUnit_FullbodyIK
function FRigUnit_FullbodyIK:get() end



---@class FRigUnit_FullbodyIK_WorkData
FRigUnit_FullbodyIK_WorkData = {}

---@return FRigUnit_FullbodyIK_WorkData
function FRigUnit_FullbodyIK_WorkData:get() end


---@class FSolverInput
---@field LinearMotionStrength float
---@field MinLinearMotionStrength float
---@field AngularMotionStrength float
---@field MinAngularMotionStrength float
---@field DefaultTargetClamp float
---@field Precision float
---@field Damping float
---@field MaxIterations int32
---@field bUseJacobianTranspose boolean
FSolverInput = {}

---@return FSolverInput
function FSolverInput:get() end



