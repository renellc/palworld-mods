#ifndef UE4SS_SDK_WBP_OptionSettingsOverLayWindow_HPP
#define UE4SS_SDK_WBP_OptionSettingsOverLayWindow_HPP

class UWBP_OptionSettingsOverLayWindow_C : public UPalUserWidgetOverlayUI
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0430 (size: 0x8)
    class UWidgetAnimation* Anm_Open;                                                 // 0x0438 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_Command;                                // 0x0440 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_Title;                                  // 0x0448 (size: 0x8)
    FDataTableRowHandle TitleMsgID;                                                   // 0x0450 (size: 0x10)
    FDataTableRowHandle CommandMsgId;                                                 // 0x0460 (size: 0x10)
    FDataTableRowHandle ErrorMsgId;                                                   // 0x0470 (size: 0x10)
    FTimerHandle ResetTextTimer;                                                      // 0x0480 (size: 0x8)
    class UBP_HUDDispatchParameter_KeyConfig_C* KeyConfigParam;                       // 0x0488 (size: 0x8)
    TArray<FName> FilterActionKeys;                                                   // 0x0490 (size: 0x10)
    TMap<class FPalKeyAction, class FName> ReverseAxisMap;                            // 0x04A0 (size: 0x50)
    FName BackActionName;                                                             // 0x04F0 (size: 0x8)

    FEventReply OnMouseButtonDown(FGeometry MyGeometry, const FPointerEvent& MouseEvent);
    void OnKeySetting(FKey NewKey);
    FEventReply OnKeyDown(FGeometry MyGeometry, FKeyEvent InKeyEvent);
    class UWidget* BP_GetDesiredFocusTarget();
    void OnSetup();
    void ResetCommandText();
    void SetPadKeyA();
    void ExecuteUbergraph_WBP_OptionSettingsOverLayWindow(int32 EntryPoint);
}; // Size: 0x4F8

#endif
