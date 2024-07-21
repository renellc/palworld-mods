#ifndef UE4SS_SDK_WBP_Key_Settings_HPP
#define UE4SS_SDK_WBP_Key_Settings_HPP

class UWBP_Key_Settings_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UVerticalBox* VerticalBox_GP;                                               // 0x0280 (size: 0x8)
    class UVerticalBox* VerticalBox_GP_Action;                                        // 0x0288 (size: 0x8)
    class UVerticalBox* VerticalBox_GP_UI;                                            // 0x0290 (size: 0x8)
    class UVerticalBox* VerticalBox_KM;                                               // 0x0298 (size: 0x8)
    class UVerticalBox* VerticalBox_KM_Action;                                        // 0x02A0 (size: 0x8)
    class UVerticalBox* VerticalBox_KM_UI;                                            // 0x02A8 (size: 0x8)
    bool SomethingChanged;                                                            // 0x02B0 (size: 0x1)
    TArray<class UVerticalBox*> VerticalBoxs;                                         // 0x02B8 (size: 0x10)
    TArray<class UWBP_PalCommonButtonBase_C*> FirstRows;                              // 0x02C8 (size: 0x10)
    int32 Current;                                                                    // 0x02D8 (size: 0x4)
    TMap<class FName, class UWBP_OptionSettings_ListContent_C*> InputActionsMap_KM;   // 0x02E0 (size: 0x50)
    TMap<class FName, class UWBP_OptionSettings_ListContent_C*> InputActionsMap_GP;   // 0x0330 (size: 0x50)
    TMap<class FName, class UWBP_OptionSettings_ListContent_C*> UIActionsMap_KM;      // 0x0380 (size: 0x50)
    TMap<class FName, class UWBP_OptionSettings_ListContent_C*> UIActionsMap_GP;      // 0x03D0 (size: 0x50)
    FPalKeyConfigSettings KeyConfigSettingsCache;                                     // 0x0420 (size: 0x160)
    TMap<class FName, class FPalKeyAction> AxisMap;                                   // 0x0580 (size: 0x50)
    TMap<class FPalKeyAction, class FName> ReverseAxisMap;                            // 0x05D0 (size: 0x50)
    bool BackFromSetting;                                                             // 0x0620 (size: 0x1)
    FKey CachedSettingKey;                                                            // 0x0628 (size: 0x18)
    TArray<FName> FilterActionKeys;                                                   // 0x0640 (size: 0x10)
    bool KeyConflict_KM;                                                              // 0x0650 (size: 0x1)
    bool UIKeyConflict_KM;                                                            // 0x0651 (size: 0x1)
    bool KeyConflict_GP;                                                              // 0x0652 (size: 0x1)
    bool UIKeyConflict_GP;                                                            // 0x0653 (size: 0x1)
    TMap<class FName, class FName> MultiKeyMap;                                       // 0x0658 (size: 0x50)

    void SetDefault();
    void UI Key Conflict Check(EPalKeyConfigCategory FilterType);
    void On UI Action Key Changed(FName ActionName, FKey NewKey, EPalKeyConfigCategory InputType, EPalKeyConfigAxisFilterType AxisType);
    void On UI Key Config Changing(FName KeyName, ECommonInputType InputType, EPalKeyConfigAxisFilterType AxisType);
    void Multi Key Setting(const TMap<class FName, class FPalKeyConfigKeys>& TargetMap, const FName& ActionName, const FPalKeyConfigKeys& Key);
    void Key Conflict Check(EPalKeyConfigCategory FilterType);
    FEventReply OnKeyUp(FGeometry MyGeometry, FKeyEvent InKeyEvent);
    void Get Actions By Key(FKey Key, ECommonInputType InputType, TArray<FPalKeyAction>& KeyActions);
    bool IsSetableAction(const FPalKeyAction& Key, ECommonInputType InputType);
    void Get UI Conflict Actions(const FName& CheckingAction, EPalKeyConfigCategory FilterType, TArray<FName>& KeyActions);
    void On Action Key Changed(FName ActionName, FKey NewKey, EPalKeyConfigCategory InputType, EPalKeyConfigAxisFilterType AxisType);
    void Get Conflict Actions(const FPalKeyAction& CheckingAction, EPalKeyConfigCategory FilterType, TArray<FPalKeyAction>& KeyActions);
    void On Key Config Changing(FName KeyName, ECommonInputType InputType, EPalKeyConfigAxisFilterType AxisType);
    void GetDesiredFocusTarget(class UWidget*& Target);
    void GetKeybyAction(const FPalKeyAction& PalKeyAction, EPalKeyConfigCategory FilterType, FKey& Key);
    void Construct();
    void ApplySettings();
    void SwitchTab(bool Next);
    void SwitchPanel(int32 Index);
    void OnInitialized();
    void ExecuteUbergraph_WBP_Key_Settings(int32 EntryPoint);
}; // Size: 0x6A8

#endif
