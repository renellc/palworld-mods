---@meta

---@class AFieldSystemActor : AActor
---@field FieldSystemComponent UFieldSystemComponent
AFieldSystemActor = {}

---@return AFieldSystemActor
function AFieldSystemActor:get() end



---@class FFieldObjectCommands
---@field TargetNames TArray<FName>
---@field RootNodes TArray<UFieldNodeBase>
---@field MetaDatas TArray<UFieldSystemMetaData>
FFieldObjectCommands = {}

---@return FFieldObjectCommands
function FFieldObjectCommands:get() end



---@class UBoxFalloff : UFieldNodeFloat
---@field Magnitude float
---@field MinRange float
---@field MaxRange float
---@field Default float
---@field Transform FTransform
---@field Falloff EFieldFalloffType
UBoxFalloff = {}

---@return UBoxFalloff
function UBoxFalloff:get() end

---@param Magnitude float
---@param MinRange float
---@param MaxRange float
---@param Default float
---@param Transform FTransform
---@param Falloff EFieldFalloffType
---@return UBoxFalloff
function UBoxFalloff:SetBoxFalloff(Magnitude, MinRange, MaxRange, Default, Transform, Falloff) end


---@class UCullingField : UFieldNodeBase
---@field Culling UFieldNodeBase
---@field Field UFieldNodeBase
---@field Operation EFieldCullingOperationType
UCullingField = {}

---@return UCullingField
function UCullingField:get() end

---@param Culling UFieldNodeBase
---@param Field UFieldNodeBase
---@param Operation EFieldCullingOperationType
---@return UCullingField
function UCullingField:SetCullingField(Culling, Field, Operation) end


---@class UFieldNodeBase : UActorComponent
UFieldNodeBase = {}

---@return UFieldNodeBase
function UFieldNodeBase:get() end


---@class UFieldNodeFloat : UFieldNodeBase
UFieldNodeFloat = {}

---@return UFieldNodeFloat
function UFieldNodeFloat:get() end


---@class UFieldNodeInt : UFieldNodeBase
UFieldNodeInt = {}

---@return UFieldNodeInt
function UFieldNodeInt:get() end


---@class UFieldNodeVector : UFieldNodeBase
UFieldNodeVector = {}

---@return UFieldNodeVector
function UFieldNodeVector:get() end


---@class UFieldSystem : UObject
UFieldSystem = {}

---@return UFieldSystem
function UFieldSystem:get() end


---@class UFieldSystemComponent : UPrimitiveComponent
---@field FieldSystem UFieldSystem
---@field bIsWorldField boolean
---@field bIsChaosField boolean
---@field SupportedSolvers TArray<TSoftObjectPtr<AChaosSolverActor>>
---@field ConstructionCommands FFieldObjectCommands
---@field BufferCommands FFieldObjectCommands
UFieldSystemComponent = {}

---@return UFieldSystemComponent
function UFieldSystemComponent:get() end

function UFieldSystemComponent:ResetFieldSystem() end
function UFieldSystemComponent:RemovePersistentFields() end
---@param Enabled boolean
---@param Position FVector
---@param Direction FVector
---@param Radius float
---@param Magnitude float
function UFieldSystemComponent:ApplyUniformVectorFalloffForce(Enabled, Position, Direction, Radius, Magnitude) end
---@param Enabled boolean
---@param Position FVector
---@param Radius float
---@param Magnitude float
---@param Iterations int32
function UFieldSystemComponent:ApplyStrainField(Enabled, Position, Radius, Magnitude, Iterations) end
---@param Enabled boolean
---@param Position FVector
---@param Radius float
function UFieldSystemComponent:ApplyStayDynamicField(Enabled, Position, Radius) end
---@param Enabled boolean
---@param Position FVector
---@param Radius float
---@param Magnitude float
function UFieldSystemComponent:ApplyRadialVectorFalloffForce(Enabled, Position, Radius, Magnitude) end
---@param Enabled boolean
---@param Position FVector
---@param Magnitude float
function UFieldSystemComponent:ApplyRadialForce(Enabled, Position, Magnitude) end
---@param Enabled boolean
---@param Target EFieldPhysicsType
---@param MetaData UFieldSystemMetaData
---@param Field UFieldNodeBase
function UFieldSystemComponent:ApplyPhysicsField(Enabled, Target, MetaData, Field) end
---@param Enabled boolean
---@param Direction FVector
---@param Magnitude float
function UFieldSystemComponent:ApplyLinearForce(Enabled, Direction, Magnitude) end
---@param Enabled boolean
---@param Target EFieldPhysicsType
---@param MetaData UFieldSystemMetaData
---@param Field UFieldNodeBase
function UFieldSystemComponent:AddPersistentField(Enabled, Target, MetaData, Field) end
---@param Enabled boolean
---@param Target EFieldPhysicsType
---@param MetaData UFieldSystemMetaData
---@param Field UFieldNodeBase
function UFieldSystemComponent:AddFieldCommand(Enabled, Target, MetaData, Field) end


