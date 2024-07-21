#ifndef UE4SS_SDK_BP_SnapModeFX_HPP
#define UE4SS_SDK_BP_SnapModeFX_HPP

class ABP_SnapModeFX_C : public APalSnapModeFX
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class UStaticMeshComponent* SM_Laser;                                             // 0x0298 (size: 0x8)
    class UStaticMeshComponent* LaserRoot;                                            // 0x02A0 (size: 0x8)
    class UStaticMeshComponent* BoxEffect;                                            // 0x02A8 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02B0 (size: 0x8)
    double BoxDefaultSize;                                                            // 0x02B8 (size: 0x8)
    double LaserDefaultSize;                                                          // 0x02C0 (size: 0x8)
    double CenterSnapEffectOffsetZ;                                                   // 0x02C8 (size: 0x8)
    FVector OriginLineWorldScale;                                                     // 0x02D0 (size: 0x18)
    double DefaultLineScaleXY;                                                        // 0x02E8 (size: 0x8)
    bool IsSnapMode;                                                                  // 0x02F0 (size: 0x1)

    void Hide();
    void ShowCenterSnap(FVector Location, FRotator Rotation, FVector BoxExtent, FVector SnapStart, FVector SnapEnd, bool IsAttachWall);
    void ShowSnap(FVector Location, FRotator Rotation, FVector BoxExtent);
    void ReceiveBeginPlay();
    void ExecuteUbergraph_BP_SnapModeFX(int32 EntryPoint);
}; // Size: 0x2F1

#endif
