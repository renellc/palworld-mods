#ifndef UE4SS_SDK_WBP_Ingame_Interact_HPP
#define UE4SS_SDK_WBP_Ingame_Interact_HPP

class UWBP_Ingame_Interact_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Press;                                                // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_Push_long_nogauge;                                    // 0x0288 (size: 0x8)
    class UWidgetAnimation* Anm_Push;                                                 // 0x0290 (size: 0x8)
    class UWidgetAnimation* Anm_Push_long_Arrow;                                      // 0x0298 (size: 0x8)
    class UWidgetAnimation* Anm_Push_long;                                            // 0x02A0 (size: 0x8)
    class UWidgetAnimation* Anm_Close;                                                // 0x02A8 (size: 0x8)
    class UWidgetAnimation* Anm_Open;                                                 // 0x02B0 (size: 0x8)
    class UBackgroundBlur* BackgroundBlur_117;                                        // 0x02B8 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_C_101;                                  // 0x02C0 (size: 0x8)
    class UCanvasPanel* CanvasPanel_btn;                                              // 0x02C8 (size: 0x8)
    class UImage* Image_BlockInteract;                                                // 0x02D0 (size: 0x8)
    class UImage* Interact_PushEff_00;                                                // 0x02D8 (size: 0x8)
    class UImage* Interact_PushEff_01;                                                // 0x02E0 (size: 0x8)
    class UImage* InteractArrow;                                                      // 0x02E8 (size: 0x8)
    class UImage* InteractBase;                                                       // 0x02F0 (size: 0x8)
    class UWBP_PalKeyGuideIcon_C* KeyGuide;                                           // 0x02F8 (size: 0x8)
    class URetainerBox* RetainerBox_111;                                              // 0x0300 (size: 0x8)
    TMap<class EPalInteractiveObjectActionType, class TSoftObjectPtr<UTexture2D>> IconMap; // 0x0308 (size: 0x50)
    double rightPadding;                                                              // 0x0358 (size: 0x8)
    TMap<class EPalInteractiveObjectActionType, class FDataTableRowHandle> actionInputMap; // 0x0360 (size: 0x50)

    void SetIsValidInteract(bool IsValidFlag);
    void SetVisibilityLongPushParts(ESlateVisibility NewVisibility);
    void SetPartsSize(class UWidget* TargetWidget, FVector2D InSize);
    void GetPartsSize(class UWidget* TargetWidget, FVector2D& Size);
    void FitImageSize();
    void SetInteractText(FText Text);
    void SetActionType(EPalInteractiveObjectActionType ActionType);
    void SetInteractable(bool IsInteractable);
    void AnmEvent_Open();
    void AnmEven_Press();
    void AnmEvent_Reset_ForClose();
    void AnmEvent_Close();
    void AnmEvernt_LongPush_withGauge(double Time);
    void AnmEvent_Button_Start(EPalInteractiveObjectButtonType buttonType, double Time);
    void AnmEvent_LongPush_WithoutGauge();
    void AnmEvent_Button_End(EPalInteractiveObjectButtonType buttonType);
    void AnmEvent_Reset_ForOpen();
    void ExecuteUbergraph_WBP_Ingame_Interact(int32 EntryPoint);
}; // Size: 0x3B0

#endif
