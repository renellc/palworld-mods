#ifndef UE4SS_SDK_WBP_CharaCre_ColorSelect_sq_HPP
#define UE4SS_SDK_WBP_CharaCre_ColorSelect_sq_HPP

class UWBP_CharaCre_ColorSelect_sq_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_NormalToFocus;                                        // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_Push;                                                 // 0x0288 (size: 0x8)
    class UWidgetAnimation* Anm_Focus;                                                // 0x0290 (size: 0x8)
    class UWidgetAnimation* Anm_Normal;                                               // 0x0298 (size: 0x8)
    class UCanvasPanel* Canvas_Select;                                                // 0x02A0 (size: 0x8)
    class UImage* ColorSelect_Square;                                                 // 0x02A8 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton;                          // 0x02B0 (size: 0x8)
    FWBP_CharaCre_ColorSelect_sq_COnClicked OnClicked;                                // 0x02B8 (size: 0x10)
    void OnClicked(class UWBP_CharaCre_ColorSelect_sq_C* Widget);
    FLinearColor BindedColor;                                                         // 0x02C8 (size: 0x10)

    void GetBindedColor(FLinearColor& Color);
    void SetColor(FLinearColor NewColor);
    void AnmEvent_Normal();
    void AnmEvent_Focus();
    void AnmEvent_Push();
    void AnmEvent_Unselect();
    void BndEvt__WBP_CharaCre_ColorSelect_sq_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_CharaCre_ColorSelect_sq_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_CharaCre_ColorSelect_sq_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_5_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ExecuteUbergraph_WBP_CharaCre_ColorSelect_sq(int32 EntryPoint);
    void OnClicked__DelegateSignature(class UWBP_CharaCre_ColorSelect_sq_C* Widget);
}; // Size: 0x2D8

#endif
