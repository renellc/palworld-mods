#ifndef UE4SS_SDK_BP_PalActionStepBase_HPP
#define UE4SS_SDK_BP_PalActionStepBase_HPP

class UBP_PalActionStepBase_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    FName flagName;                                                                   // 0x0148 (size: 0x8)
    double StepTime;                                                                  // 0x0150 (size: 0x8)
    double Timer;                                                                     // 0x0158 (size: 0x8)
    EPalGeneralMontageType StepType;                                                  // 0x0160 (size: 0x1)
    bool CanEndStep;                                                                  // 0x0161 (size: 0x1)
    class UAnimMontage* Montage;                                                      // 0x0168 (size: 0x8)
    bool CanCrouchCancel;                                                             // 0x0170 (size: 0x1)
    double CrouchCancelTime;                                                          // 0x0178 (size: 0x8)
    double StepDistance;                                                              // 0x0180 (size: 0x8)
    class UNiagaraComponent* Effect;                                                  // 0x0188 (size: 0x8)
    FVector StepEndLocation;                                                          // 0x0190 (size: 0x18)
    bool IsPlayStepEffect;                                                            // 0x01A8 (size: 0x1)
    FVector StepStartLocation;                                                        // 0x01B0 (size: 0x18)

    void GetStepEndLocation(FVector& Location);
    void StepMove();
    void CheckFrontHight(bool& CanThrough);
    void DisableMovement(bool Disable);
    void OnBeginAction();
    void OnEndAction();
    void TickAction(float DeltaTime);
    void EndStep();
    void OnEndStepWhenCrouch();
    void ExecuteUbergraph_BP_PalActionStepBase(int32 EntryPoint);
}; // Size: 0x1C8

#endif
