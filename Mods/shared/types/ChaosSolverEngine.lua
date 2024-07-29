---@meta

---@class AChaosSolverActor : AActor
---@field Properties FChaosSolverConfiguration
---@field TimeStepMultiplier float
---@field CollisionIterations int32
---@field PushOutIterations int32
---@field PushOutPairIterations int32
---@field ClusterConnectionFactor float
---@field ClusterUnionConnectionType EClusterConnectionTypeEnum
---@field DoGenerateCollisionData boolean
---@field CollisionFilterSettings FSolverCollisionFilterSettings
---@field DoGenerateBreakingData boolean
---@field BreakingFilterSettings FSolverBreakingFilterSettings
---@field DoGenerateTrailingData boolean
---@field TrailingFilterSettings FSolverTrailingFilterSettings
---@field MassScale float
---@field bHasFloor boolean
---@field FloorHeight float
---@field ChaosDebugSubstepControl FChaosDebugSubstepControl
---@field SpriteComponent UBillboardComponent
---@field GameplayEventDispatcherComponent UChaosGameplayEventDispatcher
AChaosSolverActor = {}

---@return AChaosSolverActor
function AChaosSolverActor:get() end

---@param bActive boolean
function AChaosSolverActor:SetSolverActive(bActive) end
function AChaosSolverActor:SetAsCurrentWorldSolver() end


---@class FBreakEventCallbackWrapper
FBreakEventCallbackWrapper = {}

---@return FBreakEventCallbackWrapper
function FBreakEventCallbackWrapper:get() end


---@class FChaosBreakEvent
---@field Component UPrimitiveComponent
---@field Location FVector
---@field Velocity FVector
---@field AngularVelocity FVector
---@field Mass float
---@field Index int32
FChaosBreakEvent = {}

---@return FChaosBreakEvent
function FChaosBreakEvent:get() end



---@class FChaosCrumblingEvent
---@field Component UPrimitiveComponent
---@field Location FVector
---@field Orientation FQuat
---@field LinearVelocity FVector
---@field AngularVelocity FVector
---@field Mass float
---@field LocalBounds FBox
---@field Children TArray<int32>
FChaosCrumblingEvent = {}

---@return FChaosCrumblingEvent
function FChaosCrumblingEvent:get() end



---@class FChaosDebugSubstepControl
---@field bPause boolean
---@field bSubstep boolean
---@field bStep boolean
FChaosDebugSubstepControl = {}

---@return FChaosDebugSubstepControl
function FChaosDebugSubstepControl:get() end



---@class FChaosHandlerSet
---@field ChaosHandlers TSet<UObject>
FChaosHandlerSet = {}

---@return FChaosHandlerSet
function FChaosHandlerSet:get() end



---@class FChaosPhysicsCollisionInfo
---@field Component UPrimitiveComponent
---@field OtherComponent UPrimitiveComponent
---@field Location FVector
---@field Normal FVector
---@field AccumulatedImpulse FVector
---@field Velocity FVector
---@field OtherVelocity FVector
---@field AngularVelocity FVector
---@field OtherAngularVelocity FVector
---@field Mass float
---@field OtherMass float
FChaosPhysicsCollisionInfo = {}

---@return FChaosPhysicsCollisionInfo
function FChaosPhysicsCollisionInfo:get() end



---@class FChaosRemovalEvent
---@field Component UPrimitiveComponent
---@field Location FVector
---@field Mass float
FChaosRemovalEvent = {}

---@return FChaosRemovalEvent
function FChaosRemovalEvent:get() end



---@class FCrumblingEventCallbackWrapper
FCrumblingEventCallbackWrapper = {}

---@return FCrumblingEventCallbackWrapper
function FCrumblingEventCallbackWrapper:get() end


---@class FRemovalEventCallbackWrapper
FRemovalEventCallbackWrapper = {}

---@return FRemovalEventCallbackWrapper
function FRemovalEventCallbackWrapper:get() end


---@class IChaosNotifyHandlerInterface : IInterface
IChaosNotifyHandlerInterface = {}

---@return IChaosNotifyHandlerInterface
function IChaosNotifyHandlerInterface:get() end


---@class UChaosDebugDrawComponent : UActorComponent
UChaosDebugDrawComponent = {}

---@return UChaosDebugDrawComponent
function UChaosDebugDrawComponent:get() end


---@class UChaosEventListenerComponent : UActorComponent
UChaosEventListenerComponent = {}

---@return UChaosEventListenerComponent
function UChaosEventListenerComponent:get() end


---@class UChaosGameplayEventDispatcher : UChaosEventListenerComponent
---@field CollisionEventRegistrations TMap<UPrimitiveComponent, FChaosHandlerSet>
---@field BreakEventRegistrations TMap<UPrimitiveComponent, FBreakEventCallbackWrapper>
---@field RemovalEventRegistrations TMap<UPrimitiveComponent, FRemovalEventCallbackWrapper>
---@field CrumblingEventRegistrations TMap<UPrimitiveComponent, FCrumblingEventCallbackWrapper>
UChaosGameplayEventDispatcher = {}

---@return UChaosGameplayEventDispatcher
function UChaosGameplayEventDispatcher:get() end



---@class UChaosSolver : UObject
UChaosSolver = {}

---@return UChaosSolver
function UChaosSolver:get() end


---@class UChaosSolverEngineBlueprintLibrary : UBlueprintFunctionLibrary
UChaosSolverEngineBlueprintLibrary = {}

---@return UChaosSolverEngineBlueprintLibrary
function UChaosSolverEngineBlueprintLibrary:get() end

---@param PhysicsCollision FChaosPhysicsCollisionInfo
---@return FHitResult
function UChaosSolverEngineBlueprintLibrary:ConvertPhysicsCollisionToHitResult(PhysicsCollision) end


---@class UChaosSolverSettings : UDeveloperSettings
---@field DefaultChaosSolverActorClass FSoftClassPath
UChaosSolverSettings = {}

---@return UChaosSolverSettings
function UChaosSolverSettings:get() end



