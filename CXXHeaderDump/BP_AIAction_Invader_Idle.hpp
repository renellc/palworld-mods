#ifndef UE4SS_SDK_BP_AIAction_Invader_Idle_HPP
#define UE4SS_SDK_BP_AIAction_Invader_Idle_HPP

class UBP_AIAction_Invader_Idle_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)

    void ActionStart(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_Invader_Idle(int32 EntryPoint);
}; // Size: 0x138

#endif
