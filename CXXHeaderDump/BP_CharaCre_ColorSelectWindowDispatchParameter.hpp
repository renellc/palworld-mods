#ifndef UE4SS_SDK_BP_CharaCre_ColorSelectWindowDispatchParameter_HPP
#define UE4SS_SDK_BP_CharaCre_ColorSelectWindowDispatchParameter_HPP

class UBP_CharaCre_ColorSelectWindowDispatchParameter_C : public UPalHUDDispatchParameterBase
{
    FLinearColor SelectedColor;                                                       // 0x0038 (size: 0x10)
    TArray<FLinearColor> PresetColorArray;                                            // 0x0048 (size: 0x10)
    FLinearColor DefaultColor;                                                        // 0x0058 (size: 0x10)
    FBP_CharaCre_ColorSelectWindowDispatchParameter_COnChangedColor OnChangedColor;   // 0x0068 (size: 0x10)
    void OnChangedColor(FLinearColor Color);
    class UWidget* RelativePositionWidget;                                            // 0x0078 (size: 0x8)

    void OnChangedColor__DelegateSignature(FLinearColor Color);
}; // Size: 0x80

#endif
