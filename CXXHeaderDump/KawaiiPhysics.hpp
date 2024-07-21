#ifndef UE4SS_SDK_KawaiiPhysics_HPP
#define UE4SS_SDK_KawaiiPhysics_HPP

#include "KawaiiPhysics_enums.hpp"

struct FAnimNode_KawaiiPhysics : public FAnimNode_SkeletalControlBase
{
    FBoneReference RootBone;                                                          // 0x00C8 (size: 0x10)
    TArray<FBoneReference> ExcludeBones;                                              // 0x00D8 (size: 0x10)
    int32 TargetFrameRate;                                                            // 0x00E8 (size: 0x4)
    bool OverrideTargetFramerate;                                                     // 0x00EC (size: 0x1)
    FKawaiiPhysicsSettings PhysicsSettings;                                           // 0x00F0 (size: 0x18)
    class UCurveFloat* DampingCurve;                                                  // 0x0108 (size: 0x8)
    class UCurveFloat* WorldDampingLocationCurve;                                     // 0x0110 (size: 0x8)
    class UCurveFloat* WorldDampingRotationCurve;                                     // 0x0118 (size: 0x8)
    class UCurveFloat* StiffnessCurve;                                                // 0x0120 (size: 0x8)
    class UCurveFloat* RadiusCurve;                                                   // 0x0128 (size: 0x8)
    class UCurveFloat* LimitAngleCurve;                                               // 0x0130 (size: 0x8)
    FRuntimeFloatCurve DampingCurveData;                                              // 0x0138 (size: 0x88)
    FRuntimeFloatCurve WorldDampingLocationCurveData;                                 // 0x01C0 (size: 0x88)
    FRuntimeFloatCurve WorldDampingRotationCurveData;                                 // 0x0248 (size: 0x88)
    FRuntimeFloatCurve StiffnessCurveData;                                            // 0x02D0 (size: 0x88)
    FRuntimeFloatCurve RadiusCurveData;                                               // 0x0358 (size: 0x88)
    FRuntimeFloatCurve LimitAngleCurveData;                                           // 0x03E0 (size: 0x88)
    bool bUpdatePhysicsSettingsInGame;                                                // 0x0468 (size: 0x1)
    float DummyBoneLength;                                                            // 0x046C (size: 0x4)
    EBoneForwardAxis BoneForwardAxis;                                                 // 0x0470 (size: 0x1)
    EPlanarConstraint PlanarConstraint;                                               // 0x0471 (size: 0x1)
    bool ResetBoneTransformWhenBoneNotFound;                                          // 0x0472 (size: 0x1)
    TArray<FSphericalLimit> SphericalLimits;                                          // 0x0478 (size: 0x10)
    TArray<FCapsuleLimit> CapsuleLimits;                                              // 0x0488 (size: 0x10)
    TArray<FPlanarLimit> PlanarLimits;                                                // 0x0498 (size: 0x10)
    class UKawaiiPhysicsLimitsDataAsset* LimitsDataAsset;                             // 0x04A8 (size: 0x8)
    TArray<FSphericalLimit> SphericalLimitsData;                                      // 0x04B0 (size: 0x10)
    TArray<FCapsuleLimit> CapsuleLimitsData;                                          // 0x04C0 (size: 0x10)
    TArray<FPlanarLimit> PlanarLimitsData;                                            // 0x04D0 (size: 0x10)
    float TeleportDistanceThreshold;                                                  // 0x04E0 (size: 0x4)
    float TeleportRotationThreshold;                                                  // 0x04E4 (size: 0x4)
    FVector Gravity;                                                                  // 0x04E8 (size: 0x18)
    bool bEnableWind;                                                                 // 0x0500 (size: 0x1)
    float WindScale;                                                                  // 0x0504 (size: 0x4)
    bool bAllowWorldCollision;                                                        // 0x0508 (size: 0x1)
    bool bOverrideCollisionParams;                                                    // 0x0509 (size: 0x1)
    FBodyInstance CollisionChannelSettings;                                           // 0x0510 (size: 0x190)
    bool bIgnoreSelfComponent;                                                        // 0x06A0 (size: 0x1)
    TArray<FBoneReference> IgnoreBones;                                               // 0x06A8 (size: 0x10)
    TArray<FName> IgnoreBoneNamePrefix;                                               // 0x06B8 (size: 0x10)
    TArray<FKawaiiPhysicsModifyBone> ModifyBones;                                     // 0x06C8 (size: 0x10)
    float TotalBoneLength;                                                            // 0x06D8 (size: 0x4)
    FTransform PreSkelCompTransform;                                                  // 0x06E0 (size: 0x60)
    bool bInitPhysicsSettings;                                                        // 0x0740 (size: 0x1)

}; // Size: 0x790

