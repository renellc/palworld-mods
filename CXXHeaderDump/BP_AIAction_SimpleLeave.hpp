#ifndef UE4SS_SDK_BP_AIAction_SimpleLeave_HPP
#define UE4SS_SDK_BP_AIAction_SimpleLeave_HPP

class UBP_AIAction_SimpleLeave_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)

    void ForceEndAction();
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ExecuteUbergraph_BP_AIAction_SimpleLeave(int32 EntryPoint);
}; // Size: 0x138

#endif
