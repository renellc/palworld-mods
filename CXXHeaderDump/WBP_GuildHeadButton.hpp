#ifndef UE4SS_SDK_WBP_GuildHeadButton_HPP
#define UE4SS_SDK_WBP_GuildHeadButton_HPP

class UWBP_GuildHeadButton_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_NormalToFocus;                                        // 0x0280 (size: 0x8)
    class UImage* FrameFlare;                                                         // 0x0288 (size: 0x8)
    class UCanvasPanel* LogHead;                                                      // 0x0290 (size: 0x8)
    class UPalComboBoxString* PalComboBoxString_15;                                   // 0x0298 (size: 0x8)
    class UImage* TabIconBase;                                                        // 0x02A0 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Center;                                            // 0x02A8 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton;                          // 0x02B0 (size: 0x8)
    FWBP_GuildHeadButton_COnSelected OnSelected;                                      // 0x02B8 (size: 0x10)
    void OnSelected(FString SelectedOption);
    FWBP_GuildHeadButton_COnClickedSingleButton OnClickedSingleButton;                // 0x02C8 (size: 0x10)
    void OnClickedSingleButton();
    FWBP_GuildHeadButton_COnOpenedDropDown OnOpenedDropDown;                          // 0x02D8 (size: 0x10)
    void OnOpenedDropDown();
    FWBP_GuildHeadButton_COnRemovedFocus OnRemovedFocus;                              // 0x02E8 (size: 0x10)
    void OnRemovedFocus();
    FWBP_GuildHeadButton_COnAddFocus OnAddFocus;                                      // 0x02F8 (size: 0x10)
    void OnAddFocus();

    void SetValue(FString Value);
    void SetupAsSingleButton(FText Text);
    void SetOptions(TArray<FString>& OptionStrings);
    void OnClickedComboBoxContent(class UWBP_GuildMemberMenuList_C* Button);
    class UWidget* OnGenerateWidget(FString Item);
    void OnInitialized();
    void BndEvt__WBP_GuildHeadButton_PalComboBoxString_15_K2Node_ComponentBoundEvent_0_OnSelectionChangedEvent__DelegateSignature(FString SelectedItem, TEnumAsByte<ESelectInfo::Type> SelectionType);
    void BndEvt__WBP_GuildHeadButton_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_GuildHeadButton_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_GuildHeadButton_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_3_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_GuildHeadButton_PalComboBoxString_15_K2Node_ComponentBoundEvent_4_OnOpeningEvent__DelegateSignature();
    void OnRemovedFromFocusPath(FFocusEvent InFocusEvent);
    void OnAddedToFocusPath(FFocusEvent InFocusEvent);
    void ExecuteUbergraph_WBP_GuildHeadButton(int32 EntryPoint);
    void OnAddFocus__DelegateSignature();
    void OnRemovedFocus__DelegateSignature();
    void OnOpenedDropDown__DelegateSignature();
    void OnClickedSingleButton__DelegateSignature();
    void OnSelected__DelegateSignature(FString SelectedOption);
}; // Size: 0x308

#endif
