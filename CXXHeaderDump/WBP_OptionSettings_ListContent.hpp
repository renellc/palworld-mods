#ifndef UE4SS_SDK_WBP_OptionSettings_ListContent_HPP
#define UE4SS_SDK_WBP_OptionSettings_ListContent_HPP

class UWBP_OptionSettings_ListContent_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Anm_NormalToFocus;                                        // 0x0410 (size: 0x8)
    class UImage* Base;                                                               // 0x0418 (size: 0x8)
    class UImage* Base_Focus;                                                         // 0x0420 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_Name;                                   // 0x0428 (size: 0x8)
    class UWBP_PalInvisibleButton_C* Button;                                          // 0x0430 (size: 0x8)
    class UCanvasPanel* CanvasPanel_0;                                                // 0x0438 (size: 0x8)
    class UWBP_OptionSettings_ClickableButton_C* WBP_OptionSettings_ClickableButton;  // 0x0440 (size: 0x8)
    class UWBP_OptionSettings_ListContentButton_C* WBP_OptionSettings_ListContentButton; // 0x0448 (size: 0x8)
    class UWBP_OptionSettings_ListContentLR_C* WBP_OptionSettings_ListContentLR;      // 0x0450 (size: 0x8)
    class UWBP_OptionSettings_ListContentSlider_C* WBP_OptionSettings_ListContentSlider; // 0x0458 (size: 0x8)
    class UWBP_OptionSettings_ListContentSwitch_C* WBP_OptionSettings_ListContentSwitch; // 0x0460 (size: 0x8)
    FDataTableRowHandle SettingNameMsgId;                                             // 0x0468 (size: 0x10)
    TArray<FString> ScreenSelections;                                                 // 0x0478 (size: 0x10)
    int32 Current;                                                                    // 0x0488 (size: 0x4)
    FPalUIActionBindData BackAction;                                                  // 0x048C (size: 0x4)
    FPalUIActionBindData LeftPressed;                                                 // 0x0490 (size: 0x4)
    FPalUIActionBindData LeftReleased;                                                // 0x0494 (size: 0x4)
    FPalUIActionBindData RightPressed;                                                // 0x0498 (size: 0x4)
    FPalUIActionBindData RightReleased;                                               // 0x049C (size: 0x4)
    FName BackActionName;                                                             // 0x04A0 (size: 0x8)
    FName LeftActionName;                                                             // 0x04A8 (size: 0x8)
    FName RightActionName;                                                            // 0x04B0 (size: 0x8)
    bool Editing;                                                                     // 0x04B8 (size: 0x1)
    FTimerHandle SubtractTimer;                                                       // 0x04C0 (size: 0x8)
    FTimerHandle AddTimer;                                                            // 0x04C8 (size: 0x8)
    FLinearColor OriginalColor;                                                       // 0x04D0 (size: 0x10)
    double ChangePercent;                                                             // 0x04E0 (size: 0x8)
    bool BlockMouseClick;                                                             // 0x04E8 (size: 0x1)
    FWBP_OptionSettings_ListContent_COnKeyConfigClicked OnKeyConfigClicked;           // 0x04F0 (size: 0x10)
    void OnKeyConfigClicked(FName KeyName, ECommonInputType InputType, EPalKeyConfigAxisFilterType AxisType);
    FName ActionKeyName;                                                              // 0x0500 (size: 0x8)
    ECommonInputType Input Type;                                                      // 0x0508 (size: 0x1)
    EPalKeyConfigAxisFilterType Filter Type;                                          // 0x0509 (size: 0x1)

    void InputMethodChanged(ECommonInputType InputType);
    void Construct();
    void SetSelecter(const TArray<FDataTableRowHandle>& Selections, const int32 Current);
    void SetResolution(FIntPoint CurrentResolution, const TArray<FIntPoint>& Resolutions);
    void SetSwitcher(const bool CurrentOn);
    void SetSelecter_String(const TArray<FString>& Selections, const int32 Current);
    void SetSlider(double CurrentValue, double Min, double Max, double FixedChangeValue, bool UseFixedValue);
    void BackToList();
    void Gamepad_LeftPress();
    void Gamepad_RightPress();
    void Gamepad_LeftRelease();
    void SubtractValue();
    void addValue();
    void Gamepad_RightRelease();
    void SetClickableButton();
    void SetConfigButton(FName ActionName, ECommonInputType InputType, EPalKeyConfigAxisFilterType FilterType);
    void SetKeyIcon(FKey Key, ECommonInputType InputType);
    void SetKeyWarning(bool EnableWarning);
    void SetInteractable(bool CanInteract);
    void BndEvt__WBP_OptionSettings_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_OptionSettings_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_OptionSettings_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_5_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void SetUIConfigButton(FName UIActionName, ECommonInputType InputType, const FKey Key);
    void SetMsgId(FDataTableRowHandle rowHandle);
    void Destruct();
    void ExecuteUbergraph_WBP_OptionSettings_ListContent(int32 EntryPoint);
    void OnKeyConfigClicked__DelegateSignature(FName KeyName, ECommonInputType InputType, EPalKeyConfigAxisFilterType AxisType);
}; // Size: 0x50A

#endif
