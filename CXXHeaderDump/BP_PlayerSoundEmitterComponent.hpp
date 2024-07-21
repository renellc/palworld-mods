#ifndef UE4SS_SDK_BP_PlayerSoundEmitterComponent_HPP
#define UE4SS_SDK_BP_PlayerSoundEmitterComponent_HPP

class UBP_PlayerSoundEmitterComponent_C : public UPalSoundEmitterComponent
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00A0 (size: 0x8)
    FVector MoveVelocity;                                                             // 0x00A8 (size: 0x18)
    bool IsSprint;                                                                    // 0x00C0 (size: 0x1)
    FVector SelfLocation;                                                             // 0x00C8 (size: 0x18)
    double MaxWalkSpeed;                                                              // 0x00E0 (size: 0x8)
    double MaxSprintSpeed;                                                            // 0x00E8 (size: 0x8)
    FTimerHandle TimerHandle;                                                         // 0x00F0 (size: 0x8)
    bool IsCrouching;                                                                 // 0x00F8 (size: 0x1)
    bool IsSliding;                                                                   // 0x00F9 (size: 0x1)

    void BPEmitSound(FName RowName, double Rate);
    void ReceiveBeginPlay();
    void ReceiveTick(float DeltaSeconds);
    void カスタムイベント_0();
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void カスタムイベント_1(class UPalCharacterMovementComponent* Component, const FHitResult& Hit);
    void ExecuteUbergraph_BP_PlayerSoundEmitterComponent(int32 EntryPoint);
}; // Size: 0xFA

#endif
