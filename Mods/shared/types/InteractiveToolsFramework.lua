---@meta

---@class ACombinedTransformGizmoActor : AGizmoActor
---@field TranslateX UPrimitiveComponent
---@field TranslateY UPrimitiveComponent
---@field TranslateZ UPrimitiveComponent
---@field TranslateYZ UPrimitiveComponent
---@field TranslateXZ UPrimitiveComponent
---@field TranslateXY UPrimitiveComponent
---@field RotateX UPrimitiveComponent
---@field RotateY UPrimitiveComponent
---@field RotateZ UPrimitiveComponent
---@field UniformScale UPrimitiveComponent
---@field AxisScaleX UPrimitiveComponent
---@field AxisScaleY UPrimitiveComponent
---@field AxisScaleZ UPrimitiveComponent
---@field PlaneScaleYZ UPrimitiveComponent
---@field PlaneScaleXZ UPrimitiveComponent
---@field PlaneScaleXY UPrimitiveComponent
ACombinedTransformGizmoActor = {}

---@return ACombinedTransformGizmoActor
function ACombinedTransformGizmoActor:get() end



---@class AGizmoActor : AInternalToolFrameworkActor
AGizmoActor = {}

---@return AGizmoActor
function AGizmoActor:get() end


---@class AInternalToolFrameworkActor : AActor
---@field bIsSelectableInEditor boolean
AInternalToolFrameworkActor = {}

---@return AInternalToolFrameworkActor
function AInternalToolFrameworkActor:get() end



---@class AIntervalGizmoActor : AGizmoActor
---@field UpIntervalComponent UGizmoLineHandleComponent
---@field DownIntervalComponent UGizmoLineHandleComponent
---@field ForwardIntervalComponent UGizmoLineHandleComponent
AIntervalGizmoActor = {}

---@return AIntervalGizmoActor
function AIntervalGizmoActor:get() end



---@class FActiveGizmo
---@field Gizmo UInteractiveGizmo
FActiveGizmo = {}

---@return FActiveGizmo
function FActiveGizmo:get() end



---@class FBehaviorInfo
---@field Behavior UInputBehavior
FBehaviorInfo = {}

---@return FBehaviorInfo
function FBehaviorInfo:get() end



---@class FBrushStampData
FBrushStampData = {}

---@return FBrushStampData
function FBrushStampData:get() end


---@class FGizmoElementColorAttribute
---@field Value FLinearColor
---@field bHasValue boolean
---@field bOverridesChildState boolean
FGizmoElementColorAttribute = {}

---@return FGizmoElementColorAttribute
function FGizmoElementColorAttribute:get() end



---@class FGizmoElementLineRenderStateAttributes
---@field LineColor FGizmoElementColorAttribute
---@field HoverLineColor FGizmoElementColorAttribute
---@field InteractLineColor FGizmoElementColorAttribute
FGizmoElementLineRenderStateAttributes = {}

---@return FGizmoElementLineRenderStateAttributes
function FGizmoElementLineRenderStateAttributes:get() end



---@class FGizmoElementMaterialAttribute
---@field Value TWeakObjectPtr<UMaterialInterface>
---@field bOverridesChildState boolean
FGizmoElementMaterialAttribute = {}

---@return FGizmoElementMaterialAttribute
function FGizmoElementMaterialAttribute:get() end



---@class FGizmoElementMeshRenderStateAttributes
---@field Material FGizmoElementMaterialAttribute
---@field HoverMaterial FGizmoElementMaterialAttribute
---@field InteractMaterial FGizmoElementMaterialAttribute
---@field VertexColor FGizmoElementColorAttribute
---@field HoverVertexColor FGizmoElementColorAttribute
---@field InteractVertexColor FGizmoElementColorAttribute
FGizmoElementMeshRenderStateAttributes = {}

---@return FGizmoElementMeshRenderStateAttributes
function FGizmoElementMeshRenderStateAttributes:get() end



---@class FGizmoFloatParameterChange
---@field InitialValue float
---@field CurrentValue float
FGizmoFloatParameterChange = {}

---@return FGizmoFloatParameterChange
function FGizmoFloatParameterChange:get() end



---@class FGizmoVec2ParameterChange
---@field InitialValue FVector2D
---@field CurrentValue FVector2D
FGizmoVec2ParameterChange = {}

---@return FGizmoVec2ParameterChange
function FGizmoVec2ParameterChange:get() end



---@class FInputRayHit
FInputRayHit = {}

---@return FInputRayHit
function FInputRayHit:get() end


---@class IAssetBackedTarget : IInterface
IAssetBackedTarget = {}

---@return IAssetBackedTarget
function IAssetBackedTarget:get() end


---@class IGizmoAxisSource : IInterface
IGizmoAxisSource = {}

---@return IGizmoAxisSource
function IGizmoAxisSource:get() end

---@return boolean
function IGizmoAxisSource:HasTangentVectors() end
---@param TangentXOut FVector
---@param TangentYOut FVector
function IGizmoAxisSource:GetTangentVectors(TangentXOut, TangentYOut) end
---@return FVector
function IGizmoAxisSource:GetOrigin() end
---@return FVector
function IGizmoAxisSource:GetDirection() end


---@class IGizmoClickMultiTarget : IInterface
IGizmoClickMultiTarget = {}

---@return IGizmoClickMultiTarget
function IGizmoClickMultiTarget:get() end

---@param bInteracting boolean
---@param InPartIdentifier uint32
function IGizmoClickMultiTarget:UpdateInteractingState(bInteracting, InPartIdentifier) end
---@param bHovering boolean
---@param InPartIdentifier uint32
function IGizmoClickMultiTarget:UpdateHoverState(bHovering, InPartIdentifier) end
---@param bHittable boolean
---@param InPartIdentifier uint32
function IGizmoClickMultiTarget:UpdateHittableState(bHittable, InPartIdentifier) end


---@class IGizmoClickTarget : IInterface
IGizmoClickTarget = {}

---@return IGizmoClickTarget
function IGizmoClickTarget:get() end

