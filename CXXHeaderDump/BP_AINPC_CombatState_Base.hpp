#ifndef UE4SS_SDK_BP_AINPC_CombatState_Base_HPP
#define UE4SS_SDK_BP_AINPC_CombatState_Base_HPP

class UBP_AINPC_CombatState_Base_C : public UPalStateMachineStateBase_BlueprintBase
{
    bool IsEndSelf;                                                                   // 0x0030 (size: 0x1)

    void IsEndSelfState(bool& IsEnd);
    void ShootAbleSlefForwardDot(bool& ShootAble);
    void AttackAblePlayerCamera(bool& AttackAble);
    void GetControllerRef(class ABP_NPCAIController_C*& NPCAICon);
    void GetShooterComponent(class UPalShooterComponent*& ShooterComp);
    void GetSelfActor(class APalCharacter*& SelfActor);
    void GetTargetActor(class AActor*& TargetActor);
    void GetCombatAIActionRef(class UBP_AIAction_NPC_CombatBase_C*& BPAIActionNPCCombat);
}; // Size: 0x31

#endif
