---@meta

---@class FAngularRangeLimit
---@field LimitMin FVector
---@field LimitMax FVector
---@field bone FBoneReference
FAngularRangeLimit = {}

---@return FAngularRangeLimit
function FAngularRangeLimit:get() end



---@class FAnimLegIKData
FAnimLegIKData = {}

---@return FAnimLegIKData
function FAnimLegIKData:get() end


---@class FAnimLegIKDefinition
---@field IKFootBone FBoneReference
---@field FKFootBone FBoneReference
---@field NumBonesInLimb int32
---@field MinRotationAngle float
---@field FootBoneForwardAxis EAxis::Type
---@field HingeRotationAxis EAxis::Type
---@field bEnableRotationLimit boolean
---@field bEnableKneeTwistCorrection boolean
FAnimLegIKDefinition = {}

---@return FAnimLegIKDefinition
function FAnimLegIKDefinition:get() end



---@class FAnimNode_AimOffsetLookAt : FAnimNode_BlendSpacePlayer
---@field BasePose FPoseLink
---@field LODThreshold int32
---@field SourceSocketName FName
---@field PivotSocketName FName
---@field LookAtLocation FVector
---@field SocketAxis FVector
---@field Alpha float
FAnimNode_AimOffsetLookAt = {}

---@return FAnimNode_AimOffsetLookAt
function FAnimNode_AimOffsetLookAt:get() end



---@class FAnimNode_AnimDynamics : FAnimNode_SkeletalControlBase
---@field LinearDampingOverride float
---@field AngularDampingOverride float
---@field RelativeSpaceBone FBoneReference
---@field BoundBone FBoneReference
---@field ChainEnd FBoneReference
---@field PhysicsBodyDefinitions TArray<FAnimPhysBodyDefinition>
---@field GravityScale float
---@field GravityOverride FVector
---@field LinearSpringConstant float
---@field AngularSpringConstant float
---@field WindScale float
---@field ComponentLinearAccScale FVector
---@field ComponentLinearVelScale FVector
---@field ComponentAppliedLinearAccClamp FVector
---@field AngularBiasOverride float
---@field NumSolverIterationsPreUpdate int32
---@field NumSolverIterationsPostUpdate int32
---@field SphericalLimits TArray<FAnimPhysSphericalLimit>
---@field ExternalForce FVector
---@field PlanarLimits TArray<FAnimPhysPlanarLimit>
---@field SimulationSpace AnimPhysSimSpaceType
---@field bUseSphericalLimits boolean
---@field bUsePlanarLimit boolean
---@field bDoUpdate boolean
---@field bDoEval boolean
---@field bOverrideLinearDamping boolean
---@field bOverrideAngularBias boolean
---@field bOverrideAngularDamping boolean
---@field bEnableWind boolean
---@field bUseGravityOverride boolean
---@field bGravityOverrideInSimSpace boolean
---@field bLinearSpring boolean
---@field bAngularSpring boolean
---@field bChain boolean
---@field RetargetingSettings FRotationRetargetingInfo
FAnimNode_AnimDynamics = {}

---@return FAnimNode_AnimDynamics
function FAnimNode_AnimDynamics:get() end



---@class FAnimNode_ApplyAdditive : FAnimNode_Base
---@field Base FPoseLink
---@field Additive FPoseLink
---@field Alpha float
---@field AlphaScaleBias FInputScaleBias
---@field LODThreshold int32
---@field AlphaBoolBlend FInputAlphaBoolBlend
---@field AlphaCurveName FName
---@field AlphaScaleBiasClamp FInputScaleBiasClamp
---@field AlphaInputType EAnimAlphaInputType
---@field bAlphaBoolEnabled boolean
FAnimNode_ApplyAdditive = {}

---@return FAnimNode_ApplyAdditive
function FAnimNode_ApplyAdditive:get() end



---@class FAnimNode_ApplyLimits : FAnimNode_SkeletalControlBase
---@field AngularRangeLimits TArray<FAngularRangeLimit>
---@field AngularOffsets TArray<FVector>
FAnimNode_ApplyLimits = {}

---@return FAnimNode_ApplyLimits
function FAnimNode_ApplyLimits:get() end



---@class FAnimNode_BlendBoneByChannel : FAnimNode_Base
---@field A FPoseLink
---@field B FPoseLink
---@field BoneDefinitions TArray<FBlendBoneByChannelEntry>
---@field Alpha float
---@field AlphaScaleBias FInputScaleBias
---@field TransformsSpace EBoneControlSpace
FAnimNode_BlendBoneByChannel = {}

---@return FAnimNode_BlendBoneByChannel
function FAnimNode_BlendBoneByChannel:get() end



---@class FAnimNode_BlendListBase : FAnimNode_Base
---@field BlendPose TArray<FPoseLink>
FAnimNode_BlendListBase = {}

---@return FAnimNode_BlendListBase
function FAnimNode_BlendListBase:get() end



---@class FAnimNode_BlendListByBool : FAnimNode_BlendListBase
FAnimNode_BlendListByBool = {}

---@return FAnimNode_BlendListByBool
function FAnimNode_BlendListByBool:get() end


---@class FAnimNode_BlendListByEnum : FAnimNode_BlendListBase
FAnimNode_BlendListByEnum = {}

---@return FAnimNode_BlendListByEnum
function FAnimNode_BlendListByEnum:get() end


---@class FAnimNode_BlendListByInt : FAnimNode_BlendListBase
FAnimNode_BlendListByInt = {}

---@return FAnimNode_BlendListByInt
function FAnimNode_BlendListByInt:get() end


---@class FAnimNode_BlendSpaceEvaluator : FAnimNode_BlendSpacePlayer
---@field NormalizedTime float
---@field bTeleportToNormalizedTime boolean
FAnimNode_BlendSpaceEvaluator = {}

---@return FAnimNode_BlendSpaceEvaluator
function FAnimNode_BlendSpaceEvaluator:get() end



---@class FAnimNode_BlendSpaceGraph : FAnimNode_BlendSpaceGraphBase
FAnimNode_BlendSpaceGraph = {}

---@return FAnimNode_BlendSpaceGraph
function FAnimNode_BlendSpaceGraph:get() end


---@class FAnimNode_BlendSpaceGraphBase : FAnimNode_Base
---@field X float
---@field Y float
---@field GroupName FName
---@field GroupRole EAnimGroupRole::Type
---@field BlendSpace UBlendSpace
---@field SamplePoseLinks TArray<FPoseLink>
FAnimNode_BlendSpaceGraphBase = {}

---@return FAnimNode_BlendSpaceGraphBase
function FAnimNode_BlendSpaceGraphBase:get() end



---@class FAnimNode_BlendSpacePlayer : FAnimNode_BlendSpacePlayerBase
---@field BlendSpace UBlendSpace
FAnimNode_BlendSpacePlayer = {}

---@return FAnimNode_BlendSpacePlayer
function FAnimNode_BlendSpacePlayer:get() end



---@class FAnimNode_BlendSpacePlayerBase : FAnimNode_AssetPlayerBase
---@field PreviousBlendSpace UBlendSpace
FAnimNode_BlendSpacePlayerBase = {}

---@return FAnimNode_BlendSpacePlayerBase
function FAnimNode_BlendSpacePlayerBase:get() end



---@class FAnimNode_BlendSpacePlayer_Standalone : FAnimNode_BlendSpacePlayerBase
---@field GroupName FName
---@field GroupRole EAnimGroupRole::Type
---@field Method EAnimSyncMethod
---@field bIgnoreForRelevancyTest boolean
---@field X float
---@field Y float
---@field PlayRate float
---@field bLoop boolean
---@field bResetPlayTimeWhenBlendSpaceChanges boolean
---@field StartPosition float
---@field BlendSpace UBlendSpace
FAnimNode_BlendSpacePlayer_Standalone = {}

---@return FAnimNode_BlendSpacePlayer_Standalone
function FAnimNode_BlendSpacePlayer_Standalone:get() end



---@class FAnimNode_BlendSpaceSampleResult : FAnimNode_Root
FAnimNode_BlendSpaceSampleResult = {}