---@param bInteracting boolean
function IGizmoClickTarget:UpdateInteractingState(bInteracting) end
---@param bHovering boolean
function IGizmoClickTarget:UpdateHoverState(bHovering) end


---@class IGizmoFloatParameterSource : IInterface
IGizmoFloatParameterSource = {}

---@return IGizmoFloatParameterSource
function IGizmoFloatParameterSource:get() end

---@param NewValue float
function IGizmoFloatParameterSource:SetParameter(NewValue) end
---@return float
function IGizmoFloatParameterSource:GetParameter() end
function IGizmoFloatParameterSource:EndModify() end
function IGizmoFloatParameterSource:BeginModify() end


---@class IGizmoRenderMultiTarget : IInterface
IGizmoRenderMultiTarget = {}

---@return IGizmoRenderMultiTarget
function IGizmoRenderMultiTarget:get() end

---@param bVisible boolean
---@param InPartIdentifier uint32
function IGizmoRenderMultiTarget:UpdateVisibilityState(bVisible, InPartIdentifier) end


---@class IGizmoRenderTarget : IInterface
IGizmoRenderTarget = {}

---@return IGizmoRenderTarget
function IGizmoRenderTarget:get() end


---@class IGizmoStateTarget : IInterface
IGizmoStateTarget = {}

---@return IGizmoStateTarget
function IGizmoStateTarget:get() end

function IGizmoStateTarget:EndUpdate() end
function IGizmoStateTarget:BeginUpdate() end


---@class IGizmoTransformSource : IInterface
IGizmoTransformSource = {}

---@return IGizmoTransformSource
function IGizmoTransformSource:get() end

---@param NewTransform FTransform
function IGizmoTransformSource:SetTransform(NewTransform) end
---@return FTransform
function IGizmoTransformSource:GetTransform() end


---@class IGizmoVec2ParameterSource : IInterface
IGizmoVec2ParameterSource = {}

---@return IGizmoVec2ParameterSource
function IGizmoVec2ParameterSource:get() end

---@param NewValue FVector2D
function IGizmoVec2ParameterSource:SetParameter(NewValue) end
---@return FVector2D
function IGizmoVec2ParameterSource:GetParameter() end
function IGizmoVec2ParameterSource:EndModify() end
function IGizmoVec2ParameterSource:BeginModify() end


---@class IInputBehaviorSource : IInterface
IInputBehaviorSource = {}

---@return IInputBehaviorSource
function IInputBehaviorSource:get() end


---@class IInteractiveToolCameraFocusAPI : IInterface
IInteractiveToolCameraFocusAPI = {}

---@return IInteractiveToolCameraFocusAPI
function IInteractiveToolCameraFocusAPI:get() end


---@class IInteractiveToolExclusiveToolAPI : IInterface
IInteractiveToolExclusiveToolAPI = {}

---@return IInteractiveToolExclusiveToolAPI
function IInteractiveToolExclusiveToolAPI:get() end


---@class IInteractiveToolNestedAcceptCancelAPI : IInterface
IInteractiveToolNestedAcceptCancelAPI = {}

---@return IInteractiveToolNestedAcceptCancelAPI
function IInteractiveToolNestedAcceptCancelAPI:get() end


---@class IMaterialProvider : IInterface
IMaterialProvider = {}

---@return IMaterialProvider
function IMaterialProvider:get() end


---@class IMeshDescriptionCommitter : IInterface
IMeshDescriptionCommitter = {}

---@return IMeshDescriptionCommitter
function IMeshDescriptionCommitter:get() end


---@class IMeshDescriptionProvider : IInterface
IMeshDescriptionProvider = {}

---@return IMeshDescriptionProvider
function IMeshDescriptionProvider:get() end


---@class IPhysicsDataSource : IInterface
IPhysicsDataSource = {}

---@return IPhysicsDataSource
function IPhysicsDataSource:get() end


---@class IPrimitiveComponentBackedTarget : IInterface
IPrimitiveComponentBackedTarget = {}

---@return IPrimitiveComponentBackedTarget
function IPrimitiveComponentBackedTarget:get() end


---@class ISkeletalMeshBackedTarget : IAssetBackedTarget
ISkeletalMeshBackedTarget = {}

---@return ISkeletalMeshBackedTarget
function ISkeletalMeshBackedTarget:get() end


---@class IStaticMeshBackedTarget : IAssetBackedTarget
IStaticMeshBackedTarget = {}

---@return IStaticMeshBackedTarget
function IStaticMeshBackedTarget:get() end


---@class IToolContextTransactionProvider : IInterface
IToolContextTransactionProvider = {}

---@return IToolContextTransactionProvider
function IToolContextTransactionProvider:get() end


---@class IToolFrameworkComponent : IInterface
IToolFrameworkComponent = {}

---@return IToolFrameworkComponent
function IToolFrameworkComponent:get() end


---@class IWidgetBaseBehavior : IInterface
IWidgetBaseBehavior = {}

---@return IWidgetBaseBehavior
function IWidgetBaseBehavior:get() end


---@class UAnyButtonInputBehavior : UInputBehavior
UAnyButtonInputBehavior = {}

---@return UAnyButtonInputBehavior
function UAnyButtonInputBehavior:get() end


---@class UAxisAngleGizmo : UInteractiveGizmo
---@field AxisSource TScriptInterface<IGizmoAxisSource>
---@field AngleSource TScriptInterface<IGizmoFloatParameterSource>
---@field HitTarget TScriptInterface<IGizmoClickTarget>
---@field StateTarget TScriptInterface<IGizmoStateTarget>
---@field MouseBehavior UClickDragInputBehavior
---@field bInInteraction boolean
---@field RotationOrigin FVector
---@field RotationAxis FVector
---@field RotationPlaneX FVector
---@field RotationPlaneY FVector
---@field InteractionStartPoint FVector
---@field InteractionCurPoint FVector
---@field InteractionStartAngle float
---@field InteractionCurAngle float
UAxisAngleGizmo = {}

---@return UAxisAngleGizmo
function UAxisAngleGizmo:get() end



