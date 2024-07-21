#ifndef UE4SS_SDK_BP_AIActionCombatHeli_BattleMode_HPP
#define UE4SS_SDK_BP_AIActionCombatHeli_BattleMode_HPP

class UBP_AIActionCombatHeli_BattleMode_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    class AActor* CurrentTarget;                                                      // 0x0138 (size: 0x8)
    double Const_BattleDistance;                                                      // 0x0140 (size: 0x8)
    double Const_BattleHeight;                                                        // 0x0148 (size: 0x8)
    double Const_MinHeight;                                                           // 0x0150 (size: 0x8)
    double Const_SideMovePower;                                                       // 0x0158 (size: 0x8)
    class UBP_CombatHeliRpidWeaponComponent_FrontMG_C* GunComponent;                  // 0x0160 (size: 0x8)
    class UBP_CombatHeliRpidWeaponComponent_WingMiso_C* MisoComponent;                // 0x0168 (size: 0x8)
    bool IsBomberMode;                                                                // 0x0170 (size: 0x1)
    class UBP_CombatHeliRpidWeaponComponent_Bomber_C* BomberComponent;                // 0x0178 (size: 0x8)
    double MoveDirectionRight;                                                        // 0x0180 (size: 0x8)
    double tempDeltaTime;                                                             // 0x0188 (size: 0x8)

    void IsNearTarget2D(double Distance, bool& Near);
    void SetMoveVelocity();
    void RotateToTarget(double DeltaTime);
    void FindTarget(class AActor*& TargetActor);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionStart(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIActionCombatHeli_BattleMode(int32 EntryPoint);
}; // Size: 0x190

#endif
