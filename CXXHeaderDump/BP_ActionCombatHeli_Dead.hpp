#ifndef UE4SS_SDK_BP_ActionCombatHeli_Dead_HPP
#define UE4SS_SDK_BP_ActionCombatHeli_Dead_HPP

class UBP_ActionCombatHeli_Dead_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)

    void OnBeginAction();
    void ExecuteUbergraph_BP_ActionCombatHeli_Dead(int32 EntryPoint);
}; // Size: 0x148

#endif
