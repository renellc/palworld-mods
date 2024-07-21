#ifndef UE4SS_SDK_BP_Action_NPC_Reload_HPP
#define UE4SS_SDK_BP_Action_NPC_Reload_HPP

class UBP_Action_NPC_Reload_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)

    void OnNotifyEnd_570932B749CF5A9A1DB665947E5643C9(FName NotifyName);
    void OnNotifyBegin_570932B749CF5A9A1DB665947E5643C9(FName NotifyName);
    void OnInterrupted_570932B749CF5A9A1DB665947E5643C9(FName NotifyName);
    void OnBlendOut_570932B749CF5A9A1DB665947E5643C9(FName NotifyName);
    void OnCompleted_570932B749CF5A9A1DB665947E5643C9(FName NotifyName);
    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_Action_NPC_Reload(int32 EntryPoint);
}; // Size: 0x148

#endif
