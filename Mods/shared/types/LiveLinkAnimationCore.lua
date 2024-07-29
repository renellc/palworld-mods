---@meta

---@class FAnimNode_LiveLinkPose : FAnimNode_Base
---@field InputPose FPoseLink
---@field LiveLinkSubjectName FLiveLinkSubjectName
---@field RetargetAsset TSubclassOf<ULiveLinkRetargetAsset>
---@field CurrentRetargetAsset ULiveLinkRetargetAsset
FAnimNode_LiveLinkPose = {}

---@return FAnimNode_LiveLinkPose
function FAnimNode_LiveLinkPose:get() end



---@class FLiveLinkInstanceProxy : FAnimInstanceProxy
---@field PoseNode FAnimNode_LiveLinkPose
FLiveLinkInstanceProxy = {}

---@return FLiveLinkInstanceProxy
function FLiveLinkInstanceProxy:get() end



---@class ULiveLinkInstance : UAnimInstance
---@field CurrentRetargetAsset ULiveLinkRetargetAsset
ULiveLinkInstance = {}

---@return ULiveLinkInstance
function ULiveLinkInstance:get() end

---@param SubjectName FLiveLinkSubjectName
function ULiveLinkInstance:SetSubject(SubjectName) end
---@param RetargetAsset TSubclassOf<ULiveLinkRetargetAsset>
function ULiveLinkInstance:SetRetargetAsset(RetargetAsset) end


---@class ULiveLinkRemapAsset : ULiveLinkRetargetAsset
ULiveLinkRemapAsset = {}

---@return ULiveLinkRemapAsset
function ULiveLinkRemapAsset:get() end

---@param CurveItems TMap<FName, float>
function ULiveLinkRemapAsset:RemapCurveElements(CurveItems) end
---@param CurveName FName
---@return FName
function ULiveLinkRemapAsset:GetRemappedCurveName(CurveName) end
---@param BoneName FName
---@return FName
function ULiveLinkRemapAsset:GetRemappedBoneName(BoneName) end


---@class ULiveLinkRetargetAsset : UObject
ULiveLinkRetargetAsset = {}

---@return ULiveLinkRetargetAsset
function ULiveLinkRetargetAsset:get() end


