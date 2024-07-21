#ifndef UE4SS_SDK_BP_ActionReaction_ElectricShock_HPP
#define UE4SS_SDK_BP_ActionReaction_ElectricShock_HPP

class UBP_ActionReaction_ElectricShock_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    double SelfTimer;                                                                 // 0x0148 (size: 0x8)
    class UCurveFloat* Curve_Right;                                                   // 0x0150 (size: 0x8)
    double DefaultMeshPosZ;                                                           // 0x0158 (size: 0x8)
    bool VibEnd;                                                                      // 0x0160 (size: 0x1)
    bool ExistFacialNotify;                                                           // 0x0161 (size: 0x1)
    TMap<EPalSizeType, double> Const_VibGainMap;                                      // 0x0168 (size: 0x50)

    void ResetMeshLocation();
    void ChangeFacial(EPalFacialEyeType Eye);
    void FindMontage(class UAnimMontage*& NewParam);
    void SetDisable(bool Disable);
    void UpdateMeshLocation();
    void OnBeginAction();
    void OnEndAction();
    void TickAction(float DeltaTime);
    void ExecuteUbergraph_BP_ActionReaction_ElectricShock(int32 EntryPoint);
}; // Size: 0x1B8

#endif
