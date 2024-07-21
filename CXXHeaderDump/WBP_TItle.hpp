#ifndef UE4SS_SDK_WBP_TItle_HPP
#define UE4SS_SDK_WBP_TItle_HPP

class UWBP_TItle_C : public UPalUITitleBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0420 (size: 0x8)
    class UWBP_Title_MenuBG_C* WBP_Title_MenuBG;                                      // 0x0428 (size: 0x8)
    class UWBP_TitleMenu_C* WBP_TitleMenu;                                            // 0x0430 (size: 0x8)
    ECommonUserPrivilege Requested Privilege;                                         // 0x0438 (size: 0x1)
    TArray<class UWBP_TitleFriendButton_OLD_C*> TitleFriendButtons;                   // 0x0440 (size: 0x10)
    class ULoadingProcessTask* CurrentLoadingScreen;                                  // 0x0450 (size: 0x8)
    class UWBP_LoadingScreen_Transition_C* CurrentWidget;                             // 0x0458 (size: 0x8)
    TArray<class UWBP_TitleSaveDataButton_OLD_C*> TitleSaveDataButtons;               // 0x0460 (size: 0x10)
    class UWBP_Title_MenuButton_C* LastClickedButton;                                 // 0x0470 (size: 0x8)

    void WBP_TItle_AutoGenFunc(bool bResult);
    void OnClosedQuitGameDialog(bool bResult);
    void OpenQuitGameDialog();
    void OnClickedMenu_Internal(class UWBP_Title_MenuButton_C* ButtonWidget);
    class UWidget* BP_GetDesiredFocusTarget();
    void Completed_0EC96F8E452B5A23D69FAFB13A8CD5AD(const class UPocketpairUserInfo* UserInfo, bool bSuccess, FString ErrorStr);
    void BndEvt__WBP_TItle_WBP_TitleMenu_K2Node_ComponentBoundEvent_6_OnClickedMenu__DelegateSignature(class UWBP_Title_MenuButton_C* ButtonWidget);
    void OnSetup();
    void SwitchUser();
    void ExecuteUbergraph_WBP_TItle(int32 EntryPoint);
}; // Size: 0x478

#endif
