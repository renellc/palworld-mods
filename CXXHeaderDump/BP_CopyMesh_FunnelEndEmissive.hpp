#ifndef UE4SS_SDK_BP_CopyMesh_FunnelEndEmissive_HPP
#define UE4SS_SDK_BP_CopyMesh_FunnelEndEmissive_HPP

class ABP_CopyMesh_FunnelEndEmissive_C : public APalCopyMeshVisualEffect
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x02A0 (size: 0x8)
    bool IsEnd;                                                                       // 0x02A8 (size: 0x1)
    double DissolveTime;                                                              // 0x02B0 (size: 0x8)
    double EmissionTimer;                                                             // 0x02B8 (size: 0x8)
    double CurrentEmission;                                                           // 0x02C0 (size: 0x8)
    double EmissionMax;                                                               // 0x02C8 (size: 0x8)
    double EmissionTime;                                                              // 0x02D0 (size: 0x8)
    double DissolveTimer;                                                             // 0x02D8 (size: 0x8)
    double DissolveStartTime;                                                         // 0x02E0 (size: 0x8)
    double CurrentDissolve;                                                           // 0x02E8 (size: 0x8)
    double NSStartTime;                                                               // 0x02F0 (size: 0x8)
    bool IsEndVisualEffect;                                                           // 0x02F8 (size: 0x1)

    void PlayPalReturnSound();
    void SetFade(double Value);
    void SetEmission(double Value);
    void ReceiveBeginPlay();
    void End();
    void ReceiveTick(float DeltaSeconds);
    void ExecuteUbergraph_BP_CopyMesh_FunnelEndEmissive(int32 EntryPoint);
}; // Size: 0x2F9

#endif