---@return FAnimNode_BlendSpaceSampleResult
function FAnimNode_BlendSpaceSampleResult:get() end


---@class FAnimNode_BoneDrivenController : FAnimNode_SkeletalControlBase
---@field SourceBone FBoneReference
---@field DrivingCurve UCurveFloat
---@field Multiplier float
---@field RangeMin float
---@field RangeMax float
---@field RemappedMin float
---@field RemappedMax float
---@field ParameterName FName
---@field TargetBone FBoneReference
---@field DestinationMode EDrivenDestinationMode
---@field ModificationMode EDrivenBoneModificationMode
---@field SourceComponent EComponentType::Type
---@field bUseRange boolean
---@field bAffectTargetTranslationX boolean
---@field bAffectTargetTranslationY boolean
---@field bAffectTargetTranslationZ boolean
---@field bAffectTargetRotationX boolean
---@field bAffectTargetRotationY boolean
---@field bAffectTargetRotationZ boolean
---@field bAffectTargetScaleX boolean
---@field bAffectTargetScaleY boolean
---@field bAffectTargetScaleZ boolean
FAnimNode_BoneDrivenController = {}

---@return FAnimNode_BoneDrivenController
function FAnimNode_BoneDrivenController:get() end



---@class FAnimNode_CCDIK : FAnimNode_SkeletalControlBase
---@field EffectorLocation FVector
---@field EffectorLocationSpace EBoneControlSpace
---@field EffectorTarget FBoneSocketTarget
---@field TipBone FBoneReference
---@field RootBone FBoneReference
---@field Precision float
---@field MaxIterations int32
---@field bStartFromTail boolean
---@field bEnableRotationLimit boolean
---@field RotationLimitPerJoints TArray<float>
FAnimNode_CCDIK = {}

---@return FAnimNode_CCDIK
function FAnimNode_CCDIK:get() end



---@class FAnimNode_CallFunction : FAnimNode_Base
---@field Source FPoseLink
---@field CallSite EAnimFunctionCallSite
FAnimNode_CallFunction = {}

---@return FAnimNode_CallFunction
function FAnimNode_CallFunction:get() end



---@class FAnimNode_Constraint : FAnimNode_SkeletalControlBase
---@field BoneToModify FBoneReference
---@field ConstraintSetup TArray<FConstraint>
---@field ConstraintWeights TArray<float>
FAnimNode_Constraint = {}

---@return FAnimNode_Constraint
function FAnimNode_Constraint:get() end



---@class FAnimNode_CopyBone : FAnimNode_SkeletalControlBase
---@field SourceBone FBoneReference
---@field TargetBone FBoneReference
---@field bCopyTranslation boolean
---@field bCopyRotation boolean
---@field bCopyScale boolean
---@field ControlSpace EBoneControlSpace
FAnimNode_CopyBone = {}

---@return FAnimNode_CopyBone
function FAnimNode_CopyBone:get() end



---@class FAnimNode_CopyBoneDelta : FAnimNode_SkeletalControlBase
---@field SourceBone FBoneReference
---@field TargetBone FBoneReference
---@field bCopyTranslation boolean
---@field bCopyRotation boolean
---@field bCopyScale boolean
---@field CopyMode CopyBoneDeltaMode
---@field TranslationMultiplier float
---@field RotationMultiplier float
---@field ScaleMultiplier float
FAnimNode_CopyBoneDelta = {}

---@return FAnimNode_CopyBoneDelta
function FAnimNode_CopyBoneDelta:get() end



---@class FAnimNode_CopyPoseFromMesh : FAnimNode_Base
---@field SourceMeshComponent TWeakObjectPtr<USkeletalMeshComponent>
---@field bUseAttachedParent boolean
---@field bCopyCurves boolean
---@field bCopyCustomAttributes boolean
---@field bUseMeshPose boolean
---@field RootBoneToCopy FName
FAnimNode_CopyPoseFromMesh = {}

---@return FAnimNode_CopyPoseFromMesh
function FAnimNode_CopyPoseFromMesh:get() end



---@class FAnimNode_CurveSource : FAnimNode_Base
---@field SourcePose FPoseLink
---@field SourceBinding FName
---@field Alpha float
---@field CurveSource TScriptInterface<ICurveSourceInterface>
FAnimNode_CurveSource = {}

---@return FAnimNode_CurveSource
function FAnimNode_CurveSource:get() end



---@class FAnimNode_Fabrik : FAnimNode_SkeletalControlBase
---@field EffectorTransform FTransform
---@field EffectorTarget FBoneSocketTarget
---@field TipBone FBoneReference
---@field RootBone FBoneReference
---@field Precision float
---@field MaxIterations int32
---@field EffectorTransformSpace EBoneControlSpace
---@field EffectorRotationSource EBoneRotationSource
FAnimNode_Fabrik = {}

---@return FAnimNode_Fabrik
function FAnimNode_Fabrik:get() end



---@class FAnimNode_HandIKRetargeting : FAnimNode_SkeletalControlBase
---@field RightHandFK FBoneReference
---@field LeftHandFK FBoneReference
---@field RightHandIK FBoneReference
---@field LeftHandIK FBoneReference
---@field IKBonesToMove TArray<FBoneReference>
---@field HandFKWeight float
FAnimNode_HandIKRetargeting = {}

---@return FAnimNode_HandIKRetargeting
function FAnimNode_HandIKRetargeting:get() end



---@class FAnimNode_LayeredBoneBlend : FAnimNode_Base
---@field BasePose FPoseLink
---@field BlendPoses TArray<FPoseLink>
---@field BlendMode ELayeredBoneBlendMode
---@field BlendMasks TArray<UBlendProfile>
---@field LayerSetup TArray<FInputBlendPose>
---@field BlendWeights TArray<float>
---@field bMeshSpaceRotationBlend boolean
---@field bMeshSpaceScaleBlend boolean
---@field CurveBlendOption ECurveBlendOption::Type
---@field bBlendRootMotionBasedOnRootBone boolean
---@field LODThreshold int32
---@field PerBoneBlendWeights TArray<FPerBoneBlendWeight>
---@field SkeletonGuid FGuid
---@field VirtualBoneGuid FGuid
FAnimNode_LayeredBoneBlend = {}

---@return FAnimNode_LayeredBoneBlend
function FAnimNode_LayeredBoneBlend:get() end



---@class FAnimNode_LegIK : FAnimNode_SkeletalControlBase
---@field ReachPrecision float
---@field MaxIterations int32
---@field LegsDefinition TArray<FAnimLegIKDefinition>
FAnimNode_LegIK = {}

---@return FAnimNode_LegIK
function FAnimNode_LegIK:get() end



---@class FAnimNode_LookAt : FAnimNode_SkeletalControlBase
---@field BoneToModify FBoneReference
---@field LookAtTarget FBoneSocketTarget
---@field LookAtLocation FVector
---@field LookAt_Axis FAxis
---@field bUseLookUpAxis boolean
---@field InterpolationType EInterpolationBlend::Type
---@field LookUp_Axis FAxis
---@field LookAtClamp float
---@field InterpolationTime float
---@field InterpolationTriggerThreashold float
FAnimNode_LookAt = {}

---@return FAnimNode_LookAt
function FAnimNode_LookAt:get() end



---@class FAnimNode_MakeDynamicAdditive : FAnimNode_Base
---@field Base FPoseLink
---@field Additive FPoseLink
---@field bMeshSpaceAdditive boolean
FAnimNode_MakeDynamicAdditive = {}

---@return FAnimNode_MakeDynamicAdditive
function FAnimNode_MakeDynamicAdditive:get() end



---@class FAnimNode_MeshSpaceRefPose : FAnimNode_Base
FAnimNode_MeshSpaceRefPose = {}

---@return FAnimNode_MeshSpaceRefPose
function FAnimNode_MeshSpaceRefPose:get() end


---@class FAnimNode_Mirror : FAnimNode_MirrorBase
FAnimNode_Mirror = {}

---@return FAnimNode_Mirror
function FAnimNode_Mirror:get() end


---@class FAnimNode_MirrorBase : FAnimNode_Base
---@field Source FPoseLink
FAnimNode_MirrorBase = {}

