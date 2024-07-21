#ifndef UE4SS_SDK_WBP_Sound_Settings_HPP
#define UE4SS_SDK_WBP_Sound_Settings_HPP

class UWBP_Sound_Settings_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_Ambient;              // 0x0280 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_BGM;                  // 0x0288 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_Master;               // 0x0290 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_PalVoice;             // 0x0298 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_SE;                   // 0x02A0 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_UI;                   // 0x02A8 (size: 0x8)
    class UWBP_OptionSettings_ListContent_C* WBP_OptionSettings_Voice;                // 0x02B0 (size: 0x8)
    FPalOptionAudioSettings AudioSettingCache;                                        // 0x02B8 (size: 0x1C)
    TArray<FDataTableRowHandle> LevelMsgIds;                                          // 0x02D8 (size: 0x10)
    bool SomethingChanged;                                                            // 0x02E8 (size: 0x1)
    FPalOptionAudioSettings OriginalSettingCache;                                     // 0x02EC (size: 0x1C)

    void Construct();
    void OnMasterChanged(double Value);
    void OnBGMChanged(double Value);
    void OnSEChanged(double Value);
    void ApplySettings(bool ApplyOriginal);
    void SetDefault();
    void OnPalVoiceChanged(double Value);
    void OnHumanVoiceChanged(double Value);
    void OnAmbientChanged(double Value);
    void OnUIChanged(double Value);
    void ExecuteUbergraph_WBP_Sound_Settings(int32 EntryPoint);
}; // Size: 0x308

#endif
