#ifndef UE4SS_SDK_BP_AINPC_CombatGunState_FireMove_Shotgun_HPP
#define UE4SS_SDK_BP_AINPC_CombatGunState_FireMove_Shotgun_HPP

class UBP_AINPC_CombatGunState_FireMove_Shotgun_C : public UBP_AINPC_CombatGunState_FireMove_C
{

    void CanMove(bool& CanMove);
    void MoveDIrectionWorldSpace(FVector& Direction);
}; // Size: 0x88

#endif
