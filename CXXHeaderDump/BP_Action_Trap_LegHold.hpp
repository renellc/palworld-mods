#ifndef UE4SS_SDK_BP_Action_Trap_LegHold_HPP
#define UE4SS_SDK_BP_Action_Trap_LegHold_HPP

class UBP_Action_Trap_LegHold_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)

    void ChangeParam(EPalFacialEyeType Facial, double WalkSpeed, bool Disable);
    void OnNotifyEnd_B36E8DE94F361F83E59F068157E7FE93(FName NotifyName);
    void OnNotifyBegin_B36E8DE94F361F83E59F068157E7FE93(FName NotifyName);
    void OnInterrupted_B36E8DE94F361F83E59F068157E7FE93(FName NotifyName);
    void OnBlendOut_B36E8DE94F361F83E59F068157E7FE93(FName NotifyName);
    void OnCompleted_B36E8DE94F361F83E59F068157E7FE93(FName NotifyName);
    void OnEndAction();
    void OnBeginAction();
    void TickAction(float DeltaTime);
    void ExecuteUbergraph_BP_Action_Trap_LegHold(int32 EntryPoint);
}; // Size: 0x148

#endif
