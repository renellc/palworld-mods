#ifndef UE4SS_SDK_WBP_CharaCre_ColorSelect_Free_HPP
#define UE4SS_SDK_WBP_CharaCre_ColorSelect_Free_HPP

class UWBP_CharaCre_ColorSelect_Free_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UAnalogSlider* AnalogSlider_H;                                              // 0x0280 (size: 0x8)
    class UAnalogSlider* AnalogSlider_S;                                              // 0x0288 (size: 0x8)
    class UAnalogSlider* AnalogSlider_V;                                              // 0x0290 (size: 0x8)
    class UCanvasPanel* Canvas_H;                                                     // 0x0298 (size: 0x8)
    class UCanvasPanel* Canvas_S;                                                     // 0x02A0 (size: 0x8)
    class UCanvasPanel* Canvas_V;                                                     // 0x02A8 (size: 0x8)
    class UImage* Image;                                                              // 0x02B0 (size: 0x8)
    class UImage* Image_1;                                                            // 0x02B8 (size: 0x8)
    class UImage* Image_293;                                                          // 0x02C0 (size: 0x8)
    class UWBP_CharaCre_ColorSelect_sq_C* WBP_CharaCre_ColorSelect_sq_Custom;         // 0x02C8 (size: 0x8)
    class UWBP_CharaCre_SliderBase_C* WBP_CharaCre_SliderBase_H;                      // 0x02D0 (size: 0x8)
    class UWBP_CharaCre_SliderBase_C* WBP_CharaCre_SliderBase_S;                      // 0x02D8 (size: 0x8)
    class UWBP_CharaCre_SliderBase_C* WBP_CharaCre_SliderBase_V;                      // 0x02E0 (size: 0x8)
    class UMaterialInstanceDynamic* SGradientMaterial;                                // 0x02E8 (size: 0x8)
    class UMaterialInstanceDynamic* VGradientMaterial;                                // 0x02F0 (size: 0x8)
    FWBP_CharaCre_ColorSelect_Free_COnColorChanged OnColorChanged;                    // 0x02F8 (size: 0x10)
    void OnColorChanged(FLinearColor HSV);
    FWBP_CharaCre_ColorSelect_Free_COnNotifyCustomColorClicked OnNotifyCustomColorClicked; // 0x0308 (size: 0x10)
    void OnNotifyCustomColorClicked();

    void Set Enable Slider(bool IsEnable);
    void SetColorForce(FLinearColor NewColor);
    void SetColor(FLinearColor NewColor);
    void ApplyColorSetting(bool IsTriggerEvent);
    void Construct();
    void OnInitialized();
    void BndEvt__WBP_CharaCre_ColorSelect_Free_AnalogSlider_H_K2Node_ComponentBoundEvent_0_OnFloatValueChangedEvent__DelegateSignature(float Value);
    void BndEvt__WBP_CharaCre_ColorSelect_Free_AnalogSlider_V_K2Node_ComponentBoundEvent_1_OnFloatValueChangedEvent__DelegateSignature(float Value);
    void BndEvt__WBP_CharaCre_ColorSelect_Free_AnalogSlider_S_K2Node_ComponentBoundEvent_2_OnFloatValueChangedEvent__DelegateSignature(float Value);
    void BndEvt__WBP_CharaCre_ColorSelect_Free_WBP_CharaCre_ColorSelect_sq_Custom_K2Node_ComponentBoundEvent_3_OnClicked__DelegateSignature(class UWBP_CharaCre_ColorSelect_sq_C* Widget);
    void ExecuteUbergraph_WBP_CharaCre_ColorSelect_Free(int32 EntryPoint);
    void OnNotifyCustomColorClicked__DelegateSignature();
    void OnColorChanged__DelegateSignature(FLinearColor HSV);
}; // Size: 0x318

#endif
