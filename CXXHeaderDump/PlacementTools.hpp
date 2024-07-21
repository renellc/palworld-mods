#ifndef UE4SS_SDK_PlacementTools_HPP
#define UE4SS_SDK_PlacementTools_HPP

#include "PlacementTools_enums.hpp"

struct FDirections
{
    bool xDown;                                                                       // 0x0000 (size: 0x1)
    bool xUp;                                                                         // 0x0001 (size: 0x1)
    bool yDown;                                                                       // 0x0002 (size: 0x1)
    bool yUp;                                                                         // 0x0003 (size: 0x1)
    bool zDown;                                                                       // 0x0004 (size: 0x1)
    bool zUp;                                                                         // 0x0005 (size: 0x1)

}; // Size: 0x6

struct FLinearDistribution
{
    TArray<FVector2D> CurvePoints;                                                    // 0x0000 (size: 0x10)

}; // Size: 0x10

struct FPlacementItem
{
    TEnumAsByte<EItemType> ItemType;                                                  // 0x0000 (size: 0x1)
    TSubclassOf<class AActor> Actor;                                                  // 0x0008 (size: 0x8)
    class UStaticMesh* Mesh;                                                          // 0x0010 (size: 0x8)
    float Weight;                                                                     // 0x0018 (size: 0x4)

}; // Size: 0x20

class ABoxPlacement : public APlacementToolBase
{
    FVector BoxExtent;                                                                // 0x03E8 (size: 0x18)
    class UBoxComponent* BoxBrush;                                                    // 0x0400 (size: 0x8)
    FDirections FadeDirection;                                                        // 0x0408 (size: 0x6)
    TEnumAsByte<ECollisionChannel> TraceChannel;                                      // 0x040E (size: 0x1)
    TArray<FName> NotPlaceOnActorTags;                                                // 0x0410 (size: 0x10)

}; // Size: 0x420

class APlacementToolBase : public AActor
{
    bool isInEditor;                                                                  // 0x0290 (size: 0x1)
    class USceneComponent* SceneComponent;                                            // 0x0298 (size: 0x8)
    class UBillboardComponent* EasySelectBillboard;                                   // 0x02A0 (size: 0x8)
    FRandomStream RandomStream;                                                       // 0x02A8 (size: 0x8)
    FLinearDistribution DistributionCurve;                                            // 0x02B0 (size: 0x10)
    TEnumAsByte<EPlacementMode> PlacementMode;                                        // 0x02E0 (size: 0x1)
    TEnumAsByte<EPlacementStyle> PlacementStyle;                                      // 0x02E1 (size: 0x1)
    TArray<FPlacementItem> PlacementItems;                                            // 0x02E8 (size: 0x10)
    FDirections SurfaceDirection;                                                     // 0x02F8 (size: 0x6)
    int32 Amount;                                                                     // 0x0300 (size: 0x4)
    int32 Seed;                                                                       // 0x0304 (size: 0x4)
    FTransform Offset;                                                                // 0x0310 (size: 0x60)
    bool bRandomizeRotation;                                                          // 0x0370 (size: 0x1)
    FRotator RotationMin;                                                             // 0x0378 (size: 0x18)
    FRotator RotationMax;                                                             // 0x0390 (size: 0x18)
    bool bRandomizeScale;                                                             // 0x03A8 (size: 0x1)
    bool bUniformScale;                                                               // 0x03A9 (size: 0x1)
    FVector ScaleMin;                                                                 // 0x03B0 (size: 0x18)
    FVector ScaleMax;                                                                 // 0x03C8 (size: 0x18)
    bool bRotateToSurface;                                                            // 0x03E0 (size: 0x1)
    bool bAdjustToSurface;                                                            // 0x03E1 (size: 0x1)
    bool bAvoidOverlapBounds;                                                         // 0x03E2 (size: 0x1)
    bool bDeleteChildrenWhenDeleted;                                                  // 0x03E3 (size: 0x1)
    bool bHideBrush;                                                                  // 0x03E4 (size: 0x1)

    void RandomizeSeed();
    void Generate();
}; // Size: 0x3F0

class ASpherePlacement : public APlacementToolBase
{
    float Radius;                                                                     // 0x03E8 (size: 0x4)
    class USphereComponent* SphereBrush;                                              // 0x03F0 (size: 0x8)
    TEnumAsByte<EFadeAxis> FadeDirection;                                             // 0x03F8 (size: 0x1)
    TEnumAsByte<ECollisionChannel> TraceChannel;                                      // 0x03F9 (size: 0x1)
    TArray<FName> NotPlaceOnActorTags;                                                // 0x0400 (size: 0x10)

}; // Size: 0x410

#endif
