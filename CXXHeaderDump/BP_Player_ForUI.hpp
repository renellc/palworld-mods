#ifndef UE4SS_SDK_BP_Player_ForUI_HPP
#define UE4SS_SDK_BP_Player_ForUI_HPP

class ABP_Player_ForUI_C : public APalUIDisplayCharacter
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x02A0 (size: 0x8)
    class UPalSkeletalMeshComponent* HairAttachAccessory;                             // 0x02A8 (size: 0x8)
    class UPalSkeletalMeshComponent* hair;                                            // 0x02B0 (size: 0x8)
    class UPalSkeletalMeshComponent* Head;                                            // 0x02B8 (size: 0x8)
    class USphereComponent* Sphere;                                                   // 0x02C0 (size: 0x8)
    FBP_Player_ForUI_COnAppliedBodyMesh OnAppliedBodyMesh;                            // 0x02C8 (size: 0x10)
    void OnAppliedBodyMesh(FLinearColor BodyMeshBasColor);
    FBP_Player_ForUI_COnAppliedHeadMesh OnAppliedHeadMesh;                            // 0x02D8 (size: 0x10)
    void OnAppliedHeadMesh(FLinearColor BrowMeshBaseColor, FLinearColor EyeMeshBaseColor);
    FBP_Player_ForUI_COnAppliedHairMesh OnAppliedHairMesh;                            // 0x02E8 (size: 0x10)
    void OnAppliedHairMesh(FLinearColor HairMeshBaseColor);

    void OnAppliedHairMesh_Binded(const class UPalSkeletalMeshComponent* SkeletalMeshComponent);
    void OnAppliedHeadMesh_Binded(const class UPalSkeletalMeshComponent* SkeletalMeshComponent);
    void OnAppliedBodyMesh_Binded(const class UPalSkeletalMeshComponent* SkeletalMeshComponent);
    void CopyWeapon(TSubclassOf<class APalWeaponBase> WeaponClass);
    void ReceiveBeginPlay();
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void ExecuteUbergraph_BP_Player_ForUI(int32 EntryPoint);
    void OnAppliedHairMesh__DelegateSignature(FLinearColor HairMeshBaseColor);
    void OnAppliedHeadMesh__DelegateSignature(FLinearColor BrowMeshBaseColor, FLinearColor EyeMeshBaseColor);
    void OnAppliedBodyMesh__DelegateSignature(FLinearColor BodyMeshBasColor);
}; // Size: 0x2F8

#endif
