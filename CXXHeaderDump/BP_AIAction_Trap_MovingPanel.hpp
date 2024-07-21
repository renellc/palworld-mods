#ifndef UE4SS_SDK_BP_AIAction_Trap_MovingPanel_HPP
#define UE4SS_SDK_BP_AIAction_Trap_MovingPanel_HPP

class UBP_AIAction_Trap_MovingPanel_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    class UPalActionBase* ActionInst;                                                 // 0x0138 (size: 0x8)

    void OnChangeTrapExist(bool Exist);
    void GetCPC(class UPalCharacterParameterComponent*& CPC);
    void ActionStart(class APawn* ControlledPawn);
    void ActionAbort(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionPause(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_Trap_MovingPanel(int32 EntryPoint);
}; // Size: 0x140

#endif
