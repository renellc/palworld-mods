#ifndef UE4SS_SDK_BP_ActionArchitecture_HPP
#define UE4SS_SDK_BP_ActionArchitecture_HPP

class UBP_ActionArchitecture_C : public UBP_ActionInteractBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0180 (size: 0x8)
    class AActor* HammerActor;                                                        // 0x0188 (size: 0x8)
    FName flagName;                                                                   // 0x0190 (size: 0x8)

    void OnEndAction();
    void OnBeginAction();
    void ExecuteUbergraph_BP_ActionArchitecture(int32 EntryPoint);
}; // Size: 0x198

#endif
