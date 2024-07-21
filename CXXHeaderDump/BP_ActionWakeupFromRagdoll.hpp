#ifndef UE4SS_SDK_BP_ActionWakeupFromRagdoll_HPP
#define UE4SS_SDK_BP_ActionWakeupFromRagdoll_HPP

class UBP_ActionWakeupFromRagdoll_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)

    void GroundCheckAdjust();
    void OnNotifyEnd_A0FD85AB4B6F54D9353E768175ABF7B9(FName NotifyName);
    void OnNotifyBegin_A0FD85AB4B6F54D9353E768175ABF7B9(FName NotifyName);
    void OnInterrupted_A0FD85AB4B6F54D9353E768175ABF7B9(FName NotifyName);
    void OnBlendOut_A0FD85AB4B6F54D9353E768175ABF7B9(FName NotifyName);
    void OnCompleted_A0FD85AB4B6F54D9353E768175ABF7B9(FName NotifyName);
    void OnNotifyEnd_7DDA652645DB1077111C1B809FF79A5C(FName NotifyName);
    void OnNotifyBegin_7DDA652645DB1077111C1B809FF79A5C(FName NotifyName);
    void OnInterrupted_7DDA652645DB1077111C1B809FF79A5C(FName NotifyName);
    void OnBlendOut_7DDA652645DB1077111C1B809FF79A5C(FName NotifyName);
    void OnCompleted_7DDA652645DB1077111C1B809FF79A5C(FName NotifyName);
    void OnNotifyEnd_ED4CF3F7468B1088DE5A0494D23DDF61(FName NotifyName);
    void OnNotifyBegin_ED4CF3F7468B1088DE5A0494D23DDF61(FName NotifyName);
    void OnInterrupted_ED4CF3F7468B1088DE5A0494D23DDF61(FName NotifyName);
    void OnBlendOut_ED4CF3F7468B1088DE5A0494D23DDF61(FName NotifyName);
    void OnCompleted_ED4CF3F7468B1088DE5A0494D23DDF61(FName NotifyName);
    void OnBeginAction();
    void ExecuteUbergraph_BP_ActionWakeupFromRagdoll(int32 EntryPoint);
}; // Size: 0x148

#endif