---@return FAnimNode_MirrorBase
function FAnimNode_MirrorBase:get() end



---@class FAnimNode_Mirror_Standalone : FAnimNode_MirrorBase
---@field bMirror boolean
---@field MirrorDataTable UMirrorDataTable
---@field BlendTime float
---@field bResetChild boolean
---@field bBoneMirroring boolean
---@field bCurveMirroring boolean
---@field bAttributeMirroring boolean
FAnimNode_Mirror_Standalone = {}

---@return FAnimNode_Mirror_Standalone
function FAnimNode_Mirror_Standalone:get() end



---@class FAnimNode_ModifyBone : FAnimNode_SkeletalControlBase
---@field BoneToModify FBoneReference
---@field Translation FVector
---@field Rotation FRotator
---@field Scale FVector
---@field TranslationMode EBoneModificationMode
---@field RotationMode EBoneModificationMode
---@field ScaleMode EBoneModificationMode
---@field TranslationSpace EBoneControlSpace
---@field RotationSpace EBoneControlSpace
---@field ScaleSpace EBoneControlSpace
FAnimNode_ModifyBone = {}

---@return FAnimNode_ModifyBone
function FAnimNode_ModifyBone:get() end



---@class FAnimNode_ModifyCurve : FAnimNode_Base
---@field SourcePose FPoseLink
---@field CurveMap TMap<FName, float>
---@field CurveValues TArray<float>
---@field CurveNames TArray<FName>
---@field Alpha float
---@field ApplyMode EModifyCurveApplyMode
FAnimNode_ModifyCurve = {}

---@return FAnimNode_ModifyCurve
function FAnimNode_ModifyCurve:get() end



---@class FAnimNode_MultiWayBlend : FAnimNode_Base
---@field Poses TArray<FPoseLink>
---@field DesiredAlphas TArray<float>
---@field AlphaScaleBias FInputScaleBias
---@field bAdditiveNode boolean
---@field bNormalizeAlpha boolean
FAnimNode_MultiWayBlend = {}

---@return FAnimNode_MultiWayBlend
function FAnimNode_MultiWayBlend:get() end



---@class FAnimNode_ObserveBone : FAnimNode_SkeletalControlBase
---@field BoneToObserve FBoneReference
---@field DisplaySpace EBoneControlSpace
---@field bRelativeToRefPose boolean
---@field Translation FVector
---@field Rotation FRotator
---@field Scale FVector
FAnimNode_ObserveBone = {}

---@return FAnimNode_ObserveBone
function FAnimNode_ObserveBone:get() end



---@class FAnimNode_PoseBlendNode : FAnimNode_PoseHandler
---@field SourcePose FPoseLink
---@field BlendOption EAlphaBlendOption
---@field CustomCurve UCurveFloat
FAnimNode_PoseBlendNode = {}

---@return FAnimNode_PoseBlendNode
function FAnimNode_PoseBlendNode:get() end



---@class FAnimNode_PoseByName : FAnimNode_PoseHandler
---@field PoseName FName
---@field PoseWeight float
FAnimNode_PoseByName = {}

---@return FAnimNode_PoseByName
function FAnimNode_PoseByName:get() end



---@class FAnimNode_PoseDriver : FAnimNode_PoseHandler
---@field SourcePose FPoseLink
---@field SourceBones TArray<FBoneReference>
---@field OnlyDriveBones TArray<FBoneReference>
---@field PoseTargets TArray<FPoseDriverTarget>
---@field EvalSpaceBone FBoneReference
---@field bEvalFromRefPose boolean
---@field RBFParams FRBFParams
---@field DriveSource EPoseDriverSource
---@field DriveOutput EPoseDriverOutput
---@field bOnlyDriveSelectedBones boolean
---@field LODThreshold int32
FAnimNode_PoseDriver = {}

---@return FAnimNode_PoseDriver
function FAnimNode_PoseDriver:get() end



---@class FAnimNode_PoseHandler : FAnimNode_AssetPlayerBase
---@field PoseAsset UPoseAsset
FAnimNode_PoseHandler = {}

---@return FAnimNode_PoseHandler
function FAnimNode_PoseHandler:get() end



---@class FAnimNode_PoseSnapshot : FAnimNode_Base
---@field SnapshotName FName
---@field Snapshot FPoseSnapshot
---@field Mode ESnapshotSourceMode
FAnimNode_PoseSnapshot = {}

---@return FAnimNode_PoseSnapshot
function FAnimNode_PoseSnapshot:get() end



---@class FAnimNode_RandomPlayer : FAnimNode_AssetPlayerRelevancyBase
---@field Entries TArray<FRandomPlayerSequenceEntry>
---@field BlendWeight float
---@field bShuffleMode boolean
FAnimNode_RandomPlayer = {}

---@return FAnimNode_RandomPlayer
function FAnimNode_RandomPlayer:get() end



---@class FAnimNode_RefPose : FAnimNode_Base
FAnimNode_RefPose = {}

---@return FAnimNode_RefPose
function FAnimNode_RefPose:get() end


---@class FAnimNode_ResetRoot : FAnimNode_SkeletalControlBase
FAnimNode_ResetRoot = {}

---@return FAnimNode_ResetRoot
function FAnimNode_ResetRoot:get() end


---@class FAnimNode_RigidBody : FAnimNode_SkeletalControlBase
---@field OverridePhysicsAsset UPhysicsAsset
---@field OverrideWorldGravity FVector
---@field ExternalForce FVector
---@field ComponentLinearAccScale FVector
---@field ComponentLinearVelScale FVector
---@field ComponentAppliedLinearAccClamp FVector
---@field SimSpaceSettings FSimSpaceSettings
---@field CachedBoundsScale float
---@field BaseBoneRef FBoneReference
---@field OverlapChannel ECollisionChannel
---@field SimulationSpace ESimulationSpace
---@field bForceDisableCollisionBetweenConstraintBodies boolean
---@field bUseExternalClothCollision boolean
---@field bEnableWorldGeometry boolean
---@field bOverrideWorldGravity boolean
---@field bTransferBoneVelocities boolean
---@field bFreezeIncomingPoseOnStart boolean
---@field bClampLinearTranslationLimitToRefPose boolean
---@field WorldSpaceMinimumScale float
---@field EvaluationResetTime float
---@field SimulationTiming ESimulationTiming
FAnimNode_RigidBody = {}

---@return FAnimNode_RigidBody
function FAnimNode_RigidBody:get() end



---@class FAnimNode_RotateRootBone : FAnimNode_Base
---@field BasePose FPoseLink
---@field Pitch float
---@field Yaw float
---@field PitchScaleBiasClamp FInputScaleBiasClamp
---@field YawScaleBiasClamp FInputScaleBiasClamp
---@field MeshToComponent FRotator
FAnimNode_RotateRootBone = {}

---@return FAnimNode_RotateRootBone
function FAnimNode_RotateRootBone:get() end



---@class FAnimNode_RotationMultiplier : FAnimNode_SkeletalControlBase
---@field TargetBone FBoneReference
---@field SourceBone FBoneReference
---@field Multiplier float
---@field RotationAxisToRefer EBoneAxis
---@field bIsAdditive boolean
FAnimNode_RotationMultiplier = {}

---@return FAnimNode_RotationMultiplier
function FAnimNode_RotationMultiplier:get() end



---@class FAnimNode_RotationOffsetBlendSpace : FAnimNode_BlendSpacePlayer
---@field BasePose FPoseLink
---@field LODThreshold int32
---@field Alpha float
---@field AlphaScaleBias FInputScaleBias
---@field AlphaBoolBlend FInputAlphaBoolBlend
---@field AlphaCurveName FName
---@field AlphaScaleBiasClamp FInputScaleBiasClamp
---@field AlphaInputType EAnimAlphaInputType
---@field bAlphaBoolEnabled boolean
FAnimNode_RotationOffsetBlendSpace = {}

---@return FAnimNode_RotationOffsetBlendSpace
function FAnimNode_RotationOffsetBlendSpace:get() end



