#ifndef UE4SS_SDK_BP_GrapplingGun_HPP
#define UE4SS_SDK_BP_GrapplingGun_HPP

class ABP_GrapplingGun_C : public APalWeaponBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0570 (size: 0x8)
    class USkeletalMeshComponent* Weapon;                                             // 0x0578 (size: 0x8)
    bool IsShooting;                                                                  // 0x0580 (size: 0x1)
    FHitResult GrappleEnd;                                                            // 0x0588 (size: 0xE8)
    FVector GrappleLocation;                                                          // 0x0670 (size: 0x18)
    bool IsEquip;                                                                     // 0x0688 (size: 0x1)
    double CableMaxLength;                                                            // 0x0690 (size: 0x8)
    double CableShootSpeed;                                                           // 0x0698 (size: 0x8)
    double CableReturnSpeed;                                                          // 0x06A0 (size: 0x8)
    double PlayerMoveSpeed;                                                           // 0x06A8 (size: 0x8)
    FVector ShootDirection;                                                           // 0x06B0 (size: 0x18)
    bool IsPull;                                                                      // 0x06C8 (size: 0x1)
    FVector StartLocation;                                                            // 0x06D0 (size: 0x18)
    FVector GrappleMoveEndLocation;                                                   // 0x06E8 (size: 0x18)
    FVector HitNormal;                                                                // 0x0700 (size: 0x18)
    bool IsVisibleReticle;                                                            // 0x0718 (size: 0x1)
    class ABP_GrapplingGun_Bullet_C* Bullet;                                          // 0x0720 (size: 0x8)
    double NearCoolTimeDistance;                                                      // 0x0728 (size: 0x8)
    double NearCoolTimeRate;                                                          // 0x0730 (size: 0x8)

    void IsShowReticle(bool& IsShow);
    void CalcCoolTimeRate(FVector HitLocation, double& CoolTime);
    void CalcShootStartParam(FVector& ShootDirection, FVector& StartLocation);
    void PullCable(double DeltaTime, bool& IsEnd);
    void IsGraplingAction(bool& bSuccess);
    void ShotCable();
    void On Grapling Action Start(FVector HitLocation, double CoolTimeRate);
    void OnGraplingActionEnd();
    void GetCurrentCableLength(double& CableLength);
    void UpdateVisibleReticle();
    void UpdateCable(double DeltaTime);
    void EndCable(bool IsAnimationCancel);
    void UpdateRopeEndLocation();
    void Start Graplling();
    void ShowLine();
    void OnPullTrigger();
    void ReceiveTick(float DeltaSeconds);
    void OnAttachWeapon(class AActor* attachActor);
    void OnDetachWeapon(class AActor* detachActor);
    void ReceiveBeginPlay();
    void OnActionEnd(const class UPalActionBase* action);
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void ExecuteUbergraph_BP_GrapplingGun(int32 EntryPoint);
}; // Size: 0x738

#endif
