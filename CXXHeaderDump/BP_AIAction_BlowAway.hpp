#ifndef UE4SS_SDK_BP_AIAction_BlowAway_HPP
#define UE4SS_SDK_BP_AIAction_BlowAway_HPP

class UBP_AIAction_BlowAway_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    class UPalActionComponent* ActionComp;                                            // 0x0138 (size: 0x8)

    void ActionStart(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_BlowAway(int32 EntryPoint);
}; // Size: 0x140

#endif
