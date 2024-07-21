#ifndef UE4SS_SDK_BP_ActionCooking_HPP
#define UE4SS_SDK_BP_ActionCooking_HPP

class UBP_ActionCooking_C : public UBP_ActionInteractBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0180 (size: 0x8)
    class AActor* HammerActor;                                                        // 0x0188 (size: 0x8)

    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_ActionCooking(int32 EntryPoint);
}; // Size: 0x190

#endif
