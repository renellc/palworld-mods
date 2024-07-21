#ifndef UE4SS_SDK_BP_VisualEffect_CameraMosaic_HPP
#define UE4SS_SDK_BP_VisualEffect_CameraMosaic_HPP

class UBP_VisualEffect_CameraMosaic_C : public UBP_VisualEffect_CameraBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00A8 (size: 0x8)
    double Weight Value;                                                              // 0x00B0 (size: 0x8)
    FName KeyName;                                                                    // 0x00B8 (size: 0x8)

    void Update Mosaic(double Weight Value);
    void CalcScreenBounds(FVector Origin, FVector Box Extents, class APlayerController* Player, FVector4& Rect);
    void UpdateEffectValue(double WeightValue);
    void OnBeginVisualEffect();
    void OnEndVisualEffect();
    void TickVisualEffect(float DeltaTime);
    void ExecuteUbergraph_BP_VisualEffect_CameraMosaic(int32 EntryPoint);
}; // Size: 0xC0

#endif
