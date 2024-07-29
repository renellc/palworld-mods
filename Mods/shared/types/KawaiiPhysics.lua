---@meta

---@class FAnimNode_KawaiiPhysics : FAnimNode_SkeletalControlBase
---@field RootBone FBoneReference
---@field ExcludeBones TArray<FBoneReference>
---@field TargetFrameRate int32
---@field OverrideTargetFramerate boolean
---@field PhysicsSettings FKawaiiPhysicsSettings
---@field DampingCurve UCurveFloat
---@field WorldDampingLocationCurve UCurveFloat
---@field WorldDampingRotationCurve UCurveFloat
---@field StiffnessCurve UCurveFloat
---@field RadiusCurve UCurveFloat
---@field LimitAngleCurve UCurveFloat
---@field DampingCurveData FRuntimeFloatCurve
---@field WorldDampingLocationCurveData FRuntimeFloatCurve
---@field WorldDampingRotationCurveData FRuntimeFloatCurve
---@field StiffnessCurveData FRuntimeFloatCurve
---@field RadiusCurveData FRuntimeFloatCurve
---@field LimitAngleCurveData FRuntimeFloatCurve
---@field bUpdatePhysicsSettingsInGame boolean
---@field DummyBoneLength float
---@field BoneForwardAxis EBoneForwardAxis
---@field PlanarConstraint EPlanarConstraint
---@field ResetBoneTransformWhenBoneNotFound boolean
---@field SphericalLimits TArray<FSphericalLimit>
---@field CapsuleLimits TArray<FCapsuleLimit>
---@field PlanarLimits TArray<FPlanarLimit>
---@field LimitsDataAsset UKawaiiPhysicsLimitsDataAsset
---@field SphericalLimitsData TArray<FSphericalLimit>
---@field CapsuleLimitsData TArray<FCapsuleLimit>
---@field PlanarLimitsData TArray<FPlanarLimit>
---@field TeleportDistanceThreshold float
---@field TeleportRotationThreshold float
---@field Gravity FVector
---@field bEnableWind boolean
---@field WindScale float
---@field bAllowWorldCollision boolean
---@field bOverrideCollisionParams boolean
---@field CollisionChannelSettings FBodyInstance
---@field bIgnoreSelfComponent boolean
---@field IgnoreBones TArray<FBoneReference>
---@field IgnoreBoneNamePrefix TArray<FName>
---@field ModifyBones TArray<FKawaiiPhysicsModifyBone>
---@field TotalBoneLength float
---@field PreSkelCompTransform FTransform
---@field bInitPhysicsSettings boolean
FAnimNode_KawaiiPhysics = {}

---@return FAnimNode_KawaiiPhysics
function FAnimNode_KawaiiPhysics:get() end



---@class FCapsuleLimit : FCollisionLimitBase
---@field Radius float
---@field Length float
FCapsuleLimit = {}

---@return FCapsuleLimit
function FCapsuleLimit:get() end



---@class FCapsuleLimitData : FCollisionLimitDataBase
---@field Radius float
---@field Length float
FCapsuleLimitData = {}

---@return FCapsuleLimitData
function FCapsuleLimitData:get() end



---@class FCollisionLimitBase
---@field DrivingBone FBoneReference
---@field OffsetLocation FVector
---@field OffsetRotation FRotator
---@field Location FVector
---@field Rotation FQuat
FCollisionLimitBase = {}

---@return FCollisionLimitBase
function FCollisionLimitBase:get() end



---@class FCollisionLimitDataBase
---@field DrivingBoneName FName
---@field OffsetLocation FVector
---@field OffsetRotation FRotator
---@field Location FVector
---@field Rotation FQuat
---@field Guid FGuid
FCollisionLimitDataBase = {}

---@return FCollisionLimitDataBase
function FCollisionLimitDataBase:get() end



---@class FKawaiiPhysicsModifyBone
---@field BoneRef FBoneReference
---@field ParentIndex int32
---@field ChildIndexs TArray<int32>
---@field PhysicsSettings FKawaiiPhysicsSettings
---@field Location FVector
---@field PrevLocation FVector
---@field PrevRotation FQuat
---@field PoseLocation FVector
---@field PoseRotation FQuat
---@field PoseScale FVector
---@field LengthFromRoot float
---@field bDummy boolean
FKawaiiPhysicsModifyBone = {}

---@return FKawaiiPhysicsModifyBone
function FKawaiiPhysicsModifyBone:get() end



---@class FKawaiiPhysicsSettings
---@field Damping float
---@field WorldDampingLocation float
---@field WorldDampingRotation float
---@field Stiffness float
---@field Radius float
---@field LimitAngle float
FKawaiiPhysicsSettings = {}

---@return FKawaiiPhysicsSettings
function FKawaiiPhysicsSettings:get() end



---@class FPlanarLimit : FCollisionLimitBase
---@field Plane FPlane
FPlanarLimit = {}

---@return FPlanarLimit
function FPlanarLimit:get() end



---@class FPlanarLimitData : FCollisionLimitDataBase
---@field Plane FPlane
FPlanarLimitData = {}

---@return FPlanarLimitData
function FPlanarLimitData:get() end



---@class FSphericalLimit : FCollisionLimitBase
---@field Radius float
---@field LimitType ESphericalLimitType
FSphericalLimit = {}

---@return FSphericalLimit
function FSphericalLimit:get() end



---@class FSphericalLimitData : FCollisionLimitDataBase
---@field Radius float
---@field LimitType ESphericalLimitType
FSphericalLimitData = {}

---@return FSphericalLimitData
function FSphericalLimitData:get() end



---@class UKawaiiPhysicsLimitsDataAsset : UDataAsset
---@field SphericalLimits TArray<FSphericalLimit>
---@field CapsuleLimits TArray<FCapsuleLimit>
---@field PlanarLimits TArray<FPlanarLimit>
UKawaiiPhysicsLimitsDataAsset = {}

---@return UKawaiiPhysicsLimitsDataAsset
function UKawaiiPhysicsLimitsDataAsset:get() end