---@class UFieldSystemMetaData : UActorComponent
UFieldSystemMetaData = {}

---@return UFieldSystemMetaData
function UFieldSystemMetaData:get() end


---@class UFieldSystemMetaDataFilter : UFieldSystemMetaData
---@field FilterType EFieldFilterType
---@field ObjectType EFieldObjectType
---@field PositionType EFieldPositionType
UFieldSystemMetaDataFilter = {}

---@return UFieldSystemMetaDataFilter
function UFieldSystemMetaDataFilter:get() end

---@param FilterType EFieldFilterType
---@param ObjectType EFieldObjectType
---@param PositionType EFieldPositionType
---@return UFieldSystemMetaDataFilter
function UFieldSystemMetaDataFilter:SetMetaDataFilterType(FilterType, ObjectType, PositionType) end


---@class UFieldSystemMetaDataIteration : UFieldSystemMetaData
---@field Iterations int32
UFieldSystemMetaDataIteration = {}

---@return UFieldSystemMetaDataIteration
function UFieldSystemMetaDataIteration:get() end

---@param Iterations int32
---@return UFieldSystemMetaDataIteration
function UFieldSystemMetaDataIteration:SetMetaDataIteration(Iterations) end


---@class UFieldSystemMetaDataProcessingResolution : UFieldSystemMetaData
---@field ResolutionType EFieldResolutionType
UFieldSystemMetaDataProcessingResolution = {}

---@return UFieldSystemMetaDataProcessingResolution
function UFieldSystemMetaDataProcessingResolution:get() end

---@param ResolutionType EFieldResolutionType
---@return UFieldSystemMetaDataProcessingResolution
function UFieldSystemMetaDataProcessingResolution:SetMetaDataaProcessingResolutionType(ResolutionType) end


---@class UNoiseField : UFieldNodeFloat
---@field MinRange float
---@field MaxRange float
---@field Transform FTransform
UNoiseField = {}

---@return UNoiseField
function UNoiseField:get() end

---@param MinRange float
---@param MaxRange float
---@param Transform FTransform
---@return UNoiseField
function UNoiseField:SetNoiseField(MinRange, MaxRange, Transform) end


---@class UOperatorField : UFieldNodeBase
---@field Magnitude float
---@field RightField UFieldNodeBase
---@field LeftField UFieldNodeBase
---@field Operation EFieldOperationType
UOperatorField = {}

---@return UOperatorField
function UOperatorField:get() end

---@param Magnitude float
---@param LeftField UFieldNodeBase
---@param RightField UFieldNodeBase
---@param Operation EFieldOperationType
---@return UOperatorField
function UOperatorField:SetOperatorField(Magnitude, LeftField, RightField, Operation) end


---@class UPlaneFalloff : UFieldNodeFloat
---@field Magnitude float
---@field MinRange float
---@field MaxRange float
---@field Default float
---@field Distance float
---@field Position FVector
---@field Normal FVector
---@field Falloff EFieldFalloffType
UPlaneFalloff = {}

---@return UPlaneFalloff
function UPlaneFalloff:get() end

---@param Magnitude float
---@param MinRange float
---@param MaxRange float
---@param Default float
---@param Distance float
---@param Position FVector
---@param Normal FVector
---@param Falloff EFieldFalloffType
---@return UPlaneFalloff
function UPlaneFalloff:SetPlaneFalloff(Magnitude, MinRange, MaxRange, Default, Distance, Position, Normal, Falloff) end


