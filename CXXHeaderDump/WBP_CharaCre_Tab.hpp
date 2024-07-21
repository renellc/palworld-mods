#ifndef UE4SS_SDK_WBP_CharaCre_Tab_HPP
#define UE4SS_SDK_WBP_CharaCre_Tab_HPP

class UWBP_CharaCre_Tab_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Focus;                                                // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_Normal;                                               // 0x0288 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Title;                                             // 0x0290 (size: 0x8)
    class UWBP_PalCommonButton_C* WBP_PalCommonButton;                                // 0x0298 (size: 0x8)
    FWBP_CharaCre_Tab_COnClicked OnClicked;                                           // 0x02A0 (size: 0x10)
    void OnClicked(class UWBP_CharaCre_Tab_C* TabWidget);
    FDataTableRowHandle MsgId;                                                        // 0x02B0 (size: 0x10)
    TEnumAsByte<E_UICharacterMakeCategory::Type> BindCategoryType;                    // 0x02C0 (size: 0x1)

    void GetBindedCategory(TEnumAsByte<E_UICharacterMakeCategory::Type>& CategoryType);
    void AnmEvent_Normal();
    void AnmEvent_Focus();
    void OnInitialized();
    void BndEvt__WBP_CharaCre_Tab_WBP_PalCommonButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ExecuteUbergraph_WBP_CharaCre_Tab(int32 EntryPoint);
    void OnClicked__DelegateSignature(class UWBP_CharaCre_Tab_C* TabWidget);
}; // Size: 0x2C1

#endif
