#ifndef UE4SS_SDK_BP_AIActionCombatHeli_Dead_HPP
#define UE4SS_SDK_BP_AIActionCombatHeli_Dead_HPP

class UBP_AIActionCombatHeli_Dead_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)

    void ActionStart(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIActionCombatHeli_Dead(int32 EntryPoint);
}; // Size: 0x138

#endif
