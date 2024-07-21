#ifndef UE4SS_SDK_BP_PrefabBase_HPP
#define UE4SS_SDK_BP_PrefabBase_HPP

class ABP_PrefabBase_C : public AActor
{
    class USceneComponent* DefaultSceneRoot;                                          // 0x0290 (size: 0x8)
    class UStaticMesh* StaticMesh;                                                    // 0x0298 (size: 0x8)
    double ThicknessScale;                                                            // 0x02A0 (size: 0x8)
    bool UseJointMeshes;                                                              // 0x02A8 (size: 0x1)
    TArray<bool> JointsToExclude;                                                     // 0x02B0 (size: 0x10)
    FRandomStream RandomStream;                                                       // 0x02C0 (size: 0x8)
    int32 RandomSeed;                                                                 // 0x02C8 (size: 0x4)
    TArray<FSplinesInEditor> Splines;                                                 // 0x02D0 (size: 0x10)
    bool UseAdvancedSplines;                                                          // 0x02E0 (size: 0x1)
    TArray<FString> Debug;                                                            // 0x02E8 (size: 0x10)
    class USplineComponent* CurrentSpline;                                            // 0x02F8 (size: 0x8)
    bool SplineNotExists;                                                             // 0x0300 (size: 0x1)
    FSplinesInEditor DefaultSplineSetup;                                              // 0x0308 (size: 0x80)
    FRiverSplineElement CurrentSplineProperties;                                      // 0x0388 (size: 0x70)
    bool SplineExist;                                                                 // 0x03F8 (size: 0x1)

    void GenerateSplineMesh(TEnumAsByte<ECollisionEnabled::Type> Collision, bool CastShadow, class UMaterialInterface* Material, class USplineComponent* TargetSpline, double SplineStartOffset, FVector Offset, FVector Scale, double TangetScale, double Spacing, FRotator Rotation, class UStaticMesh* StaticMesh);
    void UserConstructionScript();
}; // Size: 0x3F9

#endif
