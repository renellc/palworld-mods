#ifndef UE4SS_SDK_BP_HomingMissile_HPP
#define UE4SS_SDK_BP_HomingMissile_HPP

class ABP_HomingMissile_C : public ABP_AttackBulletBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0370 (size: 0x8)
    class UNiagaraComponent* Niagara;                                                 // 0x0378 (size: 0x8)
    class UStaticMeshComponent* SM_MissileExhaust;                                    // 0x0380 (size: 0x8)
    class UStaticMeshComponent* SM_Missile;                                           // 0x0388 (size: 0x8)
    bool IsExprosed;                                                                  // 0x0390 (size: 0x1)
    double HomingStartRandimTimeMin;                                                  // 0x0398 (size: 0x8)
    double HpmingAccele;                                                              // 0x03A0 (size: 0x8)

    void OnHitToActor(class UPrimitiveComponent* HitComp, class AActor* OtherActor, class UPrimitiveComponent* OtherComp, const FHitResult& Hit);
    void GetExplosionClass(TSubclassOf<class ABP_ExplosionAttackBase_C>& ExplosionClass);
    void GetBulletAttackType(EPalAttackType& AttackType);
    void SetAttackTarget(class APalCharacter* Target);
    void ReceiveBeginPlay();
    void OnDestroy(class UPrimitiveComponent* HitComp, class AActor* OtherCharacter, class UPrimitiveComponent* OtherComp, const FHitResult& Hit);
    void ExecuteUbergraph_BP_HomingMissile(int32 EntryPoint);
}; // Size: 0x3A8

#endif
