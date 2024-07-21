#ifndef UE4SS_SDK_BP_ActionResuscitation_HPP
#define UE4SS_SDK_BP_ActionResuscitation_HPP

class UBP_ActionResuscitation_C : public UBP_ActionSimpleMonoMontage_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0168 (size: 0x8)
    double Timer;                                                                     // 0x0170 (size: 0x8)
    FName flagName;                                                                   // 0x0178 (size: 0x8)
    FTimerHandle CurrentTimer;                                                        // 0x0180 (size: 0x8)
    class UWBP_GameOver_Rescue_C* RescueWidget;                                       // 0x0188 (size: 0x8)

    void FlagControll(bool isDisable);
    void TickAction(float DeltaTime);
    void OnBeginAction();
    void OnEndAction();
    void OnRescueUpdate();
    void ExecuteUbergraph_BP_ActionResuscitation(int32 EntryPoint);
}; // Size: 0x190

#endif
