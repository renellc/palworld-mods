#ifndef UE4SS_SDK_BP_Action_NPC_HasPropMonoMotion_HPP
#define UE4SS_SDK_BP_Action_NPC_HasPropMonoMotion_HPP

class UBP_Action_NPC_HasPropMonoMotion_C : public UBP_ActionSimpleMonoMontage_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0168 (size: 0x8)
    class ABP_Prop_Base_C* PropModel;                                                 // 0x0170 (size: 0x8)
    TSubclassOf<class ABP_Prop_Base_C> PropActorClass;                                // 0x0178 (size: 0x8)

    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_Action_NPC_HasPropMonoMotion(int32 EntryPoint);
}; // Size: 0x180

#endif
