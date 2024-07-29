---@meta

---@class AControlRigControlActor : AActor
---@field ActorToTrack AActor
---@field ControlRigClass TSubclassOf<UControlRig>
---@field bRefreshOnTick boolean
---@field bIsSelectable boolean
---@field MaterialOverride UMaterialInterface
---@field ColorParameter FString
---@field bCastShadows boolean
---@field ActorRootComponent USceneComponent
---@field ControlRig TSoftObjectPtr<UControlRig>
---@field ControlNames TArray<FName>
---@field ShapeTransforms TArray<FTransform>
---@field Components TArray<UStaticMeshComponent>
---@field Materials TArray<UMaterialInstanceDynamic>
---@field ColorParameterName FName
AControlRigControlActor = {}

---@return AControlRigControlActor
function AControlRigControlActor:get() end

function AControlRigControlActor:ResetControlActor() end
function AControlRigControlActor:Refresh() end
function AControlRigControlActor:Clear() end


---@class AControlRigShapeActor : AActor
---@field ActorRootComponent USceneComponent
---@field StaticMeshComponent UStaticMeshComponent
---@field ControlRigIndex uint32
---@field ControlRig TWeakObjectPtr<UControlRig>
---@field ControlName FName
---@field ShapeName FName
---@field ColorParameterName FName
---@field bSelected boolean
---@field bHovered boolean
AControlRigShapeActor = {}

---@return AControlRigShapeActor
function AControlRigShapeActor:get() end

---@param bInSelected boolean
function AControlRigShapeActor:SetSelected(bInSelected) end
---@param bInSelectable boolean
function AControlRigShapeActor:SetSelectable(bInSelectable) end
---@param bInHovered boolean
function AControlRigShapeActor:SetHovered(bInHovered) end
---@param InTransform FTransform
function AControlRigShapeActor:SetGlobalTransform(InTransform) end
---@param bInEnabled boolean
function AControlRigShapeActor:SetEnabled(bInEnabled) end
---@param NewTransform FTransform
function AControlRigShapeActor:OnTransformChanged(NewTransform) end
---@param bIsSelected boolean
function AControlRigShapeActor:OnSelectionChanged(bIsSelected) end
---@param bIsManipulating boolean
function AControlRigShapeActor:OnManipulatingChanged(bIsManipulating) end
---@param bIsSelected boolean
function AControlRigShapeActor:OnHoveredChanged(bIsSelected) end
---@param bIsEnabled boolean
function AControlRigShapeActor:OnEnabledChanged(bIsEnabled) end
---@return boolean
function AControlRigShapeActor:IsSelectedInEditor() end
---@return boolean
function AControlRigShapeActor:IsHovered() end
---@return boolean
function AControlRigShapeActor:IsEnabled() end
---@return FTransform
function AControlRigShapeActor:GetGlobalTransform() end


---@class FAimTarget
---@field Weight float
---@field Transform FTransform
---@field AlignVector FVector
FAimTarget = {}

---@return FAimTarget
function FAimTarget:get() end



---@class FAnimNode_ControlRig : FAnimNode_ControlRigBase
---@field ControlRigClass TSubclassOf<UControlRig>
---@field ControlRig UControlRig
---@field Alpha float
---@field AlphaInputType EAnimAlphaInputType
---@field bAlphaBoolEnabled boolean
---@field bSetRefPoseFromSkeleton boolean
---@field AlphaScaleBias FInputScaleBias
---@field AlphaBoolBlend FInputAlphaBoolBlend
---@field AlphaCurveName FName
---@field AlphaScaleBiasClamp FInputScaleBiasClamp
---@field InputMapping TMap<FName, FName>
---@field OutputMapping TMap<FName, FName>
---@field LODThreshold int32
FAnimNode_ControlRig = {}

---@return FAnimNode_ControlRig
function FAnimNode_ControlRig:get() end



---@class FAnimNode_ControlRigBase : FAnimNode_CustomProperty
---@field Source FPoseLink
---@field bResetInputPoseToInitial boolean
---@field bTransferInputPose boolean
---@field bTransferInputCurves boolean
---@field bTransferPoseInGlobalSpace boolean
---@field InputBonesToTransfer TArray<FBoneReference>
---@field NodeMappingContainer TWeakObjectPtr<UNodeMappingContainer>
---@field InputSettings FControlRigIOSettings
---@field OutputSettings FControlRigIOSettings
---@field bExecute boolean
---@field EventQueue TArray<FControlRigAnimNodeEventName>
FAnimNode_ControlRigBase = {}

---@return FAnimNode_ControlRigBase
function FAnimNode_ControlRigBase:get() end



---@class FAnimNode_ControlRigInputPose : FAnimNode_Base
---@field InputPose FPoseLink
FAnimNode_ControlRigInputPose = {}

---@return FAnimNode_ControlRigInputPose
function FAnimNode_ControlRigInputPose:get() end



---@class FAnimNode_ControlRig_ExternalSource : FAnimNode_ControlRigBase
---@field ControlRig TWeakObjectPtr<UControlRig>
FAnimNode_ControlRig_ExternalSource = {}

---@return FAnimNode_ControlRig_ExternalSource
function FAnimNode_ControlRig_ExternalSource:get() end



---@class FAnimationHierarchy : FNodeHierarchyWithUserData
---@field UserData TArray<FConstraintNodeData>
FAnimationHierarchy = {}

---@return FAnimationHierarchy
function FAnimationHierarchy:get() end



---@class FBlendTarget
---@field Transform FTransform
---@field Weight float
FBlendTarget = {}

---@return FBlendTarget
function FBlendTarget:get() end



---@class FCRFourPointBezier
---@field A FVector
---@field B FVector
---@field C FVector
---@field D FVector
FCRFourPointBezier = {}

---@return FCRFourPointBezier
function FCRFourPointBezier:get() end



---@class FCRSimContainer
---@field TimeStep float
---@field AccumulatedTime float
---@field TimeLeftForStep float
FCRSimContainer = {}

---@return FCRSimContainer
function FCRSimContainer:get() end



---@class FCRSimLinearSpring
---@field SubjectA int32
---@field SubjectB int32
---@field Coefficient float
---@field Equilibrium float
FCRSimLinearSpring = {}

---@return FCRSimLinearSpring
function FCRSimLinearSpring:get() end



---@class FCRSimPoint
---@field Mass float
---@field Size float
---@field LinearDamping float
---@field InheritMotion float
---@field Position FVector
---@field LinearVelocity FVector
FCRSimPoint = {}

---@return FCRSimPoint
function FCRSimPoint:get() end



---@class FCRSimPointConstraint
---@field Type ECRSimConstraintType
---@field SubjectA int32
---@field SubjectB int32
---@field DataA FVector
---@field DataB FVector
FCRSimPointConstraint = {}

---@return FCRSimPointConstraint
function FCRSimPointConstraint:get() end



---@class FCRSimPointContainer : FCRSimContainer
---@field Points TArray<FCRSimPoint>
---@field Springs TArray<FCRSimLinearSpring>
---@field Forces TArray<FCRSimPointForce>
---@field CollisionVolumes TArray<FCRSimSoftCollision>
---@field Constraints TArray<FCRSimPointConstraint>
---@field PreviousStep TArray<FCRSimPoint>
FCRSimPointContainer = {}

---@return FCRSimPointContainer
function FCRSimPointContainer:get() end



---@class FCRSimPointForce
---@field ForceType ECRSimPointForceType
---@field Vector FVector
---@field Coefficient float
---@field bNormalize boolean
FCRSimPointForce = {}

---@return FCRSimPointForce
function FCRSimPointForce:get() end



---@class FCRSimSoftCollision
---@field Transform FTransform
---@field ShapeType ECRSimSoftCollisionType
---@field MinimumDistance float
---@field MaximumDistance float
---@field FalloffType EControlRigAnimEasingType
---@field Coefficient float
---@field bInverted boolean
FCRSimSoftCollision = {}

---@return FCRSimSoftCollision
function FCRSimSoftCollision:get() end



---@class FCachedRigElement
---@field Key FRigElementKey
---@field Index uint16
---@field ContainerVersion int32
FCachedRigElement = {}

---@return FCachedRigElement
function FCachedRigElement:get() end



---@class FChannelMapInfo
---@field ControlIndex int32
---@field TotalChannelIndex int32
---@field ChannelIndex int32
---@field ParentControlIndex int32
---@field ChannelTypeName FName
---@field bDoesHaveSpace boolean
---@field SpaceChannelIndex int32
---@field MaskIndex int32
---@field CategoryIndex int32
---@field ConstraintsIndex TArray<uint32>
FChannelMapInfo = {}

---@return FChannelMapInfo
function FChannelMapInfo:get() end



---@class FConstraintNodeData
---@field RelativeParent FTransform
---@field ConstraintOffset FConstraintOffset
---@field LinkedNode FName
---@field Constraints TArray<FTransformConstraint>
FConstraintNodeData = {}

---@return FConstraintNodeData
function FConstraintNodeData:get() end



---@class FConstraintParent
---@field Item FRigElementKey
---@field Weight float
FConstraintParent = {}

---@return FConstraintParent
function FConstraintParent:get() end



---@class FConstraintTarget
---@field Transform FTransform
---@field Weight float
---@field bMaintainOffset boolean
---@field Filter FTransformFilter
FConstraintTarget = {}

---@return FConstraintTarget
function FConstraintTarget:get() end



---@class FControlRigAnimInstanceProxy : FAnimInstanceProxy
FControlRigAnimInstanceProxy = {}

---@return FControlRigAnimInstanceProxy
function FControlRigAnimInstanceProxy:get() end


---@class FControlRigAnimNodeEventName
---@field EventName FName
FControlRigAnimNodeEventName = {}

---@return FControlRigAnimNodeEventName
function FControlRigAnimNodeEventName:get() end



---@class FControlRigComponentMappedBone
---@field Source FName
---@field Target FName
FControlRigComponentMappedBone = {}

---@return FControlRigComponentMappedBone
function FControlRigComponentMappedBone:get() end



---@class FControlRigComponentMappedComponent
---@field Component USceneComponent
---@field ElementName FName
---@field ElementType ERigElementType
---@field Direction EControlRigComponentMapDirection
FControlRigComponentMappedComponent = {}

---@return FControlRigComponentMappedComponent
function FControlRigComponentMappedComponent:get() end



---@class FControlRigComponentMappedCurve
---@field Source FName
---@field Target FName
FControlRigComponentMappedCurve = {}

---@return FControlRigComponentMappedCurve
function FControlRigComponentMappedCurve:get() end



---@class FControlRigComponentMappedElement
---@field ComponentReference FComponentReference
---@field TransformIndex int32
---@field TransformName FName
---@field ElementType ERigElementType
---@field ElementName FName
---@field Direction EControlRigComponentMapDirection
---@field Offset FTransform
---@field Weight float
---@field space EControlRigComponentSpace
---@field SceneComponent USceneComponent
---@field ElementIndex int32
---@field SubIndex int32
FControlRigComponentMappedElement = {}

---@return FControlRigComponentMappedElement
function FControlRigComponentMappedElement:get() end



---@class FControlRigControlPose
---@field CopyOfControls TArray<FRigControlCopy>
FControlRigControlPose = {}

---@return FControlRigControlPose
function FControlRigControlPose:get() end



---@class FControlRigDrawContainer
---@field Instructions TArray<FControlRigDrawInstruction>
FControlRigDrawContainer = {}

---@return FControlRigDrawContainer
function FControlRigDrawContainer:get() end



---@class FControlRigDrawInstruction
---@field Name FName
---@field PrimitiveType EControlRigDrawSettings::Type
---@field Positions TArray<FVector>
---@field Color FLinearColor
---@field Thickness float
---@field Transform FTransform
FControlRigDrawInstruction = {}

---@return FControlRigDrawInstruction
function FControlRigDrawInstruction:get() end



---@class FControlRigDrawInterface : FControlRigDrawContainer
FControlRigDrawInterface = {}

---@return FControlRigDrawInterface
function FControlRigDrawInterface:get() end


---@class FControlRigExecuteContext : FRigVMExecuteContext
FControlRigExecuteContext = {}

---@return FControlRigExecuteContext
function FControlRigExecuteContext:get() end


---@class FControlRigIOSettings
---@field bUpdatePose boolean
---@field bUpdateCurves boolean
FControlRigIOSettings = {}

---@return FControlRigIOSettings
function FControlRigIOSettings:get() end



---@class FControlRigLayerInstanceProxy : FAnimInstanceProxy
FControlRigLayerInstanceProxy = {}

---@return FControlRigLayerInstanceProxy
function FControlRigLayerInstanceProxy:get() end


---@class FControlRigSequenceObjectReference
---@field ControlRigClass TSubclassOf<UControlRig>
FControlRigSequenceObjectReference = {}

---@return FControlRigSequenceObjectReference
function FControlRigSequenceObjectReference:get() end



---@class FControlRigSequenceObjectReferenceMap
---@field BindingIds TArray<FGuid>
---@field References TArray<FControlRigSequenceObjectReferences>
FControlRigSequenceObjectReferenceMap = {}

---@return FControlRigSequenceObjectReferenceMap
function FControlRigSequenceObjectReferenceMap:get() end



---@class FControlRigSequenceObjectReferences
---@field Array TArray<FControlRigSequenceObjectReference>
FControlRigSequenceObjectReferences = {}

---@return FControlRigSequenceObjectReferences
function FControlRigSequenceObjectReferences:get() end



---@class FControlRigSettingsPerPinBool
---@field Values TMap<FString, boolean>
FControlRigSettingsPerPinBool = {}

---@return FControlRigSettingsPerPinBool
function FControlRigSettingsPerPinBool:get() end



---@class FControlRigShapeDefinition
---@field ShapeName FName
---@field StaticMesh TSoftObjectPtr<UStaticMesh>
---@field Transform FTransform
FControlRigShapeDefinition = {}

---@return FControlRigShapeDefinition
function FControlRigShapeDefinition:get() end



---@class FControlRigValidationContext
FControlRigValidationContext = {}

---@return FControlRigValidationContext
function FControlRigValidationContext:get() end


---@class FControlShapeActorCreationParam
FControlShapeActorCreationParam = {}

---@return FControlShapeActorCreationParam
function FControlShapeActorCreationParam:get() end


---@class FEnumParameterNameAndCurve
---@field ParameterName FName
---@field ParameterCurve FMovieSceneByteChannel
FEnumParameterNameAndCurve = {}

---@return FEnumParameterNameAndCurve
function FEnumParameterNameAndCurve:get() end



---@class FIntegerParameterNameAndCurve
---@field ParameterName FName
---@field ParameterCurve FMovieSceneIntegerChannel
FIntegerParameterNameAndCurve = {}

---@return FIntegerParameterNameAndCurve
function FIntegerParameterNameAndCurve:get() end



---@class FMathRBFInterpolateQuatColor_Target
---@field Target FQuat
---@field Value FLinearColor
FMathRBFInterpolateQuatColor_Target = {}

---@return FMathRBFInterpolateQuatColor_Target
function FMathRBFInterpolateQuatColor_Target:get() end



---@class FMathRBFInterpolateQuatFloat_Target
---@field Target FQuat
---@field Value float
FMathRBFInterpolateQuatFloat_Target = {}

---@return FMathRBFInterpolateQuatFloat_Target
function FMathRBFInterpolateQuatFloat_Target:get() end



---@class FMathRBFInterpolateQuatQuat_Target
---@field Target FQuat
---@field Value FQuat
FMathRBFInterpolateQuatQuat_Target = {}

---@return FMathRBFInterpolateQuatQuat_Target
function FMathRBFInterpolateQuatQuat_Target:get() end



---@class FMathRBFInterpolateQuatVector_Target
---@field Target FQuat
---@field Value FVector
FMathRBFInterpolateQuatVector_Target = {}

---@return FMathRBFInterpolateQuatVector_Target
function FMathRBFInterpolateQuatVector_Target:get() end



---@class FMathRBFInterpolateQuatXform_Target
---@field Target FQuat
---@field Value FTransform
FMathRBFInterpolateQuatXform_Target = {}

---@return FMathRBFInterpolateQuatXform_Target
function FMathRBFInterpolateQuatXform_Target:get() end



---@class FMathRBFInterpolateVectorColor_Target
---@field Target FVector
---@field Value FLinearColor
FMathRBFInterpolateVectorColor_Target = {}

---@return FMathRBFInterpolateVectorColor_Target
function FMathRBFInterpolateVectorColor_Target:get() end



---@class FMathRBFInterpolateVectorFloat_Target
---@field Target FVector
---@field Value float
FMathRBFInterpolateVectorFloat_Target = {}

---@return FMathRBFInterpolateVectorFloat_Target
function FMathRBFInterpolateVectorFloat_Target:get() end



---@class FMathRBFInterpolateVectorQuat_Target
---@field Target FVector
---@field Value FQuat
FMathRBFInterpolateVectorQuat_Target = {}

---@return FMathRBFInterpolateVectorQuat_Target
function FMathRBFInterpolateVectorQuat_Target:get() end



---@class FMathRBFInterpolateVectorVector_Target
---@field Target FVector
---@field Value FVector
FMathRBFInterpolateVectorVector_Target = {}

---@return FMathRBFInterpolateVectorVector_Target
function FMathRBFInterpolateVectorVector_Target:get() end



---@class FMathRBFInterpolateVectorXform_Target
---@field Target FVector
---@field Value FTransform
FMathRBFInterpolateVectorXform_Target = {}

---@return FMathRBFInterpolateVectorXform_Target
function FMathRBFInterpolateVectorXform_Target:get() end



---@class FMovieSceneControlRigInstanceData : FMovieSceneSequenceInstanceData
---@field bAdditive boolean
---@field bApplyBoneFilter boolean
---@field BoneFilter FInputBlendPose
---@field Weight FMovieSceneFloatChannel
---@field Operand FMovieSceneEvaluationOperand
FMovieSceneControlRigInstanceData = {}

---@return FMovieSceneControlRigInstanceData
function FMovieSceneControlRigInstanceData:get() end



---@class FMovieSceneControlRigParameterTemplate : FMovieSceneParameterSectionTemplate
---@field Enums TArray<FEnumParameterNameAndCurve>
---@field Integers TArray<FIntegerParameterNameAndCurve>
---@field Spaces TArray<FSpaceControlNameAndChannel>
---@field Constraints TArray<FConstraintAndActiveChannel>
FMovieSceneControlRigParameterTemplate = {}

---@return FMovieSceneControlRigParameterTemplate
function FMovieSceneControlRigParameterTemplate:get() end



---@class FMovieSceneControlRigSpaceBaseKey
---@field SpaceType EMovieSceneControlRigSpaceType
---@field ControlRigElement FRigElementKey
FMovieSceneControlRigSpaceBaseKey = {}

---@return FMovieSceneControlRigSpaceBaseKey
function FMovieSceneControlRigSpaceBaseKey:get() end



---@class FMovieSceneControlRigSpaceChannel : FMovieSceneChannel
---@field KeyTimes TArray<FFrameNumber>
---@field KeyValues TArray<FMovieSceneControlRigSpaceBaseKey>
FMovieSceneControlRigSpaceChannel = {}

---@return FMovieSceneControlRigSpaceChannel
function FMovieSceneControlRigSpaceChannel:get() end



---@class FRegionScaleFactors
---@field PositiveWidth float
---@field NegativeWidth float
---@field PositiveHeight float
---@field NegativeHeight float
FRegionScaleFactors = {}

---@return FRegionScaleFactors
function FRegionScaleFactors:get() end



---@class FRigBaseElement
---@field Key FRigElementKey
---@field NameString FString
---@field Index int32
---@field SubIndex int32
---@field bSelected boolean
---@field CreatedAtInstructionIndex int32
FRigBaseElement = {}

---@return FRigBaseElement
function FRigBaseElement:get() end



---@class FRigBaseMetadata
---@field Name FName
---@field Type ERigMetadataType
FRigBaseMetadata = {}

---@return FRigBaseMetadata
function FRigBaseMetadata:get() end



---@class FRigBone : FRigElement
---@field ParentName FName
---@field ParentIndex int32
---@field InitialTransform FTransform
---@field GlobalTransform FTransform
---@field LocalTransform FTransform
---@field Dependents TArray<int32>
---@field Type ERigBoneType
FRigBone = {}

---@return FRigBone
function FRigBone:get() end



---@class FRigBoneElement : FRigSingleParentElement
---@field boneType ERigBoneType
FRigBoneElement = {}

---@return FRigBoneElement
function FRigBoneElement:get() end



---@class FRigBoneHierarchy
---@field Bones TArray<FRigBone>
FRigBoneHierarchy = {}

---@return FRigBoneHierarchy
function FRigBoneHierarchy:get() end



---@class FRigBoolArrayMetadata : FRigBaseMetadata
---@field Value TArray<boolean>
FRigBoolArrayMetadata = {}

---@return FRigBoolArrayMetadata
function FRigBoolArrayMetadata:get() end



---@class FRigBoolMetadata : FRigBaseMetadata
---@field Value boolean
FRigBoolMetadata = {}

---@return FRigBoolMetadata
function FRigBoolMetadata:get() end



---@class FRigComputedTransform
---@field Transform FTransform
FRigComputedTransform = {}

---@return FRigComputedTransform
function FRigComputedTransform:get() end



---@class FRigControl : FRigElement
---@field ControlType ERigControlType
---@field DisplayName FName
---@field ParentName FName
---@field ParentIndex int32
---@field SpaceName FName
---@field SpaceIndex int32
---@field OffsetTransform FTransform
---@field InitialValue FRigControlValue
---@field Value FRigControlValue
---@field PrimaryAxis ERigControlAxis
---@field bIsCurve boolean
---@field bAnimatable boolean
---@field bLimitTranslation boolean
---@field bLimitRotation boolean
---@field bLimitScale boolean
---@field bDrawLimits boolean
---@field MinimumValue FRigControlValue
---@field MaximumValue FRigControlValue
---@field bGizmoEnabled boolean
---@field bGizmoVisible boolean
---@field GizmoName FName
---@field GizmoTransform FTransform
---@field GizmoColor FLinearColor
---@field Dependents TArray<int32>
---@field bIsTransientControl boolean
---@field ControlEnum UEnum
FRigControl = {}

---@return FRigControl
function FRigControl:get() end



---@class FRigControlCopy
---@field Name FName
---@field ControlType ERigControlType
---@field Value FRigControlValue
---@field ParentKey FRigElementKey
---@field OffsetTransform FTransform
---@field ParentTransform FTransform
---@field LocalTransform FTransform
---@field GlobalTransform FTransform
FRigControlCopy = {}

---@return FRigControlCopy
function FRigControlCopy:get() end



---@class FRigControlElement : FRigMultiParentElement
---@field Settings FRigControlSettings
---@field Offset FRigCurrentAndInitialTransform
---@field Shape FRigCurrentAndInitialTransform
---@field PreferredEulerAngles FRigPreferredEulerAngles
FRigControlElement = {}

---@return FRigControlElement
function FRigControlElement:get() end



---@class FRigControlElementCustomization
---@field AvailableSpaces TArray<FRigElementKey>
---@field RemovedSpaces TArray<FRigElementKey>
FRigControlElementCustomization = {}

---@return FRigControlElementCustomization
function FRigControlElementCustomization:get() end



---@class FRigControlHierarchy
---@field Controls TArray<FRigControl>
FRigControlHierarchy = {}

---@return FRigControlHierarchy
function FRigControlHierarchy:get() end



---@class FRigControlLimitEnabled
---@field bMinimum boolean
---@field bMaximum boolean
FRigControlLimitEnabled = {}

---@return FRigControlLimitEnabled
function FRigControlLimitEnabled:get() end



---@class FRigControlModifiedContext
FRigControlModifiedContext = {}

---@return FRigControlModifiedContext
function FRigControlModifiedContext:get() end


---@class FRigControlSettings
---@field AnimationType ERigControlAnimationType
---@field ControlType ERigControlType
---@field DisplayName FName
---@field PrimaryAxis ERigControlAxis
---@field bIsCurve boolean
---@field LimitEnabled TArray<FRigControlLimitEnabled>
---@field bDrawLimits boolean
---@field MinimumValue FRigControlValue
---@field MaximumValue FRigControlValue
---@field bShapeVisible boolean
---@field ShapeVisibility ERigControlVisibility
---@field ShapeName FName
---@field ShapeColor FLinearColor
---@field bIsTransientControl boolean
---@field ControlEnum UEnum
---@field Customization FRigControlElementCustomization
---@field DrivenControls TArray<FRigElementKey>
---@field bGroupWithParentControl boolean
---@field bAnimatable boolean
---@field bShapeEnabled boolean
FRigControlSettings = {}

---@return FRigControlSettings
function FRigControlSettings:get() end



---@class FRigControlValue
---@field FloatStorage FRigControlValueStorage
---@field Storage FTransform
FRigControlValue = {}

---@return FRigControlValue
function FRigControlValue:get() end



---@class FRigControlValueStorage
---@field Float00 float
---@field Float01 float
---@field Float02 float
---@field Float03 float
---@field Float10 float
---@field Float11 float
---@field Float12 float
---@field Float13 float
---@field Float20 float
---@field Float21 float
---@field Float22 float
---@field Float23 float
---@field Float30 float
---@field Float31 float
---@field Float32 float
---@field Float33 float
---@field Float00_2 float
---@field Float01_2 float
---@field Float02_2 float
---@field Float03_2 float
---@field Float10_2 float
---@field Float11_2 float
---@field Float12_2 float
---@field Float13_2 float
---@field Float20_2 float
---@field Float21_2 float
---@field Float22_2 float
---@field Float23_2 float
---@field Float30_2 float
---@field Float31_2 float
---@field Float32_2 float
---@field Float33_2 float
---@field bValid boolean
FRigControlValueStorage = {}

---@return FRigControlValueStorage
function FRigControlValueStorage:get() end



---@class FRigCurrentAndInitialTransform
---@field Current FRigLocalAndGlobalTransform
---@field Initial FRigLocalAndGlobalTransform
FRigCurrentAndInitialTransform = {}

---@return FRigCurrentAndInitialTransform
function FRigCurrentAndInitialTransform:get() end



---@class FRigCurve : FRigElement
---@field Value float
FRigCurve = {}

---@return FRigCurve
function FRigCurve:get() end



---@class FRigCurveContainer
---@field Curves TArray<FRigCurve>
FRigCurveContainer = {}

---@return FRigCurveContainer
function FRigCurveContainer:get() end



---@class FRigCurveElement : FRigBaseElement
FRigCurveElement = {}

---@return FRigCurveElement
function FRigCurveElement:get() end


---@class FRigDispatchFactory : FRigVMDispatchFactory
FRigDispatchFactory = {}

---@return FRigDispatchFactory
function FRigDispatchFactory:get() end


---@class FRigDispatch_AnimAttributeBase : FRigDispatchFactory
FRigDispatch_AnimAttributeBase = {}

---@return FRigDispatch_AnimAttributeBase
function FRigDispatch_AnimAttributeBase:get() end


---@class FRigDispatch_CoreBase : FRigDispatchFactory
FRigDispatch_CoreBase = {}

---@return FRigDispatch_CoreBase
function FRigDispatch_CoreBase:get() end


---@class FRigDispatch_CoreEquals : FRigDispatch_CoreBase
FRigDispatch_CoreEquals = {}

---@return FRigDispatch_CoreEquals
function FRigDispatch_CoreEquals:get() end


---@class FRigDispatch_CoreNotEquals : FRigDispatch_CoreEquals
FRigDispatch_CoreNotEquals = {}

---@return FRigDispatch_CoreNotEquals
function FRigDispatch_CoreNotEquals:get() end


---@class FRigDispatch_FromString : FRigDispatchFactory
FRigDispatch_FromString = {}

---@return FRigDispatch_FromString
function FRigDispatch_FromString:get() end


---@class FRigDispatch_GetAnimAttribute : FRigDispatch_AnimAttributeBase
FRigDispatch_GetAnimAttribute = {}

---@return FRigDispatch_GetAnimAttribute
function FRigDispatch_GetAnimAttribute:get() end


---@class FRigDispatch_GetMetadata : FRigDispatch_MetadataBase
FRigDispatch_GetMetadata = {}

---@return FRigDispatch_GetMetadata
function FRigDispatch_GetMetadata:get() end


---@class FRigDispatch_MetadataBase : FRigDispatchFactory
FRigDispatch_MetadataBase = {}

---@return FRigDispatch_MetadataBase
function FRigDispatch_MetadataBase:get() end


---@class FRigDispatch_Print : FRigDispatchFactory
FRigDispatch_Print = {}

---@return FRigDispatch_Print
function FRigDispatch_Print:get() end


---@class FRigDispatch_SetAnimAttribute : FRigDispatch_AnimAttributeBase
FRigDispatch_SetAnimAttribute = {}

---@return FRigDispatch_SetAnimAttribute
function FRigDispatch_SetAnimAttribute:get() end


---@class FRigDispatch_SetMetadata : FRigDispatch_MetadataBase
FRigDispatch_SetMetadata = {}

---@return FRigDispatch_SetMetadata
function FRigDispatch_SetMetadata:get() end


---@class FRigDispatch_ToString : FRigDispatchFactory
FRigDispatch_ToString = {}

---@return FRigDispatch_ToString
function FRigDispatch_ToString:get() end


---@class FRigElement
---@field Name FName
---@field Index int32
FRigElement = {}

---@return FRigElement
function FRigElement:get() end



---@class FRigElementKey
---@field Type ERigElementType
---@field Name FName
FRigElementKey = {}

---@return FRigElementKey
function FRigElementKey:get() end



---@class FRigElementKeyArrayMetadata : FRigBaseMetadata
---@field Value TArray<FRigElementKey>
FRigElementKeyArrayMetadata = {}

---@return FRigElementKeyArrayMetadata
function FRigElementKeyArrayMetadata:get() end



---@class FRigElementKeyCollection
---@field Keys TArray<FRigElementKey>
FRigElementKeyCollection = {}

---@return FRigElementKeyCollection
function FRigElementKeyCollection:get() end



---@class FRigElementKeyMetadata : FRigBaseMetadata
---@field Value FRigElementKey
FRigElementKeyMetadata = {}

---@return FRigElementKeyMetadata
function FRigElementKeyMetadata:get() end



---@class FRigElementParentConstraint
FRigElementParentConstraint = {}

---@return FRigElementParentConstraint
function FRigElementParentConstraint:get() end


---@class FRigElementWeight
---@field Location float
---@field Rotation float
---@field Scale float
FRigElementWeight = {}

---@return FRigElementWeight
function FRigElementWeight:get() end



---@class FRigEventContext
FRigEventContext = {}

---@return FRigEventContext
function FRigEventContext:get() end


---@class FRigFloatArrayMetadata : FRigBaseMetadata
---@field Value TArray<float>
FRigFloatArrayMetadata = {}

---@return FRigFloatArrayMetadata
function FRigFloatArrayMetadata:get() end



---@class FRigFloatMetadata : FRigBaseMetadata
---@field Value float
FRigFloatMetadata = {}

---@return FRigFloatMetadata
function FRigFloatMetadata:get() end



---@class FRigHierarchyContainer
---@field BoneHierarchy FRigBoneHierarchy
---@field SpaceHierarchy FRigSpaceHierarchy
---@field ControlHierarchy FRigControlHierarchy
---@field CurveContainer FRigCurveContainer
FRigHierarchyContainer = {}

---@return FRigHierarchyContainer
function FRigHierarchyContainer:get() end



---@class FRigHierarchyCopyPasteContent
---@field Elements TArray<FRigHierarchyCopyPasteContentPerElement>
---@field Types TArray<ERigElementType>
---@field Contents TArray<FString>
---@field LocalTransforms TArray<FTransform>
---@field GlobalTransforms TArray<FTransform>
FRigHierarchyCopyPasteContent = {}

---@return FRigHierarchyCopyPasteContent
function FRigHierarchyCopyPasteContent:get() end



---@class FRigHierarchyCopyPasteContentPerElement
---@field Key FRigElementKey
---@field Content FString
---@field Parents TArray<FRigElementKey>
---@field ParentWeights TArray<FRigElementWeight>
---@field Pose FRigCurrentAndInitialTransform
FRigHierarchyCopyPasteContentPerElement = {}

---@return FRigHierarchyCopyPasteContentPerElement
function FRigHierarchyCopyPasteContentPerElement:get() end



---@class FRigHierarchyRef
FRigHierarchyRef = {}

---@return FRigHierarchyRef
function FRigHierarchyRef:get() end


---@class FRigHierarchySettings
---@field ProceduralElementLimit int32
FRigHierarchySettings = {}

---@return FRigHierarchySettings
function FRigHierarchySettings:get() end



---@class FRigInfluenceEntry
---@field Source FRigElementKey
---@field AffectedList TArray<FRigElementKey>
FRigInfluenceEntry = {}

---@return FRigInfluenceEntry
function FRigInfluenceEntry:get() end



---@class FRigInfluenceEntryModifier
---@field AffectedList TArray<FRigElementKey>
FRigInfluenceEntryModifier = {}

---@return FRigInfluenceEntryModifier
function FRigInfluenceEntryModifier:get() end



---@class FRigInfluenceMap
---@field EventName FName
---@field Entries TArray<FRigInfluenceEntry>
---@field KeyToIndex TMap<FRigElementKey, int32>
FRigInfluenceMap = {}

---@return FRigInfluenceMap
function FRigInfluenceMap:get() end



---@class FRigInfluenceMapPerEvent
---@field Maps TArray<FRigInfluenceMap>
---@field EventToIndex TMap<FName, int32>
FRigInfluenceMapPerEvent = {}

---@return FRigInfluenceMapPerEvent
function FRigInfluenceMapPerEvent:get() end



---@class FRigInt32ArrayMetadata : FRigBaseMetadata
---@field Value TArray<int32>
FRigInt32ArrayMetadata = {}

---@return FRigInt32ArrayMetadata
function FRigInt32ArrayMetadata:get() end



---@class FRigInt32Metadata : FRigBaseMetadata
---@field Value int32
FRigInt32Metadata = {}

---@return FRigInt32Metadata
function FRigInt32Metadata:get() end



---@class FRigLinearColorArrayMetadata : FRigBaseMetadata
---@field Value TArray<FLinearColor>
FRigLinearColorArrayMetadata = {}

---@return FRigLinearColorArrayMetadata
function FRigLinearColorArrayMetadata:get() end



---@class FRigLinearColorMetadata : FRigBaseMetadata
---@field Value FLinearColor
FRigLinearColorMetadata = {}

---@return FRigLinearColorMetadata
function FRigLinearColorMetadata:get() end



---@class FRigLocalAndGlobalTransform
---@field Local FRigComputedTransform
---@field Global FRigComputedTransform
FRigLocalAndGlobalTransform = {}

---@return FRigLocalAndGlobalTransform
function FRigLocalAndGlobalTransform:get() end



---@class FRigMirrorSettings
---@field MirrorAxis EAxis::Type
---@field AxisToFlip EAxis::Type
---@field SearchString FString
---@field ReplaceString FString
FRigMirrorSettings = {}

---@return FRigMirrorSettings
function FRigMirrorSettings:get() end



---@class FRigMultiParentElement : FRigTransformElement
FRigMultiParentElement = {}

---@return FRigMultiParentElement
function FRigMultiParentElement:get() end


---@class FRigNameArrayMetadata : FRigBaseMetadata
---@field Value TArray<FName>
FRigNameArrayMetadata = {}

---@return FRigNameArrayMetadata
function FRigNameArrayMetadata:get() end



---@class FRigNameMetadata : FRigBaseMetadata
---@field Value FName
FRigNameMetadata = {}

---@return FRigNameMetadata
function FRigNameMetadata:get() end



---@class FRigNullElement : FRigMultiParentElement
FRigNullElement = {}

---@return FRigNullElement
function FRigNullElement:get() end


---@class FRigPose
---@field Elements TArray<FRigPoseElement>
---@field HierarchyTopologyVersion int32
---@field PoseHash int32
FRigPose = {}

---@return FRigPose
function FRigPose:get() end



---@class FRigPoseElement
---@field Index FCachedRigElement
---@field GlobalTransform FTransform
---@field LocalTransform FTransform
---@field CurveValue float
FRigPoseElement = {}

---@return FRigPoseElement
function FRigPoseElement:get() end



---@class FRigPreferredEulerAngles
---@field RotationOrder EEulerRotationOrder
---@field Current FVector
---@field Initial FVector
FRigPreferredEulerAngles = {}

---@return FRigPreferredEulerAngles
function FRigPreferredEulerAngles:get() end



---@class FRigQuatArrayMetadata : FRigBaseMetadata
---@field Value TArray<FQuat>
FRigQuatArrayMetadata = {}

---@return FRigQuatArrayMetadata
function FRigQuatArrayMetadata:get() end



---@class FRigQuatMetadata : FRigBaseMetadata
---@field Value FQuat
FRigQuatMetadata = {}

---@return FRigQuatMetadata
function FRigQuatMetadata:get() end



---@class FRigReferenceElement : FRigSingleParentElement
FRigReferenceElement = {}

---@return FRigReferenceElement
function FRigReferenceElement:get() end


---@class FRigRigidBodyElement : FRigSingleParentElement
---@field Settings FRigRigidBodySettings
FRigRigidBodyElement = {}

---@return FRigRigidBodyElement
function FRigRigidBodyElement:get() end



---@class FRigRigidBodySettings
---@field Mass float
FRigRigidBodySettings = {}

---@return FRigRigidBodySettings
function FRigRigidBodySettings:get() end



---@class FRigRotatorArrayMetadata : FRigBaseMetadata
---@field Value TArray<FRotator>
FRigRotatorArrayMetadata = {}

---@return FRigRotatorArrayMetadata
function FRigRotatorArrayMetadata:get() end



---@class FRigRotatorMetadata : FRigBaseMetadata
---@field Value FRotator
FRigRotatorMetadata = {}

---@return FRigRotatorMetadata
function FRigRotatorMetadata:get() end



---@class FRigSingleParentElement : FRigTransformElement
FRigSingleParentElement = {}

---@return FRigSingleParentElement
function FRigSingleParentElement:get() end


---@class FRigSpace : FRigElement
---@field SpaceType ERigSpaceType
---@field ParentName FName
---@field ParentIndex int32
---@field InitialTransform FTransform
---@field LocalTransform FTransform
FRigSpace = {}

---@return FRigSpace
function FRigSpace:get() end



---@class FRigSpaceHierarchy
---@field Spaces TArray<FRigSpace>
FRigSpaceHierarchy = {}

---@return FRigSpaceHierarchy
function FRigSpaceHierarchy:get() end



---@class FRigTransformArrayMetadata : FRigBaseMetadata
---@field Value TArray<FTransform>
FRigTransformArrayMetadata = {}

---@return FRigTransformArrayMetadata
function FRigTransformArrayMetadata:get() end



---@class FRigTransformElement : FRigBaseElement
---@field Pose FRigCurrentAndInitialTransform
FRigTransformElement = {}

---@return FRigTransformElement
function FRigTransformElement:get() end



---@class FRigTransformMetadata : FRigBaseMetadata
---@field Value FTransform
FRigTransformMetadata = {}

---@return FRigTransformMetadata
function FRigTransformMetadata:get() end



---@class FRigTransformStackEntry
---@field Key FRigElementKey
---@field EntryType ERigTransformStackEntryType
---@field TransformType ERigTransformType::Type
---@field OldTransform FTransform
---@field NewTransform FTransform
---@field bAffectChildren boolean
---@field Callstack TArray<FString>
FRigTransformStackEntry = {}

---@return FRigTransformStackEntry
function FRigTransformStackEntry:get() end



---@class FRigUnit : FRigVMStruct
FRigUnit = {}

---@return FRigUnit
function FRigUnit:get() end


---@class FRigUnitMutable : FRigUnit
---@field ExecuteContext FControlRigExecuteContext
FRigUnitMutable = {}

---@return FRigUnitMutable
function FRigUnitMutable:get() end



---@class FRigUnit_AccumulateBase : FRigUnit_SimBase
FRigUnit_AccumulateBase = {}

---@return FRigUnit_AccumulateBase
function FRigUnit_AccumulateBase:get() end


---@class FRigUnit_AccumulateFloatAdd : FRigUnit_AccumulateBase
---@field Increment float
---@field InitialValue float
---@field bIntegrateDeltaTime boolean
---@field Result float
---@field AccumulatedValue float
FRigUnit_AccumulateFloatAdd = {}

---@return FRigUnit_AccumulateFloatAdd
function FRigUnit_AccumulateFloatAdd:get() end



---@class FRigUnit_AccumulateFloatLerp : FRigUnit_AccumulateBase
---@field TargetValue float
---@field InitialValue float
---@field Blend float
---@field bIntegrateDeltaTime boolean
---@field Result float
---@field AccumulatedValue float
FRigUnit_AccumulateFloatLerp = {}

---@return FRigUnit_AccumulateFloatLerp
function FRigUnit_AccumulateFloatLerp:get() end



---@class FRigUnit_AccumulateFloatMul : FRigUnit_AccumulateBase
---@field Multiplier float
---@field InitialValue float
---@field bIntegrateDeltaTime boolean
---@field Result float
---@field AccumulatedValue float
FRigUnit_AccumulateFloatMul = {}

---@return FRigUnit_AccumulateFloatMul
function FRigUnit_AccumulateFloatMul:get() end



---@class FRigUnit_AccumulateFloatRange : FRigUnit_AccumulateBase
---@field Value float
---@field Minimum float
---@field Maximum float
---@field AccumulatedMinimum float
---@field AccumulatedMaximum float
FRigUnit_AccumulateFloatRange = {}

---@return FRigUnit_AccumulateFloatRange
function FRigUnit_AccumulateFloatRange:get() end



---@class FRigUnit_AccumulateQuatLerp : FRigUnit_AccumulateBase
---@field TargetValue FQuat
---@field InitialValue FQuat
---@field Blend float
---@field bIntegrateDeltaTime boolean
---@field Result FQuat
---@field AccumulatedValue FQuat
FRigUnit_AccumulateQuatLerp = {}

---@return FRigUnit_AccumulateQuatLerp
function FRigUnit_AccumulateQuatLerp:get() end



---@class FRigUnit_AccumulateQuatMul : FRigUnit_AccumulateBase
---@field Multiplier FQuat
---@field InitialValue FQuat
---@field bFlipOrder boolean
---@field bIntegrateDeltaTime boolean
---@field Result FQuat
---@field AccumulatedValue FQuat
FRigUnit_AccumulateQuatMul = {}

---@return FRigUnit_AccumulateQuatMul
function FRigUnit_AccumulateQuatMul:get() end



---@class FRigUnit_AccumulateTransformLerp : FRigUnit_AccumulateBase
---@field TargetValue FTransform
---@field InitialValue FTransform
---@field Blend float
---@field bIntegrateDeltaTime boolean
---@field Result FTransform
---@field AccumulatedValue FTransform
FRigUnit_AccumulateTransformLerp = {}

---@return FRigUnit_AccumulateTransformLerp
function FRigUnit_AccumulateTransformLerp:get() end



---@class FRigUnit_AccumulateTransformMul : FRigUnit_AccumulateBase
---@field Multiplier FTransform
---@field InitialValue FTransform
---@field bFlipOrder boolean
---@field bIntegrateDeltaTime boolean
---@field Result FTransform
---@field AccumulatedValue FTransform
FRigUnit_AccumulateTransformMul = {}

---@return FRigUnit_AccumulateTransformMul
function FRigUnit_AccumulateTransformMul:get() end



---@class FRigUnit_AccumulateVectorAdd : FRigUnit_AccumulateBase
---@field Increment FVector
---@field InitialValue FVector
---@field bIntegrateDeltaTime boolean
---@field Result FVector
---@field AccumulatedValue FVector
FRigUnit_AccumulateVectorAdd = {}

---@return FRigUnit_AccumulateVectorAdd
function FRigUnit_AccumulateVectorAdd:get() end



---@class FRigUnit_AccumulateVectorLerp : FRigUnit_AccumulateBase
---@field TargetValue FVector
---@field InitialValue FVector
---@field Blend float
---@field bIntegrateDeltaTime boolean
---@field Result FVector
---@field AccumulatedValue FVector
FRigUnit_AccumulateVectorLerp = {}

---@return FRigUnit_AccumulateVectorLerp
function FRigUnit_AccumulateVectorLerp:get() end



---@class FRigUnit_AccumulateVectorMul : FRigUnit_AccumulateBase
---@field Multiplier FVector
---@field InitialValue FVector
---@field bIntegrateDeltaTime boolean
---@field Result FVector
---@field AccumulatedValue FVector
FRigUnit_AccumulateVectorMul = {}

---@return FRigUnit_AccumulateVectorMul
function FRigUnit_AccumulateVectorMul:get() end



---@class FRigUnit_AccumulateVectorRange : FRigUnit_AccumulateBase
---@field Value FVector
---@field Minimum FVector
---@field Maximum FVector
---@field AccumulatedMinimum FVector
---@field AccumulatedMaximum FVector
FRigUnit_AccumulateVectorRange = {}

---@return FRigUnit_AccumulateVectorRange
function FRigUnit_AccumulateVectorRange:get() end



---@class FRigUnit_AddBoneTransform : FRigUnitMutable
---@field bone FName
---@field Transform FTransform
---@field Weight float
---@field bPostMultiply boolean
---@field bPropagateToChildren boolean
---@field CachedBone FCachedRigElement
FRigUnit_AddBoneTransform = {}

---@return FRigUnit_AddBoneTransform
function FRigUnit_AddBoneTransform:get() end



---@class FRigUnit_AddParent : FRigUnit_DynamicHierarchyBaseMutable
---@field Child FRigElementKey
---@field Parent FRigElementKey
FRigUnit_AddParent = {}

---@return FRigUnit_AddParent
function FRigUnit_AddParent:get() end



---@class FRigUnit_Add_FloatFloat : FRigUnit_BinaryFloatOp
FRigUnit_Add_FloatFloat = {}

---@return FRigUnit_Add_FloatFloat
function FRigUnit_Add_FloatFloat:get() end


---@class FRigUnit_Add_VectorVector : FRigUnit_BinaryVectorOp
FRigUnit_Add_VectorVector = {}

---@return FRigUnit_Add_VectorVector
function FRigUnit_Add_VectorVector:get() end


---@class FRigUnit_AimBone : FRigUnit_HighlevelBaseMutable
---@field bone FName
---@field Primary FRigUnit_AimBone_Target
---@field Secondary FRigUnit_AimBone_Target
---@field Weight float
---@field bPropagateToChildren boolean
---@field DebugSettings FRigUnit_AimBone_DebugSettings
---@field CachedBoneIndex FCachedRigElement
---@field PrimaryCachedSpace FCachedRigElement
---@field SecondaryCachedSpace FCachedRigElement
FRigUnit_AimBone = {}

---@return FRigUnit_AimBone
function FRigUnit_AimBone:get() end



---@class FRigUnit_AimBoneMath : FRigUnit_HighlevelBase
---@field InputTransform FTransform
---@field Primary FRigUnit_AimItem_Target
---@field Secondary FRigUnit_AimItem_Target
---@field Weight float
---@field Result FTransform
---@field DebugSettings FRigUnit_AimBone_DebugSettings
---@field PrimaryCachedSpace FCachedRigElement
---@field SecondaryCachedSpace FCachedRigElement
FRigUnit_AimBoneMath = {}

---@return FRigUnit_AimBoneMath
function FRigUnit_AimBoneMath:get() end



---@class FRigUnit_AimBone_DebugSettings
---@field bEnabled boolean
---@field Scale float
---@field WorldOffset FTransform
FRigUnit_AimBone_DebugSettings = {}

---@return FRigUnit_AimBone_DebugSettings
function FRigUnit_AimBone_DebugSettings:get() end



---@class FRigUnit_AimBone_Target
---@field Weight float
---@field Axis FVector
---@field Target FVector
---@field Kind EControlRigVectorKind
---@field space FName
FRigUnit_AimBone_Target = {}

---@return FRigUnit_AimBone_Target
function FRigUnit_AimBone_Target:get() end



---@class FRigUnit_AimConstraint : FRigUnitMutable
---@field Joint FName
---@field AimMode EAimMode
---@field UpMode EAimMode
---@field AimVector FVector
---@field UpVector FVector
---@field AimTargets TArray<FAimTarget>
---@field UpTargets TArray<FAimTarget>
---@field WorkData FRigUnit_AimConstraint_WorkData
FRigUnit_AimConstraint = {}

---@return FRigUnit_AimConstraint
function FRigUnit_AimConstraint:get() end



---@class FRigUnit_AimConstraintLocalSpaceOffset : FRigUnit_HighlevelBaseMutable
---@field Child FRigElementKey
---@field bMaintainOffset boolean
---@field Filter FFilterOptionPerAxis
---@field AimAxis FVector
---@field UpAxis FVector
---@field WorldUp FRigUnit_AimConstraint_WorldUp
---@field Parents TArray<FConstraintParent>
---@field AdvancedSettings FRigUnit_AimConstraint_AdvancedSettings
---@field Weight float
---@field WorldUpSpaceCache FCachedRigElement
---@field ChildCache FCachedRigElement
---@field ParentCaches TArray<FCachedRigElement>
FRigUnit_AimConstraintLocalSpaceOffset = {}

---@return FRigUnit_AimConstraintLocalSpaceOffset
function FRigUnit_AimConstraintLocalSpaceOffset:get() end



---@class FRigUnit_AimConstraint_AdvancedSettings
---@field DebugSettings FRigUnit_AimBone_DebugSettings
---@field RotationOrderForFilter EEulerRotationOrder
FRigUnit_AimConstraint_AdvancedSettings = {}

---@return FRigUnit_AimConstraint_AdvancedSettings
function FRigUnit_AimConstraint_AdvancedSettings:get() end



---@class FRigUnit_AimConstraint_WorkData
---@field ConstraintData TArray<FConstraintData>
FRigUnit_AimConstraint_WorkData = {}

---@return FRigUnit_AimConstraint_WorkData
function FRigUnit_AimConstraint_WorkData:get() end



---@class FRigUnit_AimConstraint_WorldUp
---@field Target FVector
---@field Kind EControlRigVectorKind
---@field space FRigElementKey
FRigUnit_AimConstraint_WorldUp = {}

---@return FRigUnit_AimConstraint_WorldUp
function FRigUnit_AimConstraint_WorldUp:get() end



---@class FRigUnit_AimItem : FRigUnit_HighlevelBaseMutable
---@field Item FRigElementKey
---@field Primary FRigUnit_AimItem_Target
---@field Secondary FRigUnit_AimItem_Target
---@field Weight float
---@field DebugSettings FRigUnit_AimBone_DebugSettings
---@field CachedItem FCachedRigElement
---@field PrimaryCachedSpace FCachedRigElement
---@field SecondaryCachedSpace FCachedRigElement
FRigUnit_AimItem = {}

---@return FRigUnit_AimItem
function FRigUnit_AimItem:get() end



---@class FRigUnit_AimItem_Target
---@field Weight float
---@field Axis FVector
---@field Target FVector
---@field Kind EControlRigVectorKind
---@field space FRigElementKey
FRigUnit_AimItem_Target = {}

---@return FRigUnit_AimItem_Target
function FRigUnit_AimItem_Target:get() end



---@class FRigUnit_AlphaInterp : FRigUnit_SimBase
---@field Value float
---@field Scale float
---@field Bias float
---@field bMapRange boolean
---@field InRange FInputRange
---@field OutRange FInputRange
---@field bClampResult boolean
---@field ClampMin float
---@field ClampMax float
---@field bInterpResult boolean
---@field InterpSpeedIncreasing float
---@field InterpSpeedDecreasing float
---@field Result float
---@field ScaleBiasClamp FInputScaleBiasClamp
FRigUnit_AlphaInterp = {}

---@return FRigUnit_AlphaInterp
function FRigUnit_AlphaInterp:get() end



---@class FRigUnit_AlphaInterpQuat : FRigUnit_SimBase
---@field Value FQuat
---@field Scale float
---@field Bias float
---@field bMapRange boolean
---@field InRange FInputRange
---@field OutRange FInputRange
---@field bClampResult boolean
---@field ClampMin float
---@field ClampMax float
---@field bInterpResult boolean
---@field InterpSpeedIncreasing float
---@field InterpSpeedDecreasing float
---@field Result FQuat
---@field ScaleBiasClamp FInputScaleBiasClamp
FRigUnit_AlphaInterpQuat = {}

---@return FRigUnit_AlphaInterpQuat
function FRigUnit_AlphaInterpQuat:get() end



---@class FRigUnit_AlphaInterpVector : FRigUnit_SimBase
---@field Value FVector
---@field Scale float
---@field Bias float
---@field bMapRange boolean
---@field InRange FInputRange
---@field OutRange FInputRange
---@field bClampResult boolean
---@field ClampMin float
---@field ClampMax float
---@field bInterpResult boolean
---@field InterpSpeedIncreasing float
---@field InterpSpeedDecreasing float
---@field Result FVector
---@field ScaleBiasClamp FInputScaleBiasClamp
FRigUnit_AlphaInterpVector = {}

---@return FRigUnit_AlphaInterpVector
function FRigUnit_AlphaInterpVector:get() end



---@class FRigUnit_AnimBase : FRigUnit
FRigUnit_AnimBase = {}

---@return FRigUnit_AnimBase
function FRigUnit_AnimBase:get() end


---@class FRigUnit_AnimEasing : FRigUnit_AnimBase
---@field Value float
---@field Type EControlRigAnimEasingType
---@field SourceMinimum float
---@field SourceMaximum float
---@field TargetMinimum float
---@field TargetMaximum float
---@field Result float
FRigUnit_AnimEasing = {}

---@return FRigUnit_AnimEasing
function FRigUnit_AnimEasing:get() end



---@class FRigUnit_AnimEasingType : FRigUnit_AnimBase
---@field Type EControlRigAnimEasingType
FRigUnit_AnimEasingType = {}

---@return FRigUnit_AnimEasingType
function FRigUnit_AnimEasingType:get() end



---@class FRigUnit_AnimEvalRichCurve : FRigUnit_AnimBase
---@field Value float
---@field Curve FRuntimeFloatCurve
---@field SourceMinimum float
---@field SourceMaximum float
---@field TargetMinimum float
---@field TargetMaximum float
---@field Result float
FRigUnit_AnimEvalRichCurve = {}

---@return FRigUnit_AnimEvalRichCurve
function FRigUnit_AnimEvalRichCurve:get() end



---@class FRigUnit_AnimRichCurve : FRigUnit_AnimBase
---@field Curve FRuntimeFloatCurve
FRigUnit_AnimRichCurve = {}

---@return FRigUnit_AnimRichCurve
function FRigUnit_AnimRichCurve:get() end



---@class FRigUnit_ApplyFK : FRigUnitMutable
---@field Joint FName
---@field Transform FTransform
---@field Filter FTransformFilter
---@field ApplyTransformMode EApplyTransformMode
---@field ApplyTransformSpace ETransformSpaceMode
---@field BaseTransform FTransform
---@field BaseJoint FName
FRigUnit_ApplyFK = {}

---@return FRigUnit_ApplyFK
function FRigUnit_ApplyFK:get() end



---@class FRigUnit_BeginExecution : FRigUnit
---@field ExecuteContext FControlRigExecuteContext
FRigUnit_BeginExecution = {}

---@return FRigUnit_BeginExecution
function FRigUnit_BeginExecution:get() end



---@class FRigUnit_BinaryFloatOp : FRigUnit
---@field Argument0 float
---@field Argument1 float
---@field Result float
FRigUnit_BinaryFloatOp = {}

---@return FRigUnit_BinaryFloatOp
function FRigUnit_BinaryFloatOp:get() end



---@class FRigUnit_BinaryQuaternionOp : FRigUnit
---@field Argument0 FQuat
---@field Argument1 FQuat
---@field Result FQuat
FRigUnit_BinaryQuaternionOp = {}

---@return FRigUnit_BinaryQuaternionOp
function FRigUnit_BinaryQuaternionOp:get() end



---@class FRigUnit_BinaryTransformOp : FRigUnit
---@field Argument0 FTransform
---@field Argument1 FTransform
---@field Result FTransform
FRigUnit_BinaryTransformOp = {}

---@return FRigUnit_BinaryTransformOp
function FRigUnit_BinaryTransformOp:get() end



---@class FRigUnit_BinaryVectorOp : FRigUnit
---@field Argument0 FVector
---@field Argument1 FVector
---@field Result FVector
FRigUnit_BinaryVectorOp = {}

---@return FRigUnit_BinaryVectorOp
function FRigUnit_BinaryVectorOp:get() end



---@class FRigUnit_BlendTransform : FRigUnit
---@field Source FTransform
---@field Targets TArray<FBlendTarget>
---@field Result FTransform
FRigUnit_BlendTransform = {}

---@return FRigUnit_BlendTransform
function FRigUnit_BlendTransform:get() end



---@class FRigUnit_BoneHarmonics : FRigUnit_HighlevelBaseMutable
---@field Bones TArray<FRigUnit_BoneHarmonics_BoneTarget>
---@field WaveSpeed FVector
---@field WaveFrequency FVector
---@field WaveAmplitude FVector
---@field WaveOffset FVector
---@field WaveNoise FVector
---@field WaveEase EControlRigAnimEasingType
---@field WaveMinimum float
---@field WaveMaximum float
---@field RotationOrder EEulerRotationOrder
---@field bPropagateToChildren boolean
---@field WorkData FRigUnit_BoneHarmonics_WorkData
FRigUnit_BoneHarmonics = {}

---@return FRigUnit_BoneHarmonics
function FRigUnit_BoneHarmonics:get() end



---@class FRigUnit_BoneHarmonics_BoneTarget
---@field bone FName
---@field Ratio float
FRigUnit_BoneHarmonics_BoneTarget = {}

---@return FRigUnit_BoneHarmonics_BoneTarget
function FRigUnit_BoneHarmonics_BoneTarget:get() end



---@class FRigUnit_BoneHarmonics_WorkData
---@field CachedItems TArray<FCachedRigElement>
---@field WaveTime FVector
FRigUnit_BoneHarmonics_WorkData = {}

---@return FRigUnit_BoneHarmonics_WorkData
function FRigUnit_BoneHarmonics_WorkData:get() end



---@class FRigUnit_BoneName : FRigUnit
---@field bone FName
FRigUnit_BoneName = {}

---@return FRigUnit_BoneName
function FRigUnit_BoneName:get() end



---@class FRigUnit_CCDIK : FRigUnit_HighlevelBaseMutable
---@field StartBone FName
---@field EffectorBone FName
---@field EffectorTransform FTransform
---@field Precision float
---@field Weight float
---@field MaxIterations int32
---@field bStartFromTail boolean
---@field BaseRotationLimit float
---@field RotationLimits TArray<FRigUnit_CCDIK_RotationLimit>
---@field bPropagateToChildren boolean
---@field WorkData FRigUnit_CCDIK_WorkData
FRigUnit_CCDIK = {}

---@return FRigUnit_CCDIK
function FRigUnit_CCDIK:get() end



---@class FRigUnit_CCDIKItemArray : FRigUnit_HighlevelBaseMutable
---@field Items TArray<FRigElementKey>
---@field EffectorTransform FTransform
---@field Precision float
---@field Weight float
---@field MaxIterations int32
---@field bStartFromTail boolean
---@field BaseRotationLimit float
---@field RotationLimits TArray<FRigUnit_CCDIK_RotationLimitPerItem>
---@field bPropagateToChildren boolean
---@field WorkData FRigUnit_CCDIK_WorkData
FRigUnit_CCDIKItemArray = {}

---@return FRigUnit_CCDIKItemArray
function FRigUnit_CCDIKItemArray:get() end



---@class FRigUnit_CCDIKPerItem : FRigUnit_HighlevelBaseMutable
---@field Items FRigElementKeyCollection
---@field EffectorTransform FTransform
---@field Precision float
---@field Weight float
---@field MaxIterations int32
---@field bStartFromTail boolean
---@field BaseRotationLimit float
---@field RotationLimits TArray<FRigUnit_CCDIK_RotationLimitPerItem>
---@field bPropagateToChildren boolean
---@field WorkData FRigUnit_CCDIK_WorkData
FRigUnit_CCDIKPerItem = {}

---@return FRigUnit_CCDIKPerItem
function FRigUnit_CCDIKPerItem:get() end



---@class FRigUnit_CCDIK_RotationLimit
---@field bone FName
---@field Limit float
FRigUnit_CCDIK_RotationLimit = {}

---@return FRigUnit_CCDIK_RotationLimit
function FRigUnit_CCDIK_RotationLimit:get() end



---@class FRigUnit_CCDIK_RotationLimitPerItem
---@field Item FRigElementKey
---@field Limit float
FRigUnit_CCDIK_RotationLimitPerItem = {}

---@return FRigUnit_CCDIK_RotationLimitPerItem
function FRigUnit_CCDIK_RotationLimitPerItem:get() end



---@class FRigUnit_CCDIK_WorkData
---@field Chain TArray<FCCDIKChainLink>
---@field CachedItems TArray<FCachedRigElement>
---@field RotationLimitIndex TArray<int32>
---@field RotationLimitsPerItem TArray<float>
---@field CachedEffector FCachedRigElement
FRigUnit_CCDIK_WorkData = {}

---@return FRigUnit_CCDIK_WorkData
function FRigUnit_CCDIK_WorkData:get() end



---@class FRigUnit_ChainHarmonics : FRigUnit_HighlevelBaseMutable
---@field ChainRoot FName
---@field Speed FVector
---@field Reach FRigUnit_ChainHarmonics_Reach
---@field Wave FRigUnit_ChainHarmonics_Wave
---@field WaveCurve FRuntimeFloatCurve
---@field Pendulum FRigUnit_ChainHarmonics_Pendulum
---@field bDrawDebug boolean
---@field DrawWorldOffset FTransform
---@field WorkData FRigUnit_ChainHarmonics_WorkData
FRigUnit_ChainHarmonics = {}

---@return FRigUnit_ChainHarmonics
function FRigUnit_ChainHarmonics:get() end



---@class FRigUnit_ChainHarmonicsPerItem : FRigUnit_HighlevelBaseMutable
---@field ChainRoot FRigElementKey
---@field Speed FVector
---@field Reach FRigUnit_ChainHarmonics_Reach
---@field Wave FRigUnit_ChainHarmonics_Wave
---@field WaveCurve FRuntimeFloatCurve
---@field Pendulum FRigUnit_ChainHarmonics_Pendulum
---@field bDrawDebug boolean
---@field DrawWorldOffset FTransform
---@field WorkData FRigUnit_ChainHarmonics_WorkData
FRigUnit_ChainHarmonicsPerItem = {}

---@return FRigUnit_ChainHarmonicsPerItem
function FRigUnit_ChainHarmonicsPerItem:get() end



---@class FRigUnit_ChainHarmonics_Pendulum
---@field bEnabled boolean
---@field PendulumStiffness float
---@field PendulumGravity FVector
---@field PendulumBlend float
---@field PendulumDrag float
---@field PendulumMinimum float
---@field PendulumMaximum float
---@field PendulumEase EControlRigAnimEasingType
---@field UnwindAxis FVector
---@field UnwindMinimum float
---@field UnwindMaximum float
FRigUnit_ChainHarmonics_Pendulum = {}

---@return FRigUnit_ChainHarmonics_Pendulum
function FRigUnit_ChainHarmonics_Pendulum:get() end



---@class FRigUnit_ChainHarmonics_Reach
---@field bEnabled boolean
---@field ReachTarget FVector
---@field ReachAxis FVector
---@field ReachMinimum float
---@field ReachMaximum float
---@field ReachEase EControlRigAnimEasingType
FRigUnit_ChainHarmonics_Reach = {}

---@return FRigUnit_ChainHarmonics_Reach
function FRigUnit_ChainHarmonics_Reach:get() end



---@class FRigUnit_ChainHarmonics_Wave
---@field bEnabled boolean
---@field WaveFrequency FVector
---@field WaveAmplitude FVector
---@field WaveOffset FVector
---@field WaveNoise FVector
---@field WaveMinimum float
---@field WaveMaximum float
---@field WaveEase EControlRigAnimEasingType
FRigUnit_ChainHarmonics_Wave = {}

---@return FRigUnit_ChainHarmonics_Wave
function FRigUnit_ChainHarmonics_Wave:get() end



---@class FRigUnit_ChainHarmonics_WorkData
---@field Time FVector
---@field Items TArray<FCachedRigElement>
---@field Ratio TArray<float>
---@field LocalTip TArray<FVector>
---@field PendulumTip TArray<FVector>
---@field PendulumPosition TArray<FVector>
---@field PendulumVelocity TArray<FVector>
---@field HierarchyLine TArray<FVector>
---@field VelocityLines TArray<FVector>
FRigUnit_ChainHarmonics_WorkData = {}

---@return FRigUnit_ChainHarmonics_WorkData
function FRigUnit_ChainHarmonics_WorkData:get() end



---@class FRigUnit_Clamp_Float : FRigUnit
---@field Value float
---@field Min float
---@field Max float
---@field Result float
FRigUnit_Clamp_Float = {}

---@return FRigUnit_Clamp_Float
function FRigUnit_Clamp_Float:get() end



---@class FRigUnit_CollectionAddItem : FRigUnit_CollectionBase
---@field Collection FRigElementKeyCollection
---@field Item FRigElementKey
---@field Result FRigElementKeyCollection
FRigUnit_CollectionAddItem = {}

---@return FRigUnit_CollectionAddItem
function FRigUnit_CollectionAddItem:get() end



---@class FRigUnit_CollectionBase : FRigUnit
FRigUnit_CollectionBase = {}

---@return FRigUnit_CollectionBase
function FRigUnit_CollectionBase:get() end


---@class FRigUnit_CollectionBaseMutable : FRigUnitMutable
FRigUnit_CollectionBaseMutable = {}

---@return FRigUnit_CollectionBaseMutable
function FRigUnit_CollectionBaseMutable:get() end


---@class FRigUnit_CollectionChain : FRigUnit_CollectionBase
---@field FirstItem FRigElementKey
---@field LastItem FRigElementKey
---@field Reverse boolean
---@field Collection FRigElementKeyCollection
FRigUnit_CollectionChain = {}

---@return FRigUnit_CollectionChain
function FRigUnit_CollectionChain:get() end



---@class FRigUnit_CollectionChainArray : FRigUnit_CollectionBase
---@field FirstItem FRigElementKey
---@field LastItem FRigElementKey
---@field Reverse boolean
---@field Items TArray<FRigElementKey>
FRigUnit_CollectionChainArray = {}

---@return FRigUnit_CollectionChainArray
function FRigUnit_CollectionChainArray:get() end



---@class FRigUnit_CollectionChildren : FRigUnit_CollectionBase
---@field Parent FRigElementKey
---@field bIncludeParent boolean
---@field bRecursive boolean
---@field TypeToSearch ERigElementType
---@field Collection FRigElementKeyCollection
FRigUnit_CollectionChildren = {}

---@return FRigUnit_CollectionChildren
function FRigUnit_CollectionChildren:get() end



---@class FRigUnit_CollectionChildrenArray : FRigUnit_CollectionBase
---@field Parent FRigElementKey
---@field bIncludeParent boolean
---@field bRecursive boolean
---@field TypeToSearch ERigElementType
---@field Items TArray<FRigElementKey>
FRigUnit_CollectionChildrenArray = {}

---@return FRigUnit_CollectionChildrenArray
function FRigUnit_CollectionChildrenArray:get() end



---@class FRigUnit_CollectionCount : FRigUnit_CollectionBase
---@field Collection FRigElementKeyCollection
---@field Count int32
FRigUnit_CollectionCount = {}

---@return FRigUnit_CollectionCount
function FRigUnit_CollectionCount:get() end



---@class FRigUnit_CollectionDifference : FRigUnit_CollectionBase
---@field A FRigElementKeyCollection
---@field B FRigElementKeyCollection
---@field Collection FRigElementKeyCollection
FRigUnit_CollectionDifference = {}

---@return FRigUnit_CollectionDifference
function FRigUnit_CollectionDifference:get() end



---@class FRigUnit_CollectionGetAll : FRigUnit_CollectionBase
---@field TypeToSearch ERigElementType
---@field Items TArray<FRigElementKey>
FRigUnit_CollectionGetAll = {}

---@return FRigUnit_CollectionGetAll
function FRigUnit_CollectionGetAll:get() end



---@class FRigUnit_CollectionGetItems : FRigUnit_CollectionBase
---@field Collection FRigElementKeyCollection
---@field Items TArray<FRigElementKey>
FRigUnit_CollectionGetItems = {}

---@return FRigUnit_CollectionGetItems
function FRigUnit_CollectionGetItems:get() end



---@class FRigUnit_CollectionGetParentIndices : FRigUnit_CollectionBase
---@field Collection FRigElementKeyCollection
---@field ParentIndices TArray<int32>
FRigUnit_CollectionGetParentIndices = {}

---@return FRigUnit_CollectionGetParentIndices
function FRigUnit_CollectionGetParentIndices:get() end



---@class FRigUnit_CollectionGetParentIndicesItemArray : FRigUnit_CollectionBase
---@field Items TArray<FRigElementKey>
---@field ParentIndices TArray<int32>
FRigUnit_CollectionGetParentIndicesItemArray = {}

---@return FRigUnit_CollectionGetParentIndicesItemArray
function FRigUnit_CollectionGetParentIndicesItemArray:get() end



---@class FRigUnit_CollectionIntersection : FRigUnit_CollectionBase
---@field A FRigElementKeyCollection
---@field B FRigElementKeyCollection
---@field Collection FRigElementKeyCollection
FRigUnit_CollectionIntersection = {}

---@return FRigUnit_CollectionIntersection
function FRigUnit_CollectionIntersection:get() end



---@class FRigUnit_CollectionItemAtIndex : FRigUnit_CollectionBase
---@field Collection FRigElementKeyCollection
---@field Index int32
---@field Item FRigElementKey
FRigUnit_CollectionItemAtIndex = {}

---@return FRigUnit_CollectionItemAtIndex
function FRigUnit_CollectionItemAtIndex:get() end



---@class FRigUnit_CollectionItems : FRigUnit_CollectionBase
---@field Items TArray<FRigElementKey>
---@field bAllowDuplicates boolean
---@field Collection FRigElementKeyCollection
FRigUnit_CollectionItems = {}

---@return FRigUnit_CollectionItems
function FRigUnit_CollectionItems:get() end



---@class FRigUnit_CollectionLoop : FRigUnit_CollectionBaseMutable
---@field Collection FRigElementKeyCollection
---@field Item FRigElementKey
---@field Index int32
---@field Count int32
---@field Ratio float
---@field Continue boolean
---@field Completed FControlRigExecuteContext
FRigUnit_CollectionLoop = {}

---@return FRigUnit_CollectionLoop
function FRigUnit_CollectionLoop:get() end



---@class FRigUnit_CollectionNameSearch : FRigUnit_CollectionBase
---@field PartialName FName
---@field TypeToSearch ERigElementType
---@field Collection FRigElementKeyCollection
FRigUnit_CollectionNameSearch = {}

---@return FRigUnit_CollectionNameSearch
function FRigUnit_CollectionNameSearch:get() end



---@class FRigUnit_CollectionNameSearchArray : FRigUnit_CollectionBase
---@field PartialName FName
---@field TypeToSearch ERigElementType
---@field Items TArray<FRigElementKey>
FRigUnit_CollectionNameSearchArray = {}

---@return FRigUnit_CollectionNameSearchArray
function FRigUnit_CollectionNameSearchArray:get() end



---@class FRigUnit_CollectionReplaceItems : FRigUnit_CollectionBase
---@field Items FRigElementKeyCollection
---@field Old FName
---@field New FName
---@field RemoveInvalidItems boolean
---@field bAllowDuplicates boolean
---@field Collection FRigElementKeyCollection
FRigUnit_CollectionReplaceItems = {}

---@return FRigUnit_CollectionReplaceItems
function FRigUnit_CollectionReplaceItems:get() end



---@class FRigUnit_CollectionReplaceItemsArray : FRigUnit_CollectionBase
---@field Items TArray<FRigElementKey>
---@field Old FName
---@field New FName
---@field RemoveInvalidItems boolean
---@field bAllowDuplicates boolean
---@field Result TArray<FRigElementKey>
FRigUnit_CollectionReplaceItemsArray = {}

---@return FRigUnit_CollectionReplaceItemsArray
function FRigUnit_CollectionReplaceItemsArray:get() end



---@class FRigUnit_CollectionReverse : FRigUnit_CollectionBase
---@field Collection FRigElementKeyCollection
---@field Reversed FRigElementKeyCollection
FRigUnit_CollectionReverse = {}

---@return FRigUnit_CollectionReverse
function FRigUnit_CollectionReverse:get() end



---@class FRigUnit_CollectionUnion : FRigUnit_CollectionBase
---@field A FRigElementKeyCollection
---@field B FRigElementKeyCollection
---@field bAllowDuplicates boolean
---@field Collection FRigElementKeyCollection
FRigUnit_CollectionUnion = {}

---@return FRigUnit_CollectionUnion
function FRigUnit_CollectionUnion:get() end



---@class FRigUnit_Contains : FRigUnit_NameBase
---@field Name FName
---@field Search FName
---@field Result boolean
FRigUnit_Contains = {}

---@return FRigUnit_Contains
function FRigUnit_Contains:get() end



---@class FRigUnit_Control : FRigUnit
---@field Transform FEulerTransform
---@field Base FTransform
---@field InitTransform FTransform
---@field Result FTransform
---@field Filter FTransformFilter
FRigUnit_Control = {}

---@return FRigUnit_Control
function FRigUnit_Control:get() end



---@class FRigUnit_ControlName : FRigUnit
---@field Control FName
FRigUnit_ControlName = {}

---@return FRigUnit_ControlName
function FRigUnit_ControlName:get() end



---@class FRigUnit_Control_StaticMesh : FRigUnit_Control
---@field MeshTransform FTransform
FRigUnit_Control_StaticMesh = {}

---@return FRigUnit_Control_StaticMesh
function FRigUnit_Control_StaticMesh:get() end



---@class FRigUnit_ConvertEulerTransform : FRigUnit
---@field Input FEulerTransform
---@field Result FTransform
FRigUnit_ConvertEulerTransform = {}

---@return FRigUnit_ConvertEulerTransform
function FRigUnit_ConvertEulerTransform:get() end



---@class FRigUnit_ConvertQuaternion : FRigUnit
---@field Input FQuat
---@field Result FRotator
FRigUnit_ConvertQuaternion = {}

---@return FRigUnit_ConvertQuaternion
function FRigUnit_ConvertQuaternion:get() end



---@class FRigUnit_ConvertQuaternionToVector : FRigUnit
---@field Input FQuat
---@field Result FVector
FRigUnit_ConvertQuaternionToVector = {}

---@return FRigUnit_ConvertQuaternionToVector
function FRigUnit_ConvertQuaternionToVector:get() end



---@class FRigUnit_ConvertRotation : FRigUnit
---@field Input FRotator
---@field Result FQuat
FRigUnit_ConvertRotation = {}

---@return FRigUnit_ConvertRotation
function FRigUnit_ConvertRotation:get() end



---@class FRigUnit_ConvertRotationToVector : FRigUnit
---@field Input FRotator
---@field Result FVector
FRigUnit_ConvertRotationToVector = {}

---@return FRigUnit_ConvertRotationToVector
function FRigUnit_ConvertRotationToVector:get() end



---@class FRigUnit_ConvertTransform : FRigUnit
---@field Input FTransform
---@field Result FEulerTransform
FRigUnit_ConvertTransform = {}

---@return FRigUnit_ConvertTransform
function FRigUnit_ConvertTransform:get() end



---@class FRigUnit_ConvertVectorRotation : FRigUnit_ConvertRotation
FRigUnit_ConvertVectorRotation = {}

---@return FRigUnit_ConvertVectorRotation
function FRigUnit_ConvertVectorRotation:get() end


---@class FRigUnit_ConvertVectorToQuaternion : FRigUnit
---@field Input FVector
---@field Result FQuat
FRigUnit_ConvertVectorToQuaternion = {}

---@return FRigUnit_ConvertVectorToQuaternion
function FRigUnit_ConvertVectorToQuaternion:get() end



---@class FRigUnit_ConvertVectorToRotation : FRigUnit
---@field Input FVector
---@field Result FRotator
FRigUnit_ConvertVectorToRotation = {}

---@return FRigUnit_ConvertVectorToRotation
function FRigUnit_ConvertVectorToRotation:get() end



---@class FRigUnit_DebugArc : FRigUnit_DebugBaseMutable
---@field Transform FTransform
---@field Color FLinearColor
---@field Radius float
---@field MinimumDegrees float
---@field MaximumDegrees float
---@field Thickness float
---@field Detail int32
---@field space FName
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugArc = {}

---@return FRigUnit_DebugArc
function FRigUnit_DebugArc:get() end



---@class FRigUnit_DebugArcItemSpace : FRigUnit_DebugBaseMutable
---@field Transform FTransform
---@field Color FLinearColor
---@field Radius float
---@field MinimumDegrees float
---@field MaximumDegrees float
---@field Thickness float
---@field Detail int32
---@field space FRigElementKey
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugArcItemSpace = {}

---@return FRigUnit_DebugArcItemSpace
function FRigUnit_DebugArcItemSpace:get() end



---@class FRigUnit_DebugBase : FRigUnit
FRigUnit_DebugBase = {}

---@return FRigUnit_DebugBase
function FRigUnit_DebugBase:get() end


---@class FRigUnit_DebugBaseMutable : FRigUnitMutable
FRigUnit_DebugBaseMutable = {}

---@return FRigUnit_DebugBaseMutable
function FRigUnit_DebugBaseMutable:get() end


---@class FRigUnit_DebugBezier : FRigUnit_DebugBaseMutable
---@field Bezier FCRFourPointBezier
---@field MinimumU float
---@field MaximumU float
---@field Color FLinearColor
---@field Thickness float
---@field Detail int32
---@field space FName
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugBezier = {}

---@return FRigUnit_DebugBezier
function FRigUnit_DebugBezier:get() end



---@class FRigUnit_DebugBezierItemSpace : FRigUnit_DebugBaseMutable
---@field Bezier FCRFourPointBezier
---@field MinimumU float
---@field MaximumU float
---@field Color FLinearColor
---@field Thickness float
---@field Detail int32
---@field space FRigElementKey
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugBezierItemSpace = {}

---@return FRigUnit_DebugBezierItemSpace
function FRigUnit_DebugBezierItemSpace:get() end



---@class FRigUnit_DebugHierarchy : FRigUnit_DebugBaseMutable
---@field Scale float
---@field Color FLinearColor
---@field Thickness float
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugHierarchy = {}

---@return FRigUnit_DebugHierarchy
function FRigUnit_DebugHierarchy:get() end



---@class FRigUnit_DebugLine : FRigUnit_DebugBaseMutable
---@field A FVector
---@field B FVector
---@field Color FLinearColor
---@field Thickness float
---@field space FName
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugLine = {}

---@return FRigUnit_DebugLine
function FRigUnit_DebugLine:get() end



---@class FRigUnit_DebugLineItemSpace : FRigUnit_DebugBaseMutable
---@field A FVector
---@field B FVector
---@field Color FLinearColor
---@field Thickness float
---@field space FRigElementKey
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugLineItemSpace = {}

---@return FRigUnit_DebugLineItemSpace
function FRigUnit_DebugLineItemSpace:get() end



---@class FRigUnit_DebugLineStrip : FRigUnit_DebugBaseMutable
---@field Points TArray<FVector>
---@field Color FLinearColor
---@field Thickness float
---@field space FName
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugLineStrip = {}

---@return FRigUnit_DebugLineStrip
function FRigUnit_DebugLineStrip:get() end



---@class FRigUnit_DebugLineStripItemSpace : FRigUnit_DebugBaseMutable
---@field Points TArray<FVector>
---@field Color FLinearColor
---@field Thickness float
---@field space FRigElementKey
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugLineStripItemSpace = {}

---@return FRigUnit_DebugLineStripItemSpace
function FRigUnit_DebugLineStripItemSpace:get() end



---@class FRigUnit_DebugPoint : FRigUnit_DebugBase
---@field Vector FVector
---@field Mode ERigUnitDebugPointMode
---@field Color FLinearColor
---@field Scale float
---@field Thickness float
---@field space FName
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugPoint = {}

---@return FRigUnit_DebugPoint
function FRigUnit_DebugPoint:get() end



---@class FRigUnit_DebugPointMutable : FRigUnit_DebugBaseMutable
---@field Vector FVector
---@field Mode ERigUnitDebugPointMode
---@field Color FLinearColor
---@field Scale float
---@field Thickness float
---@field space FName
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugPointMutable = {}

---@return FRigUnit_DebugPointMutable
function FRigUnit_DebugPointMutable:get() end



---@class FRigUnit_DebugPose : FRigUnit_DebugBaseMutable
---@field Pose FRigPose
---@field Scale float
---@field Color FLinearColor
---@field Thickness float
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugPose = {}

---@return FRigUnit_DebugPose
function FRigUnit_DebugPose:get() end



---@class FRigUnit_DebugRectangle : FRigUnit_DebugBaseMutable
---@field Transform FTransform
---@field Color FLinearColor
---@field Scale float
---@field Thickness float
---@field space FName
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugRectangle = {}

---@return FRigUnit_DebugRectangle
function FRigUnit_DebugRectangle:get() end



---@class FRigUnit_DebugRectangleItemSpace : FRigUnit_DebugBaseMutable
---@field Transform FTransform
---@field Color FLinearColor
---@field Scale float
---@field Thickness float
---@field space FRigElementKey
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugRectangleItemSpace = {}

---@return FRigUnit_DebugRectangleItemSpace
function FRigUnit_DebugRectangleItemSpace:get() end



---@class FRigUnit_DebugTransform : FRigUnit_DebugBase
---@field Transform FTransform
---@field Mode ERigUnitDebugTransformMode
---@field Color FLinearColor
---@field Thickness float
---@field Scale float
---@field space FName
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugTransform = {}

---@return FRigUnit_DebugTransform
function FRigUnit_DebugTransform:get() end



---@class FRigUnit_DebugTransformArrayMutable : FRigUnit_DebugBaseMutable
---@field Transforms TArray<FTransform>
---@field Mode ERigUnitDebugTransformMode
---@field Color FLinearColor
---@field Thickness float
---@field Scale float
---@field space FName
---@field WorldOffset FTransform
---@field bEnabled boolean
---@field WorkData FRigUnit_DebugTransformArrayMutable_WorkData
FRigUnit_DebugTransformArrayMutable = {}

---@return FRigUnit_DebugTransformArrayMutable
function FRigUnit_DebugTransformArrayMutable:get() end



---@class FRigUnit_DebugTransformArrayMutableItemSpace : FRigUnit_DebugBaseMutable
---@field Transforms TArray<FTransform>
---@field ParentIndices TArray<int32>
---@field Mode ERigUnitDebugTransformMode
---@field Color FLinearColor
---@field Thickness float
---@field Scale float
---@field space FRigElementKey
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugTransformArrayMutableItemSpace = {}

---@return FRigUnit_DebugTransformArrayMutableItemSpace
function FRigUnit_DebugTransformArrayMutableItemSpace:get() end



---@class FRigUnit_DebugTransformArrayMutable_WorkData
---@field DrawTransforms TArray<FTransform>
FRigUnit_DebugTransformArrayMutable_WorkData = {}

---@return FRigUnit_DebugTransformArrayMutable_WorkData
function FRigUnit_DebugTransformArrayMutable_WorkData:get() end



---@class FRigUnit_DebugTransformMutable : FRigUnit_DebugBaseMutable
---@field Transform FTransform
---@field Mode ERigUnitDebugTransformMode
---@field Color FLinearColor
---@field Thickness float
---@field Scale float
---@field space FName
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugTransformMutable = {}

---@return FRigUnit_DebugTransformMutable
function FRigUnit_DebugTransformMutable:get() end



---@class FRigUnit_DebugTransformMutableItemSpace : FRigUnit_DebugBaseMutable
---@field Transform FTransform
---@field Mode ERigUnitDebugTransformMode
---@field Color FLinearColor
---@field Thickness float
---@field Scale float
---@field space FRigElementKey
---@field WorldOffset FTransform
---@field bEnabled boolean
FRigUnit_DebugTransformMutableItemSpace = {}

---@return FRigUnit_DebugTransformMutableItemSpace
function FRigUnit_DebugTransformMutableItemSpace:get() end



---@class FRigUnit_DeltaFromPreviousFloat : FRigUnit_SimBase
---@field Value float
---@field Delta float
---@field PreviousValue float
---@field Cache float
FRigUnit_DeltaFromPreviousFloat = {}

---@return FRigUnit_DeltaFromPreviousFloat
function FRigUnit_DeltaFromPreviousFloat:get() end



---@class FRigUnit_DeltaFromPreviousQuat : FRigUnit_SimBase
---@field Value FQuat
---@field Delta FQuat
---@field PreviousValue FQuat
---@field Cache FQuat
FRigUnit_DeltaFromPreviousQuat = {}

---@return FRigUnit_DeltaFromPreviousQuat
function FRigUnit_DeltaFromPreviousQuat:get() end



---@class FRigUnit_DeltaFromPreviousTransform : FRigUnit_SimBase
---@field Value FTransform
---@field Delta FTransform
---@field PreviousValue FTransform
---@field Cache FTransform
FRigUnit_DeltaFromPreviousTransform = {}

---@return FRigUnit_DeltaFromPreviousTransform
function FRigUnit_DeltaFromPreviousTransform:get() end



---@class FRigUnit_DeltaFromPreviousVector : FRigUnit_SimBase
---@field Value FVector
---@field Delta FVector
---@field PreviousValue FVector
---@field Cache FVector
FRigUnit_DeltaFromPreviousVector = {}

---@return FRigUnit_DeltaFromPreviousVector
function FRigUnit_DeltaFromPreviousVector:get() end



---@class FRigUnit_Distance_VectorVector : FRigUnit
---@field Argument0 FVector
---@field Argument1 FVector
---@field Result float
FRigUnit_Distance_VectorVector = {}

---@return FRigUnit_Distance_VectorVector
function FRigUnit_Distance_VectorVector:get() end



---@class FRigUnit_DistributeRotation : FRigUnit_HighlevelBaseMutable
---@field StartBone FName
---@field EndBone FName
---@field Rotations TArray<FRigUnit_DistributeRotation_Rotation>
---@field RotationEaseType EControlRigAnimEasingType
---@field Weight float
---@field bPropagateToChildren boolean
---@field WorkData FRigUnit_DistributeRotation_WorkData
FRigUnit_DistributeRotation = {}

---@return FRigUnit_DistributeRotation
function FRigUnit_DistributeRotation:get() end



---@class FRigUnit_DistributeRotationForCollection : FRigUnit_HighlevelBaseMutable
---@field Items FRigElementKeyCollection
---@field Rotations TArray<FRigUnit_DistributeRotation_Rotation>
---@field RotationEaseType EControlRigAnimEasingType
---@field Weight float
---@field WorkData FRigUnit_DistributeRotation_WorkData
FRigUnit_DistributeRotationForCollection = {}

---@return FRigUnit_DistributeRotationForCollection
function FRigUnit_DistributeRotationForCollection:get() end



---@class FRigUnit_DistributeRotationForItemArray : FRigUnit_HighlevelBaseMutable
---@field Items TArray<FRigElementKey>
---@field Rotations TArray<FRigUnit_DistributeRotation_Rotation>
---@field RotationEaseType EControlRigAnimEasingType
---@field Weight float
---@field WorkData FRigUnit_DistributeRotation_WorkData
FRigUnit_DistributeRotationForItemArray = {}

---@return FRigUnit_DistributeRotationForItemArray
function FRigUnit_DistributeRotationForItemArray:get() end



---@class FRigUnit_DistributeRotation_Rotation
---@field Rotation FQuat
---@field Ratio float
FRigUnit_DistributeRotation_Rotation = {}

---@return FRigUnit_DistributeRotation_Rotation
function FRigUnit_DistributeRotation_Rotation:get() end



---@class FRigUnit_DistributeRotation_WorkData
---@field CachedItems TArray<FCachedRigElement>
---@field ItemRotationA TArray<int32>
---@field ItemRotationB TArray<int32>
---@field ItemRotationT TArray<float>
---@field ItemLocalTransforms TArray<FTransform>
FRigUnit_DistributeRotation_WorkData = {}

---@return FRigUnit_DistributeRotation_WorkData
function FRigUnit_DistributeRotation_WorkData:get() end



---@class FRigUnit_Divide_FloatFloat : FRigUnit_BinaryFloatOp
FRigUnit_Divide_FloatFloat = {}

---@return FRigUnit_Divide_FloatFloat
function FRigUnit_Divide_FloatFloat:get() end


---@class FRigUnit_Divide_VectorVector : FRigUnit_BinaryVectorOp
FRigUnit_Divide_VectorVector = {}

---@return FRigUnit_Divide_VectorVector
function FRigUnit_Divide_VectorVector:get() end


---@class FRigUnit_DrawContainerGetInstruction : FRigUnit
---@field InstructionName FName
---@field Color FLinearColor
---@field Transform FTransform
FRigUnit_DrawContainerGetInstruction = {}

---@return FRigUnit_DrawContainerGetInstruction
function FRigUnit_DrawContainerGetInstruction:get() end



---@class FRigUnit_DrawContainerSetColor : FRigUnitMutable
---@field InstructionName FName
---@field Color FLinearColor
FRigUnit_DrawContainerSetColor = {}

---@return FRigUnit_DrawContainerSetColor
function FRigUnit_DrawContainerSetColor:get() end



---@class FRigUnit_DrawContainerSetThickness : FRigUnitMutable
---@field InstructionName FName
---@field Thickness float
FRigUnit_DrawContainerSetThickness = {}

---@return FRigUnit_DrawContainerSetThickness
function FRigUnit_DrawContainerSetThickness:get() end



---@class FRigUnit_DrawContainerSetTransform : FRigUnitMutable
---@field InstructionName FName
---@field Transform FTransform
FRigUnit_DrawContainerSetTransform = {}

---@return FRigUnit_DrawContainerSetTransform
function FRigUnit_DrawContainerSetTransform:get() end



---@class FRigUnit_DynamicHierarchyBase : FRigUnit
FRigUnit_DynamicHierarchyBase = {}

---@return FRigUnit_DynamicHierarchyBase
function FRigUnit_DynamicHierarchyBase:get() end


---@class FRigUnit_DynamicHierarchyBaseMutable : FRigUnitMutable
FRigUnit_DynamicHierarchyBaseMutable = {}

---@return FRigUnit_DynamicHierarchyBaseMutable
function FRigUnit_DynamicHierarchyBaseMutable:get() end


---@class FRigUnit_EndProfilingTimer : FRigUnit_DebugBaseMutable
---@field NumberOfMeasurements int32
---@field Prefix FString
---@field AccumulatedTime float
---@field MeasurementsLeft int32
FRigUnit_EndProfilingTimer = {}

---@return FRigUnit_EndProfilingTimer
function FRigUnit_EndProfilingTimer:get() end



---@class FRigUnit_EndsWith : FRigUnit_NameBase
---@field Name FName
---@field Ending FName
---@field Result boolean
FRigUnit_EndsWith = {}

---@return FRigUnit_EndsWith
function FRigUnit_EndsWith:get() end



---@class FRigUnit_FABRIK : FRigUnit_HighlevelBaseMutable
---@field StartBone FName
---@field EffectorBone FName
---@field EffectorTransform FTransform
---@field Precision float
---@field Weight float
---@field bPropagateToChildren boolean
---@field MaxIterations int32
---@field WorkData FRigUnit_FABRIK_WorkData
---@field bSetEffectorTransform boolean
FRigUnit_FABRIK = {}

---@return FRigUnit_FABRIK
function FRigUnit_FABRIK:get() end



---@class FRigUnit_FABRIKItemArray : FRigUnit_HighlevelBaseMutable
---@field Items TArray<FRigElementKey>
---@field EffectorTransform FTransform
---@field Precision float
---@field Weight float
---@field bPropagateToChildren boolean
---@field MaxIterations int32
---@field WorkData FRigUnit_FABRIK_WorkData
---@field bSetEffectorTransform boolean
FRigUnit_FABRIKItemArray = {}

---@return FRigUnit_FABRIKItemArray
function FRigUnit_FABRIKItemArray:get() end



---@class FRigUnit_FABRIKPerItem : FRigUnit_HighlevelBaseMutable
---@field Items FRigElementKeyCollection
---@field EffectorTransform FTransform
---@field Precision float
---@field Weight float
---@field bPropagateToChildren boolean
---@field MaxIterations int32
---@field WorkData FRigUnit_FABRIK_WorkData
---@field bSetEffectorTransform boolean
FRigUnit_FABRIKPerItem = {}

---@return FRigUnit_FABRIKPerItem
function FRigUnit_FABRIKPerItem:get() end



---@class FRigUnit_FABRIK_WorkData
---@field Chain TArray<FFABRIKChainLink>
---@field CachedItems TArray<FCachedRigElement>
---@field CachedEffector FCachedRigElement
FRigUnit_FABRIK_WorkData = {}

---@return FRigUnit_FABRIK_WorkData
function FRigUnit_FABRIK_WorkData:get() end



---@class FRigUnit_FilterItemsByMetadataTags : FRigUnit
---@field Items TArray<FRigElementKey>
---@field Tags TArray<FName>
---@field Inclusive boolean
---@field Result TArray<FRigElementKey>
---@field CachedIndices TArray<FCachedRigElement>
FRigUnit_FilterItemsByMetadataTags = {}

---@return FRigUnit_FilterItemsByMetadataTags
function FRigUnit_FilterItemsByMetadataTags:get() end



---@class FRigUnit_FindItemsWithMetadata : FRigUnit
---@field Name FName
---@field Type ERigMetadataType
---@field Items TArray<FRigElementKey>
FRigUnit_FindItemsWithMetadata = {}

---@return FRigUnit_FindItemsWithMetadata
function FRigUnit_FindItemsWithMetadata:get() end



---@class FRigUnit_FindItemsWithMetadataTag : FRigUnit
---@field Tag FName
---@field Items TArray<FRigElementKey>
FRigUnit_FindItemsWithMetadataTag = {}

---@return FRigUnit_FindItemsWithMetadataTag
function FRigUnit_FindItemsWithMetadataTag:get() end



---@class FRigUnit_FindItemsWithMetadataTagArray : FRigUnit
---@field Tags TArray<FName>
---@field Items TArray<FRigElementKey>
FRigUnit_FindItemsWithMetadataTagArray = {}

---@return FRigUnit_FindItemsWithMetadataTagArray
function FRigUnit_FindItemsWithMetadataTagArray:get() end



---@class FRigUnit_FitChainToCurve : FRigUnit_HighlevelBaseMutable
---@field StartBone FName
---@field EndBone FName
---@field Bezier FCRFourPointBezier
---@field Alignment EControlRigCurveAlignment
---@field Minimum float
---@field Maximum float
---@field SamplingPrecision int32
---@field PrimaryAxis FVector
---@field SecondaryAxis FVector
---@field PoleVectorPosition FVector
---@field Rotations TArray<FRigUnit_FitChainToCurve_Rotation>
---@field RotationEaseType EControlRigAnimEasingType
---@field Weight float
---@field bPropagateToChildren boolean
---@field DebugSettings FRigUnit_FitChainToCurve_DebugSettings
---@field WorkData FRigUnit_FitChainToCurve_WorkData
FRigUnit_FitChainToCurve = {}

---@return FRigUnit_FitChainToCurve
function FRigUnit_FitChainToCurve:get() end



---@class FRigUnit_FitChainToCurveItemArray : FRigUnit_HighlevelBaseMutable
---@field Items TArray<FRigElementKey>
---@field Bezier FCRFourPointBezier
---@field Alignment EControlRigCurveAlignment
---@field Minimum float
---@field Maximum float
---@field SamplingPrecision int32
---@field PrimaryAxis FVector
---@field SecondaryAxis FVector
---@field PoleVectorPosition FVector
---@field Rotations TArray<FRigUnit_FitChainToCurve_Rotation>
---@field RotationEaseType EControlRigAnimEasingType
---@field Weight float
---@field bPropagateToChildren boolean
---@field DebugSettings FRigUnit_FitChainToCurve_DebugSettings
---@field WorkData FRigUnit_FitChainToCurve_WorkData
FRigUnit_FitChainToCurveItemArray = {}

---@return FRigUnit_FitChainToCurveItemArray
function FRigUnit_FitChainToCurveItemArray:get() end



---@class FRigUnit_FitChainToCurvePerItem : FRigUnit_HighlevelBaseMutable
---@field Items FRigElementKeyCollection
---@field Bezier FCRFourPointBezier
---@field Alignment EControlRigCurveAlignment
---@field Minimum float
---@field Maximum float
---@field SamplingPrecision int32
---@field PrimaryAxis FVector
---@field SecondaryAxis FVector
---@field PoleVectorPosition FVector
---@field Rotations TArray<FRigUnit_FitChainToCurve_Rotation>
---@field RotationEaseType EControlRigAnimEasingType
---@field Weight float
---@field bPropagateToChildren boolean
---@field DebugSettings FRigUnit_FitChainToCurve_DebugSettings
---@field WorkData FRigUnit_FitChainToCurve_WorkData
FRigUnit_FitChainToCurvePerItem = {}

---@return FRigUnit_FitChainToCurvePerItem
function FRigUnit_FitChainToCurvePerItem:get() end



---@class FRigUnit_FitChainToCurve_DebugSettings
---@field bEnabled boolean
---@field Scale float
---@field CurveColor FLinearColor
---@field SegmentsColor FLinearColor
---@field WorldOffset FTransform
FRigUnit_FitChainToCurve_DebugSettings = {}

---@return FRigUnit_FitChainToCurve_DebugSettings
function FRigUnit_FitChainToCurve_DebugSettings:get() end



---@class FRigUnit_FitChainToCurve_Rotation
---@field Rotation FQuat
---@field Ratio float
FRigUnit_FitChainToCurve_Rotation = {}

---@return FRigUnit_FitChainToCurve_Rotation
function FRigUnit_FitChainToCurve_Rotation:get() end



---@class FRigUnit_FitChainToCurve_WorkData
---@field ChainLength float
---@field ItemPositions TArray<FVector>
---@field ItemSegments TArray<float>
---@field CurvePositions TArray<FVector>
---@field CurveSegments TArray<float>
---@field CachedItems TArray<FCachedRigElement>
---@field ItemRotationA TArray<int32>
---@field ItemRotationB TArray<int32>
---@field ItemRotationT TArray<float>
---@field ItemLocalTransforms TArray<FTransform>
FRigUnit_FitChainToCurve_WorkData = {}

---@return FRigUnit_FitChainToCurve_WorkData
function FRigUnit_FitChainToCurve_WorkData:get() end



---@class FRigUnit_ForLoopCount : FRigUnitMutable
---@field Count int32
---@field Index int32
---@field Ratio float
---@field Continue boolean
---@field Completed FControlRigExecuteContext
FRigUnit_ForLoopCount = {}

---@return FRigUnit_ForLoopCount
function FRigUnit_ForLoopCount:get() end



---@class FRigUnit_FramesToSeconds : FRigUnit_AnimBase
---@field Frames float
---@field Seconds float
FRigUnit_FramesToSeconds = {}

---@return FRigUnit_FramesToSeconds
function FRigUnit_FramesToSeconds:get() end



---@class FRigUnit_GetAnimationChannelBase : FRigUnit
---@field Control FName
---@field Channel FName
---@field bInitial boolean
---@field CachedChannelKey FRigElementKey
---@field CachedChannelHash int32
FRigUnit_GetAnimationChannelBase = {}

---@return FRigUnit_GetAnimationChannelBase
function FRigUnit_GetAnimationChannelBase:get() end



---@class FRigUnit_GetBoneTransform : FRigUnit
---@field bone FName
---@field space EBoneGetterSetterMode
---@field Transform FTransform
---@field CachedBone FCachedRigElement
FRigUnit_GetBoneTransform = {}

---@return FRigUnit_GetBoneTransform
function FRigUnit_GetBoneTransform:get() end



---@class FRigUnit_GetBoolAnimationChannel : FRigUnit_GetAnimationChannelBase
---@field Value boolean
FRigUnit_GetBoolAnimationChannel = {}

---@return FRigUnit_GetBoolAnimationChannel
function FRigUnit_GetBoolAnimationChannel:get() end



---@class FRigUnit_GetControlBool : FRigUnit
---@field Control FName
---@field BoolValue boolean
---@field CachedControlIndex FCachedRigElement
FRigUnit_GetControlBool = {}

---@return FRigUnit_GetControlBool
function FRigUnit_GetControlBool:get() end



---@class FRigUnit_GetControlColor : FRigUnit
---@field Control FName
---@field Color FLinearColor
---@field CachedControlIndex FCachedRigElement
FRigUnit_GetControlColor = {}

---@return FRigUnit_GetControlColor
function FRigUnit_GetControlColor:get() end



---@class FRigUnit_GetControlDrivenList : FRigUnit
---@field Control FName
---@field Driven TArray<FRigElementKey>
---@field CachedControlIndex FCachedRigElement
FRigUnit_GetControlDrivenList = {}

---@return FRigUnit_GetControlDrivenList
function FRigUnit_GetControlDrivenList:get() end



---@class FRigUnit_GetControlFloat : FRigUnit
---@field Control FName
---@field FloatValue float
---@field Minimum float
---@field Maximum float
---@field CachedControlIndex FCachedRigElement
FRigUnit_GetControlFloat = {}

---@return FRigUnit_GetControlFloat
function FRigUnit_GetControlFloat:get() end



---@class FRigUnit_GetControlInitialTransform : FRigUnit
---@field Control FName
---@field space EBoneGetterSetterMode
---@field Transform FTransform
---@field CachedControlIndex FCachedRigElement
FRigUnit_GetControlInitialTransform = {}

---@return FRigUnit_GetControlInitialTransform
function FRigUnit_GetControlInitialTransform:get() end



---@class FRigUnit_GetControlInteger : FRigUnit
---@field Control FName
---@field IntegerValue int32
---@field Minimum int32
---@field Maximum int32
---@field CachedControlIndex FCachedRigElement
FRigUnit_GetControlInteger = {}

---@return FRigUnit_GetControlInteger
function FRigUnit_GetControlInteger:get() end



---@class FRigUnit_GetControlRotator : FRigUnit
---@field Control FName
---@field space EBoneGetterSetterMode
---@field Rotator FRotator
---@field Minimum FRotator
---@field Maximum FRotator
---@field CachedControlIndex FCachedRigElement
FRigUnit_GetControlRotator = {}

---@return FRigUnit_GetControlRotator
function FRigUnit_GetControlRotator:get() end



---@class FRigUnit_GetControlTransform : FRigUnit
---@field Control FName
---@field space EBoneGetterSetterMode
---@field Transform FTransform
---@field Minimum FTransform
---@field Maximum FTransform
---@field CachedControlIndex FCachedRigElement
FRigUnit_GetControlTransform = {}

---@return FRigUnit_GetControlTransform
function FRigUnit_GetControlTransform:get() end



---@class FRigUnit_GetControlVector : FRigUnit
---@field Control FName
---@field space EBoneGetterSetterMode
---@field Vector FVector
---@field Minimum FVector
---@field Maximum FVector
---@field CachedControlIndex FCachedRigElement
FRigUnit_GetControlVector = {}

---@return FRigUnit_GetControlVector
function FRigUnit_GetControlVector:get() end



---@class FRigUnit_GetControlVector2D : FRigUnit
---@field Control FName
---@field Vector FVector2D
---@field Minimum FVector2D
---@field Maximum FVector2D
---@field CachedControlIndex FCachedRigElement
FRigUnit_GetControlVector2D = {}

---@return FRigUnit_GetControlVector2D
function FRigUnit_GetControlVector2D:get() end



---@class FRigUnit_GetControlVisibility : FRigUnit
---@field Item FRigElementKey
---@field bVisible boolean
---@field CachedControlIndex FCachedRigElement
FRigUnit_GetControlVisibility = {}

---@return FRigUnit_GetControlVisibility
function FRigUnit_GetControlVisibility:get() end



---@class FRigUnit_GetCurveValue : FRigUnit
---@field Curve FName
---@field Valid boolean
---@field Value float
---@field CachedCurveIndex FCachedRigElement
FRigUnit_GetCurveValue = {}

---@return FRigUnit_GetCurveValue
function FRigUnit_GetCurveValue:get() end



---@class FRigUnit_GetDeltaTime : FRigUnit_AnimBase
---@field Result float
FRigUnit_GetDeltaTime = {}

---@return FRigUnit_GetDeltaTime
function FRigUnit_GetDeltaTime:get() end



---@class FRigUnit_GetFloatAnimationChannel : FRigUnit_GetAnimationChannelBase
---@field Value float
FRigUnit_GetFloatAnimationChannel = {}

---@return FRigUnit_GetFloatAnimationChannel
function FRigUnit_GetFloatAnimationChannel:get() end



---@class FRigUnit_GetInitialBoneTransform : FRigUnit
---@field bone FName
---@field space EBoneGetterSetterMode
---@field Transform FTransform
---@field CachedBone FCachedRigElement
FRigUnit_GetInitialBoneTransform = {}

---@return FRigUnit_GetInitialBoneTransform
function FRigUnit_GetInitialBoneTransform:get() end



---@class FRigUnit_GetIntAnimationChannel : FRigUnit_GetAnimationChannelBase
---@field Value int32
FRigUnit_GetIntAnimationChannel = {}

---@return FRigUnit_GetIntAnimationChannel
function FRigUnit_GetIntAnimationChannel:get() end



---@class FRigUnit_GetJointTransform : FRigUnitMutable
---@field Joint FName
---@field Type ETransformGetterType
---@field TransformSpace ETransformSpaceMode
---@field BaseTransform FTransform
---@field BaseJoint FName
---@field Output FTransform
FRigUnit_GetJointTransform = {}

---@return FRigUnit_GetJointTransform
function FRigUnit_GetJointTransform:get() end



---@class FRigUnit_GetMetadataTags : FRigUnit
---@field Item FRigElementKey
---@field Tags TArray<FName>
---@field CachedIndex FCachedRigElement
FRigUnit_GetMetadataTags = {}

---@return FRigUnit_GetMetadataTags
function FRigUnit_GetMetadataTags:get() end



---@class FRigUnit_GetRelativeBoneTransform : FRigUnit
---@field bone FName
---@field space FName
---@field Transform FTransform
---@field CachedBone FCachedRigElement
---@field CachedSpace FCachedRigElement
FRigUnit_GetRelativeBoneTransform = {}

---@return FRigUnit_GetRelativeBoneTransform
function FRigUnit_GetRelativeBoneTransform:get() end



---@class FRigUnit_GetRelativeTransform : FRigUnit_BinaryTransformOp
FRigUnit_GetRelativeTransform = {}

---@return FRigUnit_GetRelativeTransform
function FRigUnit_GetRelativeTransform:get() end


---@class FRigUnit_GetRelativeTransformForItem : FRigUnit
---@field Child FRigElementKey
---@field bChildInitial boolean
---@field Parent FRigElementKey
---@field bParentInitial boolean
---@field RelativeTransform FTransform
---@field CachedChild FCachedRigElement
---@field CachedParent FCachedRigElement
FRigUnit_GetRelativeTransformForItem = {}

---@return FRigUnit_GetRelativeTransformForItem
function FRigUnit_GetRelativeTransformForItem:get() end



---@class FRigUnit_GetRotatorAnimationChannel : FRigUnit_GetAnimationChannelBase
---@field Value FRotator
FRigUnit_GetRotatorAnimationChannel = {}

---@return FRigUnit_GetRotatorAnimationChannel
function FRigUnit_GetRotatorAnimationChannel:get() end



---@class FRigUnit_GetShapeTransform : FRigUnit
---@field Control FName
---@field Transform FTransform
---@field CachedControlIndex FCachedRigElement
FRigUnit_GetShapeTransform = {}

---@return FRigUnit_GetShapeTransform
function FRigUnit_GetShapeTransform:get() end



---@class FRigUnit_GetSpaceTransform : FRigUnit
---@field space FName
---@field SpaceType EBoneGetterSetterMode
---@field Transform FTransform
---@field CachedSpaceIndex FCachedRigElement
FRigUnit_GetSpaceTransform = {}

---@return FRigUnit_GetSpaceTransform
function FRigUnit_GetSpaceTransform:get() end



---@class FRigUnit_GetTransform : FRigUnit
---@field Item FRigElementKey
---@field space EBoneGetterSetterMode
---@field bInitial boolean
---@field Transform FTransform
---@field CachedIndex FCachedRigElement
FRigUnit_GetTransform = {}

---@return FRigUnit_GetTransform
function FRigUnit_GetTransform:get() end



---@class FRigUnit_GetTransformAnimationChannel : FRigUnit_GetAnimationChannelBase
---@field Value FTransform
FRigUnit_GetTransformAnimationChannel = {}

---@return FRigUnit_GetTransformAnimationChannel
function FRigUnit_GetTransformAnimationChannel:get() end



---@class FRigUnit_GetTransformArray : FRigUnit
---@field Items FRigElementKeyCollection
---@field space EBoneGetterSetterMode
---@field bInitial boolean
---@field Transforms TArray<FTransform>
---@field CachedIndex TArray<FCachedRigElement>
FRigUnit_GetTransformArray = {}

---@return FRigUnit_GetTransformArray
function FRigUnit_GetTransformArray:get() end



---@class FRigUnit_GetTransformItemArray : FRigUnit
---@field Items TArray<FRigElementKey>
---@field space EBoneGetterSetterMode
---@field bInitial boolean
---@field Transforms TArray<FTransform>
---@field CachedIndex TArray<FCachedRigElement>
FRigUnit_GetTransformItemArray = {}

---@return FRigUnit_GetTransformItemArray
function FRigUnit_GetTransformItemArray:get() end



---@class FRigUnit_GetVector2DAnimationChannel : FRigUnit_GetAnimationChannelBase
---@field Value FVector2D
FRigUnit_GetVector2DAnimationChannel = {}

---@return FRigUnit_GetVector2DAnimationChannel
function FRigUnit_GetVector2DAnimationChannel:get() end



---@class FRigUnit_GetVectorAnimationChannel : FRigUnit_GetAnimationChannelBase
---@field Value FVector
FRigUnit_GetVectorAnimationChannel = {}

---@return FRigUnit_GetVectorAnimationChannel
function FRigUnit_GetVectorAnimationChannel:get() end



---@class FRigUnit_GetWorldTime : FRigUnit_AnimBase
---@field Year float
---@field Month float
---@field Day float
---@field WeekDay float
---@field Hours float
---@field Minutes float
---@field Seconds float
---@field OverallSeconds float
FRigUnit_GetWorldTime = {}

---@return FRigUnit_GetWorldTime
function FRigUnit_GetWorldTime:get() end



---@class FRigUnit_Harmonics_TargetItem
---@field Item FRigElementKey
---@field Ratio float
FRigUnit_Harmonics_TargetItem = {}

---@return FRigUnit_Harmonics_TargetItem
function FRigUnit_Harmonics_TargetItem:get() end



---@class FRigUnit_HasMetadata : FRigUnit
---@field Item FRigElementKey
---@field Name FName
---@field Type ERigMetadataType
---@field Found boolean
---@field CachedIndex FCachedRigElement
FRigUnit_HasMetadata = {}

---@return FRigUnit_HasMetadata
function FRigUnit_HasMetadata:get() end



---@class FRigUnit_HasMetadataTag : FRigUnit
---@field Item FRigElementKey
---@field Tag FName
---@field Found boolean
---@field CachedIndex FCachedRigElement
FRigUnit_HasMetadataTag = {}

---@return FRigUnit_HasMetadataTag
function FRigUnit_HasMetadataTag:get() end



---@class FRigUnit_HasMetadataTagArray : FRigUnit
---@field Item FRigElementKey
---@field Tags TArray<FName>
---@field Found boolean
---@field CachedIndex FCachedRigElement
FRigUnit_HasMetadataTagArray = {}

---@return FRigUnit_HasMetadataTagArray
function FRigUnit_HasMetadataTagArray:get() end



---@class FRigUnit_HierarchyAddAnimationChannelBool : FRigUnit_HierarchyAddElement
---@field InitialValue boolean
---@field MinimumValue boolean
---@field MaximumValue boolean
FRigUnit_HierarchyAddAnimationChannelBool = {}

---@return FRigUnit_HierarchyAddAnimationChannelBool
function FRigUnit_HierarchyAddAnimationChannelBool:get() end



---@class FRigUnit_HierarchyAddAnimationChannelFloat : FRigUnit_HierarchyAddElement
---@field InitialValue float
---@field MinimumValue float
---@field MaximumValue float
FRigUnit_HierarchyAddAnimationChannelFloat = {}

---@return FRigUnit_HierarchyAddAnimationChannelFloat
function FRigUnit_HierarchyAddAnimationChannelFloat:get() end



---@class FRigUnit_HierarchyAddAnimationChannelInteger : FRigUnit_HierarchyAddElement
---@field InitialValue int32
---@field MinimumValue int32
---@field MaximumValue int32
FRigUnit_HierarchyAddAnimationChannelInteger = {}

---@return FRigUnit_HierarchyAddAnimationChannelInteger
function FRigUnit_HierarchyAddAnimationChannelInteger:get() end



---@class FRigUnit_HierarchyAddAnimationChannelRotator : FRigUnit_HierarchyAddElement
---@field InitialValue FRotator
---@field MinimumValue FRotator
---@field MaximumValue FRotator
FRigUnit_HierarchyAddAnimationChannelRotator = {}

---@return FRigUnit_HierarchyAddAnimationChannelRotator
function FRigUnit_HierarchyAddAnimationChannelRotator:get() end



---@class FRigUnit_HierarchyAddAnimationChannelVector : FRigUnit_HierarchyAddElement
---@field InitialValue FVector
---@field MinimumValue FVector
---@field MaximumValue FVector
FRigUnit_HierarchyAddAnimationChannelVector = {}

---@return FRigUnit_HierarchyAddAnimationChannelVector
function FRigUnit_HierarchyAddAnimationChannelVector:get() end



---@class FRigUnit_HierarchyAddAnimationChannelVector2D : FRigUnit_HierarchyAddElement
---@field InitialValue FVector2D
---@field MinimumValue FVector2D
---@field MaximumValue FVector2D
FRigUnit_HierarchyAddAnimationChannelVector2D = {}

---@return FRigUnit_HierarchyAddAnimationChannelVector2D
function FRigUnit_HierarchyAddAnimationChannelVector2D:get() end



---@class FRigUnit_HierarchyAddBone : FRigUnit_HierarchyAddElement
---@field Transform FTransform
---@field space EBoneGetterSetterMode
FRigUnit_HierarchyAddBone = {}

---@return FRigUnit_HierarchyAddBone
function FRigUnit_HierarchyAddBone:get() end



---@class FRigUnit_HierarchyAddControlFloat : FRigUnit_HierarchyAddElement
---@field OffsetTransform FTransform
---@field InitialValue float
---@field Settings FRigUnit_HierarchyAddControlFloat_Settings
FRigUnit_HierarchyAddControlFloat = {}

---@return FRigUnit_HierarchyAddControlFloat
function FRigUnit_HierarchyAddControlFloat:get() end



---@class FRigUnit_HierarchyAddControlFloat_LimitSettings
---@field Limit FRigControlLimitEnabled
---@field MinValue float
---@field MaxValue float
---@field bDrawLimits boolean
FRigUnit_HierarchyAddControlFloat_LimitSettings = {}

---@return FRigUnit_HierarchyAddControlFloat_LimitSettings
function FRigUnit_HierarchyAddControlFloat_LimitSettings:get() end



---@class FRigUnit_HierarchyAddControlFloat_Settings : FRigUnit_HierarchyAddControl_Settings
---@field PrimaryAxis ERigControlAxis
---@field Limits FRigUnit_HierarchyAddControlFloat_LimitSettings
---@field Shape FRigUnit_HierarchyAddControl_ShapeSettings
---@field Proxy FRigUnit_HierarchyAddControl_ProxySettings
FRigUnit_HierarchyAddControlFloat_Settings = {}

---@return FRigUnit_HierarchyAddControlFloat_Settings
function FRigUnit_HierarchyAddControlFloat_Settings:get() end



---@class FRigUnit_HierarchyAddControlInteger : FRigUnit_HierarchyAddElement
---@field OffsetTransform FTransform
---@field InitialValue int32
---@field Settings FRigUnit_HierarchyAddControlInteger_Settings
FRigUnit_HierarchyAddControlInteger = {}

---@return FRigUnit_HierarchyAddControlInteger
function FRigUnit_HierarchyAddControlInteger:get() end



---@class FRigUnit_HierarchyAddControlInteger_LimitSettings
---@field Limit FRigControlLimitEnabled
---@field MinValue int32
---@field MaxValue int32
---@field bDrawLimits boolean
FRigUnit_HierarchyAddControlInteger_LimitSettings = {}

---@return FRigUnit_HierarchyAddControlInteger_LimitSettings
function FRigUnit_HierarchyAddControlInteger_LimitSettings:get() end



---@class FRigUnit_HierarchyAddControlInteger_Settings : FRigUnit_HierarchyAddControl_Settings
---@field PrimaryAxis ERigControlAxis
---@field Limits FRigUnit_HierarchyAddControlInteger_LimitSettings
---@field Shape FRigUnit_HierarchyAddControl_ShapeSettings
---@field Proxy FRigUnit_HierarchyAddControl_ProxySettings
FRigUnit_HierarchyAddControlInteger_Settings = {}

---@return FRigUnit_HierarchyAddControlInteger_Settings
function FRigUnit_HierarchyAddControlInteger_Settings:get() end



---@class FRigUnit_HierarchyAddControlRotator : FRigUnit_HierarchyAddElement
---@field OffsetTransform FTransform
---@field InitialValue FRotator
---@field Settings FRigUnit_HierarchyAddControlRotator_Settings
FRigUnit_HierarchyAddControlRotator = {}

---@return FRigUnit_HierarchyAddControlRotator
function FRigUnit_HierarchyAddControlRotator:get() end



---@class FRigUnit_HierarchyAddControlRotator_LimitSettings
---@field LimitPitch FRigControlLimitEnabled
---@field LimitYaw FRigControlLimitEnabled
---@field LimitRoll FRigControlLimitEnabled
---@field MinValue FRotator
---@field MaxValue FRotator
---@field bDrawLimits boolean
FRigUnit_HierarchyAddControlRotator_LimitSettings = {}

---@return FRigUnit_HierarchyAddControlRotator_LimitSettings
function FRigUnit_HierarchyAddControlRotator_LimitSettings:get() end



---@class FRigUnit_HierarchyAddControlRotator_Settings : FRigUnit_HierarchyAddControl_Settings
---@field Limits FRigUnit_HierarchyAddControlRotator_LimitSettings
---@field Shape FRigUnit_HierarchyAddControl_ShapeSettings
---@field Proxy FRigUnit_HierarchyAddControl_ProxySettings
FRigUnit_HierarchyAddControlRotator_Settings = {}

---@return FRigUnit_HierarchyAddControlRotator_Settings
function FRigUnit_HierarchyAddControlRotator_Settings:get() end



---@class FRigUnit_HierarchyAddControlTransform : FRigUnit_HierarchyAddElement
---@field OffsetTransform FTransform
---@field InitialValue FTransform
---@field Settings FRigUnit_HierarchyAddControlTransform_Settings
FRigUnit_HierarchyAddControlTransform = {}

---@return FRigUnit_HierarchyAddControlTransform
function FRigUnit_HierarchyAddControlTransform:get() end



---@class FRigUnit_HierarchyAddControlTransform_Settings : FRigUnit_HierarchyAddControl_Settings
---@field Shape FRigUnit_HierarchyAddControl_ShapeSettings
---@field Proxy FRigUnit_HierarchyAddControl_ProxySettings
FRigUnit_HierarchyAddControlTransform_Settings = {}

---@return FRigUnit_HierarchyAddControlTransform_Settings
function FRigUnit_HierarchyAddControlTransform_Settings:get() end



---@class FRigUnit_HierarchyAddControlVector : FRigUnit_HierarchyAddElement
---@field OffsetTransform FTransform
---@field InitialValue FVector
---@field Settings FRigUnit_HierarchyAddControlVector_Settings
FRigUnit_HierarchyAddControlVector = {}

---@return FRigUnit_HierarchyAddControlVector
function FRigUnit_HierarchyAddControlVector:get() end



---@class FRigUnit_HierarchyAddControlVector2D : FRigUnit_HierarchyAddElement
---@field OffsetTransform FTransform
---@field InitialValue FVector2D
---@field Settings FRigUnit_HierarchyAddControlVector2D_Settings
FRigUnit_HierarchyAddControlVector2D = {}

---@return FRigUnit_HierarchyAddControlVector2D
function FRigUnit_HierarchyAddControlVector2D:get() end



---@class FRigUnit_HierarchyAddControlVector2D_LimitSettings
---@field LimitX FRigControlLimitEnabled
---@field LimitY FRigControlLimitEnabled
---@field MinValue FVector2D
---@field MaxValue FVector2D
---@field bDrawLimits boolean
FRigUnit_HierarchyAddControlVector2D_LimitSettings = {}

---@return FRigUnit_HierarchyAddControlVector2D_LimitSettings
function FRigUnit_HierarchyAddControlVector2D_LimitSettings:get() end



---@class FRigUnit_HierarchyAddControlVector2D_Settings : FRigUnit_HierarchyAddControl_Settings
---@field PrimaryAxis ERigControlAxis
---@field Limits FRigUnit_HierarchyAddControlVector2D_LimitSettings
---@field Shape FRigUnit_HierarchyAddControl_ShapeSettings
---@field Proxy FRigUnit_HierarchyAddControl_ProxySettings
FRigUnit_HierarchyAddControlVector2D_Settings = {}

---@return FRigUnit_HierarchyAddControlVector2D_Settings
function FRigUnit_HierarchyAddControlVector2D_Settings:get() end



---@class FRigUnit_HierarchyAddControlVector_LimitSettings
---@field LimitX FRigControlLimitEnabled
---@field LimitY FRigControlLimitEnabled
---@field LimitZ FRigControlLimitEnabled
---@field MinValue FVector
---@field MaxValue FVector
---@field bDrawLimits boolean
FRigUnit_HierarchyAddControlVector_LimitSettings = {}

---@return FRigUnit_HierarchyAddControlVector_LimitSettings
function FRigUnit_HierarchyAddControlVector_LimitSettings:get() end



---@class FRigUnit_HierarchyAddControlVector_Settings : FRigUnit_HierarchyAddControl_Settings
---@field bIsPosition boolean
---@field Limits FRigUnit_HierarchyAddControlVector_LimitSettings
---@field Shape FRigUnit_HierarchyAddControl_ShapeSettings
---@field Proxy FRigUnit_HierarchyAddControl_ProxySettings
FRigUnit_HierarchyAddControlVector_Settings = {}

---@return FRigUnit_HierarchyAddControlVector_Settings
function FRigUnit_HierarchyAddControlVector_Settings:get() end



---@class FRigUnit_HierarchyAddControl_ProxySettings
---@field bIsProxy boolean
---@field DrivenControls TArray<FRigElementKey>
---@field ShapeVisibility ERigControlVisibility
FRigUnit_HierarchyAddControl_ProxySettings = {}

---@return FRigUnit_HierarchyAddControl_ProxySettings
function FRigUnit_HierarchyAddControl_ProxySettings:get() end



---@class FRigUnit_HierarchyAddControl_Settings
---@field DisplayName FName
FRigUnit_HierarchyAddControl_Settings = {}

---@return FRigUnit_HierarchyAddControl_Settings
function FRigUnit_HierarchyAddControl_Settings:get() end



---@class FRigUnit_HierarchyAddControl_ShapeSettings
---@field bVisible boolean
---@field Name FName
---@field Color FLinearColor
---@field Transform FTransform
FRigUnit_HierarchyAddControl_ShapeSettings = {}

---@return FRigUnit_HierarchyAddControl_ShapeSettings
function FRigUnit_HierarchyAddControl_ShapeSettings:get() end



---@class FRigUnit_HierarchyAddElement : FRigUnit_DynamicHierarchyBaseMutable
---@field Parent FRigElementKey
---@field Name FName
---@field Item FRigElementKey
FRigUnit_HierarchyAddElement = {}

---@return FRigUnit_HierarchyAddElement
function FRigUnit_HierarchyAddElement:get() end



---@class FRigUnit_HierarchyAddNull : FRigUnit_HierarchyAddElement
---@field Transform FTransform
---@field space EBoneGetterSetterMode
FRigUnit_HierarchyAddNull = {}

---@return FRigUnit_HierarchyAddNull
function FRigUnit_HierarchyAddNull:get() end



---@class FRigUnit_HierarchyBase : FRigUnit
FRigUnit_HierarchyBase = {}

---@return FRigUnit_HierarchyBase
function FRigUnit_HierarchyBase:get() end


---@class FRigUnit_HierarchyBaseMutable : FRigUnitMutable
FRigUnit_HierarchyBaseMutable = {}

---@return FRigUnit_HierarchyBaseMutable
function FRigUnit_HierarchyBaseMutable:get() end


---@class FRigUnit_HierarchyGetChildren : FRigUnit_HierarchyBase
---@field Parent FRigElementKey
---@field bIncludeParent boolean
---@field bRecursive boolean
---@field Children FRigElementKeyCollection
---@field CachedParent FCachedRigElement
---@field CachedChildren FRigElementKeyCollection
FRigUnit_HierarchyGetChildren = {}

---@return FRigUnit_HierarchyGetChildren
function FRigUnit_HierarchyGetChildren:get() end



---@class FRigUnit_HierarchyGetParent : FRigUnit_HierarchyBase
---@field Child FRigElementKey
---@field Parent FRigElementKey
---@field CachedChild FCachedRigElement
---@field CachedParent FCachedRigElement
FRigUnit_HierarchyGetParent = {}

---@return FRigUnit_HierarchyGetParent
function FRigUnit_HierarchyGetParent:get() end



---@class FRigUnit_HierarchyGetParentWeights : FRigUnit_DynamicHierarchyBase
---@field Child FRigElementKey
---@field Weights TArray<FRigElementWeight>
---@field Parents FRigElementKeyCollection
FRigUnit_HierarchyGetParentWeights = {}

---@return FRigUnit_HierarchyGetParentWeights
function FRigUnit_HierarchyGetParentWeights:get() end



---@class FRigUnit_HierarchyGetParentWeightsArray : FRigUnit_DynamicHierarchyBase
---@field Child FRigElementKey
---@field Weights TArray<FRigElementWeight>
---@field Parents TArray<FRigElementKey>
FRigUnit_HierarchyGetParentWeightsArray = {}

---@return FRigUnit_HierarchyGetParentWeightsArray
function FRigUnit_HierarchyGetParentWeightsArray:get() end



---@class FRigUnit_HierarchyGetParents : FRigUnit_HierarchyBase
---@field Child FRigElementKey
---@field bIncludeChild boolean
---@field bReverse boolean
---@field Parents FRigElementKeyCollection
---@field CachedChild FCachedRigElement
---@field CachedParents FRigElementKeyCollection
FRigUnit_HierarchyGetParents = {}

---@return FRigUnit_HierarchyGetParents
function FRigUnit_HierarchyGetParents:get() end



---@class FRigUnit_HierarchyGetParentsItemArray : FRigUnit_HierarchyBase
---@field Child FRigElementKey
---@field bIncludeChild boolean
---@field bReverse boolean
---@field Parents TArray<FRigElementKey>
---@field CachedChild FCachedRigElement
---@field CachedParents FRigElementKeyCollection
FRigUnit_HierarchyGetParentsItemArray = {}

---@return FRigUnit_HierarchyGetParentsItemArray
function FRigUnit_HierarchyGetParentsItemArray:get() end



---@class FRigUnit_HierarchyGetPose : FRigUnit_HierarchyBase
---@field Initial boolean
---@field ElementType ERigElementType
---@field ItemsToGet FRigElementKeyCollection
---@field Pose FRigPose
FRigUnit_HierarchyGetPose = {}

---@return FRigUnit_HierarchyGetPose
function FRigUnit_HierarchyGetPose:get() end



---@class FRigUnit_HierarchyGetPoseItemArray : FRigUnit_HierarchyBase
---@field Initial boolean
---@field ElementType ERigElementType
---@field ItemsToGet TArray<FRigElementKey>
---@field Pose FRigPose
FRigUnit_HierarchyGetPoseItemArray = {}

---@return FRigUnit_HierarchyGetPoseItemArray
function FRigUnit_HierarchyGetPoseItemArray:get() end



---@class FRigUnit_HierarchyGetSiblings : FRigUnit_HierarchyBase
---@field Item FRigElementKey
---@field bIncludeItem boolean
---@field Siblings FRigElementKeyCollection
---@field CachedItem FCachedRigElement
---@field CachedSiblings FRigElementKeyCollection
FRigUnit_HierarchyGetSiblings = {}

---@return FRigUnit_HierarchyGetSiblings
function FRigUnit_HierarchyGetSiblings:get() end



---@class FRigUnit_HierarchyGetSiblingsItemArray : FRigUnit_HierarchyBase
---@field Item FRigElementKey
---@field bIncludeItem boolean
---@field Siblings TArray<FRigElementKey>
---@field CachedItem FCachedRigElement
---@field CachedSiblings FRigElementKeyCollection
FRigUnit_HierarchyGetSiblingsItemArray = {}

---@return FRigUnit_HierarchyGetSiblingsItemArray
function FRigUnit_HierarchyGetSiblingsItemArray:get() end



---@class FRigUnit_HierarchyImportFromSkeleton : FRigUnit_DynamicHierarchyBaseMutable
---@field Namespace FName
---@field bIncludeCurves boolean
---@field Items TArray<FRigElementKey>
FRigUnit_HierarchyImportFromSkeleton = {}

---@return FRigUnit_HierarchyImportFromSkeleton
function FRigUnit_HierarchyImportFromSkeleton:get() end



---@class FRigUnit_HierarchyRemoveElement : FRigUnit_DynamicHierarchyBaseMutable
---@field Item FRigElementKey
---@field bSuccess boolean
FRigUnit_HierarchyRemoveElement = {}

---@return FRigUnit_HierarchyRemoveElement
function FRigUnit_HierarchyRemoveElement:get() end



---@class FRigUnit_HierarchyReset : FRigUnit_DynamicHierarchyBaseMutable
FRigUnit_HierarchyReset = {}

---@return FRigUnit_HierarchyReset
function FRigUnit_HierarchyReset:get() end


---@class FRigUnit_HierarchySetParentWeights : FRigUnit_DynamicHierarchyBaseMutable
---@field Child FRigElementKey
---@field Weights TArray<FRigElementWeight>
FRigUnit_HierarchySetParentWeights = {}

---@return FRigUnit_HierarchySetParentWeights
function FRigUnit_HierarchySetParentWeights:get() end



---@class FRigUnit_HierarchySetPose : FRigUnit_HierarchyBaseMutable
---@field Pose FRigPose
---@field ElementType ERigElementType
---@field space EBoneGetterSetterMode
---@field ItemsToSet FRigElementKeyCollection
---@field Weight float
FRigUnit_HierarchySetPose = {}

---@return FRigUnit_HierarchySetPose
function FRigUnit_HierarchySetPose:get() end



---@class FRigUnit_HierarchySetPoseItemArray : FRigUnit_HierarchyBaseMutable
---@field Pose FRigPose
---@field ElementType ERigElementType
---@field space EBoneGetterSetterMode
---@field ItemsToSet TArray<FRigElementKey>
---@field Weight float
FRigUnit_HierarchySetPoseItemArray = {}

---@return FRigUnit_HierarchySetPoseItemArray
function FRigUnit_HierarchySetPoseItemArray:get() end



---@class FRigUnit_HighlevelBase : FRigUnit
FRigUnit_HighlevelBase = {}

---@return FRigUnit_HighlevelBase
function FRigUnit_HighlevelBase:get() end


---@class FRigUnit_HighlevelBaseMutable : FRigUnitMutable
FRigUnit_HighlevelBaseMutable = {}

---@return FRigUnit_HighlevelBaseMutable
function FRigUnit_HighlevelBaseMutable:get() end


---@class FRigUnit_InteractionExecution : FRigUnit
---@field ExecuteContext FControlRigExecuteContext
FRigUnit_InteractionExecution = {}

---@return FRigUnit_InteractionExecution
function FRigUnit_InteractionExecution:get() end



---@class FRigUnit_InverseExecution : FRigUnit
---@field ExecuteContext FControlRigExecuteContext
FRigUnit_InverseExecution = {}

---@return FRigUnit_InverseExecution
function FRigUnit_InverseExecution:get() end



---@class FRigUnit_InverseQuaterion : FRigUnit_UnaryQuaternionOp
FRigUnit_InverseQuaterion = {}

---@return FRigUnit_InverseQuaterion
function FRigUnit_InverseQuaterion:get() end


---@class FRigUnit_IsInteracting : FRigUnit
---@field bIsInteracting boolean
---@field bIsTranslating boolean
---@field bIsRotating boolean
---@field bIsScaling boolean
---@field Items TArray<FRigElementKey>
FRigUnit_IsInteracting = {}

---@return FRigUnit_IsInteracting
function FRigUnit_IsInteracting:get() end



---@class FRigUnit_Item : FRigUnit
---@field Item FRigElementKey
FRigUnit_Item = {}

---@return FRigUnit_Item
function FRigUnit_Item:get() end



---@class FRigUnit_ItemBase : FRigUnit
FRigUnit_ItemBase = {}

---@return FRigUnit_ItemBase
function FRigUnit_ItemBase:get() end


---@class FRigUnit_ItemBaseMutable : FRigUnitMutable
FRigUnit_ItemBaseMutable = {}

---@return FRigUnit_ItemBaseMutable
function FRigUnit_ItemBaseMutable:get() end


---@class FRigUnit_ItemEquals : FRigUnit_ItemBase
---@field A FRigElementKey
---@field B FRigElementKey
---@field Result boolean
FRigUnit_ItemEquals = {}

---@return FRigUnit_ItemEquals
function FRigUnit_ItemEquals:get() end



---@class FRigUnit_ItemExists : FRigUnit_ItemBase
---@field Item FRigElementKey
---@field Exists boolean
---@field CachedIndex FCachedRigElement
FRigUnit_ItemExists = {}

---@return FRigUnit_ItemExists
function FRigUnit_ItemExists:get() end



---@class FRigUnit_ItemHarmonics : FRigUnit_HighlevelBaseMutable
---@field Targets TArray<FRigUnit_Harmonics_TargetItem>
---@field WaveSpeed FVector
---@field WaveFrequency FVector
---@field WaveAmplitude FVector
---@field WaveOffset FVector
---@field WaveNoise FVector
---@field WaveEase EControlRigAnimEasingType
---@field WaveMinimum float
---@field WaveMaximum float
---@field RotationOrder EEulerRotationOrder
---@field WorkData FRigUnit_BoneHarmonics_WorkData
FRigUnit_ItemHarmonics = {}

---@return FRigUnit_ItemHarmonics
function FRigUnit_ItemHarmonics:get() end



---@class FRigUnit_ItemNotEquals : FRigUnit_ItemBase
---@field A FRigElementKey
---@field B FRigElementKey
---@field Result boolean
FRigUnit_ItemNotEquals = {}

---@return FRigUnit_ItemNotEquals
function FRigUnit_ItemNotEquals:get() end



---@class FRigUnit_ItemReplace : FRigUnit_ItemBase
---@field Item FRigElementKey
---@field Old FName
---@field New FName
---@field Result FRigElementKey
FRigUnit_ItemReplace = {}

---@return FRigUnit_ItemReplace
function FRigUnit_ItemReplace:get() end



---@class FRigUnit_ItemTypeEquals : FRigUnit_ItemBase
---@field A FRigElementKey
---@field B FRigElementKey
---@field Result boolean
FRigUnit_ItemTypeEquals = {}

---@return FRigUnit_ItemTypeEquals
function FRigUnit_ItemTypeEquals:get() end



---@class FRigUnit_ItemTypeNotEquals : FRigUnit_ItemBase
---@field A FRigElementKey
---@field B FRigElementKey
---@field Result boolean
FRigUnit_ItemTypeNotEquals = {}

---@return FRigUnit_ItemTypeNotEquals
function FRigUnit_ItemTypeNotEquals:get() end



---@class FRigUnit_KalmanFloat : FRigUnit_SimBase
---@field Value float
---@field BufferSize int32
---@field Result float
---@field Buffer TArray<float>
---@field LastInsertIndex int32
FRigUnit_KalmanFloat = {}

---@return FRigUnit_KalmanFloat
function FRigUnit_KalmanFloat:get() end



---@class FRigUnit_KalmanTransform : FRigUnit_SimBase
---@field Value FTransform
---@field BufferSize int32
---@field Result FTransform
---@field Buffer TArray<FTransform>
---@field LastInsertIndex int32
FRigUnit_KalmanTransform = {}

---@return FRigUnit_KalmanTransform
function FRigUnit_KalmanTransform:get() end



---@class FRigUnit_KalmanVector : FRigUnit_SimBase
---@field Value FVector
---@field BufferSize int32
---@field Result FVector
---@field Buffer TArray<FVector>
---@field LastInsertIndex int32
FRigUnit_KalmanVector = {}

---@return FRigUnit_KalmanVector
function FRigUnit_KalmanVector:get() end



---@class FRigUnit_MapRange_Float : FRigUnit
---@field Value float
---@field MinIn float
---@field MaxIn float
---@field MinOut float
---@field MaxOut float
---@field Result float
FRigUnit_MapRange_Float = {}

---@return FRigUnit_MapRange_Float
function FRigUnit_MapRange_Float:get() end



---@class FRigUnit_MathBase : FRigUnit
FRigUnit_MathBase = {}

---@return FRigUnit_MathBase
function FRigUnit_MathBase:get() end


---@class FRigUnit_MathBoolAnd : FRigUnit_MathBoolBinaryAggregateOp
FRigUnit_MathBoolAnd = {}

---@return FRigUnit_MathBoolAnd
function FRigUnit_MathBoolAnd:get() end


---@class FRigUnit_MathBoolBase : FRigUnit_MathBase
FRigUnit_MathBoolBase = {}

---@return FRigUnit_MathBoolBase
function FRigUnit_MathBoolBase:get() end


---@class FRigUnit_MathBoolBinaryAggregateOp : FRigUnit_MathBoolBase
---@field A boolean
---@field B boolean
---@field Result boolean
FRigUnit_MathBoolBinaryAggregateOp = {}

---@return FRigUnit_MathBoolBinaryAggregateOp
function FRigUnit_MathBoolBinaryAggregateOp:get() end



---@class FRigUnit_MathBoolBinaryOp : FRigUnit_MathBoolBase
---@field A boolean
---@field B boolean
---@field Result boolean
FRigUnit_MathBoolBinaryOp = {}

---@return FRigUnit_MathBoolBinaryOp
function FRigUnit_MathBoolBinaryOp:get() end



---@class FRigUnit_MathBoolConstFalse : FRigUnit_MathBoolConstant
FRigUnit_MathBoolConstFalse = {}

---@return FRigUnit_MathBoolConstFalse
function FRigUnit_MathBoolConstFalse:get() end


---@class FRigUnit_MathBoolConstTrue : FRigUnit_MathBoolConstant
FRigUnit_MathBoolConstTrue = {}

---@return FRigUnit_MathBoolConstTrue
function FRigUnit_MathBoolConstTrue:get() end


---@class FRigUnit_MathBoolConstant : FRigUnit_MathBoolBase
---@field Value boolean
FRigUnit_MathBoolConstant = {}

---@return FRigUnit_MathBoolConstant
function FRigUnit_MathBoolConstant:get() end



---@class FRigUnit_MathBoolEquals : FRigUnit_MathBoolBase
---@field A boolean
---@field B boolean
---@field Result boolean
FRigUnit_MathBoolEquals = {}

---@return FRigUnit_MathBoolEquals
function FRigUnit_MathBoolEquals:get() end



---@class FRigUnit_MathBoolFlipFlop : FRigUnit_MathBoolBase
---@field StartValue boolean
---@field Duration float
---@field Result boolean
---@field LastValue boolean
---@field TimeLeft float
FRigUnit_MathBoolFlipFlop = {}

---@return FRigUnit_MathBoolFlipFlop
function FRigUnit_MathBoolFlipFlop:get() end



---@class FRigUnit_MathBoolNand : FRigUnit_MathBoolBinaryOp
FRigUnit_MathBoolNand = {}

---@return FRigUnit_MathBoolNand
function FRigUnit_MathBoolNand:get() end


---@class FRigUnit_MathBoolNand2 : FRigUnit_MathBoolBinaryOp
FRigUnit_MathBoolNand2 = {}

---@return FRigUnit_MathBoolNand2
function FRigUnit_MathBoolNand2:get() end


---@class FRigUnit_MathBoolNot : FRigUnit_MathBoolUnaryOp
FRigUnit_MathBoolNot = {}

---@return FRigUnit_MathBoolNot
function FRigUnit_MathBoolNot:get() end


---@class FRigUnit_MathBoolNotEquals : FRigUnit_MathBoolBase
---@field A boolean
---@field B boolean
---@field Result boolean
FRigUnit_MathBoolNotEquals = {}

---@return FRigUnit_MathBoolNotEquals
function FRigUnit_MathBoolNotEquals:get() end



---@class FRigUnit_MathBoolOnce : FRigUnit_MathBoolBase
---@field Duration float
---@field Result boolean
---@field LastValue boolean
---@field TimeLeft float
FRigUnit_MathBoolOnce = {}

---@return FRigUnit_MathBoolOnce
function FRigUnit_MathBoolOnce:get() end



---@class FRigUnit_MathBoolOr : FRigUnit_MathBoolBinaryAggregateOp
FRigUnit_MathBoolOr = {}

---@return FRigUnit_MathBoolOr
function FRigUnit_MathBoolOr:get() end


---@class FRigUnit_MathBoolToFloat : FRigUnit_MathBoolBase
---@field Value boolean
---@field Result float
FRigUnit_MathBoolToFloat = {}

---@return FRigUnit_MathBoolToFloat
function FRigUnit_MathBoolToFloat:get() end



---@class FRigUnit_MathBoolToInteger : FRigUnit_MathBoolBase
---@field Value boolean
---@field Result int32
FRigUnit_MathBoolToInteger = {}

---@return FRigUnit_MathBoolToInteger
function FRigUnit_MathBoolToInteger:get() end



---@class FRigUnit_MathBoolToggled : FRigUnit_MathBoolBase
---@field Value boolean
---@field Toggled boolean
---@field Initialized boolean
---@field LastValue boolean
FRigUnit_MathBoolToggled = {}

---@return FRigUnit_MathBoolToggled
function FRigUnit_MathBoolToggled:get() end



---@class FRigUnit_MathBoolUnaryOp : FRigUnit_MathBoolBase
---@field Value boolean
---@field Result boolean
FRigUnit_MathBoolUnaryOp = {}

---@return FRigUnit_MathBoolUnaryOp
function FRigUnit_MathBoolUnaryOp:get() end



---@class FRigUnit_MathColorAdd : FRigUnit_MathColorBinaryAggregateOp
FRigUnit_MathColorAdd = {}

---@return FRigUnit_MathColorAdd
function FRigUnit_MathColorAdd:get() end


---@class FRigUnit_MathColorBase : FRigUnit_MathBase
FRigUnit_MathColorBase = {}

---@return FRigUnit_MathColorBase
function FRigUnit_MathColorBase:get() end


---@class FRigUnit_MathColorBinaryAggregateOp : FRigUnit_MathColorBase
---@field A FLinearColor
---@field B FLinearColor
---@field Result FLinearColor
FRigUnit_MathColorBinaryAggregateOp = {}

---@return FRigUnit_MathColorBinaryAggregateOp
function FRigUnit_MathColorBinaryAggregateOp:get() end



---@class FRigUnit_MathColorBinaryOp : FRigUnit_MathColorBase
---@field A FLinearColor
---@field B FLinearColor
---@field Result FLinearColor
FRigUnit_MathColorBinaryOp = {}

---@return FRigUnit_MathColorBinaryOp
function FRigUnit_MathColorBinaryOp:get() end



---@class FRigUnit_MathColorFromFloat : FRigUnit_MathColorBase
---@field Value float
---@field Result FLinearColor
FRigUnit_MathColorFromFloat = {}

---@return FRigUnit_MathColorFromFloat
function FRigUnit_MathColorFromFloat:get() end



---@class FRigUnit_MathColorLerp : FRigUnit_MathColorBase
---@field A FLinearColor
---@field B FLinearColor
---@field T float
---@field Result FLinearColor
FRigUnit_MathColorLerp = {}

---@return FRigUnit_MathColorLerp
function FRigUnit_MathColorLerp:get() end



---@class FRigUnit_MathColorMul : FRigUnit_MathColorBinaryAggregateOp
FRigUnit_MathColorMul = {}

---@return FRigUnit_MathColorMul
function FRigUnit_MathColorMul:get() end


---@class FRigUnit_MathColorSub : FRigUnit_MathColorBinaryOp
FRigUnit_MathColorSub = {}

---@return FRigUnit_MathColorSub
function FRigUnit_MathColorSub:get() end


---@class FRigUnit_MathDistanceToPlane : FRigUnit_MathVectorBase
---@field Point FVector
---@field PlanePoint FVector
---@field PlaneNormal FVector
---@field ClosestPointOnPlane FVector
---@field SignedDistance float
FRigUnit_MathDistanceToPlane = {}

---@return FRigUnit_MathDistanceToPlane
function FRigUnit_MathDistanceToPlane:get() end



---@class FRigUnit_MathDoubleAbs : FRigUnit_MathDoubleUnaryOp
FRigUnit_MathDoubleAbs = {}

---@return FRigUnit_MathDoubleAbs
function FRigUnit_MathDoubleAbs:get() end


---@class FRigUnit_MathDoubleAcos : FRigUnit_MathDoubleUnaryOp
FRigUnit_MathDoubleAcos = {}

---@return FRigUnit_MathDoubleAcos
function FRigUnit_MathDoubleAcos:get() end


---@class FRigUnit_MathDoubleAdd : FRigUnit_MathDoubleBinaryAggregateOp
FRigUnit_MathDoubleAdd = {}

---@return FRigUnit_MathDoubleAdd
function FRigUnit_MathDoubleAdd:get() end


---@class FRigUnit_MathDoubleAsin : FRigUnit_MathDoubleUnaryOp
FRigUnit_MathDoubleAsin = {}

---@return FRigUnit_MathDoubleAsin
function FRigUnit_MathDoubleAsin:get() end


---@class FRigUnit_MathDoubleAtan : FRigUnit_MathDoubleUnaryOp
FRigUnit_MathDoubleAtan = {}

---@return FRigUnit_MathDoubleAtan
function FRigUnit_MathDoubleAtan:get() end


---@class FRigUnit_MathDoubleBase : FRigUnit_MathBase
FRigUnit_MathDoubleBase = {}

---@return FRigUnit_MathDoubleBase
function FRigUnit_MathDoubleBase:get() end


---@class FRigUnit_MathDoubleBinaryAggregateOp : FRigUnit_MathDoubleBase
---@field A double
---@field B double
---@field Result double
FRigUnit_MathDoubleBinaryAggregateOp = {}

---@return FRigUnit_MathDoubleBinaryAggregateOp
function FRigUnit_MathDoubleBinaryAggregateOp:get() end



---@class FRigUnit_MathDoubleBinaryOp : FRigUnit_MathDoubleBase
---@field A double
---@field B double
---@field Result double
FRigUnit_MathDoubleBinaryOp = {}

---@return FRigUnit_MathDoubleBinaryOp
function FRigUnit_MathDoubleBinaryOp:get() end



---@class FRigUnit_MathDoubleCeil : FRigUnit_MathDoubleBase
---@field Value double
---@field Result double
---@field Int int32
FRigUnit_MathDoubleCeil = {}

---@return FRigUnit_MathDoubleCeil
function FRigUnit_MathDoubleCeil:get() end



---@class FRigUnit_MathDoubleClamp : FRigUnit_MathDoubleBase
---@field Value double
---@field Minimum double
---@field Maximum double
---@field Result double
FRigUnit_MathDoubleClamp = {}

---@return FRigUnit_MathDoubleClamp
function FRigUnit_MathDoubleClamp:get() end



---@class FRigUnit_MathDoubleConstE : FRigUnit_MathDoubleConstant
FRigUnit_MathDoubleConstE = {}

---@return FRigUnit_MathDoubleConstE
function FRigUnit_MathDoubleConstE:get() end


---@class FRigUnit_MathDoubleConstHalfPi : FRigUnit_MathDoubleConstant
FRigUnit_MathDoubleConstHalfPi = {}

---@return FRigUnit_MathDoubleConstHalfPi
function FRigUnit_MathDoubleConstHalfPi:get() end


---@class FRigUnit_MathDoubleConstPi : FRigUnit_MathDoubleConstant
FRigUnit_MathDoubleConstPi = {}

---@return FRigUnit_MathDoubleConstPi
function FRigUnit_MathDoubleConstPi:get() end


---@class FRigUnit_MathDoubleConstTwoPi : FRigUnit_MathDoubleConstant
FRigUnit_MathDoubleConstTwoPi = {}

---@return FRigUnit_MathDoubleConstTwoPi
function FRigUnit_MathDoubleConstTwoPi:get() end


---@class FRigUnit_MathDoubleConstant : FRigUnit_MathDoubleBase
---@field Value double
FRigUnit_MathDoubleConstant = {}

---@return FRigUnit_MathDoubleConstant
function FRigUnit_MathDoubleConstant:get() end



---@class FRigUnit_MathDoubleCos : FRigUnit_MathDoubleUnaryOp
FRigUnit_MathDoubleCos = {}

---@return FRigUnit_MathDoubleCos
function FRigUnit_MathDoubleCos:get() end


---@class FRigUnit_MathDoubleDeg : FRigUnit_MathDoubleUnaryOp
FRigUnit_MathDoubleDeg = {}

---@return FRigUnit_MathDoubleDeg
function FRigUnit_MathDoubleDeg:get() end


---@class FRigUnit_MathDoubleDiv : FRigUnit_MathDoubleBinaryOp
FRigUnit_MathDoubleDiv = {}

---@return FRigUnit_MathDoubleDiv
function FRigUnit_MathDoubleDiv:get() end


---@class FRigUnit_MathDoubleEquals : FRigUnit_MathDoubleBase
---@field A double
---@field B double
---@field Result boolean
FRigUnit_MathDoubleEquals = {}

---@return FRigUnit_MathDoubleEquals
function FRigUnit_MathDoubleEquals:get() end



---@class FRigUnit_MathDoubleExponential : FRigUnit_MathDoubleUnaryOp
FRigUnit_MathDoubleExponential = {}

---@return FRigUnit_MathDoubleExponential
function FRigUnit_MathDoubleExponential:get() end


---@class FRigUnit_MathDoubleFloor : FRigUnit_MathDoubleBase
---@field Value double
---@field Result double
---@field Int int32
FRigUnit_MathDoubleFloor = {}

---@return FRigUnit_MathDoubleFloor
function FRigUnit_MathDoubleFloor:get() end



---@class FRigUnit_MathDoubleGreater : FRigUnit_MathDoubleBase
---@field A double
---@field B double
---@field Result boolean
FRigUnit_MathDoubleGreater = {}

---@return FRigUnit_MathDoubleGreater
function FRigUnit_MathDoubleGreater:get() end



---@class FRigUnit_MathDoubleGreaterEqual : FRigUnit_MathDoubleBase
---@field A double
---@field B double
---@field Result boolean
FRigUnit_MathDoubleGreaterEqual = {}

---@return FRigUnit_MathDoubleGreaterEqual
function FRigUnit_MathDoubleGreaterEqual:get() end



---@class FRigUnit_MathDoubleIsNearlyEqual : FRigUnit_MathDoubleBase
---@field A double
---@field B double
---@field Tolerance double
---@field Result boolean
FRigUnit_MathDoubleIsNearlyEqual = {}

---@return FRigUnit_MathDoubleIsNearlyEqual
function FRigUnit_MathDoubleIsNearlyEqual:get() end



---@class FRigUnit_MathDoubleIsNearlyZero : FRigUnit_MathDoubleBase
---@field Value double
---@field Tolerance double
---@field Result boolean
FRigUnit_MathDoubleIsNearlyZero = {}

---@return FRigUnit_MathDoubleIsNearlyZero
function FRigUnit_MathDoubleIsNearlyZero:get() end



---@class FRigUnit_MathDoubleLawOfCosine : FRigUnit_MathDoubleBase
---@field A double
---@field B double
---@field C double
---@field AlphaAngle double
---@field BetaAngle double
---@field GammaAngle double
---@field bValid boolean
FRigUnit_MathDoubleLawOfCosine = {}

---@return FRigUnit_MathDoubleLawOfCosine
function FRigUnit_MathDoubleLawOfCosine:get() end



---@class FRigUnit_MathDoubleLerp : FRigUnit_MathDoubleBase
---@field A double
---@field B double
---@field T double
---@field Result double
FRigUnit_MathDoubleLerp = {}

---@return FRigUnit_MathDoubleLerp
function FRigUnit_MathDoubleLerp:get() end



---@class FRigUnit_MathDoubleLess : FRigUnit_MathDoubleBase
---@field A double
---@field B double
---@field Result boolean
FRigUnit_MathDoubleLess = {}

---@return FRigUnit_MathDoubleLess
function FRigUnit_MathDoubleLess:get() end



---@class FRigUnit_MathDoubleLessEqual : FRigUnit_MathDoubleBase
---@field A double
---@field B double
---@field Result boolean
FRigUnit_MathDoubleLessEqual = {}

---@return FRigUnit_MathDoubleLessEqual
function FRigUnit_MathDoubleLessEqual:get() end



---@class FRigUnit_MathDoubleMax : FRigUnit_MathDoubleBinaryAggregateOp
FRigUnit_MathDoubleMax = {}

---@return FRigUnit_MathDoubleMax
function FRigUnit_MathDoubleMax:get() end


---@class FRigUnit_MathDoubleMin : FRigUnit_MathDoubleBinaryAggregateOp
FRigUnit_MathDoubleMin = {}

---@return FRigUnit_MathDoubleMin
function FRigUnit_MathDoubleMin:get() end


---@class FRigUnit_MathDoubleMod : FRigUnit_MathDoubleBinaryOp
FRigUnit_MathDoubleMod = {}

---@return FRigUnit_MathDoubleMod
function FRigUnit_MathDoubleMod:get() end


---@class FRigUnit_MathDoubleMul : FRigUnit_MathDoubleBinaryAggregateOp
FRigUnit_MathDoubleMul = {}

---@return FRigUnit_MathDoubleMul
function FRigUnit_MathDoubleMul:get() end


---@class FRigUnit_MathDoubleNegate : FRigUnit_MathDoubleUnaryOp
FRigUnit_MathDoubleNegate = {}

---@return FRigUnit_MathDoubleNegate
function FRigUnit_MathDoubleNegate:get() end


---@class FRigUnit_MathDoubleNotEquals : FRigUnit_MathDoubleBase
---@field A double
---@field B double
---@field Result boolean
FRigUnit_MathDoubleNotEquals = {}

---@return FRigUnit_MathDoubleNotEquals
function FRigUnit_MathDoubleNotEquals:get() end



---@class FRigUnit_MathDoublePow : FRigUnit_MathDoubleBinaryOp
FRigUnit_MathDoublePow = {}

---@return FRigUnit_MathDoublePow
function FRigUnit_MathDoublePow:get() end


---@class FRigUnit_MathDoubleRad : FRigUnit_MathDoubleUnaryOp
FRigUnit_MathDoubleRad = {}

---@return FRigUnit_MathDoubleRad
function FRigUnit_MathDoubleRad:get() end


---@class FRigUnit_MathDoubleRemap : FRigUnit_MathDoubleBase
---@field Value double
---@field SourceMinimum double
---@field SourceMaximum double
---@field TargetMinimum double
---@field TargetMaximum double
---@field bClamp boolean
---@field Result double
FRigUnit_MathDoubleRemap = {}

---@return FRigUnit_MathDoubleRemap
function FRigUnit_MathDoubleRemap:get() end



---@class FRigUnit_MathDoubleRound : FRigUnit_MathDoubleBase
---@field Value double
---@field Result double
---@field Int int32
FRigUnit_MathDoubleRound = {}

---@return FRigUnit_MathDoubleRound
function FRigUnit_MathDoubleRound:get() end



---@class FRigUnit_MathDoubleSign : FRigUnit_MathDoubleUnaryOp
FRigUnit_MathDoubleSign = {}

---@return FRigUnit_MathDoubleSign
function FRigUnit_MathDoubleSign:get() end


---@class FRigUnit_MathDoubleSin : FRigUnit_MathDoubleUnaryOp
FRigUnit_MathDoubleSin = {}

---@return FRigUnit_MathDoubleSin
function FRigUnit_MathDoubleSin:get() end


---@class FRigUnit_MathDoubleSqrt : FRigUnit_MathDoubleUnaryOp
FRigUnit_MathDoubleSqrt = {}

---@return FRigUnit_MathDoubleSqrt
function FRigUnit_MathDoubleSqrt:get() end


---@class FRigUnit_MathDoubleSub : FRigUnit_MathDoubleBinaryOp
FRigUnit_MathDoubleSub = {}

---@return FRigUnit_MathDoubleSub
function FRigUnit_MathDoubleSub:get() end


---@class FRigUnit_MathDoubleTan : FRigUnit_MathDoubleUnaryOp
FRigUnit_MathDoubleTan = {}

---@return FRigUnit_MathDoubleTan
function FRigUnit_MathDoubleTan:get() end


---@class FRigUnit_MathDoubleToInt : FRigUnit_MathDoubleBase
---@field Value double
---@field Result int32
FRigUnit_MathDoubleToInt = {}

---@return FRigUnit_MathDoubleToInt
function FRigUnit_MathDoubleToInt:get() end



---@class FRigUnit_MathDoubleUnaryOp : FRigUnit_MathDoubleBase
---@field Value double
---@field Result double
FRigUnit_MathDoubleUnaryOp = {}

---@return FRigUnit_MathDoubleUnaryOp
function FRigUnit_MathDoubleUnaryOp:get() end



---@class FRigUnit_MathFloatAbs : FRigUnit_MathFloatUnaryOp
FRigUnit_MathFloatAbs = {}

---@return FRigUnit_MathFloatAbs
function FRigUnit_MathFloatAbs:get() end


---@class FRigUnit_MathFloatAcos : FRigUnit_MathFloatUnaryOp
FRigUnit_MathFloatAcos = {}

---@return FRigUnit_MathFloatAcos
function FRigUnit_MathFloatAcos:get() end


---@class FRigUnit_MathFloatAdd : FRigUnit_MathFloatBinaryAggregateOp
FRigUnit_MathFloatAdd = {}

---@return FRigUnit_MathFloatAdd
function FRigUnit_MathFloatAdd:get() end


---@class FRigUnit_MathFloatAsin : FRigUnit_MathFloatUnaryOp
FRigUnit_MathFloatAsin = {}

---@return FRigUnit_MathFloatAsin
function FRigUnit_MathFloatAsin:get() end


---@class FRigUnit_MathFloatAtan : FRigUnit_MathFloatUnaryOp
FRigUnit_MathFloatAtan = {}

---@return FRigUnit_MathFloatAtan
function FRigUnit_MathFloatAtan:get() end


---@class FRigUnit_MathFloatBase : FRigUnit_MathBase
FRigUnit_MathFloatBase = {}

---@return FRigUnit_MathFloatBase
function FRigUnit_MathFloatBase:get() end


---@class FRigUnit_MathFloatBinaryAggregateOp : FRigUnit_MathFloatBase
---@field A float
---@field B float
---@field Result float
FRigUnit_MathFloatBinaryAggregateOp = {}

---@return FRigUnit_MathFloatBinaryAggregateOp
function FRigUnit_MathFloatBinaryAggregateOp:get() end



---@class FRigUnit_MathFloatBinaryOp : FRigUnit_MathFloatBase
---@field A float
---@field B float
---@field Result float
FRigUnit_MathFloatBinaryOp = {}

---@return FRigUnit_MathFloatBinaryOp
function FRigUnit_MathFloatBinaryOp:get() end



---@class FRigUnit_MathFloatCeil : FRigUnit_MathFloatBase
---@field Value float
---@field Result float
---@field Int int32
FRigUnit_MathFloatCeil = {}

---@return FRigUnit_MathFloatCeil
function FRigUnit_MathFloatCeil:get() end



---@class FRigUnit_MathFloatClamp : FRigUnit_MathFloatBase
---@field Value float
---@field Minimum float
---@field Maximum float
---@field Result float
FRigUnit_MathFloatClamp = {}

---@return FRigUnit_MathFloatClamp
function FRigUnit_MathFloatClamp:get() end



---@class FRigUnit_MathFloatConstE : FRigUnit_MathFloatConstant
FRigUnit_MathFloatConstE = {}

---@return FRigUnit_MathFloatConstE
function FRigUnit_MathFloatConstE:get() end


---@class FRigUnit_MathFloatConstHalfPi : FRigUnit_MathFloatConstant
FRigUnit_MathFloatConstHalfPi = {}

---@return FRigUnit_MathFloatConstHalfPi
function FRigUnit_MathFloatConstHalfPi:get() end


---@class FRigUnit_MathFloatConstPi : FRigUnit_MathFloatConstant
FRigUnit_MathFloatConstPi = {}

---@return FRigUnit_MathFloatConstPi
function FRigUnit_MathFloatConstPi:get() end


---@class FRigUnit_MathFloatConstTwoPi : FRigUnit_MathFloatConstant
FRigUnit_MathFloatConstTwoPi = {}

---@return FRigUnit_MathFloatConstTwoPi
function FRigUnit_MathFloatConstTwoPi:get() end


---@class FRigUnit_MathFloatConstant : FRigUnit_MathFloatBase
---@field Value float
FRigUnit_MathFloatConstant = {}

---@return FRigUnit_MathFloatConstant
function FRigUnit_MathFloatConstant:get() end



---@class FRigUnit_MathFloatCos : FRigUnit_MathFloatUnaryOp
FRigUnit_MathFloatCos = {}

---@return FRigUnit_MathFloatCos
function FRigUnit_MathFloatCos:get() end


---@class FRigUnit_MathFloatDeg : FRigUnit_MathFloatUnaryOp
FRigUnit_MathFloatDeg = {}

---@return FRigUnit_MathFloatDeg
function FRigUnit_MathFloatDeg:get() end


---@class FRigUnit_MathFloatDiv : FRigUnit_MathFloatBinaryOp
FRigUnit_MathFloatDiv = {}

---@return FRigUnit_MathFloatDiv
function FRigUnit_MathFloatDiv:get() end


---@class FRigUnit_MathFloatEquals : FRigUnit_MathFloatBase
---@field A float
---@field B float
---@field Result boolean
FRigUnit_MathFloatEquals = {}

---@return FRigUnit_MathFloatEquals
function FRigUnit_MathFloatEquals:get() end



---@class FRigUnit_MathFloatExponential : FRigUnit_MathFloatUnaryOp
FRigUnit_MathFloatExponential = {}

---@return FRigUnit_MathFloatExponential
function FRigUnit_MathFloatExponential:get() end


---@class FRigUnit_MathFloatFloor : FRigUnit_MathFloatBase
---@field Value float
---@field Result float
---@field Int int32
FRigUnit_MathFloatFloor = {}

---@return FRigUnit_MathFloatFloor
function FRigUnit_MathFloatFloor:get() end



---@class FRigUnit_MathFloatGreater : FRigUnit_MathFloatBase
---@field A float
---@field B float
---@field Result boolean
FRigUnit_MathFloatGreater = {}

---@return FRigUnit_MathFloatGreater
function FRigUnit_MathFloatGreater:get() end



---@class FRigUnit_MathFloatGreaterEqual : FRigUnit_MathFloatBase
---@field A float
---@field B float
---@field Result boolean
FRigUnit_MathFloatGreaterEqual = {}

---@return FRigUnit_MathFloatGreaterEqual
function FRigUnit_MathFloatGreaterEqual:get() end



---@class FRigUnit_MathFloatIsNearlyEqual : FRigUnit_MathFloatBase
---@field A float
---@field B float
---@field Tolerance float
---@field Result boolean
FRigUnit_MathFloatIsNearlyEqual = {}

---@return FRigUnit_MathFloatIsNearlyEqual
function FRigUnit_MathFloatIsNearlyEqual:get() end



---@class FRigUnit_MathFloatIsNearlyZero : FRigUnit_MathFloatBase
---@field Value float
---@field Tolerance float
---@field Result boolean
FRigUnit_MathFloatIsNearlyZero = {}

---@return FRigUnit_MathFloatIsNearlyZero
function FRigUnit_MathFloatIsNearlyZero:get() end



---@class FRigUnit_MathFloatLawOfCosine : FRigUnit_MathFloatBase
---@field A float
---@field B float
---@field C float
---@field AlphaAngle float
---@field BetaAngle float
---@field GammaAngle float
---@field bValid boolean
FRigUnit_MathFloatLawOfCosine = {}

---@return FRigUnit_MathFloatLawOfCosine
function FRigUnit_MathFloatLawOfCosine:get() end



---@class FRigUnit_MathFloatLerp : FRigUnit_MathFloatBase
---@field A float
---@field B float
---@field T float
---@field Result float
FRigUnit_MathFloatLerp = {}

---@return FRigUnit_MathFloatLerp
function FRigUnit_MathFloatLerp:get() end



---@class FRigUnit_MathFloatLess : FRigUnit_MathFloatBase
---@field A float
---@field B float
---@field Result boolean
FRigUnit_MathFloatLess = {}

---@return FRigUnit_MathFloatLess
function FRigUnit_MathFloatLess:get() end



---@class FRigUnit_MathFloatLessEqual : FRigUnit_MathFloatBase
---@field A float
---@field B float
---@field Result boolean
FRigUnit_MathFloatLessEqual = {}

---@return FRigUnit_MathFloatLessEqual
function FRigUnit_MathFloatLessEqual:get() end



---@class FRigUnit_MathFloatMax : FRigUnit_MathFloatBinaryAggregateOp
FRigUnit_MathFloatMax = {}

---@return FRigUnit_MathFloatMax
function FRigUnit_MathFloatMax:get() end


---@class FRigUnit_MathFloatMin : FRigUnit_MathFloatBinaryAggregateOp
FRigUnit_MathFloatMin = {}

---@return FRigUnit_MathFloatMin
function FRigUnit_MathFloatMin:get() end


---@class FRigUnit_MathFloatMod : FRigUnit_MathFloatBinaryOp
FRigUnit_MathFloatMod = {}

---@return FRigUnit_MathFloatMod
function FRigUnit_MathFloatMod:get() end


---@class FRigUnit_MathFloatMul : FRigUnit_MathFloatBinaryAggregateOp
FRigUnit_MathFloatMul = {}

---@return FRigUnit_MathFloatMul
function FRigUnit_MathFloatMul:get() end


---@class FRigUnit_MathFloatNegate : FRigUnit_MathFloatUnaryOp
FRigUnit_MathFloatNegate = {}

---@return FRigUnit_MathFloatNegate
function FRigUnit_MathFloatNegate:get() end


---@class FRigUnit_MathFloatNotEquals : FRigUnit_MathFloatBase
---@field A float
---@field B float
---@field Result boolean
FRigUnit_MathFloatNotEquals = {}

---@return FRigUnit_MathFloatNotEquals
function FRigUnit_MathFloatNotEquals:get() end



---@class FRigUnit_MathFloatPow : FRigUnit_MathFloatBinaryOp
FRigUnit_MathFloatPow = {}

---@return FRigUnit_MathFloatPow
function FRigUnit_MathFloatPow:get() end


---@class FRigUnit_MathFloatRad : FRigUnit_MathFloatUnaryOp
FRigUnit_MathFloatRad = {}

---@return FRigUnit_MathFloatRad
function FRigUnit_MathFloatRad:get() end


---@class FRigUnit_MathFloatRemap : FRigUnit_MathFloatBase
---@field Value float
---@field SourceMinimum float
---@field SourceMaximum float
---@field TargetMinimum float
---@field TargetMaximum float
---@field bClamp boolean
---@field Result float
FRigUnit_MathFloatRemap = {}

---@return FRigUnit_MathFloatRemap
function FRigUnit_MathFloatRemap:get() end



---@class FRigUnit_MathFloatRound : FRigUnit_MathFloatBase
---@field Value float
---@field Result float
---@field Int int32
FRigUnit_MathFloatRound = {}

---@return FRigUnit_MathFloatRound
function FRigUnit_MathFloatRound:get() end



---@class FRigUnit_MathFloatSelectBool : FRigUnit_MathFloatBase
---@field Condition boolean
---@field IfTrue float
---@field IfFalse float
---@field Result float
FRigUnit_MathFloatSelectBool = {}

---@return FRigUnit_MathFloatSelectBool
function FRigUnit_MathFloatSelectBool:get() end



---@class FRigUnit_MathFloatSign : FRigUnit_MathFloatUnaryOp
FRigUnit_MathFloatSign = {}

---@return FRigUnit_MathFloatSign
function FRigUnit_MathFloatSign:get() end


---@class FRigUnit_MathFloatSin : FRigUnit_MathFloatUnaryOp
FRigUnit_MathFloatSin = {}

---@return FRigUnit_MathFloatSin
function FRigUnit_MathFloatSin:get() end


---@class FRigUnit_MathFloatSqrt : FRigUnit_MathFloatUnaryOp
FRigUnit_MathFloatSqrt = {}

---@return FRigUnit_MathFloatSqrt
function FRigUnit_MathFloatSqrt:get() end


---@class FRigUnit_MathFloatSub : FRigUnit_MathFloatBinaryOp
FRigUnit_MathFloatSub = {}

---@return FRigUnit_MathFloatSub
function FRigUnit_MathFloatSub:get() end


---@class FRigUnit_MathFloatTan : FRigUnit_MathFloatUnaryOp
FRigUnit_MathFloatTan = {}

---@return FRigUnit_MathFloatTan
function FRigUnit_MathFloatTan:get() end


---@class FRigUnit_MathFloatToInt : FRigUnit_MathFloatBase
---@field Value float
---@field Result int32
FRigUnit_MathFloatToInt = {}

---@return FRigUnit_MathFloatToInt
function FRigUnit_MathFloatToInt:get() end



---@class FRigUnit_MathFloatUnaryOp : FRigUnit_MathFloatBase
---@field Value float
---@field Result float
FRigUnit_MathFloatUnaryOp = {}

---@return FRigUnit_MathFloatUnaryOp
function FRigUnit_MathFloatUnaryOp:get() end



---@class FRigUnit_MathIntAbs : FRigUnit_MathIntUnaryOp
FRigUnit_MathIntAbs = {}

---@return FRigUnit_MathIntAbs
function FRigUnit_MathIntAbs:get() end


---@class FRigUnit_MathIntAdd : FRigUnit_MathIntBinaryAggregateOp
FRigUnit_MathIntAdd = {}

---@return FRigUnit_MathIntAdd
function FRigUnit_MathIntAdd:get() end


---@class FRigUnit_MathIntBase : FRigUnit_MathBase
FRigUnit_MathIntBase = {}

---@return FRigUnit_MathIntBase
function FRigUnit_MathIntBase:get() end


---@class FRigUnit_MathIntBinaryAggregateOp : FRigUnit_MathIntBase
---@field A int32
---@field B int32
---@field Result int32
FRigUnit_MathIntBinaryAggregateOp = {}

---@return FRigUnit_MathIntBinaryAggregateOp
function FRigUnit_MathIntBinaryAggregateOp:get() end



---@class FRigUnit_MathIntBinaryOp : FRigUnit_MathIntBase
---@field A int32
---@field B int32
---@field Result int32
FRigUnit_MathIntBinaryOp = {}

---@return FRigUnit_MathIntBinaryOp
function FRigUnit_MathIntBinaryOp:get() end



---@class FRigUnit_MathIntClamp : FRigUnit_MathIntBase
---@field Value int32
---@field Minimum int32
---@field Maximum int32
---@field Result int32
FRigUnit_MathIntClamp = {}

---@return FRigUnit_MathIntClamp
function FRigUnit_MathIntClamp:get() end



---@class FRigUnit_MathIntDiv : FRigUnit_MathIntBinaryOp
FRigUnit_MathIntDiv = {}

---@return FRigUnit_MathIntDiv
function FRigUnit_MathIntDiv:get() end


---@class FRigUnit_MathIntEquals : FRigUnit_MathIntBase
---@field A int32
---@field B int32
---@field Result boolean
FRigUnit_MathIntEquals = {}

---@return FRigUnit_MathIntEquals
function FRigUnit_MathIntEquals:get() end



---@class FRigUnit_MathIntGreater : FRigUnit_MathIntBase
---@field A int32
---@field B int32
---@field Result boolean
FRigUnit_MathIntGreater = {}

---@return FRigUnit_MathIntGreater
function FRigUnit_MathIntGreater:get() end



---@class FRigUnit_MathIntGreaterEqual : FRigUnit_MathIntBase
---@field A int32
---@field B int32
---@field Result boolean
FRigUnit_MathIntGreaterEqual = {}

---@return FRigUnit_MathIntGreaterEqual
function FRigUnit_MathIntGreaterEqual:get() end



---@class FRigUnit_MathIntLess : FRigUnit_MathIntBase
---@field A int32
---@field B int32
---@field Result boolean
FRigUnit_MathIntLess = {}

---@return FRigUnit_MathIntLess
function FRigUnit_MathIntLess:get() end



---@class FRigUnit_MathIntLessEqual : FRigUnit_MathIntBase
---@field A int32
---@field B int32
---@field Result boolean
FRigUnit_MathIntLessEqual = {}

---@return FRigUnit_MathIntLessEqual
function FRigUnit_MathIntLessEqual:get() end



---@class FRigUnit_MathIntMax : FRigUnit_MathIntBinaryAggregateOp
FRigUnit_MathIntMax = {}

---@return FRigUnit_MathIntMax
function FRigUnit_MathIntMax:get() end


---@class FRigUnit_MathIntMin : FRigUnit_MathIntBinaryAggregateOp
FRigUnit_MathIntMin = {}

---@return FRigUnit_MathIntMin
function FRigUnit_MathIntMin:get() end


---@class FRigUnit_MathIntMod : FRigUnit_MathIntBinaryOp
FRigUnit_MathIntMod = {}

---@return FRigUnit_MathIntMod
function FRigUnit_MathIntMod:get() end


---@class FRigUnit_MathIntMul : FRigUnit_MathIntBinaryAggregateOp
FRigUnit_MathIntMul = {}

---@return FRigUnit_MathIntMul
function FRigUnit_MathIntMul:get() end


---@class FRigUnit_MathIntNegate : FRigUnit_MathIntUnaryOp
FRigUnit_MathIntNegate = {}

---@return FRigUnit_MathIntNegate
function FRigUnit_MathIntNegate:get() end


---@class FRigUnit_MathIntNotEquals : FRigUnit_MathIntBase
---@field A int32
---@field B int32
---@field Result boolean
FRigUnit_MathIntNotEquals = {}

---@return FRigUnit_MathIntNotEquals
function FRigUnit_MathIntNotEquals:get() end



---@class FRigUnit_MathIntPow : FRigUnit_MathIntBinaryOp
FRigUnit_MathIntPow = {}

---@return FRigUnit_MathIntPow
function FRigUnit_MathIntPow:get() end


---@class FRigUnit_MathIntSign : FRigUnit_MathIntUnaryOp
FRigUnit_MathIntSign = {}

---@return FRigUnit_MathIntSign
function FRigUnit_MathIntSign:get() end


---@class FRigUnit_MathIntSub : FRigUnit_MathIntBinaryOp
FRigUnit_MathIntSub = {}

---@return FRigUnit_MathIntSub
function FRigUnit_MathIntSub:get() end


---@class FRigUnit_MathIntToFloat : FRigUnit_MathIntBase
---@field Value int32
---@field Result float
FRigUnit_MathIntToFloat = {}

---@return FRigUnit_MathIntToFloat
function FRigUnit_MathIntToFloat:get() end



---@class FRigUnit_MathIntUnaryOp : FRigUnit_MathIntBase
---@field Value int32
---@field Result int32
FRigUnit_MathIntUnaryOp = {}

---@return FRigUnit_MathIntUnaryOp
function FRigUnit_MathIntUnaryOp:get() end



---@class FRigUnit_MathIntersectPlane : FRigUnit_MathVectorBase
---@field Start FVector
---@field Direction FVector
---@field PlanePoint FVector
---@field PlaneNormal FVector
---@field Result FVector
---@field Distance float
FRigUnit_MathIntersectPlane = {}

---@return FRigUnit_MathIntersectPlane
function FRigUnit_MathIntersectPlane:get() end



---@class FRigUnit_MathMatrixBase : FRigUnit_MathBase
FRigUnit_MathMatrixBase = {}

---@return FRigUnit_MathMatrixBase
function FRigUnit_MathMatrixBase:get() end


---@class FRigUnit_MathMatrixBinaryAggregateOp : FRigUnit_MathMatrixBase
---@field A FMatrix
---@field B FMatrix
---@field Result FMatrix
FRigUnit_MathMatrixBinaryAggregateOp = {}

---@return FRigUnit_MathMatrixBinaryAggregateOp
function FRigUnit_MathMatrixBinaryAggregateOp:get() end



---@class FRigUnit_MathMatrixBinaryOp : FRigUnit_MathMatrixBase
---@field A FMatrix
---@field B FMatrix
---@field Result FMatrix
FRigUnit_MathMatrixBinaryOp = {}

---@return FRigUnit_MathMatrixBinaryOp
function FRigUnit_MathMatrixBinaryOp:get() end



---@class FRigUnit_MathMatrixFromTransform : FRigUnit_MathMatrixBase
---@field Transform FTransform
---@field Result FMatrix
FRigUnit_MathMatrixFromTransform = {}

---@return FRigUnit_MathMatrixFromTransform
function FRigUnit_MathMatrixFromTransform:get() end



---@class FRigUnit_MathMatrixFromTransformV2 : FRigUnit_MathMatrixBase
---@field Value FTransform
---@field Result FMatrix
FRigUnit_MathMatrixFromTransformV2 = {}

---@return FRigUnit_MathMatrixFromTransformV2
function FRigUnit_MathMatrixFromTransformV2:get() end



---@class FRigUnit_MathMatrixFromVectors : FRigUnit_MathMatrixBase
---@field Origin FVector
---@field X FVector
---@field Y FVector
---@field Z FVector
---@field Result FMatrix
FRigUnit_MathMatrixFromVectors = {}

---@return FRigUnit_MathMatrixFromVectors
function FRigUnit_MathMatrixFromVectors:get() end



---@class FRigUnit_MathMatrixInverse : FRigUnit_MathMatrixUnaryOp
FRigUnit_MathMatrixInverse = {}

---@return FRigUnit_MathMatrixInverse
function FRigUnit_MathMatrixInverse:get() end


---@class FRigUnit_MathMatrixMul : FRigUnit_MathMatrixBinaryAggregateOp
FRigUnit_MathMatrixMul = {}

---@return FRigUnit_MathMatrixMul
function FRigUnit_MathMatrixMul:get() end


---@class FRigUnit_MathMatrixToTransform : FRigUnit_MathMatrixBase
---@field Value FMatrix
---@field Result FTransform
FRigUnit_MathMatrixToTransform = {}

---@return FRigUnit_MathMatrixToTransform
function FRigUnit_MathMatrixToTransform:get() end



---@class FRigUnit_MathMatrixToVectors : FRigUnit_MathMatrixBase
---@field Value FMatrix
---@field Origin FVector
---@field X FVector
---@field Y FVector
---@field Z FVector
FRigUnit_MathMatrixToVectors = {}

---@return FRigUnit_MathMatrixToVectors
function FRigUnit_MathMatrixToVectors:get() end



---@class FRigUnit_MathMatrixUnaryOp : FRigUnit_MathMatrixBase
---@field Value FMatrix
---@field Result FMatrix
FRigUnit_MathMatrixUnaryOp = {}

---@return FRigUnit_MathMatrixUnaryOp
function FRigUnit_MathMatrixUnaryOp:get() end



---@class FRigUnit_MathMutableBase : FRigUnitMutable
FRigUnit_MathMutableBase = {}

---@return FRigUnit_MathMutableBase
function FRigUnit_MathMutableBase:get() end


---@class FRigUnit_MathQuaternionBase : FRigUnit_MathBase
FRigUnit_MathQuaternionBase = {}

---@return FRigUnit_MathQuaternionBase
function FRigUnit_MathQuaternionBase:get() end


---@class FRigUnit_MathQuaternionBinaryAggregateOp : FRigUnit_MathQuaternionBase
---@field A FQuat
---@field B FQuat
---@field Result FQuat
FRigUnit_MathQuaternionBinaryAggregateOp = {}

---@return FRigUnit_MathQuaternionBinaryAggregateOp
function FRigUnit_MathQuaternionBinaryAggregateOp:get() end



---@class FRigUnit_MathQuaternionBinaryOp : FRigUnit_MathQuaternionBase
---@field A FQuat
---@field B FQuat
---@field Result FQuat
FRigUnit_MathQuaternionBinaryOp = {}

---@return FRigUnit_MathQuaternionBinaryOp
function FRigUnit_MathQuaternionBinaryOp:get() end



---@class FRigUnit_MathQuaternionDot : FRigUnit_MathQuaternionBase
---@field A FQuat
---@field B FQuat
---@field Result float
FRigUnit_MathQuaternionDot = {}

---@return FRigUnit_MathQuaternionDot
function FRigUnit_MathQuaternionDot:get() end



---@class FRigUnit_MathQuaternionEquals : FRigUnit_MathQuaternionBase
---@field A FQuat
---@field B FQuat
---@field Result boolean
FRigUnit_MathQuaternionEquals = {}

---@return FRigUnit_MathQuaternionEquals
function FRigUnit_MathQuaternionEquals:get() end



---@class FRigUnit_MathQuaternionFromAxisAndAngle : FRigUnit_MathQuaternionBase
---@field Axis FVector
---@field Angle float
---@field Result FQuat
FRigUnit_MathQuaternionFromAxisAndAngle = {}

---@return FRigUnit_MathQuaternionFromAxisAndAngle
function FRigUnit_MathQuaternionFromAxisAndAngle:get() end



---@class FRigUnit_MathQuaternionFromEuler : FRigUnit_MathQuaternionBase
---@field Euler FVector
---@field RotationOrder EEulerRotationOrder
---@field Result FQuat
FRigUnit_MathQuaternionFromEuler = {}

---@return FRigUnit_MathQuaternionFromEuler
function FRigUnit_MathQuaternionFromEuler:get() end



---@class FRigUnit_MathQuaternionFromRotator : FRigUnit_MathQuaternionBase
---@field Rotator FRotator
---@field Result FQuat
FRigUnit_MathQuaternionFromRotator = {}

---@return FRigUnit_MathQuaternionFromRotator
function FRigUnit_MathQuaternionFromRotator:get() end



---@class FRigUnit_MathQuaternionFromRotatorV2 : FRigUnit_MathQuaternionBase
---@field Value FRotator
---@field Result FQuat
FRigUnit_MathQuaternionFromRotatorV2 = {}

---@return FRigUnit_MathQuaternionFromRotatorV2
function FRigUnit_MathQuaternionFromRotatorV2:get() end



---@class FRigUnit_MathQuaternionFromTwoVectors : FRigUnit_MathQuaternionBase
---@field A FVector
---@field B FVector
---@field Result FQuat
FRigUnit_MathQuaternionFromTwoVectors = {}

---@return FRigUnit_MathQuaternionFromTwoVectors
function FRigUnit_MathQuaternionFromTwoVectors:get() end



---@class FRigUnit_MathQuaternionGetAxis : FRigUnit_MathQuaternionBase
---@field Quaternion FQuat
---@field Axis EAxis::Type
---@field Result FVector
FRigUnit_MathQuaternionGetAxis = {}

---@return FRigUnit_MathQuaternionGetAxis
function FRigUnit_MathQuaternionGetAxis:get() end



---@class FRigUnit_MathQuaternionInverse : FRigUnit_MathQuaternionUnaryOp
FRigUnit_MathQuaternionInverse = {}

---@return FRigUnit_MathQuaternionInverse
function FRigUnit_MathQuaternionInverse:get() end


---@class FRigUnit_MathQuaternionMakeAbsolute : FRigUnit_MathQuaternionBase
---@field Local FQuat
---@field Parent FQuat
---@field Global FQuat
FRigUnit_MathQuaternionMakeAbsolute = {}

---@return FRigUnit_MathQuaternionMakeAbsolute
function FRigUnit_MathQuaternionMakeAbsolute:get() end



---@class FRigUnit_MathQuaternionMakeRelative : FRigUnit_MathQuaternionBase
---@field Global FQuat
---@field Parent FQuat
---@field Local FQuat
FRigUnit_MathQuaternionMakeRelative = {}

---@return FRigUnit_MathQuaternionMakeRelative
function FRigUnit_MathQuaternionMakeRelative:get() end



---@class FRigUnit_MathQuaternionMirrorTransform : FRigUnit_MathQuaternionBase
---@field Value FQuat
---@field MirrorAxis EAxis::Type
---@field AxisToFlip EAxis::Type
---@field CentralTransform FTransform
---@field Result FQuat
FRigUnit_MathQuaternionMirrorTransform = {}

---@return FRigUnit_MathQuaternionMirrorTransform
function FRigUnit_MathQuaternionMirrorTransform:get() end



---@class FRigUnit_MathQuaternionMul : FRigUnit_MathQuaternionBinaryAggregateOp
FRigUnit_MathQuaternionMul = {}

---@return FRigUnit_MathQuaternionMul
function FRigUnit_MathQuaternionMul:get() end


---@class FRigUnit_MathQuaternionNotEquals : FRigUnit_MathQuaternionBase
---@field A FQuat
---@field B FQuat
---@field Result boolean
FRigUnit_MathQuaternionNotEquals = {}

---@return FRigUnit_MathQuaternionNotEquals
function FRigUnit_MathQuaternionNotEquals:get() end



---@class FRigUnit_MathQuaternionRotateVector : FRigUnit_MathQuaternionBase
---@field Transform FQuat
---@field Vector FVector
---@field Result FVector
FRigUnit_MathQuaternionRotateVector = {}

---@return FRigUnit_MathQuaternionRotateVector
function FRigUnit_MathQuaternionRotateVector:get() end



---@class FRigUnit_MathQuaternionRotationOrder : FRigUnit_MathBase
---@field RotationOrder EEulerRotationOrder
FRigUnit_MathQuaternionRotationOrder = {}

---@return FRigUnit_MathQuaternionRotationOrder
function FRigUnit_MathQuaternionRotationOrder:get() end



---@class FRigUnit_MathQuaternionScale : FRigUnit_MathQuaternionBase
---@field Value FQuat
---@field Scale float
FRigUnit_MathQuaternionScale = {}

---@return FRigUnit_MathQuaternionScale
function FRigUnit_MathQuaternionScale:get() end



---@class FRigUnit_MathQuaternionScaleV2 : FRigUnit_MathQuaternionBase
---@field Value FQuat
---@field Factor float
---@field Result FQuat
FRigUnit_MathQuaternionScaleV2 = {}

---@return FRigUnit_MathQuaternionScaleV2
function FRigUnit_MathQuaternionScaleV2:get() end



---@class FRigUnit_MathQuaternionSelectBool : FRigUnit_MathQuaternionBase
---@field Condition boolean
---@field IfTrue FQuat
---@field IfFalse FQuat
---@field Result FQuat
FRigUnit_MathQuaternionSelectBool = {}

---@return FRigUnit_MathQuaternionSelectBool
function FRigUnit_MathQuaternionSelectBool:get() end



---@class FRigUnit_MathQuaternionSlerp : FRigUnit_MathQuaternionBase
---@field A FQuat
---@field B FQuat
---@field T float
---@field Result FQuat
FRigUnit_MathQuaternionSlerp = {}

---@return FRigUnit_MathQuaternionSlerp
function FRigUnit_MathQuaternionSlerp:get() end



---@class FRigUnit_MathQuaternionSwingTwist : FRigUnit_MathQuaternionBase
---@field Input FQuat
---@field TwistAxis FVector
---@field Swing FQuat
---@field Twist FQuat
FRigUnit_MathQuaternionSwingTwist = {}

---@return FRigUnit_MathQuaternionSwingTwist
function FRigUnit_MathQuaternionSwingTwist:get() end



---@class FRigUnit_MathQuaternionToAxisAndAngle : FRigUnit_MathQuaternionBase
---@field Value FQuat
---@field Axis FVector
---@field Angle float
FRigUnit_MathQuaternionToAxisAndAngle = {}

---@return FRigUnit_MathQuaternionToAxisAndAngle
function FRigUnit_MathQuaternionToAxisAndAngle:get() end



---@class FRigUnit_MathQuaternionToEuler : FRigUnit_MathQuaternionBase
---@field Value FQuat
---@field RotationOrder EEulerRotationOrder
---@field Result FVector
FRigUnit_MathQuaternionToEuler = {}

---@return FRigUnit_MathQuaternionToEuler
function FRigUnit_MathQuaternionToEuler:get() end



---@class FRigUnit_MathQuaternionToRotator : FRigUnit_MathQuaternionBase
---@field Value FQuat
---@field Result FRotator
FRigUnit_MathQuaternionToRotator = {}

---@return FRigUnit_MathQuaternionToRotator
function FRigUnit_MathQuaternionToRotator:get() end



---@class FRigUnit_MathQuaternionUnaryOp : FRigUnit_MathQuaternionBase
---@field Value FQuat
---@field Result FQuat
FRigUnit_MathQuaternionUnaryOp = {}

---@return FRigUnit_MathQuaternionUnaryOp
function FRigUnit_MathQuaternionUnaryOp:get() end



---@class FRigUnit_MathQuaternionUnit : FRigUnit_MathQuaternionUnaryOp
FRigUnit_MathQuaternionUnit = {}

---@return FRigUnit_MathQuaternionUnit
function FRigUnit_MathQuaternionUnit:get() end


---@class FRigUnit_MathRBFInterpolateBase : FRigUnit_MathBase
FRigUnit_MathRBFInterpolateBase = {}

---@return FRigUnit_MathRBFInterpolateBase
function FRigUnit_MathRBFInterpolateBase:get() end


---@class FRigUnit_MathRBFInterpolateQuatBase : FRigUnit_MathRBFInterpolateBase
---@field Input FQuat
---@field DistanceFunction ERBFQuatDistanceType
---@field SmoothingFunction ERBFKernelType
---@field SmoothingAngle float
---@field bNormalizeOutput boolean
---@field TwistAxis FVector
---@field WorkData FRigUnit_MathRBFInterpolateQuatWorkData
FRigUnit_MathRBFInterpolateQuatBase = {}

---@return FRigUnit_MathRBFInterpolateQuatBase
function FRigUnit_MathRBFInterpolateQuatBase:get() end



---@class FRigUnit_MathRBFInterpolateQuatColor : FRigUnit_MathRBFInterpolateQuatBase
---@field Targets TArray<FMathRBFInterpolateQuatColor_Target>
---@field Output FLinearColor
FRigUnit_MathRBFInterpolateQuatColor = {}

---@return FRigUnit_MathRBFInterpolateQuatColor
function FRigUnit_MathRBFInterpolateQuatColor:get() end



---@class FRigUnit_MathRBFInterpolateQuatFloat : FRigUnit_MathRBFInterpolateQuatBase
---@field Targets TArray<FMathRBFInterpolateQuatFloat_Target>
---@field Output float
FRigUnit_MathRBFInterpolateQuatFloat = {}

---@return FRigUnit_MathRBFInterpolateQuatFloat
function FRigUnit_MathRBFInterpolateQuatFloat:get() end



---@class FRigUnit_MathRBFInterpolateQuatQuat : FRigUnit_MathRBFInterpolateQuatBase
---@field Targets TArray<FMathRBFInterpolateQuatQuat_Target>
---@field Output FQuat
FRigUnit_MathRBFInterpolateQuatQuat = {}

---@return FRigUnit_MathRBFInterpolateQuatQuat
function FRigUnit_MathRBFInterpolateQuatQuat:get() end



---@class FRigUnit_MathRBFInterpolateQuatVector : FRigUnit_MathRBFInterpolateQuatBase
---@field Targets TArray<FMathRBFInterpolateQuatVector_Target>
---@field Output FVector
FRigUnit_MathRBFInterpolateQuatVector = {}

---@return FRigUnit_MathRBFInterpolateQuatVector
function FRigUnit_MathRBFInterpolateQuatVector:get() end



---@class FRigUnit_MathRBFInterpolateQuatWorkData
FRigUnit_MathRBFInterpolateQuatWorkData = {}

---@return FRigUnit_MathRBFInterpolateQuatWorkData
function FRigUnit_MathRBFInterpolateQuatWorkData:get() end


---@class FRigUnit_MathRBFInterpolateQuatXform : FRigUnit_MathRBFInterpolateQuatBase
---@field Targets TArray<FMathRBFInterpolateQuatXform_Target>
---@field Output FTransform
FRigUnit_MathRBFInterpolateQuatXform = {}

---@return FRigUnit_MathRBFInterpolateQuatXform
function FRigUnit_MathRBFInterpolateQuatXform:get() end



---@class FRigUnit_MathRBFInterpolateVectorBase : FRigUnit_MathRBFInterpolateBase
---@field Input FVector
---@field DistanceFunction ERBFVectorDistanceType
---@field SmoothingFunction ERBFKernelType
---@field SmoothingRadius float
---@field bNormalizeOutput boolean
---@field WorkData FRigUnit_MathRBFInterpolateVectorWorkData
FRigUnit_MathRBFInterpolateVectorBase = {}

---@return FRigUnit_MathRBFInterpolateVectorBase
function FRigUnit_MathRBFInterpolateVectorBase:get() end



---@class FRigUnit_MathRBFInterpolateVectorColor : FRigUnit_MathRBFInterpolateVectorBase
---@field Targets TArray<FMathRBFInterpolateVectorColor_Target>
---@field Output FLinearColor
FRigUnit_MathRBFInterpolateVectorColor = {}

---@return FRigUnit_MathRBFInterpolateVectorColor
function FRigUnit_MathRBFInterpolateVectorColor:get() end



---@class FRigUnit_MathRBFInterpolateVectorFloat : FRigUnit_MathRBFInterpolateVectorBase
---@field Targets TArray<FMathRBFInterpolateVectorFloat_Target>
---@field Output float
FRigUnit_MathRBFInterpolateVectorFloat = {}

---@return FRigUnit_MathRBFInterpolateVectorFloat
function FRigUnit_MathRBFInterpolateVectorFloat:get() end



---@class FRigUnit_MathRBFInterpolateVectorQuat : FRigUnit_MathRBFInterpolateVectorBase
---@field Targets TArray<FMathRBFInterpolateVectorQuat_Target>
---@field Output FQuat
FRigUnit_MathRBFInterpolateVectorQuat = {}

---@return FRigUnit_MathRBFInterpolateVectorQuat
function FRigUnit_MathRBFInterpolateVectorQuat:get() end



---@class FRigUnit_MathRBFInterpolateVectorVector : FRigUnit_MathRBFInterpolateVectorBase
---@field Targets TArray<FMathRBFInterpolateVectorVector_Target>
---@field Output FVector
FRigUnit_MathRBFInterpolateVectorVector = {}

---@return FRigUnit_MathRBFInterpolateVectorVector
function FRigUnit_MathRBFInterpolateVectorVector:get() end



---@class FRigUnit_MathRBFInterpolateVectorWorkData
FRigUnit_MathRBFInterpolateVectorWorkData = {}

---@return FRigUnit_MathRBFInterpolateVectorWorkData
function FRigUnit_MathRBFInterpolateVectorWorkData:get() end


---@class FRigUnit_MathRBFInterpolateVectorXform : FRigUnit_MathRBFInterpolateVectorBase
---@field Targets TArray<FMathRBFInterpolateVectorXform_Target>
---@field Output FTransform
FRigUnit_MathRBFInterpolateVectorXform = {}

---@return FRigUnit_MathRBFInterpolateVectorXform
function FRigUnit_MathRBFInterpolateVectorXform:get() end



---@class FRigUnit_MathTransformAccumulateArray : FRigUnit_MathTransformMutableBase
---@field Transforms TArray<FTransform>
---@field TargetSpace EBoneGetterSetterMode
---@field Root FTransform
---@field ParentIndices TArray<int32>
FRigUnit_MathTransformAccumulateArray = {}

---@return FRigUnit_MathTransformAccumulateArray
function FRigUnit_MathTransformAccumulateArray:get() end



---@class FRigUnit_MathTransformArrayToSRT : FRigUnit_MathTransformBase
---@field Transforms TArray<FTransform>
---@field Translations TArray<FVector>
---@field Rotations TArray<FQuat>
---@field Scales TArray<FVector>
FRigUnit_MathTransformArrayToSRT = {}

---@return FRigUnit_MathTransformArrayToSRT
function FRigUnit_MathTransformArrayToSRT:get() end



---@class FRigUnit_MathTransformBase : FRigUnit_MathBase
FRigUnit_MathTransformBase = {}

---@return FRigUnit_MathTransformBase
function FRigUnit_MathTransformBase:get() end


---@class FRigUnit_MathTransformBinaryAggregateOp : FRigUnit_MathTransformBase
---@field A FTransform
---@field B FTransform
---@field Result FTransform
FRigUnit_MathTransformBinaryAggregateOp = {}

---@return FRigUnit_MathTransformBinaryAggregateOp
function FRigUnit_MathTransformBinaryAggregateOp:get() end



---@class FRigUnit_MathTransformBinaryOp : FRigUnit_MathTransformBase
---@field A FTransform
---@field B FTransform
---@field Result FTransform
FRigUnit_MathTransformBinaryOp = {}

---@return FRigUnit_MathTransformBinaryOp
function FRigUnit_MathTransformBinaryOp:get() end



---@class FRigUnit_MathTransformClampSpatially : FRigUnit_MathTransformBase
---@field Value FTransform
---@field Axis EAxis::Type
---@field Type EControlRigClampSpatialMode::Type
---@field Minimum float
---@field Maximum float
---@field space FTransform
---@field bDrawDebug boolean
---@field DebugColor FLinearColor
---@field DebugThickness float
---@field Result FTransform
FRigUnit_MathTransformClampSpatially = {}

---@return FRigUnit_MathTransformClampSpatially
function FRigUnit_MathTransformClampSpatially:get() end



---@class FRigUnit_MathTransformFromEulerTransform : FRigUnit_MathTransformBase
---@field EulerTransform FEulerTransform
---@field Result FTransform
FRigUnit_MathTransformFromEulerTransform = {}

---@return FRigUnit_MathTransformFromEulerTransform
function FRigUnit_MathTransformFromEulerTransform:get() end



---@class FRigUnit_MathTransformFromEulerTransformV2 : FRigUnit_MathTransformBase
---@field Value FEulerTransform
---@field Result FTransform
FRigUnit_MathTransformFromEulerTransformV2 = {}

---@return FRigUnit_MathTransformFromEulerTransformV2
function FRigUnit_MathTransformFromEulerTransformV2:get() end



---@class FRigUnit_MathTransformFromSRT : FRigUnit_MathTransformBase
---@field Location FVector
---@field Rotation FVector
---@field RotationOrder EEulerRotationOrder
---@field Scale FVector
---@field Transform FTransform
---@field EulerTransform FEulerTransform
FRigUnit_MathTransformFromSRT = {}

---@return FRigUnit_MathTransformFromSRT
function FRigUnit_MathTransformFromSRT:get() end



---@class FRigUnit_MathTransformInverse : FRigUnit_MathTransformUnaryOp
FRigUnit_MathTransformInverse = {}

---@return FRigUnit_MathTransformInverse
function FRigUnit_MathTransformInverse:get() end


---@class FRigUnit_MathTransformLerp : FRigUnit_MathTransformBase
---@field A FTransform
---@field B FTransform
---@field T float
---@field Result FTransform
FRigUnit_MathTransformLerp = {}

---@return FRigUnit_MathTransformLerp
function FRigUnit_MathTransformLerp:get() end



---@class FRigUnit_MathTransformMakeAbsolute : FRigUnit_MathTransformBase
---@field Local FTransform
---@field Parent FTransform
---@field Global FTransform
FRigUnit_MathTransformMakeAbsolute = {}

---@return FRigUnit_MathTransformMakeAbsolute
function FRigUnit_MathTransformMakeAbsolute:get() end



---@class FRigUnit_MathTransformMakeRelative : FRigUnit_MathTransformBase
---@field Global FTransform
---@field Parent FTransform
---@field Local FTransform
FRigUnit_MathTransformMakeRelative = {}

---@return FRigUnit_MathTransformMakeRelative
function FRigUnit_MathTransformMakeRelative:get() end



---@class FRigUnit_MathTransformMirrorTransform : FRigUnit_MathTransformBase
---@field Value FTransform
---@field MirrorAxis EAxis::Type
---@field AxisToFlip EAxis::Type
---@field CentralTransform FTransform
---@field Result FTransform
FRigUnit_MathTransformMirrorTransform = {}

---@return FRigUnit_MathTransformMirrorTransform
function FRigUnit_MathTransformMirrorTransform:get() end



---@class FRigUnit_MathTransformMul : FRigUnit_MathTransformBinaryAggregateOp
FRigUnit_MathTransformMul = {}

---@return FRigUnit_MathTransformMul
function FRigUnit_MathTransformMul:get() end


---@class FRigUnit_MathTransformMutableBase : FRigUnit_MathMutableBase
FRigUnit_MathTransformMutableBase = {}

---@return FRigUnit_MathTransformMutableBase
function FRigUnit_MathTransformMutableBase:get() end


---@class FRigUnit_MathTransformRotateVector : FRigUnit_MathTransformBase
---@field Transform FTransform
---@field Vector FVector
---@field Result FVector
FRigUnit_MathTransformRotateVector = {}

---@return FRigUnit_MathTransformRotateVector
function FRigUnit_MathTransformRotateVector:get() end



---@class FRigUnit_MathTransformSelectBool : FRigUnit_MathTransformBase
---@field Condition boolean
---@field IfTrue FTransform
---@field IfFalse FTransform
---@field Result FTransform
FRigUnit_MathTransformSelectBool = {}

---@return FRigUnit_MathTransformSelectBool
function FRigUnit_MathTransformSelectBool:get() end



---@class FRigUnit_MathTransformToEulerTransform : FRigUnit_MathTransformBase
---@field Value FTransform
---@field Result FEulerTransform
FRigUnit_MathTransformToEulerTransform = {}

---@return FRigUnit_MathTransformToEulerTransform
function FRigUnit_MathTransformToEulerTransform:get() end



---@class FRigUnit_MathTransformTransformVector : FRigUnit_MathTransformBase
---@field Transform FTransform
---@field Location FVector
---@field Result FVector
FRigUnit_MathTransformTransformVector = {}

---@return FRigUnit_MathTransformTransformVector
function FRigUnit_MathTransformTransformVector:get() end



---@class FRigUnit_MathTransformUnaryOp : FRigUnit_MathTransformBase
---@field Value FTransform
---@field Result FTransform
FRigUnit_MathTransformUnaryOp = {}

---@return FRigUnit_MathTransformUnaryOp
function FRigUnit_MathTransformUnaryOp:get() end



---@class FRigUnit_MathVectorAbs : FRigUnit_MathVectorUnaryOp
FRigUnit_MathVectorAbs = {}

---@return FRigUnit_MathVectorAbs
function FRigUnit_MathVectorAbs:get() end


---@class FRigUnit_MathVectorAdd : FRigUnit_MathVectorBinaryAggregateOp
FRigUnit_MathVectorAdd = {}

---@return FRigUnit_MathVectorAdd
function FRigUnit_MathVectorAdd:get() end


---@class FRigUnit_MathVectorAngle : FRigUnit_MathVectorBase
---@field A FVector
---@field B FVector
---@field Result float
FRigUnit_MathVectorAngle = {}

---@return FRigUnit_MathVectorAngle
function FRigUnit_MathVectorAngle:get() end



---@class FRigUnit_MathVectorBase : FRigUnit_MathBase
FRigUnit_MathVectorBase = {}

---@return FRigUnit_MathVectorBase
function FRigUnit_MathVectorBase:get() end


---@class FRigUnit_MathVectorBezierFourPoint : FRigUnit_MathVectorBase
---@field Bezier FCRFourPointBezier
---@field T float
---@field Result FVector
---@field Tangent FVector
FRigUnit_MathVectorBezierFourPoint = {}

---@return FRigUnit_MathVectorBezierFourPoint
function FRigUnit_MathVectorBezierFourPoint:get() end



---@class FRigUnit_MathVectorBinaryAggregateOp : FRigUnit_MathVectorBase
---@field A FVector
---@field B FVector
---@field Result FVector
FRigUnit_MathVectorBinaryAggregateOp = {}

---@return FRigUnit_MathVectorBinaryAggregateOp
function FRigUnit_MathVectorBinaryAggregateOp:get() end



---@class FRigUnit_MathVectorBinaryOp : FRigUnit_MathVectorBase
---@field A FVector
---@field B FVector
---@field Result FVector
FRigUnit_MathVectorBinaryOp = {}

---@return FRigUnit_MathVectorBinaryOp
function FRigUnit_MathVectorBinaryOp:get() end



---@class FRigUnit_MathVectorCeil : FRigUnit_MathVectorUnaryOp
FRigUnit_MathVectorCeil = {}

---@return FRigUnit_MathVectorCeil
function FRigUnit_MathVectorCeil:get() end


---@class FRigUnit_MathVectorClamp : FRigUnit_MathVectorBase
---@field Value FVector
---@field Minimum FVector
---@field Maximum FVector
---@field Result FVector
FRigUnit_MathVectorClamp = {}

---@return FRigUnit_MathVectorClamp
function FRigUnit_MathVectorClamp:get() end



---@class FRigUnit_MathVectorClampLength : FRigUnit_MathVectorBase
---@field Value FVector
---@field MinimumLength float
---@field MaximumLength float
---@field Result FVector
FRigUnit_MathVectorClampLength = {}

---@return FRigUnit_MathVectorClampLength
function FRigUnit_MathVectorClampLength:get() end



---@class FRigUnit_MathVectorClampSpatially : FRigUnit_MathVectorBase
---@field Value FVector
---@field Axis EAxis::Type
---@field Type EControlRigClampSpatialMode::Type
---@field Minimum float
---@field Maximum float
---@field space FTransform
---@field bDrawDebug boolean
---@field DebugColor FLinearColor
---@field DebugThickness float
---@field Result FVector
FRigUnit_MathVectorClampSpatially = {}

---@return FRigUnit_MathVectorClampSpatially
function FRigUnit_MathVectorClampSpatially:get() end



---@class FRigUnit_MathVectorCross : FRigUnit_MathVectorBinaryOp
FRigUnit_MathVectorCross = {}

---@return FRigUnit_MathVectorCross
function FRigUnit_MathVectorCross:get() end


---@class FRigUnit_MathVectorDeg : FRigUnit_MathVectorUnaryOp
FRigUnit_MathVectorDeg = {}

---@return FRigUnit_MathVectorDeg
function FRigUnit_MathVectorDeg:get() end


---@class FRigUnit_MathVectorDistance : FRigUnit_MathVectorBase
---@field A FVector
---@field B FVector
---@field Result float
FRigUnit_MathVectorDistance = {}

---@return FRigUnit_MathVectorDistance
function FRigUnit_MathVectorDistance:get() end



---@class FRigUnit_MathVectorDiv : FRigUnit_MathVectorBinaryOp
FRigUnit_MathVectorDiv = {}

---@return FRigUnit_MathVectorDiv
function FRigUnit_MathVectorDiv:get() end


---@class FRigUnit_MathVectorDot : FRigUnit_MathVectorBase
---@field A FVector
---@field B FVector
---@field Result float
FRigUnit_MathVectorDot = {}

---@return FRigUnit_MathVectorDot
function FRigUnit_MathVectorDot:get() end



---@class FRigUnit_MathVectorEquals : FRigUnit_MathVectorBase
---@field A FVector
---@field B FVector
---@field Result boolean
FRigUnit_MathVectorEquals = {}

---@return FRigUnit_MathVectorEquals
function FRigUnit_MathVectorEquals:get() end



---@class FRigUnit_MathVectorFloor : FRigUnit_MathVectorUnaryOp
FRigUnit_MathVectorFloor = {}

---@return FRigUnit_MathVectorFloor
function FRigUnit_MathVectorFloor:get() end


---@class FRigUnit_MathVectorFromFloat : FRigUnit_MathVectorBase
---@field Value float
---@field Result FVector
FRigUnit_MathVectorFromFloat = {}

---@return FRigUnit_MathVectorFromFloat
function FRigUnit_MathVectorFromFloat:get() end



---@class FRigUnit_MathVectorIsNearlyEqual : FRigUnit_MathVectorBase
---@field A FVector
---@field B FVector
---@field Tolerance float
---@field Result boolean
FRigUnit_MathVectorIsNearlyEqual = {}

---@return FRigUnit_MathVectorIsNearlyEqual
function FRigUnit_MathVectorIsNearlyEqual:get() end



---@class FRigUnit_MathVectorIsNearlyZero : FRigUnit_MathVectorBase
---@field Value FVector
---@field Tolerance float
---@field Result boolean
FRigUnit_MathVectorIsNearlyZero = {}

---@return FRigUnit_MathVectorIsNearlyZero
function FRigUnit_MathVectorIsNearlyZero:get() end



---@class FRigUnit_MathVectorLength : FRigUnit_MathVectorBase
---@field Value FVector
---@field Result float
FRigUnit_MathVectorLength = {}

---@return FRigUnit_MathVectorLength
function FRigUnit_MathVectorLength:get() end



---@class FRigUnit_MathVectorLengthSquared : FRigUnit_MathVectorBase
---@field Value FVector
---@field Result float
FRigUnit_MathVectorLengthSquared = {}

---@return FRigUnit_MathVectorLengthSquared
function FRigUnit_MathVectorLengthSquared:get() end



---@class FRigUnit_MathVectorLerp : FRigUnit_MathVectorBase
---@field A FVector
---@field B FVector
---@field T float
---@field Result FVector
FRigUnit_MathVectorLerp = {}

---@return FRigUnit_MathVectorLerp
function FRigUnit_MathVectorLerp:get() end



---@class FRigUnit_MathVectorMakeAbsolute : FRigUnit_MathVectorBase
---@field Local FVector
---@field Parent FVector
---@field Global FVector
FRigUnit_MathVectorMakeAbsolute = {}

---@return FRigUnit_MathVectorMakeAbsolute
function FRigUnit_MathVectorMakeAbsolute:get() end



---@class FRigUnit_MathVectorMakeBezierFourPoint : FRigUnit_MathVectorBase
---@field Bezier FCRFourPointBezier
FRigUnit_MathVectorMakeBezierFourPoint = {}

---@return FRigUnit_MathVectorMakeBezierFourPoint
function FRigUnit_MathVectorMakeBezierFourPoint:get() end



---@class FRigUnit_MathVectorMakeRelative : FRigUnit_MathVectorBase
---@field Global FVector
---@field Parent FVector
---@field Local FVector
FRigUnit_MathVectorMakeRelative = {}

---@return FRigUnit_MathVectorMakeRelative
function FRigUnit_MathVectorMakeRelative:get() end



---@class FRigUnit_MathVectorMax : FRigUnit_MathVectorBinaryAggregateOp
FRigUnit_MathVectorMax = {}

---@return FRigUnit_MathVectorMax
function FRigUnit_MathVectorMax:get() end


---@class FRigUnit_MathVectorMin : FRigUnit_MathVectorBinaryAggregateOp
FRigUnit_MathVectorMin = {}

---@return FRigUnit_MathVectorMin
function FRigUnit_MathVectorMin:get() end


---@class FRigUnit_MathVectorMirror : FRigUnit_MathVectorBase
---@field Value FVector
---@field Normal FVector
---@field Result FVector
FRigUnit_MathVectorMirror = {}

---@return FRigUnit_MathVectorMirror
function FRigUnit_MathVectorMirror:get() end



---@class FRigUnit_MathVectorMirrorTransform : FRigUnit_MathVectorBase
---@field Value FVector
---@field MirrorAxis EAxis::Type
---@field AxisToFlip EAxis::Type
---@field CentralTransform FTransform
---@field Result FVector
FRigUnit_MathVectorMirrorTransform = {}

---@return FRigUnit_MathVectorMirrorTransform
function FRigUnit_MathVectorMirrorTransform:get() end



---@class FRigUnit_MathVectorMod : FRigUnit_MathVectorBinaryOp
FRigUnit_MathVectorMod = {}

---@return FRigUnit_MathVectorMod
function FRigUnit_MathVectorMod:get() end


---@class FRigUnit_MathVectorMul : FRigUnit_MathVectorBinaryAggregateOp
FRigUnit_MathVectorMul = {}

---@return FRigUnit_MathVectorMul
function FRigUnit_MathVectorMul:get() end


---@class FRigUnit_MathVectorNegate : FRigUnit_MathVectorUnaryOp
FRigUnit_MathVectorNegate = {}

---@return FRigUnit_MathVectorNegate
function FRigUnit_MathVectorNegate:get() end


---@class FRigUnit_MathVectorNotEquals : FRigUnit_MathVectorBase
---@field A FVector
---@field B FVector
---@field Result boolean
FRigUnit_MathVectorNotEquals = {}

---@return FRigUnit_MathVectorNotEquals
function FRigUnit_MathVectorNotEquals:get() end



---@class FRigUnit_MathVectorOrthogonal : FRigUnit_MathVectorBase
---@field A FVector
---@field B FVector
---@field Result boolean
FRigUnit_MathVectorOrthogonal = {}

---@return FRigUnit_MathVectorOrthogonal
function FRigUnit_MathVectorOrthogonal:get() end



---@class FRigUnit_MathVectorParallel : FRigUnit_MathVectorBase
---@field A FVector
---@field B FVector
---@field Result boolean
FRigUnit_MathVectorParallel = {}

---@return FRigUnit_MathVectorParallel
function FRigUnit_MathVectorParallel:get() end



---@class FRigUnit_MathVectorRad : FRigUnit_MathVectorUnaryOp
FRigUnit_MathVectorRad = {}

---@return FRigUnit_MathVectorRad
function FRigUnit_MathVectorRad:get() end


---@class FRigUnit_MathVectorRemap : FRigUnit_MathVectorBase
---@field Value FVector
---@field SourceMinimum FVector
---@field SourceMaximum FVector
---@field TargetMinimum FVector
---@field TargetMaximum FVector
---@field bClamp boolean
---@field Result FVector
FRigUnit_MathVectorRemap = {}

---@return FRigUnit_MathVectorRemap
function FRigUnit_MathVectorRemap:get() end



---@class FRigUnit_MathVectorRound : FRigUnit_MathVectorUnaryOp
FRigUnit_MathVectorRound = {}

---@return FRigUnit_MathVectorRound
function FRigUnit_MathVectorRound:get() end


---@class FRigUnit_MathVectorScale : FRigUnit_MathVectorBase
---@field Value FVector
---@field Factor float
---@field Result FVector
FRigUnit_MathVectorScale = {}

---@return FRigUnit_MathVectorScale
function FRigUnit_MathVectorScale:get() end



---@class FRigUnit_MathVectorSelectBool : FRigUnit_MathVectorBase
---@field Condition boolean
---@field IfTrue FVector
---@field IfFalse FVector
---@field Result FVector
FRigUnit_MathVectorSelectBool = {}

---@return FRigUnit_MathVectorSelectBool
function FRigUnit_MathVectorSelectBool:get() end



---@class FRigUnit_MathVectorSetLength : FRigUnit_MathVectorBase
---@field Value FVector
---@field Length float
---@field Result FVector
FRigUnit_MathVectorSetLength = {}

---@return FRigUnit_MathVectorSetLength
function FRigUnit_MathVectorSetLength:get() end



---@class FRigUnit_MathVectorSign : FRigUnit_MathVectorUnaryOp
FRigUnit_MathVectorSign = {}

---@return FRigUnit_MathVectorSign
function FRigUnit_MathVectorSign:get() end


---@class FRigUnit_MathVectorSub : FRigUnit_MathVectorBinaryOp
FRigUnit_MathVectorSub = {}

---@return FRigUnit_MathVectorSub
function FRigUnit_MathVectorSub:get() end


---@class FRigUnit_MathVectorUnaryOp : FRigUnit_MathVectorBase
---@field Value FVector
---@field Result FVector
FRigUnit_MathVectorUnaryOp = {}

---@return FRigUnit_MathVectorUnaryOp
function FRigUnit_MathVectorUnaryOp:get() end



---@class FRigUnit_MathVectorUnit : FRigUnit_MathVectorUnaryOp
FRigUnit_MathVectorUnit = {}

---@return FRigUnit_MathVectorUnit
function FRigUnit_MathVectorUnit:get() end


---@class FRigUnit_ModifyBoneTransforms : FRigUnit_HighlevelBaseMutable
---@field BoneToModify TArray<FRigUnit_ModifyBoneTransforms_PerBone>
---@field Weight float
---@field WeightMinimum float
---@field WeightMaximum float
---@field Mode EControlRigModifyBoneMode
---@field WorkData FRigUnit_ModifyBoneTransforms_WorkData
FRigUnit_ModifyBoneTransforms = {}

---@return FRigUnit_ModifyBoneTransforms
function FRigUnit_ModifyBoneTransforms:get() end



---@class FRigUnit_ModifyBoneTransforms_PerBone
---@field bone FName
---@field Transform FTransform
FRigUnit_ModifyBoneTransforms_PerBone = {}

---@return FRigUnit_ModifyBoneTransforms_PerBone
function FRigUnit_ModifyBoneTransforms_PerBone:get() end



---@class FRigUnit_ModifyBoneTransforms_WorkData : FRigUnit_ModifyTransforms_WorkData
FRigUnit_ModifyBoneTransforms_WorkData = {}

---@return FRigUnit_ModifyBoneTransforms_WorkData
function FRigUnit_ModifyBoneTransforms_WorkData:get() end


---@class FRigUnit_ModifyTransforms : FRigUnit_HighlevelBaseMutable
---@field ItemToModify TArray<FRigUnit_ModifyTransforms_PerItem>
---@field Weight float
---@field WeightMinimum float
---@field WeightMaximum float
---@field Mode EControlRigModifyBoneMode
---@field WorkData FRigUnit_ModifyTransforms_WorkData
FRigUnit_ModifyTransforms = {}

---@return FRigUnit_ModifyTransforms
function FRigUnit_ModifyTransforms:get() end



---@class FRigUnit_ModifyTransforms_PerItem
---@field Item FRigElementKey
---@field Transform FTransform
FRigUnit_ModifyTransforms_PerItem = {}

---@return FRigUnit_ModifyTransforms_PerItem
function FRigUnit_ModifyTransforms_PerItem:get() end



---@class FRigUnit_ModifyTransforms_WorkData
---@field CachedItems TArray<FCachedRigElement>
FRigUnit_ModifyTransforms_WorkData = {}

---@return FRigUnit_ModifyTransforms_WorkData
function FRigUnit_ModifyTransforms_WorkData:get() end



---@class FRigUnit_MultiFABRIK : FRigUnit_HighlevelBaseMutable
---@field RootBone FName
---@field Effectors TArray<FRigUnit_MultiFABRIK_EndEffector>
---@field Precision float
---@field bPropagateToChildren boolean
---@field MaxIterations int32
---@field WorkData FRigUnit_MultiFABRIK_WorkData
FRigUnit_MultiFABRIK = {}

---@return FRigUnit_MultiFABRIK
function FRigUnit_MultiFABRIK:get() end



---@class FRigUnit_MultiFABRIK_EndEffector
---@field bone FName
---@field Location FVector
FRigUnit_MultiFABRIK_EndEffector = {}

---@return FRigUnit_MultiFABRIK_EndEffector
function FRigUnit_MultiFABRIK_EndEffector:get() end



---@class FRigUnit_MultiFABRIK_WorkData
FRigUnit_MultiFABRIK_WorkData = {}

---@return FRigUnit_MultiFABRIK_WorkData
function FRigUnit_MultiFABRIK_WorkData:get() end


---@class FRigUnit_MultiplyQuaternion : FRigUnit_BinaryQuaternionOp
FRigUnit_MultiplyQuaternion = {}

---@return FRigUnit_MultiplyQuaternion
function FRigUnit_MultiplyQuaternion:get() end


---@class FRigUnit_MultiplyTransform : FRigUnit_BinaryTransformOp
FRigUnit_MultiplyTransform = {}

---@return FRigUnit_MultiplyTransform
function FRigUnit_MultiplyTransform:get() end


---@class FRigUnit_Multiply_FloatFloat : FRigUnit_BinaryFloatOp
FRigUnit_Multiply_FloatFloat = {}

---@return FRigUnit_Multiply_FloatFloat
function FRigUnit_Multiply_FloatFloat:get() end


---@class FRigUnit_Multiply_VectorVector : FRigUnit_BinaryVectorOp
FRigUnit_Multiply_VectorVector = {}

---@return FRigUnit_Multiply_VectorVector
function FRigUnit_Multiply_VectorVector:get() end


---@class FRigUnit_NameBase : FRigUnit
FRigUnit_NameBase = {}

---@return FRigUnit_NameBase
function FRigUnit_NameBase:get() end


---@class FRigUnit_NameConcat : FRigUnit_NameBase
---@field A FName
---@field B FName
---@field Result FName
FRigUnit_NameConcat = {}

---@return FRigUnit_NameConcat
function FRigUnit_NameConcat:get() end



---@class FRigUnit_NameReplace : FRigUnit_NameBase
---@field Name FName
---@field Old FName
---@field New FName
---@field Result FName
FRigUnit_NameReplace = {}

---@return FRigUnit_NameReplace
function FRigUnit_NameReplace:get() end



---@class FRigUnit_NameTruncate : FRigUnit_NameBase
---@field Name FName
---@field Count int32
---@field FromEnd boolean
---@field Remainder FName
---@field Chopped FName
FRigUnit_NameTruncate = {}

---@return FRigUnit_NameTruncate
function FRigUnit_NameTruncate:get() end



---@class FRigUnit_NoiseDouble : FRigUnit_MathBase
---@field Value double
---@field Speed double
---@field Frequency double
---@field Minimum double
---@field Maximum double
---@field Result double
---@field Time double
FRigUnit_NoiseDouble = {}

---@return FRigUnit_NoiseDouble
function FRigUnit_NoiseDouble:get() end



---@class FRigUnit_NoiseFloat : FRigUnit_MathBase
---@field Value float
---@field Speed float
---@field Frequency float
---@field Minimum float
---@field Maximum float
---@field Result float
---@field Time float
FRigUnit_NoiseFloat = {}

---@return FRigUnit_NoiseFloat
function FRigUnit_NoiseFloat:get() end



---@class FRigUnit_NoiseVector : FRigUnit_MathBase
---@field Position FVector
---@field Speed FVector
---@field Frequency FVector
---@field Minimum float
---@field Maximum float
---@field Result FVector
---@field Time FVector
FRigUnit_NoiseVector = {}

---@return FRigUnit_NoiseVector
function FRigUnit_NoiseVector:get() end



---@class FRigUnit_NoiseVector2 : FRigUnit_MathBase
---@field Value FVector
---@field Speed FVector
---@field Frequency FVector
---@field Minimum double
---@field Maximum double
---@field Result FVector
---@field Time FVector
FRigUnit_NoiseVector2 = {}

---@return FRigUnit_NoiseVector2
function FRigUnit_NoiseVector2:get() end



---@class FRigUnit_OffsetTransformForItem : FRigUnitMutable
---@field Item FRigElementKey
---@field OffsetTransform FTransform
---@field Weight float
---@field bPropagateToChildren boolean
---@field CachedIndex FCachedRigElement
FRigUnit_OffsetTransformForItem = {}

---@return FRigUnit_OffsetTransformForItem
function FRigUnit_OffsetTransformForItem:get() end



---@class FRigUnit_ParentConstraint : FRigUnit_HighlevelBaseMutable
---@field Child FRigElementKey
---@field bMaintainOffset boolean
---@field Filter FTransformFilter
---@field Parents TArray<FConstraintParent>
---@field AdvancedSettings FRigUnit_ParentConstraint_AdvancedSettings
---@field Weight float
---@field ChildCache FCachedRigElement
---@field ParentCaches TArray<FCachedRigElement>
FRigUnit_ParentConstraint = {}

---@return FRigUnit_ParentConstraint
function FRigUnit_ParentConstraint:get() end



---@class FRigUnit_ParentConstraint_AdvancedSettings
---@field InterpolationType EConstraintInterpType
---@field RotationOrderForFilter EEulerRotationOrder
FRigUnit_ParentConstraint_AdvancedSettings = {}

---@return FRigUnit_ParentConstraint_AdvancedSettings
function FRigUnit_ParentConstraint_AdvancedSettings:get() end



---@class FRigUnit_ParentSwitchConstraint : FRigUnitMutable
---@field Subject FRigElementKey
---@field ParentIndex int32
---@field Parents FRigElementKeyCollection
---@field InitialGlobalTransform FTransform
---@field Weight float
---@field Transform FTransform
---@field Switched boolean
---@field CachedSubject FCachedRigElement
---@field CachedParent FCachedRigElement
---@field RelativeOffset FTransform
FRigUnit_ParentSwitchConstraint = {}

---@return FRigUnit_ParentSwitchConstraint
function FRigUnit_ParentSwitchConstraint:get() end



---@class FRigUnit_ParentSwitchConstraintArray : FRigUnitMutable
---@field Subject FRigElementKey
---@field ParentIndex int32
---@field Parents TArray<FRigElementKey>
---@field InitialGlobalTransform FTransform
---@field Weight float
---@field Transform FTransform
---@field Switched boolean
---@field CachedSubject FCachedRigElement
---@field CachedParent FCachedRigElement
---@field RelativeOffset FTransform
FRigUnit_ParentSwitchConstraintArray = {}

---@return FRigUnit_ParentSwitchConstraintArray
function FRigUnit_ParentSwitchConstraintArray:get() end



---@class FRigUnit_PointSimulation : FRigUnit_SimBaseMutable
---@field Points TArray<FCRSimPoint>
---@field Links TArray<FCRSimLinearSpring>
---@field Forces TArray<FCRSimPointForce>
---@field CollisionVolumes TArray<FCRSimSoftCollision>
---@field SimulatedStepsPerSecond float
---@field IntegratorType ECRSimPointIntegrateType
---@field VerletBlend float
---@field BoneTargets TArray<FRigUnit_PointSimulation_BoneTarget>
---@field bLimitLocalPosition boolean
---@field bPropagateToChildren boolean
---@field PrimaryAimAxis FVector
---@field SecondaryAimAxis FVector
---@field DebugSettings FRigUnit_PointSimulation_DebugSettings
---@field Bezier FCRFourPointBezier
---@field WorkData FRigUnit_PointSimulation_WorkData
FRigUnit_PointSimulation = {}

---@return FRigUnit_PointSimulation
function FRigUnit_PointSimulation:get() end



---@class FRigUnit_PointSimulation_BoneTarget
---@field bone FName
---@field TranslationPoint int32
---@field PrimaryAimPoint int32
---@field SecondaryAimPoint int32
FRigUnit_PointSimulation_BoneTarget = {}

---@return FRigUnit_PointSimulation_BoneTarget
function FRigUnit_PointSimulation_BoneTarget:get() end



---@class FRigUnit_PointSimulation_DebugSettings
---@field bEnabled boolean
---@field Scale float
---@field CollisionScale float
---@field bDrawPointsAsSpheres boolean
---@field Color FLinearColor
---@field WorldOffset FTransform
FRigUnit_PointSimulation_DebugSettings = {}

---@return FRigUnit_PointSimulation_DebugSettings
function FRigUnit_PointSimulation_DebugSettings:get() end



---@class FRigUnit_PointSimulation_WorkData
---@field Simulation FCRSimPointContainer
---@field BoneIndices TArray<FCachedRigElement>
FRigUnit_PointSimulation_WorkData = {}

---@return FRigUnit_PointSimulation_WorkData
function FRigUnit_PointSimulation_WorkData:get() end



---@class FRigUnit_PoseGetCurve : FRigUnit_HierarchyBase
---@field Pose FRigPose
---@field Curve FName
---@field Valid boolean
---@field CurveValue float
---@field CachedPoseElementIndex int32
---@field CachedPoseHash int32
FRigUnit_PoseGetCurve = {}

---@return FRigUnit_PoseGetCurve
function FRigUnit_PoseGetCurve:get() end



---@class FRigUnit_PoseGetDelta : FRigUnit_HierarchyBase
---@field PoseA FRigPose
---@field PoseB FRigPose
---@field PositionThreshold float
---@field RotationThreshold float
---@field ScaleThreshold float
---@field CurveThreshold float
---@field ElementType ERigElementType
---@field space EBoneGetterSetterMode
---@field ItemsToCompare FRigElementKeyCollection
---@field PosesAreEqual boolean
---@field ItemsWithDelta FRigElementKeyCollection
FRigUnit_PoseGetDelta = {}

---@return FRigUnit_PoseGetDelta
function FRigUnit_PoseGetDelta:get() end



---@class FRigUnit_PoseGetItems : FRigUnit_HierarchyBase
---@field Pose FRigPose
---@field ElementType ERigElementType
---@field Items FRigElementKeyCollection
FRigUnit_PoseGetItems = {}

---@return FRigUnit_PoseGetItems
function FRigUnit_PoseGetItems:get() end



---@class FRigUnit_PoseGetItemsItemArray : FRigUnit_HierarchyBase
---@field Pose FRigPose
---@field ElementType ERigElementType
---@field Items TArray<FRigElementKey>
FRigUnit_PoseGetItemsItemArray = {}

---@return FRigUnit_PoseGetItemsItemArray
function FRigUnit_PoseGetItemsItemArray:get() end



---@class FRigUnit_PoseGetTransform : FRigUnit_HierarchyBase
---@field Pose FRigPose
---@field Item FRigElementKey
---@field space EBoneGetterSetterMode
---@field Valid boolean
---@field Transform FTransform
---@field CurveValue float
---@field CachedPoseElementIndex int32
---@field CachedPoseHash int32
FRigUnit_PoseGetTransform = {}

---@return FRigUnit_PoseGetTransform
function FRigUnit_PoseGetTransform:get() end



---@class FRigUnit_PoseGetTransformArray : FRigUnit_HierarchyBase
---@field Pose FRigPose
---@field space EBoneGetterSetterMode
---@field Valid boolean
---@field Transforms TArray<FTransform>
FRigUnit_PoseGetTransformArray = {}

---@return FRigUnit_PoseGetTransformArray
function FRigUnit_PoseGetTransformArray:get() end



---@class FRigUnit_PoseIsEmpty : FRigUnit_HierarchyBase
---@field Pose FRigPose
---@field IsEmpty boolean
FRigUnit_PoseIsEmpty = {}

---@return FRigUnit_PoseIsEmpty
function FRigUnit_PoseIsEmpty:get() end



---@class FRigUnit_PoseLoop : FRigUnit_HierarchyBaseMutable
---@field Pose FRigPose
---@field Item FRigElementKey
---@field GlobalTransform FTransform
---@field LocalTransform FTransform
---@field CurveValue float
---@field Index int32
---@field Count int32
---@field Ratio float
---@field Continue boolean
---@field Completed FControlRigExecuteContext
FRigUnit_PoseLoop = {}

---@return FRigUnit_PoseLoop
function FRigUnit_PoseLoop:get() end



---@class FRigUnit_PositionConstraint : FRigUnit_HighlevelBaseMutable
---@field Child FRigElementKey
---@field bMaintainOffset boolean
---@field Filter FFilterOptionPerAxis
---@field Parents TArray<FConstraintParent>
---@field Weight float
FRigUnit_PositionConstraint = {}

---@return FRigUnit_PositionConstraint
function FRigUnit_PositionConstraint:get() end



---@class FRigUnit_PositionConstraintLocalSpaceOffset : FRigUnit_HighlevelBaseMutable
---@field Child FRigElementKey
---@field bMaintainOffset boolean
---@field Filter FFilterOptionPerAxis
---@field Parents TArray<FConstraintParent>
---@field Weight float
---@field ChildCache FCachedRigElement
---@field ParentCaches TArray<FCachedRigElement>
FRigUnit_PositionConstraintLocalSpaceOffset = {}

---@return FRigUnit_PositionConstraintLocalSpaceOffset
function FRigUnit_PositionConstraintLocalSpaceOffset:get() end



---@class FRigUnit_PrepareForExecution : FRigUnit
---@field ExecuteContext FControlRigExecuteContext
FRigUnit_PrepareForExecution = {}

---@return FRigUnit_PrepareForExecution
function FRigUnit_PrepareForExecution:get() end



---@class FRigUnit_ProjectTransformToNewParent : FRigUnit
---@field Child FRigElementKey
---@field bChildInitial boolean
---@field OldParent FRigElementKey
---@field bOldParentInitial boolean
---@field NewParent FRigElementKey
---@field bNewParentInitial boolean
---@field Transform FTransform
---@field CachedChild FCachedRigElement
---@field CachedOldParent FCachedRigElement
---@field CachedNewParent FCachedRigElement
FRigUnit_ProjectTransformToNewParent = {}

---@return FRigUnit_ProjectTransformToNewParent
function FRigUnit_ProjectTransformToNewParent:get() end



---@class FRigUnit_PropagateTransform : FRigUnitMutable
---@field Item FRigElementKey
---@field bRecomputeGlobal boolean
---@field bApplyToChildren boolean
---@field bRecursive boolean
---@field CachedIndex FCachedRigElement
FRigUnit_PropagateTransform = {}

---@return FRigUnit_PropagateTransform
function FRigUnit_PropagateTransform:get() end



---@class FRigUnit_QuaternionFromAxisAndAngle : FRigUnit
---@field Axis FVector
---@field Angle float
---@field Result FQuat
FRigUnit_QuaternionFromAxisAndAngle = {}

---@return FRigUnit_QuaternionFromAxisAndAngle
function FRigUnit_QuaternionFromAxisAndAngle:get() end



---@class FRigUnit_QuaternionToAngle : FRigUnit
---@field Axis FVector
---@field Argument FQuat
---@field Angle float
FRigUnit_QuaternionToAngle = {}

---@return FRigUnit_QuaternionToAngle
function FRigUnit_QuaternionToAngle:get() end



---@class FRigUnit_QuaternionToAxisAndAngle : FRigUnit
---@field Argument FQuat
---@field Axis FVector
---@field Angle float
FRigUnit_QuaternionToAxisAndAngle = {}

---@return FRigUnit_QuaternionToAxisAndAngle
function FRigUnit_QuaternionToAxisAndAngle:get() end



---@class FRigUnit_RandomFloat : FRigUnit_MathBase
---@field Seed int32
---@field Minimum float
---@field Maximum float
---@field Duration float
---@field Result float
---@field LastResult float
---@field LastSeed int32
---@field BaseSeed int32
---@field TimeLeft float
FRigUnit_RandomFloat = {}

---@return FRigUnit_RandomFloat
function FRigUnit_RandomFloat:get() end



---@class FRigUnit_RandomVector : FRigUnit_MathBase
---@field Seed int32
---@field Minimum float
---@field Maximum float
---@field Duration float
---@field Result FVector
---@field LastResult FVector
---@field LastSeed int32
---@field BaseSeed int32
---@field TimeLeft float
FRigUnit_RandomVector = {}

---@return FRigUnit_RandomVector
function FRigUnit_RandomVector:get() end



---@class FRigUnit_RemoveAllMetadata : FRigUnitMutable
---@field Item FRigElementKey
---@field Removed boolean
---@field CachedIndex FCachedRigElement
FRigUnit_RemoveAllMetadata = {}

---@return FRigUnit_RemoveAllMetadata
function FRigUnit_RemoveAllMetadata:get() end



---@class FRigUnit_RemoveMetadata : FRigUnitMutable
---@field Item FRigElementKey
---@field Name FName
---@field Removed boolean
---@field CachedIndex FCachedRigElement
FRigUnit_RemoveMetadata = {}

---@return FRigUnit_RemoveMetadata
function FRigUnit_RemoveMetadata:get() end



---@class FRigUnit_RemoveMetadataTag : FRigUnitMutable
---@field Item FRigElementKey
---@field Tag FName
---@field Removed boolean
---@field CachedIndex FCachedRigElement
FRigUnit_RemoveMetadataTag = {}

---@return FRigUnit_RemoveMetadataTag
function FRigUnit_RemoveMetadataTag:get() end



---@class FRigUnit_RotationConstraint : FRigUnit_HighlevelBaseMutable
---@field Child FRigElementKey
---@field bMaintainOffset boolean
---@field Filter FFilterOptionPerAxis
---@field Parents TArray<FConstraintParent>
---@field AdvancedSettings FRigUnit_RotationConstraint_AdvancedSettings
---@field Weight float
FRigUnit_RotationConstraint = {}

---@return FRigUnit_RotationConstraint
function FRigUnit_RotationConstraint:get() end



---@class FRigUnit_RotationConstraintLocalSpaceOffset : FRigUnit_HighlevelBaseMutable
---@field Child FRigElementKey
---@field bMaintainOffset boolean
---@field Filter FFilterOptionPerAxis
---@field Parents TArray<FConstraintParent>
---@field AdvancedSettings FRigUnit_RotationConstraint_AdvancedSettings
---@field Weight float
---@field ChildCache FCachedRigElement
---@field ParentCaches TArray<FCachedRigElement>
FRigUnit_RotationConstraintLocalSpaceOffset = {}

---@return FRigUnit_RotationConstraintLocalSpaceOffset
function FRigUnit_RotationConstraintLocalSpaceOffset:get() end



---@class FRigUnit_RotationConstraint_AdvancedSettings
---@field InterpolationType EConstraintInterpType
---@field RotationOrderForFilter EEulerRotationOrder
FRigUnit_RotationConstraint_AdvancedSettings = {}

---@return FRigUnit_RotationConstraint_AdvancedSettings
function FRigUnit_RotationConstraint_AdvancedSettings:get() end



---@class FRigUnit_ScaleConstraint : FRigUnit_HighlevelBaseMutable
---@field Child FRigElementKey
---@field bMaintainOffset boolean
---@field Filter FFilterOptionPerAxis
---@field Parents TArray<FConstraintParent>
---@field Weight float
FRigUnit_ScaleConstraint = {}

---@return FRigUnit_ScaleConstraint
function FRigUnit_ScaleConstraint:get() end



---@class FRigUnit_ScaleConstraintLocalSpaceOffset : FRigUnit_HighlevelBaseMutable
---@field Child FRigElementKey
---@field bMaintainOffset boolean
---@field Filter FFilterOptionPerAxis
---@field Parents TArray<FConstraintParent>
---@field Weight float
---@field ChildCache FCachedRigElement
---@field ParentCaches TArray<FCachedRigElement>
FRigUnit_ScaleConstraintLocalSpaceOffset = {}

---@return FRigUnit_ScaleConstraintLocalSpaceOffset
function FRigUnit_ScaleConstraintLocalSpaceOffset:get() end



---@class FRigUnit_SecondsToFrames : FRigUnit_AnimBase
---@field Seconds float
---@field Frames float
FRigUnit_SecondsToFrames = {}

---@return FRigUnit_SecondsToFrames
function FRigUnit_SecondsToFrames:get() end



---@class FRigUnit_SendEvent : FRigUnitMutable
---@field Event ERigEvent
---@field Item FRigElementKey
---@field OffsetInSeconds float
---@field bEnable boolean
---@field bOnlyDuringInteraction boolean
FRigUnit_SendEvent = {}

---@return FRigUnit_SendEvent
function FRigUnit_SendEvent:get() end



---@class FRigUnit_SequenceAggregate : FRigUnit
---@field ExecuteContext FControlRigExecuteContext
---@field A FControlRigExecuteContext
---@field B FControlRigExecuteContext
FRigUnit_SequenceAggregate = {}

---@return FRigUnit_SequenceAggregate
function FRigUnit_SequenceAggregate:get() end



---@class FRigUnit_SequenceExecution : FRigUnit
---@field ExecuteContext FControlRigExecuteContext
---@field A FControlRigExecuteContext
---@field B FControlRigExecuteContext
---@field C FControlRigExecuteContext
---@field D FControlRigExecuteContext
FRigUnit_SequenceExecution = {}

---@return FRigUnit_SequenceExecution
function FRigUnit_SequenceExecution:get() end



---@class FRigUnit_SetAnimationChannelBase : FRigUnit_GetAnimationChannelBase
---@field ExecuteContext FControlRigExecuteContext
FRigUnit_SetAnimationChannelBase = {}

---@return FRigUnit_SetAnimationChannelBase
function FRigUnit_SetAnimationChannelBase:get() end



---@class FRigUnit_SetBoneInitialTransform : FRigUnitMutable
---@field bone FName
---@field Transform FTransform
---@field Result FTransform
---@field space EBoneGetterSetterMode
---@field bPropagateToChildren boolean
---@field CachedBone FCachedRigElement
FRigUnit_SetBoneInitialTransform = {}

---@return FRigUnit_SetBoneInitialTransform
function FRigUnit_SetBoneInitialTransform:get() end



---@class FRigUnit_SetBoneRotation : FRigUnitMutable
---@field bone FName
---@field Rotation FQuat
---@field space EBoneGetterSetterMode
---@field Weight float
---@field bPropagateToChildren boolean
---@field CachedBone FCachedRigElement
FRigUnit_SetBoneRotation = {}

---@return FRigUnit_SetBoneRotation
function FRigUnit_SetBoneRotation:get() end



---@class FRigUnit_SetBoneTransform : FRigUnitMutable
---@field bone FName
---@field Transform FTransform
---@field Result FTransform
---@field space EBoneGetterSetterMode
---@field Weight float
---@field bPropagateToChildren boolean
---@field CachedBone FCachedRigElement
FRigUnit_SetBoneTransform = {}

---@return FRigUnit_SetBoneTransform
function FRigUnit_SetBoneTransform:get() end



---@class FRigUnit_SetBoneTranslation : FRigUnitMutable
---@field bone FName
---@field Translation FVector
---@field space EBoneGetterSetterMode
---@field Weight float
---@field bPropagateToChildren boolean
---@field CachedBone FCachedRigElement
FRigUnit_SetBoneTranslation = {}

---@return FRigUnit_SetBoneTranslation
function FRigUnit_SetBoneTranslation:get() end



---@class FRigUnit_SetBoolAnimationChannel : FRigUnit_SetAnimationChannelBase
---@field Value boolean
FRigUnit_SetBoolAnimationChannel = {}

---@return FRigUnit_SetBoolAnimationChannel
function FRigUnit_SetBoolAnimationChannel:get() end



---@class FRigUnit_SetControlBool : FRigUnitMutable
---@field Control FName
---@field BoolValue boolean
---@field CachedControlIndex FCachedRigElement
FRigUnit_SetControlBool = {}

---@return FRigUnit_SetControlBool
function FRigUnit_SetControlBool:get() end



---@class FRigUnit_SetControlColor : FRigUnitMutable
---@field Control FName
---@field Color FLinearColor
---@field CachedControlIndex FCachedRigElement
FRigUnit_SetControlColor = {}

---@return FRigUnit_SetControlColor
function FRigUnit_SetControlColor:get() end



---@class FRigUnit_SetControlDrivenList : FRigUnitMutable
---@field Control FName
---@field Driven TArray<FRigElementKey>
---@field CachedControlIndex FCachedRigElement
FRigUnit_SetControlDrivenList = {}

---@return FRigUnit_SetControlDrivenList
function FRigUnit_SetControlDrivenList:get() end



---@class FRigUnit_SetControlFloat : FRigUnitMutable
---@field Control FName
---@field Weight float
---@field FloatValue float
---@field CachedControlIndex FCachedRigElement
FRigUnit_SetControlFloat = {}

---@return FRigUnit_SetControlFloat
function FRigUnit_SetControlFloat:get() end



---@class FRigUnit_SetControlInteger : FRigUnitMutable
---@field Control FName
---@field Weight int32
---@field IntegerValue int32
---@field CachedControlIndex FCachedRigElement
FRigUnit_SetControlInteger = {}

---@return FRigUnit_SetControlInteger
function FRigUnit_SetControlInteger:get() end



---@class FRigUnit_SetControlOffset : FRigUnitMutable
---@field Control FName
---@field Offset FTransform
---@field space EBoneGetterSetterMode
---@field CachedControlIndex FCachedRigElement
FRigUnit_SetControlOffset = {}

---@return FRigUnit_SetControlOffset
function FRigUnit_SetControlOffset:get() end



---@class FRigUnit_SetControlRotator : FRigUnitMutable
---@field Control FName
---@field Weight float
---@field Rotator FRotator
---@field space EBoneGetterSetterMode
---@field CachedControlIndex FCachedRigElement
FRigUnit_SetControlRotator = {}

---@return FRigUnit_SetControlRotator
function FRigUnit_SetControlRotator:get() end



---@class FRigUnit_SetControlTransform : FRigUnitMutable
---@field Control FName
---@field Weight float
---@field Transform FTransform
---@field space EBoneGetterSetterMode
---@field CachedControlIndex FCachedRigElement
FRigUnit_SetControlTransform = {}

---@return FRigUnit_SetControlTransform
function FRigUnit_SetControlTransform:get() end



---@class FRigUnit_SetControlVector : FRigUnitMutable
---@field Control FName
---@field Weight float
---@field Vector FVector
---@field space EBoneGetterSetterMode
---@field CachedControlIndex FCachedRigElement
FRigUnit_SetControlVector = {}

---@return FRigUnit_SetControlVector
function FRigUnit_SetControlVector:get() end



---@class FRigUnit_SetControlVector2D : FRigUnitMutable
---@field Control FName
---@field Weight float
---@field Vector FVector2D
---@field CachedControlIndex FCachedRigElement
FRigUnit_SetControlVector2D = {}

---@return FRigUnit_SetControlVector2D
function FRigUnit_SetControlVector2D:get() end



---@class FRigUnit_SetControlVisibility : FRigUnitMutable
---@field Item FRigElementKey
---@field Pattern FString
---@field bVisible boolean
---@field CachedControlIndices TArray<FCachedRigElement>
FRigUnit_SetControlVisibility = {}

---@return FRigUnit_SetControlVisibility
function FRigUnit_SetControlVisibility:get() end



---@class FRigUnit_SetCurveValue : FRigUnitMutable
---@field Curve FName
---@field Value float
---@field CachedCurveIndex FCachedRigElement
FRigUnit_SetCurveValue = {}

---@return FRigUnit_SetCurveValue
function FRigUnit_SetCurveValue:get() end



---@class FRigUnit_SetDefaultParent : FRigUnit_DynamicHierarchyBaseMutable
---@field Child FRigElementKey
---@field Parent FRigElementKey
FRigUnit_SetDefaultParent = {}

---@return FRigUnit_SetDefaultParent
function FRigUnit_SetDefaultParent:get() end



---@class FRigUnit_SetFloatAnimationChannel : FRigUnit_SetAnimationChannelBase
---@field Value float
FRigUnit_SetFloatAnimationChannel = {}

---@return FRigUnit_SetFloatAnimationChannel
function FRigUnit_SetFloatAnimationChannel:get() end



---@class FRigUnit_SetIntAnimationChannel : FRigUnit_SetAnimationChannelBase
---@field Value int32
FRigUnit_SetIntAnimationChannel = {}

---@return FRigUnit_SetIntAnimationChannel
function FRigUnit_SetIntAnimationChannel:get() end



---@class FRigUnit_SetMetadataTag : FRigUnitMutable
---@field Item FRigElementKey
---@field Tag FName
---@field CachedIndex FCachedRigElement
FRigUnit_SetMetadataTag = {}

---@return FRigUnit_SetMetadataTag
function FRigUnit_SetMetadataTag:get() end



---@class FRigUnit_SetMetadataTagArray : FRigUnitMutable
---@field Item FRigElementKey
---@field Tags TArray<FName>
---@field CachedIndex FCachedRigElement
FRigUnit_SetMetadataTagArray = {}

---@return FRigUnit_SetMetadataTagArray
function FRigUnit_SetMetadataTagArray:get() end



---@class FRigUnit_SetMultiControlBool : FRigUnitMutable
---@field Entries TArray<FRigUnit_SetMultiControlBool_Entry>
---@field CachedControlIndices TArray<FCachedRigElement>
FRigUnit_SetMultiControlBool = {}

---@return FRigUnit_SetMultiControlBool
function FRigUnit_SetMultiControlBool:get() end



---@class FRigUnit_SetMultiControlBool_Entry
---@field Control FName
---@field BoolValue boolean
FRigUnit_SetMultiControlBool_Entry = {}

---@return FRigUnit_SetMultiControlBool_Entry
function FRigUnit_SetMultiControlBool_Entry:get() end



---@class FRigUnit_SetMultiControlFloat : FRigUnitMutable
---@field Entries TArray<FRigUnit_SetMultiControlFloat_Entry>
---@field Weight float
---@field CachedControlIndices TArray<FCachedRigElement>
FRigUnit_SetMultiControlFloat = {}

---@return FRigUnit_SetMultiControlFloat
function FRigUnit_SetMultiControlFloat:get() end



---@class FRigUnit_SetMultiControlFloat_Entry
---@field Control FName
---@field FloatValue float
FRigUnit_SetMultiControlFloat_Entry = {}

---@return FRigUnit_SetMultiControlFloat_Entry
function FRigUnit_SetMultiControlFloat_Entry:get() end



---@class FRigUnit_SetMultiControlInteger : FRigUnitMutable
---@field Entries TArray<FRigUnit_SetMultiControlInteger_Entry>
---@field Weight float
---@field CachedControlIndices TArray<FCachedRigElement>
FRigUnit_SetMultiControlInteger = {}

---@return FRigUnit_SetMultiControlInteger
function FRigUnit_SetMultiControlInteger:get() end



---@class FRigUnit_SetMultiControlInteger_Entry
---@field Control FName
---@field IntegerValue int32
FRigUnit_SetMultiControlInteger_Entry = {}

---@return FRigUnit_SetMultiControlInteger_Entry
function FRigUnit_SetMultiControlInteger_Entry:get() end



---@class FRigUnit_SetMultiControlRotator : FRigUnitMutable
---@field Entries TArray<FRigUnit_SetMultiControlRotator_Entry>
---@field Weight float
---@field CachedControlIndices TArray<FCachedRigElement>
FRigUnit_SetMultiControlRotator = {}

---@return FRigUnit_SetMultiControlRotator
function FRigUnit_SetMultiControlRotator:get() end



---@class FRigUnit_SetMultiControlRotator_Entry
---@field Control FName
---@field Rotator FRotator
---@field space EBoneGetterSetterMode
FRigUnit_SetMultiControlRotator_Entry = {}

---@return FRigUnit_SetMultiControlRotator_Entry
function FRigUnit_SetMultiControlRotator_Entry:get() end



---@class FRigUnit_SetMultiControlVector2D : FRigUnitMutable
---@field Entries TArray<FRigUnit_SetMultiControlVector2D_Entry>
---@field Weight float
---@field CachedControlIndices TArray<FCachedRigElement>
FRigUnit_SetMultiControlVector2D = {}

---@return FRigUnit_SetMultiControlVector2D
function FRigUnit_SetMultiControlVector2D:get() end



---@class FRigUnit_SetMultiControlVector2D_Entry
---@field Control FName
---@field Vector FVector2D
FRigUnit_SetMultiControlVector2D_Entry = {}

---@return FRigUnit_SetMultiControlVector2D_Entry
function FRigUnit_SetMultiControlVector2D_Entry:get() end



---@class FRigUnit_SetRelativeBoneTransform : FRigUnitMutable
---@field bone FName
---@field space FName
---@field Transform FTransform
---@field Weight float
---@field bPropagateToChildren boolean
---@field CachedBone FCachedRigElement
---@field CachedSpaceIndex FCachedRigElement
FRigUnit_SetRelativeBoneTransform = {}

---@return FRigUnit_SetRelativeBoneTransform
function FRigUnit_SetRelativeBoneTransform:get() end



---@class FRigUnit_SetRelativeRotationForItem : FRigUnitMutable
---@field Child FRigElementKey
---@field Parent FRigElementKey
---@field bParentInitial boolean
---@field Value FQuat
---@field Weight float
---@field bPropagateToChildren boolean
---@field CachedChild FCachedRigElement
---@field CachedParent FCachedRigElement
FRigUnit_SetRelativeRotationForItem = {}

---@return FRigUnit_SetRelativeRotationForItem
function FRigUnit_SetRelativeRotationForItem:get() end



---@class FRigUnit_SetRelativeTransformForItem : FRigUnitMutable
---@field Child FRigElementKey
---@field Parent FRigElementKey
---@field bParentInitial boolean
---@field Value FTransform
---@field Weight float
---@field bPropagateToChildren boolean
---@field CachedChild FCachedRigElement
---@field CachedParent FCachedRigElement
FRigUnit_SetRelativeTransformForItem = {}

---@return FRigUnit_SetRelativeTransformForItem
function FRigUnit_SetRelativeTransformForItem:get() end



---@class FRigUnit_SetRelativeTranslationForItem : FRigUnitMutable
---@field Child FRigElementKey
---@field Parent FRigElementKey
---@field bParentInitial boolean
---@field Value FVector
---@field Weight float
---@field bPropagateToChildren boolean
---@field CachedChild FCachedRigElement
---@field CachedParent FCachedRigElement
FRigUnit_SetRelativeTranslationForItem = {}

---@return FRigUnit_SetRelativeTranslationForItem
function FRigUnit_SetRelativeTranslationForItem:get() end



---@class FRigUnit_SetRotation : FRigUnitMutable
---@field Item FRigElementKey
---@field space EBoneGetterSetterMode
---@field bInitial boolean
---@field Value FQuat
---@field Weight float
---@field bPropagateToChildren boolean
---@field CachedIndex FCachedRigElement
FRigUnit_SetRotation = {}

---@return FRigUnit_SetRotation
function FRigUnit_SetRotation:get() end



---@class FRigUnit_SetRotatorAnimationChannel : FRigUnit_SetAnimationChannelBase
---@field Value FRotator
FRigUnit_SetRotatorAnimationChannel = {}

---@return FRigUnit_SetRotatorAnimationChannel
function FRigUnit_SetRotatorAnimationChannel:get() end



---@class FRigUnit_SetScale : FRigUnitMutable
---@field Item FRigElementKey
---@field space EBoneGetterSetterMode
---@field bInitial boolean
---@field Scale FVector
---@field Weight float
---@field bPropagateToChildren boolean
---@field CachedIndex FCachedRigElement
FRigUnit_SetScale = {}

---@return FRigUnit_SetScale
function FRigUnit_SetScale:get() end



---@class FRigUnit_SetShapeTransform : FRigUnitMutable
---@field Control FName
---@field Transform FTransform
---@field CachedControlIndex FCachedRigElement
FRigUnit_SetShapeTransform = {}

---@return FRigUnit_SetShapeTransform
function FRigUnit_SetShapeTransform:get() end



---@class FRigUnit_SetSpaceInitialTransform : FRigUnitMutable
---@field SpaceName FName
---@field Transform FTransform
---@field Result FTransform
---@field space EBoneGetterSetterMode
---@field CachedSpaceIndex FCachedRigElement
FRigUnit_SetSpaceInitialTransform = {}

---@return FRigUnit_SetSpaceInitialTransform
function FRigUnit_SetSpaceInitialTransform:get() end



---@class FRigUnit_SetSpaceTransform : FRigUnitMutable
---@field space FName
---@field Weight float
---@field Transform FTransform
---@field SpaceType EBoneGetterSetterMode
---@field CachedSpaceIndex FCachedRigElement
FRigUnit_SetSpaceTransform = {}

---@return FRigUnit_SetSpaceTransform
function FRigUnit_SetSpaceTransform:get() end



---@class FRigUnit_SetTransform : FRigUnitMutable
---@field Item FRigElementKey
---@field space EBoneGetterSetterMode
---@field bInitial boolean
---@field Value FTransform
---@field Weight float
---@field bPropagateToChildren boolean
---@field CachedIndex FCachedRigElement
FRigUnit_SetTransform = {}

---@return FRigUnit_SetTransform
function FRigUnit_SetTransform:get() end



---@class FRigUnit_SetTransformAnimationChannel : FRigUnit_SetAnimationChannelBase
---@field Value FTransform
FRigUnit_SetTransformAnimationChannel = {}

---@return FRigUnit_SetTransformAnimationChannel
function FRigUnit_SetTransformAnimationChannel:get() end



---@class FRigUnit_SetTransformArray : FRigUnitMutable
---@field Items FRigElementKeyCollection
---@field space EBoneGetterSetterMode
---@field bInitial boolean
---@field Transforms TArray<FTransform>
---@field Weight float
---@field bPropagateToChildren boolean
---@field CachedIndex TArray<FCachedRigElement>
FRigUnit_SetTransformArray = {}

---@return FRigUnit_SetTransformArray
function FRigUnit_SetTransformArray:get() end



---@class FRigUnit_SetTransformItemArray : FRigUnitMutable
---@field Items TArray<FRigElementKey>
---@field space EBoneGetterSetterMode
---@field bInitial boolean
---@field Transforms TArray<FTransform>
---@field Weight float
---@field bPropagateToChildren boolean
---@field CachedIndex TArray<FCachedRigElement>
FRigUnit_SetTransformItemArray = {}

---@return FRigUnit_SetTransformItemArray
function FRigUnit_SetTransformItemArray:get() end



---@class FRigUnit_SetTranslation : FRigUnitMutable
---@field Item FRigElementKey
---@field space EBoneGetterSetterMode
---@field bInitial boolean
---@field Value FVector
---@field Weight float
---@field bPropagateToChildren boolean
---@field CachedIndex FCachedRigElement
FRigUnit_SetTranslation = {}

---@return FRigUnit_SetTranslation
function FRigUnit_SetTranslation:get() end



---@class FRigUnit_SetVector2DAnimationChannel : FRigUnit_SetAnimationChannelBase
---@field Value FVector2D
FRigUnit_SetVector2DAnimationChannel = {}

---@return FRigUnit_SetVector2DAnimationChannel
function FRigUnit_SetVector2DAnimationChannel:get() end



---@class FRigUnit_SetVectorAnimationChannel : FRigUnit_SetAnimationChannelBase
---@field Value FVector
FRigUnit_SetVectorAnimationChannel = {}

---@return FRigUnit_SetVectorAnimationChannel
function FRigUnit_SetVectorAnimationChannel:get() end



---@class FRigUnit_SimBase : FRigUnit
FRigUnit_SimBase = {}

---@return FRigUnit_SimBase
function FRigUnit_SimBase:get() end


---@class FRigUnit_SimBaseMutable : FRigUnitMutable
FRigUnit_SimBaseMutable = {}

---@return FRigUnit_SimBaseMutable
function FRigUnit_SimBaseMutable:get() end


---@class FRigUnit_SlideChain : FRigUnit_HighlevelBaseMutable
---@field StartBone FName
---@field EndBone FName
---@field SlideAmount float
---@field bPropagateToChildren boolean
---@field WorkData FRigUnit_SlideChain_WorkData
FRigUnit_SlideChain = {}

---@return FRigUnit_SlideChain
function FRigUnit_SlideChain:get() end



---@class FRigUnit_SlideChainItemArray : FRigUnit_HighlevelBaseMutable
---@field Items TArray<FRigElementKey>
---@field SlideAmount float
---@field bPropagateToChildren boolean
---@field WorkData FRigUnit_SlideChain_WorkData
FRigUnit_SlideChainItemArray = {}

---@return FRigUnit_SlideChainItemArray
function FRigUnit_SlideChainItemArray:get() end



---@class FRigUnit_SlideChainPerItem : FRigUnit_HighlevelBaseMutable
---@field Items FRigElementKeyCollection
---@field SlideAmount float
---@field bPropagateToChildren boolean
---@field WorkData FRigUnit_SlideChain_WorkData
FRigUnit_SlideChainPerItem = {}

---@return FRigUnit_SlideChainPerItem
function FRigUnit_SlideChainPerItem:get() end



---@class FRigUnit_SlideChain_WorkData
---@field ChainLength float
---@field ItemSegments TArray<float>
---@field CachedItems TArray<FCachedRigElement>
---@field Transforms TArray<FTransform>
---@field BlendedTransforms TArray<FTransform>
FRigUnit_SlideChain_WorkData = {}

---@return FRigUnit_SlideChain_WorkData
function FRigUnit_SlideChain_WorkData:get() end



---@class FRigUnit_SpaceName : FRigUnit
---@field space FName
FRigUnit_SpaceName = {}

---@return FRigUnit_SpaceName
function FRigUnit_SpaceName:get() end



---@class FRigUnit_SphereTraceByObjectTypes : FRigUnit
---@field Start FVector
---@field End FVector
---@field ObjectTypes TArray<EObjectTypeQuery>
---@field Radius float
---@field bHit boolean
---@field HitLocation FVector
---@field HitNormal FVector
FRigUnit_SphereTraceByObjectTypes = {}

---@return FRigUnit_SphereTraceByObjectTypes
function FRigUnit_SphereTraceByObjectTypes:get() end



---@class FRigUnit_SphereTraceByTraceChannel : FRigUnit
---@field Start FVector
---@field End FVector
---@field TraceChannel ETraceTypeQuery
---@field Radius float
---@field bHit boolean
---@field HitLocation FVector
---@field HitNormal FVector
FRigUnit_SphereTraceByTraceChannel = {}

---@return FRigUnit_SphereTraceByTraceChannel
function FRigUnit_SphereTraceByTraceChannel:get() end



---@class FRigUnit_SphereTraceWorld : FRigUnit
---@field Start FVector
---@field End FVector
---@field Channel ECollisionChannel
---@field Radius float
---@field bHit boolean
---@field HitLocation FVector
---@field HitNormal FVector
FRigUnit_SphereTraceWorld = {}

---@return FRigUnit_SphereTraceWorld
function FRigUnit_SphereTraceWorld:get() end



---@class FRigUnit_SphericalPoseReader : FRigUnit_HighlevelBaseMutable
---@field OutputParam float
---@field DriverItem FRigElementKey
---@field DriverAxis FVector
---@field RotationOffset FVector
---@field ActiveRegionSize float
---@field ActiveRegionScaleFactors FRegionScaleFactors
---@field FalloffSize float
---@field FalloffRegionScaleFactors FRegionScaleFactors
---@field FlipWidthScaling boolean
---@field FlipHeightScaling boolean
---@field OptionalParentItem FRigElementKey
---@field Debug FSphericalPoseReaderDebugSettings
---@field InnerRegion FSphericalRegion
---@field OuterRegion FSphericalRegion
---@field DriverNormal FVector
---@field Driver2D FVector
---@field DriverCache FCachedRigElement
---@field OptionalParentCache FCachedRigElement
---@field LocalDriverTransformInit FTransform
---@field CachedRotationOffset FVector
---@field bCachedInitTransforms boolean
FRigUnit_SphericalPoseReader = {}

---@return FRigUnit_SphericalPoseReader
function FRigUnit_SphericalPoseReader:get() end



---@class FRigUnit_SpringIK : FRigUnit_HighlevelBaseMutable
---@field StartBone FName
---@field EndBone FName
---@field HierarchyStrength float
---@field EffectorStrength float
---@field EffectorRatio float
---@field RootStrength float
---@field RootRatio float
---@field Damping float
---@field PoleVector FVector
---@field bFlipPolePlane boolean
---@field PoleVectorKind EControlRigVectorKind
---@field PoleVectorSpace FName
---@field PrimaryAxis FVector
---@field SecondaryAxis FVector
---@field bLiveSimulation boolean
---@field Iterations int32
---@field bLimitLocalPosition boolean
---@field bPropagateToChildren boolean
---@field DebugSettings FRigUnit_SpringIK_DebugSettings
---@field WorkData FRigUnit_SpringIK_WorkData
FRigUnit_SpringIK = {}

---@return FRigUnit_SpringIK
function FRigUnit_SpringIK:get() end



---@class FRigUnit_SpringIK_DebugSettings
---@field bEnabled boolean
---@field Scale float
---@field Color FLinearColor
---@field WorldOffset FTransform
FRigUnit_SpringIK_DebugSettings = {}

---@return FRigUnit_SpringIK_DebugSettings
function FRigUnit_SpringIK_DebugSettings:get() end



---@class FRigUnit_SpringIK_WorkData
---@field CachedBones TArray<FCachedRigElement>
---@field CachedPoleVector FCachedRigElement
---@field Transforms TArray<FTransform>
---@field Simulation FCRSimPointContainer
FRigUnit_SpringIK_WorkData = {}

---@return FRigUnit_SpringIK_WorkData
function FRigUnit_SpringIK_WorkData:get() end



---@class FRigUnit_SpringInterp : FRigUnit_SimBase
---@field Current float
---@field Target float
---@field Stiffness float
---@field CriticalDamping float
---@field Mass float
---@field Result float
---@field SpringState FFloatSpringState
FRigUnit_SpringInterp = {}

---@return FRigUnit_SpringInterp
function FRigUnit_SpringInterp:get() end



---@class FRigUnit_SpringInterpQuaternionV2 : FRigUnit_SimBase
---@field Target FQuat
---@field Strength float
---@field CriticalDamping float
---@field Torque FVector
---@field bUseCurrentInput boolean
---@field Current FQuat
---@field TargetVelocityAmount float
---@field bInitializeFromTarget boolean
---@field Result FQuat
---@field AngularVelocity FVector
---@field SimulatedResult FQuat
---@field SpringState FQuaternionSpringState
FRigUnit_SpringInterpQuaternionV2 = {}

---@return FRigUnit_SpringInterpQuaternionV2
function FRigUnit_SpringInterpQuaternionV2:get() end



---@class FRigUnit_SpringInterpV2 : FRigUnit_SimBase
---@field Target float
---@field Strength float
---@field CriticalDamping float
---@field Force float
---@field bUseCurrentInput boolean
---@field Current float
---@field TargetVelocityAmount float
---@field bInitializeFromTarget boolean
---@field Result float
---@field Velocity float
---@field SimulatedResult float
---@field SpringState FFloatSpringState
FRigUnit_SpringInterpV2 = {}

---@return FRigUnit_SpringInterpV2
function FRigUnit_SpringInterpV2:get() end



---@class FRigUnit_SpringInterpVector : FRigUnit_SimBase
---@field Current FVector
---@field Target FVector
---@field Stiffness float
---@field CriticalDamping float
---@field Mass float
---@field Result FVector
---@field SpringState FVectorSpringState
FRigUnit_SpringInterpVector = {}

---@return FRigUnit_SpringInterpVector
function FRigUnit_SpringInterpVector:get() end



---@class FRigUnit_SpringInterpVectorV2 : FRigUnit_SimBase
---@field Target FVector
---@field Strength float
---@field CriticalDamping float
---@field Force FVector
---@field bUseCurrentInput boolean
---@field Current FVector
---@field TargetVelocityAmount float
---@field bInitializeFromTarget boolean
---@field Result FVector
---@field Velocity FVector
---@field SimulatedResult FVector
---@field SpringState FVectorSpringState
FRigUnit_SpringInterpVectorV2 = {}

---@return FRigUnit_SpringInterpVectorV2
function FRigUnit_SpringInterpVectorV2:get() end



---@class FRigUnit_StartProfilingTimer : FRigUnit_DebugBaseMutable
FRigUnit_StartProfilingTimer = {}

---@return FRigUnit_StartProfilingTimer
function FRigUnit_StartProfilingTimer:get() end


---@class FRigUnit_StartsWith : FRigUnit_NameBase
---@field Name FName
---@field Start FName
---@field Result boolean
FRigUnit_StartsWith = {}

---@return FRigUnit_StartsWith
function FRigUnit_StartsWith:get() end



---@class FRigUnit_StringBase : FRigUnit
FRigUnit_StringBase = {}

---@return FRigUnit_StringBase
function FRigUnit_StringBase:get() end


---@class FRigUnit_StringConcat : FRigUnit_StringBase
---@field A FString
---@field B FString
---@field Result FString
FRigUnit_StringConcat = {}

---@return FRigUnit_StringConcat
function FRigUnit_StringConcat:get() end



---@class FRigUnit_StringContains : FRigUnit_StringBase
---@field Name FString
---@field Search FString
---@field Result boolean
FRigUnit_StringContains = {}

---@return FRigUnit_StringContains
function FRigUnit_StringContains:get() end



---@class FRigUnit_StringEndsWith : FRigUnit_StringBase
---@field Name FString
---@field Ending FString
---@field Result boolean
FRigUnit_StringEndsWith = {}

---@return FRigUnit_StringEndsWith
function FRigUnit_StringEndsWith:get() end



---@class FRigUnit_StringFind : FRigUnit_StringBase
---@field Value FString
---@field Search FString
---@field Found boolean
---@field Index int32
FRigUnit_StringFind = {}

---@return FRigUnit_StringFind
function FRigUnit_StringFind:get() end



---@class FRigUnit_StringJoin : FRigUnit_StringBase
---@field Values TArray<FString>
---@field Separator FString
---@field Result FString
FRigUnit_StringJoin = {}

---@return FRigUnit_StringJoin
function FRigUnit_StringJoin:get() end



---@class FRigUnit_StringLeft : FRigUnit_StringBase
---@field Value FString
---@field Count int32
---@field Result FString
FRigUnit_StringLeft = {}

---@return FRigUnit_StringLeft
function FRigUnit_StringLeft:get() end



---@class FRigUnit_StringLength : FRigUnit_StringBase
---@field Value FString
---@field Length int32
FRigUnit_StringLength = {}

---@return FRigUnit_StringLength
function FRigUnit_StringLength:get() end



---@class FRigUnit_StringMiddle : FRigUnit_StringBase
---@field Value FString
---@field Start int32
---@field Count int32
---@field Result FString
FRigUnit_StringMiddle = {}

---@return FRigUnit_StringMiddle
function FRigUnit_StringMiddle:get() end



---@class FRigUnit_StringPadInteger : FRigUnit_StringBase
---@field Value int32
---@field Digits int32
---@field Result FString
FRigUnit_StringPadInteger = {}

---@return FRigUnit_StringPadInteger
function FRigUnit_StringPadInteger:get() end



---@class FRigUnit_StringReplace : FRigUnit_StringBase
---@field Name FString
---@field Old FString
---@field New FString
---@field Result FString
FRigUnit_StringReplace = {}

---@return FRigUnit_StringReplace
function FRigUnit_StringReplace:get() end



---@class FRigUnit_StringReverse : FRigUnit_StringBase
---@field Value FString
---@field Reverse FString
FRigUnit_StringReverse = {}

---@return FRigUnit_StringReverse
function FRigUnit_StringReverse:get() end



---@class FRigUnit_StringRight : FRigUnit_StringBase
---@field Value FString
---@field Count int32
---@field Result FString
FRigUnit_StringRight = {}

---@return FRigUnit_StringRight
function FRigUnit_StringRight:get() end



---@class FRigUnit_StringSplit : FRigUnit_StringBase
---@field Value FString
---@field Separator FString
---@field Result TArray<FString>
FRigUnit_StringSplit = {}

---@return FRigUnit_StringSplit
function FRigUnit_StringSplit:get() end



---@class FRigUnit_StringStartsWith : FRigUnit_StringBase
---@field Name FString
---@field Start FString
---@field Result boolean
FRigUnit_StringStartsWith = {}

---@return FRigUnit_StringStartsWith
function FRigUnit_StringStartsWith:get() end



---@class FRigUnit_StringToLowercase : FRigUnit_StringBase
---@field Value FString
---@field Result FString
FRigUnit_StringToLowercase = {}

---@return FRigUnit_StringToLowercase
function FRigUnit_StringToLowercase:get() end



---@class FRigUnit_StringToUppercase : FRigUnit_StringBase
---@field Value FString
---@field Result FString
FRigUnit_StringToUppercase = {}

---@return FRigUnit_StringToUppercase
function FRigUnit_StringToUppercase:get() end



---@class FRigUnit_StringTrimWhitespace : FRigUnit_StringBase
---@field Value FString
---@field Result FString
FRigUnit_StringTrimWhitespace = {}

---@return FRigUnit_StringTrimWhitespace
function FRigUnit_StringTrimWhitespace:get() end



---@class FRigUnit_StringTruncate : FRigUnit_StringBase
---@field Name FString
---@field Count int32
---@field FromEnd boolean
---@field Remainder FString
---@field Chopped FString
FRigUnit_StringTruncate = {}

---@return FRigUnit_StringTruncate
function FRigUnit_StringTruncate:get() end



---@class FRigUnit_Subtract_FloatFloat : FRigUnit_BinaryFloatOp
FRigUnit_Subtract_FloatFloat = {}

---@return FRigUnit_Subtract_FloatFloat
function FRigUnit_Subtract_FloatFloat:get() end


---@class FRigUnit_Subtract_VectorVector : FRigUnit_BinaryVectorOp
FRigUnit_Subtract_VectorVector = {}

---@return FRigUnit_Subtract_VectorVector
function FRigUnit_Subtract_VectorVector:get() end


---@class FRigUnit_SwitchParent : FRigUnit_DynamicHierarchyBaseMutable
---@field Mode ERigSwitchParentMode
---@field Child FRigElementKey
---@field Parent FRigElementKey
---@field bMaintainGlobal boolean
FRigUnit_SwitchParent = {}

---@return FRigUnit_SwitchParent
function FRigUnit_SwitchParent:get() end



---@class FRigUnit_TimeLoop : FRigUnit_SimBase
---@field Speed float
---@field Duration float
---@field Normalize boolean
---@field Absolute float
---@field Relative float
---@field FlipFlop float
---@field Even boolean
---@field AccumulatedAbsolute float
---@field AccumulatedRelative float
---@field NumIterations int32
FRigUnit_TimeLoop = {}

---@return FRigUnit_TimeLoop
function FRigUnit_TimeLoop:get() end



---@class FRigUnit_TimeOffsetFloat : FRigUnit_SimBase
---@field Value float
---@field SecondsAgo float
---@field BufferSize int32
---@field TimeRange float
---@field Result float
---@field Buffer TArray<float>
---@field DeltaTimes TArray<float>
---@field LastInsertIndex int32
---@field UpperBound int32
FRigUnit_TimeOffsetFloat = {}

---@return FRigUnit_TimeOffsetFloat
function FRigUnit_TimeOffsetFloat:get() end



---@class FRigUnit_TimeOffsetTransform : FRigUnit_SimBase
---@field Value FTransform
---@field SecondsAgo float
---@field BufferSize int32
---@field TimeRange float
---@field Result FTransform
---@field Buffer TArray<FTransform>
---@field DeltaTimes TArray<float>
---@field LastInsertIndex int32
---@field UpperBound int32
FRigUnit_TimeOffsetTransform = {}

---@return FRigUnit_TimeOffsetTransform
function FRigUnit_TimeOffsetTransform:get() end



---@class FRigUnit_TimeOffsetVector : FRigUnit_SimBase
---@field Value FVector
---@field SecondsAgo float
---@field BufferSize int32
---@field TimeRange float
---@field Result FVector
---@field Buffer TArray<FVector>
---@field DeltaTimes TArray<float>
---@field LastInsertIndex int32
---@field UpperBound int32
FRigUnit_TimeOffsetVector = {}

---@return FRigUnit_TimeOffsetVector
function FRigUnit_TimeOffsetVector:get() end



---@class FRigUnit_Timeline : FRigUnit_SimBase
---@field Speed float
---@field Time float
---@field AccumulatedValue float
FRigUnit_Timeline = {}

---@return FRigUnit_Timeline
function FRigUnit_Timeline:get() end



---@class FRigUnit_ToRigSpace_Location : FRigUnit
---@field Value FVector
---@field Global FVector
FRigUnit_ToRigSpace_Location = {}

---@return FRigUnit_ToRigSpace_Location
function FRigUnit_ToRigSpace_Location:get() end



---@class FRigUnit_ToRigSpace_Rotation : FRigUnit
---@field Value FQuat
---@field Global FQuat
FRigUnit_ToRigSpace_Rotation = {}

---@return FRigUnit_ToRigSpace_Rotation
function FRigUnit_ToRigSpace_Rotation:get() end



---@class FRigUnit_ToRigSpace_Transform : FRigUnit
---@field Value FTransform
---@field Global FTransform
FRigUnit_ToRigSpace_Transform = {}

---@return FRigUnit_ToRigSpace_Transform
function FRigUnit_ToRigSpace_Transform:get() end



---@class FRigUnit_ToSwingAndTwist : FRigUnit
---@field Input FQuat
---@field TwistAxis FVector
---@field Swing FQuat
---@field Twist FQuat
FRigUnit_ToSwingAndTwist = {}

---@return FRigUnit_ToSwingAndTwist
function FRigUnit_ToSwingAndTwist:get() end



---@class FRigUnit_ToWorldSpace_Location : FRigUnit
---@field Value FVector
---@field World FVector
FRigUnit_ToWorldSpace_Location = {}

---@return FRigUnit_ToWorldSpace_Location
function FRigUnit_ToWorldSpace_Location:get() end



---@class FRigUnit_ToWorldSpace_Rotation : FRigUnit
---@field Value FQuat
---@field World FQuat
FRigUnit_ToWorldSpace_Rotation = {}

---@return FRigUnit_ToWorldSpace_Rotation
function FRigUnit_ToWorldSpace_Rotation:get() end



---@class FRigUnit_ToWorldSpace_Transform : FRigUnit
---@field Value FTransform
---@field World FTransform
FRigUnit_ToWorldSpace_Transform = {}

---@return FRigUnit_ToWorldSpace_Transform
function FRigUnit_ToWorldSpace_Transform:get() end



---@class FRigUnit_TransformConstraint : FRigUnit_HighlevelBaseMutable
---@field bone FName
---@field BaseTransformSpace ETransformSpaceMode
---@field BaseTransform FTransform
---@field BaseBone FName
---@field Targets TArray<FConstraintTarget>
---@field bUseInitialTransforms boolean
---@field WorkData FRigUnit_TransformConstraint_WorkData
FRigUnit_TransformConstraint = {}

---@return FRigUnit_TransformConstraint
function FRigUnit_TransformConstraint:get() end



---@class FRigUnit_TransformConstraintPerItem : FRigUnit_HighlevelBaseMutable
---@field Item FRigElementKey
---@field BaseTransformSpace ETransformSpaceMode
---@field BaseTransform FTransform
---@field BaseItem FRigElementKey
---@field Targets TArray<FConstraintTarget>
---@field bUseInitialTransforms boolean
---@field WorkData FRigUnit_TransformConstraint_WorkData
FRigUnit_TransformConstraintPerItem = {}

---@return FRigUnit_TransformConstraintPerItem
function FRigUnit_TransformConstraintPerItem:get() end



---@class FRigUnit_TransformConstraint_WorkData
---@field ConstraintData TArray<FConstraintData>
---@field ConstraintDataToTargets TMap<int32, int32>
FRigUnit_TransformConstraint_WorkData = {}

---@return FRigUnit_TransformConstraint_WorkData
function FRigUnit_TransformConstraint_WorkData:get() end



---@class FRigUnit_TwistBones : FRigUnit_HighlevelBaseMutable
---@field StartBone FName
---@field EndBone FName
---@field TwistAxis FVector
---@field PoleAxis FVector
---@field TwistEaseType EControlRigAnimEasingType
---@field Weight float
---@field bPropagateToChildren boolean
---@field WorkData FRigUnit_TwistBones_WorkData
FRigUnit_TwistBones = {}

---@return FRigUnit_TwistBones
function FRigUnit_TwistBones:get() end



---@class FRigUnit_TwistBonesPerItem : FRigUnit_HighlevelBaseMutable
---@field Items FRigElementKeyCollection
---@field TwistAxis FVector
---@field PoleAxis FVector
---@field TwistEaseType EControlRigAnimEasingType
---@field Weight float
---@field bPropagateToChildren boolean
---@field WorkData FRigUnit_TwistBones_WorkData
FRigUnit_TwistBonesPerItem = {}

---@return FRigUnit_TwistBonesPerItem
function FRigUnit_TwistBonesPerItem:get() end



---@class FRigUnit_TwistBones_WorkData
---@field CachedItems TArray<FCachedRigElement>
---@field ItemRatios TArray<float>
---@field ItemTransforms TArray<FTransform>
FRigUnit_TwistBones_WorkData = {}

---@return FRigUnit_TwistBones_WorkData
function FRigUnit_TwistBones_WorkData:get() end



---@class FRigUnit_TwoBoneIKFK : FRigUnitMutable
---@field StartJoint FName
---@field EndJoint FName
---@field PoleTarget FVector
---@field Spin float
---@field EndEffector FTransform
---@field IKBlend float
---@field StartJointFKTransform FTransform
---@field MidJointFKTransform FTransform
---@field EndJointFKTransform FTransform
---@field PreviousFKIKBlend float
---@field StartJointIKTransform FTransform
---@field MidJointIKTransform FTransform
---@field EndJointIKTransform FTransform
---@field StartJointIndex int32
---@field MidJointIndex int32
---@field EndJointIndex int32
---@field UpperLimbLength float
---@field LowerLimbLength float
FRigUnit_TwoBoneIKFK = {}

---@return FRigUnit_TwoBoneIKFK
function FRigUnit_TwoBoneIKFK:get() end



---@class FRigUnit_TwoBoneIKSimple : FRigUnit_HighlevelBaseMutable
---@field BoneA FName
---@field BoneB FName
---@field EffectorBone FName
---@field Effector FTransform
---@field PrimaryAxis FVector
---@field SecondaryAxis FVector
---@field SecondaryAxisWeight float
---@field PoleVector FVector
---@field PoleVectorKind EControlRigVectorKind
---@field PoleVectorSpace FName
---@field bEnableStretch boolean
---@field StretchStartRatio float
---@field StretchMaximumRatio float
---@field Weight float
---@field BoneALength float
---@field BoneBLength float
---@field bPropagateToChildren boolean
---@field DebugSettings FRigUnit_TwoBoneIKSimple_DebugSettings
---@field CachedBoneAIndex FCachedRigElement
---@field CachedBoneBIndex FCachedRigElement
---@field CachedEffectorBoneIndex FCachedRigElement
---@field CachedPoleVectorSpaceIndex FCachedRigElement
FRigUnit_TwoBoneIKSimple = {}

---@return FRigUnit_TwoBoneIKSimple
function FRigUnit_TwoBoneIKSimple:get() end



---@class FRigUnit_TwoBoneIKSimplePerItem : FRigUnit_HighlevelBaseMutable
---@field ItemA FRigElementKey
---@field ItemB FRigElementKey
---@field EffectorItem FRigElementKey
---@field Effector FTransform
---@field PrimaryAxis FVector
---@field SecondaryAxis FVector
---@field SecondaryAxisWeight float
---@field PoleVector FVector
---@field PoleVectorKind EControlRigVectorKind
---@field PoleVectorSpace FRigElementKey
---@field bEnableStretch boolean
---@field StretchStartRatio float
---@field StretchMaximumRatio float
---@field Weight float
---@field ItemALength float
---@field ItemBLength float
---@field bPropagateToChildren boolean
---@field DebugSettings FRigUnit_TwoBoneIKSimple_DebugSettings
---@field CachedItemAIndex FCachedRigElement
---@field CachedItemBIndex FCachedRigElement
---@field CachedEffectorItemIndex FCachedRigElement
---@field CachedPoleVectorSpaceIndex FCachedRigElement
FRigUnit_TwoBoneIKSimplePerItem = {}

---@return FRigUnit_TwoBoneIKSimplePerItem
function FRigUnit_TwoBoneIKSimplePerItem:get() end



---@class FRigUnit_TwoBoneIKSimpleTransforms : FRigUnit_HighlevelBase
---@field Root FTransform
---@field PoleVector FVector
---@field Effector FTransform
---@field PrimaryAxis FVector
---@field SecondaryAxis FVector
---@field SecondaryAxisWeight float
---@field bEnableStretch boolean
---@field StretchStartRatio float
---@field StretchMaximumRatio float
---@field BoneALength float
---@field BoneBLength float
---@field Elbow FTransform
FRigUnit_TwoBoneIKSimpleTransforms = {}

---@return FRigUnit_TwoBoneIKSimpleTransforms
function FRigUnit_TwoBoneIKSimpleTransforms:get() end



---@class FRigUnit_TwoBoneIKSimpleVectors : FRigUnit_HighlevelBase
---@field Root FVector
---@field PoleVector FVector
---@field Effector FVector
---@field bEnableStretch boolean
---@field StretchStartRatio float
---@field StretchMaximumRatio float
---@field BoneALength float
---@field BoneBLength float
---@field Elbow FVector
FRigUnit_TwoBoneIKSimpleVectors = {}

---@return FRigUnit_TwoBoneIKSimpleVectors
function FRigUnit_TwoBoneIKSimpleVectors:get() end



---@class FRigUnit_TwoBoneIKSimple_DebugSettings
---@field bEnabled boolean
---@field Scale float
---@field WorldOffset FTransform
FRigUnit_TwoBoneIKSimple_DebugSettings = {}

---@return FRigUnit_TwoBoneIKSimple_DebugSettings
function FRigUnit_TwoBoneIKSimple_DebugSettings:get() end



---@class FRigUnit_UnaryQuaternionOp : FRigUnit
---@field Argument FQuat
---@field Result FQuat
FRigUnit_UnaryQuaternionOp = {}

---@return FRigUnit_UnaryQuaternionOp
function FRigUnit_UnaryQuaternionOp:get() end



---@class FRigUnit_UnsetCurveValue : FRigUnitMutable
---@field Curve FName
---@field CachedCurveIndex FCachedRigElement
FRigUnit_UnsetCurveValue = {}

---@return FRigUnit_UnsetCurveValue
function FRigUnit_UnsetCurveValue:get() end



---@class FRigUnit_UserDefinedEvent : FRigUnit
---@field ExecuteContext FControlRigExecuteContext
---@field EventName FName
FRigUnit_UserDefinedEvent = {}

---@return FRigUnit_UserDefinedEvent
function FRigUnit_UserDefinedEvent:get() end



---@class FRigUnit_VerletIntegrateVector : FRigUnit_SimBase
---@field Target FVector
---@field Strength float
---@field Damp float
---@field Blend float
---@field Force FVector
---@field Position FVector
---@field Velocity FVector
---@field Acceleration FVector
---@field Point FCRSimPoint
---@field bInitialized boolean
FRigUnit_VerletIntegrateVector = {}

---@return FRigUnit_VerletIntegrateVector
function FRigUnit_VerletIntegrateVector:get() end



---@class FRigUnit_VisualDebugQuat : FRigUnit_DebugBase
---@field Value FQuat
---@field bEnabled boolean
---@field Thickness float
---@field Scale float
---@field BoneSpace FName
FRigUnit_VisualDebugQuat = {}

---@return FRigUnit_VisualDebugQuat
function FRigUnit_VisualDebugQuat:get() end



---@class FRigUnit_VisualDebugQuatItemSpace : FRigUnit_DebugBase
---@field Value FQuat
---@field bEnabled boolean
---@field Thickness float
---@field Scale float
---@field space FRigElementKey
FRigUnit_VisualDebugQuatItemSpace = {}

---@return FRigUnit_VisualDebugQuatItemSpace
function FRigUnit_VisualDebugQuatItemSpace:get() end



---@class FRigUnit_VisualDebugTransform : FRigUnit_DebugBase
---@field Value FTransform
---@field bEnabled boolean
---@field Thickness float
---@field Scale float
---@field BoneSpace FName
FRigUnit_VisualDebugTransform = {}

---@return FRigUnit_VisualDebugTransform
function FRigUnit_VisualDebugTransform:get() end



---@class FRigUnit_VisualDebugTransformItemSpace : FRigUnit_DebugBase
---@field Value FTransform
---@field bEnabled boolean
---@field Thickness float
---@field Scale float
---@field space FRigElementKey
FRigUnit_VisualDebugTransformItemSpace = {}

---@return FRigUnit_VisualDebugTransformItemSpace
function FRigUnit_VisualDebugTransformItemSpace:get() end



---@class FRigUnit_VisualDebugVector : FRigUnit_DebugBase
---@field Value FVector
---@field bEnabled boolean
---@field Mode ERigUnitVisualDebugPointMode
---@field Color FLinearColor
---@field Thickness float
---@field Scale float
---@field BoneSpace FName
FRigUnit_VisualDebugVector = {}

---@return FRigUnit_VisualDebugVector
function FRigUnit_VisualDebugVector:get() end



---@class FRigUnit_VisualDebugVectorItemSpace : FRigUnit_DebugBase
---@field Value FVector
---@field bEnabled boolean
---@field Mode ERigUnitVisualDebugPointMode
---@field Color FLinearColor
---@field Thickness float
---@field Scale float
---@field space FRigElementKey
FRigUnit_VisualDebugVectorItemSpace = {}

---@return FRigUnit_VisualDebugVectorItemSpace
function FRigUnit_VisualDebugVectorItemSpace:get() end



---@class FRigVectorArrayMetadata : FRigBaseMetadata
---@field Value TArray<FVector>
FRigVectorArrayMetadata = {}

---@return FRigVectorArrayMetadata
function FRigVectorArrayMetadata:get() end



---@class FRigVectorMetadata : FRigBaseMetadata
---@field Value FVector
FRigVectorMetadata = {}

---@return FRigVectorMetadata
function FRigVectorMetadata:get() end



---@class FSpaceControlNameAndChannel
---@field ControlName FName
---@field SpaceCurve FMovieSceneControlRigSpaceChannel
FSpaceControlNameAndChannel = {}

---@return FSpaceControlNameAndChannel
function FSpaceControlNameAndChannel:get() end



---@class FSphericalPoseReaderDebugSettings
---@field bDrawDebug boolean
---@field bDraw2D boolean
---@field bDrawLocalAxes boolean
---@field DebugScale float
---@field DebugSegments int32
---@field DebugThickness float
FSphericalPoseReaderDebugSettings = {}

---@return FSphericalPoseReaderDebugSettings
function FSphericalPoseReaderDebugSettings:get() end



---@class FSphericalRegion
FSphericalRegion = {}

---@return FSphericalRegion
function FSphericalRegion:get() end


---@class FStructReference
FStructReference = {}

---@return FStructReference
function FStructReference:get() end


---@class UAdditiveControlRig : UControlRig
UAdditiveControlRig = {}

---@return UAdditiveControlRig
function UAdditiveControlRig:get() end


---@class UControlRig : UObject
---@field ExecutionType ERigExecutionType
---@field HierarchySettings FRigHierarchySettings
---@field VMRuntimeSettings FRigVMRuntimeSettings
---@field ControlCustomizations TMap<FRigElementKey, FRigControlElementCustomization>
---@field VM URigVM
---@field InitializedVMSnapshots TMap<uint32, URigVM>
---@field DynamicHierarchy URigHierarchy
---@field GizmoLibrary TSoftObjectPtr<UControlRigShapeLibrary>
---@field ShapeLibraries TArray<TSoftObjectPtr<UControlRigShapeLibrary>>
---@field InputProperties TMap<FName, FCachedPropertyPath>
---@field OutputProperties TMap<FName, FCachedPropertyPath>
---@field DrawContainer FControlRigDrawContainer
---@field DataSourceRegistry UAnimationDataSourceRegistry
---@field EventQueue TArray<FName>
---@field Influences FRigInfluenceMapPerEvent
---@field InteractionRig UControlRig
---@field InteractionRigClass TSubclassOf<UControlRig>
---@field AssetUserData TArray<UAssetUserData>
---@field OnControlSelected_BP FControlRigOnControlSelected_BP
UControlRig = {}

---@return UControlRig
function UControlRig:get() end

---@param InEventName FName
---@return boolean
function UControlRig:SupportsEvent(InEventName) end
---@param InVariableName FName
---@param InValue FString
---@return boolean
function UControlRig:SetVariableFromString(InVariableName, InValue) end
---@param InInteractionRigClass TSubclassOf<UControlRig>
function UControlRig:SetInteractionRigClass(InInteractionRigClass) end
---@param InInteractionRig UControlRig
function UControlRig:SetInteractionRig(InInteractionRig) end
---@param InFramesPerSecond float
function UControlRig:SetFramesPerSecond(InFramesPerSecond) end
---@param InDeltaTime float
function UControlRig:SetDeltaTime(InDeltaTime) end
---@param InAbsoluteTime float
---@param InSetDeltaTimeZero boolean
function UControlRig:SetAbsoluteTime(InAbsoluteTime, InSetDeltaTimeZero) end
---@param InAbsoluteTime float
---@param InDeltaTime float
function UControlRig:SetAbsoluteAndDeltaTime(InAbsoluteTime, InDeltaTime) end
---@param InControlName FName
---@param bSelect boolean
function UControlRig:SelectControl(InControlName, bSelect) end
function UControlRig:RequestInit() end
function UControlRig:RequestConstruction() end
---@param Rig UControlRig
---@param Control FRigControlElement
---@param bSelected boolean
function UControlRig:OnControlSelectedBP__DelegateSignature(Rig, Control, bSelected) end
---@param InControlName FName
---@return boolean
function UControlRig:IsControlSelected(InControlName) end
---@return URigVM
function UControlRig:GetVM() end
---@param InVariableName FName
---@return FName
function UControlRig:GetVariableType(InVariableName) end
---@param InVariableName FName
---@return FString
function UControlRig:GetVariableAsString(InVariableName) end
---@return TArray<FName>
function UControlRig:GetSupportedEvents() end
---@return TArray<FName>
function UControlRig:GetScriptAccessibleVariables() end
---@return TSubclassOf<UControlRig>
function UControlRig:GetInteractionRigClass() end
---@return UControlRig
function UControlRig:GetInteractionRig() end
---@return AActor
function UControlRig:GetHostingActor() end
---@return URigHierarchy
function UControlRig:GetHierarchy() end
---@return TArray<FName>
function UControlRig:GetEvents() end
---@return float
function UControlRig:GetCurrentFramesPerSecond() end
---@return float
function UControlRig:GetAbsoluteTime() end
---@param Outer UObject
---@param OptionalClass TSubclassOf<UControlRig>
---@return TArray<UControlRig>
function UControlRig:FindControlRigs(Outer, OptionalClass) end
---@param InEventName FName
---@return boolean
function UControlRig:ExecuteEvent(InEventName) end
---@param State EControlRigState
---@param InEventName FName
---@return boolean
function UControlRig:Execute(State, InEventName) end
---@return TArray<FName>
function UControlRig:CurrentControlSelection() end
---@param Outer UObject
---@param ControlName FName
---@return UTransformableControlHandle
function UControlRig:CreateTransformableControlHandle(Outer, ControlName) end
---@param InEventName FName
---@return boolean
function UControlRig:ContainsEvent(InEventName) end
---@return boolean
function UControlRig:ClearControlSelection() end
---@return boolean
function UControlRig:CanExecute() end


---@class UControlRigAnimInstance : UAnimInstance
UControlRigAnimInstance = {}

---@return UControlRigAnimInstance
function UControlRigAnimInstance:get() end


---@class UControlRigBlueprintGeneratedClass : UBlueprintGeneratedClass
UControlRigBlueprintGeneratedClass = {}

---@return UControlRigBlueprintGeneratedClass
function UControlRigBlueprintGeneratedClass:get() end


---@class UControlRigComponent : UPrimitiveComponent
---@field ControlRigClass TSubclassOf<UControlRig>
---@field OnPreInitializeDelegate FControlRigComponentOnPreInitializeDelegate
---@field OnPostInitializeDelegate FControlRigComponentOnPostInitializeDelegate
---@field OnPreConstructionDelegate FControlRigComponentOnPreConstructionDelegate
---@field OnPostConstructionDelegate FControlRigComponentOnPostConstructionDelegate
---@field OnPreForwardsSolveDelegate FControlRigComponentOnPreForwardsSolveDelegate
---@field OnPostForwardsSolveDelegate FControlRigComponentOnPostForwardsSolveDelegate
---@field UserDefinedElements TArray<FControlRigComponentMappedElement>
---@field MappedElements TArray<FControlRigComponentMappedElement>
---@field bEnableLazyEvaluation boolean
---@field LazyEvaluationPositionThreshold float
---@field LazyEvaluationRotationThreshold float
---@field LazyEvaluationScaleThreshold float
---@field bResetTransformBeforeTick boolean
---@field bResetInitialsBeforeConstruction boolean
---@field bUpdateRigOnTick boolean
---@field bUpdateInEditor boolean
---@field bDrawBones boolean
---@field bShowDebugDrawing boolean
---@field ControlRig UControlRig
UControlRigComponent = {}

---@return UControlRigComponent
function UControlRigComponent:get() end

---@param DeltaTime float
function UControlRigComponent:Update(DeltaTime) end
---@param InObjectToBind UObject
function UControlRigComponent:SetObjectBinding(InObjectToBind) end
---@param NewMappedElements TArray<FControlRigComponentMappedElement>
function UControlRigComponent:SetMappedElements(NewMappedElements) end
---@param SpaceName FName
---@param InitialTransform FTransform
---@param space EControlRigComponentSpace
function UControlRigComponent:SetInitialSpaceTransform(SpaceName, InitialTransform, space) end
---@param BoneName FName
---@param InitialTransform FTransform
---@param space EControlRigComponentSpace
---@param bPropagateToChildren boolean
function UControlRigComponent:SetInitialBoneTransform(BoneName, InitialTransform, space, bPropagateToChildren) end
---@param ControlName FName
---@param Value FVector2D
function UControlRigComponent:SetControlVector2D(ControlName, Value) end
---@param ControlName FName
---@param Value FTransform
---@param space EControlRigComponentSpace
function UControlRigComponent:SetControlTransform(ControlName, Value, space) end
---@param ControlName FName
---@param Value FVector
---@param space EControlRigComponentSpace
function UControlRigComponent:SetControlScale(ControlName, Value, space) end
---@param ControlName FName
---@param Value FRotator
---@param space EControlRigComponentSpace
function UControlRigComponent:SetControlRotator(ControlName, Value, space) end
---@param InControlRigClass TSubclassOf<UControlRig>
function UControlRigComponent:SetControlRigClass(InControlRigClass) end
---@param ControlName FName
---@param Value FVector
---@param space EControlRigComponentSpace
function UControlRigComponent:SetControlPosition(ControlName, Value, space) end
---@param ControlName FName
---@param OffsetTransform FTransform
---@param space EControlRigComponentSpace
function UControlRigComponent:SetControlOffset(ControlName, OffsetTransform, space) end
---@param ControlName FName
---@param Value int32
function UControlRigComponent:SetControlInt(ControlName, Value) end
---@param ControlName FName
---@param Value float
function UControlRigComponent:SetControlFloat(ControlName, Value) end
---@param ControlName FName
---@param Value boolean
function UControlRigComponent:SetControlBool(ControlName, Value) end
---@param BoneName FName
---@param Transform FTransform
---@param space EControlRigComponentSpace
---@param Weight float
---@param bPropagateToChildren boolean
function UControlRigComponent:SetBoneTransform(BoneName, Transform, space, Weight, bPropagateToChildren) end
---@param InSkeletalMesh USkeletalMesh
function UControlRigComponent:SetBoneInitialTransformsFromSkeletalMesh(InSkeletalMesh) end
---@param Component UControlRigComponent
function UControlRigComponent:OnPreInitialize(Component) end
---@param Component UControlRigComponent
function UControlRigComponent:OnPreForwardsSolve(Component) end
---@param Component UControlRigComponent
function UControlRigComponent:OnPreConstruction(Component) end
---@param Component UControlRigComponent
function UControlRigComponent:OnPostInitialize(Component) end
---@param Component UControlRigComponent
function UControlRigComponent:OnPostForwardsSolve(Component) end
---@param Component UControlRigComponent
function UControlRigComponent:OnPostConstruction(Component) end
function UControlRigComponent:Initialize() end
---@param SpaceName FName
---@param space EControlRigComponentSpace
---@return FTransform
function UControlRigComponent:GetSpaceTransform(SpaceName, space) end
---@param SpaceName FName
---@param space EControlRigComponentSpace
---@return FTransform
function UControlRigComponent:GetInitialSpaceTransform(SpaceName, space) end
---@param BoneName FName
---@param space EControlRigComponentSpace
---@return FTransform
function UControlRigComponent:GetInitialBoneTransform(BoneName, space) end
---@param ElementType ERigElementType
---@return TArray<FName>
function UControlRigComponent:GetElementNames(ElementType) end
---@param ControlName FName
---@return FVector2D
function UControlRigComponent:GetControlVector2D(ControlName) end
---@param ControlName FName
---@param space EControlRigComponentSpace
---@return FTransform
function UControlRigComponent:GetControlTransform(ControlName, space) end
---@param ControlName FName
---@param space EControlRigComponentSpace
---@return FVector
function UControlRigComponent:GetControlScale(ControlName, space) end
---@param ControlName FName
---@param space EControlRigComponentSpace
---@return FRotator
function UControlRigComponent:GetControlRotator(ControlName, space) end
---@return UControlRig
function UControlRigComponent:GetControlRig() end
---@param ControlName FName
---@param space EControlRigComponentSpace
---@return FVector
function UControlRigComponent:GetControlPosition(ControlName, space) end
---@param ControlName FName
---@param space EControlRigComponentSpace
---@return FTransform
function UControlRigComponent:GetControlOffset(ControlName, space) end
---@param ControlName FName
---@return int32
function UControlRigComponent:GetControlInt(ControlName) end
---@param ControlName FName
---@return float
function UControlRigComponent:GetControlFloat(ControlName) end
---@param ControlName FName
---@return boolean
function UControlRigComponent:GetControlBool(ControlName) end
---@param BoneName FName
---@param space EControlRigComponentSpace
---@return FTransform
function UControlRigComponent:GetBoneTransform(BoneName, space) end
---@return float
function UControlRigComponent:GetAbsoluteTime() end
---@param Name FName
---@param ElementType ERigElementType
---@return boolean
function UControlRigComponent:DoesElementExist(Name, ElementType) end
function UControlRigComponent:ClearMappedElements() end
---@return boolean
function UControlRigComponent:CanExecute() end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param Bones TArray<FControlRigComponentMappedBone>
---@param Curves TArray<FControlRigComponentMappedCurve>
function UControlRigComponent:AddMappedSkeletalMesh(SkeletalMeshComponent, Bones, Curves) end
---@param NewMappedElements TArray<FControlRigComponentMappedElement>
function UControlRigComponent:AddMappedElements(NewMappedElements) end
---@param Components TArray<FControlRigComponentMappedComponent>
function UControlRigComponent:AddMappedComponents(Components) end
---@param SkeletalMeshComponent USkeletalMeshComponent
function UControlRigComponent:AddMappedCompleteSkeletalMesh(SkeletalMeshComponent) end


---@class UControlRigEditorSettings : UDeveloperSettings
UControlRigEditorSettings = {}

---@return UControlRigEditorSettings
function UControlRigEditorSettings:get() end


---@class UControlRigLayerInstance : UAnimInstance
UControlRigLayerInstance = {}

---@return UControlRigLayerInstance
function UControlRigLayerInstance:get() end


---@class UControlRigNumericalValidationPass : UControlRigValidationPass
---@field bCheckControls boolean
---@field bCheckBones boolean
---@field bCheckCurves boolean
---@field TranslationPrecision float
---@field RotationPrecision float
---@field ScalePrecision float
---@field CurvePrecision float
---@field EventNameA FName
---@field EventNameB FName
---@field Pose FRigPose
UControlRigNumericalValidationPass = {}

---@return UControlRigNumericalValidationPass
function UControlRigNumericalValidationPass:get() end



---@class UControlRigObjectHolder : UObject
---@field Objects TArray<UObject>
UControlRigObjectHolder = {}

---@return UControlRigObjectHolder
function UControlRigObjectHolder:get() end



---@class UControlRigPoseAsset : UObject
---@field Pose FControlRigControlPose
UControlRigPoseAsset = {}

---@return UControlRigPoseAsset
function UControlRigPoseAsset:get() end

---@param InControlRig UControlRig
---@param bDoMirror boolean
function UControlRigPoseAsset:SelectControls(InControlRig, bDoMirror) end
---@param InControlRig UControlRig
---@param bUseAll boolean
function UControlRigPoseAsset:SavePose(InControlRig, bUseAll) end
---@param CurrentName FName
---@param NewName FName
function UControlRigPoseAsset:ReplaceControlName(CurrentName, NewName) end
---@param InControlRig UControlRig
---@param bDoKey boolean
---@param bDoMirror boolean
function UControlRigPoseAsset:PastePose(InControlRig, bDoKey, bDoMirror) end
---@param InControlRig UControlRig
---@param OutPose FControlRigControlPose
function UControlRigPoseAsset:GetCurrentPose(InControlRig, OutPose) end
---@return TArray<FName>
function UControlRigPoseAsset:GetControlNames() end
---@param ControlRig UControlRig
---@param ControlName FName
---@return boolean
function UControlRigPoseAsset:DoesMirrorMatch(ControlRig, ControlName) end


---@class UControlRigPoseMirrorSettings : UObject
---@field RightSide FString
---@field LeftSide FString
---@field MirrorAxis EAxis::Type
---@field AxisToFlip EAxis::Type
UControlRigPoseMirrorSettings = {}

---@return UControlRigPoseMirrorSettings
function UControlRigPoseMirrorSettings:get() end



---@class UControlRigPoseProjectSettings : UObject
---@field RootSaveDirs TArray<FDirectoryPath>
UControlRigPoseProjectSettings = {}

---@return UControlRigPoseProjectSettings
function UControlRigPoseProjectSettings:get() end



---@class UControlRigSequence : ULevelSequence
---@field LastExportedToAnimationSequence TSoftObjectPtr<UAnimSequence>
---@field LastExportedUsingSkeletalMesh TSoftObjectPtr<USkeletalMesh>
---@field LastExportedFrameRate float
UControlRigSequence = {}

---@return UControlRigSequence
function UControlRigSequence:get() end



---@class UControlRigSettings : UDeveloperSettings
UControlRigSettings = {}

---@return UControlRigSettings
function UControlRigSettings:get() end


---@class UControlRigShapeLibrary : UObject
---@field DefaultShape FControlRigShapeDefinition
---@field DefaultMaterial TSoftObjectPtr<UMaterial>
---@field XRayMaterial TSoftObjectPtr<UMaterial>
---@field MaterialColorParameter FName
---@field Shapes TArray<FControlRigShapeDefinition>
UControlRigShapeLibrary = {}

---@return UControlRigShapeLibrary
function UControlRigShapeLibrary:get() end



---@class UControlRigSnapSettings : UObject
---@field bKeepOffset boolean
---@field bSnapPosition boolean
---@field bSnapRotation boolean
---@field bSnapScale boolean
UControlRigSnapSettings = {}

---@return UControlRigSnapSettings
function UControlRigSnapSettings:get() end



---@class UControlRigTransformWorkflowOptions : UControlRigWorkflowOptions
---@field TransformType ERigTransformType::Type
UControlRigTransformWorkflowOptions = {}

---@return UControlRigTransformWorkflowOptions
function UControlRigTransformWorkflowOptions:get() end

---@param InSubject UObject
---@return TArray<FRigVMUserWorkflow>
function UControlRigTransformWorkflowOptions:ProvideWorkflows(InSubject) end


---@class UControlRigValidationPass : UObject
UControlRigValidationPass = {}

---@return UControlRigValidationPass
function UControlRigValidationPass:get() end


---@class UControlRigValidator : UObject
---@field Passes TArray<UControlRigValidationPass>
UControlRigValidator = {}

---@return UControlRigValidator
function UControlRigValidator:get() end



---@class UControlRigWorkflowOptions : URigVMUserWorkflowOptions
---@field Hierarchy URigHierarchy
---@field Selection TArray<FRigElementKey>
UControlRigWorkflowOptions = {}

---@return UControlRigWorkflowOptions
function UControlRigWorkflowOptions:get() end

---@return boolean
function UControlRigWorkflowOptions:EnsureAtLeastOneRigElementSelected() end


---@class UDefault__ControlRigBlueprintGeneratedClass
UDefault__ControlRigBlueprintGeneratedClass = {}

---@return UDefault__ControlRigBlueprintGeneratedClass
function UDefault__ControlRigBlueprintGeneratedClass:get() end


---@class UFKControlRig : UControlRig
---@field IsControlActive TArray<boolean>
---@field ApplyMode EControlRigFKRigExecuteMode
UFKControlRig = {}

---@return UFKControlRig
function UFKControlRig:get() end



---@class UMovieSceneControlRigParameterSection : UMovieSceneParameterSection
---@field ControlRig UControlRig
---@field ControlRigClass TSubclassOf<UControlRig>
---@field ControlsMask TArray<boolean>
---@field TransformMask FMovieSceneTransformMask
---@field Weight FMovieSceneFloatChannel
---@field ControlChannelMap TMap<FName, FChannelMapInfo>
---@field EnumParameterNamesAndCurves TArray<FEnumParameterNameAndCurve>
---@field IntegerParameterNamesAndCurves TArray<FIntegerParameterNameAndCurve>
---@field SpaceChannels TArray<FSpaceControlNameAndChannel>
---@field ConstraintsChannels TArray<FConstraintAndActiveChannel>
UMovieSceneControlRigParameterSection = {}

---@return UMovieSceneControlRigParameterSection
function UMovieSceneControlRigParameterSection:get() end



---@class UMovieSceneControlRigParameterTrack : UMovieSceneNameableTrack
---@field ControlRig UControlRig
---@field SectionToKey UMovieSceneSection
---@field Sections TArray<UMovieSceneSection>
---@field TrackName FName
UMovieSceneControlRigParameterTrack = {}

---@return UMovieSceneControlRigParameterTrack
function UMovieSceneControlRigParameterTrack:get() end



---@class URigHierarchy : UObject
---@field TopologyVersion uint16
---@field MetadataVersion uint16
---@field MetadataTagVersion uint16
---@field bEnableDirtyPropagation boolean
---@field TransformStackIndex int32
---@field HierarchyController URigHierarchyController
---@field PreviousNameMap TMap<FRigElementKey, FRigElementKey>
---@field HierarchyForCacheValidation URigHierarchy
URigHierarchy = {}

---@return URigHierarchy
function URigHierarchy:get() end

---@param InElementIndex int32
---@param bSetupUndo boolean
function URigHierarchy:UnsetCurveValueByIndex(InElementIndex, bSetupUndo) end
---@param InKey FRigElementKey
---@param bSetupUndo boolean
function URigHierarchy:UnsetCurveValue(InKey, bSetupUndo) end
---@param InChild FRigElementKey
---@param bInitial boolean
---@param bAffectChildren boolean
---@return boolean
function URigHierarchy:SwitchToWorldSpace(InChild, bInitial, bAffectChildren) end
---@param InChild FRigElementKey
---@param InParent FRigElementKey
---@param bInitial boolean
---@param bAffectChildren boolean
---@return boolean
function URigHierarchy:SwitchToParent(InChild, InParent, bInitial, bAffectChildren) end
---@param InChild FRigElementKey
---@param bInitial boolean
---@param bAffectChildren boolean
---@return boolean
function URigHierarchy:SwitchToDefaultParent(InChild, bInitial, bAffectChildren) end
---@param InKeys TArray<FRigElementKey>
---@return TArray<FRigElementKey>
function URigHierarchy:SortKeys(InKeys) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue FVector
---@return boolean
function URigHierarchy:SetVectorMetadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue TArray<FVector>
---@return boolean
function URigHierarchy:SetVectorArrayMetadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue FTransform
---@return boolean
function URigHierarchy:SetTransformMetadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue TArray<FTransform>
---@return boolean
function URigHierarchy:SetTransformArrayMetadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InTag FName
---@return boolean
function URigHierarchy:SetTag(InItem, InTag) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue FRotator
---@return boolean
function URigHierarchy:SetRotatorMetadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue TArray<FRotator>
---@return boolean
function URigHierarchy:SetRotatorArrayMetadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue FRigElementKey
---@return boolean
function URigHierarchy:SetRigElementKeyMetadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue TArray<FRigElementKey>
---@return boolean
function URigHierarchy:SetRigElementKeyArrayMetadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue FQuat
---@return boolean
function URigHierarchy:SetQuatMetadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue TArray<FQuat>
---@return boolean
function URigHierarchy:SetQuatArrayMetadata(InItem, InMetadataName, InValue) end
---@param InPose FRigPose
function URigHierarchy:SetPose_ForBlueprint(InPose) end
---@param InChild FRigElementKey
---@param InWeights TArray<FRigElementWeight>
---@param bInitial boolean
---@param bAffectChildren boolean
---@return boolean
function URigHierarchy:SetParentWeightArray(InChild, InWeights, bInitial, bAffectChildren) end
---@param InChild FRigElementKey
---@param InParent FRigElementKey
---@param InWeight FRigElementWeight
---@param bInitial boolean
---@param bAffectChildren boolean
---@return boolean
function URigHierarchy:SetParentWeight(InChild, InParent, InWeight, bInitial, bAffectChildren) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue FName
---@return boolean
function URigHierarchy:SetNameMetadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue TArray<FName>
---@return boolean
function URigHierarchy:SetNameArrayMetadata(InItem, InMetadataName, InValue) end
---@param InElementIndex int32
---@param InTransform FTransform
---@param bInitial boolean
---@param bAffectChildren boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommands boolean
function URigHierarchy:SetLocalTransformByIndex(InElementIndex, InTransform, bInitial, bAffectChildren, bSetupUndo, bPrintPythonCommands) end
---@param InKey FRigElementKey
---@param InTransform FTransform
---@param bInitial boolean
---@param bAffectChildren boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommands boolean
function URigHierarchy:SetLocalTransform(InKey, InTransform, bInitial, bAffectChildren, bSetupUndo, bPrintPythonCommands) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue FLinearColor
---@return boolean
function URigHierarchy:SetLinearColorMetadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue TArray<FLinearColor>
---@return boolean
function URigHierarchy:SetLinearColorArrayMetadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue int32
---@return boolean
function URigHierarchy:SetInt32Metadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue TArray<int32>
---@return boolean
function URigHierarchy:SetInt32ArrayMetadata(InItem, InMetadataName, InValue) end
---@param InElementIndex int32
---@param InTransform FTransform
---@param bInitial boolean
---@param bAffectChildren boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
function URigHierarchy:SetGlobalTransformByIndex(InElementIndex, InTransform, bInitial, bAffectChildren, bSetupUndo, bPrintPythonCommand) end
---@param InKey FRigElementKey
---@param InTransform FTransform
---@param bInitial boolean
---@param bAffectChildren boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
function URigHierarchy:SetGlobalTransform(InKey, InTransform, bInitial, bAffectChildren, bSetupUndo, bPrintPythonCommand) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue float
---@return boolean
function URigHierarchy:SetFloatMetadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue TArray<float>
---@return boolean
function URigHierarchy:SetFloatArrayMetadata(InItem, InMetadataName, InValue) end
---@param InElementIndex int32
---@param InValue float
---@param bSetupUndo boolean
function URigHierarchy:SetCurveValueByIndex(InElementIndex, InValue, bSetupUndo) end
---@param InKey FRigElementKey
---@param InValue float
---@param bSetupUndo boolean
function URigHierarchy:SetCurveValue(InKey, InValue, bSetupUndo) end
---@param InElementIndex int32
---@param bVisibility boolean
function URigHierarchy:SetControlVisibilityByIndex(InElementIndex, bVisibility) end
---@param InKey FRigElementKey
---@param bVisibility boolean
function URigHierarchy:SetControlVisibility(InKey, bVisibility) end
---@param InElementIndex int32
---@param InValue FRigControlValue
---@param InValueType ERigControlValueType
---@param bSetupUndo boolean
---@param bPrintPythonCommands boolean
function URigHierarchy:SetControlValueByIndex(InElementIndex, InValue, InValueType, bSetupUndo, bPrintPythonCommands) end
---@param InKey FRigElementKey
---@param InValue FRigControlValue
---@param InValueType ERigControlValueType
---@param bSetupUndo boolean
---@param bPrintPythonCommands boolean
function URigHierarchy:SetControlValue(InKey, InValue, InValueType, bSetupUndo, bPrintPythonCommands) end
---@param InElementIndex int32
---@param InTransform FTransform
---@param bInitial boolean
---@param bSetupUndo boolean
function URigHierarchy:SetControlShapeTransformByIndex(InElementIndex, InTransform, bInitial, bSetupUndo) end
---@param InKey FRigElementKey
---@param InTransform FTransform
---@param bInitial boolean
---@param bSetupUndo boolean
function URigHierarchy:SetControlShapeTransform(InKey, InTransform, bInitial, bSetupUndo) end
---@param InElementIndex int32
---@param InSettings FRigControlSettings
---@param bSetupUndo boolean
---@param bForce boolean
---@param bPrintPythonCommands boolean
function URigHierarchy:SetControlSettingsByIndex(InElementIndex, InSettings, bSetupUndo, bForce, bPrintPythonCommands) end
---@param InKey FRigElementKey
---@param InSettings FRigControlSettings
---@param bSetupUndo boolean
---@param bForce boolean
---@param bPrintPythonCommands boolean
function URigHierarchy:SetControlSettings(InKey, InSettings, bSetupUndo, bForce, bPrintPythonCommands) end
---@param InElementIndex int32
---@param InValue FRotator
---@param bInitial boolean
---@param bFixEulerFlips boolean
function URigHierarchy:SetControlPreferredRotatorByIndex(InElementIndex, InValue, bInitial, bFixEulerFlips) end
---@param InKey FRigElementKey
---@param InValue FRotator
---@param bInitial boolean
---@param bFixEulerFlips boolean
function URigHierarchy:SetControlPreferredRotator(InKey, InValue, bInitial, bFixEulerFlips) end
---@param InElementIndex int32
---@param InTransform FTransform
---@param bInitial boolean
---@param bAffectChildren boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommands boolean
function URigHierarchy:SetControlOffsetTransformByIndex(InElementIndex, InTransform, bInitial, bAffectChildren, bSetupUndo, bPrintPythonCommands) end
---@param InKey FRigElementKey
---@param InTransform FTransform
---@param bInitial boolean
---@param bAffectChildren boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommands boolean
function URigHierarchy:SetControlOffsetTransform(InKey, InTransform, bInitial, bAffectChildren, bSetupUndo, bPrintPythonCommands) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue boolean
---@return boolean
function URigHierarchy:SetBoolMetadata(InItem, InMetadataName, InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param InValue TArray<boolean>
---@return boolean
function URigHierarchy:SetBoolArrayMetadata(InItem, InMetadataName, InValue) end
---@param InElement FRigElementKey
---@param InOffsetInSeconds float
---@param bAsynchronous boolean
function URigHierarchy:SendAutoKeyEvent(InElement, InOffsetInSeconds, bAsynchronous) end
function URigHierarchy:ResetToDefault() end
---@param InTypeFilter ERigElementType
function URigHierarchy:ResetPoseToInitial(InTypeFilter) end
function URigHierarchy:ResetCurveValues() end
function URigHierarchy:Reset() end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@return boolean
function URigHierarchy:RemoveMetadata(InItem, InMetadataName) end
---@param InItem FRigElementKey
---@return boolean
function URigHierarchy:RemoveAllMetadata(InItem) end
---@return int32
function URigHierarchy:Num() end
---@param InValue FVector2D
---@return FRigControlValue
function URigHierarchy:MakeControlValueFromVector2D(InValue) end
---@param InValue FVector
---@return FRigControlValue
function URigHierarchy:MakeControlValueFromVector(InValue) end
---@param InValue FTransformNoScale
---@return FRigControlValue
function URigHierarchy:MakeControlValueFromTransformNoScale(InValue) end
---@param InValue FTransform
---@return FRigControlValue
function URigHierarchy:MakeControlValueFromTransform(InValue) end
---@param InValue FRotator
---@return FRigControlValue
function URigHierarchy:MakeControlValueFromRotator(InValue) end
---@param InValue int32
---@return FRigControlValue
function URigHierarchy:MakeControlValueFromInt(InValue) end
---@param InValue float
---@return FRigControlValue
function URigHierarchy:MakeControlValueFromFloat(InValue) end
---@param InValue FEulerTransform
---@return FRigControlValue
function URigHierarchy:MakeControlValueFromEulerTransform(InValue) end
---@param InValue boolean
---@return FRigControlValue
function URigHierarchy:MakeControlValueFromBool(InValue) end
---@param InElementIndex int32
---@return boolean
function URigHierarchy:IsValidIndex(InElementIndex) end
---@param InIndex int32
---@return boolean
function URigHierarchy:IsSelectedByIndex(InIndex) end
---@param InKey FRigElementKey
---@return boolean
function URigHierarchy:IsSelected(InKey) end
---@param InKey FRigElementKey
---@return boolean
function URigHierarchy:IsProcedural(InKey) end
---@param InChild FRigElementKey
---@param InParent FRigElementKey
---@return boolean
function URigHierarchy:IsParentedTo(InChild, InParent) end
---@param InElementIndex int32
---@return boolean
function URigHierarchy:IsCurveValueSetByIndex(InElementIndex) end
---@param InKey FRigElementKey
---@return boolean
function URigHierarchy:IsCurveValueSet(InKey) end
---@return boolean
function URigHierarchy:IsControllerAvailable() end
---@param InItem FRigElementKey
---@param InTag FName
---@return boolean
function URigHierarchy:HasTag(InItem, InTag) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param DefaultValue FVector
---@return FVector
function URigHierarchy:GetVectorMetadata(InItem, InMetadataName, DefaultValue) end
---@param InValue FRigControlValue
---@return FVector
function URigHierarchy:GetVectorFromControlValue(InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@return TArray<FVector>
function URigHierarchy:GetVectorArrayMetadata(InItem, InMetadataName) end
---@param InValue FRigControlValue
---@return FVector2D
function URigHierarchy:GetVector2DFromControlValue(InValue) end
---@param InValue FRigControlValue
---@return FTransformNoScale
function URigHierarchy:GetTransformNoScaleFromControlValue(InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param DefaultValue FTransform
---@return FTransform
function URigHierarchy:GetTransformMetadata(InItem, InMetadataName, DefaultValue) end
---@param InValue FRigControlValue
---@return FTransform
function URigHierarchy:GetTransformFromControlValue(InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@return TArray<FTransform>
function URigHierarchy:GetTransformArrayMetadata(InItem, InMetadataName) end
---@param InItem FRigElementKey
---@return TArray<FName>
function URigHierarchy:GetTags(InItem) end
---@param InTypeFilter ERigElementType
---@return TArray<FRigElementKey>
function URigHierarchy:GetSelectedKeys(InTypeFilter) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param DefaultValue FRotator
---@return FRotator
function URigHierarchy:GetRotatorMetadata(InItem, InMetadataName, DefaultValue) end
---@param InValue FRigControlValue
---@return FRotator
function URigHierarchy:GetRotatorFromControlValue(InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@return TArray<FRotator>
function URigHierarchy:GetRotatorArrayMetadata(InItem, InMetadataName) end
---@param bTraverse boolean
---@return TArray<FRigElementKey>
function URigHierarchy:GetRigidBodyKeys(bTraverse) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param DefaultValue FRigElementKey
---@return FRigElementKey
function URigHierarchy:GetRigElementKeyMetadata(InItem, InMetadataName, DefaultValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@return TArray<FRigElementKey>
function URigHierarchy:GetRigElementKeyArrayMetadata(InItem, InMetadataName) end
---@param bTraverse boolean
---@return TArray<FRigElementKey>
function URigHierarchy:GetReferenceKeys(bTraverse) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param DefaultValue FQuat
---@return FQuat
function URigHierarchy:GetQuatMetadata(InItem, InMetadataName, DefaultValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@return TArray<FQuat>
function URigHierarchy:GetQuatArrayMetadata(InItem, InMetadataName) end
---@param InKey FRigElementKey
---@return FRigElementKey
function URigHierarchy:GetPreviousParent(InKey) end
---@param InKey FRigElementKey
---@return FName
function URigHierarchy:GetPreviousName(InKey) end
---@param bInitial boolean
---@return FRigPose
function URigHierarchy:GetPose(bInitial) end
---@param InChild FRigElementKey
---@param bInitial boolean
---@return TArray<FRigElementWeight>
function URigHierarchy:GetParentWeightArray(InChild, bInitial) end
---@param InChild FRigElementKey
---@param InParent FRigElementKey
---@param bInitial boolean
---@return FRigElementWeight
function URigHierarchy:GetParentWeight(InChild, InParent, bInitial) end
---@param InElementIndex int32
---@param bInitial boolean
---@return FTransform
function URigHierarchy:GetParentTransformByIndex(InElementIndex, bInitial) end
---@param InKey FRigElementKey
---@param bInitial boolean
---@return FTransform
function URigHierarchy:GetParentTransform(InKey, bInitial) end
---@param InKey FRigElementKey
---@param bRecursive boolean
---@return TArray<FRigElementKey>
function URigHierarchy:GetParents(InKey, bRecursive) end
---@param InKey FRigElementKey
---@return int32
function URigHierarchy:GetNumberOfParents(InKey) end
---@param bTraverse boolean
---@return TArray<FRigElementKey>
function URigHierarchy:GetNullKeys(bTraverse) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param DefaultValue FName
---@return FName
function URigHierarchy:GetNameMetadata(InItem, InMetadataName, DefaultValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@return TArray<FName>
function URigHierarchy:GetNameArrayMetadata(InItem, InMetadataName) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@return ERigMetadataType
function URigHierarchy:GetMetadataType(InItem, InMetadataName) end
---@param InItem FRigElementKey
---@return TArray<FName>
function URigHierarchy:GetMetadataNames(InItem) end
---@param InElementIndex int32
---@param bInitial boolean
---@return FTransform
function URigHierarchy:GetLocalTransformByIndex(InElementIndex, bInitial) end
---@param InKey FRigElementKey
---@param bInitial boolean
---@return FTransform
function URigHierarchy:GetLocalTransform(InKey, bInitial) end
---@param InElementIndex int32
---@param bInitial boolean
---@return FTransform
function URigHierarchy:GetLocalControlShapeTransformByIndex(InElementIndex, bInitial) end
---@param InKey FRigElementKey
---@param bInitial boolean
---@return FTransform
function URigHierarchy:GetLocalControlShapeTransform(InKey, bInitial) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param DefaultValue FLinearColor
---@return FLinearColor
function URigHierarchy:GetLinearColorMetadata(InItem, InMetadataName, DefaultValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@return TArray<FLinearColor>
function URigHierarchy:GetLinearColorArrayMetadata(InItem, InMetadataName) end
---@param InElementIndices TArray<int32>
---@return TArray<FRigElementKey>
function URigHierarchy:GetKeys(InElementIndices) end
---@param InElementIndex int32
---@return FRigElementKey
function URigHierarchy:GetKey(InElementIndex) end
---@param InValue FRigControlValue
---@return int32
function URigHierarchy:GetIntFromControlValue(InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param DefaultValue int32
---@return int32
function URigHierarchy:GetInt32Metadata(InItem, InMetadataName, DefaultValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@return TArray<int32>
function URigHierarchy:GetInt32ArrayMetadata(InItem, InMetadataName) end
---@param InKey FRigElementKey
---@return int32
function URigHierarchy:GetIndex_ForBlueprint(InKey) end
---@param InElementIndex int32
---@param bInitial boolean
---@return FTransform
function URigHierarchy:GetGlobalTransformByIndex(InElementIndex, bInitial) end
---@param InKey FRigElementKey
---@param bInitial boolean
---@return FTransform
function URigHierarchy:GetGlobalTransform(InKey, bInitial) end
---@param InElementIndex int32
---@param bInitial boolean
---@return FTransform
function URigHierarchy:GetGlobalControlShapeTransformByIndex(InElementIndex, bInitial) end
---@param InKey FRigElementKey
---@param bInitial boolean
---@return FTransform
function URigHierarchy:GetGlobalControlShapeTransform(InKey, bInitial) end
---@param InElementIndex int32
---@param bInitial boolean
---@return FTransform
function URigHierarchy:GetGlobalControlOffsetTransformByIndex(InElementIndex, bInitial) end
---@param InKey FRigElementKey
---@param bInitial boolean
---@return FTransform
function URigHierarchy:GetGlobalControlOffsetTransform(InKey, bInitial) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param DefaultValue float
---@return float
function URigHierarchy:GetFloatMetadata(InItem, InMetadataName, DefaultValue) end
---@param InValue FRigControlValue
---@return float
function URigHierarchy:GetFloatFromControlValue(InValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@return TArray<float>
function URigHierarchy:GetFloatArrayMetadata(InItem, InMetadataName) end
---@param InKey FRigElementKey
---@return FRigElementKey
function URigHierarchy:GetFirstParent(InKey) end
---@param InValue FRigControlValue
---@return FEulerTransform
function URigHierarchy:GetEulerTransformFromControlValue(InValue) end
---@param InKey FRigElementKey
---@return FRigElementKey
function URigHierarchy:GetDefaultParent(InKey) end
---@param InElementIndex int32
---@return float
function URigHierarchy:GetCurveValueByIndex(InElementIndex) end
---@param InKey FRigElementKey
---@return float
function URigHierarchy:GetCurveValue(InKey) end
---@return TArray<FRigElementKey>
function URigHierarchy:GetCurveKeys() end
---@param InElementIndex int32
---@param InValueType ERigControlValueType
---@return FRigControlValue
function URigHierarchy:GetControlValueByIndex(InElementIndex, InValueType) end
---@param InKey FRigElementKey
---@param InValueType ERigControlValueType
---@return FRigControlValue
function URigHierarchy:GetControlValue(InKey, InValueType) end
---@param InElementIndex int32
---@param bInitial boolean
---@return FRotator
function URigHierarchy:GetControlPreferredRotatorByIndex(InElementIndex, bInitial) end
---@param InKey FRigElementKey
---@param bInitial boolean
---@return FRotator
function URigHierarchy:GetControlPreferredRotator(InKey, bInitial) end
---@param bCreateIfNeeded boolean
---@return URigHierarchyController
function URigHierarchy:GetController(bCreateIfNeeded) end
---@param bTraverse boolean
---@return TArray<FRigElementKey>
function URigHierarchy:GetControlKeys(bTraverse) end
---@param InKey FRigElementKey
---@param bRecursive boolean
---@return TArray<FRigElementKey>
function URigHierarchy:GetChildren(InKey, bRecursive) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@param DefaultValue boolean
---@return boolean
function URigHierarchy:GetBoolMetadata(InItem, InMetadataName, DefaultValue) end
---@param InItem FRigElementKey
---@param InMetadataName FName
---@return TArray<boolean>
function URigHierarchy:GetBoolArrayMetadata(InItem, InMetadataName) end
---@param bTraverse boolean
---@return TArray<FRigElementKey>
function URigHierarchy:GetBoneKeys(bTraverse) end
---@param bTraverse boolean
---@return TArray<FRigElementKey>
function URigHierarchy:GetAllKeys_ForBlueprint(bTraverse) end
---@param InKey FRigElementKey
---@return FRigNullElement
function URigHierarchy:FindNull_ForBlueprintOnly(InKey) end
---@param InKey FRigElementKey
---@return FRigControlElement
function URigHierarchy:FindControl_ForBlueprintOnly(InKey) end
---@param InKey FRigElementKey
---@return FRigBoneElement
function URigHierarchy:FindBone_ForBlueprintOnly(InKey) end
---@param InHierarchy URigHierarchy
---@param bCurrent boolean
---@param bInitial boolean
---@param bWeights boolean
---@param bMatchPoseInGlobalIfNeeded boolean
function URigHierarchy:CopyPose(InHierarchy, bCurrent, bInitial, bWeights, bMatchPoseInGlobalIfNeeded) end
---@param InHierarchy URigHierarchy
function URigHierarchy:CopyHierarchy(InHierarchy) end
---@param InKey FRigElementKey
---@return boolean
function URigHierarchy:Contains_ForBlueprint(InKey) end


---@class URigHierarchyController : UObject
---@field bReportWarningsAndErrors boolean
---@field Hierarchy TWeakObjectPtr<URigHierarchy>
URigHierarchyController = {}

---@return URigHierarchyController
function URigHierarchyController:get() end

---@param InKeys TArray<FRigElementKey>
---@param bPrintPythonCommand boolean
---@return boolean
function URigHierarchyController:SetSelection(InKeys, bPrintPythonCommand) end
---@param InChild FRigElementKey
---@param InParent FRigElementKey
---@param bMaintainGlobalTransform boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
---@return boolean
function URigHierarchyController:SetParent(InChild, InParent, bMaintainGlobalTransform, bSetupUndo, bPrintPythonCommand) end
---@param InHierarchy URigHierarchy
function URigHierarchyController:SetHierarchy(InHierarchy) end
---@param InControl FRigElementKey
---@param InDisplayName FName
---@param bRenameElement boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
---@return FName
function URigHierarchyController:SetDisplayName(InControl, InDisplayName, bRenameElement, bSetupUndo, bPrintPythonCommand) end
---@param InKey FRigElementKey
---@param InSettings FRigControlSettings
---@param bSetupUndo boolean
---@return boolean
function URigHierarchyController:SetControlSettings(InKey, InSettings, bSetupUndo) end
---@param InKey FRigElementKey
---@param bSelect boolean
---@param bClearSelection boolean
---@return boolean
function URigHierarchyController:SelectElement(InKey, bSelect, bClearSelection) end
---@param InElement FRigElementKey
---@param InName FName
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
---@param bClearSelection boolean
---@return FRigElementKey
function URigHierarchyController:RenameElement(InElement, InName, bSetupUndo, bPrintPythonCommand, bClearSelection) end
---@param InChild FRigElementKey
---@param InParent FRigElementKey
---@param bMaintainGlobalTransform boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
---@return boolean
function URigHierarchyController:RemoveParent(InChild, InParent, bMaintainGlobalTransform, bSetupUndo, bPrintPythonCommand) end
---@param InElement FRigElementKey
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
---@return boolean
function URigHierarchyController:RemoveElement(InElement, bSetupUndo, bPrintPythonCommand) end
---@param InChild FRigElementKey
---@param bMaintainGlobalTransform boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
---@return boolean
function URigHierarchyController:RemoveAllParents(InChild, bMaintainGlobalTransform, bSetupUndo, bPrintPythonCommand) end
---@param InKeys TArray<FRigElementKey>
---@param InSettings FRigMirrorSettings
---@param bSelectNewElements boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommands boolean
---@return TArray<FRigElementKey>
function URigHierarchyController:MirrorElements(InKeys, InSettings, bSelectNewElements, bSetupUndo, bPrintPythonCommands) end
---@param InContent FString
---@param bReplaceExistingElements boolean
---@param bSelectNewElements boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommands boolean
---@return TArray<FRigElementKey>
function URigHierarchyController:ImportFromText(InContent, bReplaceExistingElements, bSelectNewElements, bSetupUndo, bPrintPythonCommands) end
---@param InSkeleton USkeleton
---@param InNameSpace FName
---@param bSelectCurves boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
---@return TArray<FRigElementKey>
function URigHierarchyController:ImportCurves(InSkeleton, InNameSpace, bSelectCurves, bSetupUndo, bPrintPythonCommand) end
---@param InSkeleton USkeleton
---@param InNameSpace FName
---@param bReplaceExistingBones boolean
---@param bRemoveObsoleteBones boolean
---@param bSelectBones boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
---@return TArray<FRigElementKey>
function URigHierarchyController:ImportBones(InSkeleton, InNameSpace, bReplaceExistingBones, bRemoveObsoleteBones, bSelectBones, bSetupUndo, bPrintPythonCommand) end
---@return URigHierarchy
function URigHierarchyController:GetHierarchy() end
---@param InKey FRigElementKey
---@return FRigControlSettings
function URigHierarchyController:GetControlSettings(InKey) end
---@param InKeys TArray<FRigElementKey>
---@return FString
function URigHierarchyController:ExportToText(InKeys) end
---@return FString
function URigHierarchyController:ExportSelectionToText() end
---@param InKeys TArray<FRigElementKey>
---@param bSelectNewElements boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommands boolean
---@return TArray<FRigElementKey>
function URigHierarchyController:DuplicateElements(InKeys, bSelectNewElements, bSetupUndo, bPrintPythonCommands) end
---@param InKey FRigElementKey
---@return boolean
function URigHierarchyController:DeselectElement(InKey) end
---@return boolean
function URigHierarchyController:ClearSelection() end
---@param InName FName
---@param InParent FRigElementKey
---@param InSettings FRigRigidBodySettings
---@param InLocalTransform FTransform
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
---@return FRigElementKey
function URigHierarchyController:AddRigidBody(InName, InParent, InSettings, InLocalTransform, bSetupUndo, bPrintPythonCommand) end
---@param InChild FRigElementKey
---@param InParent FRigElementKey
---@param InWeight float
---@param bMaintainGlobalTransform boolean
---@param bSetupUndo boolean
---@return boolean
function URigHierarchyController:AddParent(InChild, InParent, InWeight, bMaintainGlobalTransform, bSetupUndo) end
---@param InName FName
---@param InParent FRigElementKey
---@param InTransform FTransform
---@param bTransformInGlobal boolean
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
---@return FRigElementKey
function URigHierarchyController:AddNull(InName, InParent, InTransform, bTransformInGlobal, bSetupUndo, bPrintPythonCommand) end
---@param InName FName
---@param InValue float
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
---@return FRigElementKey
function URigHierarchyController:AddCurve(InName, InValue, bSetupUndo, bPrintPythonCommand) end
---@param InName FName
---@param InParent FRigElementKey
---@param InSettings FRigControlSettings
---@param InValue FRigControlValue
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
---@return FRigElementKey
function URigHierarchyController:AddControl_ForBlueprint(InName, InParent, InSettings, InValue, bSetupUndo, bPrintPythonCommand) end
---@param InName FName
---@param InParent FRigElementKey
---@param InTransform FTransform
---@param bTransformInGlobal boolean
---@param InBoneType ERigBoneType
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
---@return FRigElementKey
function URigHierarchyController:AddBone(InName, InParent, InTransform, bTransformInGlobal, InBoneType, bSetupUndo, bPrintPythonCommand) end
---@param InName FName
---@param InParentControl FRigElementKey
---@param InSettings FRigControlSettings
---@param bSetupUndo boolean
---@param bPrintPythonCommand boolean
---@return FRigElementKey
function URigHierarchyController:AddAnimationChannel_ForBlueprint(InName, InParentControl, InSettings, bSetupUndo, bPrintPythonCommand) end


---@class UTransformableControlHandle : UTransformableHandle
---@field ControlRig TSoftObjectPtr<UControlRig>
---@field ControlName FName
UTransformableControlHandle = {}

---@return UTransformableControlHandle
function UTransformableControlHandle:get() end