---@class FAnimNode_RotationOffsetBlendSpaceGraph : FAnimNode_BlendSpaceGraphBase
---@field BasePose FPoseLink
---@field LODThreshold int32
---@field Alpha float
---@field AlphaScaleBias FInputScaleBias
---@field AlphaBoolBlend FInputAlphaBoolBlend
---@field AlphaCurveName FName
---@field AlphaScaleBiasClamp FInputScaleBiasClamp
---@field AlphaInputType EAnimAlphaInputType
---@field bAlphaBoolEnabled boolean
FAnimNode_RotationOffsetBlendSpaceGraph = {}

---@return FAnimNode_RotationOffsetBlendSpaceGraph
function FAnimNode_RotationOffsetBlendSpaceGraph:get() end



---@class FAnimNode_ScaleChainLength : FAnimNode_Base
---@field InputPose FPoseLink
---@field DefaultChainLength float
---@field ChainStartBone FBoneReference
---@field ChainEndBone FBoneReference
---@field TargetLocation FVector
---@field Alpha float
---@field AlphaScaleBias FInputScaleBias
---@field ChainInitialLength EScaleChainInitialLength
FAnimNode_ScaleChainLength = {}

---@return FAnimNode_ScaleChainLength
function FAnimNode_ScaleChainLength:get() end



---@class FAnimNode_SequenceEvaluator : FAnimNode_SequenceEvaluatorBase
FAnimNode_SequenceEvaluator = {}

---@return FAnimNode_SequenceEvaluator
function FAnimNode_SequenceEvaluator:get() end


---@class FAnimNode_SequenceEvaluatorBase : FAnimNode_AssetPlayerBase
FAnimNode_SequenceEvaluatorBase = {}

---@return FAnimNode_SequenceEvaluatorBase
function FAnimNode_SequenceEvaluatorBase:get() end


---@class FAnimNode_SequenceEvaluator_Standalone : FAnimNode_SequenceEvaluatorBase
---@field GroupName FName
---@field GroupRole EAnimGroupRole::Type
---@field Method EAnimSyncMethod
---@field bIgnoreForRelevancyTest boolean
---@field Sequence UAnimSequenceBase
---@field ExplicitTime float
---@field bShouldLoop boolean
---@field bTeleportToExplicitTime boolean
---@field ReinitializationBehavior ESequenceEvalReinit::Type
---@field StartPosition float
FAnimNode_SequenceEvaluator_Standalone = {}

---@return FAnimNode_SequenceEvaluator_Standalone
function FAnimNode_SequenceEvaluator_Standalone:get() end



---@class FAnimNode_SkeletalControlBase : FAnimNode_Base
---@field ComponentPose FComponentSpacePoseLink
---@field LODThreshold int32
---@field ActualAlpha float
---@field AlphaInputType EAnimAlphaInputType
---@field bAlphaBoolEnabled boolean
---@field Alpha float
---@field AlphaScaleBias FInputScaleBias
---@field AlphaBoolBlend FInputAlphaBoolBlend
---@field AlphaCurveName FName
---@field AlphaScaleBiasClamp FInputScaleBiasClamp
FAnimNode_SkeletalControlBase = {}

---@return FAnimNode_SkeletalControlBase
function FAnimNode_SkeletalControlBase:get() end



---@class FAnimNode_Slot : FAnimNode_Base
---@field Source FPoseLink
---@field SlotName FName
---@field bAlwaysUpdateSourcePose boolean
FAnimNode_Slot = {}

---@return FAnimNode_Slot
function FAnimNode_Slot:get() end



---@class FAnimNode_SplineIK : FAnimNode_SkeletalControlBase
---@field StartBone FBoneReference
---@field EndBone FBoneReference
---@field BoneAxis ESplineBoneAxis
---@field bAutoCalculateSpline boolean
---@field PointCount int32
---@field ControlPoints TArray<FTransform>
---@field Roll float
---@field TwistStart float
---@field TwistEnd float
---@field TwistBlend FAlphaBlend
---@field Stretch float
---@field Offset float
FAnimNode_SplineIK = {}

---@return FAnimNode_SplineIK
function FAnimNode_SplineIK:get() end



---@class FAnimNode_SpringBone : FAnimNode_SkeletalControlBase
---@field SpringBone FBoneReference
---@field MaxDisplacement float
---@field SpringStiffness float
---@field SpringDamping float
---@field ErrorResetThresh float
---@field bLimitDisplacement boolean
---@field bTranslateX boolean
---@field bTranslateY boolean
---@field bTranslateZ boolean
---@field bRotateX boolean
---@field bRotateY boolean
---@field bRotateZ boolean
FAnimNode_SpringBone = {}

---@return FAnimNode_SpringBone
function FAnimNode_SpringBone:get() end



---@class FAnimNode_StateResult : FAnimNode_Root
FAnimNode_StateResult = {}

---@return FAnimNode_StateResult
function FAnimNode_StateResult:get() end


---@class FAnimNode_Sync : FAnimNode_Base
---@field Source FPoseLink
---@field GroupName FName
---@field GroupRole EAnimGroupRole::Type
FAnimNode_Sync = {}

---@return FAnimNode_Sync
function FAnimNode_Sync:get() end



---@class FAnimNode_Trail : FAnimNode_SkeletalControlBase
---@field TrailBone FBoneReference
---@field ChainLength int32
---@field ChainBoneAxis EAxis::Type
---@field bInvertChainBoneAxis boolean
---@field bLimitStretch boolean
---@field bLimitRotation boolean
---@field bUsePlanarLimit boolean
---@field bActorSpaceFakeVel boolean
---@field bReorientParentToChild boolean
---@field MaxDeltaTime float
---@field RelaxationSpeedScale float
---@field TrailRelaxationSpeed FRuntimeFloatCurve
---@field RelaxationSpeedScaleInputProcessor FInputScaleBiasClamp
---@field RotationLimits TArray<FRotationLimit>
---@field RotationOffsets TArray<FVector>
---@field PlanarLimits TArray<FAnimPhysPlanarLimit>
---@field StretchLimit float
---@field FakeVelocity FVector
---@field BaseJoint FBoneReference
---@field LastBoneRotationAnimAlphaBlend float
FAnimNode_Trail = {}

---@return FAnimNode_Trail
function FAnimNode_Trail:get() end



---@class FAnimNode_TwistCorrectiveNode : FAnimNode_SkeletalControlBase
---@field BaseFrame FReferenceBoneFrame
---@field TwistFrame FReferenceBoneFrame
---@field TwistPlaneNormalAxis FAxis
---@field RangeMax float
---@field RemappedMin float
---@field RemappedMax float
---@field Curve FAnimCurveParam
FAnimNode_TwistCorrectiveNode = {}

---@return FAnimNode_TwistCorrectiveNode
function FAnimNode_TwistCorrectiveNode:get() end



---@class FAnimNode_TwoBoneIK : FAnimNode_SkeletalControlBase
---@field IKBone FBoneReference
---@field StartStretchRatio float
---@field MaxStretchScale float
---@field EffectorLocation FVector
---@field EffectorTarget FBoneSocketTarget
---@field JointTargetLocation FVector
---@field JointTarget FBoneSocketTarget
---@field TwistAxis FAxis
---@field EffectorLocationSpace EBoneControlSpace
---@field JointTargetLocationSpace EBoneControlSpace
---@field bAllowStretching boolean
---@field bTakeRotationFromEffectorSpace boolean
---@field bMaintainEffectorRelRot boolean
---@field bAllowTwist boolean
FAnimNode_TwoBoneIK = {}

---@return FAnimNode_TwoBoneIK
function FAnimNode_TwoBoneIK:get() end



---@class FAnimNode_TwoWayBlend : FAnimNode_Base
---@field A FPoseLink
---@field B FPoseLink
---@field AlphaInputType EAnimAlphaInputType
---@field bAlphaBoolEnabled boolean
---@field bResetChildOnActivation boolean
---@field Alpha float
---@field AlphaScaleBias FInputScaleBias
---@field AlphaBoolBlend FInputAlphaBoolBlend
---@field AlphaCurveName FName
---@field AlphaScaleBiasClamp FInputScaleBiasClamp
FAnimNode_TwoWayBlend = {}

---@return FAnimNode_TwoWayBlend
function FAnimNode_TwoWayBlend:get() end



