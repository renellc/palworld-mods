---@meta

---@class FBodyInstanceCore
---@field bSimulatePhysics boolean
---@field bOverrideMass boolean
---@field bEnableGravity boolean
---@field bAutoWeld boolean
---@field bStartAwake boolean
---@field bGenerateWakeEvents boolean
---@field bUpdateMassWhenScaleChanges boolean
FBodyInstanceCore = {}

---@return FBodyInstanceCore
function FBodyInstanceCore:get() end



---@class UBodySetupCore : UObject
---@field BoneName FName
---@field PhysicsType EPhysicsType
---@field CollisionTraceFlag ECollisionTraceFlag
---@field CollisionReponse EBodyCollisionResponse::Type
UBodySetupCore = {}

---@return UBodySetupCore
function UBodySetupCore:get() end



---@class UChaosPhysicalMaterial : UObject
---@field Friction float
---@field StaticFriction float
---@field Restitution float
---@field LinearEtherDrag float
---@field AngularEtherDrag float
---@field SleepingLinearVelocityThreshold float
---@field SleepingAngularVelocityThreshold float
UChaosPhysicalMaterial = {}

---@return UChaosPhysicalMaterial
function UChaosPhysicalMaterial:get() end



---@class UDEPRECATED_PhysicalMaterialPropertyBase : UObject
UDEPRECATED_PhysicalMaterialPropertyBase = {}

---@return UDEPRECATED_PhysicalMaterialPropertyBase
function UDEPRECATED_PhysicalMaterialPropertyBase:get() end


---@class UPhysicalMaterial : UObject
---@field Friction float
---@field StaticFriction float
---@field FrictionCombineMode EFrictionCombineMode::Type
---@field bOverrideFrictionCombineMode boolean
---@field Restitution float
---@field RestitutionCombineMode EFrictionCombineMode::Type
---@field bOverrideRestitutionCombineMode boolean
---@field Density float
---@field SleepLinearVelocityThreshold float
---@field SleepAngularVelocityThreshold float
---@field SleepCounterThreshold int32
---@field RaiseMassToPower float
---@field DestructibleDamageThresholdScale float
---@field PhysicalMaterialProperty UDEPRECATED_PhysicalMaterialPropertyBase
---@field SurfaceType EPhysicalSurface
UPhysicalMaterial = {}

---@return UPhysicalMaterial
function UPhysicalMaterial:get() end



---@class UPhysicsSettingsCore : UDeveloperSettings
---@field DefaultGravityZ float
---@field DefaultTerminalVelocity float
---@field DefaultFluidFriction float
---@field SimulateScratchMemorySize int32
---@field RagdollAggregateThreshold int32
---@field TriangleMeshTriangleMinAreaThreshold float
---@field bEnableShapeSharing boolean
---@field bEnablePCM boolean
---@field bEnableStabilization boolean
---@field bWarnMissingLocks boolean
---@field bEnable2DPhysics boolean
---@field bDefaultHasComplexCollision boolean
---@field BounceThresholdVelocity float
---@field FrictionCombineMode EFrictionCombineMode::Type
---@field RestitutionCombineMode EFrictionCombineMode::Type
---@field MaxAngularVelocity float
---@field MaxDepenetrationVelocity float
---@field ContactOffsetMultiplier float
---@field MinContactOffset float
---@field MaxContactOffset float
---@field bSimulateSkeletalMeshOnDedicatedServer boolean
---@field DefaultShapeComplexity ECollisionTraceFlag
---@field SolverOptions FChaosSolverConfiguration
UPhysicsSettingsCore = {}

---@return UPhysicsSettingsCore
function UPhysicsSettingsCore:get() end



