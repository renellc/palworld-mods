---@meta

---@class FAnimNode_IKRig : FAnimNode_CustomProperty
---@field Source FPoseLink
---@field RigDefinitionAsset UIKRigDefinition
---@field Goals TArray<FIKRigGoal>
---@field bStartFromRefPose boolean
---@field AlphaInputType EAnimAlphaInputType
---@field bAlphaBoolEnabled boolean
---@field Alpha float
---@field AlphaScaleBias FInputScaleBias
---@field AlphaBoolBlend FInputAlphaBoolBlend
---@field AlphaCurveName FName
---@field AlphaScaleBiasClamp FInputScaleBiasClamp
---@field IKRigProcessor UIKRigProcessor
---@field ActualAlpha float
FAnimNode_IKRig = {}

---@return FAnimNode_IKRig
function FAnimNode_IKRig:get() end



---@class FAnimNode_RetargetPoseFromMesh : FAnimNode_Base
---@field SourceMeshComponent TWeakObjectPtr<USkeletalMeshComponent>
---@field bUseAttachedParent boolean
---@field IKRetargeterAsset UIKRetargeter
---@field CustomRetargetProfile FRetargetProfile
---@field bSuppressWarnings boolean
---@field bCopyCurves boolean
---@field Processor UIKRetargetProcessor
FAnimNode_RetargetPoseFromMesh = {}

---@return FAnimNode_RetargetPoseFromMesh
function FAnimNode_RetargetPoseFromMesh:get() end



---@class FBoneChain
---@field ChainName FName
---@field StartBone FBoneReference
---@field EndBone FBoneReference
---@field IKGoalName FName
FBoneChain = {}

---@return FBoneChain
function FBoneChain:get() end



---@class FGoalBone
FGoalBone = {}

---@return FGoalBone
function FGoalBone:get() end


---@class FIKRetargetPose
---@field RootTranslationOffset FVector
---@field BoneRotationOffsets TMap<FName, FQuat>
FIKRetargetPose = {}

---@return FIKRetargetPose
function FIKRetargetPose:get() end



---@class FIKRigGoal
---@field Name FName
---@field TransformSource EIKRigGoalTransformSource
---@field SourceBone FBoneReference
---@field Position FVector
---@field Rotation FRotator
---@field PositionAlpha float
---@field RotationAlpha float
---@field PositionSpace EIKRigGoalSpace
---@field RotationSpace EIKRigGoalSpace
---@field FinalBlendedPosition FVector
---@field FinalBlendedRotation FQuat
FIKRigGoal = {}

---@return FIKRigGoal
function FIKRigGoal:get() end



---@class FIKRigGoalContainer
FIKRigGoalContainer = {}

---@return FIKRigGoalContainer
function FIKRigGoalContainer:get() end


---@class FIKRigInputSkeleton
FIKRigInputSkeleton = {}

---@return FIKRigInputSkeleton
function FIKRigInputSkeleton:get() end


---@class FIKRigSkeleton
---@field BoneNames TArray<FName>
---@field ParentIndices TArray<int32>
---@field ExcludedBones TArray<FName>
---@field CurrentPoseGlobal TArray<FTransform>
---@field CurrentPoseLocal TArray<FTransform>
---@field RefPoseGlobal TArray<FTransform>
FIKRigSkeleton = {}

---@return FIKRigSkeleton
function FIKRigSkeleton:get() end



---@class FLimbLink
FLimbLink = {}

---@return FLimbLink
function FLimbLink:get() end


---@class FLimbSolver
FLimbSolver = {}

---@return FLimbSolver
function FLimbSolver:get() end


---@class FLimbSolverSettings
---@field ReachPrecision float
---@field HingeRotationAxis EAxis::Type
---@field MaxIterations int32
---@field bEnableLimit boolean
---@field MinRotationAngle float
---@field bAveragePull boolean
---@field PullDistribution float
---@field ReachStepAlpha float
---@field bEnableTwistCorrection boolean
---@field EndBoneForwardAxis EAxis::Type
FLimbSolverSettings = {}