---@class FAnimPhysBodyDefinition
---@field BoundBone FBoneReference
---@field BoxExtents FVector
---@field LocalJointOffset FVector
---@field ConstraintSetup FAnimPhysConstraintSetup
---@field CollisionType AnimPhysCollisionType
---@field SphereCollisionRadius float
FAnimPhysBodyDefinition = {}

---@return FAnimPhysBodyDefinition
function FAnimPhysBodyDefinition:get() end



---@class FAnimPhysConstraintSetup
---@field LinearXLimitType AnimPhysLinearConstraintType
---@field LinearYLimitType AnimPhysLinearConstraintType
---@field LinearZLimitType AnimPhysLinearConstraintType
---@field LinearAxesMin FVector
---@field LinearAxesMax FVector
---@field AngularConstraintType AnimPhysAngularConstraintType
---@field TwistAxis AnimPhysTwistAxis
---@field AngularTargetAxis AnimPhysTwistAxis
---@field ConeAngle float
---@field AngularLimitsMin FVector
---@field AngularLimitsMax FVector
---@field AngularTarget FVector
FAnimPhysConstraintSetup = {}

---@return FAnimPhysConstraintSetup
function FAnimPhysConstraintSetup:get() end



---@class FAnimPhysPlanarLimit
---@field DrivingBone FBoneReference
---@field PlaneTransform FTransform
FAnimPhysPlanarLimit = {}

---@return FAnimPhysPlanarLimit
function FAnimPhysPlanarLimit:get() end



---@class FAnimPhysSphericalLimit
---@field DrivingBone FBoneReference
---@field SphereLocalOffset FVector
---@field LimitRadius float
---@field LimitType ESphericalLimitType
FAnimPhysSphericalLimit = {}

---@return FAnimPhysSphericalLimit
function FAnimPhysSphericalLimit:get() end



---@class FAnimSequencerInstanceProxy : FAnimInstanceProxy
FAnimSequencerInstanceProxy = {}

---@return FAnimSequencerInstanceProxy
function FAnimSequencerInstanceProxy:get() end


---@class FAnimationStateMachineReference : FAnimNodeReference
FAnimationStateMachineReference = {}

---@return FAnimationStateMachineReference
function FAnimationStateMachineReference:get() end


---@class FAnimationStateResultReference : FAnimNodeReference
FAnimationStateResultReference = {}

---@return FAnimationStateResultReference
function FAnimationStateResultReference:get() end


---@class FBlendBoneByChannelEntry
---@field SourceBone FBoneReference
---@field TargetBone FBoneReference
---@field bBlendTranslation boolean
---@field bBlendRotation boolean
---@field bBlendScale boolean
FBlendBoneByChannelEntry = {}

---@return FBlendBoneByChannelEntry
function FBlendBoneByChannelEntry:get() end



---@class FBlendSpacePlayerReference : FAnimNodeReference
FBlendSpacePlayerReference = {}

---@return FBlendSpacePlayerReference
function FBlendSpacePlayerReference:get() end


---@class FConstraint
---@field TargetBone FBoneReference
---@field OffsetOption EConstraintOffsetOption
---@field TransformType ETransformConstraintType
---@field PerAxis FFilterOptionPerAxis
FConstraint = {}

---@return FConstraint
function FConstraint:get() end



---@class FIKChain
FIKChain = {}

---@return FIKChain
function FIKChain:get() end


---@class FIKChainLink
FIKChainLink = {}

---@return FIKChainLink
function FIKChainLink:get() end


---@class FIKFootPelvisPullDownSolver
---@field PelvisAdjustmentInterp FVectorRK4SpringInterpolator
---@field PelvisAdjustmentInterpAlpha float
---@field PelvisAdjustmentMaxDistance float
---@field PelvisAdjustmentErrorTolerance float
---@field PelvisAdjustmentMaxIter int32
FIKFootPelvisPullDownSolver = {}

---@return FIKFootPelvisPullDownSolver
function FIKFootPelvisPullDownSolver:get() end



---@class FLayeredBoneBlendReference : FAnimNodeReference
FLayeredBoneBlendReference = {}

---@return FLayeredBoneBlendReference
function FLayeredBoneBlendReference:get() end


---@class FLinkedAnimGraphReference : FAnimNodeReference
FLinkedAnimGraphReference = {}

---@return FLinkedAnimGraphReference
function FLinkedAnimGraphReference:get() end


---@class FPoseDriverTarget
---@field BoneTransforms TArray<FPoseDriverTransform>
---@field TargetRotation FRotator
---@field TargetScale float
---@field DistanceMethod ERBFDistanceMethod
---@field FunctionType ERBFFunctionType
---@field bApplyCustomCurve boolean
---@field CustomCurve FRichCurve
---@field DrivenName FName
---@field bIsHidden boolean
FPoseDriverTarget = {}

---@return FPoseDriverTarget
function FPoseDriverTarget:get() end



---@class FPoseDriverTransform
---@field TargetTranslation FVector
---@field TargetRotation FRotator
FPoseDriverTransform = {}

---@return FPoseDriverTransform
function FPoseDriverTransform:get() end



---@class FPositionHistory
---@field Positions TArray<FVector>
---@field Range float
FPositionHistory = {}

---@return FPositionHistory
function FPositionHistory:get() end



---@class FRBFEntry
---@field Values TArray<float>
FRBFEntry = {}

---@return FRBFEntry
function FRBFEntry:get() end



---@class FRBFParams
---@field TargetDimensions int32
---@field SolverType ERBFSolverType
---@field Radius float
---@field bAutomaticRadius boolean
---@field Function ERBFFunctionType
---@field DistanceMethod ERBFDistanceMethod
---@field TwistAxis EBoneAxis
---@field WeightThreshold float
---@field NormalizeMethod ERBFNormalizeMethod
---@field MedianReference FVector
---@field MedianMin float
---@field MedianMax float
FRBFParams = {}

---@return FRBFParams
function FRBFParams:get() end



---@class FRBFTarget : FRBFEntry
---@field ScaleFactor float
---@field bApplyCustomCurve boolean
---@field CustomCurve FRichCurve
---@field DistanceMethod ERBFDistanceMethod
---@field FunctionType ERBFFunctionType
FRBFTarget = {}

---@return FRBFTarget
function FRBFTarget:get() end



---@class FRandomPlayerSequenceEntry
---@field Sequence UAnimSequence
---@field ChanceToPlay float
---@field MinLoopCount int32
---@field maxLoopCount int32
---@field MinPlayRate float
---@field MaxPlayRate float
---@field BlendIn FAlphaBlend
FRandomPlayerSequenceEntry = {}

---@return FRandomPlayerSequenceEntry
function FRandomPlayerSequenceEntry:get() end



---@class FReferenceBoneFrame
---@field bone FBoneReference
---@field Axis FAxis
FReferenceBoneFrame = {}

---@return FReferenceBoneFrame
function FReferenceBoneFrame:get() end



---@class FRotationLimit
---@field LimitMin FVector
---@field LimitMax FVector
FRotationLimit = {}

---@return FRotationLimit
function FRotationLimit:get() end



---@class FRotationRetargetingInfo
---@field bEnabled boolean
---@field Source FTransform
---@field Target FTransform
---@field RotationComponent ERotationComponent
---@field TwistAxis FVector
---@field bUseAbsoluteAngle boolean
---@field SourceMinimum float
---@field SourceMaximum float
---@field TargetMinimum float
---@field TargetMaximum float
---@field EasingType EEasingFuncType
---@field CustomCurve FRuntimeFloatCurve
---@field bFlipEasing boolean
---@field EasingWeight float
---@field bClamp boolean
FRotationRetargetingInfo = {}

---@return FRotationRetargetingInfo
function FRotationRetargetingInfo:get() end



---@class FSequenceEvaluatorReference : FAnimNodeReference
FSequenceEvaluatorReference = {}

---@return FSequenceEvaluatorReference
function FSequenceEvaluatorReference:get() end


---@class FSequencePlayerReference : FAnimNodeReference
FSequencePlayerReference = {}

---@return FSequencePlayerReference
function FSequencePlayerReference:get() end


