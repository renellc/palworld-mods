#ifndef UE4SS_SDK_BP_PalClimbingComponent_HPP
#define UE4SS_SDK_BP_PalClimbingComponent_HPP

class UBP_PalClimbingComponent_C : public UPalClimbingComponent
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00A0 (size: 0x8)
    bool IsClimbing;                                                                  // 0x00A8 (size: 0x1)
    FVector PrevClimbDirection;                                                       // 0x00B0 (size: 0x18)
    bool CanClimbing;                                                                 // 0x00C8 (size: 0x1)
    TEnumAsByte<ETraceTypeQuery> Const_RayChannel;                                    // 0x00C9 (size: 0x1)
    FName flagName;                                                                   // 0x00CC (size: 0x8)
    double DownRayCancelTimer;                                                        // 0x00D8 (size: 0x8)
    TEnumAsByte<EDrawDebugTrace::Type> DebugType;                                     // 0x00E0 (size: 0x1)
    bool TraceComplex;                                                                // 0x00E1 (size: 0x1)
    double Const_ForwardRayLength;                                                    // 0x00E8 (size: 0x8)
    double Const_UpRayLength;                                                         // 0x00F0 (size: 0x8)
    double Const_RightRayLength;                                                      // 0x00F8 (size: 0x8)
    double Const_OffsetBack;                                                          // 0x0100 (size: 0x8)
    bool UpAtTopMode;                                                                 // 0x0108 (size: 0x1)
    class UCurveVector* UpToTopMoveCurve;                                             // 0x0110 (size: 0x8)
    double UpToTopTimer;                                                              // 0x0118 (size: 0x8)
    FVector UpToTopFromPlayer;                                                        // 0x0120 (size: 0x18)
    FVector UpToTopStartPos;                                                          // 0x0138 (size: 0x18)
    bool IsEnding;                                                                    // 0x0150 (size: 0x1)

    void CanClimbingStart(bool& Result);
    bool TryClimbAfterGrappling();
    void RayCollisionCheckEndExtrusion();
    void Cancel Ray Check();
    void ResetPlayerCollision();
    void StartClimbByNetwork();
    void IsStaminaEmpty(bool& Empty);
    void UpToTopUpdate(double DeltaTime);
    void CheckUpToTop(bool& Finish);
    void GetSelfLocationWithOffsetBack(FVector& selfPos);
    void LineTrace_ForClimbComponent(FVector StartPos, FVector EndPos, bool& IsHit, FHitResult& HitResult);
    void HandIK();
    void ObjectName_DebugShow();
    void DiagonalRayCast(bool IsUp, bool IsRight, bool& IsHit, FVector& HitPoint);
    void GroundCheck(bool& IsGround);
    void UpRayCast(bool IsUp, bool& IsHit, FVector& HitPos);
    void CenterRayCast(bool& IsHit, FVector& HitPos);
    void SphereTrace_ForClimbComponent(FVector StartPos, FVector EndPos, bool& IsHit, FHitResult& HitResult);
    void SideRayCast(bool IsRight, bool& IsHit, FVector& HitPoint);
    void UpdateActorRotate(FVector CheckDirection);
    void RequestEndClimbing();
    void ClimbingMainUpdate(double DeltaTime);
    void OnEndClimbing();
    void StartClimbing(FHitResult HitResult);
    void CheckClimbingMode();
    void OnNotifyEnd_085F600F42305157C1A542B1D6539EF9(FName NotifyName);
    void OnNotifyBegin_085F600F42305157C1A542B1D6539EF9(FName NotifyName);
    void OnInterrupted_085F600F42305157C1A542B1D6539EF9(FName NotifyName);
    void OnBlendOut_085F600F42305157C1A542B1D6539EF9(FName NotifyName);
    void OnCompleted_085F600F42305157C1A542B1D6539EF9(FName NotifyName);
    void ReceiveBeginPlay();
    void ReceiveTick(float DeltaSeconds);
    void OnMovementModeChangedDelegate_イベント_0(class UPalCharacterMovementComponent* Component, TEnumAsByte<EMovementMode> prevMode, TEnumAsByte<EMovementMode> newMode, EPalCharacterMovementCustomMode PrevCustomMode, EPalCharacterMovementCustomMode NewCustomMode);
    void DelayCanClimbing();
    void カスタムイベント_OnDead(FPalDeadInfo DeadInfo);
    void ForceCancelClimb();
    void ClimbUpAtTopEvent();
    void StartClimb(const FHitResult& Result);
    void ExecuteUbergraph_BP_PalClimbingComponent(int32 EntryPoint);
}; // Size: 0x151

#endif
