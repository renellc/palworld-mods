#ifndef UE4SS_SDK_BP_SimpleWater_HPP
#define UE4SS_SDK_BP_SimpleWater_HPP

class ABP_SimpleWater_C : public AActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class UBoxComponent* SwimmingVolume;                                              // 0x0298 (size: 0x8)
    class UHierarchicalInstancedStaticMeshComponent* HierarchicalInstancedStaticMesh; // 0x02A0 (size: 0x8)
    int32 TileCount;                                                                  // 0x02A8 (size: 0x4)
    double MeshScaleOffset;                                                           // 0x02B0 (size: 0x8)
    class UStaticMesh* WaterPlaneMesh;                                                // 0x02B8 (size: 0x8)
    class UMaterialInterface* WaterMaterial;                                          // 0x02C0 (size: 0x8)
    FVector OceanMin;                                                                 // 0x02C8 (size: 0x18)
    FVector OceanMax;                                                                 // 0x02E0 (size: 0x18)
    FVector SwimVolumeScale;                                                          // 0x02F8 (size: 0x18)
    FVector SwimVolumeLocation;                                                       // 0x0310 (size: 0x18)
    double Depth;                                                                     // 0x0328 (size: 0x8)
    bool bWorldOceanPlane;                                                            // 0x0330 (size: 0x1)

    void GenerateOpenSeePlane();
    void GenerateWaterPlane();
    void UpdateSwimmingVolume(int32 StartIndex, int32 EndIndex, double MeshScale);
    void GenerateOceanPlane();
    void ReceiveBeginPlay();
    void ReceiveActorBeginOverlap(class AActor* OtherActor);
    void ReceiveTick(float DeltaSeconds);
    void BndEvt__BP_SimpleWater_SwimmingVolume_K2Node_ComponentBoundEvent_1_ComponentBeginOverlapSignature__DelegateSignature(class UPrimitiveComponent* OverlappedComponent, class AActor* OtherActor, class UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult);
    void BndEvt__BP_SimpleWater_SwimmingVolume_K2Node_ComponentBoundEvent_2_ComponentEndOverlapSignature__DelegateSignature(class UPrimitiveComponent* OverlappedComponent, class AActor* OtherActor, class UPrimitiveComponent* OtherComp, int32 OtherBodyIndex);
    void ExecuteUbergraph_BP_SimpleWater(int32 EntryPoint);
}; // Size: 0x331

#endif
