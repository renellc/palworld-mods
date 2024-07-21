#ifndef UE4SS_SDK_BP_ActionMining_HPP
#define UE4SS_SDK_BP_ActionMining_HPP

class UBP_ActionMining_C : public UBP_ActionInteractBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0180 (size: 0x8)
    class AActor* ToolActor;                                                          // 0x0188 (size: 0x8)
    FName flagName;                                                                   // 0x0190 (size: 0x8)

    void OnEndAction();
    void OnBeginAction();
    void OnBeginAnimNotify(class UAnimMontage* Montage, FName NotifyName);
    void ExecuteUbergraph_BP_ActionMining(int32 EntryPoint);
}; // Size: 0x198

#endif
