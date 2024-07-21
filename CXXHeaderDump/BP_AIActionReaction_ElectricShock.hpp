#ifndef UE4SS_SDK_BP_AIActionReaction_ElectricShock_HPP
#define UE4SS_SDK_BP_AIActionReaction_ElectricShock_HPP

class UBP_AIActionReaction_ElectricShock_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    class UPalActionBase* tempAction;                                                 // 0x0138 (size: 0x8)

    void ActionStart(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIActionReaction_ElectricShock(int32 EntryPoint);
}; // Size: 0x140

#endif
