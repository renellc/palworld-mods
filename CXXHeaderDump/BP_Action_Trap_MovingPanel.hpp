#ifndef UE4SS_SDK_BP_Action_Trap_MovingPanel_HPP
#define UE4SS_SDK_BP_Action_Trap_MovingPanel_HPP

class UBP_Action_Trap_MovingPanel_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)

    void ChangeParam(EPalFacialEyeType Facial, double WalkSpeed);
    void OnBeginAction();
    void OnEndAction();
    void TickAction(float DeltaTime);
    void ExecuteUbergraph_BP_Action_Trap_MovingPanel(int32 EntryPoint);
}; // Size: 0x148

#endif