---@class UAxisAngleGizmoBuilder : UInteractiveGizmoBuilder
UAxisAngleGizmoBuilder = {}

---@return UAxisAngleGizmoBuilder
function UAxisAngleGizmoBuilder:get() end


---@class UAxisPositionGizmo : UInteractiveGizmo
---@field AxisSource TScriptInterface<IGizmoAxisSource>
---@field ParameterSource TScriptInterface<IGizmoFloatParameterSource>
---@field GizmoViewContext UGizmoViewContext
---@field HitTarget TScriptInterface<IGizmoClickTarget>
---@field StateTarget TScriptInterface<IGizmoStateTarget>
---@field MouseBehavior UClickDragInputBehavior
---@field bEnableSignedAxis boolean
---@field bInInteraction boolean
---@field InteractionOrigin FVector
---@field InteractionAxis FVector
---@field InteractionStartPoint FVector
---@field InteractionCurPoint FVector
---@field InteractionStartParameter float
---@field InteractionCurParameter float
---@field ParameterSign float
UAxisPositionGizmo = {}

---@return UAxisPositionGizmo
function UAxisPositionGizmo:get() end



---@class UAxisPositionGizmoBuilder : UInteractiveGizmoBuilder
UAxisPositionGizmoBuilder = {}

---@return UAxisPositionGizmoBuilder
function UAxisPositionGizmoBuilder:get() end


---@class UBaseBrushTool : UMeshSurfacePointTool
---@field BrushProperties UBrushBaseProperties
---@field bInBrushStroke boolean
---@field WorldToLocalScale float
---@field LastBrushStamp FBrushStampData
---@field PropertyClass TSoftClassPtr<UBrushBaseProperties>
---@field BrushStampIndicator UBrushStampIndicator
UBaseBrushTool = {}

---@return UBaseBrushTool
function UBaseBrushTool:get() end



---@class UBrushBaseProperties : UInteractiveToolPropertySet
---@field BrushSize float
---@field bSpecifyRadius boolean
---@field BrushRadius float
---@field BrushStrength float
---@field BrushFalloffAmount float
---@field bShowStrength boolean
---@field bShowFalloff boolean
UBrushBaseProperties = {}

---@return UBrushBaseProperties
function UBrushBaseProperties:get() end



---@class UBrushStampIndicator : UInteractiveGizmo
---@field bVisible boolean
---@field BrushRadius float
---@field BrushFalloff float
---@field BrushPosition FVector
---@field BrushNormal FVector
---@field bDrawIndicatorLines boolean
---@field bDrawRadiusCircle boolean
---@field SampleStepCount int32
---@field LineColor FLinearColor
---@field LineThickness float
---@field bDepthTested boolean
---@field bDrawSecondaryLines boolean
---@field SecondaryLineThickness float
---@field SecondaryLineColor FLinearColor
---@field AttachedComponent UPrimitiveComponent
UBrushStampIndicator = {}

---@return UBrushStampIndicator
function UBrushStampIndicator:get() end



---@class UBrushStampIndicatorBuilder : UInteractiveGizmoBuilder
UBrushStampIndicatorBuilder = {}

---@return UBrushStampIndicatorBuilder
function UBrushStampIndicatorBuilder:get() end


---@class UClickDragInputBehavior : UAnyButtonInputBehavior
---@field bUpdateModifiersDuringDrag boolean
UClickDragInputBehavior = {}

---@return UClickDragInputBehavior
function UClickDragInputBehavior:get() end



---@class UClickDragTool : UInteractiveTool
UClickDragTool = {}

---@return UClickDragTool
function UClickDragTool:get() end


---@class UClickDragToolBuilder : UInteractiveToolBuilder
UClickDragToolBuilder = {}

---@return UClickDragToolBuilder
function UClickDragToolBuilder:get() end


---@class UCombinedTransformGizmo : UInteractiveGizmo
---@field ActiveTarget UTransformProxy
---@field bSnapToWorldGrid boolean
---@field bGridSizeIsExplicit boolean
---@field ExplicitGridSize FVector
---@field bRotationGridSizeIsExplicit boolean
---@field ExplicitRotationGridSize FRotator
---@field bSnapToWorldRotGrid boolean
---@field bUseContextCoordinateSystem boolean
---@field CurrentCoordinateSystem EToolContextCoordinateSystem
---@field ActiveComponents TArray<UPrimitiveComponent>
---@field NonuniformScaleComponents TArray<UPrimitiveComponent>
---@field ActiveGizmos TArray<UInteractiveGizmo>
---@field CameraAxisSource UGizmoConstantFrameAxisSource
---@field AxisXSource UGizmoComponentAxisSource
---@field AxisYSource UGizmoComponentAxisSource
---@field AxisZSource UGizmoComponentAxisSource
---@field UnitAxisXSource UGizmoComponentAxisSource
---@field UnitAxisYSource UGizmoComponentAxisSource
---@field UnitAxisZSource UGizmoComponentAxisSource
---@field StateTarget UGizmoTransformChangeStateTarget
UCombinedTransformGizmo = {}

---@return UCombinedTransformGizmo
function UCombinedTransformGizmo:get() end



---@class UCombinedTransformGizmoBuilder : UInteractiveGizmoBuilder
UCombinedTransformGizmoBuilder = {}

---@return UCombinedTransformGizmoBuilder
function UCombinedTransformGizmoBuilder:get() end


---@class UCombinedTransformGizmoContextObject : UObject
UCombinedTransformGizmoContextObject = {}

---@return UCombinedTransformGizmoContextObject
function UCombinedTransformGizmoContextObject:get() end


---@class UContextObjectStore : UObject
---@field ContextObjects TArray<UObject>
UContextObjectStore = {}

---@return UContextObjectStore
function UContextObjectStore:get() end



---@class UGizmoArrowComponent : UGizmoBaseComponent
---@field Direction FVector
---@field Gap float
---@field Length float
---@field Thickness float
UGizmoArrowComponent = {}

