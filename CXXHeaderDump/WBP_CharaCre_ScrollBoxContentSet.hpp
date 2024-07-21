#ifndef UE4SS_SDK_WBP_CharaCre_ScrollBoxContentSet_HPP
#define UE4SS_SDK_WBP_CharaCre_ScrollBoxContentSet_HPP

class UWBP_CharaCre_ScrollBoxContentSet_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UCommonActivatableWidgetSwitcher* CommonActivatableWidgetSwitcher_27;       // 0x0280 (size: 0x8)
    class UWBP_CharaCre_ScrollBoxContent_Body_C* WBP_CharaCre_ScrollBoxContent_Body;  // 0x0288 (size: 0x8)
    class UWBP_CharaCre_ScrollBoxContent_Face_C* WBP_CharaCre_ScrollBoxContent_Face;  // 0x0290 (size: 0x8)
    class UWBP_CharaCre_ScrollBoxContent_Hair_C* WBP_CharaCre_ScrollBoxContent_Hair;  // 0x0298 (size: 0x8)
    class UWBP_CharaCre_ScrollBoxContent_Preset_C* WBP_CharaCre_ScrollBoxContent_Preset; // 0x02A0 (size: 0x8)
    class UWBP_CharaCre_ScrollBoxContent_Voice_C* WBP_CharaCre_ScrollBoxContent_Voice; // 0x02A8 (size: 0x8)
    FWBP_CharaCre_ScrollBoxContentSet_COnNotifyOpenSelectColorWindow OnNotifyOpenSelectColorWindow; // 0x02B0 (size: 0x10)
    void OnNotifyOpenSelectColorWindow();
    FWBP_CharaCre_ScrollBoxContentSet_COnNotifyCloseColorSelectWindow OnNotifyCloseColorSelectWindow; // 0x02C0 (size: 0x10)
    void OnNotifyCloseColorSelectWindow();

    void GetSelectedEyeHSV(FLinearColor& HSV);
    void GetRestoreFocusTarget(TEnumAsByte<E_UICharacterMakeCategory::Type> CategoryType, class UWidget*& Widget);
    void ApplyMakeInfo(FPalPlayerDataCharacterMakeInfo MakeInfo);
    void GetWidgetByCategory(TEnumAsByte<E_UICharacterMakeCategory::Type> TargetCategory, class UWBP_CharaCre_ScrollBoxContentBase_C*& Widget);
    void GetTopFocusTarget(TEnumAsByte<E_UICharacterMakeCategory::Type> NewCategory, class UWidget*& Widget);
    void ChangeMakeCategory(TEnumAsByte<E_UICharacterMakeCategory::Type> NewCategory);
    void BndEvt__WBP_CharaCre_ScrollBoxContentSet_WBP_CharaCre_ScrollBoxContent_Body_K2Node_ComponentBoundEvent_0_OnNotifyOpenSelectColorWindow__DelegateSignature();
    void BndEvt__WBP_CharaCre_ScrollBoxContentSet_WBP_CharaCre_ScrollBoxContent_Body_K2Node_ComponentBoundEvent_1_OnNotifyCloseSelectColorWindow__DelegateSignature();
    void BndEvt__WBP_CharaCre_ScrollBoxContentSet_WBP_CharaCre_ScrollBoxContent_Face_K2Node_ComponentBoundEvent_2_OnNotifyOpenSelectColorWindow__DelegateSignature();
    void BndEvt__WBP_CharaCre_ScrollBoxContentSet_WBP_CharaCre_ScrollBoxContent_Face_K2Node_ComponentBoundEvent_3_OnNotifyCloseSelectColorWindow__DelegateSignature();
    void BndEvt__WBP_CharaCre_ScrollBoxContentSet_WBP_CharaCre_ScrollBoxContent_Hair_K2Node_ComponentBoundEvent_4_OnNotifyOpenSelectColorWindow__DelegateSignature();
    void BndEvt__WBP_CharaCre_ScrollBoxContentSet_WBP_CharaCre_ScrollBoxContent_Hair_K2Node_ComponentBoundEvent_5_OnNotifyCloseSelectColorWindow__DelegateSignature();
    void ExecuteUbergraph_WBP_CharaCre_ScrollBoxContentSet(int32 EntryPoint);
    void OnNotifyCloseColorSelectWindow__DelegateSignature();
    void OnNotifyOpenSelectColorWindow__DelegateSignature();
}; // Size: 0x2D0

#endif