struct FCapsuleLimit : public FCollisionLimitBase
{
    float Radius;                                                                     // 0x0080 (size: 0x4)
    float Length;                                                                     // 0x0084 (size: 0x4)

}; // Size: 0x90

struct FCapsuleLimitData : public FCollisionLimitDataBase
{
    float Radius;                                                                     // 0x0080 (size: 0x4)
    float Length;                                                                     // 0x0084 (size: 0x4)

}; // Size: 0x90

struct FCollisionLimitBase
{
    FBoneReference DrivingBone;                                                       // 0x0000 (size: 0x10)
    FVector OffsetLocation;                                                           // 0x0010 (size: 0x18)
    FRotator OffsetRotation;                                                          // 0x0028 (size: 0x18)
    FVector Location;                                                                 // 0x0040 (size: 0x18)
    FQuat Rotation;                                                                   // 0x0060 (size: 0x20)

}; // Size: 0x80

struct FCollisionLimitDataBase
{
    FName DrivingBoneName;                                                            // 0x0000 (size: 0x8)
    FVector OffsetLocation;                                                           // 0x0008 (size: 0x18)
    FRotator OffsetRotation;                                                          // 0x0020 (size: 0x18)
    FVector Location;                                                                 // 0x0038 (size: 0x18)
    FQuat Rotation;                                                                   // 0x0050 (size: 0x20)
    FGuid Guid;                                                                       // 0x0070 (size: 0x10)

}; // Size: 0x80

struct FKawaiiPhysicsModifyBone
{
    FBoneReference BoneRef;                                                           // 0x0000 (size: 0x10)
    int32 ParentIndex;                                                                // 0x0010 (size: 0x4)
    TArray<int32> ChildIndexs;                                                        // 0x0018 (size: 0x10)
    FKawaiiPhysicsSettings PhysicsSettings;                                           // 0x0028 (size: 0x18)
    FVector Location;                                                                 // 0x0040 (size: 0x18)
    FVector PrevLocation;                                                             // 0x0058 (size: 0x18)
    FQuat PrevRotation;                                                               // 0x0070 (size: 0x20)
    FVector PoseLocation;                                                             // 0x0090 (size: 0x18)
    FQuat PoseRotation;                                                               // 0x00B0 (size: 0x20)
    FVector PoseScale;                                                                // 0x00D0 (size: 0x18)
    float LengthFromRoot;                                                             // 0x00E8 (size: 0x4)
    bool bDummy;                                                                      // 0x00EC (size: 0x1)

}; // Size: 0xF0

struct FKawaiiPhysicsSettings
{
    float Damping;                                                                    // 0x0000 (size: 0x4)
    float WorldDampingLocation;                                                       // 0x0004 (size: 0x4)
    float WorldDampingRotation;                                                       // 0x0008 (size: 0x4)
    float Stiffness;                                                                  // 0x000C (size: 0x4)
    float Radius;                                                                     // 0x0010 (size: 0x4)
    float LimitAngle;                                                                 // 0x0014 (size: 0x4)

}; // Size: 0x18

struct FPlanarLimit : public FCollisionLimitBase
{
    FPlane Plane;                                                                     // 0x0080 (size: 0x20)

}; // Size: 0xA0

struct FPlanarLimitData : public FCollisionLimitDataBase
{
    FPlane Plane;                                                                     // 0x0080 (size: 0x20)

}; // Size: 0xA0

struct FSphericalLimit : public FCollisionLimitBase
{
    float Radius;                                                                     // 0x0080 (size: 0x4)
    ESphericalLimitType LimitType;                                                    // 0x0084 (size: 0x1)

}; // Size: 0x90

struct FSphericalLimitData : public FCollisionLimitDataBase
{
    float Radius;                                                                     // 0x0080 (size: 0x4)
    ESphericalLimitType LimitType;                                                    // 0x0084 (size: 0x1)

}; // Size: 0x90

class UKawaiiPhysicsLimitsDataAsset : public UDataAsset
{
    TArray<FSphericalLimit> SphericalLimits;                                          // 0x0030 (size: 0x10)
    TArray<FCapsuleLimit> CapsuleLimits;                                              // 0x0040 (size: 0x10)
    TArray<FPlanarLimit> PlanarLimits;                                                // 0x0050 (size: 0x10)

}; // Size: 0x60

#endif