---@return UGizmoArrowComponent
function UGizmoArrowComponent:get() end



---@class UGizmoAxisIntervalParameterSource : UGizmoBaseFloatParameterSource
---@field FloatParameterSource TScriptInterface<IGizmoFloatParameterSource>
---@field MinParameter float
---@field MaxParameter float
UGizmoAxisIntervalParameterSource = {}

---@return UGizmoAxisIntervalParameterSource
function UGizmoAxisIntervalParameterSource:get() end



---@class UGizmoAxisRotationParameterSource : UGizmoBaseFloatParameterSource
---@field AxisSource TScriptInterface<IGizmoAxisSource>
---@field TransformSource TScriptInterface<IGizmoTransformSource>
---@field Angle float
---@field LastChange FGizmoFloatParameterChange
---@field CurRotationAxis FVector
---@field CurRotationOrigin FVector
---@field InitialTransform FTransform
UGizmoAxisRotationParameterSource = {}

---@return UGizmoAxisRotationParameterSource
function UGizmoAxisRotationParameterSource:get() end



---@class UGizmoAxisScaleParameterSource : UGizmoBaseFloatParameterSource
---@field AxisSource TScriptInterface<IGizmoAxisSource>
---@field TransformSource TScriptInterface<IGizmoTransformSource>
---@field ScaleMultiplier float
---@field bClampToZero boolean
---@field Parameter float
---@field LastChange FGizmoFloatParameterChange
---@field CurScaleAxis FVector
---@field CurScaleOrigin FVector
---@field InitialTransform FTransform
UGizmoAxisScaleParameterSource = {}

---@return UGizmoAxisScaleParameterSource
function UGizmoAxisScaleParameterSource:get() end



---@class UGizmoAxisTranslationParameterSource : UGizmoBaseFloatParameterSource
---@field AxisSource TScriptInterface<IGizmoAxisSource>
---@field TransformSource TScriptInterface<IGizmoTransformSource>
---@field Parameter float
---@field LastChange FGizmoFloatParameterChange
---@field CurTranslationAxis FVector
---@field CurTranslationOrigin FVector
---@field InitialTransform FTransform
UGizmoAxisTranslationParameterSource = {}

---@return UGizmoAxisTranslationParameterSource
function UGizmoAxisTranslationParameterSource:get() end



---@class UGizmoBaseComponent : UPrimitiveComponent
---@field Color FLinearColor
---@field HoverSizeMultiplier float
---@field PixelHitDistanceThreshold float
---@field GizmoViewContext UGizmoViewContext
UGizmoBaseComponent = {}

---@return UGizmoBaseComponent
function UGizmoBaseComponent:get() end

---@param bWorldIn boolean
function UGizmoBaseComponent:UpdateWorldLocalState(bWorldIn) end
---@param bHoveringIn boolean
function UGizmoBaseComponent:UpdateHoverState(bHoveringIn) end


---@class UGizmoBaseFloatParameterSource : UObject
UGizmoBaseFloatParameterSource = {}

---@return UGizmoBaseFloatParameterSource
function UGizmoBaseFloatParameterSource:get() end


---@class UGizmoBaseTransformSource : UObject
UGizmoBaseTransformSource = {}

---@return UGizmoBaseTransformSource
function UGizmoBaseTransformSource:get() end


---@class UGizmoBaseVec2ParameterSource : UObject
UGizmoBaseVec2ParameterSource = {}

---@return UGizmoBaseVec2ParameterSource
function UGizmoBaseVec2ParameterSource:get() end


---@class UGizmoBoxComponent : UGizmoBaseComponent
---@field Origin FVector
---@field Rotation FQuat
---@field Dimensions FVector
---@field LineThickness float
---@field bRemoveHiddenLines boolean
---@field bEnableAxisFlip boolean
UGizmoBoxComponent = {}

---@return UGizmoBoxComponent
function UGizmoBoxComponent:get() end



---@class UGizmoCircleComponent : UGizmoBaseComponent
---@field Normal FVector
---@field Radius float
---@field Thickness float
---@field NumSides int32
---@field bViewAligned boolean
---@field bDrawFullCircle boolean
---@field bOnlyAllowFrontFacingHits boolean
UGizmoCircleComponent = {}

---@return UGizmoCircleComponent
function UGizmoCircleComponent:get() end



---@class UGizmoComponentAxisSource : UObject
---@field Component USceneComponent
---@field AxisIndex int32
---@field bLocalAxes boolean
UGizmoComponentAxisSource = {}

---@return UGizmoComponentAxisSource
function UGizmoComponentAxisSource:get() end



---@class UGizmoComponentHitTarget : UObject
---@field Component UPrimitiveComponent
UGizmoComponentHitTarget = {}

---@return UGizmoComponentHitTarget
function UGizmoComponentHitTarget:get() end



---@class UGizmoComponentWorldTransformSource : UGizmoBaseTransformSource
---@field Component USceneComponent
---@field bModifyComponentOnTransform boolean
UGizmoComponentWorldTransformSource = {}

---@return UGizmoComponentWorldTransformSource
function UGizmoComponentWorldTransformSource:get() end



---@class UGizmoConstantAxisSource : UObject
---@field Origin FVector
---@field Direction FVector
UGizmoConstantAxisSource = {}

---@return UGizmoConstantAxisSource
function UGizmoConstantAxisSource:get() end



---@class UGizmoConstantFrameAxisSource : UObject
---@field Origin FVector
---@field Direction FVector
---@field TangentX FVector
---@field TangentY FVector
UGizmoConstantFrameAxisSource = {}

---@return UGizmoConstantFrameAxisSource
function UGizmoConstantFrameAxisSource:get() end



---@class UGizmoElementArc : UGizmoElementCircleBase
---@field InnerRadius double
UGizmoElementArc = {}

---@return UGizmoElementArc
function UGizmoElementArc:get() end



