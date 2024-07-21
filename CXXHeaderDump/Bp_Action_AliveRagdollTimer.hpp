#ifndef UE4SS_SDK_Bp_Action_AliveRagdollTimer_HPP
#define UE4SS_SDK_Bp_Action_AliveRagdollTimer_HPP

class UBp_Action_AliveRagdollTimer_C : public UBP_Action_AliveRagdoll_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0210 (size: 0x8)

    void OnBeginAction();
    void ExecuteUbergraph_Bp_Action_AliveRagdollTimer(int32 EntryPoint);
}; // Size: 0x218

#endif
