#ifndef UE4SS_SDK_BP_Status_FallDamage_HPP
#define UE4SS_SDK_BP_Status_FallDamage_HPP

class UBP_Status_FallDamage_C : public UPalStatusBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0048 (size: 0x8)
    double Const_DamageStartHeight;                                                   // 0x0050 (size: 0x8)
    double Const_DeathHeight;                                                         // 0x0058 (size: 0x8)
    bool IsGlider;                                                                    // 0x0060 (size: 0x1)

    void IsIgnoreCharacter(bool& Ignore);
    void GetLastJumpedZ(double& Z);
    void LandDamage();
    void ResetFallStartPos(bool OnLand);
    void OnBeginStatus();
    void OnLand(class UPalCharacterMovementComponent* Component, const FHitResult& Hit);
    void OnModeChange(class UPalCharacterMovementComponent* Component, TEnumAsByte<EMovementMode> prevMode, TEnumAsByte<EMovementMode> newMode, EPalCharacterMovementCustomMode PrevCustomMode, EPalCharacterMovementCustomMode NewCustomMode);
    void OnEndStatus();
    void TickStatus(float DeltaTime);
    void SetUp_FallDamage(class APalCharacter* InCharacter);
    void ExecuteUbergraph_BP_Status_FallDamage(int32 EntryPoint);
}; // Size: 0x61

#endif
