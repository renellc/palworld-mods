#ifndef UE4SS_SDK_WBP_TitleLocalWorldSelect_HPP
#define UE4SS_SDK_WBP_TitleLocalWorldSelect_HPP

class UWBP_TitleLocalWorldSelect_C : public UPalUILocalWorldSelectBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0480 (size: 0x8)
    class UImage* Image_69;                                                           // 0x0488 (size: 0x8)
    class UOverlay* Overlay_Root;                                                     // 0x0490 (size: 0x8)
    class UWBP_Title_WorldMenu_Head_C* WBP_Title_WorldMenu_Head;                      // 0x0498 (size: 0x8)
    class UWBP_Title_WorldSelect_C* WBP_Title_WorldSelect;                            // 0x04A0 (size: 0x8)
    FString SelectedWorldSaveDirectoryName;                                           // 0x04A8 (size: 0x10)
    class UWidget* ForceFocusTarget;                                                  // 0x04B8 (size: 0x8)
    TMap<class FString, class FPalUILocalWorldDisplayData> CachedDisplayInfo;         // 0x04C0 (size: 0x50)
    FString Selected World Name;                                                      // 0x0510 (size: 0x10)
    FString Options;                                                                  // 0x0520 (size: 0x10)

    void WBP_TitleLocalWorldSelect_AutoGenFunc(bool bResult);
    void On Closed Delete World Window(class UPalHUDDispatchParameterBase* Param);
    void On Closed World Setting Window(class UPalHUDDispatchParameterBase* Param);
    void OnCancelAction();
    void SetupWorldList();
    class UWidget* BP_GetDesiredFocusTarget();
    void Construct();
    void OnInitialized();
    void OnSetup();
    void BndEvt__WBP_TitleLocalWorldSelect_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_0_OnClickedWorldButton__DelegateSignature(class UWBP_Title_WorldSelect_ListContent_C* ButtonWidget);
    void BndEvt__WBP_TitleLocalWorldSelect_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_1_OnClickedNewWorldButton__DelegateSignature(class UWBP_Title_WorldSelect_CreateWorld_ListContent_C* ButtonWidget);
    void BndEvt__WBP_TitleLocalWorldSelect_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_2_OnClickedStartWorldButton__DelegateSignature();
    void Destruct();
    void BndEvt__WBP_TitleLocalWorldSelect_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_3_OnClickedWorldSettingButton__DelegateSignature();
    void BndEvt__WBP_TitleLocalWorldSelect_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_4_OnClickedDeleteWorldButton__DelegateSignature();
    void カスタムイベント(bool bResult);
    void BndEvt__WBP_TitleLocalWorldSelect_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_5_OnClickedOpenDirectoryButton__DelegateSignature(class UWBP_Title_WorldSelect_ListContent_C* SelectedWorldButton);
    void BndEvt__WBP_TitleLocalWorldSelect_WBP_Title_WorldSelect_K2Node_ComponentBoundEvent_6_OnClickedSelectBackupButton__DelegateSignature(class UWBP_Title_WorldSelect_ListContent_C* SelectedWorldButton);
    void ExecuteUbergraph_WBP_TitleLocalWorldSelect(int32 EntryPoint);
}; // Size: 0x530

#endif