---@class FSimSpaceSettings
---@field WorldAlpha float
---@field VelocityScaleZ float
---@field MaxLinearVelocity float
---@field MaxAngularVelocity float
---@field MaxLinearAcceleration float
---@field MaxAngularAcceleration float
---@field ExternalLinearDrag float
---@field ExternalLinearDragV FVector
---@field ExternalLinearVelocity FVector
---@field ExternalAngularVelocity FVector
FSimSpaceSettings = {}

---@return FSimSpaceSettings
function FSimSpaceSettings:get() end



---@class FSkeletalControlReference : FAnimNodeReference
FSkeletalControlReference = {}

---@return FSkeletalControlReference
function FSkeletalControlReference:get() end


---@class FSplineIKCachedBoneData
---@field bone FBoneReference
---@field RefSkeletonIndex int32
FSplineIKCachedBoneData = {}

---@return FSplineIKCachedBoneData
function FSplineIKCachedBoneData:get() end



---@class FWarpingVectorValue
---@field Mode EWarpingVectorMode
---@field Value FVector
FWarpingVectorValue = {}

---@return FWarpingVectorValue
function FWarpingVectorValue:get() end



---@class ISequencerAnimationSupport : IInterface
ISequencerAnimationSupport = {}

---@return ISequencerAnimationSupport
function ISequencerAnimationSupport:get() end


---@class UAnimExecutionContextLibrary : UBlueprintFunctionLibrary
UAnimExecutionContextLibrary = {}

---@return UAnimExecutionContextLibrary
function UAnimExecutionContextLibrary:get() end

---@param Context FAnimUpdateContext
---@return float
function UAnimExecutionContextLibrary:GetDeltaTime(Context) end
---@param Context FAnimUpdateContext
---@return float
function UAnimExecutionContextLibrary:GetCurrentWeight(Context) end
---@param Instance UAnimInstance
---@param Index int32
---@return FAnimNodeReference
function UAnimExecutionContextLibrary:GetAnimNodeReference(Instance, Index) end
---@param Context FAnimExecutionContext
---@return UAnimInstance
function UAnimExecutionContextLibrary:GetAnimInstance(Context) end
---@param Context FAnimExecutionContext
---@param Result EAnimExecutionContextConversionResult
---@return FAnimUpdateContext
function UAnimExecutionContextLibrary:ConvertToUpdateContext(Context, Result) end
---@param Context FAnimExecutionContext
---@param Result EAnimExecutionContextConversionResult
---@return FAnimPoseContext
function UAnimExecutionContextLibrary:ConvertToPoseContext(Context, Result) end
---@param Context FAnimExecutionContext
---@param Result EAnimExecutionContextConversionResult
---@return FAnimInitializationContext
function UAnimExecutionContextLibrary:ConvertToInitializationContext(Context, Result) end
---@param Context FAnimExecutionContext
---@param Result EAnimExecutionContextConversionResult
---@return FAnimComponentSpacePoseContext
function UAnimExecutionContextLibrary:ConvertToComponentSpacePoseContext(Context, Result) end


---@class UAnimNotify_PlayMontageNotify : UAnimNotify
---@field NotifyName FName
UAnimNotify_PlayMontageNotify = {}

---@return UAnimNotify_PlayMontageNotify
function UAnimNotify_PlayMontageNotify:get() end



---@class UAnimNotify_PlayMontageNotifyWindow : UAnimNotifyState
---@field NotifyName FName
UAnimNotify_PlayMontageNotifyWindow = {}

---@return UAnimNotify_PlayMontageNotifyWindow
function UAnimNotify_PlayMontageNotifyWindow:get() end



---@class UAnimSequencerInstance : UAnimInstance
UAnimSequencerInstance = {}

---@return UAnimSequencerInstance
function UAnimSequencerInstance:get() end


---@class UAnimationStateMachineLibrary : UBlueprintFunctionLibrary
UAnimationStateMachineLibrary = {}

---@return UAnimationStateMachineLibrary
function UAnimationStateMachineLibrary:get() end

---@param UpdateContext FAnimUpdateContext
---@param Node FAnimationStateMachineReference
---@param TargetState FName
---@param Duration float
---@param BlendType ETransitionLogicType::Type
---@param BlendProfile UBlendProfile
---@param AlphaBlendOption EAlphaBlendOption
---@param CustomBlendCurve UCurveFloat
function UAnimationStateMachineLibrary:SetState(UpdateContext, Node, TargetState, Duration, BlendType, BlendProfile, AlphaBlendOption, CustomBlendCurve) end
---@param UpdateContext FAnimUpdateContext
---@param Node FAnimationStateResultReference
---@return boolean
function UAnimationStateMachineLibrary:IsStateBlendingOut(UpdateContext, Node) end
---@param UpdateContext FAnimUpdateContext
---@param Node FAnimationStateResultReference
---@return boolean
function UAnimationStateMachineLibrary:IsStateBlendingIn(UpdateContext, Node) end
---@param UpdateContext FAnimUpdateContext
---@param Node FAnimationStateMachineReference
---@return FName
function UAnimationStateMachineLibrary:GetState(UpdateContext, Node) end
---@param UpdateContext FAnimUpdateContext
---@param Node FAnimationStateResultReference
---@return float
function UAnimationStateMachineLibrary:GetRelevantAnimTimeRemainingFraction(UpdateContext, Node) end
---@param UpdateContext FAnimUpdateContext
---@param Node FAnimationStateResultReference
---@return float
function UAnimationStateMachineLibrary:GetRelevantAnimTimeRemaining(UpdateContext, Node) end
---@param Node FAnimNodeReference
---@param AnimationState FAnimationStateResultReference
---@param Result boolean
function UAnimationStateMachineLibrary:ConvertToAnimationStateResultPure(Node, AnimationState, Result) end
---@param Node FAnimNodeReference
---@param AnimationState FAnimationStateResultReference
---@param Result EAnimNodeReferenceConversionResult
function UAnimationStateMachineLibrary:ConvertToAnimationStateResult(Node, AnimationState, Result) end
---@param Node FAnimNodeReference
---@param AnimationState FAnimationStateMachineReference
---@param Result boolean
function UAnimationStateMachineLibrary:ConvertToAnimationStateMachinePure(Node, AnimationState, Result) end
---@param Node FAnimNodeReference
---@param AnimationState FAnimationStateMachineReference
---@param Result EAnimNodeReferenceConversionResult
function UAnimationStateMachineLibrary:ConvertToAnimationStateMachine(Node, AnimationState, Result) end


---@class UBlendSpacePlayerLibrary : UBlueprintFunctionLibrary
UBlendSpacePlayerLibrary = {}

---@return UBlendSpacePlayerLibrary
function UBlendSpacePlayerLibrary:get() end

