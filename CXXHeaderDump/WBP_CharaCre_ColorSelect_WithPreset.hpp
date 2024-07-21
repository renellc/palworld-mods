#ifndef UE4SS_SDK_WBP_CharaCre_ColorSelect_WithPreset_HPP
#define UE4SS_SDK_WBP_CharaCre_ColorSelect_WithPreset_HPP

class UWBP_CharaCre_ColorSelect_WithPreset_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UImage* Dot_0;                                                              // 0x0280 (size: 0x8)
    class UImage* Dot_1;                                                              // 0x0288 (size: 0x8)
    class UImage* Dot_2;                                                              // 0x0290 (size: 0x8)
    class UImage* Dot_3;                                                              // 0x0298 (size: 0x8)
    class UImage* Line0;                                                              // 0x02A0 (size: 0x8)
    class UImage* Line0_1;                                                            // 0x02A8 (size: 0x8)
    class UNamedSlot* NamedSlot_91;                                                   // 0x02B0 (size: 0x8)
    class UUniformGridPanel* UniformGridPanel_37;                                     // 0x02B8 (size: 0x8)
    class UWBP_CharaCre_ColorSelect_Free_C* WBP_CharaCre_ColorSelect_Free_1;          // 0x02C0 (size: 0x8)
    class UWBP_CharaCre_ColorSelect_sq_C* WBP_CharaCre_ColorSelect_sq;                // 0x02C8 (size: 0x8)
    class UImage* WinBase;                                                            // 0x02D0 (size: 0x8)
    FWBP_CharaCre_ColorSelect_WithPreset_COnColorChanged OnColorChanged;              // 0x02D8 (size: 0x10)
    void OnColorChanged(FLinearColor HSV);
    int32 RowNum;                                                                     // 0x02E8 (size: 0x4)
    class UWBP_CharaCre_ColorSelect_sq_C* LastClickedButton;                          // 0x02F0 (size: 0x8)

    void GetTopFocusTarget(class UWidget*& Widget);
    void SetColor(FLinearColor NewColor);
    class UWidget* CustomNavi_PresetToCustomColor(EUINavigation Navigation);
    void SetColorForce(FLinearColor NewColor);
    void OnClickedPreset(class UWBP_CharaCre_ColorSelect_sq_C* Widget);
    void Setup(TArray<FLinearColor>& PresetColors);
    void BndEvt__WBP_CharaCre_ColorSelect_WithPreset_WBP_CharaCre_ColorSelect_Free_1_K2Node_ComponentBoundEvent_1_OnColorChanged__DelegateSignature(FLinearColor HSV);
    void BndEvt__WBP_CharaCre_ColorSelect_WithPreset_WBP_CharaCre_ColorSelect_Free_1_K2Node_ComponentBoundEvent_0_OnNotifyCustomColorClicked__DelegateSignature();
    void ExecuteUbergraph_WBP_CharaCre_ColorSelect_WithPreset(int32 EntryPoint);
    void OnColorChanged__DelegateSignature(FLinearColor HSV);
}; // Size: 0x2F8

#endif
