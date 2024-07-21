#ifndef UE4SS_SDK_BP_Action_MimicryEncounter_HPP
#define UE4SS_SDK_BP_Action_MimicryEncounter_HPP

class UBP_Action_MimicryEncounter_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)

    void OnNotifyEnd_41F883F24346AC8EA3076F98EE10BE03(FName NotifyName);
    void OnNotifyBegin_41F883F24346AC8EA3076F98EE10BE03(FName NotifyName);
    void OnInterrupted_41F883F24346AC8EA3076F98EE10BE03(FName NotifyName);
    void OnBlendOut_41F883F24346AC8EA3076F98EE10BE03(FName NotifyName);
    void OnCompleted_41F883F24346AC8EA3076F98EE10BE03(FName NotifyName);
    void OnBeginAction();
    void ExecuteUbergraph_BP_Action_MimicryEncounter(int32 EntryPoint);
}; // Size: 0x148

#endif
