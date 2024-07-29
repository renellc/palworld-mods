---@meta

---@class FControlRigSpline
FControlRigSpline = {}

---@return FControlRigSpline
function FControlRigSpline:get() end


---@class FControlRigSplineImpl
FControlRigSplineImpl = {}

---@return FControlRigSplineImpl
function FControlRigSplineImpl:get() end


---@class FRigUnit_ClosestParameterFromControlRigSpline : FRigUnit_ControlRigSplineBase
---@field Spline FControlRigSpline
---@field Position FVector
---@field U float
FRigUnit_ClosestParameterFromControlRigSpline = {}

---@return FRigUnit_ClosestParameterFromControlRigSpline
function FRigUnit_ClosestParameterFromControlRigSpline:get() end



---@class FRigUnit_ControlRigSplineBase : FRigUnit
FRigUnit_ControlRigSplineBase = {}

---@return FRigUnit_ControlRigSplineBase
function FRigUnit_ControlRigSplineBase:get() end


---@class FRigUnit_ControlRigSplineFromPoints : FRigUnit_ControlRigSplineBase
---@field Points TArray<FVector>
---@field SplineMode ESplineType
---@field SamplesPerSegment int32
---@field Compression float
---@field Stretch float
---@field Spline FControlRigSpline
FRigUnit_ControlRigSplineFromPoints = {}

---@return FRigUnit_ControlRigSplineFromPoints
function FRigUnit_ControlRigSplineFromPoints:get() end



---@class FRigUnit_DrawControlRigSpline : FRigUnitMutable
---@field Spline FControlRigSpline
---@field Color FLinearColor
---@field Thickness float
---@field Detail int32
FRigUnit_DrawControlRigSpline = {}

---@return FRigUnit_DrawControlRigSpline
function FRigUnit_DrawControlRigSpline:get() end



---@class FRigUnit_FitChainToSplineCurve : FRigUnit_HighlevelBaseMutable
---@field Items FRigElementKeyCollection
---@field Spline FControlRigSpline
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
FRigUnit_FitChainToSplineCurve = {}

---@return FRigUnit_FitChainToSplineCurve
function FRigUnit_FitChainToSplineCurve:get() end



---@class FRigUnit_FitChainToSplineCurveItemArray : FRigUnit_HighlevelBaseMutable
---@field Items TArray<FRigElementKey>
---@field Spline FControlRigSpline
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
FRigUnit_FitChainToSplineCurveItemArray = {}

---@return FRigUnit_FitChainToSplineCurveItemArray
function FRigUnit_FitChainToSplineCurveItemArray:get() end



---@class FRigUnit_FitSplineCurveToChain : FRigUnit_HighlevelBaseMutable
---@field Items FRigElementKeyCollection
---@field Spline FControlRigSpline
FRigUnit_FitSplineCurveToChain = {}

---@return FRigUnit_FitSplineCurveToChain
function FRigUnit_FitSplineCurveToChain:get() end



---@class FRigUnit_FitSplineCurveToChainItemArray : FRigUnit_HighlevelBaseMutable
---@field Items TArray<FRigElementKey>
---@field Spline FControlRigSpline
FRigUnit_FitSplineCurveToChainItemArray = {}

---@return FRigUnit_FitSplineCurveToChainItemArray
function FRigUnit_FitSplineCurveToChainItemArray:get() end



---@class FRigUnit_GetLengthControlRigSpline : FRigUnit
---@field Spline FControlRigSpline
---@field Length float
FRigUnit_GetLengthControlRigSpline = {}

---@return FRigUnit_GetLengthControlRigSpline
function FRigUnit_GetLengthControlRigSpline:get() end



---@class FRigUnit_ParameterAtPercentage : FRigUnit_ControlRigSplineBase
---@field Spline FControlRigSpline
---@field Percentage float
---@field U float
FRigUnit_ParameterAtPercentage = {}

---@return FRigUnit_ParameterAtPercentage
function FRigUnit_ParameterAtPercentage:get() end



---@class FRigUnit_PositionFromControlRigSpline : FRigUnit_ControlRigSplineBase
---@field Spline FControlRigSpline
---@field U float
---@field Position FVector
FRigUnit_PositionFromControlRigSpline = {}

---@return FRigUnit_PositionFromControlRigSpline
function FRigUnit_PositionFromControlRigSpline:get() end



---@class FRigUnit_SetSplinePoints : FRigUnitMutable
---@field Points TArray<FVector>
---@field Spline FControlRigSpline
FRigUnit_SetSplinePoints = {}

---@return FRigUnit_SetSplinePoints
function FRigUnit_SetSplinePoints:get() end



---@class FRigUnit_TangentFromControlRigSpline : FRigUnit_ControlRigSplineBase
---@field Spline FControlRigSpline
---@field U float
---@field Tangent FVector
FRigUnit_TangentFromControlRigSpline = {}

---@return FRigUnit_TangentFromControlRigSpline
function FRigUnit_TangentFromControlRigSpline:get() end



---@class FRigUnit_TransformFromControlRigSpline : FRigUnit_ControlRigSplineBase
---@field Spline FControlRigSpline
---@field UpVector FVector
---@field Roll float
---@field U float
---@field Transform FTransform
FRigUnit_TransformFromControlRigSpline = {}

---@return FRigUnit_TransformFromControlRigSpline
function FRigUnit_TransformFromControlRigSpline:get() end



