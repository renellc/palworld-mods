#ifndef UE4SS_SDK_BP_AIAction_NPC_Combat_Gun_HPP
#define UE4SS_SDK_BP_AIAction_NPC_Combat_Gun_HPP

class UBP_AIAction_NPC_Combat_Gun_C : public UBP_AIAction_NPC_CombatBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0188 (size: 0x8)
    TMap<TEnumAsByte<EPal_NPC_CombatGunState::Type>, TSubclassOf<UBP_AINPC_CombatState_Base_C>> StateMap; // 0x0190 (size: 0x50)
    TEnumAsByte<EPal_NPC_CombatGunState::Type> CurrentState;                          // 0x01E0 (size: 0x1)
    bool IsStopTick;                                                                  // 0x01E1 (size: 0x1)
    double Timer;                                                                     // 0x01E8 (size: 0x8)
    double RandomMoveTime;                                                            // 0x01F0 (size: 0x8)
    double SideMoveTime;                                                              // 0x01F8 (size: 0x8)
    double Const_NearOffset;                                                          // 0x0200 (size: 0x8)
    bool PreSideMove;                                                                 // 0x0208 (size: 0x1)

    void SwitchTickState();
    void AddAllState();
    void IsInMeleeAttackRange(bool& InRange);
    void AddTimer(double& CurrentTime);
    void IsNear_FarRange(double Offset, bool& Near);
    void IsNear_NearRange(double Offset, bool& Near);
    void Change_NextState(TEnumAsByte<EPal_NPC_CombatGunState::Type> Next);
    void Add Gun Combat State(TEnumAsByte<EPal_NPC_CombatGunState::Type> GunState);
    void ActionStart(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionPause(class APawn* ControlledPawn);
    void ActionResume(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ExecuteUbergraph_BP_AIAction_NPC_Combat_Gun(int32 EntryPoint);
}; // Size: 0x209

#endif
