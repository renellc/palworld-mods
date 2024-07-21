#ifndef UE4SS_SDK_BP_ActionStun_HPP
#define UE4SS_SDK_BP_ActionStun_HPP

class UBP_ActionStun_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)

    void OnNotifyEnd_CFCF4E784389F348A3D5D6B73F7082BC(FName NotifyName);
    void OnNotifyBegin_CFCF4E784389F348A3D5D6B73F7082BC(FName NotifyName);
    void OnInterrupted_CFCF4E784389F348A3D5D6B73F7082BC(FName NotifyName);
    void OnBlendOut_CFCF4E784389F348A3D5D6B73F7082BC(FName NotifyName);
    void OnCompleted_CFCF4E784389F348A3D5D6B73F7082BC(FName NotifyName);
    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_ActionStun(int32 EntryPoint);
}; // Size: 0x148

#endif
