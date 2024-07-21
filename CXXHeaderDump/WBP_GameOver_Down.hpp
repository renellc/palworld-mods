#ifndef UE4SS_SDK_WBP_GameOver_Down_HPP
#define UE4SS_SDK_WBP_GameOver_Down_HPP

class UWBP_GameOver_Down_C : public UPalUserWidgetOverlayUI
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0430 (size: 0x8)
    class UBP_PalTextBlock_C* BP_PalTextBlock_CountDown;                              // 0x0438 (size: 0x8)
    class UCanvasPanel* CanvasPanel_CountDown;                                        // 0x0440 (size: 0x8)
    class UImage* RoundProgress;                                                      // 0x0448 (size: 0x8)
    class UWBP_Ingame_Interact_C* WBP_Ingame_Interact;                                // 0x0450 (size: 0x8)
    class UWBP_PalCommonButton_C* WBP_PalCommonButton;                                // 0x0458 (size: 0x8)
    bool CurrentInRescue;                                                             // 0x0460 (size: 0x1)
    FPalDataTableRowName_UIInputAction UIInputAction;                                 // 0x0464 (size: 0x8)
    FPalUIActionBindData Trigger Action Handle;                                       // 0x046C (size: 0x4)
    FPalUIActionBindData End Trigger Actionhandle;                                    // 0x0470 (size: 0x4)
    double longPushTime;                                                              // 0x0478 (size: 0x8)
    bool PressingGiveup;                                                              // 0x0480 (size: 0x1)
    double CurrentPressedTime;                                                        // 0x0488 (size: 0x8)
    FWBP_GameOver_Down_COnGiveup OnGiveup;                                            // 0x0490 (size: 0x10)
    void OnGiveup();
    FWBP_GameOver_Down_COnCreateRescueWidget OnCreateRescueWidget;                    // 0x04A0 (size: 0x10)
    void OnCreateRescueWidget(class UWBP_GameOver_Rescue_C* Widget);
    FDataTableRowHandle GiveupMsgId;                                                  // 0x04B0 (size: 0x10)

    class UWidget* BP_GetDesiredFocusTarget();
    void Setup();
    void EndTriggerInteract();
    void StartTriggerInteract();
    void Unregister Action();
    void RegisterAction(bool isInputConsume);
    void UpdateDying(double Remain, double Max);
    void OnSetup();
    void CloseWidget();
    void SetInRescue(bool InRescue);
    void Tick(FGeometry MyGeometry, float InDeltaTime);
    void Destruct();
    void Construct();
    void CustomEvent();
    void ExecuteUbergraph_WBP_GameOver_Down(int32 EntryPoint);
    void OnCreateRescueWidget__DelegateSignature(class UWBP_GameOver_Rescue_C* Widget);
    void OnGiveup__DelegateSignature();
}; // Size: 0x4C0

#endif
