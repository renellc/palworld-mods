#ifndef UE4SS_SDK_BP_RocketBullet_HPP
#define UE4SS_SDK_BP_RocketBullet_HPP

class ABP_RocketBullet_C : public ABP_AttackBulletBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0370 (size: 0x8)
    class UNiagaraComponent* Niagara;                                                 // 0x0378 (size: 0x8)
    class UStaticMeshComponent* StaticMesh;                                           // 0x0380 (size: 0x8)
    class UPalHitFilter* HitFilter;                                                   // 0x0388 (size: 0x8)
    bool IsExploded;                                                                  // 0x0390 (size: 0x1)

    void GetExplosionClass(TSubclassOf<class ABP_ExplosionAttackBase_C>& ExplosionClass);
    void OnHitToActor(class UPrimitiveComponent* HitComp, class AActor* OtherActor, class UPrimitiveComponent* OtherComp, const FHitResult& Hit);
    void ReceiveBeginPlay();
    void ReceiveTick(float DeltaSeconds);
    void OnDestroy(class UPrimitiveComponent* HitComp, class AActor* OtherCharacter, class UPrimitiveComponent* OtherComp, const FHitResult& Hit);
    void ExecuteUbergraph_BP_RocketBullet(int32 EntryPoint);
}; // Size: 0x391

#endif
