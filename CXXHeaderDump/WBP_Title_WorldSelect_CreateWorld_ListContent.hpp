#ifndef UE4SS_SDK_WBP_Title_WorldSelect_CreateWorld_ListContent_HPP
#define UE4SS_SDK_WBP_Title_WorldSelect_CreateWorld_ListContent_HPP

class UWBP_Title_WorldSelect_CreateWorld_ListContent_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Select;                                               // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_NormalToFocus;                                        // 0x0288 (size: 0x8)
    class UImage* IconPlus;                                                           // 0x0290 (size: 0x8)
    class UBP_PalTextBlock_C* Text_WorldSettings_4;                                   // 0x0298 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton;                          // 0x02A0 (size: 0x8)
    FWBP_Title_WorldSelect_CreateWorld_ListContent_COnClicked OnClicked;              // 0x02A8 (size: 0x10)
    void OnClicked(class UWBP_Title_WorldSelect_CreateWorld_ListContent_C* Widget);
    FString BindedSaveDirectoryName;                                                  // 0x02B8 (size: 0x10)
    FDataTableRowHandle MsgId;                                                        // 0x02C8 (size: 0x10)

    void ToMaxSaveDataMode();
    void GetBindedSaveDirectoryName(FString& DirectoryName);
    void SetupByLocalWorldDisplayData(FString SaveDirectoryName, FPalUILocalWorldDisplayData DisplayData);
    void BndEvt__WBP_Title_WorldSelect_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_Title_WorldSelect_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_1_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_Title_WorldSelect_ListContent_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ExecuteUbergraph_WBP_Title_WorldSelect_CreateWorld_ListContent(int32 EntryPoint);
    void OnClicked__DelegateSignature(class UWBP_Title_WorldSelect_CreateWorld_ListContent_C* Widget);
}; // Size: 0x2D8

#endif
