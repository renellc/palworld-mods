#ifndef UE4SS_SDK_BP_ActionReturnOtomoPal_HPP
#define UE4SS_SDK_BP_ActionReturnOtomoPal_HPP

class UBP_ActionReturnOtomoPal_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    double Const_PalDeactiveTime;                                                     // 0x0148 (size: 0x8)
    double Const_PlayerMotionTime;                                                    // 0x0150 (size: 0x8)
    FVector ToOtomoDirection;                                                         // 0x0158 (size: 0x18)
    double Const_WalkSpeedRate;                                                       // 0x0170 (size: 0x8)
    class UBP_ReturnOtomoSphereComponent_C* BallComponent;                            // 0x0178 (size: 0x8)
    class UPalIndividualCharacterHandle* PreHandle;                                   // 0x0180 (size: 0x8)

    void CompleteDeactivateOtomo();
    void DeleteBallModel();
    void AttachBallModel();
    void SetFlags(bool Disable, double Speed);
    void SetupToOtomoDirection();
    void DeactivateOtomo();
    void OnBeginAction();
    void OnEndAction();
    void TickAction(float DeltaTime);
    void ExecuteUbergraph_BP_ActionReturnOtomoPal(int32 EntryPoint);
}; // Size: 0x188

#endif
