#ifndef UE4SS_SDK_WBP_CharaCre_MenuButton_HPP
#define UE4SS_SDK_WBP_CharaCre_MenuButton_HPP

class UWBP_CharaCre_MenuButton_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_NormalToFocus;                                        // 0x0280 (size: 0x8)
    class UImage* Dot_0;                                                              // 0x0288 (size: 0x8)
    class UImage* Dot_1;                                                              // 0x0290 (size: 0x8)
    class UImage* Dot_2;                                                              // 0x0298 (size: 0x8)
    class UImage* Dot_3;                                                              // 0x02A0 (size: 0x8)
    class UImage* FocusFrame;                                                         // 0x02A8 (size: 0x8)
    class UImage* Frame;                                                              // 0x02B0 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Main;                                              // 0x02B8 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton;                          // 0x02C0 (size: 0x8)
    FWBP_CharaCre_MenuButton_COnClicked OnClicked;                                    // 0x02C8 (size: 0x10)
    void OnClicked(class UWBP_CharaCre_MenuButton_C* Button);
    TEnumAsByte<E_UICharacterMakeCategory::Type> BindCategory;                        // 0x02D8 (size: 0x1)
    TMap<TEnumAsByte<E_UICharacterMakeCategory::Type>, FDataTableRowHandle> MsgIDMap; // 0x02E0 (size: 0x50)

    void GetBindedCategory(TEnumAsByte<E_UICharacterMakeCategory::Type>& CategoryType);
    void AnmEvent_Select();
    void AnmEvent_Normal();
    void AnmEvent_Reset();
    void Construct();
    void OnInitialized();
    void BndEvt__WBP_CharaCre_MenuButton_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void Destruct();
    void ExecuteUbergraph_WBP_CharaCre_MenuButton(int32 EntryPoint);
    void OnClicked__DelegateSignature(class UWBP_CharaCre_MenuButton_C* Button);
}; // Size: 0x330

#endif
