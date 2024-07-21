#ifndef UE4SS_SDK_BP_AIActionRideCall_HPP
#define UE4SS_SDK_BP_AIActionRideCall_HPP

class UBP_AIActionRideCall_C : public UBP_AIAction_CallBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0178 (size: 0x8)
    double NotifyTimer;                                                               // 0x0180 (size: 0x8)
    double Const_NotifyInterval;                                                      // 0x0188 (size: 0x8)

    void CheckWallRaycast(bool& HitWall);
    void CanRide(bool& CanRide);
    void DoRide(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ExecuteUbergraph_BP_AIActionRideCall(int32 EntryPoint);
}; // Size: 0x190

#endif