---@return FLimbSolverSettings
function FLimbSolverSettings:get() end



---@class FRetargetChainMap
---@field SourceChain FName
---@field TargetChain FName
FRetargetChainMap = {}

---@return FRetargetChainMap
function FRetargetChainMap:get() end



---@class FRetargetDefinition
---@field RootBone FName
---@field BoneChains TArray<FBoneChain>
FRetargetDefinition = {}

---@return FRetargetDefinition
function FRetargetDefinition:get() end



---@class FRetargetGlobalSettings
---@field bEnableRoot boolean
---@field bEnableFK boolean
---@field bEnableIK boolean
---@field bWarping boolean
---@field DirectionSource EWarpingDirectionSource
---@field ForwardDirection EBasicAxis
---@field DirectionChain FName
---@field WarpForwards float
---@field SidewaysOffset float
---@field WarpSplay float
FRetargetGlobalSettings = {}

---@return FRetargetGlobalSettings
function FRetargetGlobalSettings:get() end



---@class FRetargetProfile
---@field bApplyTargetRetargetPose boolean
---@field TargetRetargetPoseName FName
---@field bApplySourceRetargetPose boolean
---@field SourceRetargetPoseName FName
---@field bApplyChainSettings boolean
---@field ChainSettings TMap<FName, FTargetChainSettings>
---@field bApplyRootSettings boolean
---@field RootSettings FTargetRootSettings
---@field bApplyGlobalSettings boolean
---@field GlobalSettings FRetargetGlobalSettings
FRetargetProfile = {}

---@return FRetargetProfile
function FRetargetProfile:get() end



---@class FTargetChainFKSettings
---@field EnableFK boolean
---@field RotationMode ERetargetRotationMode
---@field RotationAlpha float
---@field TranslationMode ERetargetTranslationMode
---@field TranslationAlpha float
---@field PoleVectorMatching float
---@field PoleVectorOffset float
FTargetChainFKSettings = {}

---@return FTargetChainFKSettings
function FTargetChainFKSettings:get() end



---@class FTargetChainIKSettings
---@field EnableIK boolean
---@field BlendToSource float
---@field BlendToSourceWeights FVector
---@field StaticOffset FVector
---@field StaticLocalOffset FVector
---@field StaticRotationOffset FRotator
---@field Extension float
---@field bAffectedByIKWarping boolean
FTargetChainIKSettings = {}

---@return FTargetChainIKSettings
function FTargetChainIKSettings:get() end



---@class FTargetChainSettings
---@field FK FTargetChainFKSettings
---@field IK FTargetChainIKSettings
---@field SpeedPlanting FTargetChainSpeedPlantSettings
FTargetChainSettings = {}

---@return FTargetChainSettings
function FTargetChainSettings:get() end



---@class FTargetChainSpeedPlantSettings
---@field EnableSpeedPlanting boolean
---@field SpeedCurveName FName
---@field SpeedThreshold float
---@field UnplantStiffness float
---@field UnplantCriticalDamping float
FTargetChainSpeedPlantSettings = {}

---@return FTargetChainSpeedPlantSettings
function FTargetChainSpeedPlantSettings:get() end



---@class FTargetRootSettings
---@field RotationAlpha float
---@field TranslationAlpha float
---@field BlendToSource float
---@field BlendToSourceWeights FVector
---@field ScaleHorizontal float
---@field ScaleVertical float
---@field TranslationOffset FVector
---@field RotationOffset FRotator
---@field AffectIKHorizontal float
---@field AffectIKVertical float
FTargetRootSettings = {}

---@return FTargetRootSettings
function FTargetRootSettings:get() end



---@class IIKGoalCreatorInterface : IInterface
IIKGoalCreatorInterface = {}

---@return IIKGoalCreatorInterface
function IIKGoalCreatorInterface:get() end

---@param OutGoals TMap<FName, FIKRigGoal>
function IIKGoalCreatorInterface:AddIKGoals(OutGoals) end


