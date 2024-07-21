#ifndef UE4SS_SDK_WBP_PalOverallUILayout_HPP
#define UE4SS_SDK_WBP_PalOverallUILayout_HPP

class UWBP_PalOverallUILayout_C : public UPalPrimaryGameLayoutBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0308 (size: 0x8)
    class UCanvasPanel* CanvasPanel_3;                                                // 0x0310 (size: 0x8)
    class UCanvasPanel* CanvasPanel_Fade;                                             // 0x0318 (size: 0x8)
    class UPalActivatableWidgetContainer* Layer_0;                                    // 0x0320 (size: 0x8)
    class UPalActivatableWidgetContainer* Layer_1;                                    // 0x0328 (size: 0x8)
    class UPalActivatableWidgetContainer* Layer_2;                                    // 0x0330 (size: 0x8)
    class UPalActivatableWidgetContainer* Layer_3;                                    // 0x0338 (size: 0x8)
    class UPalActivatableWidgetContainer* Layer_4;                                    // 0x0340 (size: 0x8)
    class UPalActivatableWidgetContainer* Layer_5;                                    // 0x0348 (size: 0x8)
    class UPalActivatableWidgetContainer* Layer_6;                                    // 0x0350 (size: 0x8)
    class UPalActivatableWidgetContainer* Layer_7;                                    // 0x0358 (size: 0x8)
    class UPalActivatableWidgetContainer* Menu;                                       // 0x0360 (size: 0x8)
    class UPalActivatableWidgetContainer* Modal;                                      // 0x0368 (size: 0x8)
    class USizeBox* SizeBox_0;                                                        // 0x0370 (size: 0x8)
    class UWBP_AutoSave_C* WBP_AutoSave;                                              // 0x0378 (size: 0x8)
    class UWBP_CommonReward_C* WBP_CommonReward;                                      // 0x0380 (size: 0x8)
    class UWBP_InventoryEquipment_ItemInfo_C* WBP_InventoryEquipment_ItemInfo;        // 0x0388 (size: 0x8)
    class UWBP_MainMenu_Cursor_C* WBP_MainMenu_Cursor;                                // 0x0390 (size: 0x8)
    class UWBP_PalActionBar_C* WBP_PalActionBar_C_8;                                  // 0x0398 (size: 0x8)
    class UWBP_PalLiftItem_C* WBP_PalLiftItem;                                        // 0x03A0 (size: 0x8)
    TMap<class EPalFadeWidgetLayerType, class UCanvasPanel*> FadeWidgetCanvasMap;     // 0x03A8 (size: 0x50)
    TMap<class EPalFadeWidgetType, class TSubclassOf<UWBP_PalFadeWidgetBase_C>> FadeWidgetMap; // 0x03F8 (size: 0x50)
    TArray<EPalFadeWidgetLayerType> WaitFadeOutLayers;                                // 0x0448 (size: 0x10)
    class UPalUILiftSlotModel* LiftSlotModel;                                         // 0x0458 (size: 0x8)

    void OnInitialized();
    void ShowFocusCursor(class UWidget* TargetWidget);
    void HideFocusCursor();
    void FadeIn(EPalFadeWidgetLayerType LayerType, class UPalHUDDispatchParameter_FadeWidget* FadeParameter);
    void FadeOut(EPalFadeWidgetLayerType LayerType);
    void ShowCommonItemInfo(const FPalUICommonItemInfoDisplayData& DisplayData);
    void HideCommonItemInfo();
    void ShowLiftIcon();
    void HideLiftIcon();
    void Tick(FGeometry MyGeometry, float InDeltaTime);
    void SetupLiftIcon();
    void ShowCommonReward(const FPalUICommonRewardDisplayData& RewardDisplayData);
    void ExecuteUbergraph_WBP_PalOverallUILayout(int32 EntryPoint);
}; // Size: 0x460

#endif
