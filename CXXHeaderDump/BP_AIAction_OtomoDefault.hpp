#ifndef UE4SS_SDK_BP_AIAction_OtomoDefault_HPP
#define UE4SS_SDK_BP_AIAction_OtomoDefault_HPP

class UBP_AIAction_OtomoDefault_C : public UPalAIActionOtomoDefault
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0050 (size: 0x8)

    void Set Action Berserker(class AActor* Target);
    void SetActionComposite(TSubclassOf<class UPalAIActionCompositeBase> Class);
    void SetAction(TSubclassOf<class UPalAIActionBase> Class);
    void SetActionCombat();
    void SetActionBaseCampWork();
    void SetActionWork();
    void SetActionFollowTrainer();
    bool ShouldSetCombatAction();
    void SetOtomoCombatAction();
    void SetOtomoFollowAction();
    void SetOtomoWorkAction();
    void SetOtomoBaseCampAction();
    void SetOtomoBerserker(class AActor* Target);
    void ExecuteUbergraph_BP_AIAction_OtomoDefault(int32 EntryPoint);
}; // Size: 0x58

#endif