---@class UIKRetargetGlobalSettings : UObject
---@field Settings FRetargetGlobalSettings
UIKRetargetGlobalSettings = {}

---@return UIKRetargetGlobalSettings
function UIKRetargetGlobalSettings:get() end



---@class UIKRetargetProcessor : UObject
---@field IKRigProcessor UIKRigProcessor
UIKRetargetProcessor = {}

---@return UIKRetargetProcessor
function UIKRetargetProcessor:get() end



---@class UIKRetargeter : UObject
---@field SourceIKRigAsset TSoftObjectPtr<UIKRigDefinition>
---@field TargetIKRigAsset TSoftObjectPtr<UIKRigDefinition>
---@field ChainMapping TArray<FRetargetChainMap>
---@field ChainSettings TArray<URetargetChainSettings>
---@field RootSettings URetargetRootSettings
---@field GlobalSettings UIKRetargetGlobalSettings
---@field Profiles TMap<FName, FRetargetProfile>
---@field CurrentProfile FName
---@field SourceRetargetPoses TMap<FName, FIKRetargetPose>
---@field TargetRetargetPoses TMap<FName, FIKRetargetPose>
---@field CurrentSourceRetargetPose FName
---@field CurrentTargetRetargetPose FName
---@field RetargetPoses TMap<FName, FIKRetargetPose>
---@field CurrentRetargetPose FName
UIKRetargeter = {}

---@return UIKRetargeter
function UIKRetargeter:get() end

---@param RetargetProfile FRetargetProfile
---@param RootSettings FTargetRootSettings
function UIKRetargeter:SetRootSettingsInRetargetProfile(RetargetProfile, RootSettings) end
---@param RetargetProfile FRetargetProfile
---@param GlobalSettings FRetargetGlobalSettings
function UIKRetargeter:SetGlobalSettingsInRetargetProfile(RetargetProfile, GlobalSettings) end
---@param RetargetProfile FRetargetProfile
---@param SpeedPlantSettings FTargetChainSpeedPlantSettings
---@param TargetChainName FName
function UIKRetargeter:SetChainSpeedPlantSettingsInRetargetProfile(RetargetProfile, SpeedPlantSettings, TargetChainName) end
---@param RetargetProfile FRetargetProfile
---@param ChainSettings FTargetChainSettings
---@param TargetChainName FName
function UIKRetargeter:SetChainSettingsInRetargetProfile(RetargetProfile, ChainSettings, TargetChainName) end
---@param RetargetProfile FRetargetProfile
---@param IKSettings FTargetChainIKSettings
---@param TargetChainName FName
function UIKRetargeter:SetChainIKSettingsInRetargetProfile(RetargetProfile, IKSettings, TargetChainName) end
---@param RetargetProfile FRetargetProfile
---@param FKSettings FTargetChainFKSettings
---@param TargetChainName FName
function UIKRetargeter:SetChainFKSettingsInRetargetProfile(RetargetProfile, FKSettings, TargetChainName) end
---@param RetargetProfile FRetargetProfile
---@return FTargetRootSettings
function UIKRetargeter:GetRootSettingsFromRetargetProfile(RetargetProfile) end
---@param RetargetAsset UIKRetargeter
---@param OptionalProfileName FName
---@param OutSettings FTargetRootSettings
function UIKRetargeter:GetRootSettingsFromRetargetAsset(RetargetAsset, OptionalProfileName, OutSettings) end
---@param RetargetProfile FRetargetProfile
---@return FRetargetGlobalSettings
function UIKRetargeter:GetGlobalSettingsFromRetargetProfile(RetargetProfile) end
---@param RetargetAsset UIKRetargeter
---@param OptionalProfileName FName
---@param OutSettings FRetargetGlobalSettings
function UIKRetargeter:GetGlobalSettingsFromRetargetAsset(RetargetAsset, OptionalProfileName, OutSettings) end
---@param RetargetAsset UIKRetargeter
---@param IKGoalName FName
---@return FTargetChainSettings
function UIKRetargeter:GetChainUsingGoalFromRetargetAsset(RetargetAsset, IKGoalName) end
---@param RetargetProfile FRetargetProfile
---@param TargetChainName FName
---@return FTargetChainSettings
function UIKRetargeter:GetChainSettingsFromRetargetProfile(RetargetProfile, TargetChainName) end
---@param RetargetAsset UIKRetargeter
---@param TargetChainName FName
---@param OptionalProfileName FName
---@return FTargetChainSettings
function UIKRetargeter:GetChainSettingsFromRetargetAsset(RetargetAsset, TargetChainName, OptionalProfileName) end


