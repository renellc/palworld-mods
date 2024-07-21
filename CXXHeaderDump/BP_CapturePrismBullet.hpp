#ifndef UE4SS_SDK_BP_CapturePrismBullet_HPP
#define UE4SS_SDK_BP_CapturePrismBullet_HPP

class ABP_CapturePrismBullet_C : public ABP_ThrowObjectBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0398 (size: 0x8)
    class UStaticMeshComponent* StaticMesh;                                           // 0x03A0 (size: 0x8)
    class APalCharacter* CaptureTarget;                                               // 0x03A8 (size: 0x8)
    bool isBound;                                                                     // 0x03B0 (size: 0x1)
    FRotator ThrowRotator;                                                            // 0x03B8 (size: 0x18)

    void UpdateRotation(double DeltaTime);
    void SpawnCaptureObject(FGuid Guid, class AActor* Actor);
    bool IsDestroy(class UPrimitiveComponent* HitComp, class AActor* OtherCharacter, class UPrimitiveComponent* OtherComp, const FHitResult& Hit);
    void OnHitToActor(class UPrimitiveComponent* HitComp, class AActor* OtherActor, class UPrimitiveComponent* OtherComp, const FHitResult& Hit);
    void ReceiveTick(float DeltaSeconds);
    void BndEvt__BP_CapturePrismBullet_ProjectileMovement_K2Node_ComponentBoundEvent_0_OnProjectileBounceDelegate__DelegateSignature(const FHitResult& ImpactResult, const FVector& ImpactVelocity);
    void ExecuteUbergraph_BP_CapturePrismBullet(int32 EntryPoint);
}; // Size: 0x3D0

#endif
