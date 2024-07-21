#ifndef UE4SS_SDK_WBP_Title_WorldSelect_HPP
#define UE4SS_SDK_WBP_Title_WorldSelect_HPP

class UWBP_Title_WorldSelect_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Multi_OpenMenu;                                       // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_Solo_OpenMenu;                                        // 0x0288 (size: 0x8)
    class UWidgetAnimation* Anm_WorldSearchTextColor;                                 // 0x0290 (size: 0x8)
    class UWidgetAnimation* Anm_MultiMode;                                            // 0x0298 (size: 0x8)
    class UWidgetAnimation* Anm_SoloMode;                                             // 0x02A0 (size: 0x8)
    class UCanvasPanel* Canvas_JoinServer;                                            // 0x02A8 (size: 0x8)
    class UCanvasPanel* Canvas_WorldMenu;                                             // 0x02B0 (size: 0x8)
    class UEditableTextBox* EditableTextBox_JoinByIP;                                 // 0x02B8 (size: 0x8)
    class UEditableTextBox* EditableTextBox_ServerSearch;                             // 0x02C0 (size: 0x8)
    class UCanvasPanel* HorizontalBoxJoinByIP;                                        // 0x02C8 (size: 0x8)
    class UHorizontalBox* HorizontalBoxListSort;                                      // 0x02D0 (size: 0x8)
    class UHorizontalBox* HorizontalBoxPassword;                                      // 0x02D8 (size: 0x8)
    class UHorizontalBox* HorizontalBoxRegion;                                        // 0x02E0 (size: 0x8)
    class UCanvasPanel* HorizontalBoxWorldSearch;                                     // 0x02E8 (size: 0x8)
    class UHorizontalBox* HorizontalBoxWorldSelectHead_LocalWorldList;                // 0x02F0 (size: 0x8)
    class UHorizontalBox* HorizontalBoxWorldSelectHead_ServerList;                    // 0x02F8 (size: 0x8)
    class UHorizontalBox* IgnoreVersionBox;                                           // 0x0300 (size: 0x8)
    class UImage* Image_43;                                                           // 0x0308 (size: 0x8)
    class UOverlay* Overlay_OpenDirectory;                                            // 0x0310 (size: 0x8)
    class UCheckBox* PasswordCheckbox_1;                                              // 0x0318 (size: 0x8)
    class UCircularThrobber* RequestLoading;                                          // 0x0320 (size: 0x8)
    class UCheckBox* VersionIgnoreCheckbox;                                           // 0x0328 (size: 0x8)
    class UVerticalBox* VerticalBox_LeftList;                                         // 0x0330 (size: 0x8)
    class UWBP_GuildHeadButton_C* WBP_JoinByIPButton;                                 // 0x0338 (size: 0x8)
    class UWBP_GuildHeadButton_C* WBP_NextButton;                                     // 0x0340 (size: 0x8)
    class UWBP_PalCommonScrollList_C* WBP_PalCommonScrollList;                        // 0x0348 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton_OpenDirectory;            // 0x0350 (size: 0x8)
    class UWBP_GuildHeadButton_C* WBP_PreviousButton;                                 // 0x0358 (size: 0x8)
    class UWBP_GuildHeadButton_C* WBP_SearchButton;                                   // 0x0360 (size: 0x8)
    class UWBP_GuildHeadButton_C* WBP_SortoComboBox;                                  // 0x0368 (size: 0x8)
    class UWBP_GuildHeadButton_C* WBP_SortoComboBox_Region;                           // 0x0370 (size: 0x8)
    class UWBP_Title_SettingsButton_C* WBP_Title_SettingsButton_DeleteCharacter;      // 0x0378 (size: 0x8)
    class UWBP_Title_SettingsButton_C* WBP_Title_SettingsButton_DeleteWorld;          // 0x0380 (size: 0x8)
    class UWBP_Title_SettingsButton_C* WBP_Title_SettingsButton_Start;                // 0x0388 (size: 0x8)
    class UWBP_Title_SettingsButton_C* WBP_Title_SettingsButton_WorldSetting;         // 0x0390 (size: 0x8)
    class UWBP_Title_SettingsButton_C* WBP_Title_SettingsButtonBackupSelect;          // 0x0398 (size: 0x8)
    class UWBP_Title_WorldSelectButton_C* WBP_Title_WorldSelectButton_ServerList_Community; // 0x03A0 (size: 0x8)
    class UWBP_Title_WorldSelectButton_C* WBP_Title_WorldSelectButton_ServerList_Help_Server; // 0x03A8 (size: 0x8)
    class UWBP_Title_WorldSelectButton_C* WBP_Title_WorldSelectButton_ServerList_History; // 0x03B0 (size: 0x8)
    class UWBP_Title_WorldSelectButton_C* WBP_Title_WorldSelectButton_ServerList_Official; // 0x03B8 (size: 0x8)
    class UWBP_Title_WorldSelectButton_C* WBP_Title_WorldSelectButton_ServerList_StatusPage; // 0x03C0 (size: 0x8)
    FWBP_Title_WorldSelect_COnClickedWorldButton OnClickedWorldButton;                // 0x03C8 (size: 0x10)
    void OnClickedWorldButton(class UWBP_Title_WorldSelect_ListContent_C* ButtonWidget);
    FWBP_Title_WorldSelect_COnClickedNewWorldButton OnClickedNewWorldButton;          // 0x03D8 (size: 0x10)
    void OnClickedNewWorldButton(class UWBP_Title_WorldSelect_CreateWorld_ListContent_C* ButtonWidget);
    FWBP_Title_WorldSelect_COnClickedStartWorldButton OnClickedStartWorldButton;      // 0x03E8 (size: 0x10)
    void OnClickedStartWorldButton();
    bool IsOpenedLocalWorldMenu;                                                      // 0x03F8 (size: 0x1)
    class UWBP_Title_WorldSelect_ListContent_C* CachedLastClickedWorldButton;         // 0x0400 (size: 0x8)
    FWBP_Title_WorldSelect_COnClickedWorldSettingButton OnClickedWorldSettingButton;  // 0x0408 (size: 0x10)
    void OnClickedWorldSettingButton();
    class UWBP_Title_SettingsButton_C* CachedLastClickLocalWorldMenuButton;           // 0x0418 (size: 0x8)
    FWBP_Title_WorldSelect_COnClickedDeleteWorldButton OnClickedDeleteWorldButton;    // 0x0420 (size: 0x10)
    void OnClickedDeleteWorldButton();
    FWBP_Title_WorldSelect_COnClickedServerButton OnClickedServerButton;              // 0x0430 (size: 0x10)
    void OnClickedServerButton(class UWBP_Title_WorldSelect_ListContent_C* Widget);
    FDataTableRowHandle ServerSearchHintTextMsgID;                                    // 0x0440 (size: 0x10)
    FDataTableRowHandle ServerSearchButtonMsgID;                                      // 0x0450 (size: 0x10)
    FWBP_Title_WorldSelect_COnClickedServerSearchButton OnClickedServerSearchButton;  // 0x0460 (size: 0x10)
    void OnClickedServerSearchButton(FString SearchWord);
    FWBP_Title_WorldSelect_COnSelectedServerSortType OnSelectedServerSortType;        // 0x0470 (size: 0x10)
    void OnSelectedServerSortType(EPalUIServerListSortType SortType);
    TMap<class EPalUIServerListSortType, class FDataTableRowHandle> SortTypeMsgIDMap; // 0x0480 (size: 0x50)
    TMap<class FString, class EPalUIServerListSortType> SortTypeStringTypeMap;        // 0x04D0 (size: 0x50)
    TMap<class EPalUIServerListFilterType, class FDataTableRowHandle> FilterTypeMsgIDMap; // 0x0520 (size: 0x50)
    TMap<class FString, class EPalUIServerListFilterType> FilterStringTypeMap;        // 0x0570 (size: 0x50)
    FWBP_Title_WorldSelect_COnClickedServerList_OfficialButton OnClickedServerList_OfficialButton; // 0x05C0 (size: 0x10)
    void OnClickedServerList_OfficialButton();
    FWBP_Title_WorldSelect_COnClickedServerList_CommunityButton OnClickedServerList_CommunityButton; // 0x05D0 (size: 0x10)
    void OnClickedServerList_CommunityButton();
    FWBP_Title_WorldSelect_COnClickedServerList_HistoryButton OnClickedServerList_HistoryButton; // 0x05E0 (size: 0x10)
    void OnClickedServerList_HistoryButton();
    FDataTableRowHandle ServerNextButtonMsgID;                                        // 0x05F0 (size: 0x10)
    FWBP_Title_WorldSelect_COnClickedServerList_NextButton OnClickedServerList_NextButton; // 0x0600 (size: 0x10)
    void OnClickedServerList_NextButton();
    FDataTableRowHandle ServerConnectButtonMsgID;                                     // 0x0610 (size: 0x10)
    FWBP_Title_WorldSelect_COnClicked_JoinByIPButton OnClicked_JoinByIPButton;        // 0x0620 (size: 0x10)
    void OnClicked_JoinByIPButton(FString Address);
    FWBP_Title_WorldSelect_COnClickedOpenDirectoryButton OnClickedOpenDirectoryButton; // 0x0630 (size: 0x10)
    void OnClickedOpenDirectoryButton(class UWBP_Title_WorldSelect_ListContent_C* SelectedWorldButton);
    TMap<class FString, class UWBP_Title_WorldSelect_ListContent_C*> World Directory Name; // 0x0640 (size: 0x50)
    FWBP_Title_WorldSelect_COnClickedSelectBackupButton OnClickedSelectBackupButton;  // 0x0690 (size: 0x10)
    void OnClickedSelectBackupButton(class UWBP_Title_WorldSelect_ListContent_C* SelectedWorldButton);
    FDataTableRowHandle ServerPreviousButtonMsgID;                                    // 0x06A0 (size: 0x10)
    FWBP_Title_WorldSelect_COnClickedServerList_PreviousButton OnClickedServerList_PreviousButton; // 0x06B0 (size: 0x10)
    void OnClickedServerList_PreviousButton();

    class UWidget* CustomNavi_ToInputPasswordCheckBoxOrServerTop(EUINavigation Navigation);
    class UWidget* CustomNavi_ToLeftListBottom(EUINavigation Navigation);
    class UWidget* CustomNavi_LeftListTop(EUINavigation Navigation);
    class UWidget* CustomNavi_ToListSetting(EUINavigation Navigation);
    void Update Local World List Content(FString WorldPathName, FPalUILocalWorldDisplayData DisplayData);
    void GetSelectRegion(FString& Region);
    void SetRegions(TArray<FString>& Regions);
    class UWidget* CustomNavi_ToServerTop(EUINavigation Navigation);
    void IsEditingSearchWord(bool& IsEditing);
    void FlterTypeStringToFilterType(FString FilterTypeString, EPalUIServerListFilterType& FilterType);
    void SortTypeStringToSortType(FString SortTypeString, EPalUIServerListSortType& SortType);
    void SetupComboboxStringData();
    void GetServerSearchWord(FString& Word);
    void OnClickedServerButton_Internal(class UWBP_Title_WorldSelect_ListContent_C* Widget);
    void Close Local World Menu();
    void OpenLocalWorldMenu();
    void GetFocusTargetForServerList(class UWidget*& Widget);
    void GetFocusTargetForLocalWorldList(class UWidget*& TargetWidget);
    void AddServerList(TArray<FPalUIServerDisplayData>& ServerDisplayData);
    void OnClickedNewWorldButton_Internal(class UWBP_Title_WorldSelect_CreateWorld_ListContent_C* Widget);
    void OnClickedWorldButton_Internal(class UWBP_Title_WorldSelect_ListContent_C* Widget);
    void AddLocalWorldDisplayData(TArray<FPalUILocalWorldDisplayData>& DisplayDataArray);
    void AnmEvent_ToStartGameMode();
    void AnmEvent_ToJoinServerMode();
    void BndEvt__WBP_Title_WorldSelect_WBP_Title_WorldSelectButton_K2Node_ComponentBoundEvent_0_OnClicked__DelegateSignature();
    void BndEvt__WBP_Title_WorldSelect_WBP_Title_WorldSelectButton_ServerList_History_K2Node_ComponentBoundEvent_1_OnClicked__DelegateSignature();
    void BndEvt__WBP_Title_WorldSelect_WBP_Title_WorldSelectButton_ServerList_History_1_K2Node_ComponentBoundEvent_2_OnClicked__DelegateSignature();
    void BndEvt__WBP_Title_WorldSelect_WBP_Title_WorldSelectButton_ServerList_StatusPage_K2Node_ComponentBoundEvent_3_OnClicked__DelegateSignature();
    void BndEvt__WBP_Title_WorldSelect_WBP_Title_WorldSelectButton_ServerList_Community_K2Node_ComponentBoundEvent_4_OnClicked__DelegateSignature();
    void BndEvt__WBP_Title_WorldSelect_WBP_SortoComboBox_Region_K2Node_ComponentBoundEvent_5_OnSelected__DelegateSignature(FString SelectedOption);
    void BndEvt__WBP_Title_WorldSelect_WBP_NextButton_K2Node_ComponentBoundEvent_7_OnClickedSingleButton__DelegateSignature();
    void BndEvt__WBP_Title_WorldSelect_WBP_PreviousButton_K2Node_ComponentBoundEvent_6_OnClickedSingleButton__DelegateSignature();
    void Construct();
    void Destruct();
    void BndEvt__WBP_Title_WorldSelect_WBP_Title_SettingsButton_DeleteWorld_K2Node_ComponentBoundEvent_0_OnClicked__DelegateSignature();
    void BndEvt__WBP_Title_WorldSelect_WBP_Title_SettingsButton_WorldSetting_K2Node_ComponentBoundEvent_1_OnClicked__DelegateSignature();
    void BndEvt__WBP_Title_WorldSelect_WBP_Title_SettingsButton_Start_K2Node_ComponentBoundEvent_2_OnClicked__DelegateSignature();
    void OnInitialized();
    void BndEvt__WBP_Title_WorldSelect_WBP_GuildHeadButton_3_K2Node_ComponentBoundEvent_3_OnSelected__DelegateSignature(FString SelectedOption);
    void BndEvt__WBP_Title_WorldSelect_WBP_SearchButton_K2Node_ComponentBoundEvent_4_OnClickedSingleButton__DelegateSignature();
    void SearchCommit(const FText& Text);
    void BndEvt__WBP_Title_WorldSelect_WBP_JoinByIPButton_K2Node_ComponentBoundEvent_5_OnClickedSingleButton__DelegateSignature();
    void BndEvt__WBP_Title_WorldSelect_WBP_PalInvisibleButton_OpenDirectory_K2Node_ComponentBoundEvent_6_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_Title_WorldSelect_WBP_Title_SettingsButtonBackupSelect_K2Node_ComponentBoundEvent_7_OnClicked__DelegateSignature();
    void ExecuteUbergraph_WBP_Title_WorldSelect(int32 EntryPoint);
    void OnClickedServerList_PreviousButton__DelegateSignature();
    void OnClickedSelectBackupButton__DelegateSignature(class UWBP_Title_WorldSelect_ListContent_C* SelectedWorldButton);
    void OnClickedOpenDirectoryButton__DelegateSignature(class UWBP_Title_WorldSelect_ListContent_C* SelectedWorldButton);
    void OnClicked_JoinByIPButton__DelegateSignature(FString Address);
    void OnClickedServerList_NextButton__DelegateSignature();
    void OnClickedServerList_HistoryButton__DelegateSignature();
    void OnClickedServerList_CommunityButton__DelegateSignature();
    void OnSelectedServerSortType__DelegateSignature(EPalUIServerListSortType SortType);
    void OnClickedServerSearchButton__DelegateSignature(FString SearchWord);
    void OnClickedServerButton__DelegateSignature(class UWBP_Title_WorldSelect_ListContent_C* Widget);
    void OnClickedServerList_OfficialButton__DelegateSignature();
    void OnClickedDeleteWorldButton__DelegateSignature();
    void OnClickedWorldSettingButton__DelegateSignature();
    void OnClickedStartWorldButton__DelegateSignature();
    void OnClickedNewWorldButton__DelegateSignature(class UWBP_Title_WorldSelect_CreateWorld_ListContent_C* ButtonWidget);
    void OnClickedWorldButton__DelegateSignature(class UWBP_Title_WorldSelect_ListContent_C* ButtonWidget);
}; // Size: 0x6C0

#endif
