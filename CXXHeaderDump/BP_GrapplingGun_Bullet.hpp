#ifndef UE4SS_SDK_BP_GrapplingGun_Bullet_HPP
#define UE4SS_SDK_BP_GrapplingGun_Bullet_HPP

class ABP_GrapplingGun_Bullet_C : public AActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class UStaticMeshComponent* Anchor;                                               // 0x0298 (size: 0x8)
    class UCableComponent* Cable;                                                     // 0x02A0 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02A8 (size: 0x8)

    void UpdateCable(FVector Start, FVector End, bool IsHit, bool IsVisible);
    void ReceiveBeginPlay();
    void ExecuteUbergraph_BP_GrapplingGun_Bullet(int32 EntryPoint);
}; // Size: 0x2B0

#endif