---@param BlendSpacePlayer FBlendSpacePlayerReference
---@return boolean
function UBlendSpacePlayerLibrary:ShouldResetPlayTimeWhenBlendSpaceChanges(BlendSpacePlayer) end
---@param BlendSpacePlayer FBlendSpacePlayerReference
---@param bReset boolean
---@return FBlendSpacePlayerReference
function UBlendSpacePlayerLibrary:SetResetPlayTimeWhenBlendSpaceChanges(BlendSpacePlayer, bReset) end
---@param BlendSpacePlayer FBlendSpacePlayerReference
---@param PlayRate float
---@return FBlendSpacePlayerReference
function UBlendSpacePlayerLibrary:SetPlayRate(BlendSpacePlayer, PlayRate) end
---@param BlendSpacePlayer FBlendSpacePlayerReference
---@param bLoop boolean
---@return FBlendSpacePlayerReference
function UBlendSpacePlayerLibrary:SetLoop(BlendSpacePlayer, bLoop) end
---@param UpdateContext FAnimUpdateContext
---@param BlendSpacePlayer FBlendSpacePlayerReference
---@param BlendSpace UBlendSpace
---@param BlendTime float
---@return FBlendSpacePlayerReference
function UBlendSpacePlayerLibrary:SetBlendSpaceWithInertialBlending(UpdateContext, BlendSpacePlayer, BlendSpace, BlendTime) end
---@param BlendSpacePlayer FBlendSpacePlayerReference
---@param BlendSpace UBlendSpace
---@return FBlendSpacePlayerReference
function UBlendSpacePlayerLibrary:SetBlendSpace(BlendSpacePlayer, BlendSpace) end
---@param BlendSpacePlayer FBlendSpacePlayerReference
---@return float
function UBlendSpacePlayerLibrary:GetStartPosition(BlendSpacePlayer) end
---@param BlendSpacePlayer FBlendSpacePlayerReference
---@return FVector
function UBlendSpacePlayerLibrary:GetPosition(BlendSpacePlayer) end
---@param BlendSpacePlayer FBlendSpacePlayerReference
---@return float
function UBlendSpacePlayerLibrary:GetPlayRate(BlendSpacePlayer) end
---@param BlendSpacePlayer FBlendSpacePlayerReference
---@return boolean
function UBlendSpacePlayerLibrary:GetLoop(BlendSpacePlayer) end
---@param BlendSpacePlayer FBlendSpacePlayerReference
---@return UBlendSpace
function UBlendSpacePlayerLibrary:GetBlendSpace(BlendSpacePlayer) end
---@param Node FAnimNodeReference
---@param BlendSpacePlayer FBlendSpacePlayerReference
---@param Result boolean
function UBlendSpacePlayerLibrary:ConvertToBlendSpacePlayerPure(Node, BlendSpacePlayer, Result) end
---@param Node FAnimNodeReference
---@param Result EAnimNodeReferenceConversionResult
---@return FBlendSpacePlayerReference
function UBlendSpacePlayerLibrary:ConvertToBlendSpacePlayer(Node, Result) end


---@class UKismetAnimationLibrary : UBlueprintFunctionLibrary
UKismetAnimationLibrary = {}

---@return UKismetAnimationLibrary
function UKismetAnimationLibrary:get() end

---@param RootPos FVector
---@param JointPos FVector
---@param EndPos FVector
---@param JointTarget FVector
---@param Effector FVector
---@param OutJointPos FVector
---@param OutEndPos FVector
---@param bAllowStretching boolean
---@param StartStretchRatio float
---@param MaxStretchScale float
function UKismetAnimationLibrary:K2_TwoBoneIK(RootPos, JointPos, EndPos, JointTarget, Effector, OutJointPos, OutEndPos, bAllowStretching, StartStretchRatio, MaxStretchScale) end
function UKismetAnimationLibrary:K2_StartProfilingTimer() end
---@param X float
---@param Y float
---@param Z float
---@param RangeOutMinX float
---@param RangeOutMaxX float
---@param RangeOutMinY float
---@param RangeOutMaxY float
---@param RangeOutMinZ float
---@param RangeOutMaxZ float
---@return FVector
function UKismetAnimationLibrary:K2_MakePerlinNoiseVectorAndRemap(X, Y, Z, RangeOutMinX, RangeOutMaxX, RangeOutMinY, RangeOutMaxY, RangeOutMinZ, RangeOutMaxZ) end
---@param Value float
---@param RangeOutMin float
---@param RangeOutMax float
---@return float
function UKismetAnimationLibrary:K2_MakePerlinNoiseAndRemap(Value, RangeOutMin, RangeOutMax) end
---@param CurrentTransform FTransform
---@param targetPosition FVector
---@param LookAtVector FVector
---@param bUseUpVector boolean
---@param UpVector FVector
---@param ClampConeInDegree float
---@return FTransform
function UKismetAnimationLibrary:K2_LookAt(CurrentTransform, targetPosition, LookAtVector, bUseUpVector, UpVector, ClampConeInDegree) end
---@param bLog boolean
---@param LogPrefix FString
---@return float
function UKismetAnimationLibrary:K2_EndProfilingTimer(bLog, LogPrefix) end
---@param Component USkeletalMeshComponent
---@param SocketOrBoneNameA FName
---@param SocketSpaceA ERelativeTransformSpace
---@param SocketOrBoneNameB FName
---@param SocketSpaceB ERelativeTransformSpace
---@param bRemapRange boolean
---@param InRangeMin float
---@param InRangeMax float
---@param OutRangeMin float
---@param OutRangeMax float
---@return float
function UKismetAnimationLibrary:K2_DistanceBetweenTwoSocketsAndMapRange(Component, SocketOrBoneNameA, SocketSpaceA, SocketOrBoneNameB, SocketSpaceB, bRemapRange, InRangeMin, InRangeMax, OutRangeMin, OutRangeMax) end
---@param Component USkeletalMeshComponent
---@param SocketOrBoneNameFrom FName
---@param SocketOrBoneNameTo FName
---@return FVector
function UKismetAnimationLibrary:K2_DirectionBetweenSockets(Component, SocketOrBoneNameFrom, SocketOrBoneNameTo) end
---@param DeltaSeconds float
---@param Component USkeletalMeshComponent
---@param SocketOrBoneName FName
---@param ReferenceSocketOrBone FName
---@param SocketSpace ERelativeTransformSpace
---@param OffsetInBoneSpace FVector
---@param History FPositionHistory
---@param NumberOfSamples int32
---@param VelocityMin float
---@param VelocityMax float
---@param EasingType EEasingFuncType
---@param CustomCurve FRuntimeFloatCurve
---@return float
function UKismetAnimationLibrary:K2_CalculateVelocityFromSockets(DeltaSeconds, Component, SocketOrBoneName, ReferenceSocketOrBone, SocketSpace, OffsetInBoneSpace, History, NumberOfSamples, VelocityMin, VelocityMax, EasingType, CustomCurve) end
---@param DeltaSeconds float
---@param Position FVector
---@param History FPositionHistory
---@param NumberOfSamples int32
---@param VelocityMin float
---@param VelocityMax float
---@return float
function UKismetAnimationLibrary:K2_CalculateVelocityFromPositionHistory(DeltaSeconds, Position, History, NumberOfSamples, VelocityMin, VelocityMax) end
---@param Velocity FVector
---@param BaseRotation FRotator
---@return float
function UKismetAnimationLibrary:CalculateDirection(Velocity, BaseRotation) end


---@class ULayeredBoneBlendLibrary : UBlueprintFunctionLibrary
ULayeredBoneBlendLibrary = {}

---@return ULayeredBoneBlendLibrary
function ULayeredBoneBlendLibrary:get() end

---@param UpdateContext FAnimUpdateContext
---@param LayeredBoneBlend FLayeredBoneBlendReference
---@param PoseIndex int32
---@param BlendMaskName FName
---@return FLayeredBoneBlendReference
function ULayeredBoneBlendLibrary:SetBlendMask(UpdateContext, LayeredBoneBlend, PoseIndex, BlendMaskName) end
---@param LayeredBoneBlend FLayeredBoneBlendReference
---@return int32
function ULayeredBoneBlendLibrary:GetNumPoses(LayeredBoneBlend) end
---@param Node FAnimNodeReference
---@param Result EAnimNodeReferenceConversionResult
---@return FLayeredBoneBlendReference
function ULayeredBoneBlendLibrary:ConvertToLayeredBoneBlend(Node, Result) end
---@param Node FAnimNodeReference
---@param LayeredBoneBlend FLayeredBoneBlendReference
---@param Result boolean
function ULayeredBoneBlendLibrary:ConvertToLayeredBlendPerBonePure(Node, LayeredBoneBlend, Result) end


---@class ULinkedAnimGraphLibrary : UBlueprintFunctionLibrary
ULinkedAnimGraphLibrary = {}

---@return ULinkedAnimGraphLibrary
function ULinkedAnimGraphLibrary:get() end

---@param Node FLinkedAnimGraphReference
---@return boolean
function ULinkedAnimGraphLibrary:HasLinkedAnimInstance(Node) end
---@param Node FLinkedAnimGraphReference
---@return UAnimInstance
function ULinkedAnimGraphLibrary:GetLinkedAnimInstance(Node) end
---@param Node FAnimNodeReference
---@param LinkedAnimGraph FLinkedAnimGraphReference
---@param Result boolean
function ULinkedAnimGraphLibrary:ConvertToLinkedAnimGraphPure(Node, LinkedAnimGraph, Result) end
---@param Node FAnimNodeReference
---@param Result EAnimNodeReferenceConversionResult
---@return FLinkedAnimGraphReference
function ULinkedAnimGraphLibrary:ConvertToLinkedAnimGraph(Node, Result) end


