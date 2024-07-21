#ifndef UE4SS_SDK_WBP_PalDamageText_HPP
#define UE4SS_SDK_WBP_PalDamageText_HPP

class UWBP_PalDamageText_C : public UPalUIDamageTextBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0440 (size: 0x8)
    class UWidgetAnimation* Out;                                                      // 0x0448 (size: 0x8)
    class UWidgetAnimation* In_Resist_0;                                              // 0x0450 (size: 0x8)
    class UWidgetAnimation* In_Weak_1;                                                // 0x0458 (size: 0x8)
    class UWidgetAnimation* In_Weak_0;                                                // 0x0460 (size: 0x8)
    class UWidgetAnimation* In;                                                       // 0x0468 (size: 0x8)
    class UImage* Image_CriticalEff;                                                  // 0x0470 (size: 0x8)
    class UOverlay* Overlay_5;                                                        // 0x0478 (size: 0x8)
    class UBP_PalTextBlock_C* Text_DamageValue;                                       // 0x0480 (size: 0x8)
    int32 totalDamage;                                                                // 0x0488 (size: 0x4)
    double animeSpeedScale;                                                           // 0x0490 (size: 0x8)
    EPalDamageTextType textType;                                                      // 0x0498 (size: 0x1)
    double interpolationLength;                                                       // 0x04A0 (size: 0x8)
    FVector2D OffsetPosition;                                                         // 0x04A8 (size: 0x10)
    FVector2D randomizeOffset;                                                        // 0x04B8 (size: 0x10)

    void GetPadding(double& Padding);
    void SetDamageTextType(EPalDamageTextType textType);
    void UpdatePosition(const FVector& targetWorldLocation);
    void SetDamageColor(const FSlateColor& inColor);
    void SetDamageValue(int32 InValue);
    void Finished_450E32A44BB84A7C14A5248BD3F03F85();
    void OnRequestClose();
    void OnInitialized();
    void ExecuteUbergraph_WBP_PalDamageText(int32 EntryPoint);
}; // Size: 0x4C8

#endif
