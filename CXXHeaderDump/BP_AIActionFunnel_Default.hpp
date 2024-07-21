#ifndef UE4SS_SDK_BP_AIActionFunnel_Default_HPP
#define UE4SS_SDK_BP_AIActionFunnel_Default_HPP

class UBP_AIActionFunnel_Default_C : public UPalAIActionFunnelCharacterDefault
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0050 (size: 0x8)
    class UPalFunnelSkillModule* SkillModule;                                         // 0x0058 (size: 0x8)

    void CreateSkillActionModule(TSubclassOf<class UPalFunnelSkillModule> FunnelSkillModuleClass);
    bool ShouldSetSkillAction();
    class UPalAIActionBase* SetAction(TSubclassOf<class UPalAIActionBase> Class);
    void SetActionSkill();
    void SetActionFollowTrainer();
    void SetOtomoFollowAction();
    void SetSkillAction();
    void OnTick_BP(float DeltaTime);
    void ExecuteUbergraph_BP_AIActionFunnel_Default(int32 EntryPoint);
}; // Size: 0x60

#endif
