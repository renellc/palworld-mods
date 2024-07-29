---@meta

---@class FPBIKBoneSetting
---@field bone FName
---@field RotationStiffness float
---@field PositionStiffness float
---@field X EPBIKLimitType
---@field MinX float
---@field MaxX float
---@field Y EPBIKLimitType
---@field MinY float
---@field MaxY float
---@field Z EPBIKLimitType
---@field MinZ float
---@field MaxZ float
---@field bUsePreferredAngles boolean
---@field PreferredAngles FVector
FPBIKBoneSetting = {}

---@return FPBIKBoneSetting
function FPBIKBoneSetting:get() end



---@class FPBIKDebug
---@field DrawScale float
---@field bDrawDebug boolean
FPBIKDebug = {}

---@return FPBIKDebug
function FPBIKDebug:get() end



---@class FPBIKEffector
---@field bone FName
---@field Transform FTransform
---@field PositionAlpha float
---@field RotationAlpha float
---@field StrengthAlpha float
---@field PullChainAlpha float
---@field PinRotation float
FPBIKEffector = {}

---@return FPBIKEffector
function FPBIKEffector:get() end



---@class FPBIKSolver
FPBIKSolver = {}

---@return FPBIKSolver
function FPBIKSolver:get() end


---@class FPBIKSolverSettings
---@field Iterations int32
---@field MassMultiplier float
---@field MinMassMultiplier float
---@field bAllowStretch boolean
---@field RootBehavior EPBIKRootBehavior
---@field bStartSolveFromInputPose boolean
FPBIKSolverSettings = {}

---@return FPBIKSolverSettings
function FPBIKSolverSettings:get() end



---@class FRigUnit_PBIK : FRigUnit_HighlevelBaseMutable
---@field Root FName
---@field Effectors TArray<FPBIKEffector>
---@field EffectorSolverIndices TArray<int32>
---@field BoneSettings TArray<FPBIKBoneSetting>
---@field ExcludedBones TArray<FName>
---@field Settings FPBIKSolverSettings
---@field Debug FPBIKDebug
---@field BoneSettingToSolverBoneIndex TArray<int32>
---@field SolverBoneToElementIndex TArray<int32>
---@field Solver FPBIKSolver
---@field bNeedsInit boolean
FRigUnit_PBIK = {}

---@return FRigUnit_PBIK
function FRigUnit_PBIK:get() end