---@class UGizmoElementArrow : UGizmoElementBase
---@field CylinderElement UGizmoElementCylinder
---@field ConeElement UGizmoElementCone
---@field BoxElement UGizmoElementBox
---@field Base FVector
---@field Direction FVector
---@field SideDirection FVector
---@field BodyLength float
---@field BodyRadius float
---@field HeadLength float
---@field HeadRadius float
---@field NumSides int32
---@field HeadType EGizmoElementArrowHeadType
UGizmoElementArrow = {}

---@return UGizmoElementArrow
function UGizmoElementArrow:get() end



---@class UGizmoElementBase : UObject
---@field bEnabled boolean
---@field bEnabledForPerspectiveProjection boolean
---@field bEnabledForOrthographicProjection boolean
---@field bEnabledForDefaultState boolean
---@field bEnabledForHoveringState boolean
---@field bEnabledForInteractingState boolean
---@field PartIdentifier uint32
---@field MeshRenderAttributes FGizmoElementMeshRenderStateAttributes
---@field ElementState EGizmoElementState
---@field ElementInteractionState EGizmoElementInteractionState
---@field ViewDependentType EGizmoElementViewDependentType
---@field ViewDependentAxis FVector
---@field ViewDependentAngleTol float
---@field ViewDependentAxialMaxCosAngleTol float
---@field ViewDependentPlanarMinCosAngleTol float
---@field ViewAlignType EGizmoElementViewAlignType
---@field ViewAlignAxis FVector
---@field ViewAlignNormal FVector
---@field ViewAlignAxialAngleTol float
---@field ViewAlignAxialMaxCosAngleTol float
---@field PixelHitDistanceThreshold float
UGizmoElementBase = {}

---@return UGizmoElementBase
function UGizmoElementBase:get() end



---@class UGizmoElementBox : UGizmoElementBase
---@field Center FVector
---@field Dimensions FVector
---@field UpDirection FVector
---@field SideDirection FVector
UGizmoElementBox = {}

---@return UGizmoElementBox
function UGizmoElementBox:get() end



---@class UGizmoElementCircle : UGizmoElementCircleBase
---@field bDrawMesh boolean
---@field bDrawLine boolean
---@field bHitMesh boolean
---@field bHitLine boolean
UGizmoElementCircle = {}

---@return UGizmoElementCircle
function UGizmoElementCircle:get() end



---@class UGizmoElementCircleBase : UGizmoElementLineBase
---@field Center FVector
---@field Axis0 FVector
---@field Axis1 FVector
---@field Radius double
---@field NumSegments int32
---@field PartialType EGizmoElementPartialType
---@field PartialStartAngle double
---@field PartialEndAngle double
---@field PartialViewDependentMaxCosTol double
UGizmoElementCircleBase = {}

---@return UGizmoElementCircleBase
function UGizmoElementCircleBase:get() end



---@class UGizmoElementCone : UGizmoElementBase
---@field Origin FVector
---@field Direction FVector
---@field Height float
---@field Radius float
---@field NumSides int32
UGizmoElementCone = {}

---@return UGizmoElementCone
function UGizmoElementCone:get() end



---@class UGizmoElementCylinder : UGizmoElementBase
---@field Base FVector
---@field Direction FVector
---@field Height float
---@field Radius float
---@field NumSides int32
UGizmoElementCylinder = {}

---@return UGizmoElementCylinder
function UGizmoElementCylinder:get() end



---@class UGizmoElementGroup : UGizmoElementLineBase
---@field bConstantScale boolean
---@field bHitOwner boolean
---@field Elements TArray<UGizmoElementBase>
UGizmoElementGroup = {}

---@return UGizmoElementGroup
function UGizmoElementGroup:get() end



---@class UGizmoElementHitMultiTarget : UObject
---@field GizmoElement UGizmoElementBase
---@field GizmoViewContext UGizmoViewContext
---@field GizmoTransformProxy UTransformProxy
UGizmoElementHitMultiTarget = {}

---@return UGizmoElementHitMultiTarget
function UGizmoElementHitMultiTarget:get() end



---@class UGizmoElementHitTarget : UObject
---@field GizmoElement UGizmoElementBase
---@field GizmoViewContext UGizmoViewContext
---@field GizmoTransformProxy UTransformProxy
UGizmoElementHitTarget = {}

---@return UGizmoElementHitTarget
function UGizmoElementHitTarget:get() end



---@class UGizmoElementLineBase : UGizmoElementBase
---@field LineRenderAttributes FGizmoElementLineRenderStateAttributes
---@field LineThickness float
---@field bScreenSpaceLine boolean
---@field HoverLineThicknessMultiplier float
---@field InteractLineThicknessMultiplier float
UGizmoElementLineBase = {}

---@return UGizmoElementLineBase
function UGizmoElementLineBase:get() end



---@class UGizmoElementRectangle : UGizmoElementLineBase
---@field Center FVector
---@field Width float
---@field Height float
---@field UpDirection FVector
---@field SideDirection FVector
---@field bDrawMesh boolean
---@field bDrawLine boolean
---@field bHitMesh boolean
---@field bHitLine boolean
UGizmoElementRectangle = {}

---@return UGizmoElementRectangle
function UGizmoElementRectangle:get() end



---@class UGizmoElementTorus : UGizmoElementCircleBase
---@field InnerRadius double
---@field NumInnerSlices int32
---@field bEndCaps boolean
UGizmoElementTorus = {}

---@return UGizmoElementTorus
function UGizmoElementTorus:get() end



---@class UGizmoLambdaHitTarget : UObject
UGizmoLambdaHitTarget = {}

---@return UGizmoLambdaHitTarget
function UGizmoLambdaHitTarget:get() end


---@class UGizmoLambdaStateTarget : UObject
UGizmoLambdaStateTarget = {}

---@return UGizmoLambdaStateTarget
function UGizmoLambdaStateTarget:get() end


---@class UGizmoLineHandleComponent : UGizmoBaseComponent
---@field Normal FVector
---@field HandleSize float
---@field Thickness float
---@field Direction FVector
---@field Length float
---@field bImageScale boolean
UGizmoLineHandleComponent = {}

---@return UGizmoLineHandleComponent
function UGizmoLineHandleComponent:get() end



