#ifndef UE4SS_SDK_BP_VisualEffect_PalBattleOutline_HPP
#define UE4SS_SDK_BP_VisualEffect_PalBattleOutline_HPP

class UBP_VisualEffect_PalBattleOutline_C : public UPalVisualEffectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0070 (size: 0x8)
    double Alpha;                                                                     // 0x0078 (size: 0x8)
    double Fade Speed;                                                                // 0x0080 (size: 0x8)
    class UMaterialInstanceDynamic* Material;                                         // 0x0088 (size: 0x8)
    bool IsFadeInComplete;                                                            // 0x0090 (size: 0x1)

    void SetFadeAlpha(double Alpha);
    void OnBeginVisualEffect();
    void TickVisualEffect(float DeltaTime);
    void OnEndVisualEffect();
    void TerminatingTickVisualEffect(float DeltaTime);
    void OnBreakVisualEffect(bool bByConflict);
    void ExecuteUbergraph_BP_VisualEffect_PalBattleOutline(int32 EntryPoint);
}; // Size: 0x91

#endif
