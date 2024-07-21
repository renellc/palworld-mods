#ifndef UE4SS_SDK_WBP_OptionSettings_Tab_HPP
#define UE4SS_SDK_WBP_OptionSettings_Tab_HPP

class UWBP_OptionSettings_Tab_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWBP_OptionSettings_TabButton_C* WBP_OptionSettings_TabButton;              // 0x0280 (size: 0x8)
    class UWBP_OptionSettings_TabButton_C* WBP_OptionSettings_TabButton_1;            // 0x0288 (size: 0x8)
    class UWBP_OptionSettings_TabButton_C* WBP_OptionSettings_TabButton_2;            // 0x0290 (size: 0x8)
    TArray<class UWBP_OptionSettings_TabButton_C*> Tabs;                              // 0x0298 (size: 0x10)
    TArray<class UWBP_OptionSettings_TabButton_C*> ActiveTabs;                        // 0x02A8 (size: 0x10)
    int32 Current;                                                                    // 0x02B8 (size: 0x4)

    void SwitchTab(bool Next);
    void SetupTabs(const TArray<FDataTableRowHandle>& Names);
    void Setup(class UWBP_OptionSettings_C* SettingPanel);
    void SwitchTabTo(int32 Index);
    void ExecuteUbergraph_WBP_OptionSettings_Tab(int32 EntryPoint);
}; // Size: 0x2BC

#endif
