#ifndef UE4SS_SDK_LiveLinkAnimationCore_HPP
#define UE4SS_SDK_LiveLinkAnimationCore_HPP

struct FAnimNode_LiveLinkPose : public FAnimNode_Base
{
    FPoseLink InputPose;                                                              // 0x0010 (size: 0x10)
    FLiveLinkSubjectName LiveLinkSubjectName;                                         // 0x0020 (size: 0x8)
    TSubclassOf<class ULiveLinkRetargetAsset> RetargetAsset;                          // 0x0028 (size: 0x8)
    class ULiveLinkRetargetAsset* CurrentRetargetAsset;                               // 0x0030 (size: 0x8)

}; // Size: 0x48

struct FLiveLinkInstanceProxy : public FAnimInstanceProxy
{
    FAnimNode_LiveLinkPose PoseNode;                                                  // 0x0878 (size: 0x48)

}; // Size: 0x8C0

class ULiveLinkInstance : public UAnimInstance
{
    class ULiveLinkRetargetAsset* CurrentRetargetAsset;                               // 0x0348 (size: 0x8)

    void SetSubject(FLiveLinkSubjectName SubjectName);
    void SetRetargetAsset(TSubclassOf<class ULiveLinkRetargetAsset> RetargetAsset);
}; // Size: 0x350

class ULiveLinkRemapAsset : public ULiveLinkRetargetAsset
{

    void RemapCurveElements(TMap<FName, float>& CurveItems);
    FName GetRemappedCurveName(FName CurveName);
    FName GetRemappedBoneName(FName BoneName);
}; // Size: 0xC8

class ULiveLinkRetargetAsset : public UObject
{
}; // Size: 0x28

#endif
