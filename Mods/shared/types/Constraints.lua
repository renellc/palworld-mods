---@meta

---@class AConstraintsActor : AActor
---@field ConstraintsManager UConstraintsManager
AConstraintsActor = {}

---@return AConstraintsActor
function AConstraintsActor:get() end



---@class FConstraintAndActiveChannel
---@field Constraint TSoftObjectPtr<UTickableConstraint>
---@field ActiveChannel FMovieSceneConstraintChannel
---@field ConstraintCopyToSpawn UTickableConstraint
FConstraintAndActiveChannel = {}

---@return FConstraintAndActiveChannel
function FConstraintAndActiveChannel:get() end



---@class FConstraintTickFunction : FTickFunction
FConstraintTickFunction = {}

---@return FConstraintTickFunction
function FConstraintTickFunction:get() end


---@class FMovieSceneConstraintChannel : FMovieSceneBoolChannel
FMovieSceneConstraintChannel = {}

---@return FMovieSceneConstraintChannel
function FMovieSceneConstraintChannel:get() end


---@class UConstraintsManager : UObject
---@field OnConstraintAdded_BP FConstraintsManagerOnConstraintAdded_BP
---@field OnConstraintRemoved_BP FConstraintsManagerOnConstraintRemoved_BP
---@field Constraints TArray<UTickableConstraint>
UConstraintsManager = {}

---@return UConstraintsManager
function UConstraintsManager:get() end



---@class UConstraintsScriptingLibrary : UBlueprintFunctionLibrary
UConstraintsScriptingLibrary = {}

---@return UConstraintsScriptingLibrary
function UConstraintsScriptingLibrary:get() end

---@param InWorld UWorld
---@param InIndex int32
---@return boolean
function UConstraintsScriptingLibrary:RemoveConstraint(InWorld, InIndex) end
---@param InWorld UWorld
---@return UConstraintsManager
function UConstraintsScriptingLibrary:GetManager(InWorld) end
---@param InWorld UWorld
---@param InSceneComponent USceneComponent
---@param InSocketName FName
---@return UTransformableComponentHandle
function UConstraintsScriptingLibrary:CreateTransformableComponentHandle(InWorld, InSceneComponent, InSocketName) end
---@param InWorld UWorld
---@param InType ETransformConstraintType
---@return UTickableTransformConstraint
function UConstraintsScriptingLibrary:CreateFromType(InWorld, InType) end
---@param InWorld UWorld
---@param InParentHandle UTransformableHandle
---@param InChildHandle UTransformableHandle
---@param InConstraint UTickableTransformConstraint
---@param bMaintainOffset boolean
---@return boolean
function UConstraintsScriptingLibrary:AddConstraint(InWorld, InParentHandle, InChildHandle, InConstraint, bMaintainOffset) end


---@class UTickableConstraint : UObject
---@field ConstraintTick FConstraintTickFunction
---@field Active boolean
UTickableConstraint = {}

---@return UTickableConstraint
function UTickableConstraint:get() end



---@class UTickableLookAtConstraint : UTickableTransformConstraint
---@field Axis FVector
UTickableLookAtConstraint = {}

---@return UTickableLookAtConstraint
function UTickableLookAtConstraint:get() end



---@class UTickableParentConstraint : UTickableTransformConstraint
---@field OffsetTransform FTransform
---@field bScaling boolean
UTickableParentConstraint = {}

---@return UTickableParentConstraint
function UTickableParentConstraint:get() end



---@class UTickableRotationConstraint : UTickableTransformConstraint
---@field OffsetRotation FQuat
UTickableRotationConstraint = {}

---@return UTickableRotationConstraint
function UTickableRotationConstraint:get() end



---@class UTickableScaleConstraint : UTickableTransformConstraint
---@field OffsetScale FVector
UTickableScaleConstraint = {}

---@return UTickableScaleConstraint
function UTickableScaleConstraint:get() end



---@class UTickableTransformConstraint : UTickableConstraint
---@field ParentTRSHandle UTransformableHandle
---@field ChildTRSHandle UTransformableHandle
---@field bMaintainOffset boolean
---@field Weight float
---@field bDynamicOffset boolean
---@field Type ETransformConstraintType
UTickableTransformConstraint = {}

---@return UTickableTransformConstraint
function UTickableTransformConstraint:get() end



---@class UTickableTranslationConstraint : UTickableTransformConstraint
---@field OffsetTranslation FVector
UTickableTranslationConstraint = {}

---@return UTickableTranslationConstraint
function UTickableTranslationConstraint:get() end



---@class UTransformableComponentHandle : UTransformableHandle
---@field Component TWeakObjectPtr<USceneComponent>
---@field SocketName FName
UTransformableComponentHandle = {}

---@return UTransformableComponentHandle
function UTransformableComponentHandle:get() end



---@class UTransformableHandle : UObject
---@field ConstraintBindingID FMovieSceneObjectBindingID
UTransformableHandle = {}

---@return UTransformableHandle
function UTransformableHandle:get() end



