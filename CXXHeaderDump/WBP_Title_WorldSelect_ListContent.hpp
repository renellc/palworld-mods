#ifndef UE4SS_SDK_WBP_Title_WorldSelect_ListContent_HPP
#define UE4SS_SDK_WBP_Title_WorldSelect_ListContent_HPP

class UWBP_Title_WorldSelect_ListContent_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Select;                                               // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_NormalToFocus;                                        // 0x0288 (size: 0x8)
    class UCanvasPanel* Canvas_WorldDetail_ForLocal;                                  // 0x0290 (size: 0x8)
    class UCanvasPanel* Canvas_WorldDetail_ForServer;                                 // 0x0298 (size: 0x8)
    class UCanvasPanel* CanvasPanel_1;                                                // 0x02A0 (size: 0x8)
    class UImage* Image_LockWorld;                                                    // 0x02A8 (size: 0x8)
    class UCircularThrobber* Ping_CircularThrobber;                                   // 0x02B0 (size: 0x8)
    class UBP_PalTextBlock_C* Text_MultiPlay_LocalWorld;                              // 0x02B8 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Ping_Server;                                       // 0x02C0 (size: 0x8)
    class UBP_PalTextBlock_C* Text_PlayDay_LocalWorld;                                // 0x02C8 (size: 0x8)
    class UBP_PalTextBlock_C* Text_PlayDay_Server;                                    // 0x02D0 (size: 0x8)
    class UBP_PalTextBlock_C* Text_PlayerLevel_LocalWorld;                            // 0x02D8 (size: 0x8)
    class UBP_PalTextBlock_C* Text_PlayerName_LocalWorld;                             // 0x02E0 (size: 0x8)
    class UBP_PalTextBlock_C* Text_PlayerNum_Server;                                  // 0x02E8 (size: 0x8)
    class UBP_PalTextBlock_C* Text_ServerName;                                        // 0x02F0 (size: 0x8)
    class UBP_PalTextBlock_C* Text_TimeStamp;                                         // 0x02F8 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Version_Server;                                    // 0x0300 (size: 0x8)
    class UBP_PalTextBlock_C* Text_WorldName;                                         // 0x0308 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton;                          // 0x0310 (size: 0x8)
    FWBP_Title_WorldSelect_ListContent_COnClicked OnClicked;                          // 0x0318 (size: 0x10)
    void OnClicked(class UWBP_Title_WorldSelect_ListContent_C* Widget);
    FString BindedSaveDirectoryName;                                                  // 0x0328 (size: 0x10)
    FPalUIServerDisplayData CachedServerDisplayData;                                  // 0x0338 (size: 0x1A0)
    FString World Name;                                                               // 0x04D8 (size: 0x10)
    FDataTableRowHandle BrokenWorldNameMsgID;                                         // 0x04E8 (size: 0x10)

    void OnPingFailure(class UPingIP* PingOperation, FString HostName);
    void OnPingComplete(class UPingIP* PingOperation, FString HostName, int32 TimeMS);
    void GetBindedServerDisplayData(FPalUIServerDisplayData& DisplayData);
    void SetupByServerDisplayData(FPalUIServerDisplayData DisplayData);
    void GetBindedSaveDirectoryName(FString& DirectoryName);
    void Setup By Local World Display Data(FString SaveDirectoryName, FPalUILocalWorldDisplayData DisplayData);
    void AnmEvent_Unselect();
    void BndEvt__WBP_Title_WorldSelect_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_Title_WorldSelect_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_Title_WorldSelect_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ExecuteUbergraph_WBP_Title_WorldSelect_ListContent(int32 EntryPoint);
    void OnClicked__DelegateSignature(class UWBP_Title_WorldSelect_ListContent_C* Widget);
}; // Size: 0x4F8

#endif
