#ifndef UE4SS_SDK_BP_PalIncidentCamera_HPP
#define UE4SS_SDK_BP_PalIncidentCamera_HPP

class ABP_PalIncidentCamera_C : public AActor
{
    class UCameraComponent* Camera;                                                   // 0x0290 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x0298 (size: 0x8)
    FTransform StartTransform;                                                        // 0x02A0 (size: 0x60)
    FTransform TargetTransform;                                                       // 0x0300 (size: 0x60)
    double interpolSec;                                                               // 0x0360 (size: 0x8)
    double ElapsedTime;                                                               // 0x0368 (size: 0x8)

    void SetCameraTransform(FTransform Transform);
}; // Size: 0x370

#endif