---@class UGizmoLocalFloatParameterSource : UGizmoBaseFloatParameterSource
---@field Value float
---@field LastChange FGizmoFloatParameterChange
UGizmoLocalFloatParameterSource = {}

---@return UGizmoLocalFloatParameterSource
function UGizmoLocalFloatParameterSource:get() end



---@class UGizmoLocalVec2ParameterSource : UGizmoBaseVec2ParameterSource
---@field Value FVector2D
---@field LastChange FGizmoVec2ParameterChange
UGizmoLocalVec2ParameterSource = {}

---@return UGizmoLocalVec2ParameterSource
function UGizmoLocalVec2ParameterSource:get() end



---@class UGizmoNilStateTarget : UObject
UGizmoNilStateTarget = {}

---@return UGizmoNilStateTarget
function UGizmoNilStateTarget:get() end


---@class UGizmoObjectModifyStateTarget : UObject
---@field TransactionManager TScriptInterface<IToolContextTransactionProvider>
UGizmoObjectModifyStateTarget = {}

---@return UGizmoObjectModifyStateTarget
function UGizmoObjectModifyStateTarget:get() end



---@class UGizmoPlaneScaleParameterSource : UGizmoBaseVec2ParameterSource
---@field AxisSource TScriptInterface<IGizmoAxisSource>
---@field TransformSource TScriptInterface<IGizmoTransformSource>
---@field ScaleMultiplier float
---@field bUseEqualScaling boolean
---@field bClampToZero boolean
---@field Parameter FVector2D
---@field LastChange FGizmoVec2ParameterChange
---@field CurScaleOrigin FVector
---@field CurScaleNormal FVector
---@field CurScaleAxisX FVector
---@field CurScaleAxisY FVector
---@field InitialTransform FTransform
UGizmoPlaneScaleParameterSource = {}

---@return UGizmoPlaneScaleParameterSource
function UGizmoPlaneScaleParameterSource:get() end



---@class UGizmoPlaneTranslationParameterSource : UGizmoBaseVec2ParameterSource
---@field AxisSource TScriptInterface<IGizmoAxisSource>
---@field TransformSource TScriptInterface<IGizmoTransformSource>
---@field Parameter FVector2D
---@field LastChange FGizmoVec2ParameterChange
---@field CurTranslationOrigin FVector
---@field CurTranslationNormal FVector
---@field CurTranslationAxisX FVector
---@field CurTranslationAxisY FVector
---@field InitialTransform FTransform
UGizmoPlaneTranslationParameterSource = {}

---@return UGizmoPlaneTranslationParameterSource
function UGizmoPlaneTranslationParameterSource:get() end



---@class UGizmoRectangleComponent : UGizmoBaseComponent
---@field DirectionX FVector
---@field DirectionY FVector
---@field bOrientYAccordingToCamera boolean
---@field OffsetX float
---@field OffsetY float
---@field LengthX float
---@field LengthY float
---@field Thickness float
---@field SegmentFlags uint8
UGizmoRectangleComponent = {}

---@return UGizmoRectangleComponent
function UGizmoRectangleComponent:get() end



---@class UGizmoScaledAndUnscaledTransformSources : UGizmoBaseTransformSource
---@field ScaledTransformSource TScriptInterface<IGizmoTransformSource>
---@field UnscaledTransformSource TScriptInterface<IGizmoTransformSource>
UGizmoScaledAndUnscaledTransformSources = {}

---@return UGizmoScaledAndUnscaledTransformSources
function UGizmoScaledAndUnscaledTransformSources:get() end



---@class UGizmoScaledTransformSource : UGizmoBaseTransformSource
---@field ChildTransformSource TScriptInterface<IGizmoTransformSource>
UGizmoScaledTransformSource = {}

---@return UGizmoScaledTransformSource
function UGizmoScaledTransformSource:get() end



---@class UGizmoTransformChangeStateTarget : UObject
---@field TransactionManager TScriptInterface<IToolContextTransactionProvider>
UGizmoTransformChangeStateTarget = {}

---@return UGizmoTransformChangeStateTarget
function UGizmoTransformChangeStateTarget:get() end



---@class UGizmoTransformProxyTransformSource : UGizmoBaseTransformSource
---@field Proxy UTransformProxy
UGizmoTransformProxyTransformSource = {}

---@return UGizmoTransformProxyTransformSource
function UGizmoTransformProxyTransformSource:get() end



---@class UGizmoUniformScaleParameterSource : UGizmoBaseVec2ParameterSource
---@field AxisSource TScriptInterface<IGizmoAxisSource>
---@field TransformSource TScriptInterface<IGizmoTransformSource>
---@field ScaleMultiplier float
---@field Parameter FVector2D
---@field LastChange FGizmoVec2ParameterChange
---@field CurScaleOrigin FVector
---@field CurScaleNormal FVector
---@field CurScaleAxisX FVector
---@field CurScaleAxisY FVector
---@field InitialTransform FTransform
UGizmoUniformScaleParameterSource = {}

---@return UGizmoUniformScaleParameterSource
function UGizmoUniformScaleParameterSource:get() end



---@class UGizmoViewContext : UObject
UGizmoViewContext = {}

---@return UGizmoViewContext
function UGizmoViewContext:get() end


---@class UGizmoWorldAxisSource : UObject
---@field Origin FVector
---@field AxisIndex int32
UGizmoWorldAxisSource = {}

---@return UGizmoWorldAxisSource
function UGizmoWorldAxisSource:get() end



---@class UInputBehavior : UObject
UInputBehavior = {}

---@return UInputBehavior
function UInputBehavior:get() end


---@class UInputBehaviorSet : UObject
---@field Behaviors TArray<FBehaviorInfo>
UInputBehaviorSet = {}

---@return UInputBehaviorSet
function UInputBehaviorSet:get() end



---@class UInputRouter : UObject
---@field bAutoInvalidateOnHover boolean
---@field bAutoInvalidateOnCapture boolean
---@field ActiveInputBehaviors UInputBehaviorSet
UInputRouter = {}