---@class URadialFalloff : UFieldNodeFloat
---@field Magnitude float
---@field MinRange float
---@field MaxRange float
---@field Default float
---@field Radius float
---@field Position FVector
---@field Falloff EFieldFalloffType
URadialFalloff = {}

---@return URadialFalloff
function URadialFalloff:get() end

---@param Magnitude float
---@param MinRange float
---@param MaxRange float
---@param Default float
---@param Radius float
---@param Position FVector
---@param Falloff EFieldFalloffType
---@return URadialFalloff
function URadialFalloff:SetRadialFalloff(Magnitude, MinRange, MaxRange, Default, Radius, Position, Falloff) end


---@class URadialIntMask : UFieldNodeInt
---@field Radius float
---@field Position FVector
---@field InteriorValue int32
---@field ExteriorValue int32
---@field SetMaskCondition ESetMaskConditionType
URadialIntMask = {}

---@return URadialIntMask
function URadialIntMask:get() end

---@param Radius float
---@param Position FVector
---@param InteriorValue int32
---@param ExteriorValue int32
---@param SetMaskConditionIn ESetMaskConditionType
---@return URadialIntMask
function URadialIntMask:SetRadialIntMask(Radius, Position, InteriorValue, ExteriorValue, SetMaskConditionIn) end


---@class URadialVector : UFieldNodeVector
---@field Magnitude float
---@field Position FVector
URadialVector = {}

---@return URadialVector
function URadialVector:get() end

---@param Magnitude float
---@param Position FVector
---@return URadialVector
function URadialVector:SetRadialVector(Magnitude, Position) end


---@class URandomVector : UFieldNodeVector
---@field Magnitude float
URandomVector = {}

---@return URandomVector
function URandomVector:get() end

---@param Magnitude float
---@return URandomVector
function URandomVector:SetRandomVector(Magnitude) end


---@class UReturnResultsTerminal : UFieldNodeBase
UReturnResultsTerminal = {}

---@return UReturnResultsTerminal
function UReturnResultsTerminal:get() end

---@return UReturnResultsTerminal
function UReturnResultsTerminal:SetReturnResultsTerminal() end


---@class UToFloatField : UFieldNodeFloat
---@field IntField UFieldNodeInt
UToFloatField = {}

---@return UToFloatField
function UToFloatField:get() end

---@param IntegerField UFieldNodeInt
---@return UToFloatField
function UToFloatField:SetToFloatField(IntegerField) end


---@class UToIntegerField : UFieldNodeInt
---@field FloatField UFieldNodeFloat
UToIntegerField = {}

---@return UToIntegerField
function UToIntegerField:get() end

---@param FloatField UFieldNodeFloat
---@return UToIntegerField
function UToIntegerField:SetToIntegerField(FloatField) end


---@class UUniformInteger : UFieldNodeInt
---@field Magnitude int32
UUniformInteger = {}

---@return UUniformInteger
function UUniformInteger:get() end

---@param Magnitude int32
---@return UUniformInteger
function UUniformInteger:SetUniformInteger(Magnitude) end


---@class UUniformScalar : UFieldNodeFloat
---@field Magnitude float
UUniformScalar = {}

---@return UUniformScalar
function UUniformScalar:get() end

---@param Magnitude float
---@return UUniformScalar
function UUniformScalar:SetUniformScalar(Magnitude) end


---@class UUniformVector : UFieldNodeVector
---@field Magnitude float
---@field Direction FVector
UUniformVector = {}

---@return UUniformVector
function UUniformVector:get() end

---@param Magnitude float
---@param Direction FVector
---@return UUniformVector
function UUniformVector:SetUniformVector(Magnitude, Direction) end


---@class UWaveScalar : UFieldNodeFloat
---@field Magnitude float
---@field Position FVector
---@field WaveLength float
---@field Period float
---@field Function EWaveFunctionType
---@field Falloff EFieldFalloffType
UWaveScalar = {}

---@return UWaveScalar
function UWaveScalar:get() end

---@param Magnitude float
---@param Position FVector
---@param WaveLength float
---@param Period float
---@param Time float
---@param Function EWaveFunctionType
---@param Falloff EFieldFalloffType
---@return UWaveScalar
function UWaveScalar:SetWaveScalar(Magnitude, Position, WaveLength, Period, Time, Function, Falloff) end


