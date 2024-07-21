#ifndef UE4SS_SDK_WBP_Chara_Cre_PartsSizeSlider_HPP
#define UE4SS_SDK_WBP_Chara_Cre_PartsSizeSlider_HPP

class UWBP_Chara_Cre_PartsSizeSlider_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UAnalogSlider* AnalogSlider_Main;                                           // 0x0280 (size: 0x8)
    class UImage* Base;                                                               // 0x0288 (size: 0x8)
    class UProgressBar* ProgressBar_305;                                              // 0x0290 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Slider;                                            // 0x0298 (size: 0x8)
    class UBP_PalTextBlock_C* Text_SliderNum;                                         // 0x02A0 (size: 0x8)
    FWBP_Chara_Cre_PartsSizeSlider_COnChangedValue OnChangedValue;                    // 0x02A8 (size: 0x10)
    void OnChangedValue(double Value);
    double MinValue;                                                                  // 0x02B8 (size: 0x8)
    double MaxValue;                                                                  // 0x02C0 (size: 0x8)
    FDataTableRowHandle TitleMsgID;                                                   // 0x02C8 (size: 0x10)

    void SetValueForce(double Size);
    void Construct();
    void BndEvt__WBP_Chara_Cre_SizeSlider_AnalogSlider_Main_K2Node_ComponentBoundEvent_0_OnFloatValueChangedEvent__DelegateSignature(float Value);
    void OnInitialized();
    void BndEvt__WBP_Chara_Cre_PartsSizeSlider_AnalogSlider_Main_K2Node_ComponentBoundEvent_1_OnMouseCaptureBeginEvent__DelegateSignature();
    void BndEvt__WBP_Chara_Cre_PartsSizeSlider_AnalogSlider_Main_K2Node_ComponentBoundEvent_2_OnMouseCaptureEndEvent__DelegateSignature();
    void ExecuteUbergraph_WBP_Chara_Cre_PartsSizeSlider(int32 EntryPoint);
    void OnChangedValue__DelegateSignature(double Value);
}; // Size: 0x2D8

#endif
