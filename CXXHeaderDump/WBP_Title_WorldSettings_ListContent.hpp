#ifndef UE4SS_SDK_WBP_Title_WorldSettings_ListContent_HPP
#define UE4SS_SDK_WBP_Title_WorldSettings_ListContent_HPP

class UWBP_Title_WorldSettings_ListContent_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Anm_TextEditOnToOff;                                      // 0x0410 (size: 0x8)
    class UWidgetAnimation* Anm_DisableToEnable;                                      // 0x0418 (size: 0x8)
    class UWidgetAnimation* Anm_NormalToFocus;                                        // 0x0420 (size: 0x8)
    class UCanvasPanel* Canvas_TextEdit;                                              // 0x0428 (size: 0x8)
    class UEditableTextBox* EditableTextBox_46;                                       // 0x0430 (size: 0x8)
    class UImage* Image_Caution;                                                      // 0x0438 (size: 0x8)
    class UBP_PalTextBlock_C* Text_OptionTitle;                                       // 0x0440 (size: 0x8)
    class UWBP_OptionSettings_ListContentLR_C* WBP_OptionSettings_ListContentLR;      // 0x0448 (size: 0x8)
    class UWBP_OptionSettings_ListContentSlider_C* WBP_OptionSettings_ListContentSlider; // 0x0450 (size: 0x8)
    class UWBP_OptionSettings_ListContentSwitch_C* WBP_OptionSettings_ListContentSwitch; // 0x0458 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton;                          // 0x0460 (size: 0x8)
    class UWBP_Title_WorldSettings_ListButton_C* WBP_Title_WorldSettings_ListButton;  // 0x0468 (size: 0x8)
    TEnumAsByte<E_PalTitleWorldSettingOptionType::Type> OptionType;                   // 0x0470 (size: 0x1)
    FDataTableRowHandle TitleMsgID;                                                   // 0x0478 (size: 0x10)
    FWBP_Title_WorldSettings_ListContent_COnSwitchChanged OnSwitchChanged;            // 0x0488 (size: 0x10)
    void OnSwitchChanged(bool IsOn);
    FWBP_Title_WorldSettings_ListContent_COnComittedText OnComittedText;              // 0x0498 (size: 0x10)
    void OnComittedText(FString NewString);
    int32 InputTextMaxLen;                                                            // 0x04A8 (size: 0x4)
    FWBP_Title_WorldSettings_ListContent_COnChangedSelectIndex OnChangedSelectIndex;  // 0x04B0 (size: 0x10)
    void OnChangedSelectIndex(int32 newIndex);
    FDataTableRowHandle ButtonMsgID;                                                  // 0x04C0 (size: 0x10)
    FWBP_Title_WorldSettings_ListContent_COnClickedSettingButton OnClickedSettingButton; // 0x04D0 (size: 0x10)
    void OnClickedSettingButton();
    FWBP_Title_WorldSettings_ListContent_COnChangedValue OnChangedValue;              // 0x04E0 (size: 0x10)
    void OnChangedValue(double NewValue);
    bool NowEnabled;                                                                  // 0x04F0 (size: 0x1)
    bool IsOverrideSliderStep;                                                        // 0x04F1 (size: 0x1)
    double OverrideSliderStepValue;                                                   // 0x04F8 (size: 0x8)

    void GetButtonText(FText& Text);
    void SetButtonText(FText Text);
    void Set Name Select Index(int32 Index);
    void GetSelectNameIndex(int32& NowIndex);
    void SetupFloatValue(double NowValue, double MinValue, double MaxValue);
    void SetupIntValue(int32 Value, int32 Min, int32 Max);
    void SetEnableCautionMark(bool IsEnableMark);
    void GetInputText(FString& InputTextString);
    void IsEditingText(bool& IsEditing);
    void IsOn(bool& IsOn);
    void SetupSelectString(TArray<FString>& SelectStrings, int32 DefaultSelectIndex);
    void SetupTextInput(FString DefaultString);
    void OnClickedInternal();
    class UWidget* CustomNavi_ToRight(EUINavigation Navigation);
    class UWidget* CustomNavi_ToLeft(EUINavigation Navigation);
    void SetupOnOff(bool IsOn);
    void InitializeInternal();
    void AnmEvent_SetEnableBuutton(bool isEnableButton);
    void Construct();
    void BndEvt__WBP_Title_WorldSettings_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_Title_WorldSettings_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_Title_WorldSettings_ListContent_WBP_OptionSettings_ListContentSwitch_K2Node_ComponentBoundEvent_3_OnSwitcherChanged__DelegateSignature(bool IsOn);
    void BndEvt__WBP_Title_WorldSettings_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_Title_WorldSettings_ListContent_EditableTextBox_46_K2Node_ComponentBoundEvent_1_OnEditableTextBoxCommittedEvent__DelegateSignature(const FText& Text, TEnumAsByte<ETextCommit::Type> CommitMethod);
    void BndEvt__WBP_Title_WorldSettings_ListContent_EditableTextBox_46_K2Node_ComponentBoundEvent_5_OnEditableTextBoxChangedEvent__DelegateSignature(const FText& Text);
    void BndEvt__WBP_Title_WorldSettings_ListContent_WBP_OptionSettings_ListContentLR_K2Node_ComponentBoundEvent_6_OnSelectionChanged__DelegateSignature(int32 Selection);
    void BndEvt__WBP_Title_WorldSettings_ListContent_WBP_Title_WorldSettings_ListButton_K2Node_ComponentBoundEvent_7_OnClicked__DelegateSignature();
    void BndEvt__WBP_Title_WorldSettings_ListContent_WBP_OptionSettings_ListContentSlider_K2Node_ComponentBoundEvent_8_OnValueChanged__DelegateSignature(double Value);
    void PreConstruct(bool IsDesignTime);
    void ExecuteUbergraph_WBP_Title_WorldSettings_ListContent(int32 EntryPoint);
    void OnChangedValue__DelegateSignature(double NewValue);
    void OnClickedSettingButton__DelegateSignature();
    void OnChangedSelectIndex__DelegateSignature(int32 newIndex);
    void OnComittedText__DelegateSignature(FString NewString);
    void OnSwitchChanged__DelegateSignature(bool IsOn);
}; // Size: 0x500

#endif
