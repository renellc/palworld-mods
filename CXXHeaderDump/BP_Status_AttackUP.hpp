#ifndef UE4SS_SDK_BP_Status_AttackUP_HPP
#define UE4SS_SDK_BP_Status_AttackUP_HPP

class UBP_Status_AttackUP_C : public UPalStatusBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0048 (size: 0x8)

    void OnLoaded_FD22363D4A5A9DE9CE4C0BABF4CAA7C0(class UObject* Loaded);
    void OnBeginStatus();
    void OnEndStatus();
    void ExecuteUbergraph_BP_Status_AttackUP(int32 EntryPoint);
}; // Size: 0x50

#endif
