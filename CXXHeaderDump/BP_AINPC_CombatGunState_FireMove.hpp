#ifndef UE4SS_SDK_BP_AINPC_CombatGunState_FireMove_HPP
#define UE4SS_SDK_BP_AINPC_CombatGunState_FireMove_HPP

class UBP_AINPC_CombatGunState_FireMove_C : public UBP_AINPC_CombatGunState_AimMove_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0058 (size: 0x8)
    double Timer;                                                                     // 0x0060 (size: 0x8)
    int32 ShootCount;                                                                 // 0x0068 (size: 0x4)
    double Interval;                                                                  // 0x0070 (size: 0x8)
    double ShootAbleTimer;                                                            // 0x0078 (size: 0x8)
    double Temp_DeltaTime;                                                            // 0x0080 (size: 0x8)

    void AddShootTimer();
    void StateEnter();
    void StateTick(float DeltaTime);
    void ExecuteUbergraph_BP_AINPC_CombatGunState_FireMove(int32 EntryPoint);
}; // Size: 0x88

#endif
