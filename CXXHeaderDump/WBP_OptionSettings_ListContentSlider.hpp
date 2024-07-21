#ifndef UE4SS_SDK_WBP_OptionSettings_ListContentSlider_HPP
#define UE4SS_SDK_WBP_OptionSettings_ListContentSlider_HPP

class UWBP_OptionSettings_ListContentSlider_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_Value;                                  // 0x0280 (size: 0x8)
    class UProgressBar* ProgressBar;                                                  // 0x0288 (size: 0x8)
    class USlider* Slider;                                                            // 0x0290 (size: 0x8)
    double CurrentValue;                                                              // 0x0298 (size: 0x8)
    double Min;                                                                       // 0x02A0 (size: 0x8)
    double Max;                                                                       // 0x02A8 (size: 0x8)
    FWBP_OptionSettings_ListContentSlider_COnValueChanged OnValueChanged;             // 0x02B0 (size: 0x10)
    void OnValueChanged(double Value);
    bool IsIntegerMode;                                                               // 0x02C0 (size: 0x1)

    void PlayChangeValueSound();
    void SetValueInt(int32 Value, int32 Min, int32 Max);
    void BndEvt__WBP_OptionSettings_ListContentSlider_Slider_K2Node_ComponentBoundEvent_0_OnFloatValueChangedEvent__DelegateSignature(float Value);
    void SetValue(double Value, double Min, double Max);
    void AddPercent(double Percent);
    void AddConstantValue(double Value);
    void BndEvt__WBP_OptionSettings_ListContentSlider_Slider_K2Node_ComponentBoundEvent_1_OnMouseCaptureBeginEvent__DelegateSignature();
    void BndEvt__WBP_OptionSettings_ListContentSlider_Slider_K2Node_ComponentBoundEvent_2_OnMouseCaptureEndEvent__DelegateSignature();
    void ExecuteUbergraph_WBP_OptionSettings_ListContentSlider(int32 EntryPoint);
    void OnValueChanged__DelegateSignature(double Value);
}; // Size: 0x2C1

#endif