---@class UIKRigComponent : UActorComponent
UIKRigComponent = {}

---@return UIKRigComponent
function UIKRigComponent:get() end

---@param GoalName FName
---@param Transform FTransform
---@param PositionAlpha float
---@param RotationAlpha float
function UIKRigComponent:SetIKRigGoalTransform(GoalName, Transform, PositionAlpha, RotationAlpha) end
---@param GoalName FName
---@param Position FVector
---@param Rotation FQuat
---@param PositionAlpha float
---@param RotationAlpha float
function UIKRigComponent:SetIKRigGoalPositionAndRotation(GoalName, Position, Rotation, PositionAlpha, RotationAlpha) end
---@param Goal FIKRigGoal
function UIKRigComponent:SetIKRigGoal(Goal) end
function UIKRigComponent:ClearAllGoals() end


---@class UIKRigDefinition : UObject
---@field PreviewSkeletalMesh TSoftObjectPtr<USkeletalMesh>
---@field Skeleton FIKRigSkeleton
---@field Goals TArray<UIKRigEffectorGoal>
---@field Solvers TArray<UIKRigSolver>
---@field RetargetDefinition FRetargetDefinition
UIKRigDefinition = {}

---@return UIKRigDefinition
function UIKRigDefinition:get() end



---@class UIKRigEffectorGoal : UObject
---@field GoalName FName
---@field BoneName FName
---@field PositionAlpha float
---@field RotationAlpha float
---@field CurrentTransform FTransform
---@field InitialTransform FTransform
UIKRigEffectorGoal = {}

---@return UIKRigEffectorGoal
function UIKRigEffectorGoal:get() end



---@class UIKRigPBIKSolver : UIKRigSolver
---@field RootBone FName
---@field Iterations int32
---@field MassMultiplier float
---@field MinMassMultiplier float
---@field bAllowStretch boolean
---@field RootBehavior EPBIKRootBehavior
---@field bStartSolveFromInputPose boolean
---@field Effectors TArray<UIKRig_FBIKEffector>
---@field BoneSettings TArray<UIKRig_PBIKBoneSettings>
UIKRigPBIKSolver = {}

---@return UIKRigPBIKSolver
function UIKRigPBIKSolver:get() end



---@class UIKRigProcessor : UObject
---@field Solvers TArray<UIKRigSolver>
UIKRigProcessor = {}

---@return UIKRigProcessor
function UIKRigProcessor:get() end



---@class UIKRigSolver : UObject
---@field bIsEnabled boolean
UIKRigSolver = {}

---@return UIKRigSolver
function UIKRigSolver:get() end



---@class UIKRig_BodyMover : UIKRigSolver
---@field RootBone FName
---@field PositionAlpha float
---@field PositionPositiveX float
---@field PositionNegativeX float
---@field PositionPositiveY float
---@field PositionNegativeY float
---@field PositionPositiveZ float
---@field PositionNegativeZ float
---@field RotationAlpha float
---@field RotateXAlpha float
---@field RotateYAlpha float
---@field RotateZAlpha float
---@field Effectors TArray<UIKRig_BodyMoverEffector>
UIKRig_BodyMover = {}

---@return UIKRig_BodyMover
function UIKRig_BodyMover:get() end



---@class UIKRig_BodyMoverEffector : UObject
---@field GoalName FName
---@field BoneName FName
---@field InfluenceMultiplier float
UIKRig_BodyMoverEffector = {}

