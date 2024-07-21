#ifndef UE4SS_SDK_BP_CookingFryingPan_HPP
#define UE4SS_SDK_BP_CookingFryingPan_HPP

class ABP_CookingFryingPan_C : public AActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class UStaticMeshComponent* Food_Veg_Carrot_01_Slice_03;                          // 0x0298 (size: 0x8)
    class UStaticMeshComponent* Food_Veg_Carrot_01_Slice_02;                          // 0x02A0 (size: 0x8)
    class UStaticMeshComponent* Food_Veg_Carrot_01_Slice_01;                          // 0x02A8 (size: 0x8)
    class UStaticMeshComponent* SM_Chickenleg;                                        // 0x02B0 (size: 0x8)
    class UStaticMeshComponent* SM_FriedEggs;                                         // 0x02B8 (size: 0x8)
    class USkeletalMeshComponent* SkeletalMesh;                                       // 0x02C0 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02C8 (size: 0x8)

    void ReceiveBeginPlay();
    void ExecuteUbergraph_BP_CookingFryingPan(int32 EntryPoint);
}; // Size: 0x2D0

#endif
