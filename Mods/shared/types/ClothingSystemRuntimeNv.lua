---@meta

---@class FClothConstraintSetupNv
---@field Stiffness float
---@field StiffnessMultiplier float
---@field StretchLimit float
---@field CompressionLimit float
FClothConstraintSetupNv = {}

---@return FClothConstraintSetupNv
function FClothConstraintSetupNv:get() end



---@class UClothConfigNv : UClothConfigCommon
---@field ClothingWindMethod EClothingWindMethodNv
---@field VerticalConstraint FClothConstraintSetupNv
---@field HorizontalConstraint FClothConstraintSetupNv
---@field BendConstraint FClothConstraintSetupNv
---@field ShearConstraint FClothConstraintSetupNv
---@field SelfCollisionRadius float
---@field SelfCollisionStiffness float
---@field SelfCollisionCullScale float
---@field Damping FVector
---@field Friction float
---@field WindDragCoefficient float
---@field WindLiftCoefficient float
---@field LinearDrag FVector
---@field AngularDrag FVector
---@field LinearInertiaScale FVector
---@field AngularInertiaScale FVector
---@field CentrifugalInertiaScale FVector
---@field SolverFrequency float
---@field StiffnessFrequency float
---@field GravityScale float
---@field GravityOverride FVector
---@field bUseGravityOverride boolean
---@field TetherStiffness float
---@field TetherLimit float
---@field CollisionThickness float
---@field AnimDriveSpringStiffness float
---@field AnimDriveDamperStiffness float
---@field WindMethod EClothingWindMethod_Legacy
---@field VerticalConstraintConfig FClothConstraintSetup_Legacy
---@field HorizontalConstraintConfig FClothConstraintSetup_Legacy
---@field BendConstraintConfig FClothConstraintSetup_Legacy
---@field ShearConstraintConfig FClothConstraintSetup_Legacy
UClothConfigNv = {}

---@return UClothConfigNv
function UClothConfigNv:get() end



---@class UClothPhysicalMeshDataNv_Legacy : UClothPhysicalMeshDataBase_Legacy
---@field MaxDistances TArray<float>
---@field BackstopDistances TArray<float>
---@field BackstopRadiuses TArray<float>
---@field AnimDriveMultipliers TArray<float>
UClothPhysicalMeshDataNv_Legacy = {}

---@return UClothPhysicalMeshDataNv_Legacy
function UClothPhysicalMeshDataNv_Legacy:get() end



---@class UClothingSimulationFactoryNv : UClothingSimulationFactory
UClothingSimulationFactoryNv = {}

---@return UClothingSimulationFactoryNv
function UClothingSimulationFactoryNv:get() end


---@class UClothingSimulationInteractorNv : UClothingSimulationInteractor
UClothingSimulationInteractorNv = {}

---@return UClothingSimulationInteractorNv
function UClothingSimulationInteractorNv:get() end

---@param InStiffness float
function UClothingSimulationInteractorNv:SetAnimDriveDamperStiffness(InStiffness) end


