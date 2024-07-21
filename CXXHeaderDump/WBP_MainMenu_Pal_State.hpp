#ifndef UE4SS_SDK_WBP_MainMenu_Pal_State_HPP
#define UE4SS_SDK_WBP_MainMenu_Pal_State_HPP

class UWBP_MainMenu_Pal_State_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_State_2;                                              // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_State_1;                                              // 0x0288 (size: 0x8)
    class UWidgetAnimation* Anm_State_0;                                              // 0x0290 (size: 0x8)
    class UCanvasPanel* MainCanvas;                                                   // 0x0298 (size: 0x8)
    class UBP_PalTextBlock_C* Text_StatusName;                                        // 0x02A0 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton;                          // 0x02A8 (size: 0x8)
    TArray<class UWidgetAnimation*> animationArray;                                   // 0x02B0 (size: 0x10)
    FWBP_MainMenu_Pal_State_COnHovered OnHovered;                                     // 0x02C0 (size: 0x10)
    void OnHovered(class UWBP_MainMenu_Pal_State_C* StateWidget);
    FWBP_MainMenu_Pal_State_COnUnhovered OnUnhovered;                                 // 0x02D0 (size: 0x10)
    void OnUnhovered(class UWBP_MainMenu_Pal_State_C* StateWidget);
    EPalUIConditionType CurrentCondition;                                             // 0x02E0 (size: 0x1)

    void Clear();
    void Set Condition(EPalUIConditionType displayCondition);
    void OnInitialized();
    void BndEvt__WBP_MainMenu_Pal_State_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_MainMenu_Pal_State_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ExecuteUbergraph_WBP_MainMenu_Pal_State(int32 EntryPoint);
    void OnUnhovered__DelegateSignature(class UWBP_MainMenu_Pal_State_C* StateWidget);
    void OnHovered__DelegateSignature(class UWBP_MainMenu_Pal_State_C* StateWidget);
}; // Size: 0x2E1

#endif