---@class UPlayMontageCallbackProxy : UObject
---@field OnCompleted FPlayMontageCallbackProxyOnCompleted
---@field OnBlendOut FPlayMontageCallbackProxyOnBlendOut
---@field OnInterrupted FPlayMontageCallbackProxyOnInterrupted
---@field OnNotifyBegin FPlayMontageCallbackProxyOnNotifyBegin
---@field OnNotifyEnd FPlayMontageCallbackProxyOnNotifyEnd
UPlayMontageCallbackProxy = {}

---@return UPlayMontageCallbackProxy
function UPlayMontageCallbackProxy:get() end

---@param NotifyName FName
---@param BranchingPointNotifyPayload FBranchingPointNotifyPayload
function UPlayMontageCallbackProxy:OnNotifyEndReceived(NotifyName, BranchingPointNotifyPayload) end
---@param NotifyName FName
---@param BranchingPointNotifyPayload FBranchingPointNotifyPayload
function UPlayMontageCallbackProxy:OnNotifyBeginReceived(NotifyName, BranchingPointNotifyPayload) end
---@param Montage UAnimMontage
---@param bInterrupted boolean
function UPlayMontageCallbackProxy:OnMontageEnded(Montage, bInterrupted) end
---@param Montage UAnimMontage
---@param bInterrupted boolean
function UPlayMontageCallbackProxy:OnMontageBlendingOut(Montage, bInterrupted) end
---@param InSkeletalMeshComponent USkeletalMeshComponent
---@param MontageToPlay UAnimMontage
---@param PlayRate float
---@param StartingPosition float
---@param StartingSection FName
---@return UPlayMontageCallbackProxy
function UPlayMontageCallbackProxy:CreateProxyObjectForPlayMontage(InSkeletalMeshComponent, MontageToPlay, PlayRate, StartingPosition, StartingSection) end


---@class USequenceEvaluatorLibrary : UBlueprintFunctionLibrary
USequenceEvaluatorLibrary = {}

---@return USequenceEvaluatorLibrary
function USequenceEvaluatorLibrary:get() end

---@param UpdateContext FAnimUpdateContext
---@param SequenceEvaluator FSequenceEvaluatorReference
---@param Sequence UAnimSequenceBase
---@param BlendTime float
---@return FSequenceEvaluatorReference
function USequenceEvaluatorLibrary:SetSequenceWithInertialBlending(UpdateContext, SequenceEvaluator, Sequence, BlendTime) end
---@param SequenceEvaluator FSequenceEvaluatorReference
---@param Sequence UAnimSequenceBase
---@return FSequenceEvaluatorReference
function USequenceEvaluatorLibrary:SetSequence(SequenceEvaluator, Sequence) end
---@param SequenceEvaluator FSequenceEvaluatorReference
---@param Time float
---@return FSequenceEvaluatorReference
function USequenceEvaluatorLibrary:SetExplicitTime(SequenceEvaluator, Time) end
---@param SequenceEvaluator FSequenceEvaluatorReference
---@return UAnimSequenceBase
function USequenceEvaluatorLibrary:GetSequence(SequenceEvaluator) end
---@param SequenceEvaluator FSequenceEvaluatorReference
---@return float
function USequenceEvaluatorLibrary:GetAccumulatedTime(SequenceEvaluator) end
---@param Node FAnimNodeReference
---@param SequenceEvaluator FSequenceEvaluatorReference
---@param Result boolean
function USequenceEvaluatorLibrary:ConvertToSequenceEvaluatorPure(Node, SequenceEvaluator, Result) end
---@param Node FAnimNodeReference
---@param Result EAnimNodeReferenceConversionResult
---@return FSequenceEvaluatorReference
function USequenceEvaluatorLibrary:ConvertToSequenceEvaluator(Node, Result) end
---@param UpdateContext FAnimUpdateContext
---@param SequenceEvaluator FSequenceEvaluatorReference
---@param PlayRate float
---@return FSequenceEvaluatorReference
function USequenceEvaluatorLibrary:AdvanceTime(UpdateContext, SequenceEvaluator, PlayRate) end


---@class USequencePlayerLibrary : UBlueprintFunctionLibrary
USequencePlayerLibrary = {}

---@return USequencePlayerLibrary
function USequencePlayerLibrary:get() end

---@param SequencePlayer FSequencePlayerReference
---@param StartPosition float
---@return FSequencePlayerReference
function USequencePlayerLibrary:SetStartPosition(SequencePlayer, StartPosition) end
---@param UpdateContext FAnimUpdateContext
---@param SequencePlayer FSequencePlayerReference
---@param Sequence UAnimSequenceBase
---@param BlendTime float
---@return FSequencePlayerReference
function USequencePlayerLibrary:SetSequenceWithInertialBlending(UpdateContext, SequencePlayer, Sequence, BlendTime) end
---@param SequencePlayer FSequencePlayerReference
---@param Sequence UAnimSequenceBase
---@return FSequencePlayerReference
function USequencePlayerLibrary:SetSequence(SequencePlayer, Sequence) end
---@param SequencePlayer FSequencePlayerReference
---@param PlayRate float
---@return FSequencePlayerReference
function USequencePlayerLibrary:SetPlayRate(SequencePlayer, PlayRate) end
---@param SequencePlayer FSequencePlayerReference
---@param Time float
---@return FSequencePlayerReference
function USequencePlayerLibrary:SetAccumulatedTime(SequencePlayer, Time) end
---@param SequencePlayer FSequencePlayerReference
---@return float
function USequencePlayerLibrary:GetStartPosition(SequencePlayer) end
---@param SequencePlayer FSequencePlayerReference
---@return UAnimSequenceBase
function USequencePlayerLibrary:GetSequencePure(SequencePlayer) end
---@param SequencePlayer FSequencePlayerReference
---@param SequenceBase UAnimSequenceBase
---@return FSequencePlayerReference
function USequencePlayerLibrary:GetSequence(SequencePlayer, SequenceBase) end
---@param SequencePlayer FSequencePlayerReference
---@return float
function USequencePlayerLibrary:GetPlayRate(SequencePlayer) end
---@param SequencePlayer FSequencePlayerReference
---@return boolean
function USequencePlayerLibrary:GetLoopAnimation(SequencePlayer) end
---@param SequencePlayer FSequencePlayerReference
---@return float
function USequencePlayerLibrary:GetAccumulatedTime(SequencePlayer) end
---@param Node FAnimNodeReference
---@param SequencePlayer FSequencePlayerReference
---@param Result boolean
function USequencePlayerLibrary:ConvertToSequencePlayerPure(Node, SequencePlayer, Result) end
---@param Node FAnimNodeReference
---@param Result EAnimNodeReferenceConversionResult
---@return FSequencePlayerReference
function USequencePlayerLibrary:ConvertToSequencePlayer(Node, Result) end
---@param SequencePlayer FSequencePlayerReference
---@param Duration float
---@return float
function USequencePlayerLibrary:ComputePlayRateFromDuration(SequencePlayer, Duration) end


---@class USkeletalControlLibrary : UBlueprintFunctionLibrary
USkeletalControlLibrary = {}

---@return USkeletalControlLibrary
function USkeletalControlLibrary:get() end

---@param SkeletalControl FSkeletalControlReference
---@param Alpha float
---@return FSkeletalControlReference
function USkeletalControlLibrary:SetAlpha(SkeletalControl, Alpha) end
---@param SkeletalControl FSkeletalControlReference
---@return float
function USkeletalControlLibrary:GetAlpha(SkeletalControl) end
---@param Node FAnimNodeReference
---@param SkeletalControl FSkeletalControlReference
---@param Result boolean
function USkeletalControlLibrary:ConvertToSkeletalControlPure(Node, SkeletalControl, Result) end
---@param Node FAnimNodeReference
---@param Result EAnimNodeReferenceConversionResult
---@return FSkeletalControlReference
function USkeletalControlLibrary:ConvertToSkeletalControl(Node, Result) end


