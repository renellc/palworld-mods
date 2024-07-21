#ifndef UE4SS_SDK_BP_Action_BeLiftup_HPP
#define UE4SS_SDK_BP_Action_BeLiftup_HPP

class UBP_Action_BeLiftup_C : public UPalAction_BeLiftup
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    double interpTime;                                                                // 0x0148 (size: 0x8)
    double InterpTimer;                                                               // 0x0150 (size: 0x8)
    FRotator StartRotation;                                                           // 0x0158 (size: 0x18)
    bool StartedInterpRotation;                                                       // 0x0170 (size: 0x1)
    FVector StartLocation;                                                            // 0x0178 (size: 0x18)
    FVector TargetLocation;                                                           // 0x0190 (size: 0x18)

    void GetCarryingMontage(EPalGeneralMontageType MontageType, class UAnimMontage*& Montage);
    void OnEndAction();
    void OnBeginAction();
    void TickAction(float DeltaTime);
    void OnStartInterpTransform();
    void OnEndInterpTransform();
    void ExecuteUbergraph_BP_Action_BeLiftup(int32 EntryPoint);
}; // Size: 0x1A8

#endif
