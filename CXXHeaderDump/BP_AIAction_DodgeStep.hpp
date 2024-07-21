#ifndef UE4SS_SDK_BP_AIAction_DodgeStep_HPP
#define UE4SS_SDK_BP_AIAction_DodgeStep_HPP

class UBP_AIAction_DodgeStep_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)

    void CanStep(class UPalActionComponent* ActionComponent, bool& CanStep);
    void GetStepTime(class UPalActionBase* ActionComp, double& StepTime);
    void RotateToAttacker(class AActor* Defender, class AActor* Attacker);
    void GetStepType(EPalActionType& NewParam);
    void ActionStart(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_DodgeStep(int32 EntryPoint);
}; // Size: 0x138

#endif
