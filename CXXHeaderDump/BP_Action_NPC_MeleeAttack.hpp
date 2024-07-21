#ifndef UE4SS_SDK_BP_Action_NPC_MeleeAttack_HPP
#define UE4SS_SDK_BP_Action_NPC_MeleeAttack_HPP

class UBP_Action_NPC_MeleeAttack_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    class UAnimMontage* AttackAnime;                                                  // 0x0148 (size: 0x8)

    void OnNotifyEnd_B1694066412380A7CADF2F9E8FC00237(FName NotifyName);
    void OnNotifyBegin_B1694066412380A7CADF2F9E8FC00237(FName NotifyName);
    void OnInterrupted_B1694066412380A7CADF2F9E8FC00237(FName NotifyName);
    void OnBlendOut_B1694066412380A7CADF2F9E8FC00237(FName NotifyName);
    void OnCompleted_B1694066412380A7CADF2F9E8FC00237(FName NotifyName);
    void OnBeginAction();
    void ExecuteUbergraph_BP_Action_NPC_MeleeAttack(int32 EntryPoint);
}; // Size: 0x150

#endif
