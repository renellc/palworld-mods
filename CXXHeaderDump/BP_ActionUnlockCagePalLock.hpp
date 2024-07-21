#ifndef UE4SS_SDK_BP_ActionUnlockCagePalLock_HPP
#define UE4SS_SDK_BP_ActionUnlockCagePalLock_HPP

class UBP_ActionUnlockCagePalLock_C : public UBP_ActionSimpleMonoMontage_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0168 (size: 0x8)
    FName flagName;                                                                   // 0x0170 (size: 0x8)
    class UAkAudioEvent* AkEventUnlockCage;                                           // 0x0178 (size: 0x8)

    void RotateToLockModel();
    void OnEndAction();
    void OnBeginAction();
    void ExecuteUbergraph_BP_ActionUnlockCagePalLock(int32 EntryPoint);
}; // Size: 0x180

#endif
