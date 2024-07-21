#ifndef UE4SS_SDK_WBP_Title_MenuButton_HPP
#define UE4SS_SDK_WBP_Title_MenuButton_HPP

class UWBP_Title_MenuButton_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Disable;                                              // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_Push;                                                 // 0x0288 (size: 0x8)
    class UWidgetAnimation* Anm_Focus;                                                // 0x0290 (size: 0x8)
    class UWidgetAnimation* Anm_Normal;                                               // 0x0298 (size: 0x8)
    class UImage* Base;                                                               // 0x02A0 (size: 0x8)
    class UImage* BaseLineB;                                                          // 0x02A8 (size: 0x8)
    class UImage* BaseLineT;                                                          // 0x02B0 (size: 0x8)
    class UImage* BaseSel;                                                            // 0x02B8 (size: 0x8)
    class UImage* Image_161;                                                          // 0x02C0 (size: 0x8)
    class UBP_PalTextBlock_C* Test_Content;                                           // 0x02C8 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton;                          // 0x02D0 (size: 0x8)
    FWBP_Title_MenuButton_COnClicked OnClicked;                                       // 0x02D8 (size: 0x10)
    void OnClicked();
    TEnumAsByte<E_PalUITitleMenuButtonType::Type> buttonType;                         // 0x02E8 (size: 0x1)
    TMap<TEnumAsByte<E_PalUITitleMenuButtonType::Type>, FDataTableRowHandle> MsgIDMap; // 0x02F0 (size: 0x50)

    void GetMenuType(TEnumAsByte<E_PalUITitleMenuButtonType::Type>& BindedMenuType);
    void BndEvt__WBP_Title_MenuButton_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_Title_MenuButton_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_Title_MenuButton_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void OnInitialized();
    void PreConstruct(bool IsDesignTime);
    void ExecuteUbergraph_WBP_Title_MenuButton(int32 EntryPoint);
    void OnClicked__DelegateSignature();
}; // Size: 0x340

#endif
