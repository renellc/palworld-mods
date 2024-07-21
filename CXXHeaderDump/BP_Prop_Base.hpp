#ifndef UE4SS_SDK_BP_Prop_Base_HPP
#define UE4SS_SDK_BP_Prop_Base_HPP

class ABP_Prop_Base_C : public AActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class UStaticMeshComponent* Mesh;                                                 // 0x0298 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02A0 (size: 0x8)
    FVector HandleLocation;                                                           // 0x02A8 (size: 0x18)
    FRotator HandleRotation;                                                          // 0x02C0 (size: 0x18)

    void ExecuteUbergraph_BP_Prop_Base(int32 EntryPoint);
}; // Size: 0x2D8

#endif