---@return UInputRouter
function UInputRouter:get() end



---@class UInteractionMechanic : UObject
UInteractionMechanic = {}

---@return UInteractionMechanic
function UInteractionMechanic:get() end


---@class UInteractiveCommand : UObject
UInteractiveCommand = {}

---@return UInteractiveCommand
function UInteractiveCommand:get() end


---@class UInteractiveCommandArguments : UObject
UInteractiveCommandArguments = {}

---@return UInteractiveCommandArguments
function UInteractiveCommandArguments:get() end


---@class UInteractiveGizmo : UObject
---@field InputBehaviors UInputBehaviorSet
UInteractiveGizmo = {}

---@return UInteractiveGizmo
function UInteractiveGizmo:get() end



---@class UInteractiveGizmoBuilder : UObject
UInteractiveGizmoBuilder = {}

---@return UInteractiveGizmoBuilder
function UInteractiveGizmoBuilder:get() end


---@class UInteractiveGizmoManager : UObject
---@field ActiveGizmos TArray<FActiveGizmo>
---@field GizmoBuilders TMap<FString, UInteractiveGizmoBuilder>
UInteractiveGizmoManager = {}

---@return UInteractiveGizmoManager
function UInteractiveGizmoManager:get() end



---@class UInteractiveTool : UObject
---@field InputBehaviors UInputBehaviorSet
---@field ToolPropertyObjects TArray<UObject>
UInteractiveTool = {}

---@return UInteractiveTool
function UInteractiveTool:get() end



---@class UInteractiveToolBuilder : UObject
UInteractiveToolBuilder = {}

---@return UInteractiveToolBuilder
function UInteractiveToolBuilder:get() end


---@class UInteractiveToolManager : UObject
---@field ActiveLeftTool UInteractiveTool
---@field ActiveRightTool UInteractiveTool
---@field ToolBuilders TMap<FString, UInteractiveToolBuilder>
UInteractiveToolManager = {}

---@return UInteractiveToolManager
function UInteractiveToolManager:get() end



---@class UInteractiveToolPropertySet : UObject
---@field CachedPropertiesMap TMap<FString, UInteractiveToolPropertySet>
---@field bIsPropertySetEnabled boolean
UInteractiveToolPropertySet = {}

---@return UInteractiveToolPropertySet
function UInteractiveToolPropertySet:get() end



---@class UInteractiveToolWithToolTargetsBuilder : UInteractiveToolBuilder
UInteractiveToolWithToolTargetsBuilder = {}

---@return UInteractiveToolWithToolTargetsBuilder
function UInteractiveToolWithToolTargetsBuilder:get() end


---@class UInteractiveToolsContext : UObject
---@field InputRouter UInputRouter
---@field TargetManager UToolTargetManager
---@field ToolManager UInteractiveToolManager
---@field GizmoManager UInteractiveGizmoManager
---@field ContextObjectStore UContextObjectStore
---@field ToolManagerClass TSoftClassPtr<UInteractiveToolManager>
UInteractiveToolsContext = {}

---@return UInteractiveToolsContext
function UInteractiveToolsContext:get() end



---@class UIntervalGizmo : UInteractiveGizmo
---@field StateTarget UGizmoTransformChangeStateTarget
---@field TransformProxy UTransformProxy
---@field ActiveComponents TArray<UPrimitiveComponent>
---@field ActiveGizmos TArray<UInteractiveGizmo>
---@field AxisYSource UGizmoComponentAxisSource
---@field AxisZSource UGizmoComponentAxisSource
UIntervalGizmo = {}

---@return UIntervalGizmo
function UIntervalGizmo:get() end



---@class UIntervalGizmoBuilder : UInteractiveGizmoBuilder
UIntervalGizmoBuilder = {}

---@return UIntervalGizmoBuilder
function UIntervalGizmoBuilder:get() end


---@class UKeyAsModifierInputBehavior : UInputBehavior
UKeyAsModifierInputBehavior = {}

---@return UKeyAsModifierInputBehavior
function UKeyAsModifierInputBehavior:get() end


---@class ULocalClickDragInputBehavior : UClickDragInputBehavior
ULocalClickDragInputBehavior = {}

---@return ULocalClickDragInputBehavior
function ULocalClickDragInputBehavior:get() end


---@class ULocalInputBehaviorSource : UObject
ULocalInputBehaviorSource = {}

---@return ULocalInputBehaviorSource
function ULocalInputBehaviorSource:get() end


---@class ULocalMouseHoverBehavior : UMouseHoverBehavior
ULocalMouseHoverBehavior = {}

---@return ULocalMouseHoverBehavior
function ULocalMouseHoverBehavior:get() end


---@class ULocalSingleClickInputBehavior : USingleClickInputBehavior
ULocalSingleClickInputBehavior = {}

---@return ULocalSingleClickInputBehavior
function ULocalSingleClickInputBehavior:get() end


---@class UMeshSelectionSet : USelectionSet
---@field Vertices TArray<int32>
---@field Edges TArray<int32>
---@field Faces TArray<int32>
---@field Groups TArray<int32>
UMeshSelectionSet = {}

---@return UMeshSelectionSet
function UMeshSelectionSet:get() end



---@class UMeshSurfacePointTool : USingleSelectionTool
---@field TargetWorld TWeakObjectPtr<UWorld>
UMeshSurfacePointTool = {}

---@return UMeshSurfacePointTool
function UMeshSurfacePointTool:get() end



---@class UMeshSurfacePointToolBuilder : UInteractiveToolWithToolTargetsBuilder
UMeshSurfacePointToolBuilder = {}

---@return UMeshSurfacePointToolBuilder
function UMeshSurfacePointToolBuilder:get() end


---@class UMouseHoverBehavior : UInputBehavior
UMouseHoverBehavior = {}

---@return UMouseHoverBehavior
function UMouseHoverBehavior:get() end


---@class UMouseWheelInputBehavior : UAnyButtonInputBehavior
UMouseWheelInputBehavior = {}

