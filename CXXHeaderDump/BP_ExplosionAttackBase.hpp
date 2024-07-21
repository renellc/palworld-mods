#ifndef UE4SS_SDK_BP_ExplosionAttackBase_HPP
#define UE4SS_SDK_BP_ExplosionAttackBase_HPP

class ABP_ExplosionAttackBase_C : public AActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class USphereComponent* Sphere;                                                   // 0x0298 (size: 0x8)
    double HitCollisionTime;                                                          // 0x02A0 (size: 0x8)
    class UPalHitFilter* HitFilter;                                                   // 0x02A8 (size: 0x8)
    int32 AttackPower;                                                                // 0x02B0 (size: 0x4)
    double BlowPower;                                                                 // 0x02B8 (size: 0x8)
    double SneakAttackRate;                                                           // 0x02C0 (size: 0x8)
    TSubclassOf<class UPalCameraShakeBase> CameraShakeClass;                          // 0x02C8 (size: 0x8)

    void Is Attack Able(class AActor* Attacker, class AActor* HitActor, class UPrimitiveComponent* HitComponent, bool& IsHit);
    void Get Attackable Friend(bool& IsFriendAttack);
    void GetEffectValue(int32& Value);
    void GetEffectType(EPalAdditionalEffectType& Effect);
    void GetElement(EPalElementType& Element);
    void FindAttacker(class AActor*& Attacker);
    void GetWeaponAttackType(EPalAttackType& AttackType);
    void SetBlowPower(double NewBlowPower);
    void SetRadius(int32 NewParam);
    void SetPower(int32 NewParam, double SnakeRate);
    void OnHit(class UPrimitiveComponent* MyHitComponent, class AActor* OtherHitActor, class UPrimitiveComponent* OtherHitComponent, TArray<int32>& FoliageIndex, FVector HitLocation, int32 HitCount);
    void ReceiveBeginPlay();
    void DisableCollision();
    void SetupHitFilter();
    void ExecuteUbergraph_BP_ExplosionAttackBase(int32 EntryPoint);
}; // Size: 0x2D0

#endif
