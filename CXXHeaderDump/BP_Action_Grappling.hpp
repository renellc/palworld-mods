#ifndef UE4SS_SDK_BP_Action_Grappling_HPP
#define UE4SS_SDK_BP_Action_Grappling_HPP

class UBP_Action_Grappling_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    double MoveSpeed;                                                                 // 0x0148 (size: 0x8)
    FName flagName;                                                                   // 0x0150 (size: 0x8)
    bool IsClimb;                                                                     // 0x0158 (size: 0x1)
    double JumpPower;                                                                 // 0x0160 (size: 0x8)
    bool IsEndCompleted;                                                              // 0x0168 (size: 0x1)
    FQuat MeshRotationCache;                                                          // 0x0170 (size: 0x20)
    FVector MeshLocationCache;                                                        // 0x0190 (size: 0x18)

    void TryClimb();
    void GetOffRide();
    void UpdateMeshRotation(float DeltaTime);
    void SetPlayerVelocity(FVector Velocity);
    void NotifyStartToWeapon(FVector HitLocation, double CoolTimeRate);
    void NotifyFinishToWeapon();
    void DisableShooter(bool Disable);
    void OnNotifyEnd_6CB4C09840328B4E3D8F4680A0904209(FName NotifyName);
    void OnNotifyBegin_6CB4C09840328B4E3D8F4680A0904209(FName NotifyName);
    void OnInterrupted_6CB4C09840328B4E3D8F4680A0904209(FName NotifyName);
    void OnBlendOut_6CB4C09840328B4E3D8F4680A0904209(FName NotifyName);
    void OnCompleted_6CB4C09840328B4E3D8F4680A0904209(FName NotifyName);
    void OnBreakAction();
    void TickAction(float DeltaTime);
    void OnEndAction();
    void OnBeginAction();
    void ExecuteUbergraph_BP_Action_Grappling(int32 EntryPoint);
}; // Size: 0x1A8

#endif
