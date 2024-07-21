#ifndef UE4SS_SDK_WBP_TitleMenu_HPP
#define UE4SS_SDK_WBP_TitleMenu_HPP

class UWBP_TitleMenu_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_TitleClose;                                           // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_TitleOpen;                                            // 0x0288 (size: 0x8)
    class UImage* Image_118;                                                          // 0x0290 (size: 0x8)
    class UBP_PalTextBlock_C* Text_EarlyAccess;                                       // 0x0298 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Ver;                                               // 0x02A0 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Ver_UserInfo;                                      // 0x02A8 (size: 0x8)
    class UWBP_Title_MenuButton_C* WBP_Title_MenuButton_Credit;                       // 0x02B0 (size: 0x8)
    class UWBP_Title_MenuButton_C* WBP_Title_MenuButton_ExitGame;                     // 0x02B8 (size: 0x8)
    class UWBP_Title_MenuButton_C* WBP_Title_MenuButton_News;                         // 0x02C0 (size: 0x8)
    class UWBP_Title_MenuButton_C* WBP_Title_MenuButton_Option;                       // 0x02C8 (size: 0x8)
    class UWBP_Title_MenuButton_C* WBP_Title_MenuButton_StartLocalGame;               // 0x02D0 (size: 0x8)
    class UWBP_Title_MenuButton_C* WBP_Title_MenuButton_StartMultiGame_InviteCode;    // 0x02D8 (size: 0x8)
    class UWBP_Title_MenuButton_C* WBP_Title_MenuButton_StartMultiGame_JoinServer;    // 0x02E0 (size: 0x8)
    class UWBP_Title_MenuButton_C* WBP_Title_MenuButton_Tips;                         // 0x02E8 (size: 0x8)
    FWBP_TitleMenu_COnClickedMenu OnClickedMenu;                                      // 0x02F0 (size: 0x10)
    void OnClickedMenu(class UWBP_Title_MenuButton_C* ButtonWidget);
    TMap<class FString, class FString> BuildConfigDisplayTextMap;                     // 0x0300 (size: 0x50)
    FDataTableRowHandle EarlyAccessDialogMsgID_GDK;                                   // 0x0350 (size: 0x10)
    FDataTableRowHandle EarlyAccessMsgID_GDK;                                         // 0x0360 (size: 0x10)
    FDataTableRowHandle EarlyAccessMsgID_Windows;                                     // 0x0370 (size: 0x10)
    FDataTableRowHandle ServerNoticeMsgID;                                            // 0x0380 (size: 0x10)

    void GetTopButton(class UWidget*& TargetWidget);
    void BndEvt__WBP_TitleMenu_WBP_Title_MenuButton_ExitGame_K2Node_ComponentBoundEvent_3_OnClicked__DelegateSignature();
    void BndEvt__WBP_TitleMenu_WBP_Title_MenuButton_Tips_K2Node_ComponentBoundEvent_4_OnClicked__DelegateSignature();
    void BndEvt__WBP_TitleMenu_WBP_Title_MenuButton_StartMultiGame_InviteCode_K2Node_ComponentBoundEvent_5_OnClicked__DelegateSignature();
    void BndEvt__WBP_TitleMenu_WBP_Title_MenuButton_StartMultiGame_K2Node_ComponentBoundEvent_2_OnClicked__DelegateSignature();
    void BndEvt__WBP_TitleMenu_WBP_Title_MenuButton_News_K2Node_ComponentBoundEvent_7_OnClicked__DelegateSignature();
    void BndEvt__WBP_TitleMenu_WBP_Title_MenuButton_Credit_K2Node_ComponentBoundEvent_8_OnClicked__DelegateSignature();
    void BndEvt__WBP_TitleMenu_WBP_Title_MenuButton_Option_K2Node_ComponentBoundEvent_1_OnClicked__DelegateSignature();
    void BndEvt__WBP_TitleMenu_WBP_Title_MenuButton_StartLocalGame_K2Node_ComponentBoundEvent_0_OnClicked__DelegateSignature();
    void Tick(FGeometry MyGeometry, float InDeltaTime);
    void Construct();
    void カスタムイベント(bool bResult);
    void ExecuteUbergraph_WBP_TitleMenu(int32 EntryPoint);
    void OnClickedMenu__DelegateSignature(class UWBP_Title_MenuButton_C* ButtonWidget);
}; // Size: 0x390

#endif
