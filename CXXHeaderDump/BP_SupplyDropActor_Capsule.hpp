#ifndef UE4SS_SDK_BP_SupplyDropActor_Capsule_HPP
#define UE4SS_SDK_BP_SupplyDropActor_Capsule_HPP

class ABP_SupplyDropActor_Capsule_C : public APalSupplyDropActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0308 (size: 0x8)
    class UStaticMeshComponent* SM_frameContainer_B5;                                 // 0x0310 (size: 0x8)
    class UStaticMeshComponent* SM_frameContainer_B4;                                 // 0x0318 (size: 0x8)
    class UStaticMeshComponent* SM_frameContainer_B3;                                 // 0x0320 (size: 0x8)
    class UStaticMeshComponent* SM_frameContainer_B2;                                 // 0x0328 (size: 0x8)
    class UStaticMeshComponent* SM_frameContainer_B1;                                 // 0x0330 (size: 0x8)
    class UStaticMeshComponent* SM_frameContainer_B;                                  // 0x0338 (size: 0x8)
    class UStaticMeshComponent* Cylinder;                                             // 0x0340 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x0348 (size: 0x8)

    void ReceiveBeginPlay();
    void OnLanded_BP();
    void ExecuteUbergraph_BP_SupplyDropActor_Capsule(int32 EntryPoint);
}; // Size: 0x350

#endif
