#ifndef UE4SS_SDK_BP_AIAction_Damage_HPP
#define UE4SS_SDK_BP_AIAction_Damage_HPP

class UBP_AIAction_Damage_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    FVector BlowVelocity;                                                             // 0x0138 (size: 0x18)

    void ActionStart(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_Damage(int32 EntryPoint);
}; // Size: 0x150

#endif
