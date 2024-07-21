#ifndef UE4SS_SDK_BP_Action_NPC_MeleeAttack_Katana_HPP
#define UE4SS_SDK_BP_Action_NPC_MeleeAttack_Katana_HPP

class UBP_Action_NPC_MeleeAttack_Katana_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    class UAnimMontage* AttackAnime;                                                  // 0x0148 (size: 0x8)

    void OnNotifyEnd_1B2C74534DDC0999FABA0BAD78AFE4DB(FName NotifyName);
    void OnNotifyBegin_1B2C74534DDC0999FABA0BAD78AFE4DB(FName NotifyName);
    void OnInterrupted_1B2C74534DDC0999FABA0BAD78AFE4DB(FName NotifyName);
    void OnBlendOut_1B2C74534DDC0999FABA0BAD78AFE4DB(FName NotifyName);
    void OnCompleted_1B2C74534DDC0999FABA0BAD78AFE4DB(FName NotifyName);
    void OnBeginAction();
    void ExecuteUbergraph_BP_Action_NPC_MeleeAttack_Katana(int32 EntryPoint);
}; // Size: 0x150

#endif
