#ifndef UE4SS_SDK_BP_ActionRideBase_HPP
#define UE4SS_SDK_BP_ActionRideBase_HPP

class UBP_ActionRideBase_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    bool IsSuccess;                                                                   // 0x0148 (size: 0x1)
    double ToFinalTime;                                                               // 0x0150 (size: 0x8)
    double InterpTimer;                                                               // 0x0158 (size: 0x8)
    class UPalRiderComponent* RiderComponent;                                         // 0x0160 (size: 0x8)
    class UPalRideMarkerComponent* RideMarker;                                        // 0x0168 (size: 0x8)
    FTransform StartTransform;                                                        // 0x0170 (size: 0x60)
    FTransform JunctionPoint;                                                         // 0x01D0 (size: 0x60)
    double ToJunctionTime;                                                            // 0x0230 (size: 0x8)
    TEnumAsByte<ERideActionState::Type> State;                                        // 0x0238 (size: 0x1)
    FRotator StartMonsterRotator;                                                     // 0x0240 (size: 0x18)
    FRotator EndMonsterRotator;                                                       // 0x0258 (size: 0x18)
    double MonsterRotatorInterpTime;                                                  // 0x0270 (size: 0x8)
    double MonsterRotatorInterpTimer;                                                 // 0x0278 (size: 0x8)
    bool IsCancelMonsterRotation;                                                     // 0x0280 (size: 0x1)
    FVector StartMeshLocation;                                                        // 0x0288 (size: 0x18)
    FVector EndMeshLocation;                                                          // 0x02A0 (size: 0x18)
    FTransform RightJunctionPoint;                                                    // 0x02C0 (size: 0x60)
    FTransform LeftJunctionPoint;                                                     // 0x0320 (size: 0x60)
    class UAnimMontage* FrontRideAnimation;                                           // 0x0380 (size: 0x8)
    class UAnimMontage* RearRideAnimation;                                            // 0x0388 (size: 0x8)
    class UAnimMontage* LeftRideAnimation;                                            // 0x0390 (size: 0x8)
    class UAnimMontage* RightRideAnimation;                                           // 0x0398 (size: 0x8)
    class UAnimMontage* RideAnimation;                                                // 0x03A0 (size: 0x8)
    FTransform FrontJunctionPoint;                                                    // 0x03B0 (size: 0x60)
    FTransform RearJunctionPoint;                                                     // 0x0410 (size: 0x60)
    class UAkAudioEvent* RideStartSoundAKEvent;                                       // 0x0470 (size: 0x8)
    class UAkAudioEvent* RideCompleteSoundAKEvent;                                    // 0x0478 (size: 0x8)
    class UPalShooterComponent* ShooterComponent;                                     // 0x0480 (size: 0x8)
    FName flagName;                                                                   // 0x0488 (size: 0x8)

    void CheckRidingCompleted();
    void PlayRideCompleteSound();
    void PlayRideStartSound();
    void Update Ground Ray Cast(class APalCharacter* Rider);
    void CheckDirection(class AActor* RideTarget, TEnumAsByte<ERideActionDirection::Type>& Direction);
    void DebugDrawLocationLocation(FVector Location);
    void GetLocalLocationOnFloor(FVector NativeLocation, FVector& Location);
    void InterpMonsterRotation(double DeltaTime);
    void SetupRider(class APalCharacter* Rider, bool& IsSuccess);
    void InterpRiderLocation(double DeltaTime);
    void OnNotifyEnd_CD532E1C42E1BEC6059709A5FB6CCC91(FName NotifyName);
    void OnNotifyBegin_CD532E1C42E1BEC6059709A5FB6CCC91(FName NotifyName);
    void OnInterrupted_CD532E1C42E1BEC6059709A5FB6CCC91(FName NotifyName);
    void OnBlendOut_CD532E1C42E1BEC6059709A5FB6CCC91(FName NotifyName);
    void OnCompleted_CD532E1C42E1BEC6059709A5FB6CCC91(FName NotifyName);
    void OnBeginAction();
    void OnBreakAction();
    void OnEndAction();
    void TickAction(float DeltaTime);
    void ExecuteUbergraph_BP_ActionRideBase(int32 EntryPoint);
}; // Size: 0x490

#endif