---@return UIKRig_BodyMoverEffector
function UIKRig_BodyMoverEffector:get() end



---@class UIKRig_FBIKEffector : UObject
---@field GoalName FName
---@field BoneName FName
---@field StrengthAlpha float
---@field PullChainAlpha float
---@field PinRotation float
---@field IndexInSolver int32
UIKRig_FBIKEffector = {}

---@return UIKRig_FBIKEffector
function UIKRig_FBIKEffector:get() end



---@class UIKRig_LimbEffector : UObject
---@field GoalName FName
---@field BoneName FName
UIKRig_LimbEffector = {}

---@return UIKRig_LimbEffector
function UIKRig_LimbEffector:get() end



---@class UIKRig_LimbSolver : UIKRigSolver
---@field RootName FName
---@field ReachPrecision float
---@field HingeRotationAxis EAxis::Type
---@field MaxIterations int32
---@field bEnableLimit boolean
---@field MinRotationAngle float
---@field bAveragePull boolean
---@field PullDistribution float
---@field ReachStepAlpha float
---@field bEnableTwistCorrection boolean
---@field EndBoneForwardAxis EAxis::Type
---@field Effector UIKRig_LimbEffector
UIKRig_LimbSolver = {}

---@return UIKRig_LimbSolver
function UIKRig_LimbSolver:get() end



---@class UIKRig_PBIKBoneSettings : UObject
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
UIKRig_PBIKBoneSettings = {}

---@return UIKRig_PBIKBoneSettings
function UIKRig_PBIKBoneSettings:get() end



---@class UIKRig_PoleSolver : UIKRigSolver
---@field RootName FName
---@field EndName FName
---@field Effector UIKRig_PoleSolverEffector
UIKRig_PoleSolver = {}

---@return UIKRig_PoleSolver
function UIKRig_PoleSolver:get() end



---@class UIKRig_PoleSolverEffector : UObject
---@field GoalName FName
---@field BoneName FName
---@field Alpha float
UIKRig_PoleSolverEffector = {}

---@return UIKRig_PoleSolverEffector
function UIKRig_PoleSolverEffector:get() end



---@class UIKRig_SetTransform : UIKRigSolver
---@field Goal FName
---@field RootBone FName
---@field Effector UIKRig_SetTransformEffector
UIKRig_SetTransform = {}

---@return UIKRig_SetTransform
function UIKRig_SetTransform:get() end



---@class UIKRig_SetTransformEffector : UObject
---@field bEnablePosition boolean
---@field bEnableRotation boolean
---@field Alpha float
UIKRig_SetTransformEffector = {}

---@return UIKRig_SetTransformEffector
function UIKRig_SetTransformEffector:get() end



---@class URetargetChainSettings : UObject
---@field SourceChain FName
---@field TargetChain FName
---@field Settings FTargetChainSettings
---@field CopyPoseUsingFK boolean
---@field RotationMode ERetargetRotationMode
---@field RotationAlpha float
---@field TranslationMode ERetargetTranslationMode
---@field TranslationAlpha float
---@field DriveIKGoal boolean
---@field BlendToSource float
---@field BlendToSourceWeights FVector
---@field StaticOffset FVector
---@field StaticLocalOffset FVector
---@field StaticRotationOffset FRotator
---@field Extension float
---@field UseSpeedCurveToPlantIK boolean
---@field SpeedCurveName FName
---@field VelocityThreshold float
---@field UnplantStiffness float
---@field UnplantCriticalDamping float
URetargetChainSettings = {}

---@return URetargetChainSettings
function URetargetChainSettings:get() end



---@class URetargetRootSettings : UObject
---@field Settings FTargetRootSettings
---@field RetargetRootTranslation boolean
---@field GlobalScaleHorizontal float
---@field GlobalScaleVertical float
---@field BlendToSource FVector
---@field StaticOffset FVector
---@field StaticRotationOffset FRotator
URetargetRootSettings = {}

---@return URetargetRootSettings
function URetargetRootSettings:get() end