---@return UMouseWheelInputBehavior
function UMouseWheelInputBehavior:get() end


---@class UMultiClickSequenceInputBehavior : UAnyButtonInputBehavior
UMultiClickSequenceInputBehavior = {}

---@return UMultiClickSequenceInputBehavior
function UMultiClickSequenceInputBehavior:get() end


---@class UMultiSelectionTool : UInteractiveTool
---@field Targets TArray<UToolTarget>
UMultiSelectionTool = {}

---@return UMultiSelectionTool
function UMultiSelectionTool:get() end



---@class UPlanePositionGizmo : UInteractiveGizmo
---@field AxisSource TScriptInterface<IGizmoAxisSource>
---@field ParameterSource TScriptInterface<IGizmoVec2ParameterSource>
---@field HitTarget TScriptInterface<IGizmoClickTarget>
---@field StateTarget TScriptInterface<IGizmoStateTarget>
---@field MouseBehavior UClickDragInputBehavior
---@field bEnableSignedAxis boolean
---@field bFlipX boolean
---@field bFlipY boolean
---@field bInInteraction boolean
---@field InteractionOrigin FVector
---@field InteractionNormal FVector
---@field InteractionAxisX FVector
---@field InteractionAxisY FVector
---@field InteractionStartPoint FVector
---@field InteractionCurPoint FVector
---@field InteractionStartParameter FVector2D
---@field InteractionCurParameter FVector2D
---@field ParameterSigns FVector2D
UPlanePositionGizmo = {}

---@return UPlanePositionGizmo
function UPlanePositionGizmo:get() end



---@class UPlanePositionGizmoBuilder : UInteractiveGizmoBuilder
UPlanePositionGizmoBuilder = {}

---@return UPlanePositionGizmoBuilder
function UPlanePositionGizmoBuilder:get() end


---@class UPrimitiveComponentToolTarget : UToolTarget
UPrimitiveComponentToolTarget = {}

---@return UPrimitiveComponentToolTarget
function UPrimitiveComponentToolTarget:get() end


---@class UPrimitiveComponentToolTargetFactory : UToolTargetFactory
UPrimitiveComponentToolTargetFactory = {}

---@return UPrimitiveComponentToolTargetFactory
function UPrimitiveComponentToolTargetFactory:get() end


---@class URepositionableTransformGizmo : UCombinedTransformGizmo
---@field RepositionStateTarget UGizmoTransformChangeStateTarget
URepositionableTransformGizmo = {}

---@return URepositionableTransformGizmo
function URepositionableTransformGizmo:get() end



---@class URepositionableTransformGizmoBuilder : UCombinedTransformGizmoBuilder
URepositionableTransformGizmoBuilder = {}

---@return URepositionableTransformGizmoBuilder
function URepositionableTransformGizmoBuilder:get() end


---@class UScalableSphereGizmo : UInteractiveGizmo
---@field HitErrorThreshold float
---@field TransactionDescription FText
---@field Radius float
---@field bIsHovering boolean
---@field bIsDragging boolean
---@field ActiveTarget UTransformProxy
---@field ActiveAxis FVector
---@field DragStartWorldPosition FVector
---@field DragCurrentPositionProjected FVector
---@field InteractionStartParameter float
UScalableSphereGizmo = {}

---@return UScalableSphereGizmo
function UScalableSphereGizmo:get() end



---@class UScalableSphereGizmoBuilder : UInteractiveGizmoBuilder
UScalableSphereGizmoBuilder = {}

---@return UScalableSphereGizmoBuilder
function UScalableSphereGizmoBuilder:get() end


---@class UScalableSphereGizmoInputBehavior : UAnyButtonInputBehavior
UScalableSphereGizmoInputBehavior = {}

---@return UScalableSphereGizmoInputBehavior
function UScalableSphereGizmoInputBehavior:get() end


---@class USceneSnappingManager : UObject
USceneSnappingManager = {}

---@return USceneSnappingManager
function USceneSnappingManager:get() end


---@class USelectionSet : UObject
USelectionSet = {}

---@return USelectionSet
function USelectionSet:get() end


---@class USingleClickInputBehavior : UAnyButtonInputBehavior
---@field HitTestOnRelease boolean
USingleClickInputBehavior = {}

---@return USingleClickInputBehavior
function USingleClickInputBehavior:get() end



---@class USingleClickOrDragInputBehavior : UAnyButtonInputBehavior
---@field bBeginDragIfClickTargetNotHit boolean
---@field ClickDistanceThreshold float
USingleClickOrDragInputBehavior = {}

---@return USingleClickOrDragInputBehavior
function USingleClickOrDragInputBehavior:get() end



---@class USingleClickTool : UInteractiveTool
USingleClickTool = {}

---@return USingleClickTool
function USingleClickTool:get() end


---@class USingleClickToolBuilder : UInteractiveToolBuilder
USingleClickToolBuilder = {}

---@return USingleClickToolBuilder
function USingleClickToolBuilder:get() end


---@class USingleKeyCaptureBehavior : UInputBehavior
USingleKeyCaptureBehavior = {}

---@return USingleKeyCaptureBehavior
function USingleKeyCaptureBehavior:get() end


---@class USingleSelectionTool : UInteractiveTool
---@field Target UToolTarget
USingleSelectionTool = {}

---@return USingleSelectionTool
function USingleSelectionTool:get() end



---@class UToolTarget : UObject
UToolTarget = {}

---@return UToolTarget
function UToolTarget:get() end


---@class UToolTargetFactory : UObject
UToolTargetFactory = {}

---@return UToolTargetFactory
function UToolTargetFactory:get() end


---@class UToolTargetManager : UObject
---@field Factories TArray<UToolTargetFactory>
UToolTargetManager = {}

---@return UToolTargetManager
function UToolTargetManager:get() end



---@class UTransformProxy : UObject
---@field bRotatePerObject boolean
---@field bSetPivotMode boolean
---@field SharedTransform FTransform
---@field InitialSharedTransform FTransform
UTransformProxy = {}

---@return UTransformProxy
function UTransformProxy:get() end



